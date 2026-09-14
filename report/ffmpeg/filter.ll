Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/filter?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vvc_deblock:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %.88.val, i64 21912
  %i.av = getelementptr inbounds nuw i8, ptr %.88.val, i64 21488
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ar
  %.not.i.i197 = icmp ne i32 %3, 0                ; 3 uses
  %i.ax = sext i1 %.not.i.i197 to i32
  %not..not.i.i = xor i1 %.not.i.i197, true
  %i.ay = sext i1 %not..not.i.i to i32
  %.in.v.i.i = select i1 %.not.i.i197, i64 22088, i64 22104
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.88.val, i64 %.in.v.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.88.val, i64 22176
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %.88.val, i64 22192
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ar
  %i.bd = getelementptr inbounds nuw i8, ptr %.88.val, i64 21984
  %i.be = getelementptr inbounds nuw i8, ptr %.88.val, i64 21504
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ar
  %i.bg = getelementptr inbounds nuw i8, ptr %.88.val, i64 21520
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ar
  br i1 %i.ap, label %.lr.ph11.preheader, label %.split14

.lr.ph11.preheader:                               ; preds = %bb.c
  %i.bi = sext i32 %.0178 to i64                  ; 2 uses
  %i.bj = sext i32 %.0177 to i64
  br label %.lr.ph11

.split14:                                         ; preds = %._crit_edge12, %bb.c
  ret void

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %._crit_edge12
  %indvars.iv22 = phi i64 [ 0, %.lr.ph11.preheader ], [ %indvars.iv.next23, %._crit_edge12 ] ; 19 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv22
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !82
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv22
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !82
  %i.bp = zext i8 %i.bo to i32                    ; 3 uses
  %i.bq = icmp ne i64 %indvars.iv22, 0            ; 3 uses
  %i.br = shl i32 8, %i.bm
  %i.bs = select i1 %i.bq, i32 %i.br, i32 4       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv22
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !82
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv22
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !82
  %i.bx = sext i8 %i.bw to i32
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv22
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !102
  %i.cc = select i1 %.not186, i32 %i.bs, i32 %.0  ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %.0179
  %i.ce = sub nsw i32 2, %i.bp                    ; 2 uses
  %.not15 = icmp ugt i32 %i.ce, 3
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv22
  %.not.i = icmp eq i64 %indvars.iv22, 0          ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv22
  %i.ch = and i8 %i.bu, -2
  %i.ci = sext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -2
  %i.ck = zext i1 %i.bq to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ck
  %i.cm = sext i32 %i.cb to i64                   ; 2 uses
  br i1 %i.cd, label %.lr.ph7.us.preheader, label %._crit_edge12

.lr.ph7.us.preheader:                             ; preds = %.lr.ph11
  %i.cn = shl i32 8, %i.bp
  %i.co = lshr i32 8, %i.ce
  %umax = call i32 @llvm.umax.i32(i32 %i.co, i32 1)
  %i.cp = sext i32 %i.cn to i64
  %wide.trip.count = zext nneg i32 %umax to i64
  br label %.lr.ph7.us

