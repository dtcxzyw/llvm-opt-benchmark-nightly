Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pred?download=true
loop-unroll.NumCompletelyUnrolled: 290
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 348
begin_hunk_0_@ref_filter_3tap_9:bb.a
  %i.cb = add nsw i32 %i.a, -2
  %i.cc = sub i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %min.iters.check64 = icmp ult i32 %i.cc, 16
  br i1 %min.iters.check64, label %.lr.ph42.preheader84, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph42.preheader
  %i.ce = shl nuw nsw i64 %i.bz, 1                ; 4 uses
  %i.cf = shl nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %1, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  %i.ck = add nsw i64 %i.ce, -2
  %i.cl = sub nsw i64 %i.ck, %i.cf
  %i.cm = getelementptr i8, ptr %3, i64 %i.cl
  %i.cn = getelementptr i8, ptr %3, i64 %i.ce
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %bound066 = icmp ult ptr %i.ch, %i.co
  %bound167 = icmp ult ptr %i.cm, %i.cj
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %.lr.ph42.preheader84, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck65
  %n.vec70 = and i64 %i.cd, 4294967288            ; 2 uses
  %i.cp = sub nsw i64 %i.bz, %n.vec70
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next80, %vector.body71 ] ; 2 uses
  %i.cq = sub i64 %i.bz, %index72                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -12
  %wide.load73 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !304
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -14
  %wide.load75 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !82, !alias.scope !304
  %i.cu = getelementptr i8, ptr %i.cr, i64 -16
  %wide.load77 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !82, !alias.scope !304
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cq
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -14
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = add nuw nsw <8 x i32> %i.cx, splat (i32 2)
  %i.cz = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.da = shl nuw nsw <8 x i32> %i.cz, splat (i32 1)
  %i.db = add nuw nsw <8 x i32> %i.cy, %i.da
  %i.dc = zext <8 x i16> %wide.load77 to <8 x i32>
  %i.dd = add nuw nsw <8 x i32> %i.db, %i.dc
  %i.de = lshr <8 x i32> %i.dd, splat (i32 2)
  %reverse79 = trunc nuw <8 x i32> %i.de to <8 x i16>
  store <8 x i16> %reverse79, ptr %i.cw, align 2, !tbaa !82, !alias.scope !305, !noalias !304
  %index.next80 = add nuw i64 %index72, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next80, %n.vec70
  br i1 %i.df, label %.lr.ph42.preheader84, label %vector.body71, !llvm.loop !300

.lr.ph42.preheader84:                             ; preds = %vector.body71, %vector.memcheck65, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bz, %vector.memcheck65 ], [ %i.bz, %.lr.ph42.preheader ], [ %i.cp, %vector.body71 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader84, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader84 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.dg, align 2, !tbaa !82
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = getelementptr i8, ptr %i.dg, i64 -2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dj, 2
  %i.dr = add nuw nsw i32 %i.dq, %i.dm
  %i.ds = add nuw nsw i32 %i.dr, %i.dp
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc nuw i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dw = trunc nuw i64 %indvars.iv45 to i32
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph42, label %._crit_edge43, !llvm.loop !301

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
  %i.g = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %i.g
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.h = load i16, ptr %i.a, align 2, !tbaa !82
  %i.i = zext i16 %i.h to i32
  %i.j = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.k = xor i32 %i.j, 63
  %i.l = mul nuw nsw i32 %i.k, %i.i
  %i.m = load i16, ptr %i.d, align 2, !tbaa !82
  %i.n = zext i16 %i.m to i32
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.p = mul nuw nsw i32 %i.o, %i.n
  %i.q = add nuw nsw i32 %i.l, 32
  %i.r = add nuw nsw i32 %i.q, %i.p
  %i.s = lshr i32 %i.r, 6
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.t, ptr %i.u, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.v = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !311
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.w = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.x = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !311
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.y = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.z = mul nuw nsw <8 x i32> %i.y, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.aa = mul nuw nsw <8 x i32> %i.w, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.ab = add nuw nsw <8 x i32> %i.z, splat (i32 32)
  %i.ac = add nuw nsw <8 x i32> %i.ab, %i.aa
  %i.ad = lshr <8 x i32> %i.ac, splat (i32 6)
  %i.ae = trunc <8 x i32> %i.ad to <8 x i16>
  store <8 x i16> %i.ae, ptr %0, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.af = mul nuw nsw <8 x i32> %i.y, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.ag = mul nuw nsw <8 x i32> %i.w, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ah = add nuw nsw <8 x i32> %i.af, splat (i32 32)
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.ak = trunc <8 x i32> %i.aj to <8 x i16>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.ak, ptr %i.al, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.am = mul nuw nsw <8 x i32> %i.y, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.an = mul nuw nsw <8 x i32> %i.w, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ao = add nuw nsw <8 x i32> %i.am, splat (i32 32)
  %i.ap = add nuw nsw <8 x i32> %i.ao, %i.an
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 6)
  %i.ar = trunc <8 x i32> %i.aq to <8 x i16>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.ar, ptr %i.as, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.at = mul nuw nsw <8 x i32> %i.y, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.au = mul nuw nsw <8 x i32> %i.w, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.av = add nuw nsw <8 x i32> %i.at, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.au
  %i.ax = lshr <8 x i32> %i.aw, splat (i32 6)
  %i.ay = trunc <8 x i32> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.ba = mul nuw nsw <8 x i32> %i.y, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.bb = mul nuw nsw <8 x i32> %i.w, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bc = add nuw nsw <8 x i32> %i.ba, splat (i32 32)
  %i.bd = add nuw nsw <8 x i32> %i.bc, %i.bb
  %i.be = lshr <8 x i32> %i.bd, splat (i32 6)
  %i.bf = trunc <8 x i32> %i.be to <8 x i16>
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.bf, ptr %i.bg, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.bh = mul nuw nsw <8 x i32> %i.y, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bi = mul nuw nsw <8 x i32> %i.w, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 32)
  %i.bk = add nuw nsw <8 x i32> %i.bj, %i.bi
  %i.bl = lshr <8 x i32> %i.bk, splat (i32 6)
  %i.bm = trunc <8 x i32> %i.bl to <8 x i16>
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.bo = mul nuw nsw <8 x i32> %i.y, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bp = mul nuw nsw <8 x i32> %i.w, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bq = add nuw nsw <8 x i32> %i.bo, splat (i32 32)
  %i.br = add nuw nsw <8 x i32> %i.bq, %i.bp
  %i.bs = lshr <8 x i32> %i.br, splat (i32 6)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bt, ptr %i.bu, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !82 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.by = zext i16 %i.bw to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next42, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next43, %vector.body37 ] ; 2 uses
  %vec.ind40 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.preheader ], [ %vec.ind.next45, %vector.body37 ] ; 2 uses
  %i.bz = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.ca = mul nuw nsw <8 x i64> %i.bz, %broadcast.splat36
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !82
  %broadcast.splatinsert40 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat41 = shufflevector <8 x i16> %broadcast.splatinsert40, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = zext <8 x i16> %broadcast.splat41 to <8 x i32>
  %i.cd = mul nuw nsw <8 x i32> %vec.ind40, %i.cc
  %i.ce = trunc nuw nsw <8 x i64> %i.ca to <8 x i32>
  %i.cf = add nuw nsw <8 x i32> %i.ce, splat (i32 32)
  %i.cg = add nuw nsw <8 x i32> %i.cf, %i.cd
  %i.ch = lshr <8 x i32> %i.cg, splat (i32 6)
  %i.ci = trunc <8 x i32> %i.ch to <8 x i16>
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ci, ptr %i.cj, align 2, !tbaa !82
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next43 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %vec.ind.next45 = add <8 x i32> %vec.ind40, splat (i32 8)
  %i.ck = icmp eq i64 %index.next42, 56
  br i1 %i.ck, label %scalar.ph33, label %vector.body37, !llvm.loop !309

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cl = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = sub i32 63, %i.cn
  %i.cp = mul nuw nsw i32 %i.co, %i.cm
  %i.cq = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cr = zext i16 %i.cq to i32
  %i.cs = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ct = mul nuw nsw i32 %i.cs, %i.cr
  %i.cu = add nuw nsw i32 %i.cp, 32
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cz = load i16, ptr %i.a, align 2, !tbaa !82
  %i.da = zext i16 %i.cz to i32
  %i.db = trunc i64 %indvars.iv.next to i32
  %i.dc = sub i32 63, %i.db
  %i.dd = mul nuw nsw i32 %i.dc, %i.da
  %i.de = load i16, ptr %i.d, align 2, !tbaa !82
  %i.df = zext i16 %i.de to i32
  %i.dg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dh = mul nuw nsw i32 %i.dg, %i.df
  %i.di = add nuw nsw i32 %i.dd, 32
  %i.dj = add nuw nsw i32 %i.di, %i.dh
  %i.dk = lshr i32 %i.dj, 6
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !310

