inline.NumInlined: 52
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@DC8uvNoLeft_C:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.i, i8 %i.f, i64 8, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.j, i8 %i.f, i64 8, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.k, i8 %i.f, i64 8, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.l, i8 %i.f, i64 8, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.m, i8 %i.f, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @DC8uvNoTopLeft_C(ptr nofree noundef writeonly captures(none) initializes((0, 8), (32, 40), (64, 72), (96, 104), (128, 136), (160, 168), (192, 200), (224, 232)) %0) #6 {
bb.a:
  store i64 -9187201950435737472, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9187201950435737472, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -9187201950435737472, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -9187201950435737472, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 -9187201950435737472, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -9187201950435737472, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 -9187201950435737472, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -9187201950435737472, ptr %i.g, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @DitherCombine8x8_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i32 noundef %2) #7 {
.preheader.lver.check:
  %i.a = sext i32 %2 to i64                       ; 8 uses
  %ident.check.not = icmp eq i32 %2, 1
  br i1 %ident.check.not, label %.preheader.ph, label %.preheader.lver.orig

.preheader.lver.orig:                             ; preds = %.preheader.lver.check
  %i.b = load <8 x i8>, ptr %0, align 1, !tbaa !12
  %i.c = zext <8 x i8> %i.b to <8 x i32>
  %i.d = add nsw <8 x i32> %i.c, splat (i32 -120)
  %i.e = ashr <8 x i32> %i.d, splat (i32 4)
  %i.f = load <8 x i8>, ptr %1, align 1, !tbaa !12
  %i.g = zext <8 x i8> %i.f to <8 x i32>
  %i.h = add nsw <8 x i32> %i.e, %i.g
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 255))
  %i.k = trunc nuw <8 x i32> %i.j to <8 x i8>
  store <8 x i8> %i.k, ptr %1, align 1, !tbaa !12
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.a ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <8 x i8>, ptr %i.m, align 1, !tbaa !12
  %i.o = zext <8 x i8> %i.n to <8 x i32>
  %i.p = add nsw <8 x i32> %i.o, splat (i32 -120)
  %i.q = ashr <8 x i32> %i.p, splat (i32 4)
  %i.r = load <8 x i8>, ptr %i.l, align 1, !tbaa !12
  %i.s = zext <8 x i8> %i.r to <8 x i32>
  %i.t = add nsw <8 x i32> %i.q, %i.s
  %i.u = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.t, <8 x i32> zeroinitializer)
  %i.v = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.u, <8 x i32> splat (i32 255))
  %i.w = trunc nuw <8 x i32> %i.v to <8 x i8>
  store <8 x i8> %i.w, ptr %i.l, align 1, !tbaa !12
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.a ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load <8 x i8>, ptr %i.y, align 1, !tbaa !12
  %i.aa = zext <8 x i8> %i.z to <8 x i32>
  %i.ab = add nsw <8 x i32> %i.aa, splat (i32 -120)
  %i.ac = ashr <8 x i32> %i.ab, splat (i32 4)
  %i.ad = load <8 x i8>, ptr %i.x, align 1, !tbaa !12
  %i.ae = zext <8 x i8> %i.ad to <8 x i32>
  %i.af = add nsw <8 x i32> %i.ac, %i.ae
  %i.ag = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.af, <8 x i32> zeroinitializer)
  %i.ah = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ag, <8 x i32> splat (i32 255))
  %i.ai = trunc nuw <8 x i32> %i.ah to <8 x i8>
  store <8 x i8> %i.ai, ptr %i.x, align 1, !tbaa !12
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 %i.a ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load <8 x i8>, ptr %i.ak, align 1, !tbaa !12
  %i.am = zext <8 x i8> %i.al to <8 x i32>
  %i.an = add nsw <8 x i32> %i.am, splat (i32 -120)
  %i.ao = ashr <8 x i32> %i.an, splat (i32 4)
  %i.ap = load <8 x i8>, ptr %i.aj, align 1, !tbaa !12
  %i.aq = zext <8 x i8> %i.ap to <8 x i32>
  %i.ar = add nsw <8 x i32> %i.ao, %i.aq
  %i.as = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ar, <8 x i32> zeroinitializer)
  %i.at = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.as, <8 x i32> splat (i32 255))
  %i.au = trunc nuw <8 x i32> %i.at to <8 x i8>
  store <8 x i8> %i.au, ptr %i.aj, align 1, !tbaa !12
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 %i.a ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load <8 x i8>, ptr %i.aw, align 1, !tbaa !12
  %i.ay = zext <8 x i8> %i.ax to <8 x i32>
  %i.az = add nsw <8 x i32> %i.ay, splat (i32 -120)
  %i.ba = ashr <8 x i32> %i.az, splat (i32 4)
  %i.bb = load <8 x i8>, ptr %i.av, align 1, !tbaa !12
  %i.bc = zext <8 x i8> %i.bb to <8 x i32>
  %i.bd = add nsw <8 x i32> %i.ba, %i.bc
  %i.be = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bd, <8 x i32> zeroinitializer)
  %i.bf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.be, <8 x i32> splat (i32 255))
  %i.bg = trunc nuw <8 x i32> %i.bf to <8 x i8>
  store <8 x i8> %i.bg, ptr %i.av, align 1, !tbaa !12
  %i.bh = getelementptr inbounds i8, ptr %i.av, i64 %i.a ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load <8 x i8>, ptr %i.bi, align 1, !tbaa !12
  %i.bk = zext <8 x i8> %i.bj to <8 x i32>
  %i.bl = add nsw <8 x i32> %i.bk, splat (i32 -120)
  %i.bm = ashr <8 x i32> %i.bl, splat (i32 4)
  %i.bn = load <8 x i8>, ptr %i.bh, align 1, !tbaa !12
  %i.bo = zext <8 x i8> %i.bn to <8 x i32>
  %i.bp = add nsw <8 x i32> %i.bm, %i.bo
  %i.bq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bp, <8 x i32> zeroinitializer)
  %i.br = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bq, <8 x i32> splat (i32 255))
  %i.bs = trunc nuw <8 x i32> %i.br to <8 x i8>
  store <8 x i8> %i.bs, ptr %i.bh, align 1, !tbaa !12
  %i.bt = getelementptr inbounds i8, ptr %i.bh, i64 %i.a ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load <8 x i8>, ptr %i.bu, align 1, !tbaa !12
  %i.bw = zext <8 x i8> %i.bv to <8 x i32>
  %i.bx = add nsw <8 x i32> %i.bw, splat (i32 -120)
  %i.by = ashr <8 x i32> %i.bx, splat (i32 4)
  %i.bz = load <8 x i8>, ptr %i.bt, align 1, !tbaa !12
  %i.ca = zext <8 x i8> %i.bz to <8 x i32>
  %i.cb = add nsw <8 x i32> %i.by, %i.ca
  %i.cc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cb, <8 x i32> zeroinitializer)
  %i.cd = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cc, <8 x i32> splat (i32 255))
  %i.ce = trunc nuw <8 x i32> %i.cd to <8 x i8>
  store <8 x i8> %i.ce, ptr %i.bt, align 1, !tbaa !12
  %i.cf = getelementptr inbounds i8, ptr %i.bt, i64 %i.a ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load <8 x i8>, ptr %i.cg, align 1, !tbaa !12
  %i.ci = zext <8 x i8> %i.ch to <8 x i32>
  %i.cj = add nsw <8 x i32> %i.ci, splat (i32 -120)
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 4)
  %i.cl = load <8 x i8>, ptr %i.cf, align 1, !tbaa !12
  %i.cm = zext <8 x i8> %i.cl to <8 x i32>
  %i.cn = add nsw <8 x i32> %i.ck, %i.cm
  %i.co = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cn, <8 x i32> zeroinitializer)
  %i.cp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.co, <8 x i32> splat (i32 255))
  %i.cq = trunc nuw <8 x i32> %i.cp to <8 x i8>
  store <8 x i8> %i.cq, ptr %i.cf, align 1, !tbaa !12
  br label %.loopexit

