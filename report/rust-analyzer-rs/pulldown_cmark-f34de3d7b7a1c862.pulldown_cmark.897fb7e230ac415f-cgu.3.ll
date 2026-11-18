Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/pulldown_cmark-f34de3d7b7a1c862.pulldown_cmark.897fb7e230ac415f-cgu.3?download=true
inline.NumInlined: 177
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsbNU0JlWw3cF_14pulldown_cmark:bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !167, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !167, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !167, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !167
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !167
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCsbNU0JlWw3cF_14pulldown_cmark8LinkTypeNtNtBP_7strings6CowStrB1s_EE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality !guid !170 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !171
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !171
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !171, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !171, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !171, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !171
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !171
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNU0JlWw3cF_14pulldown_cmark(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 !guid !172 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !14
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #18
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #18
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNU0JlWw3cF_14pulldown_cmark(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !173 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !14
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  br i1 %2, label %bb.g, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #18
  br label %bb.h

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_CsYRDU3KUgQU_7unicaseINtB4_7UniCaseNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrE3newBH_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !190 {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvXs5_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert5AsRefeE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #20
  resume { ptr, i32 } %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0        ; 10 uses
  %i.d = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.e = icmp samesign ult i64 %i.d, 64
  br i1 %i.e, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %i.d, 9223372036854775744
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 3 uses
  %i.h = and i64 %i.d, 63                         ; 2 uses
  br label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.d
  %.sroa.01.028.i.i = phi ptr [ %i.i, %bb.e ], [ %i.c, %bb.d ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !191, !noalias !192
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.k, align 1, !alias.scope !191, !noalias !193
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.l, align 1, !alias.scope !191, !noalias !194
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.m, align 1, !alias.scope !191, !noalias !195
  %i.n = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.o = or <2 x i64> %i.n, %.sroa.0.0.copyload.i10.i.i
  %i.p = or <2 x i64> %i.o, %.sroa.0.0.copyload.i11.i.i
  %i.q = bitcast <2 x i64> %i.p to <16 x i8>
  %i.r = icmp slt <16 x i8> %i.q, zeroinitializer
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.e, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.v = icmp samesign eq i64 %i.h, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.f
  %i.y = phi ptr [ %i.w, %bb.f ], [ %i.g, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !191, !noalias !196, !noundef !5
  %i.z = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.z, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.aa = and i64 %i.d, 56                        ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa ; 7 uses
  %i.ac = and i64 %i.d, 7                         ; 7 uses
  %.not.i26 = icmp eq i64 %i.aa, 0
  br i1 %.not.i26, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i

2:                                                ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i
  %.not.i = icmp eq i64 %i.aa, 8
  br i1 %.not.i, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.1

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.1: ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.012.0.copyload.i.1 = load i64, ptr %3, align 1, !alias.scope !197
  %4 = and i64 %.sroa.012.0.copyload.i.1, -9187201950435737472
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.1
  %.not.i.1 = icmp eq i64 %i.aa, 16
  br i1 %.not.i.1, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.2

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.2: ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.012.0.copyload.i.2 = load i64, ptr %7, align 1, !alias.scope !197
  %8 = and i64 %.sroa.012.0.copyload.i.2, -9187201950435737472
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.2
  %.not.i.2 = icmp eq i64 %i.aa, 24
  br i1 %.not.i.2, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.3

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.3: ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.012.0.copyload.i.3 = load i64, ptr %11, align 1, !alias.scope !197
  %12 = and i64 %.sroa.012.0.copyload.i.3, -9187201950435737472
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.3
  %.not.i.3 = icmp eq i64 %i.aa, 32
  br i1 %.not.i.3, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.4

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.4: ; preds = %14
  %15 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.012.0.copyload.i.4 = load i64, ptr %15, align 1, !alias.scope !197
  %16 = and i64 %.sroa.012.0.copyload.i.4, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %.loopexit

18:                                               ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.4
  %.not.i.4 = icmp eq i64 %i.aa, 40
  br i1 %.not.i.4, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.5

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.5: ; preds = %18
  %19 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.012.0.copyload.i.5 = load i64, ptr %19, align 1, !alias.scope !197
  %20 = and i64 %.sroa.012.0.copyload.i.5, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.5
  %.not.i.5 = icmp eq i64 %i.aa, 48
  br i1 %.not.i.5, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.012.0.copyload.i.6 = load i64, ptr %i.ad, align 1, !alias.scope !197
  %23 = and i64 %.sroa.012.0.copyload.i.6, -9187201950435737472
  %.not.i.a = icmp eq i64 %23, 0
  br i1 %.not.i.a, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %2, %6, %10, %14, %18, %22, %bb.h, %bb.g
  %i.ae = icmp samesign eq i64 %i.ac, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph30

bb.i:                                             ; preds = %.lr.ph30
  %i.af = icmp samesign eq i64 %i.ac, 1
  br i1 %i.af, label %.loopexit, label %.lr.ph30.1

.lr.ph30.1:                                       ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.val.i.i.1 = load i8, ptr %i.ag, align 1, !alias.scope !197, !noalias !198, !noundef !5
  %i.ah = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.ah, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph30.1
  %i.ai = icmp samesign eq i64 %i.ac, 2
  br i1 %i.ai, label %.loopexit, label %.lr.ph30.2

.lr.ph30.2:                                       ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.val.i.i.2 = load i8, ptr %i.aj, align 1, !alias.scope !197, !noalias !198, !noundef !5
  %i.ak = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.ak, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph30.2
  %i.al = icmp samesign eq i64 %i.ac, 3
  br i1 %i.al, label %.loopexit, label %.lr.ph30.3

.lr.ph30.3:                                       ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %.val.i.i.3 = load i8, ptr %i.am, align 1, !alias.scope !197, !noalias !198, !noundef !5
  %i.an = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.an, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph30.3
  %i.ao = icmp samesign eq i64 %i.ac, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph30.4

.lr.ph30.4:                                       ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.val.i.i.4 = load i8, ptr %i.ap, align 1, !alias.scope !197, !noalias !198, !noundef !5
  %i.aq = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.aq, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph30.4
  %i.ar = icmp samesign eq i64 %i.ac, 5
  br i1 %i.ar, label %.loopexit, label %.lr.ph30.5

.lr.ph30.5:                                       ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %.val.i.i.5 = load i8, ptr %i.as, align 1, !alias.scope !197, !noalias !198, !noundef !5
  %i.at = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.at, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph30.5
  %i.au = icmp samesign eq i64 %i.ac, 6
  br i1 %i.au, label %.loopexit, label %.lr.ph30.6

.lr.ph30.6:                                       ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %.val.i.i.6 = load i8, ptr %i.av, align 1, !alias.scope !197, !noalias !198, !noundef !5
  %i.aw = icmp sgt i8 %.val.i.i.6, -1
  %spec.select = select i1 %i.aw, i64 0, i64 1
  br label %.loopexit

.lr.ph30:                                         ; preds = %._crit_edge
  %.val.i.i = load i8, ptr %i.ab, align 1, !alias.scope !197, !noalias !198, !noundef !5
  %i.ax = icmp sgt i8 %.val.i.i, -1
  br i1 %i.ax, label %bb.i, label %.loopexit

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i: ; preds = %bb.g
  %.sroa.012.0.copyload.i = load i64, ptr %i.c, align 1, !alias.scope !197
  %i.ay = and i64 %.sroa.012.0.copyload.i, -9187201950435737472
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %2, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph30.6, %.lr.ph.i.i, %bb.f, %.lr.ph, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.2, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.3, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.4, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.5, %bb.h, %bb.i, %.lr.ph30, %.lr.ph30.1, %bb.j, %.lr.ph30.2, %bb.k, %.lr.ph30.3, %bb.l, %.lr.ph30.4, %bb.m, %.lr.ph30.5, %bb.n, %._crit_edge, %._crit_edge.i.i
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i ], [ 1, %.lr.ph.i.i ], [ 1, %.lr.ph ], [ 0, %._crit_edge.i.i ], [ 0, %bb.i ], [ 1, %.lr.ph30 ], [ 1, %.lr.ph30.1 ], [ 0, %bb.j ], [ 1, %.lr.ph30.2 ], [ 0, %bb.k ], [ 1, %.lr.ph30.3 ], [ 0, %bb.l ], [ 1, %.lr.ph30.4 ], [ 0, %bb.m ], [ 1, %.lr.ph30.5 ], [ 0, %bb.n ], [ %spec.select, %.lr.ph30.6 ], [ 1, %bb.h ], [ 1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.5 ], [ 1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.4 ], [ 1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.3 ], [ 1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.2 ], [ 1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNU0JlWw3cF_14pulldown_cmark.exit.i.1 ], [ 0, %bb.f ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsYRDU3KUgQU_7unicase7UniCaseNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEINtB2_10EquivalentBq_E10equivalentB10_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 !guid !199 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs6_CsYRDU3KUgQU_7unicaseINtB5_7UniCaseNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #21
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !200 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCsbNU0JlWw3cF_14pulldown_cmark4tree4NodeNtNtBR_5parse4ItemEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !201 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !202 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbNU0JlWw3cF_14pulldown_cmark4tree9TreeIndexENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !203 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbNU0JlWw3cF_14pulldown_cmark5parse17HeadingAttributesENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !204 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbNU0JlWw3cF_14pulldown_cmark5parse8InlineElENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !205 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !206 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !207 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCsbNU0JlWw3cF_14pulldown_cmark8LinkTypeNtNtBP_7strings6CowStrB1s_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !208 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 56
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !209 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsbNU0JlWw3cF_14pulldown_cmark5parse8InlineElEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1w_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 !guid !212 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !213, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !alias.scope !213, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
end_hunk_0