.lr.ph7.us:                                       ; preds = %.lr.ph7.us.preheader, %._crit_edge8.us
  %indvars.iv19 = phi i64 [ %i.bj, %.lr.ph7.us.preheader ], [ %indvars.iv.next20, %._crit_edge8.us ] ; 4 uses
  %i.cq = trunc nsw i64 %indvars.iv19 to i32
  %i.cr = trunc nsw i64 %indvars.iv19 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph7.us, %._crit_edge.us.thread
  %.01745.us = phi i32 [ %i.cc, %.lr.ph7.us ], [ %i.kw, %._crit_edge.us.thread ] ; 6 uses
  br i1 %.not185, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cs = srem i32 %.01745.us, %i.n
  %.not187.us = icmp eq i32 %i.cs, 0
  %i.ct = zext i1 %.not187.us to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cu = phi i32 [ 0, %bb.d ], [ %i.ct, %bb.e ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 0, ptr %i.f, align 4
  br i1 %.not15, label %._crit_edge.us.thread, label %.lr.ph.us

bb.g:                                             ; preds = %.lr.ph.us, %.thread.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %.thread.us ] ; 8 uses
  %.01733.us = phi i32 [ 1, %.lr.ph.us ], [ %.1.us, %.thread.us ] ; 2 uses
  %i.cv = shl nuw nsw i64 %indvars.iv, 2
  %i.cw = add nsw i64 %i.cv, %indvars.iv19        ; 2 uses
  %.not189.us = icmp slt i64 %i.cw, %i.bi
  %i.cx = trunc nsw i64 %i.cw to i32              ; 2 uses
  %spec.select.us = select i1 %.not185, i32 %i.cx, i32 %.01745.us ; 6 uses
  %spec.select192.us = select i1 %.not185, i32 %.01745.us, i32 %i.cx ; 6 uses
  br i1 %.not189.us, label %bb.h, label %.thread.us

bb.h:                                             ; preds = %bb.g
  %i.cy = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.cz = ashr i32 %spec.select192.us, 2          ; 4 uses
  %i.da = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4052
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !143
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  %i.de = mul nsw i32 %i.cz, %i.dd
  %i.df = ashr i32 %spec.select.us, 2             ; 4 uses
  %i.dg = add nsw i32 %i.de, %i.df
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.cy, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !82  ; 3 uses
  %i.dk = zext i8 %i.dj to i32
  %.not190.us = icmp eq i8 %i.dj, 0
  br i1 %.not190.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv22
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !88
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !77  ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv22
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !82
  %i.ds = zext nneg i8 %i.dr to i32
  %i.dt = ashr i32 %spec.select192.us, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv22
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !102
  %i.dx = mul nsw i32 %i.dt, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv22
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !82
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = ashr i32 %spec.select.us, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !89
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl i32 %i.ec, %i.ef
  %i.eh = add nsw i32 %i.eg, %i.dx
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.dn, i64 %i.ei
  %i.ek = sub nsw i32 %spec.select.us, %3         ; 3 uses
  %i.el = sub nsw i32 %spec.select192.us, %i.at   ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.em = ashr i32 %i.ek, 2
  %i.en = ashr i32 %i.el, 2
  %i.eo = load ptr, ptr %i.cg, align 8, !tbaa !88 ; 2 uses
  %i.ep = mul nsw i32 %i.en, %i.dd
  %i.eq = add nsw i32 %i.ep, %i.em
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.eo, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !82
  %i.eu = sext i8 %i.et to i32
  %i.ev = getelementptr inbounds i8, ptr %i.eo, i64 %i.dh
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !82
  %i.ex = sext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 29
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !200
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nsw i32 %i.eu, 1
  %i.fc = add nsw i32 %i.fb, %i.ex
  %i.fd = shl nuw nsw i32 %i.fa, 1
  %i.fe = sub nsw i32 %i.fc, %i.fd
  %i.ff = ashr i32 %i.fe, 1
  br label %get_qp.exit.us

