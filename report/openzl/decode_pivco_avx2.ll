Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_pivco_avx2?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mergeFlatDepth:bb.a
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
  %i.f = phi i64 [ 32, %.lr.ph ], [ %i.r, %bb.b ] ; 3 uses
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.g = lshr exact i64 %.029, 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %.val = load i64, ptr %i.h, align 1
  %i.i = insertelement <4 x i64> poison, i64 %.val, i64 0
  %i.j = bitcast <4 x i64> %i.i to <8 x i32>
  %i.k = shufflevector <8 x i32> %i.j, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.l = lshr <8 x i32> %i.k, <i32 0, i32 2, i32 4, i32 6, i32 0, i32 2, i32 4, i32 6>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  %i.n = bitcast <8 x i32> %i.l to <32 x i8>
  %i.o = and <32 x i8> %i.n, splat (i8 3)
  %i.p = shufflevector <32 x i8> %i.o, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15, i32 16, i32 20, i32 24, i32 28, i32 17, i32 21, i32 25, i32 29, i32 18, i32 22, i32 26, i32 30, i32 19, i32 23, i32 27, i32 31>
  %i.q = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.e, <32 x i8> %i.p)
  store <32 x i8> %i.q, ptr %i.m, align 1, !tbaa !11
  %i.r = add i64 %i.f, 32                         ; 2 uses
  %.not = icmp ugt i64 %i.r, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %i.s = icmp ult i64 %.0.lcssa, %1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.t = sub nuw i64 %1, %.0.lcssa                ; 2 uses
  %i.u = lshr exact i64 %.0.lcssa, 2
  %i.v = and i64 %i.u, 2305843009213693944
  %i.w = tail call noundef i64 @llvm.umin.i64(i64 %i.v, i64 %3) ; 2 uses
  %i.x = shl i64 %i.t, 1
  %i.y = add i64 %i.x, 6
  %i.z = lshr i64 %i.y, 3
  %i.aa = sub nuw i64 %3, %i.w
  %i.ab = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.ac, i64 %i.ab, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth2(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull %4) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull readonly align 64 %i.b, i64 %i.t, i1 false)
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
  %4 = bitcast <2 x i64> %i.c to <16 x i8>
  %5 = shufflevector <16 x i8> %4, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %.0.lcssa, %1
  br i1 %i.d, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi i64 [ 64, %.lr.ph ], [ %i.ag, %bb.b ] ; 3 uses
  %.03 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ]
  %.0422 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.0422 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load <2 x i64>, ptr %i.g, align 1, !tbaa !11
  %i.i = load <2 x i64>, ptr %i.f, align 1, !tbaa !11
  %i.j = shufflevector <2 x i64> %i.i, <2 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.k = bitcast <4 x i64> %i.j to <32 x i8>
  %i.l = shufflevector <32 x i8> %i.k, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 1, i32 2, i32 3, i32 4, i32 4, i32 5, i32 6, i32 7, i32 7, i32 8, i32 9, i32 10, i32 10, i32 11, i32 20, i32 21, i32 21, i32 22, i32 23, i32 24, i32 24, i32 25, i32 26, i32 27, i32 27, i32 28, i32 29, i32 30, i32 30, i32 31>
  %i.m = bitcast <32 x i8> %i.l to <16 x i16>
  %i.n = shl <16 x i16> %i.m, <i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0> ; 2 uses
  %i.o = lshr <16 x i16> %i.n, splat (i16 4)
  %.inner = and <16 x i16> %i.o, splat (i16 63)
  %i.p = lshr <16 x i16> %i.n, splat (i16 2)
  %.inner1 = and <16 x i16> %i.p, splat (i16 16128)
  %.inner2 = or disjoint <16 x i16> %.inner, %.inner1 ; 2 uses
  %i.q = bitcast <16 x i16> %.inner2 to <32 x i8>
  %i.r = and <32 x i8> %i.q, splat (i8 7)
  %i.s = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %5, <32 x i8> %i.r) ; 2 uses
  %i.t = lshr <16 x i16> %.inner2, splat (i16 3)
  %i.u = bitcast <16 x i16> %i.t to <32 x i8>
  %i.v = and <32 x i8> %i.u, splat (i8 7)
  %i.w = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %5, <32 x i8> %i.v) ; 2 uses
  %i.x = shufflevector <32 x i8> %i.s, <32 x i8> %i.w, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.y = bitcast <32 x i8> %i.x to <4 x i64>
  %i.z = shufflevector <32 x i8> %i.s, <32 x i8> %i.w, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.aa = bitcast <32 x i8> %i.z to <4 x i64>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.03 ; 2 uses
  %i.ac = shufflevector <32 x i8> %i.x, <32 x i8> %i.z, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  store <32 x i8> %i.ac, ptr %i.ab, align 1, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = shufflevector <4 x i64> %i.y, <4 x i64> %i.aa, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i64> %i.ae, ptr %i.ad, align 1, !tbaa !11
  %i.af = add i64 %.0422, 24
  %i.ag = add i64 %i.e, 64                        ; 2 uses
  %.not = icmp ugt i64 %i.ag, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !22