.preheader.ph:                                    ; preds = %.preheader.lver.check
  %scevgep = getelementptr i8, ptr %1, i64 6
  %load_initial = load i8, ptr %scevgep, align 1
  %i.cr = zext i8 %load_initial to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.ph, %.preheader
  %store_forwarded = phi i32 [ %i.cr, %.preheader.ph ], [ %i.dq, %.preheader ]
  %.020 = phi ptr [ %0, %.preheader.ph ], [ %i.do, %.preheader ] ; 2 uses
  %.01419 = phi ptr [ %1, %.preheader.ph ], [ %i.dn, %.preheader ] ; 5 uses
  %.01518 = phi i32 [ 0, %.preheader.ph ], [ %i.dp, %.preheader ]
  %i.cs = load <2 x i8>, ptr %.01419, align 1, !tbaa !12
  %i.ct = getelementptr inbounds nuw i8, ptr %.01419, i64 2
  %i.cu = load <4 x i8>, ptr %i.ct, align 1, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %.01419, i64 7
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !12
  %i.cx = zext i8 %i.cw to i32
  %i.cy = load <8 x i8>, ptr %.020, align 1, !tbaa !12
  %i.cz = zext <8 x i8> %i.cy to <8 x i32>
  %i.da = add nsw <8 x i32> %i.cz, splat (i32 -120)
  %i.db = ashr <8 x i32> %i.da, splat (i32 4)
  %i.dc = zext <2 x i8> %i.cs to <2 x i32>
  %i.dd = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.de = zext <4 x i8> %i.cu to <4 x i32>
  %i.df = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <8 x i32> %i.dd, <8 x i32> %i.df, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.dh = insertelement <8 x i32> %i.dg, i32 %store_forwarded, i64 6
  %i.di = insertelement <8 x i32> %i.dh, i32 %i.cx, i64 7
  %i.dj = add nsw <8 x i32> %i.db, %i.di
  %i.dk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dj, <8 x i32> zeroinitializer)
  %i.dl = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dk, <8 x i32> splat (i32 255)) ; 2 uses
  %i.dm = trunc nuw <8 x i32> %i.dl to <8 x i8>
  store <8 x i8> %i.dm, ptr %.01419, align 1, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %.01419, i64 %i.a
  %i.do = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.dp = add nuw nsw i32 %.01518, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, 8
  %i.dq = extractelement <8 x i32> %i.dl, i64 7
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !19

