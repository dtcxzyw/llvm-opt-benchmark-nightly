Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/proc_macro2-394f8fab8cec2a5c.proc_macro2.489a9f0fa824506e-cgu.3?download=true
inline.NumInlined: 202
inline.NumDeleted: 106
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeEBD_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.q = load ptr, ptr %i.k, align 8, !alias.scope !124, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !125, !noundef !4
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !noalias !125
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralEBD_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #29, !inline_history !110
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralEBD_.exit

bb.l:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !inline_history !98
  unreachable

bb.m:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !10, !alias.scope !128, !noundef !4
  %i.y = icmp eq i8 %i.x, 2
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralEBD_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.z, align 8, !alias.scope !128, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralEBD_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.n
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !128, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #28, !noalias !128
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralEBD_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralEBD_.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.n, %bb.m, %bb.f, %bb.e, %bb.j, %bb.k, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6et67aoV1xO_11proc_macro2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !131
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6et67aoV1xO_11proc_macro2.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6et67aoV1xO_11proc_macro2.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !alias.scope !134, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp13TokenTreeIterEBF_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp13TokenTreeIterEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp13TokenTreeIterEBF_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !137, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !137
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef 1, i64 noundef 1), !noalias !137
  %i.g = load i64, ptr %i.a, align 8, !range !11, !noalias !137, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !12, !noalias !137, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #30
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !137, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !137
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !137
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB8_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeE0B12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !13, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

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
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.b = load i8, ptr %i.a, align 1, !range !13, !alias.scope !142, !noalias !143, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 1, !alias.scope !142, !noalias !143
  br i1 %i.c, label %_RNvYNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtBb_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeE0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB15_.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31, !noalias !144
  unreachable

_RNvYNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtBb_4Once9call_onceNvNtCs6et67aoV1xO_11proc_macro29detection10initializeE0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB15_.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvCs3b5wA5ywLsd_10proc_macro12is_available(), !noalias !144
  %i.e = select i1 %i.d, i64 2, i64 1
  store atomic i64 %i.e, ptr @_RNvNtCs6et67aoV1xO_11proc_macro29detection5WORKS.0 monotonic, align 8, !noalias !144
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
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !noundef !4
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr i8, ptr %1, i64 32
  %.val4 = load i64, ptr %i.k, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !187
  %i.l = shl nuw nsw i64 %.val4, 5                ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i, label %bb.d

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i: ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !noalias !187
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8, !noalias !187
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !188
  %i.p = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !188 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #30
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.e
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.d
  store i64 %.val4, ptr %i.b, align 8, !noalias !187
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !187
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br label %bb.f

