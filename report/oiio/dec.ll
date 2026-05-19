inline.NumInlined: 52
inline.NumDeleted: 12
begin_hunk_0_@DC8uvNoLeft_C:bb.a
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
define internal void @DC8uvNoTopLeft_C(ptr noundef writeonly captures(none) initializes((0, 8), (32, 40), (64, 72), (96, 104), (128, 136), (160, 168), (192, 200), (224, 232)) %0) #6 {
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
define internal void @DitherCombine8x8_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef captures(none) %1, i32 noundef %2) #7 {
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
  br label %.preheader

.preheader:                                       ; preds = %.preheader.ph, %.preheader
  %store_forwarded = phi i8 [ %load_initial, %.preheader.ph ], [ %i.dr, %.preheader ]
  %.020 = phi ptr [ %0, %.preheader.ph ], [ %i.dp, %.preheader ] ; 2 uses
  %.01419 = phi ptr [ %1, %.preheader.ph ], [ %i.do, %.preheader ] ; 5 uses
  %.01518 = phi i32 [ 0, %.preheader.ph ], [ %i.dq, %.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.01419, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.01419, i64 7
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.cu = load <8 x i8>, ptr %.020, align 1, !tbaa !12
  %i.cv = zext <8 x i8> %i.cu to <8 x i32>
  %i.cw = add nsw <8 x i32> %i.cv, splat (i32 -120)
  %i.cx = ashr <8 x i32> %i.cw, splat (i32 4)
  %i.cy = insertelement <2 x i8> poison, i8 %store_forwarded, i64 0
  %i.cz = insertelement <2 x i8> %i.cy, i8 %i.ct, i64 1
  %i.da = load <4 x i8>, ptr %i.cr, align 1, !tbaa !12
  %i.db = load <2 x i8>, ptr %.01419, align 1, !tbaa !12
  %i.dc = zext <2 x i8> %i.db to <2 x i32>
  %i.dd = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.de = zext <4 x i8> %i.da to <4 x i32>
  %i.df = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <8 x i32> %i.dd, <8 x i32> %i.df, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.dh = zext <2 x i8> %i.cz to <2 x i32>
  %i.di = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <8 x i32> %i.dg, <8 x i32> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dk = add nsw <8 x i32> %i.cx, %i.dj
  %i.dl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dk, <8 x i32> zeroinitializer)
  %i.dm = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dl, <8 x i32> splat (i32 255))
  %i.dn = trunc nuw <8 x i32> %i.dm to <8 x i8>   ; 2 uses
  store <8 x i8> %i.dn, ptr %.01419, align 1, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %.01419, i64 %i.a
  %i.dp = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.dq = add nuw nsw i32 %.01518, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dq, 8
  %i.dr = extractelement <8 x i8> %i.dn, i64 7
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !19

.loopexit:                                        ; preds = %.preheader, %.preheader.lver.orig
  ret void
}

declare void @VP8DspInitSSE2() local_unnamed_addr #2

