Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/skeleton?download=true
inline.NumInlined: 115
inline.NumDeleted: 79
begin_hunk_0_@_ZN3ozz9animation8SkeletonC2EOS1_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.d = load ptr, ptr %1, align 8, !tbaa !10
  store ptr %i.d, ptr %0, align 8, !tbaa !10
  store ptr null, ptr %1, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  store ptr %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !16
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.e, align 8, !tbaa !15
  store i64 0, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i5.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.4.0.copyload.i7.i = load i64, ptr %.sroa.4.0..sroa_idx.i6.i, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  store ptr %i.j, ptr %i.b, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i6.i, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i5.i, ptr %i.i, align 8, !tbaa !21
  store i64 %.sroa.4.0.copyload.i7.i, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i8.i = load ptr, ptr %i.c, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.4.0.copyload.i10.i = load i64, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !19
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  store ptr %i.n, ptr %i.c, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !28
  store ptr %.sroa.0.0.copyload.i8.i, ptr %i.m, align 8, !tbaa !27
  store i64 %.sroa.4.0.copyload.i10.i, ptr %i.o, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN3ozz9animation8SkeletonaSEOS1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = load ptr, ptr %1, align 8, !tbaa !10
  store ptr %i.b, ptr %0, align 8, !tbaa !10
  store ptr %i.a, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !19
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  store ptr %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !16
  store ptr %.sroa.0.0.copyload.i, ptr %i.d, align 8, !tbaa !15
  store i64 %.sroa.4.0.copyload.i, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i5 = load ptr, ptr %i.h, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.4.0.copyload.i7 = load i64, ptr %.sroa.4.0..sroa_idx.i6, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  store ptr %i.j, ptr %i.h, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i6, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i5, ptr %i.i, align 8, !tbaa !21
  store i64 %.sroa.4.0.copyload.i7, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i8 = load ptr, ptr %i.m, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.4.0.copyload.i10 = load i64, ptr %.sroa.4.0..sroa_idx.i9, align 8, !tbaa !19
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  store ptr %i.o, ptr %i.m, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i9, align 8, !tbaa !28
  store ptr %.sroa.0.0.copyload.i8, ptr %i.n, align 8, !tbaa !27
  store i64 %.sroa.4.0.copyload.i10, ptr %i.p, align 8, !tbaa !28
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ozz9animation8SkeletonD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !30
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c, !inline_history !33

bb.b:                                             ; preds = %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation8Skeleton10DeallocateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !30
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b)
  store ptr null, ptr %0, align 8, !tbaa !30
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3ozz9animation8Skeleton8AllocateEmm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN3ozz9fill_spanIsEENS_4spanIT_EERNS1_IhEEm.exit