bb.f:                                             ; preds = %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i
  %.sroa.015.079.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %3, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ] ; 22 uses
  %.sroa.7.075.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ] ; 3 uses
  %.sroa.10.074.i.i = phi i64 [ %.val4, %.lr.ph.i.i ], [ %2, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ]
  %2 = add nsw i64 %.sroa.10.074.i.i, -1          ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 32
  %i.t = add nuw nsw i64 %.sroa.7.075.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %4 = load i32, ptr %.sroa.015.079.i.i, align 8, !range !7, !alias.scope !190, !noalias !191, !noundef !4 ; 2 uses
  switch i32 %4, label %default.unreachable [
    i32 0, label %bb.g
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.v = load i32, ptr %i.u, align 8, !range !9, !alias.scope !193, !noalias !191, !noundef !4
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24
  %i.z = load i8, ptr %i.y, align 8, !range !194, !alias.scope !193, !noalias !191, !noundef !4
  %i.aa = load ptr, ptr %i.x, align 8, !alias.scope !193, !noalias !191, !nonnull !4, !noundef !4 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !195, !noundef !4 ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.aa, align 8, !noalias !195
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, !prof !15

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 28
  %i.ah = load i8, ptr %i.ag, align 4, !range !194, !alias.scope !196, !noalias !191, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !196, !noalias !191, !noundef !4
  %.not.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = invoke noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !197

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %storemerge.i.i.i.i.i = phi i32 [ 0, %bb.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %i.af, align 4, !range !16, !alias.scope !198, !noalias !191, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !198, !noalias !191
  %i.am = inttoptr i64 %.val1.i.i.i.i.i.i to ptr
  %.sroa.846.sroa.0.0.extract.trunc.i.i.i = trunc i32 %storemerge.i.i.i.i.i to i8
  %i.an = and i32 %storemerge.i.i.i.i.i, -256
  br label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i, %bb.h
  %.sroa.444.0.i.i.i = phi i32 [ %.val2.i.i.i.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ undef, %bb.h ] ; 2 uses
  %.sroa.10.0.i12.i.i = phi i8 [ %i.ah, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ undef, %bb.h ]
  %.sroa.846.sroa.0.0.i.i.i = phi i8 [ %.sroa.846.sroa.0.0.extract.trunc.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ %i.z, %bb.h ]
  %.sroa.846.sroa.5.sroa.0.0.i.i.i = phi i32 [ %i.an, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ 0, %bb.h ]
  %.sroa.545.0.i.i.i = phi ptr [ %i.am, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ %i.aa, %bb.h ]
  %storemerge.i.i.i.i = phi i32 [ 0, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i.i ], [ 1, %bb.h ]
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc30.i.i = trunc i32 %.sroa.444.0.i.i.i to i8
  %.sroa.518.sroa.7.sroa.7.0.extract.shift33.i.i = lshr i32 %.sroa.444.0.i.i.i, 8
  %i.ao = ptrtoint ptr %.sroa.545.0.i.i.i to i64  ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ao to i32
  %.sroa.11.sroa.6.0.extract.shift.i.i = lshr i64 %i.ao, 32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.l:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !range !10, !alias.scope !190, !noalias !191, !noundef !4 ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.ar, 2
  br i1 %.not25.i.i.i, label %bb.q, label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 4
  %i.at = load i32, ptr %i.as, align 4, !range !17, !alias.scope !190, !noalias !191, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 12
  %i.av = load i8, ptr %i.au, align 4, !range !13, !alias.scope !190, !noalias !191, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !alias.scope !190, !noalias !191, !noundef !4
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.n:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !range !8, !alias.scope !190, !noalias !191, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.az, -1
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.ba = load ptr, ptr %i.ap, align 8, !alias.scope !200, !noalias !191, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !200, !noalias !191, !noundef !4 ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.o
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !201
  %i.be = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bc, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !201 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.p, label %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i

bb.p:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.bc) #30
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !197

.noexc13.i.i:                                     ; preds = %bb.p
  unreachable

_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.o
  %.sroa.01.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.o ], [ %i.be, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.ba, i64 range(i64 0, -9223372036854775808) %i.bc, i1 false), !noalias !202
  %i.bg = ptrtoint ptr %.sroa.01.0.i.i.i.i.i.i to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %.val1.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !203, !noalias !191
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !13, !alias.scope !203, !noalias !191, !noundef !4
  %.sroa.09.sroa.5.0.insert.ext.i.i.i = zext nneg i8 %i.bi to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i
  %.sroa.09.sroa.0.0.i.i.i = phi i64 [ %i.bg, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i ], [ %.val1.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.09.sroa.5.0.i.i.i = phi i64 [ %i.bc, %_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i.i ], [ %.sroa.09.sroa.5.0.insert.ext.i.i.i, %bb.q ] ; 2 uses
  %.sroa.518.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.09.sroa.0.0.i.i.i to i32
  %.sroa.518.sroa.7.0.extract.shift.i.i = lshr i64 %.sroa.09.sroa.0.0.i.i.i, 32
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.518.sroa.7.0.extract.shift.i.i to i8
  %sum.shift65.i.i = lshr i64 %.sroa.09.sroa.0.0.i.i.i, 40
  %.sroa.518.sroa.7.sroa.7.0.extract.trunc.i.i = trunc nuw nsw i64 %sum.shift65.i.i to i32
  %.sroa.11.sroa.0.0.extract.trunc23.i.i = trunc i64 %.sroa.09.sroa.5.0.i.i.i to i32
  %.sroa.11.sroa.6.0.extract.shift24.i.i = lshr i64 %.sroa.09.sroa.5.0.i.i.i, 32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !204
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !197

.noexc14.i.i:                                     ; preds = %bb.s
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !204
  %.sroa.48.sroa.0.0.copyload.i.i.i = load i32, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !204
  %.sroa.48.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !204
  %.sroa.48.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !204
  %.sroa.48.sroa.6.0.copyload.i.i.i = load i8, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !204
  %.sroa.48.sroa.7.0.copyload.i.i.i = load i8, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 1, !noalias !204
  %.sroa.48.sroa.8.0.copyload.i.i.i = load i16, ptr %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 2, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !204
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 28
  %i.bl = load i8, ptr %i.bk, align 4, !range !18, !alias.scope !205, !noalias !191, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 29
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !205, !noalias !191
  %.val2.i.i.i.i = load i32, ptr %i.bj, align 8, !range !16, !alias.scope !205, !noalias !191, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !205, !noalias !191, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.015.079.i.i, i64 20
  %.val.i26.i.i.i = load i32, ptr %i.bq, align 4, !range !16, !alias.scope !205, !noalias !191, !noundef !4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.noexc14.i.i
  %.sroa.53.sroa.9.0.i.i.i = phi i16 [ undef, %bb.t ], [ %.sroa.48.sroa.8.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.8.0.i.i.i = phi i8 [ %i.bn, %bb.t ], [ %.sroa.48.sroa.7.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.7.0.i.i.i = phi i8 [ %i.bl, %bb.t ], [ %.sroa.48.sroa.6.0.copyload.i.i.i, %.noexc14.i.i ]
  %.sroa.53.sroa.6.0.i.i.i = phi i32 [ %i.bp, %bb.t ], [ %.sroa.48.sroa.5.0.copyload.i.i.i, %.noexc14.i.i ] ; 2 uses
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
  %i.br = zext i32 %.sroa.53.sroa.5.0.i.i.i to i64
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.u, %bb.r, %bb.m, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.518.sroa.7.sroa.7.sroa.0.0.i.i = phi i32 [ %.sroa.518.sroa.7.sroa.7.0.extract.shift33.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.7.sroa.7.0.extract.trunc.i.i, %bb.r ], [ 0, %bb.m ], [ %.sroa.518.sroa.7.sroa.7.0.extract.trunc32.i.i, %bb.u ]
  %.sroa.518.sroa.7.sroa.0.0.i.i = phi i8 [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc30.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc.i.i, %bb.r ], [ %i.av, %bb.m ], [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc29.i.i, %bb.u ]
  %.sroa.518.sroa.0.0.i.i = phi i32 [ %storemerge.i.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.518.sroa.0.0.extract.trunc.i.i, %bb.r ], [ %i.ax, %bb.m ], [ %.sroa.518.sroa.0.0.extract.trunc26.i.i, %bb.u ]
  %.sroa.11.sroa.6.0.i.i = phi i64 [ %.sroa.11.sroa.6.0.extract.shift.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.11.sroa.6.0.extract.shift24.i.i, %bb.r ], [ 0, %bb.m ], [ %i.br, %bb.u ]
  %.sroa.11.sroa.0.0.i.i = phi i32 [ %.sroa.11.sroa.0.0.extract.trunc.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.11.sroa.0.0.extract.trunc23.i.i, %bb.r ], [ undef, %bb.m ], [ %.sroa.53.sroa.0.0.i.i.i, %bb.u ]
  %.sroa.15.sroa.6.sroa.0.0.i.i = phi i32 [ %.sroa.846.sroa.5.sroa.0.0.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %bb.r ], [ 0, %bb.m ], [ %.sroa.15.sroa.6.0.extract.shift.i.i, %bb.u ]
  %.sroa.15.sroa.0.0.i.i = phi i8 [ %.sroa.846.sroa.0.0.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ar, %bb.r ], [ undef, %bb.m ], [ %.sroa.15.sroa.0.0.extract.trunc.i.i, %bb.u ]
  %.sroa.21.0.i.i = phi i16 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.r ], [ undef, %bb.m ], [ %.sroa.53.sroa.9.0.i.i.i, %bb.u ]
  %.sroa.20.0.i.i = phi i8 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.r ], [ undef, %bb.m ], [ %.sroa.53.sroa.8.0.i.i.i, %bb.u ]
  %.sroa.18.0.i.i = phi i8 [ %.sroa.10.0.i12.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.r ], [ undef, %bb.m ], [ %.sroa.53.sroa.7.0.i.i.i, %bb.u ]
  %.sroa.417.0.i.i = phi i32 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.r ], [ %i.at, %bb.m ], [ undef, %bb.u ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.7.075.i.i ; 8 uses
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
  store i32 %4, ptr %i.bs, align 8, !noalias !197
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %.sroa.417.0.i.i, ptr %.sroa.449.0..sroa_idx.i.i, align 4, !noalias !197
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.sroa.518.sroa.0.0.insert.insert.i.i, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !197
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.sroa.11.sroa.0.0.insert.insert.i.i, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !197
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i32 %.sroa.15.sroa.0.0.insert.insert.i.i, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !197
  %.sroa.853.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  store i8 %.sroa.18.0.i.i, ptr %.sroa.853.0..sroa_idx.i.i, align 4, !noalias !197
  %.sroa.954.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 29
  store i8 %.sroa.20.0.i.i, ptr %.sroa.954.0..sroa_idx.i.i, align 1, !noalias !197
  %.sroa.1055.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 30
  store i16 %.sroa.21.0.i.i, ptr %.sroa.1055.0..sroa_idx.i.i, align 2, !noalias !197
  %i.bt = icmp eq i64 %2, 0
  br i1 %i.bt, label %.loopexit, label %bb.f

bb.v:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !197
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.s, %bb.p
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.075.i.i, ptr %i.s, align 8, !noalias !187
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #26
          to label %.body unwind label %bb.v, !noalias !197

.thread:                                          ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  store i64 0, ptr %i.bv, align 8
  %.sroa.4.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %.sroa.5.0..sroa.0.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %1, align 8, !noalias !206
  br label %bb.w

.loopexit:                                        ; preds = %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i
  %5 = phi ptr [ %i.o, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i.i ], [ %i.s, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ]
  store i64 %.val4, ptr %5, align 8, !noalias !187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !187
  %.pre = load i64, ptr %1, align 8, !noalias !206
  %i.bw = add i64 %.pre, -1                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.bw, ptr %1, align 8, !noalias !206
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit

bb.w:                                             ; preds = %.thread, %.loopexit
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #29, !inline_history !178
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit: ; preds = %.loopexit, %bb.w
  ret void

bb.x:                                             ; preds = %bb.e
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.x ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %i.bz = load i64, ptr %1, align 8, !noalias !207, !noundef !4
  %i.ca = add i64 %i.bz, -1                       ; 2 uses
  store i64 %i.ca, ptr %1, align 8, !noalias !207
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6

bb.y:                                             ; preds = %.body
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #29
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6 unwind label %bb.z, !inline_history !185

bb.z:                                             ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6: ; preds = %.body, %bb.y
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
  %i.b = load i8, ptr %i.a, align 4, !noundef !4  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = load i8, ptr %i.c, align 1, !noundef !4  ; 2 uses
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
  %i.k = load i8, ptr %i.j, align 1, !range !208, !noundef !4
  %i.l = zext nneg i8 %i.k to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %0, align 4, !range !17, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi i32 [ %i.m, %bb.d ], [ %i.l, %bb.c ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBR_9TokenTreeEE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !211
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !211
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !211
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !211, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !211, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !211
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !211, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !211
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !211
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !211
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs6et67aoV1xO_11proc_macro29TokenTreeE8grow_oneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !214
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !214
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !214
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !214, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !214, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !214
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !214, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !214
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !214
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !214
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtCs6et67aoV1xO_11proc_macro29DelimiterNtNtBP_8fallback18TokenStreamBuilderEE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !217
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !217
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !217
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !217, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !217, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !217
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !217, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !217
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !217
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !217
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 33) %3) unnamed_addr #7 {
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char:bb.a
bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !293
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !293
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !293
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !293
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !293
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !293
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !293
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !293
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !303, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !303, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i.i, !prof !15

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !304, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !304, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !304
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6et67aoV1xO_11proc_macro2.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !304
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_Cs6et67aoV1xO_11proc_macro2NtB4_11TokenStreamNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs6et67aoV1xO_11proc_macro23impNtB4_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs6et67aoV1xO_11proc_macro212token_streamNtB4_8IntoIterNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 12)
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.f = load i64, ptr %0, align 8, !range !11, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBY_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ 1, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !312
  store i64 %.sroa.01.0, ptr %i.c, align 8, !noalias !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.o, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !312
  invoke void @_RNvXsg_NtCs6et67aoV1xO_11proc_macro23impNtB5_13TokenTreeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RNvXNtCs6et67aoV1xO_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i unwind label %bb.h, !noalias !314

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.n, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #26
          to label %bb.q unwind label %bb.p, !noalias !314

