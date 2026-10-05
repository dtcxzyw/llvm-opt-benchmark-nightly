Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless_sse2?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
begin_hunk_0_@PredictorAdd13_SSE2:bb.a
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %store_forwarded, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.d, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.m = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.f, i64 0
  %i.n = bitcast <4 x i32> %i.m to <16 x i8>
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.p = bitcast <16 x i8> %i.l to <8 x i16>
  %i.q = bitcast <16 x i8> %i.i to <8 x i16>
  %i.r = add nuw nsw <8 x i16> %i.p, %i.q
  %i.s = lshr <8 x i16> %i.r, splat (i16 1)       ; 3 uses
  %i.t = bitcast <16 x i8> %i.o to <8 x i16>      ; 2 uses
  %i.u = sub nsw <8 x i16> %i.s, %i.t
  %i.v = icmp samesign ult <8 x i16> %i.s, %i.t
  %.neg.i.i = zext <8 x i1> %i.v to <8 x i16>
  %i.w = add nsw <8 x i16> %i.u, %.neg.i.i
  %i.x = ashr <8 x i16> %i.w, splat (i16 1)
  %i.y = add nsw <8 x i16> %i.x, %i.s
  %i.z = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.y, <8 x i16> poison)
  %i.aa = bitcast <16 x i8> %i.z to <4 x i32>
  %i.ab = extractelement <4 x i32> %i.aa, i64 0   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10 ; 2 uses
  %i.ae = and i32 %i.ad, -16711936
  %i.af = and i32 %i.ab, -16711936
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = and i32 %i.ad, 16711935
  %i.ai = and i32 %i.ab, 16711935
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  %i.ak = and i32 %i.ag, -16711936
  %i.al = and i32 %i.aj, 16711935
  %i.am = or disjoint i32 %i.ak, %i.al            ; 2 uses
  store i32 %i.am, ptr %i.b, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal void @AddGreenToBlueAndRed_SSE2(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
bb.a:
  %.not23 = icmp slt i32 %1, 4
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv25 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next26, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv25
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !11 ; 2 uses
  %i.d = bitcast <2 x i64> %i.c to <8 x i16>
  %i.e = lshr <8 x i16> %i.d, splat (i16 8)
  %i.f = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  %i.g = bitcast <2 x i64> %i.c to <16 x i8>
  %i.h = bitcast <8 x i16> %i.f to <16 x i8>
  %i.i = add <16 x i8> %i.h, %i.g
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv25
  store <16 x i8> %i.i, ptr %i.j, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.k = add nuw i32 %1, 2147483644
  %i.l = and i32 %i.k, 2147483644
  %narrow = add nuw i32 %i.l, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not22 = icmp eq i32 %.0.lcssa, %1
  br i1 %.not22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = sub nsw i32 %1, %.0.lcssa
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.m
  tail call void @VP8LAddGreenToBlueAndRed_C(ptr noundef %i.n, i32 noundef %i.o, ptr noundef %i.p) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TransformColorInverse_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
bb.a:
  %.not39 = icmp slt i32 %2, 4
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !30
  %i.c = load i8, ptr %0, align 1, !tbaa !31
  %i.d = zext i8 %i.b to i16
  %i.e = zext i8 %i.c to i16
  %i.f = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %i.g = insertelement <2 x i16> %i.f, i16 %i.e, i64 1
  %i.h = shl nuw <2 x i16> %i.g, splat (i16 8)
  %i.i = ashr exact <2 x i16> %i.h, splat (i16 5)
  %i.j = sext <2 x i16> %i.i to <2 x i32>
  %i.k = shl nsw <2 x i32> %i.j, splat (i32 16)   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %i.n = zext i8 %i.m to i16
  %i.o = shl nuw i16 %i.n, 8
  %i.p = ashr exact i16 %i.o, 5
  %i.q = zext i16 %i.p to i32
  %i.r = extractelement <2 x i32> %i.k, i64 1
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.v = bitcast <4 x i32> %i.u to <8 x i16>
  %i.w = bitcast <2 x i32> %i.k to <4 x i16>
  %i.x = shufflevector <4 x i16> %i.w, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.y = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv41 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41
  %i.aa = load <2 x i64>, ptr %i.z, align 1, !tbaa !11 ; 2 uses
  %i.ab = and <2 x i64> %i.aa, splat (i64 -71777214294589696) ; 2 uses
  %i.ac = bitcast <2 x i64> %i.ab to <8 x i16>
  %i.ad = shufflevector <8 x i16> %i.ac, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  %i.ae = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ad, <8 x i16> %i.v)
  %i.af = bitcast <2 x i64> %i.aa to <16 x i8>
  %i.ag = bitcast <8 x i16> %i.ae to <16 x i8>
  %i.ah = add <16 x i8> %i.ag, %i.af
  %i.ai = bitcast <16 x i8> %i.ah to <8 x i16>
  %i.aj = shl <8 x i16> %i.ai, splat (i16 8)      ; 2 uses
  %i.ak = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.aj, <8 x i16> %i.x)
  %i.al = bitcast <8 x i16> %i.ak to <4 x i32>
  %i.am = lshr exact <4 x i32> %i.al, splat (i32 8)
  %i.an = bitcast <4 x i32> %i.am to <16 x i8>
  %i.ao = bitcast <8 x i16> %i.aj to <16 x i8>
  %i.ap = add <16 x i8> %i.an, %i.ao
  %i.aq = bitcast <16 x i8> %i.ap to <8 x i16>
  %i.ar = lshr <8 x i16> %i.aq, splat (i16 8)
  %i.as = bitcast <8 x i16> %i.ar to <2 x i64>
  %i.at = or disjoint <2 x i64> %i.ab, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv41
  store <2 x i64> %i.at, ptr %i.au, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.y
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 4
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.av = add nuw i32 %2, 2147483644
  %i.aw = and i32 %i.av, 2147483644
  %narrow = add nuw i32 %i.aw, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not38 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ax = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ax
  %i.az = sub nsw i32 %2, %.0.lcssa
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ax
  tail call void @VP8LTransformColorInverse_C(ptr noundef nonnull %0, ptr noundef %i.ay, i32 noundef %i.az, ptr noundef %i.ba) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToRGB_SSE2(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 31
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.063 = phi ptr [ %i.ga, %.lr.ph ], [ %2, %bb.a ] ; 7 uses
  %.02362 = phi ptr [ %i.fz, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.02461 = phi i32 [ %i.gb, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %3 = load <16 x i8>, ptr %.02362, align 1, !tbaa !11 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.02362, i64 16
  %5 = load <16 x i8>, ptr %4, align 1, !tbaa !11 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.02362, i64 32
  %7 = load <16 x i8>, ptr %6, align 1, !tbaa !11 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.02362, i64 48
  %9 = load <16 x i8>, ptr %8, align 1, !tbaa !11 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.02362, i64 64
  %11 = load <16 x i8>, ptr %10, align 1, !tbaa !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02362, i64 80
  %12 = load <16 x i8>, ptr %i.b, align 1, !tbaa !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02362, i64 96
  %13 = load <16 x i8>, ptr %i.c, align 1, !tbaa !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02362, i64 112
  %14 = load <16 x i8>, ptr %i.d, align 1, !tbaa !11 ; 2 uses
  %i.e = shufflevector <16 x i8> %3, <16 x i8> %5, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.f = bitcast <16 x i8> %i.e to <2 x i64>      ; 2 uses
  %i.g = shufflevector <16 x i8> %3, <16 x i8> %5, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = bitcast <16 x i8> %i.g to <2 x i64>
  %i.i = shufflevector <16 x i8> %7, <16 x i8> %9, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.j = bitcast <16 x i8> %i.i to <2 x i64>      ; 2 uses
  %i.k = shufflevector <16 x i8> %7, <16 x i8> %9, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.l = bitcast <16 x i8> %i.k to <2 x i64>
  %i.m = shufflevector <2 x i64> %i.h, <2 x i64> %i.l, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.n = shufflevector <2 x i64> %i.f, <2 x i64> %i.j, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.o = shufflevector <2 x i64> %i.f, <2 x i64> %i.j, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.p = shufflevector <16 x i8> %11, <16 x i8> %12, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>      ; 2 uses
  %i.r = shufflevector <16 x i8> %11, <16 x i8> %12, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.s = bitcast <16 x i8> %i.r to <2 x i64>
  %i.t = shufflevector <16 x i8> %13, <16 x i8> %14, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.u = bitcast <16 x i8> %i.t to <2 x i64>      ; 2 uses
  %i.v = shufflevector <16 x i8> %13, <16 x i8> %14, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = bitcast <16 x i8> %i.v to <2 x i64>
  %i.x = shufflevector <2 x i64> %i.s, <2 x i64> %i.w, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = shufflevector <2 x i64> %i.q, <2 x i64> %i.u, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.z = shufflevector <2 x i64> %i.q, <2 x i64> %i.u, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aa = bitcast <2 x i64> %i.m to <8 x i16>
  %i.ab = bitcast <2 x i64> %i.x to <8 x i16>
  %i.ac = bitcast <2 x i64> %i.m to <8 x i16>
  %i.ad = and <8 x i16> %i.ac, splat (i16 255)
  %i.ae = bitcast <2 x i64> %i.x to <8 x i16>
  %i.af = and <8 x i16> %i.ae, splat (i16 255)
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ad, <8 x i16> %i.af) ; 2 uses
  %i.ah = bitcast <2 x i64> %i.n to <8 x i16>
  %i.ai = bitcast <2 x i64> %i.y to <8 x i16>
  %i.aj = bitcast <2 x i64> %i.n to <8 x i16>
  %i.ak = and <8 x i16> %i.aj, splat (i16 255)
  %i.al = bitcast <2 x i64> %i.y to <8 x i16>
  %i.am = and <8 x i16> %i.al, splat (i16 255)
  %i.an = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ak, <8 x i16> %i.am) ; 2 uses
  %i.ao = bitcast <2 x i64> %i.o to <8 x i16>
  %i.ap = bitcast <2 x i64> %i.z to <8 x i16>
  %i.aq = bitcast <2 x i64> %i.o to <8 x i16>
  %i.ar = and <8 x i16> %i.aq, splat (i16 255)
  %i.as = bitcast <2 x i64> %i.z to <8 x i16>
  %i.at = and <8 x i16> %i.as, splat (i16 255)
  %i.au = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ar, <8 x i16> %i.at) ; 2 uses
  %i.av = lshr <8 x i16> %i.aa, splat (i16 8)
  %i.aw = lshr <8 x i16> %i.ab, splat (i16 8)
  %i.ax = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.av, <8 x i16> %i.aw) ; 2 uses
  %i.ay = lshr <8 x i16> %i.ah, splat (i16 8)
  %i.az = lshr <8 x i16> %i.ai, splat (i16 8)
  %i.ba = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ay, <8 x i16> %i.az) ; 2 uses
  %i.bb = lshr <8 x i16> %i.ao, splat (i16 8)
  %i.bc = lshr <8 x i16> %i.ap, splat (i16 8)
  %i.bd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bb, <8 x i16> %i.bc) ; 2 uses
  %i.be = bitcast <16 x i8> %i.ag to <8 x i16>
  %i.bf = bitcast <16 x i8> %i.ag to <8 x i16>
  %i.bg = and <8 x i16> %i.bf, splat (i16 255)
  %i.bh = bitcast <16 x i8> %i.an to <8 x i16>
  %i.bi = bitcast <16 x i8> %i.an to <8 x i16>
  %i.bj = and <8 x i16> %i.bi, splat (i16 255)
  %i.bk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bg, <8 x i16> %i.bj) ; 2 uses
  %i.bl = bitcast <16 x i8> %i.au to <8 x i16>
  %i.bm = bitcast <16 x i8> %i.au to <8 x i16>
  %i.bn = and <8 x i16> %i.bm, splat (i16 255)
  %i.bo = bitcast <16 x i8> %i.ax to <8 x i16>
  %i.bp = bitcast <16 x i8> %i.ax to <8 x i16>
  %i.bq = and <8 x i16> %i.bp, splat (i16 255)
  %i.br = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bn, <8 x i16> %i.bq) ; 2 uses
  %i.bs = bitcast <16 x i8> %i.ba to <8 x i16>
  %i.bt = bitcast <16 x i8> %i.ba to <8 x i16>
  %i.bu = and <8 x i16> %i.bt, splat (i16 255)
  %i.bv = bitcast <16 x i8> %i.bd to <8 x i16>
  %i.bw = bitcast <16 x i8> %i.bd to <8 x i16>
  %i.bx = and <8 x i16> %i.bw, splat (i16 255)
  %i.by = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bu, <8 x i16> %i.bx) ; 2 uses
  %i.bz = lshr <8 x i16> %i.be, splat (i16 8)
  %i.ca = lshr <8 x i16> %i.bh, splat (i16 8)
  %i.cb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bz, <8 x i16> %i.ca) ; 2 uses
  %i.cc = lshr <8 x i16> %i.bl, splat (i16 8)
  %i.cd = lshr <8 x i16> %i.bo, splat (i16 8)
  %i.ce = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cc, <8 x i16> %i.cd) ; 2 uses
  %i.cf = lshr <8 x i16> %i.bs, splat (i16 8)
  %i.cg = lshr <8 x i16> %i.bv, splat (i16 8)
  %i.ch = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cf, <8 x i16> %i.cg) ; 2 uses
  %i.ci = bitcast <16 x i8> %i.bk to <8 x i16>
  %i.cj = bitcast <16 x i8> %i.br to <8 x i16>
  %i.ck = bitcast <16 x i8> %i.bk to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, splat (i16 255)
  %i.cm = bitcast <16 x i8> %i.br to <8 x i16>
  %i.cn = and <8 x i16> %i.cm, splat (i16 255)
  %i.co = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cl, <8 x i16> %i.cn) ; 2 uses
  %i.cp = bitcast <16 x i8> %i.by to <8 x i16>
  %i.cq = bitcast <16 x i8> %i.cb to <8 x i16>
  %i.cr = bitcast <16 x i8> %i.by to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, splat (i16 255)
  %i.ct = bitcast <16 x i8> %i.cb to <8 x i16>
  %i.cu = and <8 x i16> %i.ct, splat (i16 255)
  %i.cv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cs, <8 x i16> %i.cu) ; 2 uses
  %i.cw = bitcast <16 x i8> %i.ce to <8 x i16>
  %i.cx = bitcast <16 x i8> %i.ce to <8 x i16>
  %i.cy = and <8 x i16> %i.cx, splat (i16 255)
  %i.cz = bitcast <16 x i8> %i.ch to <8 x i16>
  %i.da = bitcast <16 x i8> %i.ch to <8 x i16>
  %i.db = and <8 x i16> %i.da, splat (i16 255)
  %i.dc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cy, <8 x i16> %i.db) ; 2 uses
  %i.dd = lshr <8 x i16> %i.ci, splat (i16 8)
  %i.de = lshr <8 x i16> %i.cj, splat (i16 8)
  %i.df = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dd, <8 x i16> %i.de) ; 2 uses
  %i.dg = lshr <8 x i16> %i.cp, splat (i16 8)
  %i.dh = lshr <8 x i16> %i.cq, splat (i16 8)
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dg, <8 x i16> %i.dh) ; 2 uses
  %i.dj = lshr <8 x i16> %i.cw, splat (i16 8)
  %i.dk = lshr <8 x i16> %i.cz, splat (i16 8)
  %i.dl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dj, <8 x i16> %i.dk) ; 2 uses
  %i.dm = bitcast <16 x i8> %i.co to <8 x i16>
  %i.dn = bitcast <16 x i8> %i.co to <8 x i16>
  %i.do = and <8 x i16> %i.dn, splat (i16 255)
  %i.dp = bitcast <16 x i8> %i.cv to <8 x i16>
  %i.dq = bitcast <16 x i8> %i.cv to <8 x i16>
  %i.dr = and <8 x i16> %i.dq, splat (i16 255)
  %i.ds = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.do, <8 x i16> %i.dr) ; 2 uses
  %i.dt = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.du = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.dv = and <8 x i16> %i.du, splat (i16 255)
  %i.dw = bitcast <16 x i8> %i.df to <8 x i16>
  %i.dx = bitcast <16 x i8> %i.df to <8 x i16>
  %i.dy = and <8 x i16> %i.dx, splat (i16 255)
  %i.dz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dv, <8 x i16> %i.dy) ; 2 uses
  %i.ea = bitcast <16 x i8> %i.di to <8 x i16>
  %i.eb = bitcast <16 x i8> %i.di to <8 x i16>
  %i.ec = and <8 x i16> %i.eb, splat (i16 255)
  %i.ed = bitcast <16 x i8> %i.dl to <8 x i16>
  %i.ee = bitcast <16 x i8> %i.dl to <8 x i16>
  %i.ef = and <8 x i16> %i.ee, splat (i16 255)
  %i.eg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ec, <8 x i16> %i.ef) ; 2 uses
  %i.eh = lshr <8 x i16> %i.dm, splat (i16 8)
  %i.ei = lshr <8 x i16> %i.dp, splat (i16 8)
  %i.ej = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eh, <8 x i16> %i.ei) ; 2 uses
  %i.ek = lshr <8 x i16> %i.dt, splat (i16 8)
  %i.el = lshr <8 x i16> %i.dw, splat (i16 8)
  %i.em = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ek, <8 x i16> %i.el) ; 2 uses
  %i.en = lshr <8 x i16> %i.ea, splat (i16 8)
  %i.eo = lshr <8 x i16> %i.ed, splat (i16 8)
  %i.ep = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.en, <8 x i16> %i.eo) ; 2 uses
  %i.eq = bitcast <16 x i8> %i.ds to <8 x i16>
  %i.er = bitcast <16 x i8> %i.ds to <8 x i16>
  %i.es = and <8 x i16> %i.er, splat (i16 255)
  %i.et = bitcast <16 x i8> %i.dz to <8 x i16>
  %i.eu = bitcast <16 x i8> %i.dz to <8 x i16>
  %i.ev = and <8 x i16> %i.eu, splat (i16 255)
  %i.ew = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.es, <8 x i16> %i.ev)
  %i.ex = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.ey = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.ez = and <8 x i16> %i.ey, splat (i16 255)
  %i.fa = bitcast <16 x i8> %i.ej to <8 x i16>
  %i.fb = bitcast <16 x i8> %i.ej to <8 x i16>
  %i.fc = and <8 x i16> %i.fb, splat (i16 255)
  %i.fd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ez, <8 x i16> %i.fc)
  %i.fe = bitcast <16 x i8> %i.em to <8 x i16>
  %i.ff = bitcast <16 x i8> %i.em to <8 x i16>
  %i.fg = and <8 x i16> %i.ff, splat (i16 255)
  %i.fh = bitcast <16 x i8> %i.ep to <8 x i16>
  %i.fi = bitcast <16 x i8> %i.ep to <8 x i16>
  %i.fj = and <8 x i16> %i.fi, splat (i16 255)
  %i.fk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fg, <8 x i16> %i.fj)
  %i.fl = lshr <8 x i16> %i.eq, splat (i16 8)
  %i.fm = lshr <8 x i16> %i.et, splat (i16 8)
  %i.fn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fl, <8 x i16> %i.fm)
  %i.fo = lshr <8 x i16> %i.ex, splat (i16 8)
  %i.fp = lshr <8 x i16> %i.fa, splat (i16 8)
  %i.fq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fo, <8 x i16> %i.fp)
  %i.fr = lshr <8 x i16> %i.fe, splat (i16 8)
  %i.fs = lshr <8 x i16> %i.fh, splat (i16 8)
  %i.ft = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fr, <8 x i16> %i.fs)
  store <16 x i8> %i.ew, ptr %.063, align 1, !tbaa !11
  %i.fu = getelementptr inbounds nuw i8, ptr %.063, i64 16
  store <16 x i8> %i.fd, ptr %i.fu, align 1, !tbaa !11
  %i.fv = getelementptr inbounds nuw i8, ptr %.063, i64 32
  store <16 x i8> %i.fk, ptr %i.fv, align 1, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %.063, i64 48
  store <16 x i8> %i.fn, ptr %i.fw, align 1, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %.063, i64 64
  store <16 x i8> %i.fq, ptr %i.fx, align 1, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %.063, i64 80
  store <16 x i8> %i.ft, ptr %i.fy, align 1, !tbaa !11
  %i.fz = getelementptr inbounds nuw i8, ptr %.02362, i64 128 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.063, i64 96 ; 2 uses
  %i.gb = add nsw i32 %.02461, -32                ; 2 uses
  %i.gc = icmp samesign ugt i32 %.02461, 63
  br i1 %i.gc, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.024.lcssa = phi i32 [ %1, %bb.a ], [ %i.gb, %.lr.ph ] ; 2 uses
  %.023.lcssa = phi ptr [ %0, %bb.a ], [ %i.fz, %.lr.ph ]
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ga, %.lr.ph ]
  %i.gd = icmp sgt i32 %.024.lcssa, 0
  br i1 %i.gd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @VP8LConvertBGRAToRGB_C(ptr noundef %.023.lcssa, i32 noundef %.024.lcssa, ptr noundef %.0.lcssa) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToRGBA_SSE2(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi i32 [ %i.t, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.02932 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.03031 = phi ptr [ %i.s, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02932, i64 16
  %i.c = load <2 x i64>, ptr %.02932, align 1, !tbaa !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02932, i64 32 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.b, align 1, !tbaa !11 ; 2 uses
  %i.f = and <2 x i64> %i.c, splat (i64 -71777214294589696)
  %i.g = and <2 x i64> %i.e, splat (i64 -71777214294589696)
  %i.h = bitcast <2 x i64> %i.c to <8 x i16>
  %i.i = and <8 x i16> %i.h, splat (i16 255)
  %i.j = bitcast <2 x i64> %i.e to <8 x i16>
  %i.k = and <8 x i16> %i.j, splat (i16 255)
  %i.l = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.m = bitcast <8 x i16> %i.l to <2 x i64>
  %i.n = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.o = bitcast <8 x i16> %i.n to <2 x i64>
  %i.p = or disjoint <2 x i64> %i.f, %i.m
  %i.q = or disjoint <2 x i64> %i.g, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %.03031, i64 16
  store <2 x i64> %i.p, ptr %.03031, align 1, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %.03031, i64 32 ; 2 uses
  store <2 x i64> %i.q, ptr %i.r, align 1, !tbaa !11
  %i.t = add nsw i32 %.033, -8                    ; 2 uses
  %i.u = icmp samesign ugt i32 %.033, 15
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.030.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %.lr.ph ]
  %.029.lcssa = phi ptr [ %0, %bb.a ], [ %i.d, %.lr.ph ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.v = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @VP8LConvertBGRAToRGBA_C(ptr noundef %.029.lcssa, i32 noundef %.0.lcssa, ptr noundef %.030.lcssa) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToRGBA4444_SSE2(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.041 = phi i32 [ %i.r, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.03740 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.03839 = phi ptr [ %i.q, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.03740, i64 16
  %4 = load <16 x i8>, ptr %.03740, align 1, !tbaa !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.03740, i64 32 ; 2 uses
  %5 = load <16 x i8>, ptr %3, align 1, !tbaa !11 ; 2 uses
  %i.c = shufflevector <16 x i8> %4, <16 x i8> %5, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.d = bitcast <16 x i8> %i.c to <2 x i64>      ; 2 uses
  %i.e = shufflevector <16 x i8> %4, <16 x i8> %5, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.f = bitcast <16 x i8> %i.e to <2 x i64>      ; 2 uses
  %i.g = shufflevector <2 x i64> %i.d, <2 x i64> %i.f, <2 x i32> <i32 1, i32 3>
  %i.h = shufflevector <2 x i64> %i.f, <2 x i64> %i.d, <2 x i32> <i32 0, i32 2>
  %i.i = bitcast <2 x i64> %i.g to <8 x i16>
  %i.j = lshr <8 x i16> %i.i, splat (i16 4)
  %i.k = and <2 x i64> %i.h, splat (i64 -1085102592571150096)
  %i.l = bitcast <8 x i16> %i.j to <2 x i64>
  %i.m = and <2 x i64> %i.l, splat (i64 1085102592571150095)
  %i.n = or disjoint <2 x i64> %i.m, %i.k
  %i.o = bitcast <2 x i64> %i.n to <16 x i8>
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.q = getelementptr inbounds nuw i8, ptr %.03839, i64 16 ; 2 uses
  store <16 x i8> %i.p, ptr %.03839, align 1, !tbaa !11
  %i.r = add nsw i32 %.041, -8                    ; 2 uses
  %i.s = icmp samesign ugt i32 %.041, 15
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.038.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %.lr.ph ]
  %.037.lcssa = phi ptr [ %0, %bb.a ], [ %i.b, %.lr.ph ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.t = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @VP8LConvertBGRAToRGBA4444_C(ptr noundef %.037.lcssa, i32 noundef %.0.lcssa, ptr noundef %.038.lcssa) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToRGB565_SSE2(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047 = phi i32 [ %i.x, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.04346 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.04445 = phi ptr [ %i.w, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.04346, i64 16
  %4 = load <16 x i8>, ptr %.04346, align 1, !tbaa !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.04346, i64 32 ; 2 uses
  %5 = load <16 x i8>, ptr %3, align 1, !tbaa !11 ; 2 uses
  %i.c = shufflevector <16 x i8> %4, <16 x i8> %5, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.d = bitcast <16 x i8> %i.c to <2 x i64>      ; 2 uses
  %i.e = shufflevector <16 x i8> %4, <16 x i8> %5, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.f = bitcast <16 x i8> %i.e to <2 x i64>      ; 2 uses
  %i.g = shufflevector <2 x i64> %i.d, <2 x i64> %i.f, <2 x i32> <i32 1, i32 3>
  %i.h = shufflevector <2 x i64> %i.f, <2 x i64> %i.d, <2 x i32> <i32 0, i32 2>
  %i.i = and <2 x i64> %i.h, splat (i64 -506381209866536712) ; 2 uses
  %i.j = bitcast <2 x i64> %i.g to <8 x i16>      ; 2 uses
  %i.k = lshr <8 x i16> %i.j, splat (i16 5)
  %i.l = bitcast <8 x i16> %i.k to <2 x i64>
  %i.m = and <2 x i64> %i.l, <i64 506381209866536711, i64 poison>
  %i.n = shl <8 x i16> %i.j, splat (i16 3)
  %.inner56 = and <8 x i16> %i.n, <i16 -7968, i16 -7968, i16 -7968, i16 -7968, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.o = bitcast <2 x i64> %i.i to <16 x i8>
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.q = or disjoint <2 x i64> %i.m, %i.i
  %i.r = bitcast <16 x i8> %i.p to <8 x i16>
  %i.s = lshr exact <8 x i16> %i.r, splat (i16 3)
  %.inner57 = or disjoint <8 x i16> %.inner56, %i.s
  %i.t = bitcast <2 x i64> %i.q to <16 x i8>
  %i.u = bitcast <8 x i16> %.inner57 to <16 x i8>
  %i.v = shufflevector <16 x i8> %i.t, <16 x i8> %i.u, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.w = getelementptr inbounds nuw i8, ptr %.04445, i64 16 ; 2 uses
  store <16 x i8> %i.v, ptr %.04445, align 1, !tbaa !11
  %i.x = add nsw i32 %.047, -8                    ; 2 uses
  %i.y = icmp samesign ugt i32 %.047, 15
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.044.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %.lr.ph ]
  %.043.lcssa = phi ptr [ %0, %bb.a ], [ %i.b, %.lr.ph ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.z = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @VP8LConvertBGRAToRGB565_C(ptr noundef %.043.lcssa, i32 noundef %.0.lcssa, ptr noundef %.044.lcssa) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToBGR_SSE2(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #2 {
bb.a:
  %i.a = mul nsw i32 %1, 3
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.not38 = icmp slt i32 %1, 9
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.041 = phi i32 [ %i.x, %.lr.ph ], [ %1, %bb.a ]
  %.03640 = phi ptr [ %i.w, %.lr.ph ], [ %2, %bb.a ] ; 6 uses
  %.03739 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.03739, i64 16
  %i.e = load <2 x i64>, ptr %.03739, align 1, !tbaa !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03739, i64 32 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.d, align 1, !tbaa !11 ; 2 uses
  %i.h = and <2 x i64> %i.e, splat (i64 16777215)
  %i.i = and <2 x i64> %i.g, splat (i64 16777215)
  %i.j = lshr <2 x i64> %i.e, splat (i64 8)
  %i.k = and <2 x i64> %i.j, splat (i64 281474959933440)
  %i.l = lshr <2 x i64> %i.g, splat (i64 8)
  %i.m = and <2 x i64> %i.l, splat (i64 281474959933440)
  %i.n = or disjoint <2 x i64> %i.k, %i.h         ; 2 uses
  %i.o = or disjoint <2 x i64> %i.m, %i.i         ; 2 uses
  %i.p = extractelement <2 x i64> %i.n, i64 0
  store i64 %i.p, ptr %.03640, align 1, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %.03640, i64 6
  %i.r = extractelement <2 x i64> %i.n, i64 1
  store i64 %i.r, ptr %i.q, align 1, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %.03640, i64 12
  %i.t = extractelement <2 x i64> %i.o, i64 0
  store i64 %i.t, ptr %i.s, align 1, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %.03640, i64 18
  %i.v = extractelement <2 x i64> %i.o, i64 1
  store i64 %i.v, ptr %i.u, align 1, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %.03640, i64 24 ; 2 uses
  %i.x = add nsw i32 %.041, -8                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03640, i64 50
  %.not = icmp ugt ptr %i.y, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.037.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %.lr.ph ]
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %.lr.ph ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.z = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @VP8LConvertBGRAToBGR_C(ptr noundef %.037.lcssa, i32 noundef %.0.lcssa, ptr noundef %.036.lcssa) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #5

declare void @VP8LAddGreenToBlueAndRed_C(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @VP8LTransformColorInverse_C(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @VP8LConvertBGRAToRGB_C(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @VP8LConvertBGRAToRGBA_C(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @VP8LConvertBGRAToRGBA4444_C(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @VP8LConvertBGRAToRGB565_C(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @VP8LConvertBGRAToBGR_C(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!30 = !{!29, !4, i64 2}
!31 = !{!29, !4, i64 0}
!32 = !{!29, !4, i64 1}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
end_hunk_0
