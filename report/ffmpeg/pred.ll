Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pred?download=true
loop-unroll.NumCompletelyUnrolled: 289
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 353
begin_hunk_0_@ref_filter_3tap_9:bb.a

vector.memcheck56:                                ; preds = %.lr.ph42.preheader
  %i.cc = shl nuw nsw i64 %i.by, 1                ; 4 uses
  %i.cd = add nsw i32 %i.a, -2
  %smin57 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.ce = sub i32 %i.cd, %smin57
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = sub nsw i64 %i.cc, %i.cg
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.ch
  %i.ci = getelementptr i8, ptr %1, i64 %i.cc
  %scevgep59 = getelementptr i8, ptr %i.ci, i64 2
  %i.cj = add nsw i64 %i.cc, -2
  %i.ck = sub nsw i64 %i.cj, %i.cg
  %scevgep60 = getelementptr i8, ptr %3, i64 %i.ck
  %i.cl = getelementptr i8, ptr %3, i64 %i.cc
  %scevgep61 = getelementptr i8, ptr %i.cl, i64 4
  %bound062 = icmp ult ptr %scevgep58, %scevgep61
  %bound163 = icmp ult ptr %scevgep60, %scevgep59
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph42.preheader82, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck56
  %i.cm = and i32 %i.cb, -8
  %n.vec68 = zext i32 %i.cm to i64                ; 2 uses
  %i.cn = sub nsw i64 %i.by, %n.vec68
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next78, %vector.body69 ] ; 2 uses
  %i.co = sub i64 %i.by, %index70                 ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -12
  %wide.load71 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !82, !alias.scope !316
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -14
  %wide.load73 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !82, !alias.scope !316
  %i.cs = getelementptr i8, ptr %i.cp, i64 -16
  %wide.load75 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !316
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.co
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -14
  %i.cv = zext <8 x i16> %wide.load71 to <8 x i32>
  %i.cw = add nuw nsw <8 x i32> %i.cv, splat (i32 2)
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = shl nuw nsw <8 x i32> %i.cx, splat (i32 1)
  %i.cz = add nuw nsw <8 x i32> %i.cw, %i.cy
  %i.da = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.db = add nuw nsw <8 x i32> %i.cz, %i.da
  %i.dc = lshr <8 x i32> %i.db, splat (i32 2)
  %reverse77 = trunc nuw <8 x i32> %i.dc to <8 x i16>
  store <8 x i16> %reverse77, ptr %i.cu, align 2, !tbaa !82, !alias.scope !317, !noalias !316
  %index.next78 = add nuw i64 %index70, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next78, %n.vec68
  br i1 %i.dd, label %.lr.ph42.preheader82, label %vector.body69, !llvm.loop !312

.lr.ph42.preheader82:                             ; preds = %vector.body69, %vector.memcheck56, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.by, %vector.memcheck56 ], [ %i.by, %.lr.ph42.preheader ], [ %i.cn, %vector.body69 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader82, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader82 ] ; 4 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !82
  %i.dh = zext i16 %i.dg to i32
  %i.di = load i16, ptr %i.de, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = getelementptr i8, ptr %i.de, i64 -2
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !82
  %i.dn = zext i16 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dh, 2
  %i.dp = add nuw nsw i32 %i.do, %i.dk
  %i.dq = add nuw nsw i32 %i.dp, %i.dn
  %i.dr = lshr i32 %i.dq, 2
  %i.ds = trunc nuw i32 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.du = trunc nuw i64 %indvars.iv45 to i32
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph42, label %._crit_edge43, !llvm.loop !313

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_9(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !82
  %scevgep = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.g = load i16, ptr %i.a, align 2, !tbaa !82
  %i.h = zext i16 %i.g to i32
  %i.i = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.j = xor i32 %i.i, 63
  %i.k = mul nuw nsw i32 %i.j, %i.h
  %i.l = load i16, ptr %i.d, align 2, !tbaa !82
  %i.m = zext i16 %i.l to i32
  %i.n = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.o = mul nuw nsw i32 %i.n, %i.m
  %i.p = add nuw nsw i32 %i.k, 32
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 6
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.u = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !323
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.u, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.v = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.w = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !323
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.x = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.y = mul nuw nsw <8 x i32> %i.x, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.z = mul nuw nsw <8 x i32> %i.v, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.aa = add nuw nsw <8 x i32> %i.y, splat (i32 32)
  %i.ab = add nuw nsw <8 x i32> %i.aa, %i.z
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 6)
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  store <8 x i16> %i.ad, ptr %0, align 2, !tbaa !82, !alias.scope !324, !noalias !323
  %i.ae = mul nuw nsw <8 x i32> %i.x, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.af = mul nuw nsw <8 x i32> %i.v, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ag = add nuw nsw <8 x i32> %i.ae, splat (i32 32)
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.af
  %i.ai = lshr <8 x i32> %i.ah, splat (i32 6)
  %i.aj = trunc <8 x i32> %i.ai to <8 x i16>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !82, !alias.scope !324, !noalias !323
  %i.al = mul nuw nsw <8 x i32> %i.x, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.am = mul nuw nsw <8 x i32> %i.v, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.an = add nuw nsw <8 x i32> %i.al, splat (i32 32)
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.am
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !82, !alias.scope !324, !noalias !323
  %i.as = mul nuw nsw <8 x i32> %i.x, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.at = mul nuw nsw <8 x i32> %i.v, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.au = add nuw nsw <8 x i32> %i.as, splat (i32 32)
  %i.av = add nuw nsw <8 x i32> %i.au, %i.at
  %i.aw = lshr <8 x i32> %i.av, splat (i32 6)
  %i.ax = trunc <8 x i32> %i.aw to <8 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !82, !alias.scope !324, !noalias !323
  %i.az = mul nuw nsw <8 x i32> %i.x, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ba = mul nuw nsw <8 x i32> %i.v, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bb = add nuw nsw <8 x i32> %i.az, splat (i32 32)
  %i.bc = add nuw nsw <8 x i32> %i.bb, %i.ba
  %i.bd = lshr <8 x i32> %i.bc, splat (i32 6)
  %i.be = trunc <8 x i32> %i.bd to <8 x i16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.be, ptr %i.bf, align 2, !tbaa !82, !alias.scope !324, !noalias !323
  %i.bg = mul nuw nsw <8 x i32> %i.x, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bh = mul nuw nsw <8 x i32> %i.v, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bi = add nuw nsw <8 x i32> %i.bg, splat (i32 32)
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.bh
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !324, !noalias !323
  %i.bn = mul nuw nsw <8 x i32> %i.x, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bo = mul nuw nsw <8 x i32> %i.v, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bp = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bq = add nuw nsw <8 x i32> %i.bp, %i.bo
  %i.br = lshr <8 x i32> %i.bq, splat (i32 6)
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bs, ptr %i.bt, align 2, !tbaa !82, !alias.scope !324, !noalias !323
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !82 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.bx = zext i16 %i.bv to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next42, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next43, %vector.body37 ] ; 3 uses
  %i.by = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.bz = mul nuw nsw <8 x i64> %i.by, %broadcast.splat36
  %i.ca = load i16, ptr %i.bw, align 2, !tbaa !82
  %broadcast.splatinsert40 = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat41 = shufflevector <8 x i16> %broadcast.splatinsert40, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cb = zext <8 x i16> %broadcast.splat41 to <8 x i32>
  %3 = trunc <8 x i64> %vec.ind39 to <8 x i32>
  %4 = add <8 x i32> %3, splat (i32 1)
  %i.cc = mul nuw nsw <8 x i32> %4, %i.cb
  %i.cd = trunc nuw nsw <8 x i64> %i.bz to <8 x i32>
  %i.ce = add nuw nsw <8 x i32> %i.cd, splat (i32 32)
  %i.cf = add nuw nsw <8 x i32> %i.ce, %i.cc
  %i.cg = lshr <8 x i32> %i.cf, splat (i32 6)
  %i.ch = trunc <8 x i32> %i.cg to <8 x i16>
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ch, ptr %i.ci, align 2, !tbaa !82
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next43 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %i.cj = icmp eq i64 %index.next42, 56
  br i1 %i.cj, label %scalar.ph33, label %vector.body37, !llvm.loop !321

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ck = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cl = zext i16 %i.ck to i32
  %i.cm = trunc i64 %indvars.iv to i32
  %i.cn = sub i32 63, %i.cm
  %i.co = mul nuw nsw i32 %i.cn, %i.cl
  %i.cp = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cq = zext i16 %i.cp to i32
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cs = mul nuw nsw i32 %i.cr, %i.cq
  %i.ct = add nuw nsw i32 %i.co, 32
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  %i.cv = lshr i32 %i.cu, 6
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cz = zext i16 %i.cy to i32
  %i.da = trunc i64 %indvars.iv.next to i32
  %i.db = sub i32 63, %i.da
  %i.dc = mul nuw nsw i32 %i.db, %i.cz
  %i.dd = load i16, ptr %i.d, align 2, !tbaa !82
  %i.de = zext i16 %i.dd to i32
  %i.df = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dg = mul nuw nsw i32 %i.df, %i.de
  %i.dh = add nuw nsw i32 %i.dc, 32
  %i.di = add nuw nsw i32 %i.dh, %i.dg
  %i.dj = lshr i32 %i.di, 6
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !322