bb.c:                                             ; preds = %._crit_edge
  %i.ah = sub nuw i64 %1, %.0.lcssa               ; 2 uses
  %i.ai = mul i64 %.0.lcssa, 3
  %i.aj = lshr exact i64 %i.ai, 3
  %i.ak = tail call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %3) ; 2 uses
  %i.al = mul i64 %i.ah, 3
  %i.am = add i64 %i.al, 7
  %i.an = lshr i64 %i.am, 3
  %i.ao = sub nuw i64 %3, %i.ak
  %i.ap = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.aq, i64 %i.ap, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth3(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, i64 %.0.val) #9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull readonly align 64 %i.b, i64 %i.ah, i1 false)
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
  %4 = bitcast <2 x i64> %.0.val to <16 x i8>
  %5 = shufflevector <16 x i8> %4, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.c = phi i64 [ 64, %.lr.ph ], [ %i.w, %bb.b ] ; 3 uses
  %.02 = phi i64 [ 0, %.lr.ph ], [ %i.c, %bb.b ]  ; 2 uses
  %i.d = lshr exact i64 %.02, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load <4 x i64>, ptr %i.e, align 1, !tbaa !11 ; 2 uses
  %i.g = bitcast <4 x i64> %i.f to <16 x i16>
  %i.h = lshr <16 x i16> %i.g, splat (i16 4)
  %i.i = bitcast <4 x i64> %i.f to <32 x i8>
  %i.j = and <32 x i8> %i.i, splat (i8 15)        ; 2 uses
  %i.k = bitcast <16 x i16> %i.h to <32 x i8>
  %i.l = and <32 x i8> %i.k, splat (i8 15)        ; 2 uses
  %i.m = shufflevector <32 x i8> %i.j, <32 x i8> %i.l, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.n = shufflevector <32 x i8> %i.j, <32 x i8> %i.l, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.o = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %5, <32 x i8> %i.m) ; 2 uses
  %i.p = bitcast <32 x i8> %i.o to <4 x i64>
  %i.q = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %5, <32 x i8> %i.n) ; 2 uses
  %i.r = bitcast <32 x i8> %i.q to <4 x i64>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.02 ; 2 uses
  %i.t = shufflevector <32 x i8> %i.o, <32 x i8> %i.q, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  store <32 x i8> %i.t, ptr %i.s, align 1, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i64> %i.v, ptr %i.u, align 1, !tbaa !11
  %i.w = add i64 %i.c, 64                         ; 2 uses
  %.not = icmp ugt i64 %i.w, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.x = icmp ult i64 %.0.lcssa, %1
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.y = sub nuw i64 %1, %.0.lcssa                ; 2 uses
  %i.z = lshr exact i64 %.0.lcssa, 1
  %i.aa = and i64 %i.z, 2305843009213693920
  %i.ab = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %3) ; 2 uses
  %i.ac = shl i64 %i.y, 2
  %i.ad = add i64 %i.ac, 4
  %i.ae = lshr i64 %i.ad, 3
  %i.af = sub nuw i64 %3, %i.ab
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.ah, i64 %i.ag, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth4(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, <2 x i64> %.0.val) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull readonly align 64 %i.b, i64 %i.y, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mergeFlatDepth5(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
.preheader:
  %i.a = alloca [64 x i8], align 64               ; 5 uses
  %i.b = alloca [64 x i8], align 64               ; 4 uses
  %.not36 = icmp ult i64 %1, 32
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %5 = load <16 x i8>, ptr %i.c, align 1, !tbaa !11
  %6 = load <16 x i8>, ptr %4, align 1, !tbaa !11
  %7 = shufflevector <16 x i8> %6, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = shufflevector <16 x i8> %5, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a, %.preheader
  %.032.lcssa = phi i64 [ 0, %.preheader ], [ %i.e, %bb.a ] ; 4 uses
  %i.d = icmp ult i64 %.032.lcssa, %1
  br i1 %i.d, label %bb.b, label %bb.c

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %i.e = phi i64 [ 32, %.lr.ph ], [ %i.x, %bb.a ] ; 3 uses
  %.03138 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.a ] ; 2 uses
  %.03237 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.03138 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.f, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load <2 x i64>, ptr %i.h, align 1, !tbaa !11
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.k = bitcast <4 x i64> %i.j to <32 x i8>
  %i.l = shufflevector <32 x i8> %i.k, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 22, i32 23, i32 23, i32 24, i32 24, i32 25, i32 25, i32 26, i32 27, i32 28, i32 28, i32 29, i32 29, i32 30, i32 30, i32 31>
  %i.m = bitcast <32 x i8> %i.l to <16 x i16>
  %i.n = shl <16 x i16> %i.m, <i16 6, i16 4, i16 2, i16 0, i16 6, i16 4, i16 2, i16 0, i16 6, i16 4, i16 2, i16 0, i16 6, i16 4, i16 2, i16 0> ; 2 uses
  %i.o = lshr <16 x i16> %i.n, splat (i16 6)
  %.inner = and <16 x i16> %i.o, splat (i16 31)
  %i.p = lshr <16 x i16> %i.n, splat (i16 3)
  %.inner1 = and <16 x i16> %i.p, splat (i16 7936)
  %.inner2 = or disjoint <16 x i16> %.inner, %.inner1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.03237
  %i.r = bitcast <16 x i16> %.inner2 to <32 x i8> ; 3 uses
  %i.s = icmp samesign ugt <32 x i8> %i.r, splat (i8 15)
  %i.t = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %7, <32 x i8> %i.r)
  %i.u = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %8, <32 x i8> %i.r)
  %i.v = select <32 x i1> %i.s, <32 x i8> %i.u, <32 x i8> %i.t
  store <32 x i8> %i.v, ptr %i.q, align 1, !tbaa !11
  %i.w = add i64 %.03138, 20
  %i.x = add i64 %i.e, 32                         ; 2 uses
  %.not = icmp ugt i64 %i.x, %1
  br i1 %.not, label %._crit_edge, label %bb.a, !llvm.loop !24

