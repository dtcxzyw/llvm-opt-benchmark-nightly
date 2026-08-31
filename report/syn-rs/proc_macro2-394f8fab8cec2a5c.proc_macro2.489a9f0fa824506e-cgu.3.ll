Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/proc_macro2-394f8fab8cec2a5c.proc_macro2.489a9f0fa824506e-cgu.3?download=true
inline.NumInlined: 202
inline.NumDeleted: 106
begin_hunk_0_@_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6et67aoV1xO_11proc_macro2:bb.a
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
          to label %.noexc unwind label %bb.z

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
  %2 = ptrtoint ptr %.sroa.545.0.i.i.i to i64     ; 2 uses
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc30.i.i = trunc i32 %.sroa.444.0.i.i.i to i8
  %.sroa.518.sroa.7.sroa.7.0.extract.shift33.i.i = lshr i32 %.sroa.444.0.i.i.i, 8
  %.sroa.11.sroa.0.0.extract.trunc23.i.i = trunc i64 %2 to i32
  %.sroa.11.sroa.6.0.extract.shift24.i.i = lshr i64 %2, 32
  %.sroa.11.sroa.6.0.extract.trunc25.i.i = trunc nuw i64 %.sroa.11.sroa.6.0.extract.shift24.i.i to i32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.m:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24
  %i.av = load i8, ptr %i.au, align 8, !range !116, !alias.scope !151, !noalias !152, !noundef !12 ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.av, 2
  br i1 %.not25.i.i.i, label %bb.r, label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !range !175, !alias.scope !151, !noalias !152, !noundef !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 12
  %i.az = load i8, ptr %i.ay, align 4, !range !129, !alias.scope !151, !noalias !152, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !alias.scope !151, !noalias !152, !noundef !12
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !71, !alias.scope !151, !noalias !152, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.bd, -1
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.be = load ptr, ptr %i.at, align 8, !alias.scope !179, !noalias !152, !nonnull !12, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !179, !noalias !152, !noundef !12 ; 6 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.p
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !180
  %i.bi = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bg, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !180 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.q, label %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i

bb.q:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.bg) #30
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.i.i, !noalias !168

.noexc13.i.i:                                     ; preds = %bb.q
  unreachable