.loopexit:                                        ; preds = %.preheader, %.preheader.lver.orig
  ret void
}

declare void @VP8DspInitSSE2() local_unnamed_addr #2

declare void @VP8DspInitSSE41() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @TransformOne_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1) unnamed_addr #3 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 2, !tbaa !10
  %i.d = sext i16 %i.c to i32                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = mul nsw i32 %i.d, 20091
  %i.g = ashr i32 %i.f, 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !10
  %i.l = sext i16 %i.k to i32                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26
  %2 = mul nsw i32 %i.l, 20091
  %3 = ashr i32 %2, 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i16, ptr %6, align 2, !tbaa !10
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.q = load i16, ptr %i.p, align 2, !tbaa !10
  %9 = sext i16 %i.q to i32                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 30
  %10 = mul nsw i32 %9, 20091
  %11 = ashr i32 %10, 16
  %i.s = sext i16 %7 to i32                       ; 3 uses
  %i.t = mul nsw i32 %i.s, 20091
  %i.u = ashr i32 %i.t, 16
  %12 = add nsw i32 %i.u, %i.s
  %13 = load <4 x i8>, ptr %1, align 1, !tbaa !12
  %14 = zext <4 x i8> %13 to <4 x i32>
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %15 = load <4 x i8>, ptr %i.v, align 1, !tbaa !12
  %16 = zext <4 x i8> %15 to <4 x i32>
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = load i16, ptr %i.e, align 2, !tbaa !10
  %17 = load i16, ptr %8, align 2, !tbaa !10
  %18 = load i16, ptr %i.r, align 2, !tbaa !10
  %19 = load i16, ptr %i.m, align 2, !tbaa !10
  %20 = sext i16 %i.x to i32                      ; 3 uses
  %i.y = sext i16 %17 to i32                      ; 3 uses
  %21 = sext i16 %18 to i32                       ; 3 uses
  %22 = sext i16 %19 to i32                       ; 3 uses
  %i.z = mul nsw i32 %20, 20091
  %23 = mul nsw i32 %20, 35468
  %i.aa = mul nsw i32 %22, 20091
  %24 = mul nsw i32 %22, 35468
  %i.ab = mul nsw i32 %i.y, 20091
  %25 = mul nsw i32 %i.y, 35468
  %26 = mul nsw i32 %21, 20091
  %i.ac = ashr i32 %i.z, 16
  %i.ad = ashr i32 %i.ab, 16
  %i.ae = ashr i32 %26, 16
  %i.af = ashr i32 %i.aa, 16
  %i.ag = mul nsw i32 %21, 35468
  %27 = ashr i32 %25, 16
  %28 = mul nsw i32 %i.d, 35468
  %29 = mul nsw i32 %i.s, 35468
  %30 = mul nsw i32 %9, 35468
  %31 = mul nsw i32 %i.l, 35468
  %32 = add nsw i32 %i.ac, %20
  %33 = add nsw i32 %i.ad, %i.y
  %34 = add nsw i32 %i.ae, %21
  %35 = add nsw i32 %i.af, %22
  %36 = ashr i32 %28, 16
  %37 = ashr i32 %29, 16
  %38 = ashr i32 %30, 16
  %39 = ashr i32 %31, 16
  %40 = sub nsw i32 %36, %32                      ; 2 uses
  %i.ah = sub nsw i32 %37, %33                    ; 2 uses
  %i.ai = sub nsw i32 %38, %34                    ; 2 uses
  %i.aj = sub nsw i32 %39, %35                    ; 2 uses
  %i.ak = load <4 x i8>, ptr %i.w, align 1, !tbaa !12
  %i.al = zext <4 x i8> %i.ak to <4 x i32>
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %41 = add nsw i32 %i.g, %i.d
  %i.an = add nsw i32 %3, %i.l
  %i.ao = add nsw i32 %11, %9
  %42 = load i16, ptr %4, align 2, !tbaa !10
  %43 = load i16, ptr %0, align 2, !tbaa !10
  %44 = load i16, ptr %i.h, align 2, !tbaa !10
  %45 = load i16, ptr %i.n, align 2, !tbaa !10
  %i.ap = sext i16 %42 to i32                     ; 2 uses
  %i.aq = sext i16 %43 to i32                     ; 2 uses
  %i.ar = sext i16 %44 to i32                     ; 2 uses
  %i.as = sext i16 %45 to i32                     ; 2 uses
  %i.at = load i16, ptr %5, align 2, !tbaa !10
  %i.au = load i16, ptr %i.a, align 2, !tbaa !10
  %i.av = load i16, ptr %i.i, align 2, !tbaa !10
  %i.aw = load i16, ptr %i.o, align 2, !tbaa !10
  %i.ax = sext i16 %i.at to i32                   ; 2 uses
  %i.ay = sext i16 %i.au to i32                   ; 2 uses
  %i.az = sext i16 %i.av to i32                   ; 2 uses
  %i.ba = sext i16 %i.aw to i32                   ; 2 uses
  %46 = ashr i32 %23, 16
  %47 = ashr i32 %24, 16
  %48 = ashr i32 %i.ag, 16
  %49 = add nsw i32 %41, %46                      ; 2 uses
  %50 = add nsw i32 %i.an, %47                    ; 2 uses
  %51 = add nsw i32 %i.ao, %48                    ; 2 uses
  %52 = add nsw i32 %12, %27                      ; 2 uses
  %i.bb = add nsw i32 %i.ax, %i.ap                ; 2 uses
  %i.bc = add nsw i32 %i.ay, %i.aq                ; 2 uses
  %i.bd = add nsw i32 %i.az, %i.ar                ; 2 uses
  %i.be = add nsw i32 %i.ba, %i.as                ; 2 uses
  %i.bf = add nsw i32 %49, %i.bc
  %i.bg = add nsw i32 %51, %i.be                  ; 3 uses
  %i.bh = add nsw i32 %50, %i.bd                  ; 3 uses
  %i.bi = sub nsw i32 %i.bc, %49
  %i.bj = sub nsw i32 %i.bd, %50                  ; 3 uses
  %i.bk = sub nsw i32 %i.be, %51                  ; 3 uses
  %i.bl = mul nsw i32 %i.bg, 20091
  %53 = mul nsw i32 %i.bh, 20091
  %54 = ashr i32 %i.bl, 16
  %i.bm = ashr i32 %53, 16
  %i.bn = mul nsw i32 %i.bh, 35468
  %i.bo = mul nsw i32 %i.bg, 35468
  %i.bp = add nsw i32 %i.bg, %54
  %i.bq = add nsw i32 %i.bm, %i.bh
  %i.br = add nsw i32 %52, %i.bb                  ; 2 uses
  %i.bs = add nsw i32 %i.bf, 4                    ; 2 uses
  %i.bt = ashr i32 %i.bn, 16
  %i.bu = ashr i32 %i.bo, 16
  %i.bv = add nsw i32 %i.bs, %i.br                ; 2 uses
  %i.bw = sub nsw i32 %i.bs, %i.br                ; 2 uses
  %i.bx = sub nsw i32 %i.bt, %i.bp                ; 2 uses
  %i.by = add nsw i32 %i.bq, %i.bu                ; 2 uses
  %i.bz = sub nsw i32 %i.bv, %i.by
  %i.ca = sub nsw i32 %i.bw, %i.bx
  %i.cb = add nsw i32 %i.bx, %i.bw
  %i.cc = add nsw i32 %i.by, %i.bv
  %i.cd = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.cb, i64 1
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.ca, i64 2
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.bz, i64 3
  %i.ch = ashr <4 x i32> %i.cg, splat (i32 3)
  %i.ci = add nsw <4 x i32> %i.ch, %14
  %i.cj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ci, <4 x i32> zeroinitializer)
  %i.ck = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cj, <4 x i32> splat (i32 255))
  %i.cl = trunc nuw <4 x i32> %i.ck to <4 x i8>
  store <4 x i8> %i.cl, ptr %1, align 1, !tbaa !12
  %i.cm = sub nsw i32 %i.aq, %i.ay                ; 2 uses
  %i.cn = sub nsw i32 %i.as, %i.ba                ; 2 uses
  %i.co = sub nsw i32 %i.ar, %i.az                ; 2 uses
  %i.cp = add nsw i32 %40, %i.cm
  %i.cq = add nsw i32 %i.aj, %i.co                ; 3 uses
  %i.cr = add nsw i32 %i.ai, %i.cn                ; 3 uses
  %i.cs = sub nsw i32 %i.ap, %i.ax                ; 2 uses
  %i.ct = sub nsw i32 %i.cm, %40
  %i.cu = sub nsw i32 %i.cn, %i.ai                ; 3 uses
  %i.cv = sub nsw i32 %i.co, %i.aj                ; 3 uses
  %i.cw = mul nsw i32 %i.cr, 20091
  %55 = mul nsw i32 %i.cq, 20091
  %56 = ashr i32 %i.cw, 16
  %i.cx = ashr i32 %55, 16
  %i.cy = mul nsw i32 %i.cq, 35468
  %i.cz = mul nsw i32 %i.cr, 35468
  %i.da = add nsw i32 %i.cr, %56
  %i.db = add nsw i32 %i.cx, %i.cq
  %i.dc = add nsw i32 %i.ah, %i.cs                ; 2 uses
  %i.dd = add nsw i32 %i.cp, 4                    ; 2 uses
  %i.de = ashr i32 %i.cy, 16
  %i.df = ashr i32 %i.cz, 16
  %i.dg = add nsw i32 %i.dd, %i.dc                ; 2 uses
  %i.dh = sub nsw i32 %i.dd, %i.dc                ; 2 uses
  %i.di = sub nsw i32 %i.de, %i.da                ; 2 uses
  %i.dj = add nsw i32 %i.db, %i.df                ; 2 uses
  %i.dk = sub nsw i32 %i.dg, %i.dj
  %i.dl = sub nsw i32 %i.dh, %i.di
  %i.dm = add nsw i32 %i.di, %i.dh
  %i.dn = add nsw i32 %i.dj, %i.dg
  %i.do = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %i.dp = insertelement <4 x i32> %i.do, i32 %i.dm, i64 1
  %i.dq = insertelement <4 x i32> %i.dp, i32 %i.dl, i64 2
  %i.dr = insertelement <4 x i32> %i.dq, i32 %i.dk, i64 3
  %i.ds = ashr <4 x i32> %i.dr, splat (i32 3)
  %i.dt = add nsw <4 x i32> %i.ds, %16
  %i.du = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dt, <4 x i32> zeroinitializer)
  %i.dv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.du, <4 x i32> splat (i32 255))
  %i.dw = trunc nuw <4 x i32> %i.dv to <4 x i8>
  store <4 x i8> %i.dw, ptr %i.v, align 1, !tbaa !12
  %i.dx = mul nsw i32 %i.cu, 20091
  %57 = mul nsw i32 %i.cv, 20091
  %58 = ashr i32 %i.dx, 16
  %i.dy = ashr i32 %57, 16
  %59 = sub nsw i32 %i.cs, %i.ah                  ; 2 uses
  %i.dz = mul nsw i32 %i.cv, 35468
  %60 = mul nsw i32 %i.cu, 35468
  %61 = add nsw i32 %i.ct, 4                      ; 2 uses
  %62 = add nsw i32 %i.cu, %58
  %i.ea = add nsw i32 %i.dy, %i.cv
  %63 = ashr i32 %i.dz, 16
  %64 = ashr i32 %60, 16
  %i.eb = add nsw i32 %61, %59                    ; 2 uses
  %i.ec = sub nsw i32 %61, %59                    ; 2 uses
  %i.ed = sub nsw i32 %63, %62                    ; 2 uses
  %i.ee = add nsw i32 %i.ea, %64                  ; 2 uses
  %i.ef = sub nsw i32 %i.eb, %i.ee
  %i.eg = sub nsw i32 %i.ec, %i.ed
  %i.eh = add nsw i32 %i.ed, %i.ec
  %i.ei = add nsw i32 %i.ee, %i.eb
  %i.ej = insertelement <4 x i32> poison, i32 %i.ei, i64 0
  %i.ek = insertelement <4 x i32> %i.ej, i32 %i.eh, i64 1
  %i.el = insertelement <4 x i32> %i.ek, i32 %i.eg, i64 2
  %i.em = insertelement <4 x i32> %i.el, i32 %i.ef, i64 3
  %i.en = ashr <4 x i32> %i.em, splat (i32 3)
  %i.eo = add nsw <4 x i32> %i.en, %i.al
  %i.ep = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eo, <4 x i32> zeroinitializer)
  %i.eq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ep, <4 x i32> splat (i32 255))
  %i.er = trunc nuw <4 x i32> %i.eq to <4 x i8>
  store <4 x i8> %i.er, ptr %i.w, align 1, !tbaa !12
  %i.es = mul nsw i32 %i.bk, 20091
  %65 = mul nsw i32 %i.bj, 20091
  %66 = ashr i32 %i.es, 16
  %i.et = ashr i32 %65, 16
  %67 = add nsw i32 %i.bk, %66
  %68 = add nsw i32 %i.et, %i.bj
  %69 = sub nsw i32 %i.bb, %52                    ; 2 uses
  %i.eu = add nsw i32 %i.bi, 4                    ; 2 uses
  %70 = mul nsw i32 %i.bj, 35468
  %71 = mul nsw i32 %i.bk, 35468
  %i.ev = ashr i32 %70, 16
  %i.ew = ashr i32 %71, 16
  %i.ex = add nsw i32 %i.eu, %69                  ; 2 uses
  %i.ey = sub nsw i32 %i.eu, %69                  ; 2 uses
  %i.ez = sub nsw i32 %i.ev, %67                  ; 2 uses
  %i.fa = add nsw i32 %68, %i.ew                  ; 2 uses
  %i.fb = load <4 x i8>, ptr %i.am, align 1, !tbaa !12
  %i.fc = zext <4 x i8> %i.fb to <4 x i32>
  %i.fd = sub nsw i32 %i.ex, %i.fa
  %i.fe = sub nsw i32 %i.ey, %i.ez
  %i.ff = add nsw i32 %i.ez, %i.ey
  %i.fg = add nsw i32 %i.fa, %i.ex
  %i.fh = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.ff, i64 1
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.fe, i64 2
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fd, i64 3
  %i.fl = ashr <4 x i32> %i.fk, splat (i32 3)
  %i.fm = add nsw <4 x i32> %i.fl, %i.fc
  %i.fn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fm, <4 x i32> zeroinitializer)
  %i.fo = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fn, <4 x i32> splat (i32 255))
  %i.fp = trunc nuw <4 x i32> %i.fo to <4 x i8>
  store <4 x i8> %i.fp, ptr %i.am, align 1, !tbaa !12
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @FilterLoop26_C(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 8, 17) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = shl nsw i32 %4, 1
  %i.b = or disjoint i32 %i.a, 1
  %i.c = mul nsw i32 %1, -3
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i32 %1, -2
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i32 0, %1
  %i.h = sext i32 %i.g to i64
  %i.i = sext i32 %1 to i64
  %i.j = shl nsw i32 %1, 1
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i32 %1, 3
  %i.m = sext i32 %i.l to i64
  %i.n = load ptr, ptr @VP8kabs0, align 8, !tbaa !13 ; 10 uses
  %i.o = sext i32 %2 to i64
  %i.p = mul nsw i32 %1, -4
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr @VP8ksclip1, align 8       ; 3 uses
  %i.s = load ptr, ptr @VP8kclip1, align 8        ; 8 uses
  %i.t = load ptr, ptr @VP8ksclip2, align 8       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %NeedsFilter2_C.exit.thread
  %.in = phi i32 [ %3, %bb.a ], [ %i.u, %NeedsFilter2_C.exit.thread ] ; 2 uses
  %.020 = phi ptr [ %0, %bb.a ], [ %i.fn, %NeedsFilter2_C.exit.thread ] ; 11 uses
  %i.u = add nsw i32 %.in, -1
  %i.v = getelementptr inbounds i8, ptr %.020, i64 %i.d ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.020, i64 %i.f ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12    ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %.020, i64 %i.h ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12  ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 6 uses
  %i.ae = load i8, ptr %.020, align 1, !tbaa !12  ; 2 uses
  %i.af = zext i8 %i.ae to i32                    ; 6 uses
  %i.ag = getelementptr inbounds i8, ptr %.020, i64 %i.i ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12  ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %.020, i64 %i.k ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = zext i8 %i.ak to i32                    ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.020, i64 %i.m
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ao = zext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.ad, %i.af
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 2
  %i.av = sub nsw i32 %i.aa, %i.ai
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.n, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.au, %i.az
  %i.bb = icmp sgt i32 %i.ba, %i.b
  br i1 %i.bb, label %NeedsFilter2_C.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds i8, ptr %.020, i64 %i.q
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !12
  %i.be = zext i8 %i.bd to i32
  %i.bf = sub nsw i32 %i.be, %i.x
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.n, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12
  %i.bj = zext i8 %i.bi to i32
  %.not.i = icmp slt i32 %5, %i.bj
  br i1 %.not.i, label %NeedsFilter2_C.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = sub nsw i32 %i.x, %i.aa
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.n, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = zext i8 %i.bn to i32
  %.not39.i = icmp samesign ult i32 %5, %i.bo
  br i1 %.not39.i, label %NeedsFilter2_C.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = sub nsw i32 %i.aa, %i.ad
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.n, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !12
  %i.bt = zext i8 %i.bs to i32
  %.not40.i = icmp samesign ult i32 %5, %i.bt
  br i1 %.not40.i, label %NeedsFilter2_C.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = sub nsw i32 %i.ao, %i.al
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.n, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !12
  %i.by = zext i8 %i.bx to i32
  %.not41.i = icmp samesign ult i32 %5, %i.by
  br i1 %.not41.i, label %NeedsFilter2_C.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = sub nsw i32 %i.al, %i.ai
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.n, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !12
  %i.cd = zext i8 %i.cc to i32
  %.not42.i = icmp samesign ult i32 %5, %i.cd
  br i1 %.not42.i, label %NeedsFilter2_C.exit.thread, label %NeedsFilter2_C.exit