bb.b:                                             ; preds = %._crit_edge
  %i.y = sub nuw i64 %1, %.032.lcssa              ; 2 uses
  %i.z = mul i64 %.032.lcssa, 5
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %3) ; 2 uses
  %i.ac = mul i64 %i.y, 5
  %i.ad = add i64 %i.ac, 7
  %i.ae = lshr i64 %i.ad, 3
  %i.af = sub nuw i64 %3, %i.ab
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.ah, i64 %i.ag, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth5(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %4) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.032.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull readonly align 64 %i.b, i64 %i.y, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mergeFlatDepth6(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
.preheader:
  %i.a = alloca [64 x i8], align 64               ; 5 uses
  %i.b = alloca [64 x i8], align 64               ; 4 uses
  %.not37 = icmp ult i64 %1, 32
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48
  %5 = load <16 x i8>, ptr %i.c, align 1, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %6 = load <16 x i8>, ptr %i.d, align 1, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %7 = load <16 x i8>, ptr %i.e, align 1, !tbaa !11
  %8 = load <16 x i8>, ptr %4, align 1, !tbaa !11
  %9 = shufflevector <16 x i8> %8, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = shufflevector <16 x i8> %7, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = shufflevector <16 x i8> %6, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %12 = shufflevector <16 x i8> %5, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a, %.preheader
  %.032.lcssa = phi i64 [ 0, %.preheader ], [ %i.g, %bb.a ] ; 4 uses
  %i.f = icmp ult i64 %.032.lcssa, %1
  br i1 %i.f, label %bb.b, label %bb.c

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %i.g = phi i64 [ 32, %.lr.ph ], [ %i.af, %bb.a ] ; 3 uses
  %.03139 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.a ] ; 2 uses
  %.03238 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.03139 ; 2 uses
  %i.i = load <2 x i64>, ptr %i.h, align 1, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load <2 x i64>, ptr %i.j, align 1, !tbaa !11
  %i.l = shufflevector <2 x i64> %i.i, <2 x i64> %i.k, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.m = bitcast <4 x i64> %i.l to <32 x i8>
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 1, i32 2, i32 3, i32 4, i32 4, i32 5, i32 6, i32 7, i32 7, i32 8, i32 9, i32 10, i32 10, i32 11, i32 20, i32 21, i32 21, i32 22, i32 23, i32 24, i32 24, i32 25, i32 26, i32 27, i32 27, i32 28, i32 29, i32 30, i32 30, i32 31>
  %i.o = bitcast <32 x i8> %i.n to <16 x i16>
  %i.p = shl <16 x i16> %i.o, <i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0> ; 2 uses
  %i.q = lshr <16 x i16> %i.p, splat (i16 4)
  %.inner = and <16 x i16> %i.q, splat (i16 63)
  %i.r = lshr <16 x i16> %i.p, splat (i16 2)
  %.inner1 = and <16 x i16> %i.r, splat (i16 16128)
  %.inner2 = or disjoint <16 x i16> %.inner, %.inner1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.03238
  %i.t = bitcast <16 x i16> %.inner2 to <32 x i8> ; 5 uses
  %i.u = icmp samesign ugt <32 x i8> %i.t, splat (i8 31)
  %i.v = bitcast <16 x i16> %.inner2 to <32 x i8>
  %i.w = and <32 x i8> %i.v, splat (i8 16)
  %.not35 = icmp eq <32 x i8> %i.w, zeroinitializer ; 2 uses
  %i.x = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %9, <32 x i8> %i.t)
  %i.y = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %10, <32 x i8> %i.t)
  %i.z = select <32 x i1> %.not35, <32 x i8> %i.x, <32 x i8> %i.y
  %i.aa = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %11, <32 x i8> %i.t)
  %i.ab = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %12, <32 x i8> %i.t)
  %i.ac = select <32 x i1> %.not35, <32 x i8> %i.aa, <32 x i8> %i.ab
  %i.ad = select <32 x i1> %i.u, <32 x i8> %i.ac, <32 x i8> %i.z
  store <32 x i8> %i.ad, ptr %i.s, align 1, !tbaa !11
  %i.ae = add i64 %.03139, 24
  %i.af = add i64 %i.g, 32                        ; 2 uses
  %.not = icmp ugt i64 %i.af, %1
  br i1 %.not, label %._crit_edge, label %bb.a, !llvm.loop !25

