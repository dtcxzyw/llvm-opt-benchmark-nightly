Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SimdUtil?download=true
inline.NumInlined: 131
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8facebook5velox4simd18initializeSimdUtilEv:bb.a
  %.1.4.i = phi i32 [ %i.u, %bb.j ], [ %.1.3.i, %bb.i ] ; 3 uses
  %i.x = and i32 %i.b, 32
  %.not.5.i = icmp eq i32 %i.x, 0
  br i1 %.not.5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = add nuw nsw i32 %.1.4.i, 1
  %i.z = zext nneg i32 %.1.4.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z
  store i32 5, ptr %i.aa, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.5.i = phi i32 [ %i.y, %bb.l ], [ %.1.4.i, %bb.k ] ; 3 uses
  %i.ab = and i32 %i.b, 64
  %.not.6.i = icmp eq i32 %i.ab, 0
  br i1 %.not.6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = add nuw nsw i32 %.1.5.i, 1
  %i.ad = zext nneg i32 %.1.5.i to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  store i32 6, ptr %i.ae, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.6.i = phi i32 [ %i.ac, %bb.n ], [ %.1.5.i, %bb.m ] ; 4 uses
  %i.af = and i32 %i.b, 128
  %.not.7.i = icmp eq i32 %i.af, 0
  br i1 %.not.7.i, label %.lr.ph.preheader.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %i.ag = add nuw nsw i32 %.1.6.i, 1
  %i.ah = zext nneg i32 %.1.6.i to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ah
  store i32 7, ptr %i.ai, align 4, !tbaa !8
  %i.aj = icmp samesign ult i32 %.1.6.i, 7
  br i1 %i.aj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.al = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vector.ph, %.preheader.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next22.i, 256
  br i1 %exitcond24.not.i, label %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit, label %.preheader, !llvm.loop !21

_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit: ; preds = %._crit_edge.i, %._crit_edge.i9
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %._crit_edge.i9 ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail18permute4x64IndicesE, i64 %indvars.iv24.i ; 7 uses
  %i.an = trunc nuw nsw i64 %indvars.iv24.i to i32 ; 4 uses
  %i.ao = and i32 %i.an, 1
  %.not.i1 = icmp eq i32 %i.ao, 0
  br i1 %.not.i1, label %bb.q, label %bb.p

.lr.ph.preheader.i10:                             ; preds = %.preheader.i8, %bb.u
  %.1.329.i = phi i32 [ %i.bh, %.preheader.i8 ], [ %.1.2.i6, %bb.u ] ; 2 uses
  %i.ap = zext i32 %.1.329.i to i64               ; 4 uses
  %i.aq = sub nsw i64 8, %i.ap                    ; 3 uses
  %min.iters.check16 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check16, label %.lr.ph.i11.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.preheader.i10
  %n.vec18 = and i64 %i.aq, -8                    ; 2 uses
  %i.ar = add nsw i64 %n.vec18, %i.ap
  %broadcast.splatinsert19 = insertelement <8 x i32> poison, i32 %.1.329.i, i64 0
  %broadcast.splat20 = shufflevector <8 x i32> %broadcast.splatinsert19, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction21 = add <8 x i32> %broadcast.splat20, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ap
  store <8 x i32> %induction21, ptr %i.as, align 4, !tbaa !8
  %cmp.n24 = icmp eq i64 %i.aq, %n.vec18
  br i1 %cmp.n24, label %._crit_edge.i9, label %.lr.ph.i11.preheader

.lr.ph.i11.preheader:                             ; preds = %.lr.ph.preheader.i10, %vector.ph17
  %indvars.iv.i12.ph = phi i64 [ %i.ap, %.lr.ph.preheader.i10 ], [ %i.ar, %vector.ph17 ]
  br label %.lr.ph.i11

bb.p:                                             ; preds = %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit
  store i32 0, ptr %i.am, align 32, !tbaa !8
  %i.at = getelementptr i8, ptr %i.am, i64 4
  store i32 1, ptr %i.at, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit
  %.1.i2 = phi i32 [ 2, %bb.p ], [ 0, %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit ] ; 3 uses
  %i.au = and i32 %i.an, 2
  %.not.1.i3 = icmp eq i32 %i.au, 0
  br i1 %.not.1.i3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = zext nneg i32 %.1.i2 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  store i32 2, ptr %i.aw, align 8, !tbaa !8
  %i.ax = add nuw nsw i32 %.1.i2, 2
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  store i32 3, ptr %i.ay, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.1.i4 = phi i32 [ %i.ax, %bb.r ], [ %.1.i2, %bb.q ] ; 3 uses
  %i.az = and i32 %i.an, 4
  %.not.2.i5 = icmp eq i32 %i.az, 0
  br i1 %.not.2.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = zext nneg i32 %.1.1.i4 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ba ; 2 uses
  store i32 4, ptr %i.bb, align 4, !tbaa !8
  %i.bc = add nuw nsw i32 %.1.1.i4, 2
  %i.bd = getelementptr i8, ptr %i.bb, i64 4
  store i32 5, ptr %i.bd, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.2.i6 = phi i32 [ %i.bc, %bb.t ], [ %.1.1.i4, %bb.s ] ; 4 uses
  %i.be = and i32 %i.an, 8
  %.not.3.i7 = icmp eq i32 %i.be, 0
  br i1 %.not.3.i7, label %.lr.ph.preheader.i10, label %.preheader.i8