scalar.ph33:                                      ; preds = %vector.body37
  %i.dm = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.dn = zext i16 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.dn, 57
  %i.dp = zext i16 %i.bv to i32
  %i.dq = mul nuw nsw i32 %i.dp, 7
  %i.dr = add nuw nsw i32 %i.dq, 32
  %i.ds = add nuw nsw i32 %i.dr, %i.do
  %i.dt = lshr i32 %i.ds, 6
  %i.du = trunc i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %i.dw = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, 58
  %i.dz = zext i16 %i.bv to i32
  %i.ea = mul nuw nsw i32 %i.dz, 6
  %i.eb = add nuw nsw i32 %i.ea, 32
  %i.ec = add nuw nsw i32 %i.eb, %i.dy
  %i.ed = lshr i32 %i.ec, 6
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !82
  %i.eg = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.eh = zext i16 %i.eg to i32
  %i.ei = mul nuw nsw i32 %i.eh, 59
  %i.ej = zext i16 %i.bv to i32
  %i.ek = mul nuw nsw i32 %i.ej, 5
  %i.el = add nuw nsw i32 %i.ek, 32
  %i.em = add nuw nsw i32 %i.el, %i.ei
  %i.en = lshr i32 %i.em, 6
  %i.eo = trunc i32 %i.en to i16
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !82
  %i.eq = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.er = zext i16 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, 60
  %.tr = zext i16 %i.bv to i32
  %i.et = shl nuw nsw i32 %.tr, 2
  %i.eu = add nuw nsw i32 %i.et, 32
  %i.ev = add nuw nsw i32 %i.eu, %i.es
  %i.ew = lshr i32 %i.ev, 6
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !82
  %i.ez = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.fa = zext i16 %i.ez to i32
  %i.fb = mul nuw nsw i32 %i.fa, 61
  %i.fc = zext i16 %i.bv to i32
  %i.fd = mul nuw nsw i32 %i.fc, 3
  %i.fe = add nuw nsw i32 %i.fd, 32
  %i.ff = add nuw nsw i32 %i.fe, %i.fb
  %i.fg = lshr i32 %i.ff, 6
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !82
  %i.fj = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.fk = zext i16 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, 62
  %.tr45 = zext i16 %i.bv to i32
  %i.fm = shl nuw nsw i32 %.tr45, 1
  %i.fn = add nuw nsw i32 %i.fm, 32
  %i.fo = add nuw nsw i32 %i.fn, %i.fl
  %i.fp = lshr i32 %i.fo, 6
  %i.fq = trunc i32 %i.fp to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !82
  %i.fs = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.ft = zext i16 %i.fs to i32
  %i.fu = mul nuw nsw i32 %i.ft, 63
  %i.fv = zext i16 %i.bv to i32
  %i.fw = add nuw nsw i32 %i.fv, 32
  %i.fx = add nuw nsw i32 %i.fw, %i.fu
  %i.fy = lshr i32 %i.fx, 6
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_10(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i16], align 16              ; 29 uses
  %i.b = alloca [81 x i16], align 16              ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20264
  %i.h = sext i32 %4 to i64                       ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !77   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20276
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 15 uses
  %i.n = shl i32 4, %i.j                          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 18604
  %i.p = load i32, ptr %i.o, align 4, !tbaa !113  ; 5 uses
  %i.q = ashr i32 %i.n, %i.p
  %i.r = shl i32 4, %i.m                          ; 3 uses
  %i.s = ashr i32 %i.r, %i.p                      ; 2 uses
  %i.t = ashr i32 %2, %i.j
  %i.u = ashr i32 %3, %i.m
  %i.v = ashr i32 %2, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20260
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114  ; 5 uses
  %i.y = and i32 %i.v, %i.x                       ; 3 uses
  %i.z = ashr i32 %3, %i.p
  %i.aa = and i32 %i.z, %i.x                      ; 3 uses
  %i.ab = icmp eq i32 %4, 0                       ; 2 uses
  %i.ac = icmp ne i32 %i.s, 0
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  %.sink263.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sink263.sroa.gep356 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = shl nsw i32 %3, 1
  %i.ae = shl nuw i32 1, %i.p
  %i.af = and i32 %i.ae, %i.ad
  %i.ag = icmp ne i32 %i.af, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = phi i1 [ %i.ag, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !115 ; 3 uses
  %i.ak = add nsw i32 %i.x, 2                     ; 3 uses
  %i.al = mul nsw i32 %i.aa, %i.ak
  %i.am = add nsw i32 %i.al, %i.y
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !77 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 12072
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !164 ; 15 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.h
  %i.av = load i32, ptr %i.au, align 4, !tbaa !77 ; 2 uses
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 28 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.h
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !165 ; 4 uses
  %i.ba = sext i32 %i.t to i64                    ; 3 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = sext i32 %i.u to i64                    ; 3 uses
  %i.bd = mul nsw i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bd ; 25 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 20252
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !166 ; 19 uses
  %.in.i.v = select i1 %i.ab, i64 280, i64 284
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.i.v
  %i.bh = load i32, ptr %.in.i, align 4, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 24 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 13 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 31284
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !167
end_hunk_0
begin_hunk_1_@ref_filter_3tap_10:bb.a

vector.memcheck56:                                ; preds = %.lr.ph42.preheader
  %i.cc = shl nuw nsw i64 %i.by, 1                ; 4 uses
  %i.cd = add nsw i32 %i.a, -2
  %smin57 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.ce = sub i32 %i.cd, %smin57
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = sub nsw i64 %i.cc, %i.cg
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.ch
  %i.ci = getelementptr i8, ptr %1, i64 %i.cc
  %scevgep59 = getelementptr i8, ptr %i.ci, i64 2
  %i.cj = add nsw i64 %i.cc, -2
  %i.ck = sub nsw i64 %i.cj, %i.cg
  %scevgep60 = getelementptr i8, ptr %3, i64 %i.ck
  %i.cl = getelementptr i8, ptr %3, i64 %i.cc
  %scevgep61 = getelementptr i8, ptr %i.cl, i64 4
  %bound062 = icmp ult ptr %scevgep58, %scevgep61
  %bound163 = icmp ult ptr %scevgep60, %scevgep59
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph42.preheader82, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck56
  %i.cm = and i32 %i.cb, -8
  %n.vec68 = zext i32 %i.cm to i64                ; 2 uses
  %i.cn = sub nsw i64 %i.by, %n.vec68
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next78, %vector.body69 ] ; 2 uses
  %i.co = sub i64 %i.by, %index70                 ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -12
  %wide.load71 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !82, !alias.scope !421
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -14
  %wide.load73 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !82, !alias.scope !421
  %i.cs = getelementptr i8, ptr %i.cp, i64 -16
  %wide.load75 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !421
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.co
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -14
  %i.cv = zext <8 x i16> %wide.load71 to <8 x i32>
  %i.cw = add nuw nsw <8 x i32> %i.cv, splat (i32 2)
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = shl nuw nsw <8 x i32> %i.cx, splat (i32 1)
  %i.cz = add nuw nsw <8 x i32> %i.cw, %i.cy
  %i.da = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.db = add nuw nsw <8 x i32> %i.cz, %i.da
  %i.dc = lshr <8 x i32> %i.db, splat (i32 2)
  %reverse77 = trunc nuw <8 x i32> %i.dc to <8 x i16>
  store <8 x i16> %reverse77, ptr %i.cu, align 2, !tbaa !82, !alias.scope !422, !noalias !421
  %index.next78 = add nuw i64 %index70, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next78, %n.vec68
  br i1 %i.dd, label %.lr.ph42.preheader82, label %vector.body69, !llvm.loop !417