NeedsFilter2_C.exit:                              ; preds = %bb.g
  %i.ce = sub nsw i32 %i.ai, %i.af
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %i.n, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !12
  %i.ci = zext i8 %i.ch to i32
  %.not19 = icmp samesign ult i32 %5, %i.ci
  br i1 %.not19, label %NeedsFilter2_C.exit.thread, label %bb.h

bb.h:                                             ; preds = %NeedsFilter2_C.exit
  %i.cj = zext i8 %i.z to i64                     ; 2 uses
  %i.ck = zext i8 %i.ac to i64
  %i.cl = sub nsw i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.n, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  %i.co = zext i8 %i.cn to i32
  %i.cp = icmp slt i32 %6, %i.co
  %.pre = zext i8 %i.ah to i64                    ; 2 uses
  br i1 %i.cp, label %Hev.exit.thread, label %Hev.exit

Hev.exit:                                         ; preds = %bb.h
  %i.cq = zext i8 %i.ae to i64
  %i.cr = sub nsw i64 %.pre, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.cu = zext i8 %i.ct to i32
  %.not = icmp samesign ult i32 %6, %i.cu
  br i1 %.not, label %Hev.exit.thread, label %bb.i

Hev.exit.thread:                                  ; preds = %bb.h, %Hev.exit
  %i.cv = sub nsw i32 %i.af, %i.ad
  %i.cw = mul nsw i32 %i.cv, 3
  %i.cx = sub nsw i64 %i.cj, %.pre
  %i.cy = getelementptr inbounds i8, ptr %i.r, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !12
  %i.da = sext i8 %i.cz to i32
  %i.db = add nsw i32 %i.cw, %i.da                ; 2 uses
  %i.dc = add nsw i32 %i.db, 4
  %i.dd = ashr i32 %i.dc, 3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.t, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !12
  %i.dh = sext i8 %i.dg to i32
  %i.di = add nsw i32 %i.db, 3
  %i.dj = ashr i32 %i.di, 3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.t, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !12
  %i.dn = sext i8 %i.dm to i32
  %i.do = add nsw i32 %i.dn, %i.ad
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.s, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12
  store i8 %i.dr, ptr %i.ab, align 1, !tbaa !12
  %i.ds = sub nsw i32 %i.af, %i.dh
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.s, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !12
  store i8 %i.dv, ptr %.020, align 1, !tbaa !12
  br label %NeedsFilter2_C.exit.thread

bb.i:                                             ; preds = %Hev.exit
  %i.dw = sub nsw i32 %i.af, %i.ad
  %i.dx = mul nsw i32 %i.dw, 3
  %i.dy = getelementptr inbounds i8, ptr %i.r, i64 %i.aw
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !12
  %i.ea = sext i8 %i.dz to i32
  %i.eb = add nsw i32 %i.dx, %i.ea
  %i.ec = sext i32 %i.eb to i64
end_hunk_0