.preheader.i8:                                    ; preds = %bb.u
  %i.bf = zext nneg i32 %.1.2.i6 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bf ; 2 uses
  store i32 6, ptr %i.bg, align 4, !tbaa !8
  %i.bh = add nuw nsw i32 %.1.2.i6, 2
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  store i32 7, ptr %i.bi, align 4, !tbaa !8
  %i.bj = icmp samesign ult i32 %.1.2.i6, 6
  br i1 %i.bj, label %.lr.ph.preheader.i10, label %._crit_edge.i9

.lr.ph.i11:                                       ; preds = %.lr.ph.i11.preheader, %.lr.ph.i11
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i13, %.lr.ph.i11 ], [ %indvars.iv.i12.ph, %.lr.ph.i11.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i12
  %i.bl = trunc nuw nsw i64 %indvars.iv.i12 to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !8
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, 8
  br i1 %exitcond.not.i14, label %._crit_edge.i9, label %.lr.ph.i11, !llvm.loop !22

._crit_edge.i9:                                   ; preds = %.lr.ph.i11, %vector.ph17, %.preheader.i8
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next25.i, 16
  br i1 %exitcond27.not.i, label %_ZN8facebook5velox4simd12_GLOBAL__N_122initPermute4x64IndicesEv.exit, label %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit, !llvm.loop !23

_ZN8facebook5velox4simd12_GLOBAL__N_122initPermute4x64IndicesEv.exit: ; preds = %._crit_edge.i9
  store i1 true, ptr @_ZZN8facebook5velox4simd18initializeSimdUtilEvE6inited, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZN8facebook5velox4simd12_GLOBAL__N_122initPermute4x64IndicesEv.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.permd(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_SimdUtil.cpp() #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x i32> zeroinitializer, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, align 32
  store <8 x i32> <i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 32), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 64), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 96), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 128), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 160), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 192), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 224), align 32
  store <8 x i32> splat (i32 -1), ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 256), align 32
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 288, ptr nonnull @_ZN8facebook5velox4simd6detail13leadingMask32E) ; 0 uses
  store <4 x i64> zeroinitializer, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, align 32
  store <4 x i64> <i64 -1, i64 0, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, i64 32), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, i64 64), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, i64 96), align 32
  store <4 x i64> splat (i64 -1), ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, i64 128), align 32
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 160, ptr nonnull @_ZN8facebook5velox4simd6detail13leadingMask64E) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.1, %bb.b ] ; 4 uses
  %0 = trunc i64 %indvars.iv.i.i to i32
  %1 = insertelement <8 x i32> poison, i32 %0, i64 0
  %2 = shufflevector <8 x i32> %1, <8 x i32> poison, <8 x i32> zeroinitializer
  %3 = and <8 x i32> %2, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.c = icmp ne <8 x i32> %3, zeroinitializer
  %i.d = sext <8 x i1> %i.c to <8 x i32>
  %i.e = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13fromBitMask32E, i64 %indvars.iv.i.i
  store <8 x i32> %i.d, ptr %i.e, align 32
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %4 = trunc i64 %indvars.iv.next.i.i to i32
  %5 = insertelement <8 x i32> poison, i32 %4, i64 0
  %6 = shufflevector <8 x i32> %5, <8 x i32> poison, <8 x i32> zeroinitializer
  %7 = and <8 x i32> %6, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.f = icmp ne <8 x i32> %7, zeroinitializer
  %i.g = sext <8 x i1> %i.f to <8 x i32>
  %i.h = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13fromBitMask32E, i64 %indvars.iv.next.i.i
  store <8 x i32> %i.g, ptr %i.h, align 32
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %__cxx_global_var_init.2.exit, label %bb.b, !llvm.loop !24

__cxx_global_var_init.2.exit:                     ; preds = %bb.b
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 8192, ptr nonnull @_ZN8facebook5velox4simd6detail13fromBitMask32E) ; 0 uses
  store <4 x i64> zeroinitializer, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, align 32
  store <4 x i64> <i64 -1, i64 0, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 32), align 32
  store <4 x i64> <i64 0, i64 -1, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 64), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 96), align 32
  store <4 x i64> <i64 0, i64 0, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 128), align 32
  store <4 x i64> <i64 -1, i64 0, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 160), align 32
  store <4 x i64> <i64 0, i64 -1, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 192), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 224), align 32
  store <4 x i64> <i64 0, i64 0, i64 0, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 256), align 32
  store <4 x i64> <i64 -1, i64 0, i64 0, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 288), align 32
  store <4 x i64> <i64 0, i64 -1, i64 0, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 320), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 0, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 352), align 32
  store <4 x i64> <i64 0, i64 0, i64 -1, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 384), align 32
  store <4 x i64> <i64 -1, i64 0, i64 -1, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 416), align 32
  store <4 x i64> <i64 0, i64 -1, i64 -1, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 448), align 32
  store <4 x i64> splat (i64 -1), ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 480), align 32
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 512, ptr nonnull @_ZN8facebook5velox4simd6detail13fromBitMask64E) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN8facebook5velox4simd18initializeSimdUtilEv() ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !9, !10, !11}
!13 = distinct !{!13, !9, !11, !10}
!14 = distinct !{!14, !9}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"long", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!4, !4, i64 0}
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = distinct !{!20, !9, !11, !10}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9, !11, !10}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
end_hunk_0