scalar.ph33:                                      ; preds = %vector.body37
  %i.dn = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.do, 57
  %i.dq = zext i16 %i.bw to i32
  %i.dr = mul nuw nsw i32 %i.dq, 7
  %i.ds = add nuw nsw i32 %i.dr, 32
  %i.dt = add nuw nsw i32 %i.ds, %i.dp
  %i.du = lshr i32 %i.dt, 6
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !82
  %i.dx = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, 58
  %i.ea = zext i16 %i.bw to i32
  %i.eb = mul nuw nsw i32 %i.ea, 6
  %i.ec = add nuw nsw i32 %i.eb, 32
  %i.ed = add nuw nsw i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !82
  %i.eh = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.ei = zext i16 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 59
  %i.ek = zext i16 %i.bw to i32
  %i.el = mul nuw nsw i32 %i.ek, 5
  %i.em = add nuw nsw i32 %i.el, 32
  %i.en = add nuw nsw i32 %i.em, %i.ej
  %i.eo = lshr i32 %i.en, 6
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !82
  %i.er = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, 60
  %.tr = zext i16 %i.bw to i32
  %i.eu = shl nuw nsw i32 %.tr, 2
  %i.ev = add nuw nsw i32 %i.eu, 32
  %i.ew = add nuw nsw i32 %i.ev, %i.et
  %i.ex = lshr i32 %i.ew, 6
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !82
  %i.fa = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.fb, 61
  %i.fd = zext i16 %i.bw to i32
  %i.fe = mul nuw nsw i32 %i.fd, 3
  %i.ff = add nuw nsw i32 %i.fe, 32
  %i.fg = add nuw nsw i32 %i.ff, %i.fc
  %i.fh = lshr i32 %i.fg, 6
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !82
  %i.fk = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 62
  %.tr45 = zext i16 %i.bw to i32
  %i.fn = shl nuw nsw i32 %.tr45, 1
  %i.fo = add nuw nsw i32 %i.fn, 32
  %i.fp = add nuw nsw i32 %i.fo, %i.fm
  %i.fq = lshr i32 %i.fp, 6
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !82
  %i.ft = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 63
  %i.fw = zext i16 %i.bw to i32
  %i.fx = add nuw nsw i32 %i.fw, 32
  %i.fy = add nuw nsw i32 %i.fx, %i.fv
  %i.fz = lshr i32 %i.fy, 6
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_10(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i16], align 16              ; 27 uses
  %i.b = alloca [81 x i16], align 16              ; 16 uses
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
  %.sink269.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sink269.sroa.gep356 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
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
  %i.av = load i32, ptr %i.au, align 4, !tbaa !77
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 20 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.h
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !165
  %i.ba = sext i32 %i.t to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = sext i32 %i.u to i64
  %i.bd = mul nsw i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bd ; 21 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 20252
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !166 ; 19 uses
  %.in.i.v = select i1 %i.ab, i64 280, i64 284
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.i.v
  %i.bh = load i32, ptr %.in.i, align 4, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 20 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 14 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 31284
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !167
end_hunk_0
begin_hunk_1_@ref_filter_3tap_10:bb.a
  %i.cb = add nsw i32 %i.a, -2
  %i.cc = sub i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %min.iters.check64 = icmp ult i32 %i.cc, 16
  br i1 %min.iters.check64, label %.lr.ph42.preheader84, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph42.preheader
  %i.ce = shl nuw nsw i64 %i.bz, 1                ; 4 uses
  %i.cf = shl nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %1, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  %i.ck = add nsw i64 %i.ce, -2
  %i.cl = sub nsw i64 %i.ck, %i.cf
  %i.cm = getelementptr i8, ptr %3, i64 %i.cl
  %i.cn = getelementptr i8, ptr %3, i64 %i.ce
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %bound066 = icmp ult ptr %i.ch, %i.co
  %bound167 = icmp ult ptr %i.cm, %i.cj
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %.lr.ph42.preheader84, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck65
  %n.vec70 = and i64 %i.cd, 4294967288            ; 2 uses
  %i.cp = sub nsw i64 %i.bz, %n.vec70
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next80, %vector.body71 ] ; 2 uses
  %i.cq = sub i64 %i.bz, %index72                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -12
  %wide.load73 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !397
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -14
  %wide.load75 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !82, !alias.scope !397
  %i.cu = getelementptr i8, ptr %i.cr, i64 -16
  %wide.load77 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !82, !alias.scope !397
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cq
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -14
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = add nuw nsw <8 x i32> %i.cx, splat (i32 2)
  %i.cz = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.da = shl nuw nsw <8 x i32> %i.cz, splat (i32 1)
  %i.db = add nuw nsw <8 x i32> %i.cy, %i.da
  %i.dc = zext <8 x i16> %wide.load77 to <8 x i32>
  %i.dd = add nuw nsw <8 x i32> %i.db, %i.dc
  %i.de = lshr <8 x i32> %i.dd, splat (i32 2)
  %reverse79 = trunc nuw <8 x i32> %i.de to <8 x i16>
  store <8 x i16> %reverse79, ptr %i.cw, align 2, !tbaa !82, !alias.scope !398, !noalias !397
  %index.next80 = add nuw i64 %index72, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next80, %n.vec70
  br i1 %i.df, label %.lr.ph42.preheader84, label %vector.body71, !llvm.loop !393