bb.b:                                             ; preds = %._crit_edge
  %i.ag = sub nuw i64 %1, %.032.lcssa             ; 2 uses
  %i.ah = mul i64 %.032.lcssa, 6
  %i.ai = lshr exact i64 %i.ah, 3
  %i.aj = tail call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 %3) ; 2 uses
  %i.ak = mul i64 %i.ag, 6
  %i.al = add i64 %i.ak, 6
  %i.am = lshr i64 %i.al, 3
  %i.an = sub nuw i64 %3, %i.aj
  %i.ao = tail call noundef i64 @llvm.umin.i64(i64 %i.am, i64 %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.ap, i64 %i.ao, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth6(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %4) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.032.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull readonly align 64 %i.b, i64 %i.ag, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mergeFlatDepth7(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
.preheader:
  %i.a = alloca [64 x i8], align 64               ; 5 uses
  %i.b = alloca [64 x i8], align 64               ; 4 uses
  %.not40 = icmp ult i64 %1, 32
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 112
  %5 = load <16 x i8>, ptr %i.c, align 1, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 96
  %6 = load <16 x i8>, ptr %i.d, align 1, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80
  %7 = load <16 x i8>, ptr %i.e, align 1, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  %8 = load <16 x i8>, ptr %i.f, align 1, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %9 = load <16 x i8>, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %10 = load <16 x i8>, ptr %i.h, align 1, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %11 = load <16 x i8>, ptr %i.i, align 1, !tbaa !11
  %12 = load <16 x i8>, ptr %4, align 1, !tbaa !11
  %13 = shufflevector <16 x i8> %12, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %14 = shufflevector <16 x i8> %11, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = shufflevector <16 x i8> %10, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %16 = shufflevector <16 x i8> %9, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = shufflevector <16 x i8> %8, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %18 = shufflevector <16 x i8> %7, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = shufflevector <16 x i8> %6, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %20 = shufflevector <16 x i8> %5, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a, %.preheader
  %.034.lcssa = phi i64 [ 0, %.preheader ], [ %i.k, %bb.a ] ; 4 uses
  %i.j = icmp ult i64 %.034.lcssa, %1
  br i1 %i.j, label %bb.b, label %bb.c

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %i.k = phi i64 [ 32, %.lr.ph ], [ %i.av, %bb.a ] ; 3 uses
  %.03342 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.a ] ; 2 uses
  %.03441 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.03342 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load <2 x i64>, ptr %i.m, align 1, !tbaa !11
  %i.o = load <2 x i64>, ptr %i.l, align 1, !tbaa !11
  %i.p = shufflevector <2 x i64> %i.o, <2 x i64> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 10, i32 11, i32 12, i32 13, i32 18, i32 19, i32 20, i32 21, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 28, i32 29, i32 30, i32 31>
  %i.s = bitcast <32 x i8> %i.r to <8 x i32>
  %i.t = shl <8 x i32> %i.s, <i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0> ; 4 uses
  %i.u = lshr <8 x i32> %i.t, splat (i32 4)
  %.inner = and <8 x i32> %i.u, splat (i32 127)
  %i.v = lshr <8 x i32> %i.t, splat (i32 3)
  %.inner1 = and <8 x i32> %i.v, splat (i32 32512)
  %i.w = lshr <8 x i32> %i.t, splat (i32 2)
  %.inner2 = and <8 x i32> %i.w, splat (i32 8323072)
  %i.x = lshr <8 x i32> %i.t, splat (i32 1)
  %.inner3 = and <8 x i32> %i.x, splat (i32 2130706432)
  %.inner4 = or disjoint <8 x i32> %.inner, %.inner1
  %.inner5 = or disjoint <8 x i32> %.inner4, %.inner3
  %.inner6 = or disjoint <8 x i32> %.inner5, %.inner2 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.03441
  %i.z = bitcast <8 x i32> %.inner6 to <32 x i8>  ; 9 uses
  %i.aa = icmp samesign ugt <32 x i8> %i.z, splat (i8 63)
  %i.ab = bitcast <8 x i32> %.inner6 to <32 x i8>
  %i.ac = and <32 x i8> %i.ab, splat (i8 32)
  %.not38 = icmp eq <32 x i8> %i.ac, zeroinitializer ; 2 uses
  %i.ad = bitcast <8 x i32> %.inner6 to <32 x i8>
  %i.ae = and <32 x i8> %i.ad, splat (i8 16)
  %.not37 = icmp eq <32 x i8> %i.ae, zeroinitializer ; 4 uses
  %i.af = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %13, <32 x i8> %i.z)
  %i.ag = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %14, <32 x i8> %i.z)
  %i.ah = select <32 x i1> %.not37, <32 x i8> %i.af, <32 x i8> %i.ag
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %15, <32 x i8> %i.z)
  %i.aj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %16, <32 x i8> %i.z)
  %i.ak = select <32 x i1> %.not37, <32 x i8> %i.ai, <32 x i8> %i.aj
  %i.al = select <32 x i1> %.not38, <32 x i8> %i.ah, <32 x i8> %i.ak
  %i.am = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %17, <32 x i8> %i.z)
  %i.an = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %18, <32 x i8> %i.z)
  %i.ao = select <32 x i1> %.not37, <32 x i8> %i.am, <32 x i8> %i.an
  %i.ap = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %19, <32 x i8> %i.z)
  %i.aq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %20, <32 x i8> %i.z)
  %i.ar = select <32 x i1> %.not37, <32 x i8> %i.ap, <32 x i8> %i.aq
  %i.as = select <32 x i1> %.not38, <32 x i8> %i.ao, <32 x i8> %i.ar
  %i.at = select <32 x i1> %i.aa, <32 x i8> %i.as, <32 x i8> %i.al
  store <32 x i8> %i.at, ptr %i.y, align 1, !tbaa !11
  %i.au = add i64 %.03342, 28
  %i.av = add i64 %i.k, 32                        ; 2 uses
  %.not = icmp ugt i64 %i.av, %1
  br i1 %.not, label %._crit_edge, label %bb.a, !llvm.loop !26

bb.b:                                             ; preds = %._crit_edge
  %i.aw = sub nuw i64 %1, %.034.lcssa             ; 2 uses
  %i.ax = mul i64 %.034.lcssa, 7
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = tail call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %3) ; 2 uses
  %i.ba = mul i64 %i.aw, 7
  %i.bb = add i64 %i.ba, 7
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = sub nuw i64 %3, %i.az
  %i.be = tail call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.a, ptr readonly align 1 %i.bf, i64 %i.be, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call fastcc void @mergeFlatDepth7(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %4) #9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.034.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull readonly align 64 %i.b, i64 %i.aw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
end_hunk_0
