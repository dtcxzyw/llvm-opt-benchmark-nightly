Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bink?download=true
inline.NumInlined: 150
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 46
begin_hunk_0_@read_dct_coeffs:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @read_residue(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca [128 x i32], align 16             ; 11 uses
  %i.b = alloca [128 x i32], align 16             ; 11 uses
  %i.c = alloca [64 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store <4 x i32> <i32 4, i32 24, i32 44, i32 0>, ptr %i.d, align 16, !tbaa !51
  store <4 x i32> <i32 0, i32 0, i32 0, i32 2>, ptr %i.e, align 16, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !49   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48   ; 12 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !46     ; 12 uses
  %i.k = lshr i32 %i.g, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 1, !tbaa !36
  %i.o = and i32 %i.g, 7
  %i.p = lshr i32 %i.n, %i.o
  %i.q = and i32 %i.p, 7
  %i.r = add i32 %i.g, 3
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.r) ; 2 uses
  store i32 %i.s, ptr %i.f, align 8, !tbaa !49
  %i.t = shl nuw nsw i32 1, %i.q
  br label %.preheader118

.preheader118:                                    ; preds = %bb.a, %.outer._crit_edge
  %.promoted = phi i32 [ %i.s, %bb.a ], [ %.promoted214, %.outer._crit_edge ] ; 2 uses
  %.0175 = phi i32 [ 0, %bb.a ], [ %.1.ph.lcssa130, %.outer._crit_edge ] ; 4 uses
  %.080174 = phi i32 [ 68, %bb.a ], [ %.181.ph.lcssa132, %.outer._crit_edge ] ; 3 uses
  %.084173 = phi i32 [ 64, %bb.a ], [ %.185.ph.lcssa134, %.outer._crit_edge ] ; 4 uses
  %.091172 = phi i32 [ %i.t, %bb.a ], [ %i.iz, %.outer._crit_edge ] ; 7 uses
  %.095171 = phi i32 [ %2, %bb.a ], [ %.398.ph.lcssa136, %.outer._crit_edge ] ; 2 uses
  %i.u = icmp sgt i32 %.0175, 0
  br i1 %i.u, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader118
  %i.v = trunc nuw nsw i32 %.091172 to i16        ; 2 uses
  %i.w = sub nsw i16 0, %i.v
  %wide.trip.count = zext nneg i32 %.0175 to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.d, %.preheader118
  %.promoted218 = phi i32 [ %.promoted, %.preheader118 ], [ %spec.select.i, %bb.d ] ; 2 uses
  %.196.lcssa = phi i32 [ %.095171, %.preheader118 ], [ %.297, %bb.d ] ; 2 uses
  %i.x = icmp slt i32 %.084173, %.080174
  br i1 %i.x, label %.lr.ph142, label %.outer._crit_edge

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.y = phi i32 [ %.promoted, %.lr.ph ], [ %spec.select.i, %bb.d ] ; 4 uses
  %.196137 = phi i32 [ %.095171, %.lr.ph ], [ %.297, %bb.d ] ; 3 uses
  %i.z = lshr i32 %i.y, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !36
  %i.ad = icmp slt i32 %i.y, %i.i
  %i.ae = zext i1 %i.ad to i32
  %spec.select.i = add i32 %i.y, %i.ae            ; 3 uses
  %i.af = zext i8 %i.ac to i32
  %i.ag = and i32 %i.y, 7
  store i32 %spec.select.i, ptr %i.f, align 8, !tbaa !49
  %i.ah = shl nuw nsw i32 1, %i.ag
  %i.ai = and i32 %i.ah, %i.af
  %.not109 = icmp eq i32 %i.ai, 0
  br i1 %.not109, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !51
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %1, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !62 ; 2 uses
  %i.ao = icmp slt i16 %i.an, 0
  %storemerge.p = select i1 %i.ao, i16 %i.w, i16 %i.v
  %storemerge = add i16 %storemerge.p, %i.an
  store i16 %storemerge, ptr %i.am, align 2, !tbaa !62
  %i.ap = add nsw i32 %.196137, -1
  %i.aq = icmp slt i32 %.196137, 1
  br i1 %i.aq, label %.loopexit115, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.297 = phi i32 [ %i.ap, %bb.c ], [ %.196137, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !127

bb.e:                                             ; preds = %.lr.ph142, %bb.g
  %i.ar = phi i32 [ %.promoted217, %.lr.ph142 ], [ %.promoted215, %bb.g ] ; 5 uses
  %indvars.iv201 = phi i64 [ %i.ix, %.lr.ph142 ], [ %indvars.iv.next202, %bb.g ] ; 6 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv201
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51 ; 7 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv201
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51 ; 2 uses
  %i.aw = or i32 %i.av, %i.at
  %.not106 = icmp eq i32 %i.aw, 0
  br i1 %.not106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = lshr i32 %i.ar, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !36
  %i.bb = icmp slt i32 %i.ar, %i.i
  %i.bc = zext i1 %i.bb to i32
  %spec.select.i110 = add i32 %i.ar, %i.bc        ; 12 uses
  %i.bd = zext i8 %i.ba to i32
  %i.be = and i32 %i.ar, 7
  store i32 %spec.select.i110, ptr %i.f, align 8, !tbaa !49
  %i.bf = shl nuw nsw i32 1, %i.be
  %i.bg = and i32 %i.bf, %i.bd
  %.not107 = icmp eq i32 %i.bg, 0
  br i1 %.not107, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted215 = phi i32 [ %spec.select.i110, %bb.f ], [ %i.ar, %bb.e ] ; 2 uses
  %indvars.iv.next202 = add nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv.next202, %i.iy
  br i1 %i.bh, label %bb.e, label %.outer._crit_edge, !llvm.loop !128

bb.h:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv201 ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv201 ; 3 uses
  %i.bk = trunc nsw i64 %indvars.iv201 to i32     ; 5 uses
  switch i32 %i.av, label %.outer [
    i32 0, label %bb.i
    i32 3, label %bb.w
    i32 1, label %.outer.loopexit176
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.bl = add nsw i32 %i.at, 4
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !51
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 0, ptr %i.bi, align 4, !tbaa !51
  %i.bm = add nsw i32 %i.bk, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %storemerge114 = phi i32 [ 0, %bb.j ], [ 1, %bb.i ]
  %.178 = phi i32 [ %i.bm, %bb.j ], [ %i.bk, %bb.i ] ; 2 uses
  store i32 %storemerge114, ptr %i.bj, align 4, !tbaa !51
  %i.bn = sext i32 %i.at to i64                   ; 4 uses
  %i.bo = lshr i32 %spec.select.i110, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !36
  %i.bs = icmp slt i32 %spec.select.i110, %i.i
  %i.bt = zext i1 %i.bs to i32
  %spec.select.i111 = add i32 %spec.select.i110, %i.bt ; 6 uses
  %i.bu = zext i8 %i.br to i32
  %i.bv = and i32 %spec.select.i110, 7
  store i32 %spec.select.i111, ptr %i.f, align 8, !tbaa !49
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = and i32 %i.bw, %i.bu
  %.not108 = icmp eq i32 %i.bx, 0
  br i1 %.not108, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %.185.ph163, -1             ; 2 uses
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bz
  store i32 %i.at, ptr %i.ca, align 4, !tbaa !51
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bz
  store i32 3, ptr %i.cb, align 4, !tbaa !51
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds i8, ptr @bink_scan, i64 %i.bn
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !36  ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nsw i32 %.1.ph166, 1
  %i.cg = sext i32 %.1.ph166 to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cg
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !51
  %i.ci = lshr i32 %spec.select.i111, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !36
  %i.cm = icmp slt i32 %spec.select.i111, %i.i
  %i.cn = zext i1 %i.cm to i32
  %spec.select.i112 = add i32 %spec.select.i111, %i.cn ; 2 uses
  %i.co = zext i8 %i.cl to i32
  %i.cp = and i32 %spec.select.i111, 7
  %i.cq = lshr i32 %i.co, %i.cp
  %i.cr = and i32 %i.cq, 1                        ; 2 uses
  store i32 %spec.select.i112, ptr %i.f, align 8, !tbaa !49
  %i.cs = sub nsw i32 0, %i.cr
  %i.ct = xor i32 %.091172, %i.cs
  %i.cu = add nsw i32 %i.ct, %i.cr
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = zext i8 %i.cd to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cw
  store i16 %i.cv, ptr %i.cx, align 2, !tbaa !62
  %i.cy = add nsw i32 %.398.ph162, -1
  %i.cz = icmp slt i32 %.398.ph162, 1
  br i1 %i.cz, label %.loopexit115, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %spec.select.i112160 = phi i32 [ %spec.select.i111, %bb.l ], [ %spec.select.i112, %bb.m ] ; 4 uses
  %.5 = phi i32 [ %.398.ph162, %bb.l ], [ %i.cy, %bb.m ] ; 3 uses
  %.387 = phi i32 [ %i.by, %bb.l ], [ %.185.ph163, %bb.m ] ; 2 uses
  %.3 = phi i32 [ %.1.ph166, %bb.l ], [ %i.cf, %bb.m ] ; 3 uses
  %indvars.iv.next211 = add nsw i64 %i.bn, 1      ; 2 uses
  %i.da = lshr i32 %spec.select.i112160, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !36
  %i.de = icmp slt i32 %spec.select.i112160, %i.i
  %i.df = zext i1 %i.de to i32
  %spec.select.i111.1 = add i32 %spec.select.i112160, %i.df ; 6 uses
  %i.dg = zext i8 %i.dd to i32
  %i.dh = and i32 %spec.select.i112160, 7
  store i32 %spec.select.i111.1, ptr %i.f, align 8, !tbaa !49
  %i.di = shl nuw nsw i32 1, %i.dh
  %i.dj = and i32 %i.di, %i.dg
  %.not108.1 = icmp eq i32 %i.dj, 0
  br i1 %.not108.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = add nsw i32 %.387, -1                   ; 2 uses
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dl
  %i.dn = trunc nsw i64 %indvars.iv.next211 to i32
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !51
  %i.do = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dl
  store i32 3, ptr %i.do, align 4, !tbaa !51
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds i8, ptr @bink_scan, i64 %indvars.iv.next211
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !36  ; 2 uses
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %.3, 1
  %i.dt = sext i32 %.3 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dt
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !51
  %i.dv = lshr i32 %spec.select.i111.1, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !36
  %i.dz = icmp slt i32 %spec.select.i111.1, %i.i
  %i.ea = zext i1 %i.dz to i32
  %spec.select.i112.1 = add i32 %spec.select.i111.1, %i.ea ; 2 uses
  %i.eb = zext i8 %i.dy to i32
  %i.ec = and i32 %spec.select.i111.1, 7
  %i.ed = lshr i32 %i.eb, %i.ec
  %i.ee = and i32 %i.ed, 1                        ; 2 uses
  store i32 %spec.select.i112.1, ptr %i.f, align 8, !tbaa !49
  %i.ef = sub nsw i32 0, %i.ee
  %i.eg = xor i32 %.091172, %i.ef
  %i.eh = add nsw i32 %i.eg, %i.ee
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = zext i8 %i.dq to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ej
  store i16 %i.ei, ptr %i.ek, align 2, !tbaa !62
  %i.el = add nsw i32 %.5, -1
  %i.em = icmp slt i32 %.5, 1
  br i1 %i.em, label %.loopexit115, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %spec.select.i112160.1 = phi i32 [ %spec.select.i111.1, %bb.o ], [ %spec.select.i112.1, %bb.p ] ; 4 uses
  %.5.1 = phi i32 [ %.5, %bb.o ], [ %i.el, %bb.p ] ; 3 uses
  %.387.1 = phi i32 [ %i.dk, %bb.o ], [ %.387, %bb.p ] ; 2 uses
  %.3.1 = phi i32 [ %.3, %bb.o ], [ %i.ds, %bb.p ] ; 3 uses
  %indvars.iv.next211.1 = add nsw i64 %i.bn, 2    ; 2 uses
  %i.en = lshr i32 %spec.select.i112160.1, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !36
  %i.er = icmp slt i32 %spec.select.i112160.1, %i.i
  %i.es = zext i1 %i.er to i32
  %spec.select.i111.2 = add i32 %spec.select.i112160.1, %i.es ; 6 uses
  %i.et = zext i8 %i.eq to i32
  %i.eu = and i32 %spec.select.i112160.1, 7
  store i32 %spec.select.i111.2, ptr %i.f, align 8, !tbaa !49
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = and i32 %i.ev, %i.et
  %.not108.2 = icmp eq i32 %i.ew, 0
  br i1 %.not108.2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ex = add nsw i32 %.387.1, -1                 ; 2 uses
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ey
  %i.fa = trunc nsw i64 %indvars.iv.next211.1 to i32
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !51
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ey
  store i32 3, ptr %i.fb, align 4, !tbaa !51
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds i8, ptr @bink_scan, i64 %indvars.iv.next211.1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !36  ; 2 uses
  %i.fe = zext i8 %i.fd to i32
  %i.ff = add nsw i32 %.3.1, 1
  %i.fg = sext i32 %.3.1 to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fg
  store i32 %i.fe, ptr %i.fh, align 4, !tbaa !51
  %i.fi = lshr i32 %spec.select.i111.2, 3
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !36
  %i.fm = icmp slt i32 %spec.select.i111.2, %i.i
  %i.fn = zext i1 %i.fm to i32
  %spec.select.i112.2 = add i32 %spec.select.i111.2, %i.fn ; 2 uses
  %i.fo = zext i8 %i.fl to i32
  %i.fp = and i32 %spec.select.i111.2, 7
  %i.fq = lshr i32 %i.fo, %i.fp
  %i.fr = and i32 %i.fq, 1                        ; 2 uses
  store i32 %spec.select.i112.2, ptr %i.f, align 8, !tbaa !49
  %i.fs = sub nsw i32 0, %i.fr
  %i.ft = xor i32 %.091172, %i.fs
  %i.fu = add nsw i32 %i.ft, %i.fr
  %i.fv = trunc i32 %i.fu to i16
  %i.fw = zext i8 %i.fd to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fw
  store i16 %i.fv, ptr %i.fx, align 2, !tbaa !62
  %i.fy = add nsw i32 %.5.1, -1
  %i.fz = icmp slt i32 %.5.1, 1
  br i1 %i.fz, label %.loopexit115, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %spec.select.i112160.2 = phi i32 [ %spec.select.i111.2, %bb.r ], [ %spec.select.i112.2, %bb.s ] ; 4 uses
  %.5.2 = phi i32 [ %.5.1, %bb.r ], [ %i.fy, %bb.s ] ; 3 uses
  %.387.2 = phi i32 [ %i.ex, %bb.r ], [ %.387.1, %bb.s ] ; 2 uses
  %.3.2 = phi i32 [ %.3.1, %bb.r ], [ %i.ff, %bb.s ] ; 3 uses
  %indvars.iv.next211.2 = add nsw i64 %i.bn, 3    ; 2 uses
  %i.ga = lshr i32 %spec.select.i112160.2, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !36
  %i.ge = icmp slt i32 %spec.select.i112160.2, %i.i
  %i.gf = zext i1 %i.ge to i32
  %spec.select.i111.3 = add i32 %spec.select.i112160.2, %i.gf ; 6 uses
  %i.gg = zext i8 %i.gd to i32
  %i.gh = and i32 %spec.select.i112160.2, 7
  store i32 %spec.select.i111.3, ptr %i.f, align 8, !tbaa !49
  %i.gi = shl nuw nsw i32 1, %i.gh
  %i.gj = and i32 %i.gi, %i.gg
  %.not108.3 = icmp eq i32 %i.gj, 0
  br i1 %.not108.3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gk = add nsw i32 %.387.2, -1                 ; 2 uses
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gl
  %i.gn = trunc nsw i64 %indvars.iv.next211.2 to i32
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !51
  br label %.outer.sink.split

bb.v:                                             ; preds = %bb.t
  %i.go = getelementptr inbounds i8, ptr @bink_scan, i64 %indvars.iv.next211.2
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !36  ; 2 uses
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add nsw i32 %.3.2, 1
  %i.gs = sext i32 %.3.2 to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.gs
  store i32 %i.gq, ptr %i.gt, align 4, !tbaa !51
  %i.gu = lshr i32 %spec.select.i111.3, 3
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !36
  %i.gy = icmp slt i32 %spec.select.i111.3, %i.i
  %i.gz = zext i1 %i.gy to i32
  %spec.select.i112.3 = add i32 %spec.select.i111.3, %i.gz ; 2 uses
  %i.ha = zext i8 %i.gx to i32
  %i.hb = and i32 %spec.select.i111.3, 7
  %i.hc = lshr i32 %i.ha, %i.hb
  %i.hd = and i32 %i.hc, 1                        ; 2 uses
  store i32 %spec.select.i112.3, ptr %i.f, align 8, !tbaa !49
  %i.he = sub nsw i32 0, %i.hd
  %i.hf = xor i32 %.091172, %i.he
  %i.hg = add nsw i32 %i.hf, %i.hd
  %i.hh = trunc i32 %i.hg to i16
  %i.hi = zext i8 %i.gp to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.hi
  store i16 %i.hh, ptr %i.hj, align 2, !tbaa !62
  %i.hk = add nsw i32 %.5.2, -1
  %i.hl = icmp slt i32 %.5.2, 1
  br i1 %i.hl, label %.loopexit115, label %.outer

.outer.loopexit176:                               ; preds = %bb.h
  store i32 2, ptr %i.bj, align 4, !tbaa !51
  %i.hm = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.hn = shufflevector <2 x i32> %i.hm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ho = add nsw <2 x i32> %i.hn, <i32 4, i32 8>
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.iy
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.iy
  store i32 2, ptr %i.hq, align 4, !tbaa !51
  store <2 x i32> %i.ho, ptr %i.hp, align 4, !tbaa !51
  %indvars.iv.next205.1 = add nsw i64 %i.iy, 2    ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.b, i64 %i.iy
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  store i32 2, ptr %i.hs, align 4, !tbaa !51
  %i.ht = add nsw i32 %i.at, 12
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next205.1
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !51
  %indvars.iv.next205.2 = add i32 %.181.ph164, 3
  br label %.outer.sink.split

bb.w:                                             ; preds = %bb.h
  %i.hv = sext i32 %i.at to i64
  %i.hw = getelementptr inbounds i8, ptr @bink_scan, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !36  ; 2 uses
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nsw i32 %.1.ph166, 1
  %i.ia = sext i32 %.1.ph166 to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ia
  store i32 %i.hy, ptr %i.ib, align 4, !tbaa !51
  %i.ic = lshr i32 %spec.select.i110, 3
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !36
  %i.ig = icmp slt i32 %spec.select.i110, %i.i
  %i.ih = zext i1 %i.ig to i32
  %spec.select.i113 = add i32 %spec.select.i110, %i.ih ; 2 uses
  %i.ii = zext i8 %i.if to i32
  %i.ij = and i32 %spec.select.i110, 7
  %i.ik = lshr i32 %i.ii, %i.ij
  %i.il = and i32 %i.ik, 1                        ; 2 uses
  store i32 %spec.select.i113, ptr %i.f, align 8, !tbaa !49
  %i.im = sub nsw i32 0, %i.il
  %i.in = xor i32 %.091172, %i.im
  %i.io = add nsw i32 %i.in, %i.il
  %i.ip = trunc i32 %i.io to i16
  %i.iq = zext i8 %i.hx to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iq
  store i16 %i.ip, ptr %i.ir, align 2, !tbaa !62
  store i32 0, ptr %i.bi, align 4, !tbaa !51
  %i.is = add nsw i32 %i.bk, 1
  store i32 0, ptr %i.bj, align 4, !tbaa !51
  %i.it = add nsw i32 %.398.ph162, -1
  %i.iu = icmp slt i32 %.398.ph162, 1
  br i1 %i.iu, label %.loopexit115, label %.outer

.outer.sink.split:                                ; preds = %.outer.loopexit176, %bb.u
  %.sink245 = phi i64 [ %i.gl, %bb.u ], [ %indvars.iv.next205.1, %.outer.loopexit176 ]
  %.sink = phi i32 [ 3, %bb.u ], [ 2, %.outer.loopexit176 ]
  %.promoted220.ph = phi i32 [ %spec.select.i111.3, %bb.u ], [ %spec.select.i110, %.outer.loopexit176 ]
  %.6.ph = phi i32 [ %.5.2, %bb.u ], [ %.398.ph162, %.outer.loopexit176 ]
  %.488.ph = phi i32 [ %i.gk, %bb.u ], [ %.185.ph163, %.outer.loopexit176 ]
  %.383.ph = phi i32 [ %.181.ph164, %bb.u ], [ %indvars.iv.next205.2, %.outer.loopexit176 ]
  %.279.ph = phi i32 [ %.178, %bb.u ], [ %i.bk, %.outer.loopexit176 ]
  %.4.ph = phi i32 [ %.3.2, %bb.u ], [ %.1.ph166, %.outer.loopexit176 ]
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.sink245
  store i32 %.sink, ptr %i.iv, align 4, !tbaa !51
  br label %.outer

.outer:                                           ; preds = %.outer.sink.split, %bb.v, %bb.h, %bb.w
  %.promoted220 = phi i32 [ %spec.select.i110, %bb.h ], [ %spec.select.i113, %bb.w ], [ %spec.select.i112.3, %bb.v ], [ %.promoted220.ph, %.outer.sink.split ] ; 2 uses
  %.6 = phi i32 [ %.398.ph162, %bb.h ], [ %i.it, %bb.w ], [ %i.hk, %bb.v ], [ %.6.ph, %.outer.sink.split ] ; 2 uses
  %.488 = phi i32 [ %.185.ph163, %bb.h ], [ %.185.ph163, %bb.w ], [ %.387.2, %bb.v ], [ %.488.ph, %.outer.sink.split ] ; 2 uses
  %.383 = phi i32 [ %.181.ph164, %bb.h ], [ %.181.ph164, %bb.w ], [ %.181.ph164, %bb.v ], [ %.383.ph, %.outer.sink.split ] ; 3 uses
  %.279 = phi i32 [ %i.bk, %bb.h ], [ %i.is, %bb.w ], [ %.178, %bb.v ], [ %.279.ph, %.outer.sink.split ] ; 2 uses
  %.4 = phi i32 [ %.1.ph166, %bb.h ], [ %i.hz, %bb.w ], [ %i.gr, %bb.v ], [ %.4.ph, %.outer.sink.split ] ; 2 uses
  %i.iw = icmp slt i32 %.279, %.383
  br i1 %i.iw, label %.lr.ph142, label %.outer._crit_edge, !llvm.loop !128

.lr.ph142:                                        ; preds = %.preheader, %.outer
  %.promoted217 = phi i32 [ %.promoted220, %.outer ], [ %.promoted218, %.preheader ]
  %.1.ph166 = phi i32 [ %.4, %.outer ], [ %.0175, %.preheader ] ; 8 uses
  %.077.ph165 = phi i32 [ %.279, %.outer ], [ %.084173, %.preheader ]
  %.181.ph164 = phi i32 [ %.383, %.outer ], [ %.080174, %.preheader ] ; 7 uses
  %.185.ph163 = phi i32 [ %.488, %.outer ], [ %.084173, %.preheader ] ; 6 uses
  %.398.ph162 = phi i32 [ %.6, %.outer ], [ %.196.lcssa, %.preheader ] ; 8 uses
  %i.ix = sext i32 %.077.ph165 to i64
  %i.iy = sext i32 %.181.ph164 to i64             ; 5 uses
  br label %bb.e

.outer._crit_edge:                                ; preds = %.outer, %bb.g, %.preheader
  %.promoted214 = phi i32 [ %.promoted215, %bb.g ], [ %.promoted218, %.preheader ], [ %.promoted220, %.outer ]
  %.398.ph.lcssa136 = phi i32 [ %.398.ph162, %bb.g ], [ %.196.lcssa, %.preheader ], [ %.6, %.outer ]
  %.185.ph.lcssa134 = phi i32 [ %.185.ph163, %bb.g ], [ %.084173, %.preheader ], [ %.488, %.outer ]
  %.181.ph.lcssa132 = phi i32 [ %.181.ph164, %bb.g ], [ %.080174, %.preheader ], [ %.383, %.outer ]
  %.1.ph.lcssa130 = phi i32 [ %.1.ph166, %bb.g ], [ %.0175, %.preheader ], [ %.4, %.outer ]
  %i.iz = lshr i32 %.091172, 1                    ; 2 uses
  %.not = icmp eq i32 %i.iz, 0
  br i1 %.not, label %.loopexit115, label %.preheader118, !llvm.loop !129

.loopexit115:                                     ; preds = %.outer._crit_edge, %bb.c, %bb.w, %bb.m, %bb.p, %bb.s, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @read_tree(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 14 uses
  %i.b = alloca [16 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr i8, ptr %0, i64 8          ; 23 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !49  ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 12
  %.val61 = load i32, ptr %i.d, align 4, !tbaa !47
  %i.e = sub nsw i32 %.val61, %.val
  %i.f = icmp slt i32 %i.e, 4
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48   ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %i.j = lshr i32 %.val, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 1, !tbaa !36
  %i.n = and i32 %.val, 7
  %i.o = lshr i32 %i.m, %i.n
  %i.p = and i32 %i.o, 15                         ; 2 uses
  %i.q = add i32 %.val, 4
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.q) ; 5 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !49
  store i32 %i.p, ptr %1, align 4, !tbaa !71
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.s, align 4, !tbaa !36
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = lshr i32 %i.r, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !36
  %i.x = icmp slt i32 %i.r, %i.h
  %i.y = zext i1 %i.x to i32
  %spec.select.i = add i32 %i.r, %i.y             ; 6 uses
  %i.z = zext i8 %i.w to i32
  %i.aa = and i32 %i.r, 7
  store i32 %spec.select.i, ptr %i.c, align 8, !tbaa !49
  %i.ab = shl nuw nsw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  %.not57 = icmp eq i32 %i.ac, 0
  %i.ad = lshr i32 %spec.select.i, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !36 ; 2 uses
  br i1 %.not57, label %.preheader62.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = and i32 %spec.select.i, 7
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = and i32 %i.ai, 7                        ; 3 uses
  %i.ak = add i32 %spec.select.i, 3
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.ak)
  store i32 %i.al, ptr %i.c, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.an = add nuw nsw i32 %i.aj, 1                ; 6 uses
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !49  ; 3 uses
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !48
  %i.aq = load ptr, ptr %0, align 8, !tbaa !46
  %i.ar = lshr i32 %i.ao, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %i.au = load i32, ptr %i.at, align 1, !tbaa !36
  %i.av = and i32 %i.ao, 7
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = and i32 %i.aw, 15                       ; 2 uses
  %i.ay = add i32 %i.ao, 4
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.ay)
  store i32 %i.az, ptr %i.c, align 8, !tbaa !49
  %i.ba = trunc nuw nsw i32 %i.ax to i8
  store i8 %i.ba, ptr %i.am, align 4, !tbaa !36
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  store i8 1, ptr %i.bc, align 1, !tbaa !36
  %exitcond.not = icmp eq i32 %i.aj, 0
  br i1 %exitcond.not, label %.preheader63.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !49  ; 3 uses
  %i.be = load i32, ptr %i.g, align 8, !tbaa !48
  %i.bf = load ptr, ptr %0, align 8, !tbaa !46
  %i.bg = lshr i32 %i.bd, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !36
  %i.bk = and i32 %i.bd, 7
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = and i32 %i.bl, 15                       ; 2 uses
  %i.bn = add i32 %i.bd, 4
  %i.bo = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %i.bn)
  store i32 %i.bo, ptr %i.c, align 8, !tbaa !49
  %i.bp = trunc nuw nsw i32 %i.bm to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !36
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  store i8 1, ptr %i.bs, align 1, !tbaa !36
  %exitcond.not.1 = icmp eq i32 %i.an, 2
  br i1 %exitcond.not.1, label %.preheader63.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr %i.c, align 8, !tbaa !49  ; 3 uses
  %i.bu = load i32, ptr %i.g, align 8, !tbaa !48
  %i.bv = load ptr, ptr %0, align 8, !tbaa !46
  %i.bw = lshr i32 %i.bt, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 1, !tbaa !36
  %i.ca = and i32 %i.bt, 7
  %i.cb = lshr i32 %i.bz, %i.ca
  %i.cc = and i32 %i.cb, 15                       ; 2 uses
  %i.cd = add i32 %i.bt, 4
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 %i.cd)
  store i32 %i.ce, ptr %i.c, align 8, !tbaa !49
  %i.cf = trunc nuw nsw i32 %i.cc to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.cf, ptr %i.cg, align 2, !tbaa !36
  %i.ch = zext nneg i32 %i.cc to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  store i8 1, ptr %i.ci, align 1, !tbaa !36
  %exitcond.not.2 = icmp eq i32 %i.an, 3
  br i1 %exitcond.not.2, label %.preheader63.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