.lr.ph42.preheader84:                             ; preds = %vector.body71, %vector.memcheck65, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bz, %vector.memcheck65 ], [ %i.bz, %.lr.ph42.preheader ], [ %i.cp, %vector.body71 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader84, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader84 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.dg, align 2, !tbaa !82
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = getelementptr i8, ptr %i.dg, i64 -2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dj, 2
  %i.dr = add nuw nsw i32 %i.dq, %i.dm
  %i.ds = add nuw nsw i32 %i.dr, %i.dp
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc nuw i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dw = trunc nuw i64 %indvars.iv45 to i32
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph42, label %._crit_edge43, !llvm.loop !394

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
  %i.g = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %i.g
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.h = load i16, ptr %i.a, align 2, !tbaa !82
  %i.i = zext i16 %i.h to i32
  %i.j = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.k = xor i32 %i.j, 63
  %i.l = mul nuw nsw i32 %i.k, %i.i
  %i.m = load i16, ptr %i.d, align 2, !tbaa !82
  %i.n = zext i16 %i.m to i32
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.p = mul nuw nsw i32 %i.o, %i.n
  %i.q = add nuw nsw i32 %i.l, 32
  %i.r = add nuw nsw i32 %i.q, %i.p
  %i.s = lshr i32 %i.r, 6
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.t, ptr %i.u, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.v = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !404
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.w = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.x = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !404
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.y = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.z = mul nuw nsw <8 x i32> %i.y, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.aa = mul nuw nsw <8 x i32> %i.w, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.ab = add nuw nsw <8 x i32> %i.z, splat (i32 32)
  %i.ac = add nuw nsw <8 x i32> %i.ab, %i.aa
  %i.ad = lshr <8 x i32> %i.ac, splat (i32 6)
  %i.ae = trunc <8 x i32> %i.ad to <8 x i16>
  store <8 x i16> %i.ae, ptr %0, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.af = mul nuw nsw <8 x i32> %i.y, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.ag = mul nuw nsw <8 x i32> %i.w, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ah = add nuw nsw <8 x i32> %i.af, splat (i32 32)
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.ak = trunc <8 x i32> %i.aj to <8 x i16>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.ak, ptr %i.al, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.am = mul nuw nsw <8 x i32> %i.y, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.an = mul nuw nsw <8 x i32> %i.w, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ao = add nuw nsw <8 x i32> %i.am, splat (i32 32)
  %i.ap = add nuw nsw <8 x i32> %i.ao, %i.an
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 6)
  %i.ar = trunc <8 x i32> %i.aq to <8 x i16>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.ar, ptr %i.as, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.at = mul nuw nsw <8 x i32> %i.y, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.au = mul nuw nsw <8 x i32> %i.w, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.av = add nuw nsw <8 x i32> %i.at, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.au
  %i.ax = lshr <8 x i32> %i.aw, splat (i32 6)
  %i.ay = trunc <8 x i32> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.ba = mul nuw nsw <8 x i32> %i.y, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.bb = mul nuw nsw <8 x i32> %i.w, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bc = add nuw nsw <8 x i32> %i.ba, splat (i32 32)
  %i.bd = add nuw nsw <8 x i32> %i.bc, %i.bb
  %i.be = lshr <8 x i32> %i.bd, splat (i32 6)
  %i.bf = trunc <8 x i32> %i.be to <8 x i16>
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.bf, ptr %i.bg, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.bh = mul nuw nsw <8 x i32> %i.y, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bi = mul nuw nsw <8 x i32> %i.w, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 32)
  %i.bk = add nuw nsw <8 x i32> %i.bj, %i.bi
  %i.bl = lshr <8 x i32> %i.bk, splat (i32 6)
  %i.bm = trunc <8 x i32> %i.bl to <8 x i16>
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.bo = mul nuw nsw <8 x i32> %i.y, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bp = mul nuw nsw <8 x i32> %i.w, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bq = add nuw nsw <8 x i32> %i.bo, splat (i32 32)
  %i.br = add nuw nsw <8 x i32> %i.bq, %i.bp
  %i.bs = lshr <8 x i32> %i.br, splat (i32 6)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bt, ptr %i.bu, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !82 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.by = zext i16 %i.bw to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next42, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next43, %vector.body37 ] ; 2 uses
  %vec.ind40 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.preheader ], [ %vec.ind.next45, %vector.body37 ] ; 2 uses
  %i.bz = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.ca = mul nuw nsw <8 x i64> %i.bz, %broadcast.splat36
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !82
  %broadcast.splatinsert40 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat41 = shufflevector <8 x i16> %broadcast.splatinsert40, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = zext <8 x i16> %broadcast.splat41 to <8 x i32>
  %i.cd = mul nuw nsw <8 x i32> %vec.ind40, %i.cc
  %i.ce = trunc nuw nsw <8 x i64> %i.ca to <8 x i32>
  %i.cf = add nuw nsw <8 x i32> %i.ce, splat (i32 32)
  %i.cg = add nuw nsw <8 x i32> %i.cf, %i.cd
  %i.ch = lshr <8 x i32> %i.cg, splat (i32 6)
  %i.ci = trunc <8 x i32> %i.ch to <8 x i16>
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ci, ptr %i.cj, align 2, !tbaa !82
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next43 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %vec.ind.next45 = add <8 x i32> %vec.ind40, splat (i32 8)
  %i.ck = icmp eq i64 %index.next42, 56
  br i1 %i.ck, label %scalar.ph33, label %vector.body37, !llvm.loop !402

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cl = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = sub i32 63, %i.cn
  %i.cp = mul nuw nsw i32 %i.co, %i.cm
  %i.cq = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cr = zext i16 %i.cq to i32
  %i.cs = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ct = mul nuw nsw i32 %i.cs, %i.cr
  %i.cu = add nuw nsw i32 %i.cp, 32
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cz = load i16, ptr %i.a, align 2, !tbaa !82
  %i.da = zext i16 %i.cz to i32
  %i.db = trunc i64 %indvars.iv.next to i32
  %i.dc = sub i32 63, %i.db
  %i.dd = mul nuw nsw i32 %i.dc, %i.da
  %i.de = load i16, ptr %i.d, align 2, !tbaa !82
  %i.df = zext i16 %i.de to i32
  %i.dg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dh = mul nuw nsw i32 %i.dg, %i.df
  %i.di = add nuw nsw i32 %i.dd, 32
  %i.dj = add nuw nsw i32 %i.di, %i.dh
  %i.dk = lshr i32 %i.dj, 6
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !403

scalar.ph33:                                      ; preds = %vector.body37
  %i.dn = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.do, 57
  %i.dq = zext i16 %i.bw to i32
  %i.dr = mul nuw nsw i32 %i.dq, 7
  %i.ds = add nuw nsw i32 %i.dr, 32
  %i.dt = add nuw nsw i32 %i.ds, %i.dp
  %i.du = lshr i32 %i.dt, 6
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !82
  %i.dx = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, 58
  %i.ea = zext i16 %i.bw to i32
  %i.eb = mul nuw nsw i32 %i.ea, 6
  %i.ec = add nuw nsw i32 %i.eb, 32
  %i.ed = add nuw nsw i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !82
  %i.eh = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.ei = zext i16 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 59
  %i.ek = zext i16 %i.bw to i32
  %i.el = mul nuw nsw i32 %i.ek, 5
  %i.em = add nuw nsw i32 %i.el, 32
  %i.en = add nuw nsw i32 %i.em, %i.ej
  %i.eo = lshr i32 %i.en, 6
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !82
  %i.er = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, 60
  %.tr = zext i16 %i.bw to i32
  %i.eu = shl nuw nsw i32 %.tr, 2
  %i.ev = add nuw nsw i32 %i.eu, 32
  %i.ew = add nuw nsw i32 %i.ev, %i.et
  %i.ex = lshr i32 %i.ew, 6
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !82
  %i.fa = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.fb, 61
  %i.fd = zext i16 %i.bw to i32
  %i.fe = mul nuw nsw i32 %i.fd, 3
  %i.ff = add nuw nsw i32 %i.fe, 32
  %i.fg = add nuw nsw i32 %i.ff, %i.fc
  %i.fh = lshr i32 %i.fg, 6
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !82
  %i.fk = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 62
  %.tr45 = zext i16 %i.bw to i32
  %i.fn = shl nuw nsw i32 %.tr45, 1
  %i.fo = add nuw nsw i32 %i.fn, 32
  %i.fp = add nuw nsw i32 %i.fo, %i.fm
  %i.fq = lshr i32 %i.fp, 6
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !82
  %i.ft = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 63
  %i.fw = zext i16 %i.bw to i32
  %i.fx = add nuw nsw i32 %i.fw, 32
  %i.fy = add nuw nsw i32 %i.fx, %i.fv
  %i.fz = lshr i32 %i.fy, 6
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_12(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i16], align 16              ; 27 uses
  %i.b = alloca [81 x i16], align 16              ; 16 uses
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
  %.sink269.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sink269.sroa.gep356 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
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
  %i.av = load i32, ptr %i.au, align 4, !tbaa !77
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 20 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.h
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !165
  %i.ba = sext i32 %i.t to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = sext i32 %i.u to i64
  %i.bd = mul nsw i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bd ; 21 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 20252
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !166 ; 19 uses
  %.in.i.v = select i1 %i.ab, i64 280, i64 284
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.i.v
  %i.bh = load i32, ptr %.in.i, align 4, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 20 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 14 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 31284
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !167
end_hunk_1
begin_hunk_2_@ref_filter_3tap_12:bb.a
  %i.cb = add nsw i32 %i.a, -2
  %i.cc = sub i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %min.iters.check64 = icmp ult i32 %i.cc, 16
  br i1 %min.iters.check64, label %.lr.ph42.preheader84, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph42.preheader
  %i.ce = shl nuw nsw i64 %i.bz, 1                ; 4 uses
  %i.cf = shl nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %1, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  %i.ck = add nsw i64 %i.ce, -2
  %i.cl = sub nsw i64 %i.ck, %i.cf
  %i.cm = getelementptr i8, ptr %3, i64 %i.cl
  %i.cn = getelementptr i8, ptr %3, i64 %i.ce
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %bound066 = icmp ult ptr %i.ch, %i.co
  %bound167 = icmp ult ptr %i.cm, %i.cj
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %.lr.ph42.preheader84, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck65
  %n.vec70 = and i64 %i.cd, 4294967288            ; 2 uses
  %i.cp = sub nsw i64 %i.bz, %n.vec70
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next80, %vector.body71 ] ; 2 uses
  %i.cq = sub i64 %i.bz, %index72                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -12
  %wide.load73 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !490
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -14
  %wide.load75 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !82, !alias.scope !490
  %i.cu = getelementptr i8, ptr %i.cr, i64 -16
  %wide.load77 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !82, !alias.scope !490
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cq
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -14
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = add nuw nsw <8 x i32> %i.cx, splat (i32 2)
  %i.cz = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.da = shl nuw nsw <8 x i32> %i.cz, splat (i32 1)
  %i.db = add nuw nsw <8 x i32> %i.cy, %i.da
  %i.dc = zext <8 x i16> %wide.load77 to <8 x i32>
  %i.dd = add nuw nsw <8 x i32> %i.db, %i.dc
  %i.de = lshr <8 x i32> %i.dd, splat (i32 2)
  %reverse79 = trunc nuw <8 x i32> %i.de to <8 x i16>
  store <8 x i16> %reverse79, ptr %i.cw, align 2, !tbaa !82, !alias.scope !491, !noalias !490
  %index.next80 = add nuw i64 %index72, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next80, %n.vec70
  br i1 %i.df, label %.lr.ph42.preheader84, label %vector.body71, !llvm.loop !486