bb.h:                                             ; preds = %bb.n, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RNvXNtCs6et67aoV1xO_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.f
  %i.j = load i32, ptr %i.b, align 8, !range !315, !noalias !312, !noundef !4
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXNtCs6et67aoV1xO_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !312
  %i.k = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
          to label %bb.n unwind label %bb.m, !noalias !314 ; 0 uses

bb.j:                                             ; preds = %_RNvXNtCs6et67aoV1xO_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  %i.l = load i64, ptr %i.c, align 8, !range !11, !alias.scope !316, !noalias !312, !noundef !4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx), !noalias !314
  br label %_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesNtCs6et67aoV1xO_11proc_macro29TokenTreeNtNtB15_12token_stream8IntoIterEB15_.exit

bb.l:                                             ; preds = %bb.j
  call void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx), !noalias !314
  br label %_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesNtCs6et67aoV1xO_11proc_macro29TokenTreeNtNtB15_12token_stream8IntoIterEB15_.exit

bb.m:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #26
          to label %bb.g unwind label %bb.p, !noalias !314

bb.n:                                             ; preds = %bb.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.o unwind label %bb.h, !noalias !314

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  br label %bb.f

bb.p:                                             ; preds = %bb.m, %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !314
  unreachable

bb.q:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn.i

_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesNtCs6et67aoV1xO_11proc_macro29TokenTreeNtNtB15_12token_stream8IntoIterEB15_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !312
  %i.p = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesNtCs6et67aoV1xO_11proc_macro29TokenTreeNtNtB15_12token_stream8IntoIterEB15_.exit
  %.sroa.0.0 = phi i1 [ %i.p, %_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesNtCs6et67aoV1xO_11proc_macro29TokenTreeNtNtB15_12token_stream8IntoIterEB15_.exit ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs6et67aoV1xO_11proc_macro25extraNtB4_9DelimSpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @_RNvXsk_NtCs6et67aoV1xO_11proc_macro23impNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !333
  %i.f = mul nuw nsw i64 %i.e, 20                 ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i, label %bb.b

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !333
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.h, align 8, !noalias !333
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6et67aoV1xO_11proc_macro2.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !334
  %i.j = tail call noundef align 4 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 4) #28, !noalias !334 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.f) #30, !noalias !333
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8, !noalias !333
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !333
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.013.048.i = phi ptr [ %i.n, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ %i.d, %.lr.ph.preheader.i ] ; 13 uses
  %.sroa.7.046.i = phi i64 [ %i.o, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.045.i = phi i64 [ %2, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ %i.e, %.lr.ph.preheader.i ]
  %2 = add nsw i64 %.sroa.10.045.i, -1            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 20
  %i.o = add nuw nsw i64 %.sroa.7.046.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 16
  %i.q = load i8, ptr %i.p, align 4, !range !5, !alias.scope !335, !noundef !4 ; 3 uses
  %i.r = icmp samesign ugt i8 %i.q, 3
  %i.s = zext nneg i8 %i.q to i64
  %i.t = add nsw i64 %i.s, -3
  %i.u = select i1 %i.r, i64 %i.t, i64 0
  switch i64 %i.u, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !336, !noundef !4
  %.not.i.i12.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i12.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v)
          to label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i unwind label %bb.l, !noalias !337

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i: ; preds = %bb.g, %bb.f
  %storemerge.i.i.i = phi i32 [ 0, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.y, align 4, !range !16, !alias.scope !338, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 8
  %.val.i.i.i.i = load i32, ptr %i.z, align 4, !range !16, !alias.scope !338, !noundef !4 ; 2 uses
  %.sroa.1017.sroa.0.0.extract.trunc18.i = trunc i32 %.val.i.i.i.i to i8
  %.sroa.1017.sroa.6.0.extract.shift19.i = and i32 %.val.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 8
  %i.ab = load i8, ptr %i.aa, align 4, !range !13, !alias.scope !339, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 4
  %.val.i.i.i = load i32, ptr %i.ac, align 4, !range !16, !alias.scope !339, !noundef !4
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 4
  %i.ae = load i16, ptr %i.ad, align 4, !alias.scope !335
  %.sroa.014.sroa.7.0.extract.trunc.i = zext i16 %i.ae to i32
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !range !18, !alias.scope !340, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 13
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !340
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !340, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 4
  %.val.i3.i.i = load i32, ptr %i.al, align 4, !range !16, !alias.scope !340, !noundef !4
  %.sroa.1017.sroa.0.0.extract.trunc.i = trunc i32 %i.ak to i8
  %.sroa.1017.sroa.6.0.extract.shift.i = and i32 %i.ak, -256
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i
  %.sroa.014.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i ], [ %.val.i.i.i, %bb.h ], [ %.sroa.014.sroa.7.0.extract.trunc.i, %bb.i ], [ %.val.i3.i.i, %bb.j ]
  %.sroa.1017.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1017.sroa.6.0.extract.shift19.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.sroa.1017.sroa.6.0.extract.shift.i, %bb.j ]
  %.sroa.1017.sroa.0.0.i = phi i8 [ %.sroa.1017.sroa.0.0.extract.trunc18.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i ], [ %i.ab, %bb.h ], [ undef, %bb.i ], [ %.sroa.1017.sroa.0.0.extract.trunc.i, %bb.j ]
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.ai, %bb.j ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.ag, %bb.j ]
  %.sink.i.i = phi i8 [ %i.q, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2.exit.i.i ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ]
  %.sroa.014.sroa.0.0.i = load i32, ptr %.sroa.013.048.i, align 4, !range !16, !alias.scope !335, !noundef !4
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %.sroa.7.046.i ; 4 uses
  %.sroa.014.sroa.7.0.insert.ext.i = zext i32 %.sroa.014.sroa.7.0.i to i64
  %.sroa.014.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.014.sroa.7.0.insert.ext.i, 32
  %.sroa.014.sroa.0.0.insert.ext.i = zext i32 %.sroa.014.sroa.0.0.i to i64
  %.sroa.014.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.014.sroa.7.0.insert.shift.i, %.sroa.014.sroa.0.0.insert.ext.i
  %.sroa.1017.sroa.0.0.insert.ext.i = zext i8 %.sroa.1017.sroa.0.0.i to i32
  %.sroa.1017.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1017.sroa.6.sroa.0.0.i, %.sroa.1017.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store i64 %.sroa.014.sroa.0.0.insert.insert.i, ptr %i.am, align 4, !noalias !337
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.1017.sroa.0.0.insert.insert.i, ptr %.sroa.431.0..sroa_idx.i, align 4, !noalias !337
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.532.0..sroa_idx.i, align 4, !noalias !337
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i8 %.sink.i.i, ptr %.sroa.633.0..sroa_idx.i, align 4, !noalias !337
  %i.an = icmp eq i64 %2, 0
  br i1 %i.an, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6et67aoV1xO_11proc_macro2.exit, label %bb.d