_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.p
  %.sroa.01.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.p ], [ %i.bi, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.be, i64 range(i64 0, -9223372036854775808) %i.bg, i1 false), !noalias !185
  %i.bk = ptrtoint ptr %.sroa.01.0.i.i.i.i.i.i to i64
  %3 = lshr i64 %i.bg, 32
  %4 = trunc nuw i64 %3 to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %.val1.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !186, !noalias !189
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !range !129, !alias.scope !186, !noalias !189, !noundef !12
  %.sroa.09.sroa.5.0.insert.ext.i.i.i = zext nneg i8 %i.bm to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i
  %.sroa.09.sroa.0.0.i.i.i = phi i64 [ %i.bk, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i ], [ %.val1.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.09.sroa.5.0.i.i.i = phi i64 [ %i.bg, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i ], [ %.sroa.09.sroa.5.0.insert.ext.i.i.i, %bb.r ]
  %.sroa.09.sroa.5.sroa.5.0.i.i.i = phi i32 [ %4, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i ], [ 0, %bb.r ]
  %.sroa.518.sroa.0.0.extract.trunc.i.i.a = trunc i64 %.sroa.09.sroa.0.0.i.i.i to i32
  %.sroa.518.sroa.7.0.extract.shift.i.i.a = lshr i64 %.sroa.09.sroa.0.0.i.i.i, 32
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc.i.i.a = trunc i64 %.sroa.518.sroa.7.0.extract.shift.i.i.a to i8
  %sum.shift65.i.i = lshr i64 %.sroa.09.sroa.0.0.i.i.i, 40
  %.sroa.518.sroa.7.sroa.7.0.extract.trunc.i.i.a = trunc nuw nsw i64 %sum.shift65.i.i to i32
  %.sroa.11.sroa.0.0.extract.trunc23.i.i.a = trunc i64 %.sroa.09.sroa.5.0.i.i.i to i32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %.noexc14.i.i unwind label %.loopexit.i.i, !noalias !168

.noexc14.i.i:                                     ; preds = %bb.t
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !191
  %.sroa.48.sroa.0.0.copyload.i.i.i = load i32, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !191
  %.sroa.48.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !191
  %.sroa.48.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !191
  %.sroa.48.sroa.6.0.copyload.i.i.i = load i8, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !191
  %.sroa.48.sroa.7.0.copyload.i.i.i = load i8, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 1, !noalias !191
  %.sroa.48.sroa.8.0.copyload.i.i.i = load i16, ptr %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 2, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 28
  %i.bp = load i8, ptr %i.bo, align 4, !range !192, !alias.scope !193, !noalias !196, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 29
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !193, !noalias !196
  %.val2.i.i.i.i = load i32, ptr %i.bn, align 8, !range !169, !alias.scope !193, !noalias !196, !noundef !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !alias.scope !193, !noalias !196, !noundef !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 20
  %.val.i26.i.i.i = load i32, ptr %i.bu, align 4, !range !169, !alias.scope !193, !noalias !196, !noundef !12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc14.i.i
  %.sroa.53.sroa.9.0.i.i.i = phi i16 [ undef, %bb.u ], [ %.sroa.48.sroa.8.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.8.0.i.i.i = phi i8 [ %i.br, %bb.u ], [ %.sroa.48.sroa.7.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.7.0.i.i.i = phi i8 [ %i.bp, %bb.u ], [ %.sroa.48.sroa.6.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.6.0.i.i.i = phi i32 [ %i.bt, %bb.u ], [ %.sroa.48.sroa.5.0.copyload.i.i.i, %.noexc14.i.i ] ; 2 uses
  %.sroa.53.sroa.5.0.i.i.i = phi i32 [ %.val.i26.i.i.i, %bb.u ], [ %.sroa.48.sroa.4.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.0.0.i.i.i = phi i32 [ %.val2.i.i.i.i, %bb.u ], [ %.sroa.48.sroa.0.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.01.0.i.i.i = phi i64 [ -1, %bb.u ], [ %.sroa.07.0.copyload.i.i.i, %.noexc14.i.i ] ; 3 uses
  %.sroa.518.sroa.0.0.extract.trunc26.i.i = trunc i64 %.sroa.01.0.i.i.i to i32
  %.sroa.518.sroa.7.0.extract.shift27.i.i = lshr i64 %.sroa.01.0.i.i.i, 32
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc29.i.i = trunc i64 %.sroa.518.sroa.7.0.extract.shift27.i.i to i8
  %sum.shift.i.i = lshr i64 %.sroa.01.0.i.i.i, 40
  %.sroa.518.sroa.7.sroa.7.0.extract.trunc32.i.i = trunc nuw nsw i64 %sum.shift.i.i to i32
  %.sroa.15.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.53.sroa.6.0.i.i.i to i8
  %.sroa.15.sroa.6.0.extract.shift.i.i = and i32 %.sroa.53.sroa.6.0.i.i.i, -256
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.v, %bb.s, %bb.n, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.518.sroa.7.sroa.7.sroa.0.0.i.i = phi i32 [ %.sroa.518.sroa.7.sroa.7.0.extract.shift33.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.7.sroa.7.0.extract.trunc.i.i.a, %bb.s ], [ 0, %bb.n ], [ %.sroa.518.sroa.7.sroa.7.0.extract.trunc32.i.i, %bb.v ]
  %.sroa.518.sroa.7.sroa.0.0.i.i = phi i8 [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc30.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc.i.i.a, %bb.s ], [ %i.az, %bb.n ], [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc29.i.i, %bb.v ]
  %.sroa.518.sroa.0.0.i.i = phi i32 [ %storemerge.i.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.0.0.extract.trunc.i.i.a, %bb.s ], [ %i.bb, %bb.n ], [ %.sroa.518.sroa.0.0.extract.trunc26.i.i, %bb.v ]
  %.sroa.11.sroa.6.0.i.i = phi i32 [ %.sroa.11.sroa.6.0.extract.trunc25.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.sroa.5.sroa.5.0.i.i.i, %bb.s ], [ undef, %bb.n ], [ %.sroa.53.sroa.5.0.i.i.i, %bb.v ]
  %.sroa.11.sroa.0.0.i.i = phi i32 [ %.sroa.11.sroa.0.0.extract.trunc23.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.11.sroa.0.0.extract.trunc23.i.i.a, %bb.s ], [ undef, %bb.n ], [ %.sroa.53.sroa.0.0.i.i.i, %bb.v ]
  %.sroa.15.sroa.6.sroa.0.0.i.i = phi i32 [ %.sroa.846.sroa.5.sroa.0.0.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %bb.s ], [ 0, %bb.n ], [ %.sroa.15.sroa.6.0.extract.shift.i.i, %bb.v ]
  %.sroa.15.sroa.0.0.i.i = phi i8 [ %.sroa.846.sroa.0.0.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %i.av, %bb.s ], [ undef, %bb.n ], [ %.sroa.15.sroa.0.0.extract.trunc.i.i, %bb.v ]
  %.sroa.21.0.i.i = phi i16 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.s ], [ undef, %bb.n ], [ %.sroa.53.sroa.9.0.i.i.i, %bb.v ]
  %.sroa.20.0.i.i = phi i8 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.s ], [ undef, %bb.n ], [ %.sroa.53.sroa.8.0.i.i.i, %bb.v ]
  %.sroa.18.0.i.i = phi i8 [ %.sroa.10.0.i12.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.s ], [ undef, %bb.n ], [ %.sroa.53.sroa.7.0.i.i.i, %bb.v ]
  %.sroa.417.0.i.i = phi i32 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.s ], [ %i.ax, %bb.n ], [ undef, %bb.v ]
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.7.075.i.i ; 8 uses
  %.sroa.518.sroa.7.sroa.7.0.insert.ext.i.i = shl nuw i32 %.sroa.518.sroa.7.sroa.7.sroa.0.0.i.i, 8
  %.sroa.518.sroa.7.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.518.sroa.7.sroa.0.0.i.i to i32
  %.sroa.518.sroa.7.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.518.sroa.7.sroa.7.0.insert.ext.i.i, %.sroa.518.sroa.7.sroa.0.0.insert.ext.i.i
  %.sroa.518.sroa.7.0.insert.ext.i.i = zext i32 %.sroa.518.sroa.7.sroa.0.0.insert.insert.i.i to i64
  %.sroa.518.sroa.7.0.insert.shift.i.i = shl nuw i64 %.sroa.518.sroa.7.0.insert.ext.i.i, 32
  %.sroa.518.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.518.sroa.0.0.i.i to i64
  %.sroa.518.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.518.sroa.7.0.insert.shift.i.i, %.sroa.518.sroa.0.0.insert.ext.i.i
  %.sroa.11.sroa.6.0.insert.ext.i.i = zext i32 %.sroa.11.sroa.6.0.i.i to i64
  %.sroa.11.sroa.6.0.insert.shift.i.i = shl nuw i64 %.sroa.11.sroa.6.0.insert.ext.i.i, 32
  %.sroa.11.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.11.sroa.0.0.i.i to i64
  %.sroa.11.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.11.sroa.6.0.insert.shift.i.i, %.sroa.11.sroa.0.0.insert.ext.i.i
  %.sroa.15.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.15.sroa.0.0.i.i to i32
  %.sroa.15.sroa.0.0.insert.insert.i.i = or i32 %.sroa.15.sroa.6.sroa.0.0.i.i, %.sroa.15.sroa.0.0.insert.ext.i.i
  store i32 %i.y, ptr %i.bv, align 8, !noalias !168
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %.sroa.417.0.i.i, ptr %.sroa.449.0..sroa_idx.i.i, align 4, !noalias !168
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.518.sroa.0.0.insert.insert.i.i, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !168
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %.sroa.11.sroa.0.0.insert.insert.i.i, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !168
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i32 %.sroa.15.sroa.0.0.insert.insert.i.i, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !168
  %.sroa.853.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  store i8 %.sroa.18.0.i.i, ptr %.sroa.853.0..sroa_idx.i.i, align 4, !noalias !168
  %.sroa.954.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 29
  store i8 %.sroa.20.0.i.i, ptr %.sroa.954.0..sroa_idx.i.i, align 1, !noalias !168
  %.sroa.1055.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 30
  store i16 %.sroa.21.0.i.i, ptr %.sroa.1055.0..sroa_idx.i.i, align 2, !noalias !168
  %i.bw = icmp eq i64 %i.u, 0
  br i1 %i.bw, label %.loopexit, label %bb.f

bb.w:                                             ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !168
  unreachable

.loopexit.i.i:                                    ; preds = %bb.t, %bb.k
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i.i:                           ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  store i64 %.sroa.7.075.i.i, ptr %i.s, align 8, !noalias !141
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #26
          to label %.body unwind label %bb.w, !noalias !168

.thread:                                          ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  store i64 0, ptr %i.by, align 8
  %.sroa.4.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 8, ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %.sroa.5.0..sroa.0.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %1, align 8, !noalias !198
  br label %bb.y

.loopexit:                                        ; preds = %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %bb.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i
  %i.bz = phi ptr [ %i.o, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i ], [ %i.s, %bb.f ], [ %i.s, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ]
  store i64 %.val4, ptr %i.bz, align 8, !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !141
  %.pre = load i64, ptr %1, align 8, !noalias !198
  %i.ca = add i64 %.pre, -1                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.ca, ptr %1, align 8, !noalias !198
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit

bb.y:                                             ; preds = %.thread, %.loopexit
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #29, !inline_history !205
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit: ; preds = %.loopexit, %bb.y
  ret void

bb.z:                                             ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %bb.z ], [ %lpad.phi.i.i, %bb.x ]
  %i.cd = load i64, ptr %1, align 8, !noalias !206, !noundef !12
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.ce, ptr %1, align 8, !noalias !206
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6

bb.aa:                                            ; preds = %.body
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #29
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6 unwind label %bb.ab, !inline_history !213

bb.ab:                                            ; preds = %bb.aa
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6: ; preds = %.body, %bb.aa
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

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !218, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !218
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !218
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !218
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBP_8fallback18TokenStreamBuilderEE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !47, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !221
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !221
  %i.f = load i64, ptr %i.a, align 8, !range !121, !noalias !221, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !128, !noalias !221, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !221, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
end_hunk_0
begin_hunk_1_@_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14byte_character:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14f32_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, float noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = fcmp ueq float %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.c, !prof !162

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14f32_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, float noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14f64_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.c, !prof !162

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14f64_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14i16_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14i16_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14i32_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14i32_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14i64_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14i64_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14isize_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14isize_suffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14u16_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14u16_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14u32_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14u32_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14u64_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14u64_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14usize_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14usize_suffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal15i128_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal15i128_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal15u128_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal15u128_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal16isize_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal16isize_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal16usize_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal16usize_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal18from_str_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal18from_str_unchecked(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal6string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal6string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal8c_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal8c_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal8set_span(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal9character(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal9character(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !47, !noundef !12
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !162

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6et67aoV1xO_11proc_macro25rcvecINtB4_12RcVecBuilderNtB6_9TokenTreeE13with_capacityB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl i64 %1, 5                            ; 4 uses
  %i.b = icmp ugt i64 %1, 576460752303423487
  %.not.i = icmp ugt i64 %i.a, 9223372036854775800
  %or.cond.i = or i1 %i.b, %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.b, !prof !224

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6et67aoV1xO_11proc_macro2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !241
  %i.d = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !241 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.d to i64
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6et67aoV1xO_11proc_macro2.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.a) #30
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6et67aoV1xO_11proc_macro2.exit: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.f, %bb.d ], [ 8, %bb.b ]
  %.sroa.4.0 = phi i64 [ %1, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.g = icmp samesign ule i64 %1, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.g)
  store i64 %.sroa.4.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMse_Cs6et67aoV1xO_11proc_macro2NtB5_8LexError4span(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMsa_NtCs6et67aoV1xO_11proc_macro23impNtB5_8LexError4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span10located_at(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span10located_at(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span10mixed_site() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span10mixed_site()
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span11resolved_at(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span11resolved_at(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span11source_text(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span11source_text(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span4join(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i32 } @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span4join(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef %1) ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0        ; 2 uses
  %i.c = trunc i32 %i.b to i1
  %i.d = extractvalue { i32, i32 } %i.a, 1
  %.sroa.3.0 = select i1 %i.c, i32 %i.d, i32 undef
  %.sroa.0.0 = and i32 %i.b, 1
  %i.e = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span6unwrap(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span6unwrap(i32 noundef %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span8unstable(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef range(i32 1, 0) i32 @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span6unwrap(i32 noundef %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span9call_site() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span9call_site()
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsk_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTree8set_span(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !70, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMsl_NtCs6et67aoV1xO_11proc_macro23impNtB5_5Group8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMsp_NtCs6et67aoV1xO_11proc_macro23impNtB5_5Ident8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i32 %1, ptr %i.b, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsl_NtCs6et67aoV1xO_11proc_macro23impNtB5_5Group3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group6stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsl_NtCs6et67aoV1xO_11proc_macro23impNtB5_5Group6stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group8set_span(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsl_NtCs6et67aoV1xO_11proc_macro23impNtB5_5Group8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsu_Cs6et67aoV1xO_11proc_macro2NtB5_5Punct3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i32 noundef range(i32 0, 1114112) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  switch i32 %1, label %bb.b [
    i32 33, label %bb.c
    i32 35, label %bb.c
    i32 36, label %bb.c
    i32 37, label %bb.c
    i32 38, label %bb.c
    i32 39, label %bb.c
    i32 42, label %bb.c
    i32 43, label %bb.c
    i32 44, label %bb.c
    i32 45, label %bb.c
    i32 46, label %bb.c
    i32 47, label %bb.c
    i32 58, label %bb.c
    i32 59, label %bb.c
    i32 60, label %bb.c
    i32 61, label %bb.c
    i32 62, label %bb.c
    i32 63, label %bb.c
    i32 64, label %bb.c
    i32 94, label %bb.c
    i32 124, label %bb.c
    i32 126, label %bb.c
  ], !prof !244

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %3 = ptrtoint ptr %i.b to i64
  store i64 %3, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXsj_NtCsj6eKBz9Db1c_4core3fmtcNtB5_5Debug3fmt to i64), ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = tail call noundef i32 @_RNvMsh_NtCs6et67aoV1xO_11proc_macro23impNtB5_4Span9call_site()
  store i32 %1, ptr %0, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = zext i1 %2 to i8
  store i8 %i.e, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.f, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsp_NtCs6et67aoV1xO_11proc_macro23impNtB5_5Ident11new_checked(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident7new_raw(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsp_NtCs6et67aoV1xO_11proc_macro23impNtB5_5Ident15new_raw_checked(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident8set_span(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsp_NtCs6et67aoV1xO_11proc_macro23impNtB5_5Ident8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvNtCs6et67aoV1xO_11proc_macro29detection14force_fallback() unnamed_addr #9 {
bb.a:
  store atomic i64 1, ptr @_RNvNtCs6et67aoV1xO_11proc_macro29detection5WORKS.0 monotonic, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs6et67aoV1xO_11proc_macro29detection16unforce_fallback() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvCs3b5wA5ywLsd_10proc_macro12is_available()
  %i.b = select i1 %i.a, i64 2, i64 1
  store atomic i64 %i.b, ptr @_RNvNtCs6et67aoV1xO_11proc_macro29detection5WORKS.0 monotonic, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs6et67aoV1xO_11proc_macro29detection17inside_proc_macro() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load atomic i64, ptr @_RNvNtCs6et67aoV1xO_11proc_macro29detection5WORKS.0 monotonic, align 8
  switch i64 %i.c, label %bb.b [
    i64 1, label %bb.e
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr @_RNvNtCs6et67aoV1xO_11proc_macro29detection4INIT acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeEB10_.exit, label %bb.c, !prof !130

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNtCs6et67aoV1xO_11proc_macro29detection4INIT, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeEB10_.exit

_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeEB10_.exit: ; preds = %bb.b, %bb.c
  %i.f = call noundef zeroext i1 @_RNvNtCs6et67aoV1xO_11proc_macro29detection17inside_proc_macro()
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeEB10_.exit
  %.sroa.0.0 = phi i1 [ %i.f, %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeEB10_.exit ], [ true, %bb.d ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvNtNtCs6et67aoV1xO_11proc_macro25probe15proc_macro_span4join(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvMsp_Cs3b5wA5ywLsd_10proc_macroNtB5_4Span4join(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs6et67aoV1xO_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsg_NtCs6et67aoV1xO_11proc_macro23impNtB5_13TokenTreeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs6et67aoV1xO_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hint(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsg_NtCs6et67aoV1xO_11proc_macro23impNtB5_13TokenTreeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNvMs1_NtCs4wP2HXfJTCR_5alloc5boxedINtB8_3BoxppE21try_clone_from_ref_inINtB2_16DeallocDropGuardNtNtBa_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  %i.f = load i64, ptr %0, align 8, !range !245, !noundef !12
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %i.f) #28
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_Cs6et67aoV1xO_11proc_macro2NtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs6et67aoV1xO_11proc_macro23impNtB4_11TokenStream16from_str_checked(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !246, !noundef !12
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsf_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs11_Cs6et67aoV1xO_11proc_macro2NtB6_7SpacingNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !129, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @16, ptr @15
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 5)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBP_6client11TokenStreamNtB1A_4SpanNtNtBP_6symbol6SymbolEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !47, !noundef !12 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6et67aoV1xO_11proc_macro2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = mul nuw i64 %.val, 20
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #28
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6et67aoV1xO_11proc_macro2.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6et67aoV1xO_11proc_macro2.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBR_9TokenTreeEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !47, !noundef !12 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6et67aoV1xO_11proc_macro2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBP_8fallback18TokenStreamBuilderEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_:bb.a

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6et67aoV1xO_11proc_macro2.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !47, !noundef !12 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6et67aoV1xO_11proc_macro2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6et67aoV1xO_11proc_macro2.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6et67aoV1xO_11proc_macro2.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.c = load i8, ptr %i.b, align 1, !range !129, !alias.scope !247, !noalias !250, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !252
  store ptr %i.e, ptr %i.a, align 8, !noalias !252
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs6et67aoV1xO_11proc_macro2.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4), !noalias !247
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs6et67aoV1xO_11proc_macro2.exit

_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs6et67aoV1xO_11proc_macro2.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %.val = load i8, ptr %i.a, align 1, !range !253, !noundef !12 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs6et67aoV1xO_11proc_macro2, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs6et67aoV1xO_11proc_macro2.42, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtReNtB6_5Debug3fmtCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !254, !noalias !257, !noundef !12 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtCs6et67aoV1xO_11proc_macro25GroupNtB6_7Display3fmtBy_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !259, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXsn_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtCs6et67aoV1xO_11proc_macro25IdentNtB6_7Display3fmtBy_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !259, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXst_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtCs6et67aoV1xO_11proc_macro25PunctNtB6_7Display3fmtBy_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !260, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtCs6et67aoV1xO_11proc_macro27LiteralNtB6_7Display3fmtBy_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !259, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXsx_NtCs6et67aoV1xO_11proc_macro23impNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_Cs6et67aoV1xO_11proc_macro2NtB5_11TokenStreamINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_9TokenTreeE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamINtNtCsj6eKBz9Db1c_4core7convert4FromNtB7_9TokenTreeE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs6et67aoV1xO_11proc_macro2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsB_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i8 @_RNvXsC_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsC_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !261
  store i64 0, ptr %i.e, align 8, !noalias !261
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !261
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !261
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.f, align 8, !noalias !261
  store ptr %i.e, ptr %i.d, align 8, !noalias !261
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @17, ptr %i.g, align 8, !noalias !261
  %i.h = invoke noundef zeroext i1 @_RNvXst_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i unwind label %bb.b, !noalias !265

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !266, !noalias !261 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !266, !noalias !261, !nonnull !12, !noundef !12
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !269
  br label %common.resume

_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs6et67aoV1xO_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringBA_.exit, !prof !162

bb.d:                                             ; preds = %_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #31
          to label %.noexc.i unwind label %bb.b, !noalias !265

.noexc.i:                                         ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %.body, %bb.h, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.n, %bb.h ], [ %i.n, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs6et67aoV1xO_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringBA_.exit: ; preds = %_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !noalias !272 ; 4 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !272 ; 5 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !272 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !273
  store i64 0, ptr %i.c, align 8, !noalias !273
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 1, ptr %.sroa.4.0..sroa_idx.i7, align 8, !noalias !273
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i8, align 8, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !273
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.k, align 8, !noalias !273
  store ptr %i.c, ptr %i.b, align 8, !noalias !273
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @17, ptr %i.l, align 8, !noalias !273
  %i.m = invoke noundef zeroext i1 @_RNvXst_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i12 unwind label %bb.e, !noalias !277

bb.e:                                             ; preds = %bb.g, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs6et67aoV1xO_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringBA_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.val.i.i9 = load i64, ptr %i.c, align 8, !alias.scope !278, !noalias !273 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i9, 0
  br i1 %i.o, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i10 = load ptr, ptr %.sroa.4.0..sroa_idx.i7, align 8, !alias.scope !278, !noalias !273, !nonnull !12, !noundef !12
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i10, i64 noundef %.val.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !281
  br label %.body

_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i12: ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs6et67aoV1xO_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringBA_.exit
  br i1 %i.m, label %bb.g, label %bb.i, !prof !162

bb.g:                                             ; preds = %_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i12
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #31
          to label %.noexc.i13 unwind label %bb.e, !noalias !277

.noexc.i13:                                       ; preds = %bb.g
  unreachable

.body:                                            ; preds = %bb.e, %bb.f
  %i.p = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.p, label %common.resume, label %bb.h

bb.h:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !284
  br label %common.resume

bb.i:                                             ; preds = %_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i12
  %.sroa.021.0.copyload = load i64, ptr %i.c, align 8, !noalias !289 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i7, align 8, !noalias !289, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i8, align 8, !noalias !289 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !273
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %spec.store.select = call i64 @llvm.umin.i64(i64 %.sroa.8.0.copyload, i64 %.sroa.6.0.copyload)
  %i.q = call i32 @memcmp(ptr nonnull %.sroa.5.0.copyload, ptr nonnull %.sroa.4.0.copyload, i64 %spec.store.select) ; 2 uses
  %i.r = icmp eq i64 %.sroa.021.0.copyload, 0
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.021.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !290
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2.exit17

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2.exit17: ; preds = %bb.j, %bb.i
  %i.s = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2.exit20, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2.exit17
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !295
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2.exit20

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2.exit20: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2.exit17, %bb.k
  %i.t = icmp eq i32 %i.q, 0
  %i.u = sub i64 %.sroa.8.0.copyload, %.sroa.6.0.copyload
  %i.v = sext i32 %i.q to i64
  %spec.select = select i1 %i.t, i64 %i.u, i64 %i.v
  %i.w = call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  ret i8 %i.w
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXst_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsF_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsu_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsH_Cs6et67aoV1xO_11proc_macro2NtB5_7LiteralNtNtNtCsj6eKBz9Db1c_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal16from_str_checked(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !121, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsI_Cs6et67aoV1xO_11proc_macro2NtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsy_NtCs6et67aoV1xO_11proc_macro23impNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsJ_Cs6et67aoV1xO_11proc_macro2NtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsx_NtCs6et67aoV1xO_11proc_macro23impNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsj6eKBz9Db1c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !300, !noundef !12 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !47, !alias.scope !303, !noundef !12
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i, !prof !162

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i)
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !300, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !300
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !300
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !300
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !300
end_hunk_2
begin_hunk_3_@_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2:bb.a
  br i1 %i.j, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !393, !noundef !12
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit.i unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !24, !alias.scope !400, !noundef !12
  %i.u = icmp samesign ult i8 %i.t, 4
  br i1 %i.u, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !403, !noundef !12
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit8.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.y = icmp eq i64 %i.r, %i.d
  br i1 %i.y, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECs6et67aoV1xO_11proc_macro2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtCs6et67aoV1xO_11proc_macro29TokenTreeEBE_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtCs6et67aoV1xO_11proc_macro29TokenTreeEBE_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !410

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #26
          to label %bb.c unwind label %bb.e, !inline_history !410

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !inline_history !410
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtCs6et67aoV1xO_11proc_macro29TokenTreeEBE_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBI_8fallback18TokenStreamBuilderEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBF_8fallback18TokenStreamBuilderEEBF_.exit, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBF_8fallback18TokenStreamBuilderEEBF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit.i unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit7.i: ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.h, %i.d
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit7.i unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit7.i._crit_edge: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit7.i, %bb.b
  resume { ptr, i32 } %i.l

bb.c:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !411
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBF_8fallback18TokenStreamBuilderEEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBE_8fallback18TokenStreamBuilderEEBE_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsq_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i32, ptr %0, align 8, !range !70, !noundef !12
  switch i32 %i.f, label %default.unreachable5 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call noundef zeroext i1 @_RNvXso_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %2 = ptrtoint ptr %i.e to i64
  store i64 %2, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtCs6et67aoV1xO_11proc_macro25IdentNtB6_7Display3fmtBy_ to i64), ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @33, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.j, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !116, !noundef !12
  %.not = icmp eq i8 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !range !169
  %.sroa.04.0 = select i1 %.not, i32 %i.o, i32 0
  call void @_RNvNtCs6et67aoV1xO_11proc_macro23imp30debug_span_field_if_nontrivial(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %.sroa.04.0)
  %i.p = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !417
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 5), !noalias !414
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 4, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 7, ptr noundef nonnull readonly %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !414, !noalias !419, !noundef !12
  call void @_RNvNtCs6et67aoV1xO_11proc_macro23imp30debug_span_field_if_nontrivial(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.v)
  %i.w = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !417
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = tail call noundef zeroext i1 @_RNvXsy_NtCs6et67aoV1xO_11proc_macro23impNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.p, %bb.c ], [ %i.w, %bb.d ], [ %i.y, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXss_Cs6et67aoV1xO_11proc_macro2NtB5_5GroupNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsn_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXst_Cs6et67aoV1xO_11proc_macro2NtB5_5GroupNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXso_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsv_Cs6et67aoV1xO_11proc_macro2NtB5_5PunctNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsw_Cs6et67aoV1xO_11proc_macro2NtB5_5PunctNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 5)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !noundef !12
  call void @_RNvNtCs6et67aoV1xO_11proc_macro23imp30debug_span_field_if_nontrivial(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.f)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsy_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsr_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs6et67aoV1xO_11proc_macro23impNtB4_11TokenStream3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtCs6et67aoV1xO_11proc_macro23impNtB4_11TokenStream8is_empty(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal11byte_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal11i8_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal11u8_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal12f32_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), float noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal12f64_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal12i16_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal12i32_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal12i64_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_3