.lr.ph42.preheader82:                             ; preds = %vector.body69, %vector.memcheck56, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.by, %vector.memcheck56 ], [ %i.by, %.lr.ph42.preheader ], [ %i.cn, %vector.body69 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader82, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader82 ] ; 4 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !82
  %i.dh = zext i16 %i.dg to i32
  %i.di = load i16, ptr %i.de, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = getelementptr i8, ptr %i.de, i64 -2
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !82
  %i.dn = zext i16 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dh, 2
  %i.dp = add nuw nsw i32 %i.do, %i.dk
  %i.dq = add nuw nsw i32 %i.dp, %i.dn
  %i.dr = lshr i32 %i.dq, 2
  %i.ds = trunc nuw i32 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.du = trunc nuw i64 %indvars.iv45 to i32
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph42, label %._crit_edge43, !llvm.loop !418

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_10(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !82
  %scevgep = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.g = load i16, ptr %i.a, align 2, !tbaa !82
  %i.h = zext i16 %i.g to i32
  %i.i = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.j = xor i32 %i.i, 63
  %i.k = mul nuw nsw i32 %i.j, %i.h
  %i.l = load i16, ptr %i.d, align 2, !tbaa !82
  %i.m = zext i16 %i.l to i32
  %i.n = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.o = mul nuw nsw i32 %i.n, %i.m
  %i.p = add nuw nsw i32 %i.k, 32
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 6
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.u = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !428
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.u, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.v = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.w = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !428
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.x = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.y = mul nuw nsw <8 x i32> %i.x, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.z = mul nuw nsw <8 x i32> %i.v, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.aa = add nuw nsw <8 x i32> %i.y, splat (i32 32)
  %i.ab = add nuw nsw <8 x i32> %i.aa, %i.z
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 6)
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  store <8 x i16> %i.ad, ptr %0, align 2, !tbaa !82, !alias.scope !429, !noalias !428
  %i.ae = mul nuw nsw <8 x i32> %i.x, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.af = mul nuw nsw <8 x i32> %i.v, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ag = add nuw nsw <8 x i32> %i.ae, splat (i32 32)
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.af
  %i.ai = lshr <8 x i32> %i.ah, splat (i32 6)
  %i.aj = trunc <8 x i32> %i.ai to <8 x i16>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !82, !alias.scope !429, !noalias !428
  %i.al = mul nuw nsw <8 x i32> %i.x, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.am = mul nuw nsw <8 x i32> %i.v, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.an = add nuw nsw <8 x i32> %i.al, splat (i32 32)
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.am
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !82, !alias.scope !429, !noalias !428
  %i.as = mul nuw nsw <8 x i32> %i.x, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.at = mul nuw nsw <8 x i32> %i.v, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.au = add nuw nsw <8 x i32> %i.as, splat (i32 32)
  %i.av = add nuw nsw <8 x i32> %i.au, %i.at
  %i.aw = lshr <8 x i32> %i.av, splat (i32 6)
  %i.ax = trunc <8 x i32> %i.aw to <8 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !82, !alias.scope !429, !noalias !428
  %i.az = mul nuw nsw <8 x i32> %i.x, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ba = mul nuw nsw <8 x i32> %i.v, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bb = add nuw nsw <8 x i32> %i.az, splat (i32 32)
  %i.bc = add nuw nsw <8 x i32> %i.bb, %i.ba
  %i.bd = lshr <8 x i32> %i.bc, splat (i32 6)
  %i.be = trunc <8 x i32> %i.bd to <8 x i16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.be, ptr %i.bf, align 2, !tbaa !82, !alias.scope !429, !noalias !428
  %i.bg = mul nuw nsw <8 x i32> %i.x, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bh = mul nuw nsw <8 x i32> %i.v, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bi = add nuw nsw <8 x i32> %i.bg, splat (i32 32)
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.bh
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !429, !noalias !428
  %i.bn = mul nuw nsw <8 x i32> %i.x, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bo = mul nuw nsw <8 x i32> %i.v, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bp = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bq = add nuw nsw <8 x i32> %i.bp, %i.bo
  %i.br = lshr <8 x i32> %i.bq, splat (i32 6)
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bs, ptr %i.bt, align 2, !tbaa !82, !alias.scope !429, !noalias !428
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !82 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.bx = zext i16 %i.bv to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next42, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next43, %vector.body37 ] ; 3 uses
  %i.by = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.bz = mul nuw nsw <8 x i64> %i.by, %broadcast.splat36
  %i.ca = load i16, ptr %i.bw, align 2, !tbaa !82
  %broadcast.splatinsert40 = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat41 = shufflevector <8 x i16> %broadcast.splatinsert40, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cb = zext <8 x i16> %broadcast.splat41 to <8 x i32>
  %3 = trunc <8 x i64> %vec.ind39 to <8 x i32>
  %4 = add <8 x i32> %3, splat (i32 1)
  %i.cc = mul nuw nsw <8 x i32> %4, %i.cb
  %i.cd = trunc nuw nsw <8 x i64> %i.bz to <8 x i32>
  %i.ce = add nuw nsw <8 x i32> %i.cd, splat (i32 32)
  %i.cf = add nuw nsw <8 x i32> %i.ce, %i.cc
  %i.cg = lshr <8 x i32> %i.cf, splat (i32 6)
  %i.ch = trunc <8 x i32> %i.cg to <8 x i16>
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ch, ptr %i.ci, align 2, !tbaa !82
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next43 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %i.cj = icmp eq i64 %index.next42, 56
  br i1 %i.cj, label %scalar.ph33, label %vector.body37, !llvm.loop !426

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ck = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cl = zext i16 %i.ck to i32
  %i.cm = trunc i64 %indvars.iv to i32
  %i.cn = sub i32 63, %i.cm
  %i.co = mul nuw nsw i32 %i.cn, %i.cl
  %i.cp = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cq = zext i16 %i.cp to i32
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cs = mul nuw nsw i32 %i.cr, %i.cq
  %i.ct = add nuw nsw i32 %i.co, 32
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  %i.cv = lshr i32 %i.cu, 6
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cz = zext i16 %i.cy to i32
  %i.da = trunc i64 %indvars.iv.next to i32
  %i.db = sub i32 63, %i.da
  %i.dc = mul nuw nsw i32 %i.db, %i.cz
  %i.dd = load i16, ptr %i.d, align 2, !tbaa !82
  %i.de = zext i16 %i.dd to i32
  %i.df = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dg = mul nuw nsw i32 %i.df, %i.de
  %i.dh = add nuw nsw i32 %i.dc, 32
  %i.di = add nuw nsw i32 %i.dh, %i.dg
  %i.dj = lshr i32 %i.di, 6
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !427

