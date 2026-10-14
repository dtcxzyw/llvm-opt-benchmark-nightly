Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_pivco_avx2?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mergeFlatDepth:bb.a

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @mergeFlatDepth6(ptr noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %6)
  br label %mergeFlatDepth8.exit

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @mergeFlatDepth7(ptr noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %6)
  br label %mergeFlatDepth8.exit

bb.i:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %mergeFlatDepth8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.b = icmp ult i64 %1, 4
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ad, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %.07.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.07.i
  store i8 %i.g, ptr %i.h, align 1, !tbaa !11
  %i.i = or disjoint i64 %.07.i, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  store i8 %i.n, ptr %i.o, align 1, !tbaa !11
  %i.p = or disjoint i64 %.07.i, 2                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store i8 %i.u, ptr %i.v, align 1, !tbaa !11
  %i.w = or disjoint i64 %.07.i, 3                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !11
  %i.ad = add nuw i64 %.07.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %mergeFlatDepth8.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

mergeFlatDepth8.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mergeFlatDepth8.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %mergeFlatDepth8.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ad, %mergeFlatDepth8.exit.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.07.i.epil = phi i64 [ %i.ak, %.lr.ph.i.epil ], [ %.07.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %.07.i.epil
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.07.i.epil
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !11
  %i.ak = add nuw i64 %.07.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %mergeFlatDepth8.exit, label %.lr.ph.i.epil, !llvm.loop !18

mergeFlatDepth8.exit:                             ; preds = %mergeFlatDepth8.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.i, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse41.pblendvb(<16 x i8>, <16 x i8>, <16 x i8>) #4

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mergeFlatDepth1(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i8 %.0.val, i8 %.1.val) unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 64               ; 5 uses
  %i.b = alloca [64 x i8], align 64               ; 4 uses
  %i.c = insertelement <32 x i8> poison, i8 %.0.val, i64 0
  %i.d = shufflevector <32 x i8> %i.c, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %.scalar = xor i8 %.1.val, %.0.val
  %i.e = insertelement <32 x i8> poison, i8 %.scalar, i64 0
  %i.f = shufflevector <32 x i8> %i.e, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %.not5 = icmp ult i64 %1, 64
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi i64 [ %i.aa, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.06 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.h = lshr exact i64 %.06, 3
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h ; 2 uses
  %.0.copyload2 = load i32, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload = load i32, ptr %i.j, align 1
  %i.k = insertelement <8 x i32> poison, i32 %.0.copyload2, i64 0
  %i.l = shufflevector <8 x i32> %i.k, <8 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison>
  %i.m = bitcast <8 x i32> %i.l to <32 x i8>
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19>
  %i.o = and <32 x i8> %i.n, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %.not3 = icmp eq <32 x i8> %i.o, zeroinitializer
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.06 ; 2 uses
  %i.q = select <32 x i1> %.not3, <32 x i8> zeroinitializer, <32 x i8> %i.f
  %i.r = xor <32 x i8> %i.q, %i.d
  store <32 x i8> %i.r, ptr %i.p, align 1, !tbaa !11
  %i.s = insertelement <8 x i32> poison, i32 %.0.copyload, i64 0
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison>
  %i.u = bitcast <8 x i32> %i.t to <32 x i8>
  %i.v = shufflevector <32 x i8> %i.u, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19>
  %i.w = and <32 x i8> %i.v, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %.not4 = icmp eq <32 x i8> %i.w, zeroinitializer
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.y = select <32 x i1> %.not4, <32 x i8> zeroinitializer, <32 x i8> %i.f
  %i.z = xor <32 x i8> %i.y, %i.d
  store <32 x i8> %i.z, ptr %i.x, align 1, !tbaa !11
  %i.aa = add i64 %i.g, 64                        ; 2 uses
  %.not = icmp ugt i64 %i.aa, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.ab = icmp ult i64 %.0.lcssa, %1
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ac = sub nuw i64 %1, %.0.lcssa               ; 2 uses
  %i.ad = lshr exact i64 %.0.lcssa, 3
  %i.ae = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 %3) ; 2 uses
  %i.af = add i64 %i.ac, 7
  %i.ag = lshr i64 %i.af, 3
  %i.ah = sub nuw i64 %3, %i.ae
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.aj, i64 %i.ai, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth1(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, i8 %.0.val, i8 %.1.val) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull readonly align 64 %i.b, i64 %i.ac, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mergeFlatDepth2(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 64               ; 5 uses
  %i.b = alloca [64 x i8], align 64               ; 4 uses
  %.not28 = icmp ult i64 %1, 32
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load <4 x i8>, ptr %4, align 1, !tbaa !11
  %i.d = shufflevector <4 x i8> %i.c, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi i64 [ 32, %.lr.ph ], [ %i.q, %bb.b ] ; 3 uses
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.g = lshr exact i64 %.029, 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %.val = load i64, ptr %i.h, align 1
  %i.i = insertelement <4 x i64> poison, i64 %.val, i64 0
  %5 = shufflevector <4 x i64> %i.i, <4 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.j = bitcast <4 x i64> %5 to <8 x i32>
  %6 = shufflevector <8 x i32> %i.j, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.k = lshr <8 x i32> %6, <i32 0, i32 2, i32 4, i32 6, i32 0, i32 2, i32 4, i32 6>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  %i.m = bitcast <8 x i32> %i.k to <32 x i8>
  %i.n = and <32 x i8> %i.m, splat (i8 3)
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15, i32 16, i32 20, i32 24, i32 28, i32 17, i32 21, i32 25, i32 29, i32 18, i32 22, i32 26, i32 30, i32 19, i32 23, i32 27, i32 31>
  %i.p = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.e, <32 x i8> %i.o)
  store <32 x i8> %i.p, ptr %i.l, align 1, !tbaa !11
  %i.q = add i64 %i.f, 32                         ; 2 uses
  %.not = icmp ugt i64 %i.q, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %i.r = icmp ult i64 %.0.lcssa, %1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.s = sub nuw i64 %1, %.0.lcssa                ; 2 uses
  %i.t = lshr exact i64 %.0.lcssa, 2
  %i.u = and i64 %i.t, 2305843009213693944
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %3) ; 2 uses
  %i.w = shl i64 %i.s, 1
  %i.x = add i64 %i.w, 6
  %i.y = lshr i64 %i.x, 3
  %i.z = sub nuw i64 %3, %i.v
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.ab, i64 %i.aa, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth2(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull %4) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull readonly align 64 %i.b, i64 %i.s, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mergeFlatDepth3(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 %.0.val) unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 64               ; 5 uses
  %i.b = alloca [64 x i8], align 64               ; 4 uses
  %.not1 = icmp ult i64 %1, 64
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.val, i64 0
  %i.d = bitcast <2 x i64> %i.c to <16 x i8>
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %.0.lcssa, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i64 [ 64, %.lr.ph ], [ %i.ai, %bb.b ] ; 3 uses
  %.03 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.b ]
  %.0422 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.0422 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load <2 x i64>, ptr %i.i, align 1, !tbaa !11
  %i.k = load <2 x i64>, ptr %i.h, align 1, !tbaa !11
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> %i.j, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.m = bitcast <4 x i64> %i.l to <32 x i8>
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 1, i32 2, i32 3, i32 4, i32 4, i32 5, i32 6, i32 7, i32 7, i32 8, i32 9, i32 10, i32 10, i32 11, i32 20, i32 21, i32 21, i32 22, i32 23, i32 24, i32 24, i32 25, i32 26, i32 27, i32 27, i32 28, i32 29, i32 30, i32 30, i32 31>
  %i.o = bitcast <32 x i8> %i.n to <16 x i16>
  %i.p = shl <16 x i16> %i.o, <i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0> ; 2 uses
  %i.q = lshr <16 x i16> %i.p, splat (i16 4)
  %.inner = and <16 x i16> %i.q, splat (i16 63)
  %i.r = lshr <16 x i16> %i.p, splat (i16 2)
  %.inner1 = and <16 x i16> %i.r, splat (i16 16128)
  %.inner2 = or disjoint <16 x i16> %.inner, %.inner1 ; 2 uses
  %i.s = bitcast <16 x i16> %.inner2 to <32 x i8>
  %i.t = and <32 x i8> %i.s, splat (i8 7)
  %i.u = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.e, <32 x i8> %i.t) ; 2 uses
  %i.v = lshr <16 x i16> %.inner2, splat (i16 3)
  %i.w = bitcast <16 x i16> %i.v to <32 x i8>
  %i.x = and <32 x i8> %i.w, splat (i8 7)
  %i.y = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.e, <32 x i8> %i.x) ; 2 uses
  %i.z = shufflevector <32 x i8> %i.u, <32 x i8> %i.y, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.aa = bitcast <32 x i8> %i.z to <4 x i64>
  %i.ab = shufflevector <32 x i8> %i.u, <32 x i8> %i.y, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ac = bitcast <32 x i8> %i.ab to <4 x i64>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.03 ; 2 uses
  %i.ae = shufflevector <32 x i8> %i.z, <32 x i8> %i.ab, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  store <32 x i8> %i.ae, ptr %i.ad, align 1, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = shufflevector <4 x i64> %i.aa, <4 x i64> %i.ac, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i64> %i.ag, ptr %i.af, align 1, !tbaa !11
  %i.ah = add i64 %.0422, 24
  %i.ai = add i64 %i.g, 64                        ; 2 uses
  %.not = icmp ugt i64 %i.ai, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !22