_ZN3ozz9fill_spanIsEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a
  %i.b = add i64 %2, 3
  %i.c = lshr i64 %i.b, 2                         ; 3 uses
  %i.d = mul i64 %i.c, 160                        ; 2 uses
  %i.e = shl i64 %2, 3                            ; 2 uses
  %i.f = shl i64 %2, 1                            ; 2 uses
  %i.g = add i64 %i.e, %1
  %i.h = add i64 %i.g, %i.f
  %i.i = add i64 %i.h, %i.d
  %i.j = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.i, i64 noundef 16) ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !30
  %.not.i = icmp eq i64 %i.c, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d ; 2 uses
  %.sroa.04.0.i = select i1 %.not.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0.i, ptr %i.p, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.t, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.v, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.w, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN3ozz9fill_spanIsEENS_4spanIT_EERNS1_IhEEm.exit
  %.0 = phi ptr [ %i.u, %_ZN3ozz9fill_spanIsEENS_4spanIT_EERNS1_IhEEm.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3ozz9animation8Skeleton4SaveERNS_2io8OArchiveE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !51, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  %.sroa.0.0.insert.insert.i = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %spec.select.i = select i1 %i.j, i32 %.sroa.0.0.insert.insert.i, i32 %i.g
  store i32 %spec.select.i, ptr %i.d, align 4, !tbaa !52
  %i.k = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.d, i64 noundef 4), !inline_history !42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.p = icmp sgt i32 %i.g, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %wide.trip.count = and i64 %i.f, 2147483647
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.bp, %bb.d ] ; 4 uses
  %i.s = trunc i64 %.0.lcssa to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.t = load i8, ptr %i.h, align 8, !tbaa !51, !range !36, !noundef !37
  %i.u = trunc nuw i8 %i.t to i1
  %.sroa.0.0.insert.insert.i22 = call i32 @llvm.bswap.i32(i32 %i.s)
  %spec.select.i23 = select i1 %i.u, i32 %.sroa.0.0.insert.insert.i22, i32 %i.s
  store i32 %spec.select.i23, ptr %i.c, align 4, !tbaa !52
  %i.v = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.ad = load i8, ptr %i.h, align 8, !tbaa !51, !range !36, !noundef !37
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %._crit_edge
  %.not.i.i.i = icmp eq i64 %.0.lcssa, 0
  br i1 %.not.i.i.i, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit.thread, label %.lr.ph.i.i.i

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit.thread: ; preds = %.preheader.i.i.i
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload41 = load ptr, ptr %2, align 8, !tbaa !18
  %.sroa.22.0.copyload42 = load i64, ptr %i.e, align 8, !tbaa !19
  br label %.preheader.i.i.i24

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.06.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 %i.ag, ptr %i.b, align 1, !tbaa !40
  %i.ah = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.am = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %exitcond44.not = icmp eq i64 %i.am, %.0.lcssa
  br i1 %exitcond44.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !44

bb.b:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ac, i64 noundef %.0.lcssa), !inline_history !45 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.pr = load i8, ptr %i.h, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !18 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %i.at = trunc nuw i8 %.pr to i1
  br i1 %i.at, label %.preheader.i.i.i24, label %bb.c

.preheader.i.i.i24:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit.thread, %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit
  %.sroa.22.0.copyload46 = phi i64 [ %.sroa.22.0.copyload42, %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit.thread ], [ %.sroa.22.0.copyload, %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit ] ; 2 uses
  %.sroa.01.0.copyload45 = phi ptr [ %.sroa.01.0.copyload41, %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit.thread ], [ %.sroa.01.0.copyload, %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit ]
  %.not.i.i.i25 = icmp eq i64 %.sroa.22.0.copyload46, 0
  br i1 %.not.i.i.i25, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIsEEEEvRKT_.exit, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %.preheader.i.i.i24, %.lr.ph.i.i.i26
  %.06.i.i.i27 = phi i64 [ %i.bd, %.lr.ph.i.i.i26 ], [ 0, %.preheader.i.i.i24 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.copyload45, i64 %.06.i.i.i27
  %i.av = load i16, ptr %i.au, align 2, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aw = load i8, ptr %i.h, align 8, !tbaa !51, !range !36, !noundef !37
  %i.ax = trunc nuw i8 %i.aw to i1
  %.sroa.0.0.insert.insert.i.i.i.i = call i16 @llvm.bswap.i16(i16 %i.av)
  %spec.select.i.i.i.i = select i1 %i.ax, i16 %.sroa.0.0.insert.insert.i.i.i.i, i16 %i.av
  store i16 %spec.select.i.i.i.i, ptr %i.a, align 2, !tbaa !55
  %i.ay = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !46 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.bd = add nuw i64 %.06.i.i.i27, 1             ; 2 uses
  %exitcond45.not = icmp eq i64 %i.bd, %.sroa.22.0.copyload46
  br i1 %exitcond45.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIsEEEEvRKT_.exit, label %.lr.ph.i.i.i26, !llvm.loop !47

bb.c:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit
  %i.be = shl i64 %.sroa.22.0.copyload, 1
  %i.bf = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %.sroa.01.0.copyload, i64 noundef %i.be), !inline_history !48 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIsEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIsEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i26, %.preheader.i.i.i24, %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.bk, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  call void @_ZN3ozz2io6ExternINS_4math12SoaTransformEE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.042 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %bb.d ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !39
  %i.bn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #14
  %i.bo = add i64 %.042, 1
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !49