scalar.ph33:                                      ; preds = %vector.body37
  %i.dm = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.dn = zext i16 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.dn, 57
  %i.dp = zext i16 %i.bv to i32
  %i.dq = mul nuw nsw i32 %i.dp, 7
  %i.dr = add nuw nsw i32 %i.dq, 32
  %i.ds = add nuw nsw i32 %i.dr, %i.do
  %i.dt = lshr i32 %i.ds, 6
  %i.du = trunc i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %i.dw = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, 58
  %i.dz = zext i16 %i.bv to i32
  %i.ea = mul nuw nsw i32 %i.dz, 6
  %i.eb = add nuw nsw i32 %i.ea, 32
  %i.ec = add nuw nsw i32 %i.eb, %i.dy
  %i.ed = lshr i32 %i.ec, 6
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !82
  %i.eg = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.eh = zext i16 %i.eg to i32
  %i.ei = mul nuw nsw i32 %i.eh, 59
  %i.ej = zext i16 %i.bv to i32
  %i.ek = mul nuw nsw i32 %i.ej, 5
  %i.el = add nuw nsw i32 %i.ek, 32
  %i.em = add nuw nsw i32 %i.el, %i.ei
  %i.en = lshr i32 %i.em, 6
  %i.eo = trunc i32 %i.en to i16
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !82
  %i.eq = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.er = zext i16 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, 60
  %.tr = zext i16 %i.bv to i32
  %i.et = shl nuw nsw i32 %.tr, 2
  %i.eu = add nuw nsw i32 %i.et, 32
  %i.ev = add nuw nsw i32 %i.eu, %i.es
  %i.ew = lshr i32 %i.ev, 6
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !82
  %i.ez = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.fa = zext i16 %i.ez to i32
  %i.fb = mul nuw nsw i32 %i.fa, 61
  %i.fc = zext i16 %i.bv to i32
  %i.fd = mul nuw nsw i32 %i.fc, 3
  %i.fe = add nuw nsw i32 %i.fd, 32
  %i.ff = add nuw nsw i32 %i.fe, %i.fb
  %i.fg = lshr i32 %i.ff, 6
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !82
  %i.fj = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.fk = zext i16 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, 62
  %.tr45 = zext i16 %i.bv to i32
  %i.fm = shl nuw nsw i32 %.tr45, 1
  %i.fn = add nuw nsw i32 %i.fm, 32
  %i.fo = add nuw nsw i32 %i.fn, %i.fl
  %i.fp = lshr i32 %i.fo, 6
  %i.fq = trunc i32 %i.fp to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !82
  %i.fs = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.ft = zext i16 %i.fs to i32
  %i.fu = mul nuw nsw i32 %i.ft, 63
  %i.fv = zext i16 %i.bv to i32
  %i.fw = add nuw nsw i32 %i.fv, 32
  %i.fx = add nuw nsw i32 %i.fw, %i.fu
  %i.fy = lshr i32 %i.fx, 6
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_12(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i16], align 16              ; 29 uses
  %i.b = alloca [81 x i16], align 16              ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20264
  %i.h = sext i32 %4 to i64                       ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !77   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20276
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 15 uses
  %i.n = shl i32 4, %i.j                          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 18604
  %i.p = load i32, ptr %i.o, align 4, !tbaa !113  ; 5 uses
  %i.q = ashr i32 %i.n, %i.p
  %i.r = shl i32 4, %i.m                          ; 3 uses
  %i.s = ashr i32 %i.r, %i.p                      ; 2 uses
  %i.t = ashr i32 %2, %i.j
  %i.u = ashr i32 %3, %i.m
  %i.v = ashr i32 %2, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20260
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114  ; 5 uses
  %i.y = and i32 %i.v, %i.x                       ; 3 uses
  %i.z = ashr i32 %3, %i.p
  %i.aa = and i32 %i.z, %i.x                      ; 3 uses
  %i.ab = icmp eq i32 %4, 0                       ; 2 uses
  %i.ac = icmp ne i32 %i.s, 0
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  %.sink263.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sink263.sroa.gep356 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = shl nsw i32 %3, 1
  %i.ae = shl nuw i32 1, %i.p
  %i.af = and i32 %i.ae, %i.ad
  %i.ag = icmp ne i32 %i.af, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = phi i1 [ %i.ag, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !115 ; 3 uses
  %i.ak = add nsw i32 %i.x, 2                     ; 3 uses
  %i.al = mul nsw i32 %i.aa, %i.ak
  %i.am = add nsw i32 %i.al, %i.y
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !77 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 12072
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !164 ; 15 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.h
  %i.av = load i32, ptr %i.au, align 4, !tbaa !77 ; 2 uses
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 28 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.h
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !165 ; 4 uses
  %i.ba = sext i32 %i.t to i64                    ; 3 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = sext i32 %i.u to i64                    ; 3 uses
  %i.bd = mul nsw i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bd ; 25 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 20252
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !166 ; 19 uses
  %.in.i.v = select i1 %i.ab, i64 280, i64 284
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.i.v
  %i.bh = load i32, ptr %.in.i, align 4, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 24 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 13 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 31284
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !167
end_hunk_1
begin_hunk_2_@ref_filter_3tap_12:bb.a

vector.memcheck56:                                ; preds = %.lr.ph42.preheader
  %i.cc = shl nuw nsw i64 %i.by, 1                ; 4 uses
  %i.cd = add nsw i32 %i.a, -2
  %smin57 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.ce = sub i32 %i.cd, %smin57
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = sub nsw i64 %i.cc, %i.cg
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.ch
  %i.ci = getelementptr i8, ptr %1, i64 %i.cc
  %scevgep59 = getelementptr i8, ptr %i.ci, i64 2
  %i.cj = add nsw i64 %i.cc, -2
  %i.ck = sub nsw i64 %i.cj, %i.cg
  %scevgep60 = getelementptr i8, ptr %3, i64 %i.ck
  %i.cl = getelementptr i8, ptr %3, i64 %i.cc
  %scevgep61 = getelementptr i8, ptr %i.cl, i64 4
  %bound062 = icmp ult ptr %scevgep58, %scevgep61
  %bound163 = icmp ult ptr %scevgep60, %scevgep59
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph42.preheader82, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck56
  %i.cm = and i32 %i.cb, -8
  %n.vec68 = zext i32 %i.cm to i64                ; 2 uses
  %i.cn = sub nsw i64 %i.by, %n.vec68
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next78, %vector.body69 ] ; 2 uses
  %i.co = sub i64 %i.by, %index70                 ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -12
  %wide.load71 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !82, !alias.scope !526
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -14
  %wide.load73 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !82, !alias.scope !526
  %i.cs = getelementptr i8, ptr %i.cp, i64 -16
  %wide.load75 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !526
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.co
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -14
  %i.cv = zext <8 x i16> %wide.load71 to <8 x i32>
  %i.cw = add nuw nsw <8 x i32> %i.cv, splat (i32 2)
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = shl nuw nsw <8 x i32> %i.cx, splat (i32 1)
  %i.cz = add nuw nsw <8 x i32> %i.cw, %i.cy
  %i.da = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.db = add nuw nsw <8 x i32> %i.cz, %i.da
  %i.dc = lshr <8 x i32> %i.db, splat (i32 2)
  %reverse77 = trunc nuw <8 x i32> %i.dc to <8 x i16>
  store <8 x i16> %reverse77, ptr %i.cu, align 2, !tbaa !82, !alias.scope !527, !noalias !526
  %index.next78 = add nuw i64 %index70, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next78, %n.vec68
  br i1 %i.dd, label %.lr.ph42.preheader82, label %vector.body69, !llvm.loop !522

.lr.ph42.preheader82:                             ; preds = %vector.body69, %vector.memcheck56, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.by, %vector.memcheck56 ], [ %i.by, %.lr.ph42.preheader ], [ %i.cn, %vector.body69 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader82, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader82 ] ; 4 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !82
  %i.dh = zext i16 %i.dg to i32
  %i.di = load i16, ptr %i.de, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = getelementptr i8, ptr %i.de, i64 -2
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !82
  %i.dn = zext i16 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dh, 2
  %i.dp = add nuw nsw i32 %i.do, %i.dk
  %i.dq = add nuw nsw i32 %i.dp, %i.dn
  %i.dr = lshr i32 %i.dq, 2
  %i.ds = trunc nuw i32 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.du = trunc nuw i64 %indvars.iv45 to i32
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph42, label %._crit_edge43, !llvm.loop !523

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_12(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !82
  %scevgep = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.g = load i16, ptr %i.a, align 2, !tbaa !82
  %i.h = zext i16 %i.g to i32
  %i.i = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.j = xor i32 %i.i, 63
  %i.k = mul nuw nsw i32 %i.j, %i.h
  %i.l = load i16, ptr %i.d, align 2, !tbaa !82
  %i.m = zext i16 %i.l to i32
  %i.n = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.o = mul nuw nsw i32 %i.n, %i.m
  %i.p = add nuw nsw i32 %i.k, 32
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 6
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.u = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !533
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.u, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.v = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.w = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !533
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.x = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.y = mul nuw nsw <8 x i32> %i.x, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.z = mul nuw nsw <8 x i32> %i.v, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.aa = add nuw nsw <8 x i32> %i.y, splat (i32 32)
  %i.ab = add nuw nsw <8 x i32> %i.aa, %i.z
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 6)
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  store <8 x i16> %i.ad, ptr %0, align 2, !tbaa !82, !alias.scope !534, !noalias !533
  %i.ae = mul nuw nsw <8 x i32> %i.x, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.af = mul nuw nsw <8 x i32> %i.v, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ag = add nuw nsw <8 x i32> %i.ae, splat (i32 32)
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.af
  %i.ai = lshr <8 x i32> %i.ah, splat (i32 6)
  %i.aj = trunc <8 x i32> %i.ai to <8 x i16>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !82, !alias.scope !534, !noalias !533
  %i.al = mul nuw nsw <8 x i32> %i.x, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.am = mul nuw nsw <8 x i32> %i.v, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.an = add nuw nsw <8 x i32> %i.al, splat (i32 32)
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.am
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !82, !alias.scope !534, !noalias !533
  %i.as = mul nuw nsw <8 x i32> %i.x, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.at = mul nuw nsw <8 x i32> %i.v, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.au = add nuw nsw <8 x i32> %i.as, splat (i32 32)
  %i.av = add nuw nsw <8 x i32> %i.au, %i.at
  %i.aw = lshr <8 x i32> %i.av, splat (i32 6)
  %i.ax = trunc <8 x i32> %i.aw to <8 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !82, !alias.scope !534, !noalias !533
  %i.az = mul nuw nsw <8 x i32> %i.x, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ba = mul nuw nsw <8 x i32> %i.v, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bb = add nuw nsw <8 x i32> %i.az, splat (i32 32)
  %i.bc = add nuw nsw <8 x i32> %i.bb, %i.ba
  %i.bd = lshr <8 x i32> %i.bc, splat (i32 6)
  %i.be = trunc <8 x i32> %i.bd to <8 x i16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.be, ptr %i.bf, align 2, !tbaa !82, !alias.scope !534, !noalias !533
  %i.bg = mul nuw nsw <8 x i32> %i.x, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bh = mul nuw nsw <8 x i32> %i.v, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bi = add nuw nsw <8 x i32> %i.bg, splat (i32 32)
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.bh
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !534, !noalias !533
  %i.bn = mul nuw nsw <8 x i32> %i.x, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bo = mul nuw nsw <8 x i32> %i.v, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bp = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bq = add nuw nsw <8 x i32> %i.bp, %i.bo
  %i.br = lshr <8 x i32> %i.bq, splat (i32 6)
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bs, ptr %i.bt, align 2, !tbaa !82, !alias.scope !534, !noalias !533
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !82 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.bx = zext i16 %i.bv to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next42, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next43, %vector.body37 ] ; 3 uses
  %i.by = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.bz = mul nuw nsw <8 x i64> %i.by, %broadcast.splat36
  %i.ca = load i16, ptr %i.bw, align 2, !tbaa !82
  %broadcast.splatinsert40 = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat41 = shufflevector <8 x i16> %broadcast.splatinsert40, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cb = zext <8 x i16> %broadcast.splat41 to <8 x i32>
  %3 = trunc <8 x i64> %vec.ind39 to <8 x i32>
  %4 = add <8 x i32> %3, splat (i32 1)
  %i.cc = mul nuw nsw <8 x i32> %4, %i.cb
  %i.cd = trunc nuw nsw <8 x i64> %i.bz to <8 x i32>
  %i.ce = add nuw nsw <8 x i32> %i.cd, splat (i32 32)
  %i.cf = add nuw nsw <8 x i32> %i.ce, %i.cc
  %i.cg = lshr <8 x i32> %i.cf, splat (i32 6)
  %i.ch = trunc <8 x i32> %i.cg to <8 x i16>
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ch, ptr %i.ci, align 2, !tbaa !82
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next43 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %i.cj = icmp eq i64 %index.next42, 56
  br i1 %i.cj, label %scalar.ph33, label %vector.body37, !llvm.loop !531

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ck = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cl = zext i16 %i.ck to i32
  %i.cm = trunc i64 %indvars.iv to i32
  %i.cn = sub i32 63, %i.cm
  %i.co = mul nuw nsw i32 %i.cn, %i.cl
  %i.cp = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cq = zext i16 %i.cp to i32
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cs = mul nuw nsw i32 %i.cr, %i.cq
  %i.ct = add nuw nsw i32 %i.co, 32
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  %i.cv = lshr i32 %i.cu, 6
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cz = zext i16 %i.cy to i32
  %i.da = trunc i64 %indvars.iv.next to i32
  %i.db = sub i32 63, %i.da
  %i.dc = mul nuw nsw i32 %i.db, %i.cz
  %i.dd = load i16, ptr %i.d, align 2, !tbaa !82
  %i.de = zext i16 %i.dd to i32
  %i.df = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dg = mul nuw nsw i32 %i.df, %i.de
  %i.dh = add nuw nsw i32 %i.dc, 32
  %i.di = add nuw nsw i32 %i.dh, %i.dg
  %i.dj = lshr i32 %i.di, 6
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !532