declare void @VP8DspInitSSE41() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @TransformOne_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef captures(none) %1) unnamed_addr #3 {
.preheader.preheader:
  %2 = load i16, ptr %0, align 2, !tbaa !10
  %3 = sext i16 %2 to i32                         ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load i16, ptr %i.a, align 2, !tbaa !10
  %5 = sext i16 %4 to i32                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = mul nsw i32 %i.e, 20091
  %i.g = ashr i32 %i.f, 16
  %6 = add nsw i32 %i.g, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18
  %7 = load i16, ptr %i.j, align 2, !tbaa !10
  %8 = sext i16 %7 to i32                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = load i16, ptr %i.k, align 2, !tbaa !10
  %i.m = sext i16 %i.l to i32                     ; 3 uses
  %i.n = mul nsw i32 %i.m, 35468
  %i.o = ashr i32 %i.n, 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %10 = load i16, ptr %9, align 2, !tbaa !10
  %i.p = sext i16 %10 to i32                      ; 3 uses
  %i.q = mul nsw i32 %i.p, 20091
  %i.r = ashr i32 %i.q, 16
  %11 = add nsw i32 %i.r, %i.p
  %12 = sub nsw i32 %i.o, %11                     ; 2 uses
  %13 = mul nsw i32 %i.m, 20091
  %14 = ashr i32 %13, 16
  %15 = mul nsw i32 %i.p, 35468
  %16 = ashr i32 %15, 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %17, align 2, !tbaa !10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i16, ptr %18, align 2, !tbaa !10
  %i.u = sext i16 %i.t to i32                     ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = load i16, ptr %19, align 2, !tbaa !10
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %22 = load i16, ptr %21, align 2, !tbaa !10
  %23 = sext i16 %22 to i32                       ; 3 uses
  %i.v = mul nsw i32 %23, 20091
  %i.w = ashr i32 %i.v, 16
  %24 = add nsw i32 %i.w, %23
  %i.x = mul nsw i32 %23, 35468
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %27 = load i16, ptr %26, align 2, !tbaa !10
  %28 = sext i16 %27 to i32                       ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %30 = load i16, ptr %29, align 2, !tbaa !10
  %31 = sext i16 %30 to i32                       ; 3 uses
  %i.y = mul nsw i32 %31, 35468
  %i.z = ashr i32 %i.y, 16
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %33 = load i16, ptr %32, align 2, !tbaa !10
  %34 = sext i16 %33 to i32                       ; 3 uses
  %i.aa = mul nsw i32 %34, 20091
  %i.ab = ashr i32 %i.aa, 16
  %35 = add nsw i32 %i.ab, %34
  %i.ac = sub nsw i32 %i.z, %35                   ; 2 uses
  %36 = mul nsw i32 %31, 20091
  %i.ad = ashr i32 %36, 16
  %i.ae = mul nsw i32 %34, 35468
  %i.af = ashr i32 %i.ae, 16
  %37 = load i16, ptr %i.b, align 2, !tbaa !10
  %38 = load i16, ptr %25, align 2, !tbaa !10
  %39 = sext i16 %20 to i32                       ; 3 uses
  %40 = sext i16 %37 to i32                       ; 3 uses
  %41 = sext i16 %i.i to i32                      ; 2 uses
  %42 = sext i16 %38 to i32                       ; 2 uses
  %43 = mul nsw i32 %40, 20091
  %44 = ashr i32 %43, 16
  %45 = ashr i32 %i.x, 16
  %46 = mul nsw i32 %39, 20091
  %47 = mul nsw i32 %i.e, 35468
  %48 = add nsw i32 %14, %i.m
  %49 = add nsw i32 %i.ad, %31
  %50 = ashr i32 %46, 16
  %51 = ashr i32 %47, 16
  %52 = add nsw i32 %28, %42                      ; 2 uses
  %53 = add nsw i32 %8, %41                       ; 2 uses
  %54 = add nsw i32 %49, %i.af                    ; 2 uses
  %55 = add nsw i32 %48, %16                      ; 2 uses
  %i.ag = add nsw i32 %50, %39
  %i.ah = add nsw i32 %54, %52                    ; 3 uses
  %i.ai = add nsw i32 %55, %53                    ; 3 uses
  %56 = add nsw i32 %i.ag, %45                    ; 2 uses
  %57 = mul nsw i32 %i.ai, 35468
  %58 = mul nsw i32 %i.ah, 35468
  %59 = mul nsw i32 %i.ah, 20091
  %60 = ashr i32 %59, 16
  %61 = mul nsw i32 %i.ai, 20091
  %62 = ashr i32 %61, 16
  %i.aj = add nsw i32 %i.ah, %60
  %i.ak = add nsw i32 %62, %i.ai
  %63 = ashr i32 %57, 16
  %64 = ashr i32 %58, 16
  %65 = sub nsw i32 %63, %i.aj                    ; 2 uses
  %i.al = add nsw i32 %i.ak, %64                  ; 2 uses
  %66 = load <4 x i8>, ptr %1, align 1, !tbaa !12
  %67 = zext <4 x i8> %66 to <4 x i32>
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.am = mul nsw i32 %39, 35468
  %i.an = mul nsw i32 %40, 35468
  %69 = sub nsw i32 %41, %8                       ; 2 uses
  %70 = sub nsw i32 %42, %28                      ; 2 uses
  %i.ao = ashr i32 %i.am, 16
  %i.ap = ashr i32 %i.an, 16
  %i.aq = add nsw i32 %12, %69                    ; 3 uses
  %i.ar = add nsw i32 %i.ac, %70                  ; 3 uses
  %71 = sub nsw i32 %i.ao, %24                    ; 2 uses
  %i.as = sub nsw i32 %i.ap, %6                   ; 2 uses
  %72 = mul nsw i32 %i.aq, 35468
  %i.at = mul nsw i32 %i.ar, 35468
  %i.au = mul nsw i32 %i.ar, 20091
  %i.av = ashr i32 %i.au, 16
  %i.aw = mul nsw i32 %i.aq, 20091
  %i.ax = ashr i32 %i.aw, 16
  %i.ay = add nsw i32 %i.ar, %i.av
  %i.az = add nsw i32 %i.ax, %i.aq
  %i.ba = ashr i32 %72, 16
  %i.bb = ashr i32 %i.at, 16
  %i.bc = sub nsw i32 %i.ba, %i.ay                ; 2 uses
  %i.bd = add nsw i32 %i.az, %i.bb                ; 2 uses
  %73 = load <4 x i8>, ptr %68, align 1, !tbaa !12
  %74 = zext <4 x i8> %73 to <4 x i32>
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %76 = sext i16 %i.s to i32                      ; 2 uses
  %i.be = sub nsw i32 %3, %5                      ; 2 uses
  %i.bf = sub nsw i32 %69, %12                    ; 3 uses
  %i.bg = sub nsw i32 %70, %i.ac                  ; 3 uses
  %77 = add nsw i32 %i.as, %i.be
  %i.bh = sub nsw i32 %76, %i.u                   ; 2 uses
  %i.bi = sub nsw i32 %i.be, %i.as
  %78 = mul nsw i32 %i.bf, 35468
  %79 = mul nsw i32 %i.bg, 35468
  %i.bj = add nsw i32 %71, %i.bh                  ; 2 uses
  %i.bk = add nsw i32 %77, 4                      ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.bj                ; 2 uses
  %i.bm = sub nsw i32 %i.bk, %i.bj                ; 2 uses
  %i.bn = sub nsw i32 %i.bl, %i.bd
  %i.bo = sub nsw i32 %i.bm, %i.bc
  %i.bp = add nsw i32 %i.bc, %i.bm
  %i.bq = add nsw i32 %i.bd, %i.bl
  %i.br = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bp, i64 1
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.bo, i64 2
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bn, i64 3
  %i.bv = ashr <4 x i32> %i.bu, splat (i32 3)
  %i.bw = add nsw <4 x i32> %i.bv, %74
  %i.bx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bw, <4 x i32> zeroinitializer)
  %i.by = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bx, <4 x i32> splat (i32 255))
  %i.bz = trunc nuw <4 x i32> %i.by to <4 x i8>
  store <4 x i8> %i.bz, ptr %68, align 1, !tbaa !12
  %80 = mul nsw i32 %i.bg, 20091
  %81 = ashr i32 %80, 16
  %82 = mul nsw i32 %i.bf, 20091
  %83 = ashr i32 %82, 16
  %i.ca = sub nsw i32 %i.bh, %71                  ; 2 uses
  %84 = ashr i32 %78, 16
  %85 = ashr i32 %79, 16
  %86 = add nsw i32 %i.bi, 4                      ; 2 uses
  %i.cb = add nsw i32 %i.bg, %81
  %i.cc = add nsw i32 %83, %i.bf
  %i.cd = add nsw i32 %86, %i.ca                  ; 2 uses
  %87 = sub nsw i32 %86, %i.ca                    ; 2 uses
  %i.ce = sub nsw i32 %84, %i.cb                  ; 2 uses
  %88 = add nsw i32 %i.cc, %85                    ; 2 uses
  %89 = load <4 x i8>, ptr %75, align 1, !tbaa !12
  %90 = zext <4 x i8> %89 to <4 x i32>
  %i.cf = sub nsw i32 %i.cd, %88
  %i.cg = sub nsw i32 %87, %i.ce
  %i.ch = add nsw i32 %i.ce, %87
  %i.ci = add nsw i32 %88, %i.cd
  %i.cj = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.ch, i64 1
  %i.cl = insertelement <4 x i32> %i.ck, i32 %i.cg, i64 2
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.cf, i64 3
  %i.cn = ashr <4 x i32> %i.cm, splat (i32 3)
  %i.co = add nsw <4 x i32> %i.cn, %90
  %i.cp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.co, <4 x i32> zeroinitializer)
  %i.cq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cp, <4 x i32> splat (i32 255))
  %i.cr = trunc nuw <4 x i32> %i.cq to <4 x i8>
  store <4 x i8> %i.cr, ptr %75, align 1, !tbaa !12
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %92 = add nsw i32 %44, %40
  %93 = add nsw i32 %92, %51                      ; 2 uses
  %94 = sub nsw i32 %53, %55                      ; 3 uses
  %i.cs = sub nsw i32 %52, %54                    ; 3 uses
  %95 = add nsw i32 %i.u, %76                     ; 2 uses
  %96 = add nsw i32 %5, %3                        ; 2 uses
  %97 = mul nsw i32 %94, 35468
  %98 = mul nsw i32 %i.cs, 35468
  %i.ct = add nsw i32 %93, %96
  %i.cu = add nsw i32 %i.ct, 4                    ; 2 uses
  %99 = add nsw i32 %56, %95                      ; 2 uses
  %100 = add nsw i32 %i.cu, %99                   ; 2 uses
  %101 = sub nsw i32 %i.cu, %99                   ; 2 uses
  %i.cv = sub nsw i32 %100, %i.al
  %i.cw = sub nsw i32 %101, %65
  %i.cx = add nsw i32 %65, %101
  %i.cy = add nsw i32 %i.al, %100
  %i.cz = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cx, i64 1
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cw, i64 2
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cv, i64 3
  %i.dd = ashr <4 x i32> %i.dc, splat (i32 3)
  %i.de = add nsw <4 x i32> %i.dd, %67
  %i.df = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.de, <4 x i32> zeroinitializer)
  %i.dg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.df, <4 x i32> splat (i32 255))
  %i.dh = trunc nuw <4 x i32> %i.dg to <4 x i8>
  store <4 x i8> %i.dh, ptr %1, align 1, !tbaa !12
  %i.di = mul nsw i32 %i.cs, 20091
  %i.dj = ashr i32 %i.di, 16
  %i.dk = mul nsw i32 %94, 20091
  %i.dl = ashr i32 %i.dk, 16
  %102 = sub nsw i32 %96, %93
  %i.dm = add nsw i32 %i.cs, %i.dj
  %103 = add nsw i32 %i.dl, %94
  %i.dn = sub nsw i32 %95, %56                    ; 2 uses
  %i.do = add nsw i32 %102, 4                     ; 2 uses
  %i.dp = ashr i32 %97, 16
  %i.dq = ashr i32 %98, 16
  %i.dr = add nsw i32 %i.do, %i.dn                ; 2 uses
  %i.ds = sub nsw i32 %i.do, %i.dn                ; 2 uses
  %i.dt = sub nsw i32 %i.dp, %i.dm                ; 2 uses
  %i.du = add nsw i32 %103, %i.dq                 ; 2 uses
  %i.dv = load <4 x i8>, ptr %91, align 1, !tbaa !12
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
  store <4 x i8> %i.ej, ptr %91, align 1, !tbaa !12
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @FilterLoop26_C(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 8, 17) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #8 {
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