bb.k:                                             ; preds = %bb.i
  %i.fg = call i32 @ff_vvc_get_qPy(ptr noundef nonnull %.88.val, i32 noundef %i.ek, i32 noundef %i.el) #8
  %i.fh = call i32 @ff_vvc_get_qPy(ptr noundef nonnull %.88.val, i32 noundef %spec.select.us, i32 noundef %spec.select192.us) #8
  %i.fi = add i32 %i.fg, 1
  %i.fj = add i32 %i.fi, %i.fh
  %i.fk = ashr i32 %i.fj, 1                       ; 2 uses
  %i.fl = load ptr, ptr %i.do, align 8, !tbaa !90
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 38750
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !201
  %.not.i.i.us = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.us, label %get_qp.exit.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fo = load ptr, ptr %i.aw, align 8, !tbaa !129
  %i.fp = load ptr, ptr %i.ao, align 8, !tbaa !83
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !102
  %i.fs = sext i32 %i.fr to i64
  %i.ft = call i32 %i.fo(ptr noundef %i.ej, i64 noundef %i.fs) #8, !inline_history !193 ; 2 uses
  %i.fu = load ptr, ptr %i.do, align 8, !tbaa !90 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 38752  ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.fx = getelementptr inbounds nuw i8, ptr %i.do, i64 41
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !202 ; 2 uses
  %i.fz = icmp ugt i8 %i.fy, 1
  br i1 %i.fz, label %.lr.ph.i.i.us, label %.critedge.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.l
  %i.ga = zext i8 %i.fy to i64                    ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fu, i64 %i.ga
  %scevgep.i.i.us = getelementptr i8, ptr %i.gb, i64 38751
  %i.gc = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !102
  %i.ge = icmp ugt i32 %i.ft, %i.gd
  br i1 %i.ge, label %.lr.ph.i.us, label %.critedge.i.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.i.us
  %i.gf = add nsw i64 %i.ga, -1                   ; 2 uses
  %exitcond.i.us38 = icmp eq i64 %i.gf, 1
  br i1 %exitcond.i.us38, label %..critedge.i.loopexit_crit_edge14.i.us, label %.lr.ph, !llvm.loop !194

.lr.ph:                                           ; preds = %.lr.ph.i.us
  br label %bb.n, !llvm.loop !194

bb.m:                                             ; preds = %bb.n
  %exitcond.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.gf
  br i1 %exitcond.i.us, label %...critedge.i.loopexit_crit_edge14.i.us_crit_edge, label %bb.n, !llvm.loop !194

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv.next.i13.i.us39 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.i.i.us, %bb.m ] ; 2 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i13.i.us39, 1 ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.next.i.i.us
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !102
  %i.gi = icmp ugt i32 %i.ft, %i.gh
  br i1 %i.gi, label %bb.m, label %.critedge.i.loopexit.i.us, !llvm.loop !194

.critedge.i.loopexit.i.us:                        ; preds = %bb.n
  %i.gj = getelementptr i8, ptr %i.fv, i64 %indvars.iv.next.i13.i.us39
  br label %.critedge.i.i.us

...critedge.i.loopexit_crit_edge14.i.us_crit_edge: ; preds = %bb.m
  br label %..critedge.i.loopexit_crit_edge14.i.us, !llvm.loop !194

..critedge.i.loopexit_crit_edge14.i.us:           ; preds = %...critedge.i.loopexit_crit_edge14.i.us_crit_edge, %.lr.ph.i.us
  br label %.critedge.i.i.us, !llvm.loop !194

.critedge.i.i.us:                                 ; preds = %..critedge.i.loopexit_crit_edge14.i.us, %.critedge.i.loopexit.i.us, %.lr.ph.i.i.us, %bb.l
  %.026.in.in.lcssa.i.i.us = phi ptr [ %i.fv, %bb.l ], [ %i.fv, %.lr.ph.i.i.us ], [ %scevgep.i.i.us, %..critedge.i.loopexit_crit_edge14.i.us ], [ %i.gj, %.critedge.i.loopexit.i.us ]
  %.026.in.le.i.i.us = load i8, ptr %.026.in.in.lcssa.i.i.us, align 1, !tbaa !82
  %.026.le.i.i.us = sext i8 %.026.in.le.i.i.us to i32
  %i.gk = add nsw i32 %i.fk, %.026.le.i.i.us
  br label %get_qp.exit.us

