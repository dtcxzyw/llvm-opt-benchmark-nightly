Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless_sse2?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
begin_hunk_0_@PredictorAdd12_SSE2:bb.a
  %i.at = shufflevector <16 x i8> %i.aq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.au = shufflevector <16 x i8> %i.am, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.av = bitcast <16 x i8> %i.at to <8 x i16>
  %i.aw = shufflevector <8 x i16> %i.v, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.ax = add nsw <8 x i16> %i.aw, %i.av          ; 2 uses
  %i.ay = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ax, <8 x i16> %i.ax)
  %i.az = add <16 x i8> %i.ay, %i.au              ; 2 uses
  %i.ba = bitcast <16 x i8> %i.az to <4 x i32>
  %i.bb = shufflevector <4 x i32> %i.ar, <4 x i32> %i.ba, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.bb, ptr %i.as, align 4, !tbaa !10
  %i.bc = shufflevector <16 x i8> %i.az, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.f
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !25

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bd = add nuw i32 %2, 2147483644
  %i.be = and i32 %i.bd, 2147483644
  %narrow = add nuw i32 %i.be, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not85 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not85, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 96), align 16, !tbaa !9
  %i.bg = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bg
  %i.bj = sub nsw i32 %2, %.0.lcssa
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bg
  tail call void %i.bf(ptr noundef %i.bh, ptr noundef %i.bi, i32 noundef %i.bj, ptr noundef %i.bk) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd13_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noalias nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %3, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
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
  %4 = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ad, <8 x i16> %i.v)
  %i.ae = bitcast <2 x i64> %i.aa to <16 x i8>
  %i.af = bitcast <8 x i16> %4 to <16 x i8>
  %i.ag = add <16 x i8> %i.af, %i.ae
  %i.ah = bitcast <16 x i8> %i.ag to <8 x i16>
  %i.ai = shl <8 x i16> %i.ah, splat (i16 8)      ; 2 uses
  %5 = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ai, <8 x i16> %i.x)
  %i.aj = bitcast <8 x i16> %5 to <4 x i32>
  %i.ak = lshr exact <4 x i32> %i.aj, splat (i32 8)
  %i.al = bitcast <4 x i32> %i.ak to <16 x i8>
  %i.am = bitcast <8 x i16> %i.ai to <16 x i8>
  %i.an = add <16 x i8> %i.al, %i.am
  %i.ao = bitcast <16 x i8> %i.an to <8 x i16>
  %i.ap = lshr <8 x i16> %i.ao, splat (i16 8)
  %i.aq = bitcast <8 x i16> %i.ap to <2 x i64>
  %i.ar = or disjoint <2 x i64> %i.ab, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv41
  store <2 x i64> %i.ar, ptr %i.as, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.y
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 4
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.at = add nuw i32 %2, 2147483644
  %i.au = and i32 %i.at, 2147483644
  %narrow = add nuw i32 %i.au, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not38 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.av = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  %i.ax = sub nsw i32 %2, %.0.lcssa
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.av
  tail call void @VP8LTransformColorInverse_C(ptr noundef nonnull %0, ptr noundef %i.aw, i32 noundef %i.ax, ptr noundef %i.ay) #8
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
  %.063 = phi ptr [ %i.gm, %.lr.ph ], [ %2, %bb.a ] ; 7 uses
  %.02362 = phi ptr [ %i.gl, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.02461 = phi i32 [ %i.gn, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.b = load <16 x i8>, ptr %.02362, align 1, !tbaa !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02362, i64 16
  %i.d = load <16 x i8>, ptr %i.c, align 1, !tbaa !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02362, i64 32
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02362, i64 48
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02362, i64 64
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02362, i64 80
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02362, i64 96
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02362, i64 112
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !11 ; 2 uses
  %i.q = shufflevector <16 x i8> %i.b, <16 x i8> %i.d, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.r = bitcast <16 x i8> %i.q to <2 x i64>      ; 2 uses
  %i.s = shufflevector <16 x i8> %i.b, <16 x i8> %i.d, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = bitcast <16 x i8> %i.s to <2 x i64>
  %i.u = shufflevector <16 x i8> %i.f, <16 x i8> %i.h, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.v = bitcast <16 x i8> %i.u to <2 x i64>      ; 2 uses
  %i.w = shufflevector <16 x i8> %i.f, <16 x i8> %i.h, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = bitcast <16 x i8> %i.w to <2 x i64>
  %i.y = shufflevector <2 x i64> %i.t, <2 x i64> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.z = shufflevector <2 x i64> %i.r, <2 x i64> %i.v, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aa = shufflevector <2 x i64> %i.r, <2 x i64> %i.v, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ab = shufflevector <16 x i8> %i.j, <16 x i8> %i.l, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ac = bitcast <16 x i8> %i.ab to <2 x i64>    ; 2 uses
  %i.ad = shufflevector <16 x i8> %i.j, <16 x i8> %i.l, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ae = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.af = shufflevector <16 x i8> %i.n, <16 x i8> %i.p, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ag = bitcast <16 x i8> %i.af to <2 x i64>    ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.n, <16 x i8> %i.p, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ai = bitcast <16 x i8> %i.ah to <2 x i64>
  %i.aj = shufflevector <2 x i64> %i.ae, <2 x i64> %i.ai, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ak = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ag, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.al = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ag, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.am = bitcast <2 x i64> %i.y to <8 x i16>
  %i.an = bitcast <2 x i64> %i.aj to <8 x i16>
  %i.ao = bitcast <2 x i64> %i.y to <8 x i16>
  %i.ap = and <8 x i16> %i.ao, splat (i16 255)
  %i.aq = bitcast <2 x i64> %i.aj to <8 x i16>
  %i.ar = and <8 x i16> %i.aq, splat (i16 255)
  %i.as = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ap, <8 x i16> %i.ar) ; 2 uses
  %i.at = bitcast <2 x i64> %i.z to <8 x i16>
  %i.au = bitcast <2 x i64> %i.ak to <8 x i16>
  %i.av = bitcast <2 x i64> %i.z to <8 x i16>
  %i.aw = and <8 x i16> %i.av, splat (i16 255)
  %i.ax = bitcast <2 x i64> %i.ak to <8 x i16>
  %i.ay = and <8 x i16> %i.ax, splat (i16 255)
  %i.az = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aw, <8 x i16> %i.ay) ; 2 uses
  %i.ba = bitcast <2 x i64> %i.aa to <8 x i16>
  %i.bb = bitcast <2 x i64> %i.al to <8 x i16>
  %i.bc = bitcast <2 x i64> %i.aa to <8 x i16>
  %i.bd = and <8 x i16> %i.bc, splat (i16 255)
  %i.be = bitcast <2 x i64> %i.al to <8 x i16>
  %i.bf = and <8 x i16> %i.be, splat (i16 255)
  %i.bg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bd, <8 x i16> %i.bf) ; 2 uses
  %i.bh = lshr <8 x i16> %i.am, splat (i16 8)
  %i.bi = lshr <8 x i16> %i.an, splat (i16 8)
  %i.bj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bh, <8 x i16> %i.bi) ; 2 uses
  %i.bk = lshr <8 x i16> %i.at, splat (i16 8)
  %i.bl = lshr <8 x i16> %i.au, splat (i16 8)
  %i.bm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bk, <8 x i16> %i.bl) ; 2 uses
  %i.bn = lshr <8 x i16> %i.ba, splat (i16 8)
  %i.bo = lshr <8 x i16> %i.bb, splat (i16 8)
  %i.bp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bn, <8 x i16> %i.bo) ; 2 uses
  %i.bq = bitcast <16 x i8> %i.as to <8 x i16>
  %i.br = bitcast <16 x i8> %i.as to <8 x i16>
  %i.bs = and <8 x i16> %i.br, splat (i16 255)
  %i.bt = bitcast <16 x i8> %i.az to <8 x i16>
  %i.bu = bitcast <16 x i8> %i.az to <8 x i16>
  %i.bv = and <8 x i16> %i.bu, splat (i16 255)
  %i.bw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bs, <8 x i16> %i.bv) ; 2 uses
  %i.bx = bitcast <16 x i8> %i.bg to <8 x i16>
  %i.by = bitcast <16 x i8> %i.bg to <8 x i16>
  %i.bz = and <8 x i16> %i.by, splat (i16 255)
  %i.ca = bitcast <16 x i8> %i.bj to <8 x i16>
  %i.cb = bitcast <16 x i8> %i.bj to <8 x i16>
  %i.cc = and <8 x i16> %i.cb, splat (i16 255)
  %i.cd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bz, <8 x i16> %i.cc) ; 2 uses
  %i.ce = bitcast <16 x i8> %i.bm to <8 x i16>
  %i.cf = bitcast <16 x i8> %i.bm to <8 x i16>
  %i.cg = and <8 x i16> %i.cf, splat (i16 255)
  %i.ch = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.ci = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.cj = and <8 x i16> %i.ci, splat (i16 255)
  %i.ck = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cg, <8 x i16> %i.cj) ; 2 uses
  %i.cl = lshr <8 x i16> %i.bq, splat (i16 8)
  %i.cm = lshr <8 x i16> %i.bt, splat (i16 8)
  %i.cn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cl, <8 x i16> %i.cm) ; 2 uses
  %i.co = lshr <8 x i16> %i.bx, splat (i16 8)
  %i.cp = lshr <8 x i16> %i.ca, splat (i16 8)
  %i.cq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.co, <8 x i16> %i.cp) ; 2 uses
  %i.cr = lshr <8 x i16> %i.ce, splat (i16 8)
  %i.cs = lshr <8 x i16> %i.ch, splat (i16 8)
  %i.ct = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cr, <8 x i16> %i.cs) ; 2 uses
  %i.cu = bitcast <16 x i8> %i.bw to <8 x i16>
  %i.cv = bitcast <16 x i8> %i.cd to <8 x i16>
  %i.cw = bitcast <16 x i8> %i.bw to <8 x i16>
  %i.cx = and <8 x i16> %i.cw, splat (i16 255)
  %i.cy = bitcast <16 x i8> %i.cd to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, splat (i16 255)
  %i.da = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cx, <8 x i16> %i.cz) ; 2 uses
  %i.db = bitcast <16 x i8> %i.ck to <8 x i16>
  %i.dc = bitcast <16 x i8> %i.cn to <8 x i16>
  %i.dd = bitcast <16 x i8> %i.ck to <8 x i16>
  %i.de = and <8 x i16> %i.dd, splat (i16 255)
  %i.df = bitcast <16 x i8> %i.cn to <8 x i16>
  %i.dg = and <8 x i16> %i.df, splat (i16 255)
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.de, <8 x i16> %i.dg) ; 2 uses
  %i.di = bitcast <16 x i8> %i.cq to <8 x i16>
  %i.dj = bitcast <16 x i8> %i.cq to <8 x i16>
  %i.dk = and <8 x i16> %i.dj, splat (i16 255)
  %i.dl = bitcast <16 x i8> %i.ct to <8 x i16>
  %i.dm = bitcast <16 x i8> %i.ct to <8 x i16>
  %i.dn = and <8 x i16> %i.dm, splat (i16 255)
  %i.do = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dk, <8 x i16> %i.dn) ; 2 uses
  %i.dp = lshr <8 x i16> %i.cu, splat (i16 8)
  %i.dq = lshr <8 x i16> %i.cv, splat (i16 8)
  %i.dr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dp, <8 x i16> %i.dq) ; 2 uses
  %i.ds = lshr <8 x i16> %i.db, splat (i16 8)
  %i.dt = lshr <8 x i16> %i.dc, splat (i16 8)
  %i.du = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ds, <8 x i16> %i.dt) ; 2 uses
  %i.dv = lshr <8 x i16> %i.di, splat (i16 8)
  %i.dw = lshr <8 x i16> %i.dl, splat (i16 8)
  %i.dx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dv, <8 x i16> %i.dw) ; 2 uses
  %i.dy = bitcast <16 x i8> %i.da to <8 x i16>
  %i.dz = bitcast <16 x i8> %i.da to <8 x i16>
  %i.ea = and <8 x i16> %i.dz, splat (i16 255)
  %i.eb = bitcast <16 x i8> %i.dh to <8 x i16>
  %i.ec = bitcast <16 x i8> %i.dh to <8 x i16>
  %i.ed = and <8 x i16> %i.ec, splat (i16 255)
  %i.ee = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ea, <8 x i16> %i.ed) ; 2 uses
  %i.ef = bitcast <16 x i8> %i.do to <8 x i16>
  %i.eg = bitcast <16 x i8> %i.do to <8 x i16>
  %i.eh = and <8 x i16> %i.eg, splat (i16 255)
  %i.ei = bitcast <16 x i8> %i.dr to <8 x i16>
  %i.ej = bitcast <16 x i8> %i.dr to <8 x i16>
  %i.ek = and <8 x i16> %i.ej, splat (i16 255)
  %i.el = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eh, <8 x i16> %i.ek) ; 2 uses
  %i.em = bitcast <16 x i8> %i.du to <8 x i16>
  %i.en = bitcast <16 x i8> %i.du to <8 x i16>
  %i.eo = and <8 x i16> %i.en, splat (i16 255)
  %i.ep = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.eq = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.er = and <8 x i16> %i.eq, splat (i16 255)
  %i.es = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eo, <8 x i16> %i.er) ; 2 uses
  %i.et = lshr <8 x i16> %i.dy, splat (i16 8)
  %i.eu = lshr <8 x i16> %i.eb, splat (i16 8)
  %i.ev = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.et, <8 x i16> %i.eu) ; 2 uses
  %i.ew = lshr <8 x i16> %i.ef, splat (i16 8)
  %i.ex = lshr <8 x i16> %i.ei, splat (i16 8)
  %i.ey = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ew, <8 x i16> %i.ex) ; 2 uses
  %i.ez = lshr <8 x i16> %i.em, splat (i16 8)
  %i.fa = lshr <8 x i16> %i.ep, splat (i16 8)
end_hunk_0
