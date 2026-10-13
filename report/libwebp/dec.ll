Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/dec?download=true
inline.NumInlined: 52
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@DitherCombine8x8_C:.preheader.lver.check
  %i.s = zext <8 x i8> %i.r to <8 x i32>
  %i.t = add nsw <8 x i32> %i.q, %i.s
  %i.u = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.t, <8 x i32> zeroinitializer)
  %i.v = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.u, <8 x i32> splat (i32 255))
  %i.w = trunc nuw <8 x i32> %i.v to <8 x i8>
  store <8 x i8> %i.w, ptr %i.l, align 1, !tbaa !14
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.a ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load <8 x i8>, ptr %i.y, align 1, !tbaa !14
  %i.aa = zext <8 x i8> %i.z to <8 x i32>
  %i.ab = add nsw <8 x i32> %i.aa, splat (i32 -120)
  %i.ac = ashr <8 x i32> %i.ab, splat (i32 4)
  %i.ad = load <8 x i8>, ptr %i.x, align 1, !tbaa !14
  %i.ae = zext <8 x i8> %i.ad to <8 x i32>
  %i.af = add nsw <8 x i32> %i.ac, %i.ae
  %i.ag = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.af, <8 x i32> zeroinitializer)
  %i.ah = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ag, <8 x i32> splat (i32 255))
  %i.ai = trunc nuw <8 x i32> %i.ah to <8 x i8>
  store <8 x i8> %i.ai, ptr %i.x, align 1, !tbaa !14
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 %i.a ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load <8 x i8>, ptr %i.ak, align 1, !tbaa !14
  %i.am = zext <8 x i8> %i.al to <8 x i32>
  %i.an = add nsw <8 x i32> %i.am, splat (i32 -120)
  %i.ao = ashr <8 x i32> %i.an, splat (i32 4)
  %i.ap = load <8 x i8>, ptr %i.aj, align 1, !tbaa !14
  %i.aq = zext <8 x i8> %i.ap to <8 x i32>
  %i.ar = add nsw <8 x i32> %i.ao, %i.aq
  %i.as = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ar, <8 x i32> zeroinitializer)
  %i.at = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.as, <8 x i32> splat (i32 255))
  %i.au = trunc nuw <8 x i32> %i.at to <8 x i8>
  store <8 x i8> %i.au, ptr %i.aj, align 1, !tbaa !14
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 %i.a ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load <8 x i8>, ptr %i.aw, align 1, !tbaa !14
  %i.ay = zext <8 x i8> %i.ax to <8 x i32>
  %i.az = add nsw <8 x i32> %i.ay, splat (i32 -120)
  %i.ba = ashr <8 x i32> %i.az, splat (i32 4)
  %i.bb = load <8 x i8>, ptr %i.av, align 1, !tbaa !14
  %i.bc = zext <8 x i8> %i.bb to <8 x i32>
  %i.bd = add nsw <8 x i32> %i.ba, %i.bc
  %i.be = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bd, <8 x i32> zeroinitializer)
  %i.bf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.be, <8 x i32> splat (i32 255))
  %i.bg = trunc nuw <8 x i32> %i.bf to <8 x i8>
  store <8 x i8> %i.bg, ptr %i.av, align 1, !tbaa !14
  %i.bh = getelementptr inbounds i8, ptr %i.av, i64 %i.a ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load <8 x i8>, ptr %i.bi, align 1, !tbaa !14
  %i.bk = zext <8 x i8> %i.bj to <8 x i32>
  %i.bl = add nsw <8 x i32> %i.bk, splat (i32 -120)
  %i.bm = ashr <8 x i32> %i.bl, splat (i32 4)
  %i.bn = load <8 x i8>, ptr %i.bh, align 1, !tbaa !14
  %i.bo = zext <8 x i8> %i.bn to <8 x i32>
  %i.bp = add nsw <8 x i32> %i.bm, %i.bo
  %i.bq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bp, <8 x i32> zeroinitializer)
  %i.br = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bq, <8 x i32> splat (i32 255))
  %i.bs = trunc nuw <8 x i32> %i.br to <8 x i8>
  store <8 x i8> %i.bs, ptr %i.bh, align 1, !tbaa !14
  %i.bt = getelementptr inbounds i8, ptr %i.bh, i64 %i.a ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load <8 x i8>, ptr %i.bu, align 1, !tbaa !14
  %i.bw = zext <8 x i8> %i.bv to <8 x i32>
  %i.bx = add nsw <8 x i32> %i.bw, splat (i32 -120)
  %i.by = ashr <8 x i32> %i.bx, splat (i32 4)
  %i.bz = load <8 x i8>, ptr %i.bt, align 1, !tbaa !14
  %i.ca = zext <8 x i8> %i.bz to <8 x i32>
  %i.cb = add nsw <8 x i32> %i.by, %i.ca
  %i.cc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cb, <8 x i32> zeroinitializer)
  %i.cd = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cc, <8 x i32> splat (i32 255))
  %i.ce = trunc nuw <8 x i32> %i.cd to <8 x i8>
  store <8 x i8> %i.ce, ptr %i.bt, align 1, !tbaa !14
  %i.cf = getelementptr inbounds i8, ptr %i.bt, i64 %i.a ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load <8 x i8>, ptr %i.cg, align 1, !tbaa !14
  %i.ci = zext <8 x i8> %i.ch to <8 x i32>
  %i.cj = add nsw <8 x i32> %i.ci, splat (i32 -120)
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 4)
  %i.cl = load <8 x i8>, ptr %i.cf, align 1, !tbaa !14
  %i.cm = zext <8 x i8> %i.cl to <8 x i32>
  %i.cn = add nsw <8 x i32> %i.ck, %i.cm
  %i.co = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cn, <8 x i32> zeroinitializer)
  %i.cp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.co, <8 x i32> splat (i32 255))
  %i.cq = trunc nuw <8 x i32> %i.cp to <8 x i8>
  store <8 x i8> %i.cq, ptr %i.cf, align 1, !tbaa !14
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
  %i.cs = load <2 x i8>, ptr %.01419, align 1, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %.01419, i64 2
  %i.cu = load <4 x i8>, ptr %i.ct, align 1, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %.01419, i64 7
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = zext i8 %i.cw to i32
  %i.cy = load <8 x i8>, ptr %.020, align 1, !tbaa !14
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
  store <8 x i8> %i.dm, ptr %.01419, align 1, !tbaa !14
  %i.dn = getelementptr inbounds nuw i8, ptr %.01419, i64 %i.a
  %i.do = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.dp = add nuw nsw i32 %.01518, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, 8
  %i.dq = extractelement <8 x i32> %i.dl, i64 7
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !20

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
  %i.c = load i16, ptr %i.b, align 2, !tbaa !13
  %i.d = sext i16 %i.c to i32                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = mul nsw i32 %i.d, 20091
  %i.g = ashr i32 %i.f, 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !13
  %i.l = sext i16 %i.k to i32                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.n = mul nsw i32 %i.l, 20091
  %i.o = ashr i32 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i16, ptr %i.r, align 2, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.x = load i16, ptr %i.w, align 2, !tbaa !13
  %i.y = sext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.aa = mul nsw i32 %i.y, 20091
  %i.ab = ashr i32 %i.aa, 16
  %i.ac = sext i16 %i.s to i32                    ; 3 uses
  %i.ad = mul nsw i32 %i.ac, 20091
  %i.ae = ashr i32 %i.ad, 16
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = load <4 x i8>, ptr %1, align 1, !tbaa !14
  %i.ah = zext <4 x i8> %i.ag to <4 x i32>
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = load <4 x i8>, ptr %i.ai, align 1, !tbaa !14
  %i.ak = zext <4 x i8> %i.aj to <4 x i32>
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.am = mul nsw i32 %i.d, 35468
  %i.an = load i16, ptr %i.e, align 2, !tbaa !13
  %i.ao = sext i16 %i.an to i32                   ; 3 uses
  %i.ap = mul nsw i32 %i.ao, 20091
  %i.aq = ashr i32 %i.ap, 16
  %i.ar = mul nsw i32 %i.ao, 35468
  %i.as = mul nsw i32 %i.l, 35468
  %i.at = load i16, ptr %i.m, align 2, !tbaa !13
  %i.au = sext i16 %i.at to i32                   ; 3 uses
  %i.av = mul nsw i32 %i.au, 20091
  %i.aw = ashr i32 %i.av, 16
  %i.ax = mul nsw i32 %i.au, 35468
  %i.ay = load i16, ptr %i.t, align 2, !tbaa !13
  %i.az = sext i16 %i.ay to i32                   ; 3 uses
  %i.ba = mul nsw i32 %i.az, 20091
  %i.bb = ashr i32 %i.ba, 16
  %i.bc = mul nsw i32 %i.az, 35468
  %i.bd = mul nsw i32 %i.y, 35468
  %i.be = load i16, ptr %i.z, align 2, !tbaa !13
  %i.bf = sext i16 %i.be to i32                   ; 3 uses
  %i.bg = mul nsw i32 %i.bf, 20091
  %i.bh = ashr i32 %i.bg, 16
  %i.bi = mul nsw i32 %i.bf, 35468
  %i.bj = mul nsw i32 %i.ac, 35468
  %i.bk = ashr i32 %i.bc, 16
  %i.bl = ashr i32 %i.am, 16
  %i.bm = add nsw i32 %i.aq, %i.ao
  %i.bn = sub nsw i32 %i.bl, %i.bm                ; 2 uses
  %i.bo = ashr i32 %i.as, 16
  %i.bp = add nsw i32 %i.aw, %i.au
  %i.bq = sub nsw i32 %i.bo, %i.bp                ; 2 uses
  %i.br = add nsw i32 %i.bb, %i.az
  %i.bs = ashr i32 %i.bd, 16
  %i.bt = add nsw i32 %i.bh, %i.bf
  %i.bu = sub nsw i32 %i.bs, %i.bt                ; 2 uses
  %i.bv = ashr i32 %i.bj, 16
  %i.bw = sub nsw i32 %i.bv, %i.br                ; 2 uses
  %i.bx = load <4 x i8>, ptr %i.al, align 1, !tbaa !14
  %i.by = zext <4 x i8> %i.bx to <4 x i32>
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ca = add nsw i32 %i.g, %i.d
  %i.cb = add nsw i32 %i.o, %i.l
  %i.cc = add nsw i32 %i.ab, %i.y
  %i.cd = load i16, ptr %0, align 2, !tbaa !13
  %i.ce = sext i16 %i.cd to i32                   ; 2 uses
  %i.cf = load i16, ptr %i.h, align 2, !tbaa !13
  %i.cg = sext i16 %i.cf to i32                   ; 2 uses
  %i.ch = load i16, ptr %i.p, align 2, !tbaa !13
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = load i16, ptr %i.q, align 2, !tbaa !13
  %i.ck = sext i16 %i.cj to i32                   ; 2 uses
  %i.cl = load i16, ptr %i.u, align 2, !tbaa !13
  %i.cm = sext i16 %i.cl to i32                   ; 2 uses
  %i.cn = load i16, ptr %i.v, align 2, !tbaa !13
  %i.co = load i16, ptr %i.a, align 2, !tbaa !13
  %i.cp = sext i16 %i.co to i32                   ; 2 uses
  %i.cq = add nsw i32 %i.cp, %i.ce                ; 2 uses
  %i.cr = ashr i32 %i.ar, 16
  %i.cs = add nsw i32 %i.ca, %i.cr                ; 2 uses
  %i.ct = add nsw i32 %i.cs, %i.cq
  %i.cu = sub nsw i32 %i.cq, %i.cs
  %i.cv = load i16, ptr %i.i, align 2, !tbaa !13
  %i.cw = sext i16 %i.cv to i32                   ; 2 uses
  %i.cx = add nsw i32 %i.cw, %i.cg                ; 2 uses
  %i.cy = ashr i32 %i.ax, 16
  %i.cz = add nsw i32 %i.cb, %i.cy                ; 2 uses
  %i.da = add nsw i32 %i.cz, %i.cx                ; 3 uses
  %i.db = sub nsw i32 %i.cx, %i.cz                ; 3 uses
  %2 = add nsw i32 %i.ck, %i.ci                   ; 2 uses
  %i.dc = add nsw i32 %i.af, %i.bk                ; 2 uses
  %i.dd = add nsw i32 %i.dc, %2                   ; 2 uses
  %i.de = sub nsw i32 %2, %i.dc                   ; 2 uses
  %i.df = sext i16 %i.cn to i32                   ; 2 uses
  %i.dg = add nsw i32 %i.df, %i.cm                ; 2 uses
  %i.dh = ashr i32 %i.bi, 16
  %i.di = add nsw i32 %i.cc, %i.dh                ; 2 uses
  %i.dj = add nsw i32 %i.di, %i.dg                ; 3 uses
  %i.dk = sub nsw i32 %i.dg, %i.di                ; 3 uses
  %i.dl = add nsw i32 %i.ct, 4                    ; 2 uses
  %i.dm = add nsw i32 %i.dl, %i.dd                ; 2 uses
  %i.dn = sub nsw i32 %i.dl, %i.dd                ; 2 uses
  %i.do = mul nsw i32 %i.da, 35468
  %i.dp = ashr i32 %i.do, 16
  %i.dq = mul nsw i32 %i.dj, 20091
  %i.dr = ashr i32 %i.dq, 16
  %i.ds = add nsw i32 %i.dj, %i.dr
  %i.dt = sub nsw i32 %i.dp, %i.ds                ; 2 uses
  %i.du = mul nsw i32 %i.da, 20091
  %i.dv = ashr i32 %i.du, 16
  %i.dw = add nsw i32 %i.dv, %i.da
  %i.dx = mul nsw i32 %i.dj, 35468
  %i.dy = ashr i32 %i.dx, 16
  %i.dz = add nsw i32 %i.dw, %i.dy                ; 2 uses
  %i.ea = add nsw i32 %i.dz, %i.dm
  %i.eb = add nsw i32 %i.dt, %i.dn
  %i.ec = sub nsw i32 %i.dn, %i.dt
  %i.ed = sub nsw i32 %i.dm, %i.dz
  %i.ee = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %i.ef = insertelement <4 x i32> %i.ee, i32 %i.eb, i64 1
  %i.eg = insertelement <4 x i32> %i.ef, i32 %i.ec, i64 2
  %i.eh = insertelement <4 x i32> %i.eg, i32 %i.ed, i64 3
  %i.ei = ashr <4 x i32> %i.eh, splat (i32 3)
  %i.ej = add nsw <4 x i32> %i.ei, %i.ah
  %i.ek = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ej, <4 x i32> zeroinitializer)
  %i.el = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ek, <4 x i32> splat (i32 255))
  %i.em = trunc nuw <4 x i32> %i.el to <4 x i8>
  store <4 x i8> %i.em, ptr %1, align 1, !tbaa !14
  %3 = sub nsw i32 %i.ci, %i.ck                   ; 2 uses
  %i.en = sub nsw i32 %i.ce, %i.cp                ; 2 uses
  %i.eo = add nsw i32 %i.bn, %i.en
  %i.ep = sub nsw i32 %i.en, %i.bn
  %i.eq = sub nsw i32 %i.cg, %i.cw                ; 2 uses
  %i.er = add nsw i32 %i.bq, %i.eq                ; 3 uses
  %i.es = sub nsw i32 %i.eq, %i.bq                ; 3 uses
  %i.et = add nsw i32 %i.bw, %3                   ; 2 uses
  %i.eu = sub nsw i32 %3, %i.bw                   ; 2 uses
  %i.ev = sub nsw i32 %i.cm, %i.df                ; 2 uses
  %i.ew = add nsw i32 %i.bu, %i.ev                ; 3 uses
  %i.ex = sub nsw i32 %i.ev, %i.bu                ; 3 uses
  %i.ey = add nsw i32 %i.eo, 4                    ; 2 uses
  %i.ez = add nsw i32 %i.ey, %i.et                ; 2 uses
  %i.fa = sub nsw i32 %i.ey, %i.et                ; 2 uses
  %i.fb = mul nsw i32 %i.er, 35468
  %i.fc = ashr i32 %i.fb, 16
  %i.fd = mul nsw i32 %i.ew, 20091
  %i.fe = ashr i32 %i.fd, 16
  %i.ff = add nsw i32 %i.ew, %i.fe
  %i.fg = sub nsw i32 %i.fc, %i.ff                ; 2 uses
  %i.fh = mul nsw i32 %i.er, 20091
  %i.fi = ashr i32 %i.fh, 16
  %i.fj = add nsw i32 %i.fi, %i.er
  %i.fk = mul nsw i32 %i.ew, 35468
  %i.fl = ashr i32 %i.fk, 16
  %i.fm = add nsw i32 %i.fj, %i.fl                ; 2 uses
  %i.fn = add nsw i32 %i.fm, %i.ez
  %i.fo = add nsw i32 %i.fg, %i.fa
  %i.fp = sub nsw i32 %i.fa, %i.fg
  %i.fq = sub nsw i32 %i.ez, %i.fm
  %i.fr = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fo, i64 1
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 2
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 3
  %i.fv = ashr <4 x i32> %i.fu, splat (i32 3)
  %i.fw = add nsw <4 x i32> %i.fv, %i.ak
  %i.fx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fw, <4 x i32> zeroinitializer)
  %i.fy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fx, <4 x i32> splat (i32 255))
  %i.fz = trunc nuw <4 x i32> %i.fy to <4 x i8>
  store <4 x i8> %i.fz, ptr %i.ai, align 1, !tbaa !14
  %i.ga = add nsw i32 %i.ep, 4                    ; 2 uses
  %i.gb = add nsw i32 %i.ga, %i.eu                ; 2 uses
  %i.gc = sub nsw i32 %i.ga, %i.eu                ; 2 uses
  %i.gd = mul nsw i32 %i.es, 35468
  %i.ge = ashr i32 %i.gd, 16
  %i.gf = mul nsw i32 %i.ex, 20091
  %i.gg = ashr i32 %i.gf, 16
  %i.gh = add nsw i32 %i.ex, %i.gg
  %i.gi = sub nsw i32 %i.ge, %i.gh                ; 2 uses
  %i.gj = mul nsw i32 %i.es, 20091
  %i.gk = ashr i32 %i.gj, 16
  %i.gl = add nsw i32 %i.gk, %i.es
  %i.gm = mul nsw i32 %i.ex, 35468
  %i.gn = ashr i32 %i.gm, 16
  %i.go = add nsw i32 %i.gl, %i.gn                ; 2 uses
  %i.gp = add nsw i32 %i.go, %i.gb
  %i.gq = add nsw i32 %i.gi, %i.gc
  %i.gr = sub nsw i32 %i.gc, %i.gi
  %i.gs = sub nsw i32 %i.gb, %i.go
  %i.gt = insertelement <4 x i32> poison, i32 %i.gp, i64 0
  %i.gu = insertelement <4 x i32> %i.gt, i32 %i.gq, i64 1
  %i.gv = insertelement <4 x i32> %i.gu, i32 %i.gr, i64 2
  %i.gw = insertelement <4 x i32> %i.gv, i32 %i.gs, i64 3
  %i.gx = ashr <4 x i32> %i.gw, splat (i32 3)
  %i.gy = add nsw <4 x i32> %i.gx, %i.by
  %i.gz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gy, <4 x i32> zeroinitializer)
  %i.ha = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gz, <4 x i32> splat (i32 255))
  %i.hb = trunc nuw <4 x i32> %i.ha to <4 x i8>
  store <4 x i8> %i.hb, ptr %i.al, align 1, !tbaa !14
  %i.hc = add nsw i32 %i.cu, 4                    ; 2 uses
  %i.hd = add nsw i32 %i.hc, %i.de                ; 2 uses
  %i.he = sub nsw i32 %i.hc, %i.de                ; 2 uses
  %i.hf = mul nsw i32 %i.db, 35468
  %i.hg = ashr i32 %i.hf, 16
  %i.hh = mul nsw i32 %i.dk, 20091
  %i.hi = ashr i32 %i.hh, 16
  %i.hj = add nsw i32 %i.dk, %i.hi
  %i.hk = sub nsw i32 %i.hg, %i.hj                ; 2 uses
  %i.hl = mul nsw i32 %i.db, 20091
  %i.hm = ashr i32 %i.hl, 16
  %i.hn = add nsw i32 %i.hm, %i.db
  %i.ho = mul nsw i32 %i.dk, 35468
  %i.hp = ashr i32 %i.ho, 16
  %i.hq = add nsw i32 %i.hn, %i.hp                ; 2 uses
  %i.hr = add nsw i32 %i.hq, %i.hd
  %i.hs = add nsw i32 %i.hk, %i.he
  %i.ht = sub nsw i32 %i.he, %i.hk
  %i.hu = load <4 x i8>, ptr %i.bz, align 1, !tbaa !14
  %i.hv = zext <4 x i8> %i.hu to <4 x i32>
  %i.hw = sub nsw i32 %i.hd, %i.hq
  %i.hx = insertelement <4 x i32> poison, i32 %i.hr, i64 0
  %i.hy = insertelement <4 x i32> %i.hx, i32 %i.hs, i64 1
  %i.hz = insertelement <4 x i32> %i.hy, i32 %i.ht, i64 2
  %i.ia = insertelement <4 x i32> %i.hz, i32 %i.hw, i64 3
  %i.ib = ashr <4 x i32> %i.ia, splat (i32 3)
  %i.ic = add nsw <4 x i32> %i.ib, %i.hv
  %i.id = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ic, <4 x i32> zeroinitializer)
  %i.ie = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.id, <4 x i32> splat (i32 255))
  %i.if = trunc nuw <4 x i32> %i.ie to <4 x i8>
  store <4 x i8> %i.if, ptr %i.bz, align 1, !tbaa !14
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
  %i.n = load ptr, ptr @VP8kabs0, align 8, !tbaa !16 ; 10 uses
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
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.020, i64 %i.f ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %.020, i64 %i.h ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14  ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 6 uses
  %i.ae = load i8, ptr %.020, align 1, !tbaa !14  ; 2 uses
  %i.af = zext i8 %i.ae to i32                    ; 6 uses
  %i.ag = getelementptr inbounds i8, ptr %.020, i64 %i.i ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14  ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %.020, i64 %i.k ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i32                    ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.020, i64 %i.m
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = zext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.ad, %i.af
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 2
  %i.av = sub nsw i32 %i.aa, %i.ai
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.n, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.au, %i.az
  %i.bb = icmp sgt i32 %i.ba, %i.b
  br i1 %i.bb, label %NeedsFilter2_C.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds i8, ptr %.020, i64 %i.q
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i32
  %i.bf = sub nsw i32 %i.be, %i.x
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.n, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bj = zext i8 %i.bi to i32
  %.not.i = icmp slt i32 %5, %i.bj
  br i1 %.not.i, label %NeedsFilter2_C.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = sub nsw i32 %i.x, %i.aa
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.n, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14
  %i.bo = zext i8 %i.bn to i32
  %.not39.i = icmp samesign ult i32 %5, %i.bo
  br i1 %.not39.i, label %NeedsFilter2_C.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = sub nsw i32 %i.aa, %i.ad
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.n, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i32
  %.not40.i = icmp samesign ult i32 %5, %i.bt
  br i1 %.not40.i, label %NeedsFilter2_C.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = sub nsw i32 %i.ao, %i.al
  %i.bv = sext i32 %i.bu to i64
end_hunk_0
