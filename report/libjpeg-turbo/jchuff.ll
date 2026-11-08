Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jchuff?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@jpeg_gen_optimal_table:bb.a
  %i.bk = zext i8 %.pre180.a to i32
  %i.bl = zext i8 %.pre182.a to i32
  %i.bm = zext i8 %.pre184.a to i32
  %i.bn = zext i8 %.pre186.a to i32
  %i.bo = zext i8 %.pre188.a to i32
  %i.bp = zext i8 %.pre190.a to i32
  %i.bq = zext i8 %.pre192.a to i32
  %i.br = zext i8 %.pre194.a to i32
  %i.bs = zext i8 %.pre196.a to i32
  %i.bt = zext i8 %.pre198.a to i32
  %i.bu = zext i8 %.pre200.a to i32
  %i.bv = zext i8 %.pre202.a to i32
  %i.bw = zext i8 %.pre204.a to i32
  %i.bx = zext i8 %.pre206.a to i32
  %i.by = zext i8 %.pre208.a to i32
  %i.bz = zext i8 %.pre210 to i32
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader108, %.preheader106.loopexit
  %i.ca = phi i32 [ %i.bz, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cb = phi i32 [ %i.by, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cc = phi i32 [ %i.bx, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cd = phi i32 [ %i.bw, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.ce = phi i32 [ %i.bv, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cf = phi i32 [ %i.bu, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cg = phi i32 [ %i.bt, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.ch = phi i32 [ %i.bs, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.ci = phi i32 [ %i.br, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cj = phi i32 [ %i.bq, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.ck = phi i32 [ %i.bp, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cl = phi i32 [ %i.bo, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cm = phi i32 [ %i.bn, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cn = phi i32 [ %i.bm, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.co = phi i32 [ %i.bl, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cp = phi i32 [ %i.bk, %.preheader106.loopexit ], [ 0, %.preheader108 ]
  %i.cq = phi i32 [ %i.bj, %.preheader106.loopexit ], [ 0, %.preheader108 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.cr, align 4, !tbaa !39
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.cq, ptr %i.cs, align 8, !tbaa !39
  %i.ct = add nuw nsw i32 %i.cq, %i.cp            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !39
  %i.cv = add nuw nsw i32 %i.ct, %i.co            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.cv, ptr %i.cw, align 16, !tbaa !39
  %i.cx = add nuw nsw i32 %i.cv, %i.cn            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !39
  %i.cz = add nuw nsw i32 %i.cx, %i.cm            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !39
  %i.db = add nuw nsw i32 %i.cz, %i.cl            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !39
  %i.dd = add nuw nsw i32 %i.db, %i.ck            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.dd, ptr %i.de, align 16, !tbaa !39
  %i.df = add nuw nsw i32 %i.dd, %i.cj            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !39
  %i.dh = add nuw nsw i32 %i.df, %i.ci            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !39
  %i.dj = add nuw nsw i32 %i.dh, %i.ch            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !39
  %i.dl = add nuw nsw i32 %i.dj, %i.cg            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.dl, ptr %i.dm, align 16, !tbaa !39
  %i.dn = add nuw nsw i32 %i.dl, %i.cf            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !39
  %i.dp = add nuw nsw i32 %i.dn, %i.ce            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !39
  %i.dr = add nuw nsw i32 %i.dp, %i.cd            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !39
  %i.dt = add nuw nsw i32 %i.dr, %i.cc            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %i.dt, ptr %i.du, align 16, !tbaa !39
  %i.dv = add nuw nsw i32 %i.dt, %i.cb            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !39
  %i.dx = add nuw nsw i32 %i.dv, %i.ca            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !39
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !33
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add nuw nsw i32 %i.dx, %i.eb            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !33
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add nuw nsw i32 %i.ec, %i.eg            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 %i.eh, ptr %i.ei, align 16, !tbaa !39
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !33
  %i.el = zext i8 %i.ek to i32
  %i.em = add nuw nsw i32 %i.eh, %i.el            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 %i.em, ptr %i.en, align 4, !tbaa !39
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !33
  %i.eq = zext i8 %i.ep to i32
  %i.er = add nuw nsw i32 %i.em, %i.eq            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 %i.er, ptr %i.es, align 8, !tbaa !39
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !33
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nuw nsw i32 %i.er, %i.ev            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !39
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !33
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ew, %i.fa            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 %i.fb, ptr %i.fc, align 16, !tbaa !39
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !33
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nuw nsw i32 %i.fb, %i.ff            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !39
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !33
  %i.fk = zext i8 %i.fj to i32
  %i.fl = add nuw nsw i32 %i.fg, %i.fk            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !39
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !33
  %i.fp = zext i8 %i.fo to i32
  %i.fq = add nuw nsw i32 %i.fl, %i.fp            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !39
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !33
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nuw nsw i32 %i.fq, %i.fu            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.fv, ptr %i.fw, align 16, !tbaa !39
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fy = load i8, ptr %i.fx, align 4, !tbaa !33
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nuw nsw i32 %i.fv, %i.fz            ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !39
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !33
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nuw nsw i32 %i.ga, %i.ge            ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !39
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.gi = load i8, ptr %i.gh, align 2, !tbaa !33
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nuw nsw i32 %i.gf, %i.gj            ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !33
  %i.go = zext i8 %i.gn to i32
  %i.gp = add nuw nsw i32 %i.gk, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %i.gp, ptr %i.gq, align 16, !tbaa !39
  br label %.preheader104

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %bb.l
  %indvars.iv153 = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvars.iv.next154, %bb.l ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv153
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !39 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 32
  br i1 %i.gt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph129
  %i.gu = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  store i32 39, ptr %i.gv, align 8, !tbaa !32
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !34
  tail call void %i.gw(ptr noundef nonnull %0) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph129
  %i.gx = sext i32 %i.gs to i64
  %i.gy = getelementptr inbounds i8, ptr %i.a, i64 %i.gx ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !33
  %i.ha = add i8 %i.gz, 1
  store i8 %i.ha, ptr %i.gy, align 1, !tbaa !33
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count157
  br i1 %exitcond158.not, label %.preheader106.loopexit, label %.lr.ph129, !llvm.loop !82

.preheader104:                                    ; preds = %.preheader106, %._crit_edge135
  %indvars.iv168 = phi i64 [ 32, %.preheader106 ], [ %indvars.iv.next169, %._crit_edge135 ] ; 3 uses
  %indvars.iv163.a = phi i64 [ 30, %.preheader106 ], [ %indvars.iv.next164, %._crit_edge135 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv168 ; 4 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !33  ; 2 uses
  %.not133 = icmp eq i8 %i.hc, 0
  br i1 %.not133, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %.preheader104
  %i.hd = getelementptr i8, ptr %i.hb, i64 -1     ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph134, %bb.o
  %i.he = phi i8 [ %i.hc, %.lr.ph134 ], [ %i.hr, %bb.o ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %bb.n ], [ %indvars.iv163.a, %bb.m ] ; 3 uses
  %i.hf = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv165
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !33
  %i.hh = icmp eq i8 %i.hg, 0
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, -1
  br i1 %i.hh, label %bb.n, label %bb.o, !llvm.loop !83

bb.o:                                             ; preds = %bb.n
  %i.hi = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv165 ; 3 uses
  %i.hj = add i8 %i.he, -2
  store i8 %i.hj, ptr %i.hb, align 1, !tbaa !33
  %i.hk = load i8, ptr %i.hd, align 1, !tbaa !33
  %i.hl = add i8 %i.hk, 1
  store i8 %i.hl, ptr %i.hd, align 1, !tbaa !33
  %i.hm = getelementptr i8, ptr %i.hi, i64 1      ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !33
  %i.ho = add i8 %i.hn, 2
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !33
  %i.hp = load i8, ptr %i.hi, align 1, !tbaa !33
  %i.hq = add i8 %i.hp, -1
  store i8 %i.hq, ptr %i.hi, align 1, !tbaa !33
  %i.hr = load i8, ptr %i.hb, align 1, !tbaa !33  ; 2 uses
  %.not = icmp eq i8 %i.hr, 0
  br i1 %.not, label %._crit_edge135, label %bb.m, !llvm.loop !84

._crit_edge135:                                   ; preds = %bb.o, %.preheader104
  %indvars.iv.next169 = add nsw i64 %indvars.iv168, -1
  %i.hs = icmp samesign ugt i64 %indvars.iv168, 17
  %indvars.iv.next164 = add nsw i64 %indvars.iv163.a, -1
  br i1 %i.hs, label %.preheader104, label %.preheader, !llvm.loop !85

.preheader:                                       ; preds = %._crit_edge135, %.preheader
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.preheader ], [ 16, %._crit_edge135 ] ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv171
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !33  ; 2 uses
  %i.hv = icmp eq i8 %i.hu, 0
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, -1
  br i1 %i.hv, label %.preheader, label %bb.p, !llvm.loop !86

bb.p:                                             ; preds = %.preheader
  %i.hw = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv171
  %i.hx = add i8 %i.hu, -1
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 16 dereferenceable(17) %i.a, i64 17, i1 false)
  %i.hy = icmp sgt i32 %.187, 1
  br i1 %i.hy, label %.lr.ph140, label %._crit_edge141

.lr.ph140:                                        ; preds = %bb.p
  %i.hz = add nsw i32 %.187, -1                   ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %wide.trip.count177 = zext nneg i32 %i.hz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count177, 1
  %i.ib = icmp eq i32 %i.hz, 1
  br i1 %i.ib, label %.epil.preheader, label %.lr.ph140.new

.lr.ph140.new:                                    ; preds = %.lr.ph140
  %unroll_iter = and i64 %wide.trip.count177, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph140.new
  %indvars.iv174 = phi i64 [ 0, %.lr.ph140.new ], [ %indvars.iv.next175.1, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph140.new ], [ %niter.next.1, %bb.q ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv174
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !39
  %i.ie = trunc i32 %i.id to i8
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv174
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !39
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !39 ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds i8, ptr %i.ia, i64 %i.ik
  store i8 %i.ie, ptr %i.il, align 1, !tbaa !33
  %i.im = add nsw i32 %i.ij, 1
  store i32 %i.im, ptr %i.ii, align 4, !tbaa !39
  %indvars.iv.next175 = or disjoint i64 %indvars.iv174, 1 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next175
  %i.io = load i32, ptr %i.in, align 4, !tbaa !39
  %i.ip = trunc i32 %i.io to i8
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next175
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !39
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !39 ; 2 uses
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %i.ia, i64 %i.iv
  store i8 %i.ip, ptr %i.iw, align 1, !tbaa !33
  %i.ix = add nsw i32 %i.iu, 1
  store i32 %i.ix, ptr %i.it, align 4, !tbaa !39
  %indvars.iv.next175.1 = add nuw nsw i64 %indvars.iv174, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge141.loopexit.unr-lcssa, label %bb.q, !llvm.loop !87

._crit_edge141.loopexit.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge141, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge141.loopexit.unr-lcssa, %.lr.ph140
  %indvars.iv174.epil.init = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next175.1, %._crit_edge141.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod226 = trunc i32 %i.hz to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv174.epil.init
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !39
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv174.epil.init
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !39
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.jd ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !39 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds i8, ptr %i.ia, i64 %i.jg
  store i8 %i.ja, ptr %i.jh, align 1, !tbaa !33
  %i.ji = add nsw i32 %i.jf, 1
  store i32 %i.ji, ptr %i.je, align 4, !tbaa !39
  br label %._crit_edge141

._crit_edge141:                                   ; preds = %.epil.preheader, %._crit_edge141.loopexit.unr-lcssa, %bb.p
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 276
  store i32 0, ptr %i.jj, align 4, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @jinit_huff_encoder(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = tail call ptr %i.c(ptr noundef %0, i32 noundef 1, i64 noundef 216) #7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.d, ptr %i.e, align 8, !tbaa !42
  store ptr @start_pass_huff, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_huff(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 12 uses
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %spec.select = select i1 %.not, ptr @encode_mcu_huff, ptr @encode_mcu_gather
  %spec.select77 = select i1 %.not, ptr @finish_pass_huff, ptr @finish_pass_gather
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %spec.select, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %spec.select77, ptr %i.d, align 8, !tbaa !93
  %i.e = tail call i32 @jsimd_set_huff_encode_one_block(ptr noundef nonnull %0) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 %i.e, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv70
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !49   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.w
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.t, ptr noundef nonnull %i.x)
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.y
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.v, ptr noundef nonnull %i.z)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv70
  store i32 0, ptr %i.aa, align 4, !tbaa !39
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !47
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next71, %i.ac
  br i1 %i.ad, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !91

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !50 ; 3 uses
  %or.cond = icmp ugt i32 %i.ah, 3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split
  %i.ak = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i32 50, ptr %i.al, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !33
  %i.an = load ptr, ptr %0, align 8, !tbaa !27
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  tail call void %i.ao(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split, %bb.b
  %or.cond3 = icmp ugt i32 %i.aj, 3
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i32 50, ptr %i.aq, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
end_hunk_0