.lr.ph42.preheader84:                             ; preds = %vector.body71, %vector.memcheck65, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bz, %vector.memcheck65 ], [ %i.bz, %.lr.ph42.preheader ], [ %i.cp, %vector.body71 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader84, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader84 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.dg, align 2, !tbaa !82
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = getelementptr i8, ptr %i.dg, i64 -2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dj, 2
  %i.dr = add nuw nsw i32 %i.dq, %i.dm
  %i.ds = add nuw nsw i32 %i.dr, %i.dp
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc nuw i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dw = trunc nuw i64 %indvars.iv45 to i32
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph42, label %._crit_edge43, !llvm.loop !487

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
  %i.g = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %i.g
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.h = load i16, ptr %i.a, align 2, !tbaa !82
  %i.i = zext i16 %i.h to i32
  %i.j = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.k = xor i32 %i.j, 63
  %i.l = mul nuw nsw i32 %i.k, %i.i
  %i.m = load i16, ptr %i.d, align 2, !tbaa !82
  %i.n = zext i16 %i.m to i32
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.p = mul nuw nsw i32 %i.o, %i.n
  %i.q = add nuw nsw i32 %i.l, 32
  %i.r = add nuw nsw i32 %i.q, %i.p
  %i.s = lshr i32 %i.r, 6
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.t, ptr %i.u, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.v = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !497
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.w = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.x = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !497
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.y = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.z = mul nuw nsw <8 x i32> %i.y, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.aa = mul nuw nsw <8 x i32> %i.w, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.ab = add nuw nsw <8 x i32> %i.z, splat (i32 32)
  %i.ac = add nuw nsw <8 x i32> %i.ab, %i.aa
  %i.ad = lshr <8 x i32> %i.ac, splat (i32 6)
  %i.ae = trunc <8 x i32> %i.ad to <8 x i16>
  store <8 x i16> %i.ae, ptr %0, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.af = mul nuw nsw <8 x i32> %i.y, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.ag = mul nuw nsw <8 x i32> %i.w, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ah = add nuw nsw <8 x i32> %i.af, splat (i32 32)
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.ak = trunc <8 x i32> %i.aj to <8 x i16>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.ak, ptr %i.al, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.am = mul nuw nsw <8 x i32> %i.y, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.an = mul nuw nsw <8 x i32> %i.w, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ao = add nuw nsw <8 x i32> %i.am, splat (i32 32)
  %i.ap = add nuw nsw <8 x i32> %i.ao, %i.an
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 6)
  %i.ar = trunc <8 x i32> %i.aq to <8 x i16>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.ar, ptr %i.as, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.at = mul nuw nsw <8 x i32> %i.y, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.au = mul nuw nsw <8 x i32> %i.w, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.av = add nuw nsw <8 x i32> %i.at, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.au
  %i.ax = lshr <8 x i32> %i.aw, splat (i32 6)
  %i.ay = trunc <8 x i32> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.ba = mul nuw nsw <8 x i32> %i.y, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.bb = mul nuw nsw <8 x i32> %i.w, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bc = add nuw nsw <8 x i32> %i.ba, splat (i32 32)
  %i.bd = add nuw nsw <8 x i32> %i.bc, %i.bb
  %i.be = lshr <8 x i32> %i.bd, splat (i32 6)
  %i.bf = trunc <8 x i32> %i.be to <8 x i16>
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.bf, ptr %i.bg, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.bh = mul nuw nsw <8 x i32> %i.y, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bi = mul nuw nsw <8 x i32> %i.w, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 32)
  %i.bk = add nuw nsw <8 x i32> %i.bj, %i.bi
  %i.bl = lshr <8 x i32> %i.bk, splat (i32 6)
  %i.bm = trunc <8 x i32> %i.bl to <8 x i16>
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.bo = mul nuw nsw <8 x i32> %i.y, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bp = mul nuw nsw <8 x i32> %i.w, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bq = add nuw nsw <8 x i32> %i.bo, splat (i32 32)
  %i.br = add nuw nsw <8 x i32> %i.bq, %i.bp
  %i.bs = lshr <8 x i32> %i.br, splat (i32 6)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bt, ptr %i.bu, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !82 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.by = zext i16 %i.bw to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next42, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next43, %vector.body37 ] ; 2 uses
  %vec.ind40 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.preheader ], [ %vec.ind.next45, %vector.body37 ] ; 2 uses
  %i.bz = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.ca = mul nuw nsw <8 x i64> %i.bz, %broadcast.splat36
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !82
  %broadcast.splatinsert40 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat41 = shufflevector <8 x i16> %broadcast.splatinsert40, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = zext <8 x i16> %broadcast.splat41 to <8 x i32>
  %i.cd = mul nuw nsw <8 x i32> %vec.ind40, %i.cc
  %i.ce = trunc nuw nsw <8 x i64> %i.ca to <8 x i32>
  %i.cf = add nuw nsw <8 x i32> %i.ce, splat (i32 32)
  %i.cg = add nuw nsw <8 x i32> %i.cf, %i.cd
  %i.ch = lshr <8 x i32> %i.cg, splat (i32 6)
  %i.ci = trunc <8 x i32> %i.ch to <8 x i16>
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ci, ptr %i.cj, align 2, !tbaa !82
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next43 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %vec.ind.next45 = add <8 x i32> %vec.ind40, splat (i32 8)
  %i.ck = icmp eq i64 %index.next42, 56
  br i1 %i.ck, label %scalar.ph33, label %vector.body37, !llvm.loop !495

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cl = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = sub i32 63, %i.cn
  %i.cp = mul nuw nsw i32 %i.co, %i.cm
  %i.cq = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cr = zext i16 %i.cq to i32
  %i.cs = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ct = mul nuw nsw i32 %i.cs, %i.cr
  %i.cu = add nuw nsw i32 %i.cp, 32
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cz = load i16, ptr %i.a, align 2, !tbaa !82
  %i.da = zext i16 %i.cz to i32
  %i.db = trunc i64 %indvars.iv.next to i32
  %i.dc = sub i32 63, %i.db
  %i.dd = mul nuw nsw i32 %i.dc, %i.da
  %i.de = load i16, ptr %i.d, align 2, !tbaa !82
  %i.df = zext i16 %i.de to i32
  %i.dg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dh = mul nuw nsw i32 %i.dg, %i.df
  %i.di = add nuw nsw i32 %i.dd, 32
  %i.dj = add nuw nsw i32 %i.di, %i.dh
  %i.dk = lshr i32 %i.dj, 6
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !496

