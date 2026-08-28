Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/proc_macro2-394f8fab8cec2a5c.proc_macro2.489a9f0fa824506e-cgu.3?download=true
inline.NumInlined: 202
inline.NumDeleted: 106
begin_hunk_0_@_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6et67aoV1xO_11proc_macro2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #30
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !125, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !125
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !125
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB8_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeE0B12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !129, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvCs3b5wA5ywLsd_10proc_macro12is_available()
  %i.e = select i1 %i.d, i64 2, i64 1
  store atomic i64 %i.e, ptr @_RNvNtCs6et67aoV1xO_11proc_macro29detection5WORKS.0 monotonic, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtBd_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeE0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB17_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.b = load i8, ptr %i.a, align 1, !range !129, !alias.scope !131, !noalias !134, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 1, !alias.scope !131, !noalias !134
  br i1 %i.c, label %_RNvYNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtBb_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeE0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB15_.exit, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31, !noalias !137
  unreachable

_RNvYNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtBb_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeE0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB15_.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvCs3b5wA5ywLsd_10proc_macro12is_available(), !noalias !137
  %i.e = select i1 %i.d, i64 2, i64 1
  store atomic i64 %i.e, ptr @_RNvNtCs6et67aoV1xO_11proc_macro29detection5WORKS.0 monotonic, align 8, !noalias !137
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs6et67aoV1xO_11proc_macro2NtB2_11TokenStream3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs6et67aoV1xO_11proc_macro23impNtB4_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMCs6et67aoV1xO_11proc_macro2NtB2_11TokenStream8is_empty(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtCs6et67aoV1xO_11proc_macro23impNtB4_11TokenStream8is_empty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs6et67aoV1xO_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE10make_ownedB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !12
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !noundef !12
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 32
  %.val4 = load i64, ptr %i.k, align 8, !noundef !12 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !141
  %i.l = shl nuw nsw i64 %.val4, 5                ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i, label %bb.d

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i: ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !noalias !141
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8, !noalias !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !145
  %i.p = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !145 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #30
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.e
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.d
  store i64 %.val4, ptr %i.b, align 8, !noalias !141
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !141
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val4
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br label %bb.f

bb.f:                                             ; preds = %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i
  %.sroa.015.079.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.w, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ] ; 23 uses
  %.sroa.7.075.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.x, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ] ; 3 uses
  %.sroa.10.074.i.i = phi i64 [ %.val4, %.lr.ph.i.i ], [ %i.u, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ]
  %i.u = add nsw i64 %.sroa.10.074.i.i, -1        ; 2 uses
  %i.v = icmp eq ptr %.sroa.015.079.i.i, %i.t
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 32
  %i.x = add nuw nsw i64 %.sroa.7.075.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.y = load i32, ptr %.sroa.015.079.i.i, align 8, !range !70, !alias.scope !151, !noalias !152, !noundef !12 ; 2 uses
  switch i32 %i.y, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.aa = load i32, ptr %i.z, align 8, !range !77, !alias.scope !157, !noalias !158, !noundef !12
  %i.ab = trunc nuw i32 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !range !160, !alias.scope !157, !noalias !158, !noundef !12
  %i.af = load ptr, ptr %i.ac, align 8, !alias.scope !157, !noalias !158, !nonnull !12, !noundef !12 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !161, !noundef !12 ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add i64 %i.ag, 1                        ; 2 uses
  store i64 %i.ai, ptr %i.af, align 8, !noalias !161
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, !prof !162

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 28
  %i.am = load i8, ptr %i.al, align 4, !range !160, !alias.scope !163, !noalias !166, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !alias.scope !163, !noalias !166, !noundef !12
  %.not.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.an)
          to label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i unwind label %.loopexit.i.i, !noalias !168

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %storemerge.i.i.i.i.i = phi i32 [ 0, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %i.ak, align 4, !range !169, !alias.scope !170, !noalias !173, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !170, !noalias !173
  %i.ar = inttoptr i64 %.val1.i.i.i.i.i.i to ptr
  %.sroa.846.sroa.0.0.extract.trunc.i.i.i = trunc i32 %storemerge.i.i.i.i.i to i8
  %i.as = and i32 %storemerge.i.i.i.i.i, -256
  br label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i, %bb.i
  %.sroa.444.0.i.i.i = phi i32 [ %.val2.i.i.i.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ undef, %bb.i ] ; 2 uses
  %.sroa.10.0.i12.i.i = phi i8 [ %i.am, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ undef, %bb.i ]
  %.sroa.846.sroa.0.0.i.i.i = phi i8 [ %.sroa.846.sroa.0.0.extract.trunc.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ %i.ae, %bb.i ]
  %.sroa.846.sroa.5.sroa.0.0.i.i.i = phi i32 [ %i.as, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ 0, %bb.i ]
  %.sroa.545.0.i.i.i = phi ptr [ %i.ar, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ %i.af, %bb.i ]
  %storemerge.i.i.i.i = phi i32 [ 0, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ 1, %bb.i ]
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc30.i.i = trunc i32 %.sroa.444.0.i.i.i to i8
  %.sroa.518.sroa.7.sroa.7.0.extract.shift33.i.i = lshr i32 %.sroa.444.0.i.i.i, 8
  %i.at = ptrtoint ptr %.sroa.545.0.i.i.i to i64  ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc.i.i = trunc i64 %i.at to i32
  %.sroa.11.sroa.6.0.extract.shift.i.i = lshr i64 %i.at, 32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.m:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24
  %i.aw = load i8, ptr %i.av, align 8, !range !116, !alias.scope !151, !noalias !152, !noundef !12 ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.aw, 2
  br i1 %.not25.i.i.i, label %bb.r, label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !range !175, !alias.scope !151, !noalias !152, !noundef !12
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 12
  %i.ba = load i8, ptr %i.az, align 4, !range !129, !alias.scope !151, !noalias !152, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !151, !noalias !152, !noundef !12
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !71, !alias.scope !151, !noalias !152, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.be, -1
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.bf = load ptr, ptr %i.au, align 8, !alias.scope !179, !noalias !152, !nonnull !12, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !179, !noalias !152, !noundef !12 ; 5 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.p
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !180
  %i.bj = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bh, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !180 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i

bb.q:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.bh) #30
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.i.i, !noalias !168

