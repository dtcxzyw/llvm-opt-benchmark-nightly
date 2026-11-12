Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Olayout?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@H5O__layout_encode:bb.a
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !10
  %i.bx = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.by = lshr i64 %i.bx, 8
  %i.bz = trunc i64 %i.by to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !21
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !10
  %i.cc = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.cd = lshr i64 %i.cc, 16
  %i.ce = trunc i64 %i.cd to i8
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !21
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !10
  %i.ch = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.ci = lshr i64 %i.ch, 24
  %i.cj = trunc i64 %i.ci to i8
  store i8 %i.cj, ptr %i.cg, align 1, !tbaa !21
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 2 uses
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !10
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.cm = load i32, ptr %i.bk, align 8, !tbaa !21
  %i.cn = zext i32 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next150, %i.cn
  br i1 %i.co, label %bb.m, label %.loopexit, !llvm.loop !44

bb.n:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !21
  store i8 %i.cr, ptr %i.m, align 1, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !21
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.cu, ptr %i.bj, align 1, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 296 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !21
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 3 uses
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !10
  store i8 %i.cy, ptr %i.cv, align 1, !tbaa !21
  %i.da = load i32, ptr %i.cs, align 8, !tbaa !21 ; 2 uses
  %.not144 = icmp eq i32 %i.da, 0
  br i1 %.not144, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load i32, ptr %i.cw, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph133, %._crit_edge
  %i.dc = phi i32 [ %i.da, %.lr.ph133 ], [ %i.do, %._crit_edge ]
  %i.dd = phi i32 [ %.pre, %.lr.ph133 ], [ %i.dq, %._crit_edge ]
  %i.de = phi ptr [ %i.cz, %.lr.ph133 ], [ %i.dr, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.not145 = icmp eq i32 %i.dd, 0
  br i1 %.not145, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0110130 = phi ptr [ %i.di, %.lr.ph ], [ %i.de, %.lr.ph.preheader ] ; 2 uses
  %.0111129 = phi i64 [ %i.dj, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0112128 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dg, %.lr.ph.preheader ] ; 2 uses
  %i.dh = trunc i64 %.0112128 to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.0110130, i64 1
  store i8 %i.dh, ptr %.0110130, align 1, !tbaa !21
  %i.dj = add nuw nsw i64 %.0111129, 1            ; 2 uses
  %i.dk = lshr i64 %.0112128, 8
  %i.dl = load i32, ptr %i.cw, align 8, !tbaa !21 ; 2 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = icmp samesign ult i64 %i.dj, %i.dm
  br i1 %i.dn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre152 = load ptr, ptr %i.a, align 8, !tbaa !10
  %.pre153 = load i32, ptr %i.cs, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %i.do = phi i32 [ %i.dc, %bb.o ], [ %.pre153, %._crit_edge.loopexit ] ; 2 uses
  %i.dp = phi ptr [ %i.de, %bb.o ], [ %.pre152, %._crit_edge.loopexit ]
  %i.dq = phi i32 [ 0, %bb.o ], [ %i.dl, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %bb.o ], [ %i.dm, %._crit_edge.loopexit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.lcssa ; 3 uses
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = zext i32 %i.do to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %bb.o, label %._crit_edge134, !llvm.loop !46

._crit_edge134:                                   ; preds = %._crit_edge, %bb.n
  %i.du = phi ptr [ %i.cz, %bb.n ], [ %i.dr, %._crit_edge ] ; 2 uses
  %i.dv = load i32, ptr %i.cp, align 8, !tbaa !21
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !10
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !21
  %i.dy = load i32, ptr %i.cp, align 8, !tbaa !21
  switch i32 %i.dy, label %bb.z [
    i32 0, label %bb.p
    i32 2, label %bb.aa
    i32 1, label %bb.q
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
  ]

bb.p:                                             ; preds = %._crit_edge134
  %i.dz = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ea = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !17
  %i.eb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_encode, i32 noundef 672, i64 noundef %i.dz, i64 noundef %i.ea, ptr noundef nonnull @.str.16) #10 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge134
  %i.ec = load i8, ptr %i.cq, align 4, !tbaa !21
  %i.ed = and i8 %i.ec, 2
  %.not = icmp eq i8 %i.ed, 0
  br i1 %.not, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ee = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #10
  switch i8 %i.ee, label %._crit_edge154 [
    i8 4, label %bb.s
    i8 8, label %bb.t
    i8 2, label %bb.u
  ]

._crit_edge154:                                   ; preds = %bb.r
  %.pre155 = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 2224 ; 4 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !21
  %i.eh = trunc i64 %i.eg to i8
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !21
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  store ptr %i.ek, ptr %i.a, align 8, !tbaa !10
  %i.el = load i64, ptr %i.ef, align 8, !tbaa !21
  %i.em = lshr i64 %i.el, 8
  %i.en = trunc i64 %i.em to i8
  store i8 %i.en, ptr %i.ek, align 1, !tbaa !21
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  store ptr %i.ep, ptr %i.a, align 8, !tbaa !10
  %i.eq = load i64, ptr %i.ef, align 8, !tbaa !21
  %i.er = lshr i64 %i.eq, 16
  %i.es = trunc i64 %i.er to i8
  store i8 %i.es, ptr %i.ep, align 1, !tbaa !21
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 2 uses
  store ptr %i.eu, ptr %i.a, align 8, !tbaa !10
  %i.ev = load i64, ptr %i.ef, align 8, !tbaa !21
  %i.ew = lshr i64 %i.ev, 24
  %i.ex = trunc i64 %i.ew to i8
  store i8 %i.ex, ptr %i.eu, align 1, !tbaa !21
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 2 uses
  store ptr %i.ez, ptr %i.a, align 8, !tbaa !10
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 2224
  %i.fb = load <8 x i8>, ptr %i.fa, align 8, !tbaa !21
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !10
  store <8 x i8> %i.fb, ptr %i.fc, align 1, !tbaa !21
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  store ptr %i.fe, ptr %i.a, align 8, !tbaa !10
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 2224 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !21
  %i.fh = trunc i64 %i.fg to i8
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !21
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 2 uses
  store ptr %i.fk, ptr %i.a, align 8, !tbaa !10
  %i.fl = load i64, ptr %i.ff, align 8, !tbaa !21
  %i.fm = lshr i64 %i.fl, 8
  %i.fn = trunc i64 %i.fm to i8
  store i8 %i.fn, ptr %i.fk, align 1, !tbaa !21
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 2 uses
  store ptr %i.fp, ptr %i.a, align 8, !tbaa !10
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge154, %bb.s, %bb.t, %bb.u
  %i.fq = phi ptr [ %.pre155, %._crit_edge154 ], [ %i.ez, %bb.s ], [ %i.fe, %bb.t ], [ %i.fp, %bb.u ]
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 2232 ; 4 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !21
  %i.ft = trunc i32 %i.fs to i8
  store i8 %i.ft, ptr %i.fq, align 1, !tbaa !21
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  store ptr %i.fv, ptr %i.a, align 8, !tbaa !10
  %i.fw = load i32, ptr %i.fr, align 8, !tbaa !21
  %i.fx = lshr i32 %i.fw, 8
  %i.fy = trunc i32 %i.fx to i8
  store i8 %i.fy, ptr %i.fv, align 1, !tbaa !21
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 2 uses
  store ptr %i.ga, ptr %i.a, align 8, !tbaa !10
  %i.gb = load i32, ptr %i.fr, align 8, !tbaa !21
  %i.gc = lshr i32 %i.gb, 16
  %i.gd = trunc i32 %i.gc to i8
  store i8 %i.gd, ptr %i.ga, align 1, !tbaa !21
  %i.ge = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  store ptr %i.gf, ptr %i.a, align 8, !tbaa !10
  %5 = load i32, ptr %i.fr, align 8, !tbaa !21
  %6 = lshr i32 %5, 24
  %7 = trunc nuw i32 %6 to i8
  store i8 %7, ptr %i.gf, align 1, !tbaa !21
  %i.gg = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gh, ptr %i.a, align 8, !tbaa !10
  br label %bb.aa

bb.w:                                             ; preds = %._crit_edge134
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 1384
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !21
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  store ptr %i.gl, ptr %i.a, align 8, !tbaa !10
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !21
  br label %bb.aa

bb.x:                                             ; preds = %._crit_edge134
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 1384
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !21
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  store ptr %i.gp, ptr %i.a, align 8, !tbaa !10
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 1385
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !21
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store ptr %i.gt, ptr %i.a, align 8, !tbaa !10
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !21
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 1387
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !21
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.gx, ptr %i.a, align 8, !tbaa !10
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !21
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 1386
  %i.gz = load i8, ptr %i.gy, align 2, !tbaa !21
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  store ptr %i.hb, ptr %i.a, align 8, !tbaa !10
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !21
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 1388
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !21
  %i.he = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store ptr %i.hf, ptr %i.a, align 8, !tbaa !10
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !21
  br label %bb.aa

bb.y:                                             ; preds = %._crit_edge134
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 1384 ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !21
  %i.hi = trunc i32 %i.hh to i8
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !21
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1 ; 2 uses
  store ptr %i.hl, ptr %i.a, align 8, !tbaa !10
  %i.hm = load i32, ptr %i.hg, align 8, !tbaa !21
  %i.hn = lshr i32 %i.hm, 8
  %i.ho = trunc i32 %i.hn to i8
  store i8 %i.ho, ptr %i.hl, align 1, !tbaa !21
  %i.hp = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1 ; 2 uses
  store ptr %i.hq, ptr %i.a, align 8, !tbaa !10
  %i.hr = load i32, ptr %i.hg, align 8, !tbaa !21
  %i.hs = lshr i32 %i.hr, 16
  %i.ht = trunc i32 %i.hs to i8
  store i8 %i.ht, ptr %i.hq, align 1, !tbaa !21
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  store ptr %i.hv, ptr %i.a, align 8, !tbaa !10
  %8 = load i32, ptr %i.hg, align 8, !tbaa !21
  %9 = lshr i32 %8, 24
  %10 = trunc nuw i32 %9 to i8
  store i8 %10, ptr %i.hv, align 1, !tbaa !21
  %i.hw = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 1388
  %i.hz = load i8, ptr %i.hy, align 4, !tbaa !21
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  store ptr %i.ia, ptr %i.a, align 8, !tbaa !10
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !21
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 1389
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !21
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  store ptr %i.ie, ptr %i.a, align 8, !tbaa !10
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !21
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge134
  %i.if = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ig = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !17
  %i.ih = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_encode, i32 noundef 708, i64 noundef %i.if, i64 noundef %i.ig, ptr noundef nonnull @.str.21) #10 ; 0 uses
  br label %.loopexit