scalar.ph33:                                      ; preds = %vector.body37
  %i.dn = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.do, 57
  %i.dq = zext i16 %i.bw to i32
  %i.dr = mul nuw nsw i32 %i.dq, 7
  %i.ds = add nuw nsw i32 %i.dr, 32
  %i.dt = add nuw nsw i32 %i.ds, %i.dp
  %i.du = lshr i32 %i.dt, 6
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !82
  %i.dx = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, 58
  %i.ea = zext i16 %i.bw to i32
  %i.eb = mul nuw nsw i32 %i.ea, 6
  %i.ec = add nuw nsw i32 %i.eb, 32
  %i.ed = add nuw nsw i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !82
  %i.eh = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.ei = zext i16 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 59
  %i.ek = zext i16 %i.bw to i32
  %i.el = mul nuw nsw i32 %i.ek, 5
  %i.em = add nuw nsw i32 %i.el, 32
  %i.en = add nuw nsw i32 %i.em, %i.ej
  %i.eo = lshr i32 %i.en, 6
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !82
  %i.er = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, 60
  %.tr = zext i16 %i.bw to i32
  %i.eu = shl nuw nsw i32 %.tr, 2
  %i.ev = add nuw nsw i32 %i.eu, 32
  %i.ew = add nuw nsw i32 %i.ev, %i.et
  %i.ex = lshr i32 %i.ew, 6
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !82
  %i.fa = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.fb, 61
  %i.fd = zext i16 %i.bw to i32
  %i.fe = mul nuw nsw i32 %i.fd, 3
  %i.ff = add nuw nsw i32 %i.fe, 32
  %i.fg = add nuw nsw i32 %i.ff, %i.fc
  %i.fh = lshr i32 %i.fg, 6
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !82
  %i.fk = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 62
  %.tr45 = zext i16 %i.bw to i32
  %i.fn = shl nuw nsw i32 %.tr45, 1
  %i.fo = add nuw nsw i32 %i.fn, 32
  %i.fp = add nuw nsw i32 %i.fo, %i.fm
  %i.fq = lshr i32 %i.fp, 6
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !82
  %i.ft = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 63
  %i.fw = zext i16 %i.bw to i32
  %i.fx = add nuw nsw i32 %i.fw, 32
  %i.fy = add nuw nsw i32 %i.fx, %i.fv
  %i.fz = lshr i32 %i.fy, 6
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 26 uses
  %i.b = alloca [81 x i8], align 16               ; 15 uses
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
  %.sink268.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.sink268.sroa.gep362 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
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
  %i.aw = sext i32 %i.av to i64                   ; 17 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.h
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !165
  %i.az = sext i32 %i.t to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = sext i32 %i.u to i64
  %i.bc = mul nsw i64 %i.aw, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc ; 19 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 20252
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !166 ; 20 uses
  %.in.i.v = select i1 %i.ab, i64 280, i64 284
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.i.v
  %i.bg = load i32, ptr %.in.i, align 4, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 26 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 13 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 31284
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !167
  %.not798.i = icmp eq i32 %i.bk, 0
end_hunk_2
begin_hunk_3_@ref_filter_3tap_8:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -7
  %i.bd = zext <8 x i8> %wide.load59 to <8 x i16>
  %i.be = add nuw nsw <8 x i16> %i.bd, splat (i16 2)
  %i.bf = zext <8 x i8> %wide.load61 to <8 x i16>
  %i.bg = shl nuw nsw <8 x i16> %i.bf, splat (i16 1)
  %i.bh = add nuw nsw <8 x i16> %i.be, %i.bg
  %i.bi = zext <8 x i8> %wide.load63 to <8 x i16>
  %i.bj = add nuw nsw <8 x i16> %i.bh, %i.bi
  %i.bk = lshr <8 x i16> %i.bj, splat (i16 2)
  %reverse65 = trunc nuw <8 x i16> %i.bk to <8 x i8>
  store <8 x i8> %reverse65, ptr %i.bc, align 1, !tbaa !78, !alias.scope !580, !noalias !579
  %index.next66 = add nuw i64 %index58, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next66, %n.vec57
  br i1 %i.bl, label %.lr.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !571

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %i.ae, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !78
  %i.bp = zext i8 %i.bo to i16
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !78
  %i.br = zext i8 %i.bq to i16
  %i.bs = shl nuw nsw i16 %i.br, 1
  %i.bt = getelementptr i8, ptr %i.bm, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !78
  %i.bv = zext i8 %i.bu to i16
  %i.bw = add nuw nsw i16 %i.bp, 2
  %i.bx = add nuw nsw i16 %i.bw, %i.bs
  %i.by = add nuw nsw i16 %i.bx, %i.bv
  %i.bz = lshr i16 %i.by, 2
  %i.ca = trunc nuw i16 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !78
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cc = trunc nuw i64 %indvars.iv to i32
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge, !llvm.loop !572

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.ce = load i8, ptr %2, align 1, !tbaa !78
  %i.cf = zext i8 %i.ce to i16
  %i.cg = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !78
  %i.ci = zext i8 %i.ch to i16
  %i.cj = shl nuw nsw i16 %i.ci, 1
  %i.ck = load i8, ptr %3, align 1, !tbaa !78
  %i.cl = zext i8 %i.ck to i16
  %i.cm = add nuw nsw i16 %i.cf, 2
  %i.cn = add nuw nsw i16 %i.cm, %i.cj
  %i.co = add nuw nsw i16 %i.cn, %i.cl
  %i.cp = lshr i16 %i.co, 2
  %i.cq = trunc nuw i16 %i.cp to i8               ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %0, i64 -1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !78
  %i.cs = getelementptr inbounds i8, ptr %1, i64 -1
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !78
  br i1 %i.k, label %iter.check98, label %._crit_edge43

iter.check98:                                     ; preds = %._crit_edge
  %i.ct = zext i32 %i.j to i64                    ; 10 uses
  %i.cu = add nsw i32 %i.a, -2
  %smin76 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cv = sub i32 %i.cu, %smin76                  ; 3 uses
  %i.cw = or disjoint i32 %i.cv, 1
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.cv, 8
  br i1 %min.iters.check77, label %.lr.ph42.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %iter.check98
  %i.cy = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cz = add nsw i32 %i.a, -2
  %i.da = sub i32 %i.cz, %i.cy
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = sub nsw i64 %i.ct, %i.db
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %i.de = getelementptr i8, ptr %1, i64 %i.ct
  %i.df = getelementptr i8, ptr %i.de, i64 1
  %i.dg = xor i64 %i.db, -1
  %i.dh = getelementptr i8, ptr %3, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.ct
  %i.dj = getelementptr i8, ptr %3, i64 %i.ct
  %i.dk = getelementptr i8, ptr %i.dj, i64 2
  %bound079 = icmp ult ptr %i.dd, %i.dk
  %bound180 = icmp ult ptr %i.di, %i.df
  %found.conflict81 = and i1 %bound079, %bound180
  br i1 %found.conflict81, label %.lr.ph42.preheader, label %vector.main.loop.iter.check82

vector.main.loop.iter.check82:                    ; preds = %vector.memcheck78
  %min.iters.check83 = icmp ult i32 %i.cv, 16
  br i1 %min.iters.check83, label %vec.epilog.ph102, label %vector.ph84