bb.e:                                             ; preds = %bb.a, %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIsEEEEvRKT_.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation8Skeleton4LoadERNS_2io8IArchiveEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.ozz::log::Err", align 8     ; 7 uses
  %i.c = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !30
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d), !inline_history !33
  store ptr null, ptr %0, align 8, !tbaa !30
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %3)
  %i.h = load ptr, ptr %3, align 8, !tbaa !66, !nonnull !37, !align !67 ; 2 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str, i64 noundef 29)
          to label %_ZN3ozz3log6LoggerlsIA30_cEERSoRKT_.exit unwind label %bb.f ; 0 uses

_ZN3ozz3log6LoggerlsIA30_cEERSoRKT_.exit:         ; preds = %bb.b
  %i.j = zext i32 %2 to i64
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.j)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %_ZN3ozz3log6LoggerlsIA30_cEERSoRKT_.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 6 uses
  %.not.i.i.i26 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i26, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i8, ptr %i.s, align 8, !tbaa !86
  %.not.i1.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 67
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.r)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %bb.e
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef signext i8 %i.y(ptr noundef nonnull align 8 dereferenceable(570) %i.r, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.f, !inline_history !56

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc27, %bb.d
  %.0.i.i.i = phi i8 [ %i.v, %bb.d ], [ %i.z, %.noexc27 ]
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
          to label %.noexc29 unwind label %bb.f

.noexc29:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc29
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.i

bb.f:                                             ; preds = %.noexc29, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc27, %bb.e, %bb.c, %_ZNSolsEj.exit, %_ZN3ozz3log6LoggerlsIA30_cEERSoRKT_.exit, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %i.ac

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ad = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !57 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !89, !range !36, !noundef !37
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load i32, ptr %i.b, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.al)
  %i.am = select i1 %i.ak, i32 %.sroa.0.0.insert.insert.i, i32 %i.al ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.not20 = icmp eq i32 %i.am, 0
  br i1 %.not20, label %bb.i, label %_ZN3ozz9animation8Skeleton8AllocateEmm.exit

_ZN3ozz9animation8Skeleton8AllocateEmm.exit:      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.an = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !57 ; 0 uses
  %i.as = load i8, ptr %i.ai, align 8, !tbaa !89, !range !36, !noundef !37
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i32, ptr %i.a, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i25 = call i32 @llvm.bswap.i32(i32 %i.au)
  %i.av = select i1 %i.at, i32 %.sroa.0.0.insert.insert.i25, i32 %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = sext i32 %i.am to i64                   ; 6 uses
  %i.ay = add nsw i64 %i.ax, 3
  %i.az = lshr i64 %i.ay, 2                       ; 3 uses
  %i.ba = mul i64 %i.az, 160                      ; 2 uses
  %i.bb = shl nsw i64 %i.ax, 3
  %i.bc = shl nsw i64 %i.ax, 1
  %i.bd = mul nsw i64 %i.ax, 10
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = add i64 %i.be, %i.aw
  %i.bg = call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bf, i64 noundef 16), !inline_history !90 ; 3 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !30
  %.not.i.i = icmp eq i64 %i.az, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ba ; 2 uses
  %.sroa.04.0.i.i = select i1 %.not.i.i, ptr null, ptr %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %.sroa.04.0.i.i, ptr %i.bm, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.az, ptr %i.bn, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bb ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.bl, ptr %i.bp, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ax, ptr %i.bq, align 8, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bc ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.ax, ptr %i.bt, align 8, !tbaa !22
  %i.bu = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.br, i64 noundef %i.aw), !inline_history !58 ; 0 uses
  %i.bz = icmp sgt i32 %i.am, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge
end_hunk_0