bb.aa:                                            ; preds = %bb.q, %bb.v, %bb.y, %bb.x, %bb.w, %._crit_edge134
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 2208
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !21
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ij) #10
  br label %.loopexit

bb.ab:                                            ; preds = %bb.b
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 2200
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !21
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.il) #10
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 2208 ; 4 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !21
  %i.io = trunc i64 %i.in to i8
  %i.ip = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !21
  %i.iq = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1 ; 2 uses
  store ptr %i.ir, ptr %i.a, align 8, !tbaa !10
  %i.is = load i64, ptr %i.im, align 8, !tbaa !21
  %i.it = lshr i64 %i.is, 8
  %i.iu = trunc i64 %i.it to i8
  store i8 %i.iu, ptr %i.ir, align 1, !tbaa !21
  %i.iv = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1 ; 2 uses
  store ptr %i.iw, ptr %i.a, align 8, !tbaa !10
  %i.ix = load i64, ptr %i.im, align 8, !tbaa !21
  %i.iy = lshr i64 %i.ix, 16
  %i.iz = trunc i64 %i.iy to i8
  store i8 %i.iz, ptr %i.iw, align 1, !tbaa !21
  %i.ja = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.jc = load i64, ptr %i.im, align 8, !tbaa !21
  %i.jd = lshr i64 %i.jc, 24
  %i.je = trunc i64 %i.jd to i8
  store i8 %i.je, ptr %i.jb, align 1, !tbaa !21
  br label %.loopexit