scalar.ph33:                                      ; preds = %vector.body37
  %i.dm = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.dn = zext i16 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.dn, 57
  %i.dp = zext i16 %i.bv to i32
  %i.dq = mul nuw nsw i32 %i.dp, 7
  %i.dr = add nuw nsw i32 %i.dq, 32
  %i.ds = add nuw nsw i32 %i.dr, %i.do
  %i.dt = lshr i32 %i.ds, 6
  %i.du = trunc i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %i.dw = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, 58
  %i.dz = zext i16 %i.bv to i32
  %i.ea = mul nuw nsw i32 %i.dz, 6
  %i.eb = add nuw nsw i32 %i.ea, 32
  %i.ec = add nuw nsw i32 %i.eb, %i.dy
  %i.ed = lshr i32 %i.ec, 6
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !82
  %i.eg = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.eh = zext i16 %i.eg to i32
  %i.ei = mul nuw nsw i32 %i.eh, 59
  %i.ej = zext i16 %i.bv to i32
  %i.ek = mul nuw nsw i32 %i.ej, 5
  %i.el = add nuw nsw i32 %i.ek, 32
  %i.em = add nuw nsw i32 %i.el, %i.ei
  %i.en = lshr i32 %i.em, 6
  %i.eo = trunc i32 %i.en to i16
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !82
  %i.eq = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.er = zext i16 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, 60
  %.tr = zext i16 %i.bv to i32
  %i.et = shl nuw nsw i32 %.tr, 2
  %i.eu = add nuw nsw i32 %i.et, 32
  %i.ev = add nuw nsw i32 %i.eu, %i.es
  %i.ew = lshr i32 %i.ev, 6
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !82
  %i.ez = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.fa = zext i16 %i.ez to i32
  %i.fb = mul nuw nsw i32 %i.fa, 61
  %i.fc = zext i16 %i.bv to i32
  %i.fd = mul nuw nsw i32 %i.fc, 3
  %i.fe = add nuw nsw i32 %i.fd, 32
  %i.ff = add nuw nsw i32 %i.fe, %i.fb
  %i.fg = lshr i32 %i.ff, 6
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !82
  %i.fj = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.fk = zext i16 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, 62
  %.tr45 = zext i16 %i.bv to i32
  %i.fm = shl nuw nsw i32 %.tr45, 1
  %i.fn = add nuw nsw i32 %i.fm, 32
  %i.fo = add nuw nsw i32 %i.fn, %i.fl
  %i.fp = lshr i32 %i.fo, 6
  %i.fq = trunc i32 %i.fp to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !82
  %i.fs = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.ft = zext i16 %i.fs to i32
  %i.fu = mul nuw nsw i32 %i.ft, 63
  %i.fv = zext i16 %i.bv to i32
  %i.fw = add nuw nsw i32 %i.fv, 32
  %i.fx = add nuw nsw i32 %i.fw, %i.fu
  %i.fy = lshr i32 %i.fx, 6
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 27 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca [81 x i8], align 16               ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20264
  %i.i = sext i32 %4 to i64                       ; 4 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !77   ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 20276
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !77   ; 15 uses
  %i.o = shl i32 4, %i.k                          ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 18604
  %i.q = load i32, ptr %i.p, align 4, !tbaa !113  ; 5 uses
  %i.r = ashr i32 %i.o, %i.q
  %i.s = shl i32 4, %i.n                          ; 3 uses
  %i.t = ashr i32 %i.s, %i.q                      ; 2 uses
  %i.u = ashr i32 %2, %i.k
  %i.v = ashr i32 %3, %i.n
  %i.w = ashr i32 %2, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 20260
  %i.y = load i32, ptr %i.x, align 4, !tbaa !114  ; 5 uses
  %i.z = and i32 %i.w, %i.y                       ; 3 uses
  %i.aa = ashr i32 %3, %i.q
  %i.ab = and i32 %i.aa, %i.y                     ; 3 uses
  %i.ac = icmp eq i32 %4, 0                       ; 2 uses
  %i.ad = icmp ne i32 %i.t, 0
  %or.cond.i = select i1 %i.ac, i1 true, i1 %i.ad
  %.sink262.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.sink262.sroa.gep357 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = shl nsw i32 %3, 1
  %i.af = shl nuw i32 1, %i.q
  %i.ag = and i32 %i.af, %i.ae
  %i.ah = icmp ne i32 %i.ag, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ai = phi i1 [ %i.ah, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115 ; 3 uses
  %i.al = add nsw i32 %i.y, 2                     ; 3 uses
  %i.am = mul nsw i32 %i.ab, %i.al
  %i.an = add nsw i32 %i.am, %i.z
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !77 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 12072
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !164 ; 15 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !78 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !77 ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 17 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !165 ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = sext i32 %i.u to i64                    ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  %i.bd = sext i32 %i.v to i64                    ; 2 uses
  %i.be = mul nsw i64 %i.ax, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be ; 19 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 20252
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !166 ; 20 uses
  %.in.i.v = select i1 %i.ac, i64 280, i64 284
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.i.v
  %i.bi = load i32, ptr %.in.i, align 4, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 26 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 12 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 31284
end_hunk_2
begin_hunk_3_@ref_filter_3tap_8:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -7
  %i.ay = zext <8 x i8> %wide.load60 to <8 x i16>
  %i.az = add nuw nsw <8 x i16> %i.ay, splat (i16 2)
  %i.ba = zext <8 x i8> %wide.load62 to <8 x i16>
  %i.bb = shl nuw nsw <8 x i16> %i.ba, splat (i16 1)
  %i.bc = add nuw nsw <8 x i16> %i.az, %i.bb
  %i.bd = zext <8 x i8> %wide.load64 to <8 x i16>
  %i.be = add nuw nsw <8 x i16> %i.bc, %i.bd
  %i.bf = lshr <8 x i16> %i.be, splat (i16 2)
  %reverse66 = trunc nuw <8 x i16> %i.bf to <8 x i8>
  store <8 x i8> %reverse66, ptr %i.ax, align 1, !tbaa !78, !alias.scope !616, !noalias !615
  %index.next67 = add nuw i64 %index59, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next67, %n.vec58
  br i1 %i.bg, label %.lr.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !607

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !78
  %i.bk = zext i8 %i.bj to i16
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !78
  %i.bm = zext i8 %i.bl to i16
  %i.bn = shl nuw nsw i16 %i.bm, 1
  %i.bo = getelementptr i8, ptr %i.bh, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !78
  %i.bq = zext i8 %i.bp to i16
  %i.br = add nuw nsw i16 %i.bk, 2
  %i.bs = add nuw nsw i16 %i.br, %i.bn
  %i.bt = add nuw nsw i16 %i.bs, %i.bq
  %i.bu = lshr i16 %i.bt, 2
  %i.bv = trunc nuw i16 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !78
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %._crit_edge, !llvm.loop !608

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bz = load i8, ptr %2, align 1, !tbaa !78
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr inbounds i8, ptr %2, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !78
  %i.cd = zext i8 %i.cc to i16
  %i.ce = shl nuw nsw i16 %i.cd, 1
  %i.cf = load i8, ptr %3, align 1, !tbaa !78
  %i.cg = zext i8 %i.cf to i16
  %i.ch = add nuw nsw i16 %i.ca, 2
  %i.ci = add nuw nsw i16 %i.ch, %i.ce
  %i.cj = add nuw nsw i16 %i.ci, %i.cg
  %i.ck = lshr i16 %i.cj, 2
  %i.cl = trunc nuw i16 %i.ck to i8               ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %0, i64 -1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !78
  %i.cn = getelementptr inbounds i8, ptr %1, i64 -1
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !78
  br i1 %i.k, label %iter.check98, label %._crit_edge43

iter.check98:                                     ; preds = %._crit_edge
  %i.co = zext i32 %i.j to i64                    ; 10 uses
  %i.cp = add nsw i32 %i.a, -2
  %smin79 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cq = sub i32 %i.cp, %smin79                  ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 1
  %i.cs = zext i32 %i.cr to i64                   ; 3 uses
  %min.iters.check80 = icmp ult i32 %i.cq, 8
  br i1 %min.iters.check80, label %.lr.ph42.preheader, label %vector.memcheck70

vector.memcheck70:                                ; preds = %iter.check98
  %i.ct = add nsw i32 %i.a, -2
  %smin71 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cu = sub i32 %i.ct, %smin71
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = sub nsw i64 %i.co, %i.cv
  %scevgep72 = getelementptr i8, ptr %1, i64 %i.cw
  %i.cx = getelementptr i8, ptr %1, i64 %i.co
  %scevgep73 = getelementptr i8, ptr %i.cx, i64 1
  %i.cy = xor i64 %i.cv, -1
  %i.cz = getelementptr i8, ptr %3, i64 %i.cy
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.co
  %i.da = getelementptr i8, ptr %3, i64 %i.co
  %scevgep75 = getelementptr i8, ptr %i.da, i64 2
  %bound076 = icmp ult ptr %scevgep72, %scevgep75
  %bound177 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict78 = and i1 %bound076, %bound177
  br i1 %found.conflict78, label %.lr.ph42.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %vector.memcheck70
  %min.iters.check82 = icmp ult i32 %i.cq, 16
  br i1 %min.iters.check82, label %vec.epilog.ph102, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check81
  %i.db = and i64 %i.cs, 8
  %n.vec84 = and i64 %i.cs, 4294967280            ; 3 uses
  %i.dc = sub nsw i64 %i.co, %n.vec84
  br label %vector.body85

vector.body85:                                    ; preds = %vector.ph83, %vector.body85
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next94, %vector.body85 ] ; 2 uses
  %i.dd = sub i64 %i.co, %index86                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 %i.dd ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -14
  %wide.load87 = load <16 x i8>, ptr %i.df, align 1, !tbaa !78, !alias.scope !618
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -15
  %wide.load89 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !78, !alias.scope !618
  %i.dh = getelementptr i8, ptr %i.de, i64 -16
  %wide.load91 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !78, !alias.scope !618
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -15
  %i.dk = zext <16 x i8> %wide.load87 to <16 x i16>
  %i.dl = add nuw nsw <16 x i16> %i.dk, splat (i16 2)
  %i.dm = zext <16 x i8> %wide.load89 to <16 x i16>
  %i.dn = shl nuw nsw <16 x i16> %i.dm, splat (i16 1)
  %i.do = add nuw nsw <16 x i16> %i.dl, %i.dn
  %i.dp = zext <16 x i8> %wide.load91 to <16 x i16>
  %i.dq = add nuw nsw <16 x i16> %i.do, %i.dp
  %i.dr = lshr <16 x i16> %i.dq, splat (i16 2)
  %reverse93 = trunc nuw <16 x i16> %i.dr to <16 x i8>
  store <16 x i8> %reverse93, ptr %i.dj, align 1, !tbaa !78, !alias.scope !619, !noalias !618
  %index.next94 = add nuw i64 %index86, 16        ; 2 uses
  %i.ds = icmp eq i64 %index.next94, %n.vec84
  br i1 %i.ds, label %vec.epilog.iter.check100, label %vector.body85, !llvm.loop !612