vector.ph84:                                      ; preds = %vector.main.loop.iter.check82
  %i.dl = and i64 %i.cx, 8
  %n.vec85 = and i64 %i.cx, 4294967280            ; 3 uses
  %i.dm = sub nsw i64 %i.ct, %n.vec85
  br label %vector.body86

vector.body86:                                    ; preds = %vector.ph84, %vector.body86
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next95, %vector.body86 ] ; 2 uses
  %i.dn = sub i64 %i.ct, %index87                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -14
  %wide.load88 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !78, !alias.scope !582
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -15
  %wide.load90 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !78, !alias.scope !582
  %i.dr = getelementptr i8, ptr %i.do, i64 -16
  %wide.load92 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !78, !alias.scope !582
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.dn
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -15
  %i.du = zext <16 x i8> %wide.load88 to <16 x i16>
  %i.dv = add nuw nsw <16 x i16> %i.du, splat (i16 2)
  %i.dw = zext <16 x i8> %wide.load90 to <16 x i16>
  %i.dx = shl nuw nsw <16 x i16> %i.dw, splat (i16 1)
  %i.dy = add nuw nsw <16 x i16> %i.dv, %i.dx
  %i.dz = zext <16 x i8> %wide.load92 to <16 x i16>
  %i.ea = add nuw nsw <16 x i16> %i.dy, %i.dz
  %i.eb = lshr <16 x i16> %i.ea, splat (i16 2)
  %reverse94 = trunc nuw <16 x i16> %i.eb to <16 x i8>
  store <16 x i8> %reverse94, ptr %i.dt, align 1, !tbaa !78, !alias.scope !583, !noalias !582
  %index.next95 = add nuw i64 %index87, 16        ; 2 uses
  %i.ec = icmp eq i64 %index.next95, %n.vec85
  br i1 %i.ec, label %vec.epilog.iter.check99, label %vector.body86, !llvm.loop !576

vec.epilog.iter.check99:                          ; preds = %vector.body86
  %min.epilog.iters.check101.not.not = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check101.not.not, label %.lr.ph42.preheader, label %vec.epilog.ph102, !prof !581

vec.epilog.ph102:                                 ; preds = %vector.main.loop.iter.check82, %vec.epilog.iter.check99
  %vec.epilog.resume.val103 = phi i64 [ %n.vec85, %vec.epilog.iter.check99 ], [ 0, %vector.main.loop.iter.check82 ]
  %n.vec104 = and i64 %i.cx, 4294967288           ; 2 uses
  %i.ed = sub nsw i64 %i.ct, %n.vec104
  br label %vec.epilog.vector.body105

vec.epilog.vector.body105:                        ; preds = %vec.epilog.vector.body105, %vec.epilog.ph102
  %index106 = phi i64 [ %vec.epilog.resume.val103, %vec.epilog.ph102 ], [ %index.next114, %vec.epilog.vector.body105 ] ; 2 uses
  %i.ee = sub i64 %i.ct, %index106                ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -6
  %wide.load107 = load <8 x i8>, ptr %i.eg, align 1, !tbaa !78, !alias.scope !582
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -7
  %wide.load109 = load <8 x i8>, ptr %i.eh, align 1, !tbaa !78, !alias.scope !582
  %i.ei = getelementptr i8, ptr %i.ef, i64 -8
  %wide.load111 = load <8 x i8>, ptr %i.ei, align 1, !tbaa !78, !alias.scope !582
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %i.ee
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -7
  %i.el = zext <8 x i8> %wide.load107 to <8 x i16>
  %i.em = add nuw nsw <8 x i16> %i.el, splat (i16 2)
  %i.en = zext <8 x i8> %wide.load109 to <8 x i16>
  %i.eo = shl nuw nsw <8 x i16> %i.en, splat (i16 1)
  %i.ep = add nuw nsw <8 x i16> %i.em, %i.eo
  %i.eq = zext <8 x i8> %wide.load111 to <8 x i16>
  %i.er = add nuw nsw <8 x i16> %i.ep, %i.eq
  %i.es = lshr <8 x i16> %i.er, splat (i16 2)
  %reverse113 = trunc nuw <8 x i16> %i.es to <8 x i8>
  store <8 x i8> %reverse113, ptr %i.ek, align 1, !tbaa !78, !alias.scope !583, !noalias !582
  %index.next114 = add nuw i64 %index106, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next114, %n.vec104
  br i1 %i.et, label %.lr.ph42.preheader, label %vec.epilog.vector.body105, !llvm.loop !577