get_qp.exit.us:                                   ; preds = %.critedge.i.i.us, %bb.k, %bb.j
  %.0.i195.us = phi i32 [ %i.ff, %bb.j ], [ %i.gk, %.critedge.i.i.us ], [ %i.fk, %bb.k ] ; 2 uses
  %i.gl = add nsw i32 %.0.i195.us, %i.bx
  %i.gm = call i32 @llvm.smax.i32(i32 %i.gl, i32 0)
  %i.gn = call i32 @llvm.umin.i32(i32 %i.gm, i32 63)
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @betatable, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !82
  %i.gr = zext i8 %i.gq to i32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !102
  %i.gt = shl nuw nsw i32 %i.dk, 1
  %i.gu = add nsw i32 %i.cj, %i.gt
  %i.gv = add nsw i32 %i.gu, %.0.i195.us
  %i.gw = call i32 @llvm.smax.i32(i32 %i.gv, i32 0)
  %i.gx = call i32 @llvm.umin.i32(i32 %i.gw, i32 65)
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr @tctable, i64 %i.gy
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !104
  %i.hb = zext i16 %i.ha to i32
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !102
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %get_qp.exit.us
  %i.hf = add nsw i32 %spec.select.us, %i.ax
  %i.hg = add nsw i32 %spec.select192.us, %i.ay
  %i.hh = load ptr, ptr %.in.i.i, align 8, !tbaa !88 ; 2 uses
  %i.hi = ashr i32 %i.hg, 2
  %i.hj = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4052
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !143
  %i.hm = zext i16 %i.hl to i32                   ; 2 uses
  %i.hn = mul nsw i32 %i.hi, %i.hm
  %i.ho = ashr i32 %i.hf, 2
  %i.hp = add nsw i32 %i.hn, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %i.hh, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !82
  %i.ht = mul nsw i32 %i.cz, %i.hm
  %i.hu = add nsw i32 %i.ht, %i.df
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds i8, ptr %i.hh, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !82
  %i.hy = icmp ugt i8 %i.hs, 7
  %i.hz = icmp ugt i8 %i.hx, 7
  %or.cond.i.i.us = select i1 %i.hy, i1 %i.hz, i1 false ; 2 uses
  %i.ia = icmp eq i8 %i.dj, 2
  %i.ib = zext i1 %i.ia to i8                     ; 2 uses
  %.sink.i.i.us = select i1 %or.cond.i.i.us, i8 3, i8 %i.ib
  %storemerge.i.i.us = select i1 %or.cond.i.i.us, i8 %spec.store.select.i.i.us, i8 %i.ib
  store i8 %storemerge.i.i.us, ptr %i.hd, align 1
  br label %max_filter_length.exit.us

bb.p:                                             ; preds = %get_qp.exit.us
  %i.ic = load ptr, ptr %i.ba, align 8, !tbaa !88
  %i.id = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4052 ; 2 uses
  %i.if = load i16, ptr %i.ie, align 4, !tbaa !143
  %i.ig = zext i16 %i.if to i32
  %i.ih = mul nsw i32 %i.cz, %i.ig
  %i.ii = add nsw i32 %i.ih, %i.df
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %i.ic, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !82
  store i8 %i.il, ptr %i.hd, align 1, !tbaa !82
  %i.im = load ptr, ptr %i.bc, align 8, !tbaa !88
  %i.in = load i16, ptr %i.ie, align 4, !tbaa !143
  %i.io = zext i16 %i.in to i32
  %i.ip = mul nsw i32 %i.cz, %i.io
  %i.iq = add nsw i32 %i.ip, %i.df
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds i8, ptr %i.im, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !82
  br label %max_filter_length.exit.us

max_filter_length.exit.us:                        ; preds = %bb.p, %bb.o
  %.sink.i.i.us.sink = phi i8 [ %i.it, %bb.p ], [ %.sink.i.i.us, %bb.o ]
  store i8 %.sink.i.i.us.sink, ptr %i.he, align 1, !tbaa !82
  %i.iu = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 38745
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !203
  %.not191.us = icmp eq i8 %i.iw, 0
  br i1 %.not191.us, label %.thread.us, label %bb.q