bb.c:                                             ; preds = %._crit_edge
  %i.aj = sub nuw i64 %1, %.0.lcssa               ; 2 uses
  %i.ak = mul i64 %.0.lcssa, 3
  %i.al = lshr exact i64 %i.ak, 3
  %i.am = tail call noundef i64 @llvm.umin.i64(i64 %i.al, i64 %3) ; 2 uses
  %i.an = mul i64 %i.aj, 3
  %i.ao = add i64 %i.an, 7
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = sub nuw i64 %3, %i.am
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.ap, i64 %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.as, i64 %i.ar, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth3(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, i64 %.0.val) #9
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull readonly align 64 %i.b, i64 %i.aj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mergeFlatDepth4(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, <2 x i64> %.0.val) unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 64               ; 5 uses
  %i.b = alloca [64 x i8], align 64               ; 4 uses
  %.not1 = icmp ult i64 %1, 64
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = bitcast <2 x i64> %.0.val to <16 x i8>
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi i64 [ 64, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %.02 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ]  ; 2 uses
  %i.f = lshr exact i64 %.02, 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = load <4 x i64>, ptr %i.g, align 1, !tbaa !11 ; 2 uses
  %i.i = bitcast <4 x i64> %i.h to <16 x i16>
  %i.j = lshr <16 x i16> %i.i, splat (i16 4)
  %i.k = bitcast <4 x i64> %i.h to <32 x i8>
  %i.l = and <32 x i8> %i.k, splat (i8 15)        ; 2 uses
  %i.m = bitcast <16 x i16> %i.j to <32 x i8>
  %i.n = and <32 x i8> %i.m, splat (i8 15)        ; 2 uses
  %i.o = shufflevector <32 x i8> %i.l, <32 x i8> %i.n, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.p = shufflevector <32 x i8> %i.l, <32 x i8> %i.n, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.q = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.d, <32 x i8> %i.o) ; 2 uses
  %i.r = bitcast <32 x i8> %i.q to <4 x i64>
  %i.s = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.d, <32 x i8> %i.p) ; 2 uses
  %i.t = bitcast <32 x i8> %i.s to <4 x i64>
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.02 ; 2 uses
  %i.v = shufflevector <32 x i8> %i.q, <32 x i8> %i.s, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  store <32 x i8> %i.v, ptr %i.u, align 1, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = shufflevector <4 x i64> %i.r, <4 x i64> %i.t, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i64> %i.x, ptr %i.w, align 1, !tbaa !11
  %i.y = add i64 %i.e, 64                         ; 2 uses
  %.not = icmp ugt i64 %i.y, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.z = icmp ult i64 %.0.lcssa, %1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aa = sub nuw i64 %1, %.0.lcssa               ; 2 uses
  %i.ab = lshr exact i64 %.0.lcssa, 1
  %i.ac = and i64 %i.ab, 2305843009213693920
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %3) ; 2 uses
  %i.ae = shl i64 %i.aa, 2
  %i.af = add i64 %i.ae, 4
  %i.ag = lshr i64 %i.af, 3
  %i.ah = sub nuw i64 %3, %i.ad
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.aj, i64 %i.ai, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth4(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, <2 x i64> %.0.val) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull readonly align 64 %i.b, i64 %i.aa, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mergeFlatDepth5(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
end_hunk_0
