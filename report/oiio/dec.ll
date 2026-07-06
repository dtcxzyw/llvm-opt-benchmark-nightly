inline.NumInlined: 52
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@DC8uvNoLeft_C:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.g, i8 %i.f, i64 8, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.h, i8 %i.f, i64 8, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
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
  %2 = load i16, ptr %0, align 2, !tbaa !10
  %3 = sext i16 %2 to i32                         ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10
  %i.c = sext i16 %i.b to i32                     ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i16, ptr %i.d, align 2, !tbaa !10
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = mul nsw i32 %i.f, 20091
  %i.h = ashr i32 %i.g, 16
  %5 = add nsw i32 %i.h, %i.f
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %8 = load i16, ptr %i.i, align 2, !tbaa !10
  %9 = sext i16 %8 to i32                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !10
  %i.l = sext i16 %i.k to i32                     ; 3 uses
  %i.m = mul nsw i32 %i.l, 35468
  %10 = ashr i32 %i.m, 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.o = load i16, ptr %i.n, align 2, !tbaa !10
  %i.p = sext i16 %i.o to i32                     ; 3 uses
  %i.q = mul nsw i32 %i.p, 20091
  %i.r = ashr i32 %i.q, 16
  %11 = add nsw i32 %i.r, %i.p
  %12 = sub nsw i32 %10, %11                      ; 2 uses
  %i.s = mul nsw i32 %i.l, 20091
  %i.t = ashr i32 %i.s, 16
  %i.u = mul nsw i32 %i.p, 35468
  %13 = ashr i32 %i.u, 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = load i16, ptr %i.v, align 2, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %15 = load i16, ptr %i.w, align 2, !tbaa !10
  %16 = sext i16 %15 to i32                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i16, ptr %i.x, align 2, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !10
  %i.ab = sext i16 %i.aa to i32                   ; 3 uses
  %i.ac = mul nsw i32 %i.ab, 20091
  %i.ad = ashr i32 %i.ac, 16
  %17 = add nsw i32 %i.ad, %i.ab
  %i.ae = mul nsw i32 %i.ab, 35468
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 22
  %18 = load i16, ptr %i.ag, align 2, !tbaa !10
  %19 = sext i16 %18 to i32                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !10
  %i.aj = sext i16 %i.ai to i32                   ; 3 uses
  %i.ak = mul nsw i32 %i.aj, 35468
  %20 = ashr i32 %i.ak, 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.am = load i16, ptr %i.al, align 2, !tbaa !10
  %i.an = sext i16 %i.am to i32                   ; 3 uses
  %i.ao = mul nsw i32 %i.an, 20091
  %i.ap = ashr i32 %i.ao, 16
  %21 = add nsw i32 %i.ap, %i.an
  %22 = sub nsw i32 %20, %21                      ; 2 uses
  %i.aq = mul nsw i32 %i.aj, 20091
  %23 = ashr i32 %i.aq, 16
  %i.ar = mul nsw i32 %i.an, 35468
  %i.as = ashr i32 %i.ar, 16
  %24 = load i16, ptr %4, align 2, !tbaa !10
  %25 = load i16, ptr %i.af, align 2, !tbaa !10
  %26 = sext i16 %i.y to i32                      ; 3 uses
  %27 = sext i16 %24 to i32                       ; 3 uses
  %28 = sext i16 %7 to i32                        ; 2 uses
  %29 = sext i16 %25 to i32                       ; 2 uses
  %i.at = mul nsw i32 %27, 20091
  %30 = ashr i32 %i.at, 16
  %31 = ashr i32 %i.ae, 16
  %32 = mul nsw i32 %26, 20091
  %33 = mul nsw i32 %i.f, 35468
  %i.au = add nsw i32 %i.t, %i.l
  %34 = add nsw i32 %23, %i.aj
  %i.av = ashr i32 %32, 16
  %i.aw = ashr i32 %33, 16
  %35 = add nsw i32 %19, %29                      ; 2 uses
  %36 = add nsw i32 %9, %28                       ; 2 uses
  %37 = add nsw i32 %34, %i.as                    ; 2 uses
  %38 = add nsw i32 %i.au, %13                    ; 2 uses
  %39 = add nsw i32 %i.av, %26
  %i.ax = add nsw i32 %37, %35                    ; 3 uses
  %i.ay = add nsw i32 %38, %36                    ; 3 uses
  %i.az = add nsw i32 %39, %31                    ; 2 uses
  %40 = mul nsw i32 %i.ay, 35468
  %41 = mul nsw i32 %i.ax, 35468
  %42 = mul nsw i32 %i.ax, 20091
  %43 = ashr i32 %42, 16
  %44 = mul nsw i32 %i.ay, 20091
  %45 = ashr i32 %44, 16
  %46 = add nsw i32 %i.ax, %43
  %47 = add nsw i32 %45, %i.ay
  %48 = ashr i32 %40, 16
  %49 = ashr i32 %41, 16
  %50 = sub nsw i32 %48, %46                      ; 2 uses
  %i.ba = add nsw i32 %47, %49                    ; 2 uses
  %51 = load <4 x i8>, ptr %1, align 1, !tbaa !12
  %52 = zext <4 x i8> %51 to <4 x i32>
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %54 = mul nsw i32 %26, 35468
  %55 = mul nsw i32 %27, 35468
  %56 = sub nsw i32 %28, %9                       ; 2 uses
  %57 = sub nsw i32 %29, %19                      ; 2 uses
  %58 = ashr i32 %54, 16
  %59 = ashr i32 %55, 16
  %60 = add nsw i32 %12, %56                      ; 3 uses
  %61 = add nsw i32 %22, %57                      ; 3 uses
  %62 = sub nsw i32 %58, %17                      ; 2 uses
  %63 = sub nsw i32 %59, %5                       ; 2 uses
  %64 = mul nsw i32 %60, 35468
  %65 = mul nsw i32 %61, 35468
  %66 = mul nsw i32 %61, 20091
  %67 = ashr i32 %66, 16
  %68 = mul nsw i32 %60, 20091
  %69 = ashr i32 %68, 16
  %i.bb = add nsw i32 %61, %67
  %i.bc = add nsw i32 %69, %60
  %70 = ashr i32 %64, 16
  %71 = ashr i32 %65, 16
  %i.bd = sub nsw i32 %70, %i.bb                  ; 2 uses
  %72 = add nsw i32 %i.bc, %71                    ; 2 uses
  %73 = load <4 x i8>, ptr %53, align 1, !tbaa !12
  %74 = zext <4 x i8> %73 to <4 x i32>
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %76 = sext i16 %14 to i32                       ; 2 uses
  %77 = sub nsw i32 %3, %i.c                      ; 2 uses
  %78 = sub nsw i32 %56, %12                      ; 3 uses
  %79 = sub nsw i32 %57, %22                      ; 3 uses
  %i.be = add nsw i32 %63, %77
  %80 = sub nsw i32 %76, %16                      ; 2 uses
  %81 = sub nsw i32 %77, %63
  %82 = mul nsw i32 %78, 35468
  %83 = mul nsw i32 %79, 35468
  %84 = add nsw i32 %62, %80                      ; 2 uses
  %i.bf = add nsw i32 %i.be, 4                    ; 2 uses
  %85 = add nsw i32 %i.bf, %84                    ; 2 uses
  %i.bg = sub nsw i32 %i.bf, %84                  ; 2 uses
  %i.bh = sub nsw i32 %85, %72
  %i.bi = sub nsw i32 %i.bg, %i.bd
  %i.bj = add nsw i32 %i.bd, %i.bg
  %i.bk = add nsw i32 %72, %85
  %i.bl = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bj, i64 1
  %i.bn = insertelement <4 x i32> %i.bm, i32 %i.bi, i64 2
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.bh, i64 3
  %i.bp = ashr <4 x i32> %i.bo, splat (i32 3)
  %i.bq = add nsw <4 x i32> %i.bp, %74
  %i.br = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bq, <4 x i32> zeroinitializer)
  %i.bs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.br, <4 x i32> splat (i32 255))
  %i.bt = trunc nuw <4 x i32> %i.bs to <4 x i8>
  store <4 x i8> %i.bt, ptr %53, align 1, !tbaa !12
  %86 = mul nsw i32 %79, 20091
  %87 = ashr i32 %86, 16
  %i.bu = mul nsw i32 %78, 20091
  %i.bv = ashr i32 %i.bu, 16
  %88 = sub nsw i32 %80, %62                      ; 2 uses
  %i.bw = ashr i32 %82, 16
  %89 = ashr i32 %83, 16
  %i.bx = add nsw i32 %81, 4                      ; 2 uses
  %i.by = add nsw i32 %79, %87
  %i.bz = add nsw i32 %i.bv, %78
  %i.ca = add nsw i32 %i.bx, %88                  ; 2 uses
  %90 = sub nsw i32 %i.bx, %88                    ; 2 uses
  %91 = sub nsw i32 %i.bw, %i.by                  ; 2 uses
  %i.cb = add nsw i32 %i.bz, %89                  ; 2 uses
  %92 = load <4 x i8>, ptr %75, align 1, !tbaa !12
  %93 = zext <4 x i8> %92 to <4 x i32>
  %i.cc = sub nsw i32 %i.ca, %i.cb
  %i.cd = sub nsw i32 %90, %91
  %i.ce = add nsw i32 %91, %90
  %i.cf = add nsw i32 %i.cb, %i.ca
  %i.cg = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.ce, i64 1
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.cd, i64 2
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cc, i64 3
  %i.ck = ashr <4 x i32> %i.cj, splat (i32 3)
  %i.cl = add nsw <4 x i32> %i.ck, %93
  %i.cm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cl, <4 x i32> zeroinitializer)
  %i.cn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cm, <4 x i32> splat (i32 255))
  %i.co = trunc nuw <4 x i32> %i.cn to <4 x i8>
  store <4 x i8> %i.co, ptr %75, align 1, !tbaa !12
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %95 = add nsw i32 %30, %27
  %96 = add nsw i32 %95, %i.aw                    ; 2 uses
  %97 = sub nsw i32 %36, %38                      ; 3 uses
  %98 = sub nsw i32 %35, %37                      ; 3 uses
  %99 = add nsw i32 %16, %76                      ; 2 uses
  %100 = add nsw i32 %i.c, %3                     ; 2 uses
  %101 = mul nsw i32 %97, 35468
  %102 = mul nsw i32 %98, 35468
  %i.cp = add nsw i32 %96, %100
  %i.cq = add nsw i32 %i.cp, 4                    ; 2 uses
  %i.cr = add nsw i32 %i.az, %99                  ; 2 uses
  %i.cs = add nsw i32 %i.cq, %i.cr                ; 2 uses
  %i.ct = sub nsw i32 %i.cq, %i.cr                ; 2 uses
  %i.cu = sub nsw i32 %i.cs, %i.ba
  %i.cv = sub nsw i32 %i.ct, %50
  %i.cw = add nsw i32 %50, %i.ct
  %i.cx = add nsw i32 %i.ba, %i.cs
  %i.cy = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cw, i64 1
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cv, i64 2
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cu, i64 3
  %i.dc = ashr <4 x i32> %i.db, splat (i32 3)
  %i.dd = add nsw <4 x i32> %i.dc, %52
  %i.de = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dd, <4 x i32> zeroinitializer)
  %i.df = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.de, <4 x i32> splat (i32 255))
  %i.dg = trunc nuw <4 x i32> %i.df to <4 x i8>
  store <4 x i8> %i.dg, ptr %1, align 1, !tbaa !12
  %i.dh = mul nsw i32 %98, 20091
  %i.di = ashr i32 %i.dh, 16
  %i.dj = mul nsw i32 %97, 20091
  %i.dk = ashr i32 %i.dj, 16
  %103 = sub nsw i32 %100, %96
  %i.dl = add nsw i32 %98, %i.di
  %i.dm = add nsw i32 %i.dk, %97
  %i.dn = sub nsw i32 %99, %i.az                  ; 2 uses
  %i.do = add nsw i32 %103, 4                     ; 2 uses
  %i.dp = ashr i32 %101, 16
  %i.dq = ashr i32 %102, 16
  %i.dr = add nsw i32 %i.do, %i.dn                ; 2 uses
  %i.ds = sub nsw i32 %i.do, %i.dn                ; 2 uses
  %i.dt = sub nsw i32 %i.dp, %i.dl                ; 2 uses
  %i.du = add nsw i32 %i.dm, %i.dq                ; 2 uses
  %i.dv = load <4 x i8>, ptr %94, align 1, !tbaa !12
  %i.dw = zext <4 x i8> %i.dv to <4 x i32>
  %i.dx = sub nsw i32 %i.dr, %i.du
  %i.dy = sub nsw i32 %i.ds, %i.dt
  %i.dz = add nsw i32 %i.dt, %i.ds
  %i.ea = add nsw i32 %i.du, %i.dr
  %i.eb = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %i.ec = insertelement <4 x i32> %i.eb, i32 %i.dz, i64 1
  %i.ed = insertelement <4 x i32> %i.ec, i32 %i.dy, i64 2
  %i.ee = insertelement <4 x i32> %i.ed, i32 %i.dx, i64 3
  %i.ef = ashr <4 x i32> %i.ee, splat (i32 3)
  %i.eg = add nsw <4 x i32> %i.ef, %i.dw
  %i.eh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eg, <4 x i32> zeroinitializer)
  %i.ei = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.eh, <4 x i32> splat (i32 255))
  %i.ej = trunc nuw <4 x i32> %i.ei to <4 x i8>
  store <4 x i8> %i.ej, ptr %94, align 1, !tbaa !12
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
  %i.ed = getelementptr inbounds i8, ptr %i.r, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !12
  %i.ef = sext i8 %i.ee to i32                    ; 3 uses
  %i.eg = mul nsw i32 %i.ef, 27
  %i.eh = add nsw i32 %i.eg, 63
  %i.ei = ashr i32 %i.eh, 7                       ; 2 uses
  %i.ej = mul nsw i32 %i.ef, 18
  %i.ek = add nsw i32 %i.ej, 62
  %i.el = ashr i32 %i.ek, 7                       ; 2 uses
  %i.em = mul nsw i32 %i.ef, 9
  %i.en = add nsw i32 %i.em, 63
  %i.eo = ashr i32 %i.en, 7                       ; 2 uses
  %i.ep = add nsw i32 %i.eo, %i.x
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.s, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !12
end_hunk_0