vec.epilog.iter.check100:                         ; preds = %vector.body85
  %min.epilog.iters.check101.not.not = icmp eq i64 %i.db, 0
  br i1 %min.epilog.iters.check101.not.not, label %.lr.ph42.preheader, label %vec.epilog.ph102, !prof !617

vec.epilog.ph102:                                 ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check100
  %vec.epilog.resume.val97 = phi i64 [ %n.vec84, %vec.epilog.iter.check100 ], [ 0, %vector.main.loop.iter.check81 ]
  %n.vec103 = and i64 %i.cs, 4294967288           ; 2 uses
  %i.dt = sub nsw i64 %i.co, %n.vec103
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph102
  %index105 = phi i64 [ %vec.epilog.resume.val97, %vec.epilog.ph102 ], [ %index.next113, %vec.epilog.vector.body104 ] ; 2 uses
  %i.du = sub i64 %i.co, %index105                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 %i.du ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -6
  %wide.load106 = load <8 x i8>, ptr %i.dw, align 1, !tbaa !78, !alias.scope !618
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -7
  %wide.load108 = load <8 x i8>, ptr %i.dx, align 1, !tbaa !78, !alias.scope !618
  %i.dy = getelementptr i8, ptr %i.dv, i64 -8
  %wide.load110 = load <8 x i8>, ptr %i.dy, align 1, !tbaa !78, !alias.scope !618
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %i.du
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.eb = zext <8 x i8> %wide.load106 to <8 x i16>
  %i.ec = add nuw nsw <8 x i16> %i.eb, splat (i16 2)
  %i.ed = zext <8 x i8> %wide.load108 to <8 x i16>
  %i.ee = shl nuw nsw <8 x i16> %i.ed, splat (i16 1)
  %i.ef = add nuw nsw <8 x i16> %i.ec, %i.ee
  %i.eg = zext <8 x i8> %wide.load110 to <8 x i16>
  %i.eh = add nuw nsw <8 x i16> %i.ef, %i.eg
  %i.ei = lshr <8 x i16> %i.eh, splat (i16 2)
  %reverse112 = trunc nuw <8 x i16> %i.ei to <8 x i8>
  store <8 x i8> %reverse112, ptr %i.ea, align 1, !tbaa !78, !alias.scope !619, !noalias !618
  %index.next113 = add nuw i64 %index105, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next113, %n.vec103
  br i1 %i.ej, label %.lr.ph42.preheader, label %vec.epilog.vector.body104, !llvm.loop !613