bb.k:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !337
  unreachable

bb.l:                                             ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.046.i, ptr %i.m, align 8, !noalias !333
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeEECs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.m unwind label %bb.k, !noalias !337

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6et67aoV1xO_11proc_macro2.exit: ; preds = %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i
  %3 = phi ptr [ %i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6et67aoV1xO_11proc_macro2.exit.thread.i ], [ %i.m, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ]
  store i64 %i.e, ptr %3, align 8, !noalias !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !333
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_Cs6et67aoV1xO_11proc_macro2NtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsd_Cs6et67aoV1xO_11proc_macro2NtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs9_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsf_Cs6et67aoV1xO_11proc_macro2NtB5_8LexErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsd_NtCs6et67aoV1xO_11proc_macro23impNtB5_8LexErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs1_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs6et67aoV1xO_11proc_macro2.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !345
  %i.e = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !345 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs1_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs6et67aoV1xO_11proc_macro2.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.c) #30, !noalias !346
  unreachable

_RNvMs1_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs6et67aoV1xO_11proc_macro2.exit: ; preds = %bb.a, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %.sroa.01.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.e, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i, ptr nonnull readonly align 1 %i.a, i64 range(i64 0, -9223372036854775808) %i.c, i1 false)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.i.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.c, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_Cs6et67aoV1xO_11proc_macro2NtB5_8LexErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXse_NtCs6et67aoV1xO_11proc_macro23impNtB5_8LexErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsj_Cs6et67aoV1xO_11proc_macro2NtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsk_NtCs6et67aoV1xO_11proc_macro23impNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsp_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !7, !noundef !4
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef zeroext i1 @_RNvXsn_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call noundef zeroext i1 @_RNvXst_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = tail call noundef zeroext i1 @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef zeroext i1 @_RNvXsx_NtCs6et67aoV1xO_11proc_macro23impNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBI_6client11TokenStreamNtB1t_4SpanNtNtBI_6symbol6SymbolEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6et67aoV1xO_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 4, !range !5, !alias.scope !361, !noundef !4
  %i.j = icmp samesign ult i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !362, !noundef !4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit.i unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !5, !alias.scope !363, !noundef !4
  %i.u = icmp samesign ult i8 %i.t, 4
  br i1 %i.u, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !364, !noundef !4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit8.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.y = icmp eq i64 %i.r, %i.d
  br i1 %i.y, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs6et67aoV1xO_11proc_macro2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBK_9TokenTreeEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBH_9TokenTreeEEBH_.exit, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBH_9TokenTreeEEBH_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
end_hunk_1