.lr.ph42.preheader:                               ; preds = %vec.epilog.vector.body105, %iter.check98, %vector.memcheck78, %vec.epilog.iter.check99
  %indvars.iv45.ph = phi i64 [ %i.ct, %iter.check98 ], [ %i.ct, %vector.memcheck78 ], [ %i.dm, %vec.epilog.iter.check99 ], [ %i.ed, %vec.epilog.vector.body105 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !78
  %i.ex = zext i8 %i.ew to i16
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !78
  %i.ez = zext i8 %i.ey to i16
  %i.fa = shl nuw nsw i16 %i.ez, 1
  %i.fb = getelementptr i8, ptr %i.eu, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !78
  %i.fd = zext i8 %i.fc to i16
  %i.fe = add nuw nsw i16 %i.ex, 2
  %i.ff = add nuw nsw i16 %i.fe, %i.fa
  %i.fg = add nuw nsw i16 %i.ff, %i.fd
  %i.fh = lshr i16 %i.fg, 2
  %i.fi = trunc nuw i16 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv45
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !78
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.fk = trunc nuw i64 %indvars.iv45 to i32
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph42, label %._crit_edge43, !llvm.loop !578

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_8(ptr nofree noundef writeonly captures(none) initializes((-1, 0), (63, 64)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -1 ; 7 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !78
  %i.c = getelementptr inbounds i8, ptr %0, i64 -1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 63 ; 6 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  store i8 %i.e, ptr %i.f, align 1, !tbaa !78
  %i.g = getelementptr i8, ptr %2, i64 64
  %bound0 = icmp ult ptr %0, %i.g
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 60, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.h = load i8, ptr %i.a, align 1, !tbaa !78
  %i.i = zext i8 %i.h to i16
  %i.j = trunc nuw nsw i64 %indvars.iv.ph to i16
  %i.k = xor i16 %i.j, 63
  %i.l = mul nuw nsw i16 %i.k, %i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !78
  %i.n = zext i8 %i.m to i16
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i16
  %i.p = mul nuw nsw i16 %i.o, %i.n
  %i.q = add nuw nsw i16 %i.l, 32
  %i.r = add nuw i16 %i.q, %i.p
  %i.s = lshr i16 %i.r, 6
  %i.t = trunc i16 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.t, ptr %i.u, align 1, !tbaa !78
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.v = load i8, ptr %i.d, align 1, !tbaa !78, !alias.scope !588
  %broadcast.splatinsert29 = insertelement <8 x i8> poison, i8 %i.v, i64 0
  %broadcast.splat30 = shufflevector <8 x i8> %broadcast.splatinsert29, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.w = zext <8 x i8> %broadcast.splat30 to <8 x i16> ; 6 uses
  %i.x = load i8, ptr %i.a, align 1, !tbaa !78, !alias.scope !588
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.y = zext <8 x i8> %broadcast.splat to <8 x i16> ; 6 uses
  %3 = mul nuw nsw <8 x i16> %i.y, <i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56>
  %4 = mul nuw nsw <8 x i16> %i.y, <i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 48>
  %i.z = mul nuw nsw <8 x i16> %i.w, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>
  %i.aa = mul nuw nsw <8 x i16> %i.w, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %5 = add nuw nsw <8 x i16> %3, splat (i16 32)
  %6 = add nuw nsw <8 x i16> %4, splat (i16 32)
  %i.ab = add nuw <8 x i16> %5, %i.z
  %i.ac = add nuw <8 x i16> %6, %i.aa
  %7 = lshr <8 x i16> %i.ab, splat (i16 6)
  %i.ad = lshr <8 x i16> %i.ac, splat (i16 6)
  %8 = trunc <8 x i16> %7 to <8 x i8>
  %i.ae = trunc <8 x i16> %i.ad to <8 x i8>
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <8 x i8> %8, ptr %0, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  store <8 x i8> %i.ae, ptr %9, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %10 = mul nuw nsw <8 x i16> %i.y, <i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41, i16 40>
  %11 = mul nuw nsw <8 x i16> %i.y, <i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33, i16 32>
  %i.af = mul nuw nsw <8 x i16> %i.w, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24>
  %i.ag = mul nuw nsw <8 x i16> %i.w, <i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %12 = add nuw nsw <8 x i16> %10, splat (i16 32)
  %13 = add nuw nsw <8 x i16> %11, splat (i16 32)
  %i.ah = add nuw <8 x i16> %12, %i.af
  %i.ai = add nuw <8 x i16> %13, %i.ag
  %14 = lshr <8 x i16> %i.ah, splat (i16 6)
  %i.aj = lshr <8 x i16> %i.ai, splat (i16 6)
  %15 = trunc <8 x i16> %14 to <8 x i8>
  %i.ak = trunc <8 x i16> %i.aj to <8 x i8>
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <8 x i8> %15, ptr %16, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  store <8 x i8> %i.ak, ptr %i.al, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %17 = mul nuw nsw <8 x i16> %i.y, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24>
  %18 = mul nuw nsw <8 x i16> %i.y, <i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.am = mul nuw nsw <8 x i16> %i.w, <i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40>
  %i.an = mul nuw nsw <8 x i16> %i.w, <i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48>
  %19 = add nuw nsw <8 x i16> %17, splat (i16 32)
  %20 = add nuw nsw <8 x i16> %18, splat (i16 32)
  %i.ao = add nuw nsw <8 x i16> %19, %i.am
  %i.ap = add nuw nsw <8 x i16> %20, %i.an
  %21 = lshr <8 x i16> %i.ao, splat (i16 6)
  %i.aq = lshr <8 x i16> %i.ap, splat (i16 6)
  %22 = trunc <8 x i16> %21 to <8 x i8>
  %i.ar = trunc <8 x i16> %i.aq to <8 x i8>
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <8 x i8> %22, ptr %23, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  store <8 x i8> %i.ar, ptr %i.as, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %24 = load i8, ptr %i.d, align 1, !tbaa !78, !alias.scope !588
  %broadcast.splatinsert36 = insertelement <4 x i8> poison, i8 %24, i64 0
  %broadcast.splat37 = shufflevector <4 x i8> %broadcast.splatinsert36, <4 x i8> poison, <4 x i32> zeroinitializer
  %25 = zext <4 x i8> %broadcast.splat37 to <4 x i16> ; 3 uses
  %26 = load i8, ptr %i.a, align 1, !tbaa !78, !alias.scope !588
  %broadcast.splatinsert34 = insertelement <4 x i8> poison, i8 %26, i64 0
  %broadcast.splat35 = shufflevector <4 x i8> %broadcast.splatinsert34, <4 x i8> poison, <4 x i32> zeroinitializer
  %27 = zext <4 x i8> %broadcast.splat35 to <4 x i16> ; 3 uses
  %28 = mul nuw nsw <4 x i16> %27, <i16 15, i16 14, i16 13, i16 12>
  %29 = mul nuw nsw <4 x i16> %25, <i16 49, i16 50, i16 51, i16 52>
  %30 = add nuw nsw <4 x i16> %28, splat (i16 32)
  %31 = add nuw nsw <4 x i16> %30, %29
  %32 = lshr <4 x i16> %31, splat (i16 6)
  %33 = trunc <4 x i16> %32 to <4 x i8>
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i8> %33, ptr %i.at, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %34 = mul nuw nsw <4 x i16> %27, <i16 11, i16 10, i16 9, i16 8>
  %35 = mul nuw nsw <4 x i16> %25, <i16 53, i16 54, i16 55, i16 56>
  %36 = add nuw nsw <4 x i16> %34, splat (i16 32)
  %37 = add nuw nsw <4 x i16> %36, %35
  %38 = lshr <4 x i16> %37, splat (i16 6)
  %39 = trunc <4 x i16> %38 to <4 x i8>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <4 x i8> %39, ptr %i.au, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %40 = mul nuw nsw <4 x i16> %27, <i16 7, i16 6, i16 5, i16 4>
  %41 = mul nuw nsw <4 x i16> %25, <i16 57, i16 58, i16 59, i16 60>
  %42 = add nuw nsw <4 x i16> %40, splat (i16 32)
  %43 = add nuw nsw <4 x i16> %42, %41
  %44 = lshr <4 x i16> %43, splat (i16 6)
  %45 = trunc <4 x i16> %44 to <4 x i8>
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i8> %45, ptr %i.av, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.aw = getelementptr inbounds i8, ptr %1, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !78  ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 63 ; 14 uses
  %i.az = zext i8 %i.ax to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !78
  %broadcast.splatinsert40 = insertelement <8 x i8> poison, i8 %i.ba, i64 0
  %broadcast.splat41 = shufflevector <8 x i8> %broadcast.splatinsert40, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bb = zext <8 x i8> %broadcast.splat41 to <8 x i16>
  %i.bc = mul nuw nsw <8 x i16> %i.bb, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>
  %i.bd = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.be = mul nuw nsw <8 x i16> %i.bd, <i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56>
  %i.bf = add nuw nsw <8 x i16> %i.be, splat (i16 32)
  %i.bg = add nuw <8 x i16> %i.bf, %i.bc
  %i.bh = lshr <8 x i16> %i.bg, splat (i16 6)
  %i.bi = trunc <8 x i16> %i.bh to <8 x i8>
  store <8 x i8> %i.bi, ptr %1, align 1, !tbaa !78
  %i.bj = load i8, ptr %i.ay, align 1, !tbaa !78
  %broadcast.splatinsert40.1 = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %broadcast.splat41.1 = shufflevector <8 x i8> %broadcast.splatinsert40.1, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bk = zext <8 x i8> %broadcast.splat41.1 to <8 x i16>
  %i.bl = mul nuw nsw <8 x i16> %i.bk, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %i.bm = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.bn = mul nuw nsw <8 x i16> %i.bm, <i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 48>
  %i.bo = add nuw nsw <8 x i16> %i.bn, splat (i16 32)
  %i.bp = add nuw <8 x i16> %i.bo, %i.bl
  %i.bq = lshr <8 x i16> %i.bp, splat (i16 6)
  %i.br = trunc <8 x i16> %i.bq to <8 x i8>
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <8 x i8> %i.br, ptr %i.bs, align 1, !tbaa !78
  %i.bt = load i8, ptr %i.ay, align 1, !tbaa !78
  %broadcast.splatinsert40.2 = insertelement <8 x i8> poison, i8 %i.bt, i64 0
  %broadcast.splat41.2 = shufflevector <8 x i8> %broadcast.splatinsert40.2, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bu = zext <8 x i8> %broadcast.splat41.2 to <8 x i16>
  %i.bv = mul nuw nsw <8 x i16> %i.bu, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24>
  %i.bw = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.bx = mul nuw nsw <8 x i16> %i.bw, <i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41, i16 40>
  %i.by = add nuw nsw <8 x i16> %i.bx, splat (i16 32)
  %i.bz = add nuw <8 x i16> %i.by, %i.bv
  %i.ca = lshr <8 x i16> %i.bz, splat (i16 6)
  %i.cb = trunc <8 x i16> %i.ca to <8 x i8>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <8 x i8> %i.cb, ptr %i.cc, align 1, !tbaa !78
  %i.cd = load i8, ptr %i.ay, align 1, !tbaa !78
  %broadcast.splatinsert40.3 = insertelement <8 x i8> poison, i8 %i.cd, i64 0
  %broadcast.splat41.3 = shufflevector <8 x i8> %broadcast.splatinsert40.3, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ce = zext <8 x i8> %broadcast.splat41.3 to <8 x i16>
  %i.cf = mul nuw nsw <8 x i16> %i.ce, <i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %i.cg = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.ch = mul nuw nsw <8 x i16> %i.cg, <i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33, i16 32>
  %i.ci = add nuw nsw <8 x i16> %i.ch, splat (i16 32)
  %i.cj = add nuw <8 x i16> %i.ci, %i.cf
  %i.ck = lshr <8 x i16> %i.cj, splat (i16 6)
  %i.cl = trunc <8 x i16> %i.ck to <8 x i8>
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <8 x i8> %i.cl, ptr %i.cm, align 1, !tbaa !78
  %i.cn = load i8, ptr %i.ay, align 1, !tbaa !78
  %broadcast.splatinsert40.4 = insertelement <8 x i8> poison, i8 %i.cn, i64 0
  %broadcast.splat41.4 = shufflevector <8 x i8> %broadcast.splatinsert40.4, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.co = zext <8 x i8> %broadcast.splat41.4 to <8 x i16>
  %i.cp = mul nuw nsw <8 x i16> %i.co, <i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40>
  %i.cq = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.cr = mul nuw nsw <8 x i16> %i.cq, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24>
  %i.cs = add nuw nsw <8 x i16> %i.cr, splat (i16 32)
  %i.ct = add nuw nsw <8 x i16> %i.cs, %i.cp
  %i.cu = lshr <8 x i16> %i.ct, splat (i16 6)
  %i.cv = trunc <8 x i16> %i.cu to <8 x i8>
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <8 x i8> %i.cv, ptr %i.cw, align 1, !tbaa !78
  %i.cx = load i8, ptr %i.ay, align 1, !tbaa !78
  %broadcast.splatinsert40.5 = insertelement <8 x i8> poison, i8 %i.cx, i64 0
  %broadcast.splat41.5 = shufflevector <8 x i8> %broadcast.splatinsert40.5, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cy = zext <8 x i8> %broadcast.splat41.5 to <8 x i16>
  %i.cz = mul nuw nsw <8 x i16> %i.cy, <i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48>
  %i.da = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.db = mul nuw nsw <8 x i16> %i.da, <i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.dc = add nuw nsw <8 x i16> %i.db, splat (i16 32)
  %i.dd = add nuw nsw <8 x i16> %i.dc, %i.cz
  %i.de = lshr <8 x i16> %i.dd, splat (i16 6)
  %i.df = trunc <8 x i16> %i.de to <8 x i8>
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <8 x i8> %i.df, ptr %i.dg, align 1, !tbaa !78
  %i.dh = load i8, ptr %i.ay, align 1, !tbaa !78
  %broadcast.splatinsert40.6 = insertelement <8 x i8> poison, i8 %i.dh, i64 0
  %broadcast.splat41.6 = shufflevector <8 x i8> %broadcast.splatinsert40.6, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.di = zext <8 x i8> %broadcast.splat41.6 to <8 x i16>
  %i.dj = mul nuw nsw <8 x i16> %i.di, <i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56>
  %i.dk = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.dl = mul nuw nsw <8 x i16> %i.dk, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8>
  %i.dm = add nuw nsw <8 x i16> %i.dl, splat (i16 32)
  %i.dn = add nuw nsw <8 x i16> %i.dm, %i.dj
  %i.do = lshr <8 x i16> %i.dn, splat (i16 6)
  %i.dp = trunc <8 x i16> %i.do to <8 x i8>
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <8 x i8> %i.dp, ptr %i.dq, align 1, !tbaa !78
  %i.dr = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.ds = zext i8 %i.dr to i16
  %i.dt = mul nuw nsw i16 %i.ds, 57
  %i.du = zext i8 %i.ax to i16
  %i.dv = mul nuw nsw i16 %i.du, 7
  %i.dw = add nuw nsw i16 %i.dv, 32
  %i.dx = add nuw nsw i16 %i.dw, %i.dt
  %i.dy = lshr i16 %i.dx, 6
  %i.dz = trunc i16 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !78
  %i.eb = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.ec = zext i8 %i.eb to i16
  %i.ed = mul nuw nsw i16 %i.ec, 58
  %i.ee = zext i8 %i.ax to i16
  %i.ef = mul nuw nsw i16 %i.ee, 6
  %i.eg = add nuw nsw i16 %i.ef, 32
  %i.eh = add nuw nsw i16 %i.eg, %i.ed
  %i.ei = lshr i16 %i.eh, 6
  %i.ej = trunc i16 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !78
  %i.el = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.em = zext i8 %i.el to i16
  %i.en = mul nuw nsw i16 %i.em, 59
  %i.eo = zext i8 %i.ax to i16
  %i.ep = mul nuw nsw i16 %i.eo, 5
  %i.eq = add nuw nsw i16 %i.ep, 32
  %i.er = add nuw nsw i16 %i.eq, %i.en
  %i.es = lshr i16 %i.er, 6
  %i.et = trunc i16 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !78
  %i.ev = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.ew = zext i8 %i.ev to i16
  %i.ex = mul nuw nsw i16 %i.ew, 60
  %.tr = zext i8 %i.ax to i16
  %i.ey = shl nuw nsw i16 %.tr, 2
  %i.ez = add nuw nsw i16 %i.ey, 32
  %i.fa = add nuw nsw i16 %i.ez, %i.ex
  %i.fb = lshr i16 %i.fa, 6
  %i.fc = trunc i16 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 59
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !78
  %i.fe = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.ff = zext i8 %i.fe to i16
  %i.fg = mul nuw nsw i16 %i.ff, 61
  %i.fh = zext i8 %i.ax to i16
  %i.fi = mul nuw nsw i16 %i.fh, 3
  %i.fj = add nuw nsw i16 %i.fi, 32
  %i.fk = add nuw nsw i16 %i.fj, %i.fg
  %i.fl = lshr i16 %i.fk, 6
  %i.fm = trunc i16 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !78
  %i.fo = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.fp = zext i8 %i.fo to i16
  %i.fq = mul nuw nsw i16 %i.fp, 62
  %.tr45 = zext i8 %i.ax to i16
  %i.fr = shl nuw nsw i16 %.tr45, 1
  %i.fs = add nuw nsw i16 %i.fr, 32
  %i.ft = add nuw nsw i16 %i.fs, %i.fq
  %i.fu = lshr i16 %i.ft, 6
  %i.fv = trunc i16 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !78
  %i.fx = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.fy = zext i8 %i.fx to i16
  %i.fz = mul nuw nsw i16 %i.fy, 63
  %i.ga = zext i8 %i.ax to i16
  %i.gb = add nuw nsw i16 %i.ga, 32
  %i.gc = add nuw nsw i16 %i.gb, %i.fz
  %i.gd = lshr i16 %i.gc, 6
  %i.ge = trunc i16 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !78
  ret void

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gg = load i8, ptr %i.a, align 1, !tbaa !78
  %i.gh = zext i8 %i.gg to i16
  %i.gi = trunc i64 %indvars.iv to i16
  %i.gj = sub i16 63, %i.gi
  %i.gk = mul i16 %i.gj, %i.gh
  %i.gl = load i8, ptr %i.d, align 1, !tbaa !78
  %i.gm = zext i8 %i.gl to i16
  %i.gn = trunc i64 %indvars.iv.next to i16
  %i.go = mul i16 %i.gn, %i.gm
  %i.gp = add i16 %i.gk, 32
  %i.gq = add i16 %i.gp, %i.go
  %i.gr = lshr i16 %i.gq, 6
  %i.gs = trunc i16 %i.gr to i8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !78
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gu = load i8, ptr %i.a, align 1, !tbaa !78
  %i.gv = zext i8 %i.gu to i16
  %i.gw = trunc i64 %indvars.iv.next to i16
  %i.gx = sub i16 63, %i.gw
end_hunk_3
