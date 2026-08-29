Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/proc_macro2-394f8fab8cec2a5c.proc_macro2.489a9f0fa824506e-cgu.3?download=true
inline.NumInlined: 202
inline.NumDeleted: 106
begin_hunk_0_@_RNvMNtCs6et67aoV1xO_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE10make_ownedB4_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !141
  %.pre = load i64, ptr %1, align 8, !noalias !198
  %i.cc = add i64 %.pre, -1                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.cc, ptr %1, align 8, !noalias !198
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit

bb.y:                                             ; preds = %.thread, %.loopexit
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #29, !inline_history !205
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit: ; preds = %.loopexit, %bb.y
  ret void

bb.z:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.ce, %bb.z ], [ %lpad.phi.i.i, %bb.x ]
  %i.cf = load i64, ptr %1, align 8, !noalias !206, !noundef !12
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  store i64 %i.cg, ptr %1, align 8, !noalias !206
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6

bb.aa:                                            ; preds = %.body
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #29
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEEBG_.exit6 unwind label %bb.ab, !inline_history !213

bb.ab:                                            ; preds = %bb.aa
  %i.ci = landingpad { ptr, i32 }
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
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !221
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !221
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6et67aoV1xO_11proc_macro2(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 33) %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !224
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !224

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %4, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #28
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #28
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6et67aoV1xO_11proc_macro2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %5 = extractvalue { i64, i1 } %i.a, 0           ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !224
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !224

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn9, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !225, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !225, !noundef !12 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i6 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.0.0.i.i6
  %i.j = add i64 %.sroa.0.0.i.i6, 1               ; 4 uses
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.b unwind label %bb.d, !noalias !225, !inline_history !228

bb.c:                                             ; preds = %.lr.ph8
  %i.k = add i64 %.sroa.0.1.i.i7, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %.body3, label %.lr.ph8

bb.d:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %.body3, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i7 = phi i64 [ %i.k, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.0.1.i.i7
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #26
          to label %bb.c unwind label %bb.e, !noalias !225, !inline_history !228

bb.e:                                             ; preds = %.lr.ph8
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27, !noalias !225, !inline_history !228
  unreachable

.body3:                                           ; preds = %bb.c, %bb.d
  %.val2.i = load i64, ptr %i.b, align 8, !range !47, !alias.scope !229, !noundef !12 ; 2 uses
  %i.q = icmp eq i64 %.val2.i, 0
  br i1 %i.q, label %.body, label %bb.f

bb.f:                                             ; preds = %.body3
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !234, !nonnull !12, !noundef !12
  %i.r = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !235
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_.exit: ; preds = %bb.b, %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !range !47, !alias.scope !229, !noundef !12 ; 2 uses
  %i.s = icmp eq i64 %.val.i, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1h_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_.exit
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !234, !nonnull !12, !noundef !12
  %i.t = shl nuw i64 %.val.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !238
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1h_.exit

.body:                                            ; preds = %.body3, %bb.f
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeERNtNtBG_5alloc6GlobalEEB1q_(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1h_.exit: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1a_.exit
  %i.u = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeERNtNtBG_5alloc6GlobalEEB1q_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1h_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !12
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.v, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeERNtNtBG_5alloc6GlobalEEB1q_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #28
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeERNtNtBG_5alloc6GlobalEEB1q_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeERNtNtBG_5alloc6GlobalEEB1q_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB1h_.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal11byte_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal11byte_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal11i8_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal11i8_suffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal11u8_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal11u8_suffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal12f32_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, float noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = fcmp ueq float %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.c, !prof !162

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal12f32_suffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, float noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal12f64_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.c, !prof !162

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal13i128_suffixed:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal13i8_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal13i8_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal13u128_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal13u128_suffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal13u8_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal13u8_unsuffixed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_Cs6et67aoV1xO_11proc_macro2NtB5_7Literal14byte_character(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsv_NtCs6et67aoV1xO_11proc_macro23impNtB5_7Literal14byte_character(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1)
  ret void
}

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
  %2 = icmp ugt i64 %1, 576460752303423487
  %.not.i = icmp ugt i64 %i.a, 9223372036854775800
  %or.cond.i = or i1 %2, %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.b, !prof !224

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6et67aoV1xO_11proc_macro2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !241
  %i.c = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !241 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = ptrtoint ptr %i.c to i64
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6et67aoV1xO_11proc_macro2.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.a) #30
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6et67aoV1xO_11proc_macro2.exit: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.e, %bb.d ], [ 8, %bb.b ]
  %.sroa.4.0 = phi i64 [ %1, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.f = inttoptr i64 %.sroa.10.0 to ptr
  %3 = icmp samesign ule i64 %1, %.sroa.4.0
  tail call void @llvm.assume(i1 %3)
  store i64 %.sroa.4.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
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
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsj_NtCsj6eKBz9Db1c_4core3fmtcNtB5_5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
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
end_hunk_1