.noexc13.i.i:                                     ; preds = %bb.q
  unreachable

_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.p
  %.sroa.01.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.p ], [ %i.bj, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.bf, i64 range(i64 0, -9223372036854775808) %i.bh, i1 false), !noalias !185
  %i.bl = ptrtoint ptr %.sroa.01.0.i.i.i.i.i.i to i64
  br label %2

bb.r:                                             ; preds = %bb.m
  %.val1.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !186, !noalias !189
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !range !129, !alias.scope !186, !noalias !189, !noundef !12
  %.sroa.09.sroa.5.0.insert.ext.i.i.i = zext nneg i8 %i.bn to i64
  br label %2

2:                                                ; preds = %bb.r, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i
  %.sroa.09.sroa.0.0.i.i.i = phi i64 [ %i.bl, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i ], [ %.val1.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.09.sroa.5.0.i.i.i = phi i64 [ %i.bh, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i ], [ %.sroa.09.sroa.5.0.insert.ext.i.i.i, %bb.r ] ; 2 uses
  %.sroa.518.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.09.sroa.0.0.i.i.i to i32
  %.sroa.518.sroa.7.0.extract.shift.i.i = lshr i64 %.sroa.09.sroa.0.0.i.i.i, 32
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.518.sroa.7.0.extract.shift.i.i to i8
  %sum.shift65.i.i = lshr i64 %.sroa.09.sroa.0.0.i.i.i, 40
  %.sroa.518.sroa.7.sroa.7.0.extract.trunc.i.i = trunc nuw nsw i64 %sum.shift65.i.i to i32
  %.sroa.11.sroa.0.0.extract.trunc23.i.i = trunc i64 %.sroa.09.sroa.5.0.i.i.i to i32
  %.sroa.11.sroa.6.0.extract.shift24.i.i = lshr i64 %.sroa.09.sroa.5.0.i.i.i, 32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc14.i.i unwind label %.loopexit.i.i, !noalias !168

.noexc14.i.i:                                     ; preds = %bb.s
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !191
  %.sroa.48.sroa.0.0.copyload.i.i.i = load i32, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !191
  %.sroa.48.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !191
  %.sroa.48.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !191
  %.sroa.48.sroa.6.0.copyload.i.i.i = load i8, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !191
  %.sroa.48.sroa.7.0.copyload.i.i.i = load i8, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 1, !noalias !191
  %.sroa.48.sroa.8.0.copyload.i.i.i = load i16, ptr %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 2, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 28
  %i.bq = load i8, ptr %i.bp, align 4, !range !192, !alias.scope !193, !noalias !196, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 29
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !193, !noalias !196
  %.val2.i.i.i.i = load i32, ptr %i.bo, align 8, !range !169, !alias.scope !193, !noalias !196, !noundef !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !193, !noalias !196, !noundef !12
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 20
  %.val.i26.i.i.i = load i32, ptr %i.bv, align 4, !range !169, !alias.scope !193, !noalias !196, !noundef !12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.noexc14.i.i
  %.sroa.53.sroa.9.0.i.i.i = phi i16 [ undef, %bb.t ], [ %.sroa.48.sroa.8.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.8.0.i.i.i = phi i8 [ %i.bs, %bb.t ], [ %.sroa.48.sroa.7.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.7.0.i.i.i = phi i8 [ %i.bq, %bb.t ], [ %.sroa.48.sroa.6.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.6.0.i.i.i = phi i32 [ %i.bu, %bb.t ], [ %.sroa.48.sroa.5.0.copyload.i.i.i, %.noexc14.i.i ] ; 2 uses
  %.sroa.53.sroa.5.0.i.i.i = phi i32 [ %.val.i26.i.i.i, %bb.t ], [ %.sroa.48.sroa.4.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.0.0.i.i.i = phi i32 [ %.val2.i.i.i.i, %bb.t ], [ %.sroa.48.sroa.0.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.01.0.i.i.i = phi i64 [ -1, %bb.t ], [ %.sroa.07.0.copyload.i.i.i, %.noexc14.i.i ] ; 3 uses
  %.sroa.518.sroa.0.0.extract.trunc26.i.i = trunc i64 %.sroa.01.0.i.i.i to i32
  %.sroa.518.sroa.7.0.extract.shift27.i.i = lshr i64 %.sroa.01.0.i.i.i, 32
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc29.i.i = trunc i64 %.sroa.518.sroa.7.0.extract.shift27.i.i to i8
  %sum.shift.i.i = lshr i64 %.sroa.01.0.i.i.i, 40
  %.sroa.518.sroa.7.sroa.7.0.extract.trunc32.i.i = trunc nuw nsw i64 %sum.shift.i.i to i32
  %.sroa.15.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.53.sroa.6.0.i.i.i to i8
  %.sroa.15.sroa.6.0.extract.shift.i.i = and i32 %.sroa.53.sroa.6.0.i.i.i, -256
  %3 = zext i32 %.sroa.53.sroa.5.0.i.i.i to i64
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.u, %2, %bb.n, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.518.sroa.7.sroa.7.sroa.0.0.i.i = phi i32 [ %.sroa.518.sroa.7.sroa.7.0.extract.shift33.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.7.sroa.7.0.extract.trunc.i.i, %2 ], [ 0, %bb.n ], [ %.sroa.518.sroa.7.sroa.7.0.extract.trunc32.i.i, %bb.u ]
  %.sroa.518.sroa.7.sroa.0.0.i.i = phi i8 [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc30.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc.i.i, %2 ], [ %i.ba, %bb.n ], [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc29.i.i, %bb.u ]
  %.sroa.518.sroa.0.0.i.i = phi i32 [ %storemerge.i.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.0.0.extract.trunc.i.i, %2 ], [ %i.bc, %bb.n ], [ %.sroa.518.sroa.0.0.extract.trunc26.i.i, %bb.u ]
  %.sroa.11.sroa.6.0.i.i = phi i64 [ %.sroa.11.sroa.6.0.extract.shift.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.11.sroa.6.0.extract.shift24.i.i, %2 ], [ 0, %bb.n ], [ %3, %bb.u ]
  %.sroa.11.sroa.0.0.i.i = phi i32 [ %.sroa.11.sroa.0.0.extract.trunc.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.11.sroa.0.0.extract.trunc23.i.i, %2 ], [ undef, %bb.n ], [ %.sroa.53.sroa.0.0.i.i.i, %bb.u ]
  %.sroa.15.sroa.6.sroa.0.0.i.i = phi i32 [ %.sroa.846.sroa.5.sroa.0.0.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %2 ], [ 0, %bb.n ], [ %.sroa.15.sroa.6.0.extract.shift.i.i, %bb.u ]
  %.sroa.15.sroa.0.0.i.i = phi i8 [ %.sroa.846.sroa.0.0.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %i.aw, %2 ], [ undef, %bb.n ], [ %.sroa.15.sroa.0.0.extract.trunc.i.i, %bb.u ]
  %.sroa.21.0.i.i = phi i16 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %2 ], [ undef, %bb.n ], [ %.sroa.53.sroa.9.0.i.i.i, %bb.u ]
  %.sroa.20.0.i.i = phi i8 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %2 ], [ undef, %bb.n ], [ %.sroa.53.sroa.8.0.i.i.i, %bb.u ]
  %.sroa.18.0.i.i = phi i8 [ %.sroa.10.0.i12.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %2 ], [ undef, %bb.n ], [ %.sroa.53.sroa.7.0.i.i.i, %bb.u ]
  %.sroa.417.0.i.i = phi i32 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %2 ], [ %i.ay, %bb.n ], [ undef, %bb.u ]
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.7.075.i.i ; 8 uses
  %.sroa.518.sroa.7.sroa.7.0.insert.ext.i.i = shl nuw i32 %.sroa.518.sroa.7.sroa.7.sroa.0.0.i.i, 8
  %.sroa.518.sroa.7.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.518.sroa.7.sroa.0.0.i.i to i32
  %.sroa.518.sroa.7.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.518.sroa.7.sroa.7.0.insert.ext.i.i, %.sroa.518.sroa.7.sroa.0.0.insert.ext.i.i
  %.sroa.518.sroa.7.0.insert.ext.i.i = zext i32 %.sroa.518.sroa.7.sroa.0.0.insert.insert.i.i to i64
  %.sroa.518.sroa.7.0.insert.shift.i.i = shl nuw i64 %.sroa.518.sroa.7.0.insert.ext.i.i, 32
  %.sroa.518.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.518.sroa.0.0.i.i to i64
  %.sroa.518.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.518.sroa.7.0.insert.shift.i.i, %.sroa.518.sroa.0.0.insert.ext.i.i
  %.sroa.11.sroa.6.0.insert.shift.i.i = shl nuw i64 %.sroa.11.sroa.6.0.i.i, 32
  %.sroa.11.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.11.sroa.0.0.i.i to i64
  %.sroa.11.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.11.sroa.6.0.insert.shift.i.i, %.sroa.11.sroa.0.0.insert.ext.i.i
  %.sroa.15.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.15.sroa.0.0.i.i to i32
  %.sroa.15.sroa.0.0.insert.insert.i.i = or i32 %.sroa.15.sroa.6.sroa.0.0.i.i, %.sroa.15.sroa.0.0.insert.ext.i.i
  store i32 %i.y, ptr %i.bw, align 8, !noalias !168
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %.sroa.417.0.i.i, ptr %.sroa.449.0..sroa_idx.i.i, align 4, !noalias !168
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %.sroa.518.sroa.0.0.insert.insert.i.i, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !168
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.11.sroa.0.0.insert.insert.i.i, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !168
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 %.sroa.15.sroa.0.0.insert.insert.i.i, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !168
  %.sroa.853.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  store i8 %.sroa.18.0.i.i, ptr %.sroa.853.0..sroa_idx.i.i, align 4, !noalias !168
  %.sroa.954.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 29
  store i8 %.sroa.20.0.i.i, ptr %.sroa.954.0..sroa_idx.i.i, align 1, !noalias !168
  %.sroa.1055.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 30
  store i16 %.sroa.21.0.i.i, ptr %.sroa.1055.0..sroa_idx.i.i, align 2, !noalias !168
  %i.bx = icmp eq i64 %i.u, 0
  br i1 %i.bx, label %.loopexit, label %bb.f

bb.v:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !168
  unreachable

.loopexit.i.i:                                    ; preds = %bb.s, %bb.k
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp.i.i:                           ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  store i64 %.sroa.7.075.i.i, ptr %i.s, align 8, !noalias !141
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #26
          to label %.body unwind label %bb.v, !noalias !168

.thread:                                          ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  store i64 0, ptr %i.bz, align 8
  %.sroa.4.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %.sroa.5.0..sroa.0.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %1, align 8, !noalias !198
  br label %bb.x

.loopexit:                                        ; preds = %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %bb.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i
  %i.ca = phi ptr [ %i.o, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i ], [ %i.s, %bb.f ], [ %i.s, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ]
  store i64 %.val4, ptr %i.ca, align 8, !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !141
  %.pre = load i64, ptr %1, align 8, !noalias !198
  %i.cb = add i64 %.pre, -1                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.cb, ptr %1, align 8, !noalias !198
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit

bb.x:                                             ; preds = %.thread, %.loopexit
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #29, !inline_history !205
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit: ; preds = %.loopexit, %bb.x
  ret void

bb.y:                                             ; preds = %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %lpad.phi.i.i, %bb.w ]
  %i.ce = load i64, ptr %1, align 8, !noalias !206, !noundef !12
  %i.cf = add i64 %i.ce, -1                       ; 2 uses
  store i64 %i.cf, ptr %1, align 8, !noalias !206
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6

bb.z:                                             ; preds = %.body
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #29
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6 unwind label %bb.aa, !inline_history !213

bb.aa:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6: ; preds = %.body, %bb.z
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #5 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden noundef range(i32 -1, 1114112) i32 @_RNvMs0_NtCsj6eKBz9Db1c_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedE4nextCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = load i8, ptr %i.c, align 1, !noundef !12 ; 2 uses
  %i.e = icmp ult i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i8 %i.b, 1
  store i8 %i.f, ptr %i.a, align 4
  %i.g = icmp ugt i8 %i.d, -128
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.b to i64
  %i.i = icmp ult i8 %i.b, 10
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !range !214, !noundef !12
  %i.l = zext nneg i8 %i.k to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %0, align 4, !range !175, !noundef !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi i32 [ %i.m, %bb.d ], [ %i.l, %bb.c ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBR_9TokenTreeEE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !47, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !215
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !215
  %i.f = load i64, ptr %i.a, align 8, !range !121, !noalias !215, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !128, !noalias !215, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !215
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !215, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !215
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !215
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !215
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs6et67aoV1xO_11proc_macro29TokenTreeE8grow_oneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !47, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !218
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !218
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !218
  %i.f = load i64, ptr %i.a, align 8, !range !121, !noalias !218, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !128, !noalias !218, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !218
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable
end_hunk_0