.lr.ph42.preheader:                               ; preds = %vec.epilog.vector.body104, %iter.check98, %vector.memcheck70, %vec.epilog.iter.check100
  %indvars.iv45.ph = phi i64 [ %i.co, %iter.check98 ], [ %i.co, %vector.memcheck70 ], [ %i.dc, %vec.epilog.iter.check100 ], [ %i.dt, %vec.epilog.vector.body104 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader ] ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !78
  %i.en = zext i8 %i.em to i16
  %i.eo = load i8, ptr %i.ek, align 1, !tbaa !78
  %i.ep = zext i8 %i.eo to i16
  %i.eq = shl nuw nsw i16 %i.ep, 1
  %i.er = getelementptr i8, ptr %i.ek, i64 -1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !78
  %i.et = zext i8 %i.es to i16
  %i.eu = add nuw nsw i16 %i.en, 2
  %i.ev = add nuw nsw i16 %i.eu, %i.eq
  %i.ew = add nuw nsw i16 %i.ev, %i.et
  %i.ex = lshr i16 %i.ew, 2
  %i.ey = trunc nuw i16 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv45
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !78
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.fa = trunc nuw i64 %indvars.iv45 to i32
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph42, label %._crit_edge43, !llvm.loop !614

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_8(ptr nofree noundef writeonly captures(none) initializes((-1, 0), (63, 64)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -1 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !78
  %i.c = getelementptr inbounds i8, ptr %0, i64 -1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 63 ; 5 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  store i8 %i.e, ptr %i.f, align 1, !tbaa !78
  %scevgep = getelementptr i8, ptr %2, i64 64
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !78
  %i.h = zext i8 %i.g to i16
  %i.i = trunc nuw nsw i64 %indvars.iv.ph to i16
  %i.j = xor i16 %i.i, 63
  %i.k = mul nuw nsw i16 %i.j, %i.h
  %i.l = load i8, ptr %i.d, align 1, !tbaa !78
  %i.m = zext i8 %i.l to i16
  %i.n = trunc nuw nsw i64 %indvars.iv.next.prol to i16
  %i.o = mul nuw nsw i16 %i.n, %i.m
  %i.p = add nuw nsw i16 %i.k, 32
  %i.q = add nuw i16 %i.p, %i.o
  %i.r = lshr i16 %i.q, 6
  %i.s = trunc i16 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.s, ptr %i.t, align 1, !tbaa !78
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.u = load i8, ptr %i.d, align 1, !tbaa !78, !alias.scope !624
  %broadcast.splatinsert29 = insertelement <8 x i8> poison, i8 %i.u, i64 0
  %broadcast.splat30 = shufflevector <8 x i8> %broadcast.splatinsert29, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.v = zext <8 x i8> %broadcast.splat30 to <8 x i16> ; 7 uses
  %i.w = load i8, ptr %i.a, align 1, !tbaa !78, !alias.scope !624
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.x = zext <8 x i8> %broadcast.splat to <8 x i16> ; 7 uses
  %i.y = mul nuw nsw <8 x i16> %i.x, <i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56>
  %i.z = mul nuw nsw <8 x i16> %i.v, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>
  %i.aa = add nuw nsw <8 x i16> %i.y, splat (i16 32)
  %i.ab = add nuw <8 x i16> %i.aa, %i.z
  %i.ac = lshr <8 x i16> %i.ab, splat (i16 6)
  %i.ad = trunc <8 x i16> %i.ac to <8 x i8>
  store <8 x i8> %i.ad, ptr %0, align 1, !tbaa !78, !alias.scope !625, !noalias !624
  %i.ae = mul nuw nsw <8 x i16> %i.x, <i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 48>
  %i.af = mul nuw nsw <8 x i16> %i.v, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %i.ag = add nuw nsw <8 x i16> %i.ae, splat (i16 32)
  %i.ah = add nuw <8 x i16> %i.ag, %i.af
  %i.ai = lshr <8 x i16> %i.ah, splat (i16 6)
  %i.aj = trunc <8 x i16> %i.ai to <8 x i8>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <8 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !78, !alias.scope !625, !noalias !624
  %i.al = mul nuw nsw <8 x i16> %i.x, <i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41, i16 40>
  %i.am = mul nuw nsw <8 x i16> %i.v, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24>
  %i.an = add nuw nsw <8 x i16> %i.al, splat (i16 32)
  %i.ao = add nuw <8 x i16> %i.an, %i.am
  %i.ap = lshr <8 x i16> %i.ao, splat (i16 6)
  %i.aq = trunc <8 x i16> %i.ap to <8 x i8>
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i8> %i.aq, ptr %i.ar, align 1, !tbaa !78, !alias.scope !625, !noalias !624
  %3 = mul nuw nsw <8 x i16> %i.x, <i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33, i16 32>
  %4 = mul nuw nsw <8 x i16> %i.v, <i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %5 = add nuw nsw <8 x i16> %3, splat (i16 32)
  %6 = add nuw <8 x i16> %5, %4
  %7 = lshr <8 x i16> %6, splat (i16 6)
  %8 = trunc <8 x i16> %7 to <8 x i8>
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <8 x i8> %8, ptr %9, align 1, !tbaa !78, !alias.scope !625, !noalias !624
  %10 = mul nuw nsw <8 x i16> %i.x, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24>
  %11 = mul nuw nsw <8 x i16> %i.v, <i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40>
  %12 = add nuw nsw <8 x i16> %10, splat (i16 32)
  %13 = add nuw nsw <8 x i16> %12, %11
  %14 = lshr <8 x i16> %13, splat (i16 6)
  %15 = trunc <8 x i16> %14 to <8 x i8>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i8> %15, ptr %i.as, align 1, !tbaa !78, !alias.scope !625, !noalias !624
  %16 = mul nuw nsw <8 x i16> %i.x, <i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %17 = mul nuw nsw <8 x i16> %i.v, <i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48>
  %18 = add nuw nsw <8 x i16> %16, splat (i16 32)
  %19 = add nuw nsw <8 x i16> %18, %17
  %20 = lshr <8 x i16> %19, splat (i16 6)
  %21 = trunc <8 x i16> %20 to <8 x i8>
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <8 x i8> %21, ptr %i.at, align 1, !tbaa !78, !alias.scope !625, !noalias !624
  %22 = mul nuw nsw <8 x i16> %i.x, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8>
  %23 = mul nuw nsw <8 x i16> %i.v, <i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56>
  %24 = add nuw nsw <8 x i16> %22, splat (i16 32)
  %25 = add nuw nsw <8 x i16> %24, %23
  %26 = lshr <8 x i16> %25, splat (i16 6)
  %27 = trunc <8 x i16> %26 to <8 x i8>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i8> %27, ptr %i.au, align 1, !tbaa !78, !alias.scope !625, !noalias !624
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.av = getelementptr inbounds i8, ptr %1, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !78  ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 63 ; 14 uses
  %i.ay = zext i8 %i.aw to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.ay, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !78
  %broadcast.splatinsert40 = insertelement <8 x i8> poison, i8 %i.az, i64 0
  %broadcast.splat41 = shufflevector <8 x i8> %broadcast.splatinsert40, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ba = zext <8 x i8> %broadcast.splat41 to <8 x i16>
  %i.bb = mul nuw nsw <8 x i16> %i.ba, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>
  %i.bc = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.bd = mul nuw nsw <8 x i16> %i.bc, <i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56>
  %i.be = add nuw nsw <8 x i16> %i.bd, splat (i16 32)
  %i.bf = add nuw <8 x i16> %i.be, %i.bb
  %i.bg = lshr <8 x i16> %i.bf, splat (i16 6)
  %i.bh = trunc <8 x i16> %i.bg to <8 x i8>
  store <8 x i8> %i.bh, ptr %1, align 1, !tbaa !78
  %i.bi = load i8, ptr %i.ax, align 1, !tbaa !78
  %broadcast.splatinsert40.1 = insertelement <8 x i8> poison, i8 %i.bi, i64 0
  %broadcast.splat41.1 = shufflevector <8 x i8> %broadcast.splatinsert40.1, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bj = zext <8 x i8> %broadcast.splat41.1 to <8 x i16>
  %i.bk = mul nuw nsw <8 x i16> %i.bj, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %i.bl = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.bm = mul nuw nsw <8 x i16> %i.bl, <i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 48>
  %i.bn = add nuw nsw <8 x i16> %i.bm, splat (i16 32)
  %i.bo = add nuw <8 x i16> %i.bn, %i.bk
  %i.bp = lshr <8 x i16> %i.bo, splat (i16 6)
  %i.bq = trunc <8 x i16> %i.bp to <8 x i8>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <8 x i8> %i.bq, ptr %i.br, align 1, !tbaa !78
  %i.bs = load i8, ptr %i.ax, align 1, !tbaa !78
  %broadcast.splatinsert40.2 = insertelement <8 x i8> poison, i8 %i.bs, i64 0
  %broadcast.splat41.2 = shufflevector <8 x i8> %broadcast.splatinsert40.2, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bt = zext <8 x i8> %broadcast.splat41.2 to <8 x i16>
  %i.bu = mul nuw nsw <8 x i16> %i.bt, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24>
  %i.bv = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.bw = mul nuw nsw <8 x i16> %i.bv, <i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41, i16 40>
  %i.bx = add nuw nsw <8 x i16> %i.bw, splat (i16 32)
  %i.by = add nuw <8 x i16> %i.bx, %i.bu
  %i.bz = lshr <8 x i16> %i.by, splat (i16 6)
  %i.ca = trunc <8 x i16> %i.bz to <8 x i8>
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <8 x i8> %i.ca, ptr %i.cb, align 1, !tbaa !78
  %i.cc = load i8, ptr %i.ax, align 1, !tbaa !78
  %broadcast.splatinsert40.3 = insertelement <8 x i8> poison, i8 %i.cc, i64 0
  %broadcast.splat41.3 = shufflevector <8 x i8> %broadcast.splatinsert40.3, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cd = zext <8 x i8> %broadcast.splat41.3 to <8 x i16>
  %i.ce = mul nuw nsw <8 x i16> %i.cd, <i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %i.cf = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.cg = mul nuw nsw <8 x i16> %i.cf, <i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33, i16 32>
  %i.ch = add nuw nsw <8 x i16> %i.cg, splat (i16 32)
  %i.ci = add nuw <8 x i16> %i.ch, %i.ce
  %i.cj = lshr <8 x i16> %i.ci, splat (i16 6)
  %i.ck = trunc <8 x i16> %i.cj to <8 x i8>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <8 x i8> %i.ck, ptr %i.cl, align 1, !tbaa !78
  %i.cm = load i8, ptr %i.ax, align 1, !tbaa !78
  %broadcast.splatinsert40.4 = insertelement <8 x i8> poison, i8 %i.cm, i64 0
  %broadcast.splat41.4 = shufflevector <8 x i8> %broadcast.splatinsert40.4, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cn = zext <8 x i8> %broadcast.splat41.4 to <8 x i16>
  %i.co = mul nuw nsw <8 x i16> %i.cn, <i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40>
  %i.cp = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.cq = mul nuw nsw <8 x i16> %i.cp, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24>
  %i.cr = add nuw nsw <8 x i16> %i.cq, splat (i16 32)
  %i.cs = add nuw nsw <8 x i16> %i.cr, %i.co
  %i.ct = lshr <8 x i16> %i.cs, splat (i16 6)
  %i.cu = trunc <8 x i16> %i.ct to <8 x i8>
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <8 x i8> %i.cu, ptr %i.cv, align 1, !tbaa !78
  %i.cw = load i8, ptr %i.ax, align 1, !tbaa !78
  %broadcast.splatinsert40.5 = insertelement <8 x i8> poison, i8 %i.cw, i64 0
  %broadcast.splat41.5 = shufflevector <8 x i8> %broadcast.splatinsert40.5, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cx = zext <8 x i8> %broadcast.splat41.5 to <8 x i16>
  %i.cy = mul nuw nsw <8 x i16> %i.cx, <i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48>
  %i.cz = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.da = mul nuw nsw <8 x i16> %i.cz, <i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.db = add nuw nsw <8 x i16> %i.da, splat (i16 32)
  %i.dc = add nuw nsw <8 x i16> %i.db, %i.cy
  %i.dd = lshr <8 x i16> %i.dc, splat (i16 6)
  %i.de = trunc <8 x i16> %i.dd to <8 x i8>
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <8 x i8> %i.de, ptr %i.df, align 1, !tbaa !78
  %i.dg = load i8, ptr %i.ax, align 1, !tbaa !78
  %broadcast.splatinsert40.6 = insertelement <8 x i8> poison, i8 %i.dg, i64 0
  %broadcast.splat41.6 = shufflevector <8 x i8> %broadcast.splatinsert40.6, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.dh = zext <8 x i8> %broadcast.splat41.6 to <8 x i16>
  %i.di = mul nuw nsw <8 x i16> %i.dh, <i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56>
  %i.dj = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.dk = mul nuw nsw <8 x i16> %i.dj, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8>
  %i.dl = add nuw nsw <8 x i16> %i.dk, splat (i16 32)
  %i.dm = add nuw nsw <8 x i16> %i.dl, %i.di
  %i.dn = lshr <8 x i16> %i.dm, splat (i16 6)
  %i.do = trunc <8 x i16> %i.dn to <8 x i8>
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <8 x i8> %i.do, ptr %i.dp, align 1, !tbaa !78
  %i.dq = load i8, ptr %i.ax, align 1, !tbaa !78
  %i.dr = zext i8 %i.dq to i16
  %i.ds = mul nuw nsw i16 %i.dr, 57
  %i.dt = zext i8 %i.aw to i16
  %i.du = mul nuw nsw i16 %i.dt, 7
  %i.dv = add nuw nsw i16 %i.du, 32
  %i.dw = add nuw nsw i16 %i.dv, %i.ds
  %i.dx = lshr i16 %i.dw, 6
  %i.dy = trunc i16 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !78
  %i.ea = load i8, ptr %i.ax, align 1, !tbaa !78
  %i.eb = zext i8 %i.ea to i16
  %i.ec = mul nuw nsw i16 %i.eb, 58
  %i.ed = zext i8 %i.aw to i16
  %i.ee = mul nuw nsw i16 %i.ed, 6
  %i.ef = add nuw nsw i16 %i.ee, 32
  %i.eg = add nuw nsw i16 %i.ef, %i.ec
  %i.eh = lshr i16 %i.eg, 6
  %i.ei = trunc i16 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !78
  %i.ek = load i8, ptr %i.ax, align 1, !tbaa !78
  %i.el = zext i8 %i.ek to i16
  %i.em = mul nuw nsw i16 %i.el, 59
  %i.en = zext i8 %i.aw to i16
  %i.eo = mul nuw nsw i16 %i.en, 5
  %i.ep = add nuw nsw i16 %i.eo, 32
  %i.eq = add nuw nsw i16 %i.ep, %i.em
  %i.er = lshr i16 %i.eq, 6
  %i.es = trunc i16 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 %i.es, ptr %i.et, align 1, !tbaa !78
  %i.eu = load i8, ptr %i.ax, align 1, !tbaa !78
  %i.ev = zext i8 %i.eu to i16
  %i.ew = mul nuw nsw i16 %i.ev, 60
  %.tr = zext i8 %i.aw to i16
  %i.ex = shl nuw nsw i16 %.tr, 2
  %i.ey = add nuw nsw i16 %i.ex, 32
  %i.ez = add nuw nsw i16 %i.ey, %i.ew
  %i.fa = lshr i16 %i.ez, 6
  %i.fb = trunc i16 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 59
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !78
  %i.fd = load i8, ptr %i.ax, align 1, !tbaa !78
  %i.fe = zext i8 %i.fd to i16
  %i.ff = mul nuw nsw i16 %i.fe, 61
  %i.fg = zext i8 %i.aw to i16
  %i.fh = mul nuw nsw i16 %i.fg, 3
  %i.fi = add nuw nsw i16 %i.fh, 32
  %i.fj = add nuw nsw i16 %i.fi, %i.ff
  %i.fk = lshr i16 %i.fj, 6
  %i.fl = trunc i16 %i.fk to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !78
  %i.fn = load i8, ptr %i.ax, align 1, !tbaa !78
  %i.fo = zext i8 %i.fn to i16
  %i.fp = mul nuw nsw i16 %i.fo, 62
  %.tr45 = zext i8 %i.aw to i16
  %i.fq = shl nuw nsw i16 %.tr45, 1
  %i.fr = add nuw nsw i16 %i.fq, 32
  %i.fs = add nuw nsw i16 %i.fr, %i.fp
  %i.ft = lshr i16 %i.fs, 6
  %i.fu = trunc i16 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !78
  %i.fw = load i8, ptr %i.ax, align 1, !tbaa !78
  %i.fx = zext i8 %i.fw to i16
  %i.fy = mul nuw nsw i16 %i.fx, 63
  %i.fz = zext i8 %i.aw to i16
  %i.ga = add nuw nsw i16 %i.fz, 32
  %i.gb = add nuw nsw i16 %i.ga, %i.fy
  %i.gc = lshr i16 %i.gb, 6
  %i.gd = trunc i16 %i.gc to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !78
  ret void

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gf = load i8, ptr %i.a, align 1, !tbaa !78
  %i.gg = zext i8 %i.gf to i16
  %i.gh = trunc i64 %indvars.iv to i16
  %i.gi = sub i16 63, %i.gh
  %i.gj = mul i16 %i.gi, %i.gg
  %i.gk = load i8, ptr %i.d, align 1, !tbaa !78
  %i.gl = zext i8 %i.gk to i16
  %i.gm = trunc i64 %indvars.iv.next to i16
  %i.gn = mul i16 %i.gm, %i.gl
  %i.go = add i16 %i.gj, 32
  %i.gp = add i16 %i.go, %i.gn
  %i.gq = lshr i16 %i.gp, 6
  %i.gr = trunc i16 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !78
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gt = load i8, ptr %i.a, align 1, !tbaa !78
  %i.gu = zext i8 %i.gt to i16
  %i.gv = trunc i64 %indvars.iv.next to i16
  %i.gw = sub i16 63, %i.gv
end_hunk_3