bb.q:                                             ; preds = %max_filter_length.exit.us
  %i.ix = ashr i32 %spec.select192.us, %i.af
  %i.iy = mul nsw i32 %i.ix, %i.ai
  %i.iz = ashr i32 %spec.select.us, %i.af
  %i.ja = add nsw i32 %i.iy, %i.iz
  %i.jb = ashr i32 %i.el, %i.af
  %i.jc = mul nsw i32 %i.jb, %i.ai
  %i.jd = ashr i32 %i.ek, %i.af
  %i.je = add nsw i32 %i.jc, %i.jd                ; 2 uses
  %i.jf = load ptr, ptr %i.cl, align 8, !tbaa !88 ; 2 uses
  %i.jg = sext i32 %i.ja to i64
  %i.jh = getelementptr inbounds i8, ptr %i.jf, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !82
  %i.jj = icmp eq i8 %i.ji, 3
  %i.jk = zext i1 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !82
  %i.jm = icmp sgt i32 %i.je, -1
  br i1 %i.jm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jn = zext nneg i32 %i.je to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !82
  %i.jq = icmp eq i8 %i.jp, 3
  %i.jr = zext i1 %i.jq to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.js = phi i8 [ 0, %bb.q ], [ %i.jr, %bb.r ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !82
  br label %.thread.us

.thread.us:                                       ; preds = %bb.s, %max_filter_length.exit.us, %bb.h, %bb.g
  %.1.us = phi i32 [ %.01733.us, %bb.h ], [ 0, %bb.s ], [ 0, %max_filter_length.exit.us ], [ %.01733.us, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.g, !llvm.loop !195

._crit_edge.us:                                   ; preds = %.thread.us
  %i.ju = icmp eq i32 %.1.us, 0
  br i1 %i.ju, label %bb.t, label %._crit_edge.us.thread

bb.t:                                             ; preds = %._crit_edge.us
  %i.jv = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv22
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !88
  %i.jy = load ptr, ptr %i.g, align 8, !tbaa !77  ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 11
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %indvars.iv22
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !82
  %i.kc = zext nneg i8 %i.kb to i32
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv22
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !102
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %indvars.iv22
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !82
  %i.kj = zext nneg i8 %i.ki to i32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  %i.kl = load i8, ptr %i.kk, align 4, !tbaa !89
  %i.km = zext nneg i8 %i.kl to i32
  %.01745.us. = select i1 %.not185, i32 %.01745.us, i32 %i.cq
  %..01745.us = select i1 %.not185, i32 %i.cr, i32 %.01745.us
  %i.kn = ashr i32 %.01745.us., %i.kc
  %i.ko = mul nsw i32 %i.kn, %i.kf
  %i.kp = ashr i32 %..01745.us, %i.kj
  %i.kq = shl i32 %i.kp, %i.km
  %i.kr = add nsw i32 %i.kq, %i.ko
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds i8, ptr %i.jx, i64 %i.ks ; 2 uses
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ku = load ptr, ptr %i.bf, align 8, !tbaa !129
  call void %i.ku(ptr noundef %i.kt, i64 noundef %i.cm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.cu) #8
  br label %._crit_edge.us.thread

bb.v:                                             ; preds = %bb.t
  %i.kv = load ptr, ptr %i.bh, align 8, !tbaa !129
  call void %i.kv(ptr noundef %i.kt, i64 noundef %i.cm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.bp) #8
  br label %._crit_edge.us.thread

._crit_edge.us.thread:                            ; preds = %bb.f, %bb.v, %bb.u, %._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.kw = add nsw i32 %.01745.us, %i.bs           ; 2 uses
  %i.kx = icmp slt i32 %i.kw, %.0179
  br i1 %i.kx, label %bb.d, label %._crit_edge8.us, !llvm.loop !196

.lr.ph.us:                                        ; preds = %bb.f
  %.not26.i.i.us = icmp eq i32 %i.cu, 0
  %spec.store.select.i.i.us = select i1 %.not26.i.i.us, i8 3, i8 1
end_hunk_0