bb.ac:                                            ; preds = %bb.b
  %i.jf = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.jg = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !17
  %i.jh = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_encode, i32 noundef 729, i64 noundef %i.jf, i64 noundef %i.jg, ptr noundef nonnull @.str.23) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.e, %bb.f, %bb.l, %bb.p, %bb.z, %bb.ac, %bb.aa, %bb.h, %bb.i, %bb.j, %bb.g, %bb.c, %bb.ab, %bb.a
  %.0118 = phi i32 [ -1, %bb.ac ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.a ], [ -1, %bb.z ], [ -1, %bb.p ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.l ], [ 0, %bb.f ], [ 0, %bb.m ]
  ret i32 %.0118
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @H5O__layout_copy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !15

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5O_layout_t_reg_free_list) #10 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread37, label %bb.d

.thread37:                                        ; preds = %bb.c
  %i.i = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.j = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !17
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy, i32 noundef 762, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.25) #10 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %bb.c, %bb.b
  %.024 = phi ptr [ %1, %bb.b ], [ %i.g, %bb.c ]  ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2584) %.024, ptr noundef nonnull align 8 dereferenceable(2584) %0, i64 2584, i1 false), !tbaa.struct !48
  %i.l = load i32, ptr %0, align 8, !tbaa !23
  switch i32 %i.l, label %bb.m [
    i32 0, label %bb.e
    i32 1, label %.thread
    i32 2, label %bb.i
    i32 3, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %.not31 = icmp eq i64 %i.n, 0
  br i1 %.not31, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.024, i64 2208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #11 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.024, i64 2216
  store ptr %i.q, ptr %i.r, align 8, !tbaa !21
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.u = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !17
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy, i32 noundef 777, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.26) #10 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.x, i64 %i.p, i1 false)
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.024, i64 2216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %.not30 = icmp eq ptr %i.z, null
  br i1 %.not30, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.024, i64 2200
  %i.ab = tail call i32 @H5D_chunk_idx_reset(ptr noundef nonnull %i.aa, i1 noundef zeroext false) #10 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.ac = tail call i32 @H5D__virtual_copy_layout(ptr noundef nonnull %.024) #10
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.af = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !17
  %i.ag = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy, i32 noundef 799, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.ah = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ai = load i64, ptr @H5E_CANTENCODE_g, align 8, !tbaa !17
  %i.aj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy, i32 noundef 805, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.23) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.g
  br i1 %.not, label %bb.o, label %.thread

bb.o:                                             ; preds = %.thread37, %bb.n
  %.12539 = phi ptr [ null, %.thread37 ], [ %.024, %bb.n ]
  %i.ak = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_layout_t_reg_free_list, ptr noundef %.12539) #10 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.h, %bb.j, %bb.i, %bb.k, %bb.n, %bb.o, %bb.a
  %.1 = phi ptr [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.a ], [ %.024, %bb.k ], [ %.024, %bb.i ], [ %.024, %bb.j ], [ %.024, %bb.h ], [ %.024, %bb.e ], [ %.024, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal i64 @H5O__layout_size(ptr noundef %0, i1 zeroext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @H5D__layout_meta_size(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5O__layout_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
end_hunk_0
