Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/filter?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vvc_deblock:bb.a
  %.not187.us = icmp eq i32 %i.cq, 0
  %i.cr = zext i1 %.not187.us to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cs = phi i32 [ 0, %bb.d ], [ %i.cr, %bb.e ]  ; 2 uses
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
  %i.ct = shl nuw nsw i64 %indvars.iv, 2
  %i.cu = add nsw i64 %i.ct, %indvars.iv19        ; 2 uses
  %.not189.us = icmp slt i64 %i.cu, %i.bg
  %i.cv = trunc nsw i64 %i.cu to i32              ; 4 uses
  %spec.select.us = select i1 %.not185, i32 %i.cv, i32 %.01745.us ; 5 uses
  %spec.select192.us = select i1 %.not185, i32 %.01745.us, i32 %i.cv ; 5 uses
  br i1 %.not189.us, label %bb.h, label %.thread.us

bb.h:                                             ; preds = %bb.g
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !88
  %i.cx = ashr i32 %spec.select192.us, 2          ; 4 uses
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4052
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !143
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = mul nsw i32 %i.cx, %i.db
  %i.dd = ashr i32 %spec.select.us, 2             ; 4 uses
  %i.de = add nsw i32 %i.dc, %i.dd
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.cw, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !82  ; 3 uses
  %i.di = zext i8 %i.dh to i32
  %.not190.us = icmp eq i8 %i.dh, 0
  br i1 %.not190.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dj = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv22
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !88
  %i.dm = load ptr, ptr %i.g, align 8, !tbaa !77  ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv22
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !82
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = ashr i32 %spec.select192.us, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv22
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !102
  %i.dv = mul nsw i32 %i.dr, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv22
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !82
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = ashr i32 %spec.select.us, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !89
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = shl i32 %i.ea, %i.ed
  %i.ef = add nsw i32 %i.ee, %i.dv
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.dl, i64 %i.eg
  %i.ei = sub nsw i32 %spec.select.us, %3         ; 3 uses
  %i.ej = sub nsw i32 %spec.select192.us, %i.at   ; 3 uses
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ek = ashr i32 %i.ei, 2
  %i.el = ashr i32 %i.ej, 2
  %i.em = load ptr, ptr %i.ce, align 8, !tbaa !88 ; 2 uses
  %i.en = mul nsw i32 %i.el, %i.db
  %i.eo = add nsw i32 %i.en, %i.ek
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !82
  %i.es = sext i8 %i.er to i32
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 %i.df
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !82
  %i.ev = sext i8 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dm, i64 29
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !200
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.es, 1
  %i.fa = add nsw i32 %i.ez, %i.ev
  %i.fb = shl nuw nsw i32 %i.ey, 1
  %i.fc = sub nsw i32 %i.fa, %i.fb
  %i.fd = ashr i32 %i.fc, 1
  br label %get_qp.exit.us

bb.k:                                             ; preds = %bb.i
  %i.fe = call i32 @ff_vvc_get_qPy(ptr noundef nonnull %.88.val, i32 noundef %i.ei, i32 noundef %i.ej) #8
  %i.ff = call i32 @ff_vvc_get_qPy(ptr noundef nonnull %.88.val, i32 noundef %spec.select.us, i32 noundef %spec.select192.us) #8
  %i.fg = add i32 %i.fe, 1
  %i.fh = add i32 %i.fg, %i.ff
  %i.fi = ashr i32 %i.fh, 1                       ; 2 uses
  %i.fj = load ptr, ptr %i.dm, align 8, !tbaa !90
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 38750
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !201
  %.not.i.i.us = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.us, label %get_qp.exit.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fm = load ptr, ptr %i.aw, align 8, !tbaa !129
  %i.fn = load ptr, ptr %i.ao, align 8, !tbaa !83
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !102
  %i.fq = sext i32 %i.fp to i64
  %i.fr = call i32 %i.fm(ptr noundef %i.eh, i64 noundef %i.fq) #8, !inline_history !193 ; 2 uses
  %i.fs = load ptr, ptr %i.dm, align 8, !tbaa !90 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 38752 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dm, i64 41
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !202 ; 2 uses
  %i.fx = icmp ugt i8 %i.fw, 1
  br i1 %i.fx, label %.lr.ph.i.i.us, label %.critedge.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.l
  %i.fy = zext i8 %i.fw to i64                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 38753
  %i.ga = getelementptr i8, ptr %i.fs, i64 %i.fy
  %scevgep.i.i.us = getelementptr i8, ptr %i.ga, i64 38751
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !102
  %i.gd = icmp ugt i32 %i.fr, %i.gc
  br i1 %i.gd, label %.lr.ph.i.us, label %.critedge.i.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.i.us
  %i.ge = add nsw i64 %i.fy, -1                   ; 2 uses
  %exitcond.i.us39 = icmp eq i64 %i.ge, 1
  br i1 %exitcond.i.us39, label %..critedge.i.loopexit_crit_edge14.i.us, label %.lr.ph, !llvm.loop !194

.lr.ph:                                           ; preds = %.lr.ph.i.us
  br label %bb.n, !llvm.loop !194

bb.m:                                             ; preds = %bb.n
  %exitcond.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.ge
  br i1 %exitcond.i.us, label %...critedge.i.loopexit_crit_edge14.i.us_crit_edge, label %bb.n, !llvm.loop !194

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv.i12.i.us41 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i13.i.us40, %bb.m ]
  %indvars.iv.next.i13.i.us40 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.i.i.us, %bb.m ] ; 2 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.next.i13.i.us40, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next.i.i.us
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !102
  %i.gh = icmp ugt i32 %i.fr, %i.gg
  br i1 %i.gh, label %bb.m, label %.critedge.i.loopexit.i.us, !llvm.loop !194

.critedge.i.loopexit.i.us:                        ; preds = %bb.n
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv.i12.i.us41
  br label %.critedge.i.i.us

...critedge.i.loopexit_crit_edge14.i.us_crit_edge: ; preds = %bb.m
  br label %..critedge.i.loopexit_crit_edge14.i.us, !llvm.loop !194

..critedge.i.loopexit_crit_edge14.i.us:           ; preds = %...critedge.i.loopexit_crit_edge14.i.us_crit_edge, %.lr.ph.i.us
  br label %.critedge.i.i.us, !llvm.loop !194

.critedge.i.i.us:                                 ; preds = %..critedge.i.loopexit_crit_edge14.i.us, %.critedge.i.loopexit.i.us, %.lr.ph.i.i.us, %bb.l
  %.026.in.in.lcssa.i.i.us = phi ptr [ %i.ft, %bb.l ], [ %i.ft, %.lr.ph.i.i.us ], [ %scevgep.i.i.us, %..critedge.i.loopexit_crit_edge14.i.us ], [ %i.gi, %.critedge.i.loopexit.i.us ]
  %.026.in.le.i.i.us = load i8, ptr %.026.in.in.lcssa.i.i.us, align 1, !tbaa !82
  %.026.le.i.i.us = sext i8 %.026.in.le.i.i.us to i32
  %i.gj = add nsw i32 %i.fi, %.026.le.i.i.us
  br label %get_qp.exit.us

get_qp.exit.us:                                   ; preds = %.critedge.i.i.us, %bb.k, %bb.j
  %.0.i195.us = phi i32 [ %i.fd, %bb.j ], [ %i.gj, %.critedge.i.i.us ], [ %i.fi, %bb.k ] ; 2 uses
  %i.gk = add nsw i32 %.0.i195.us, %i.bv
  %i.gl = call i32 @llvm.smax.i32(i32 %i.gk, i32 0)
  %i.gm = call i32 @llvm.umin.i32(i32 %i.gl, i32 63)
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @betatable, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !82
  %i.gq = zext i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !102
  %i.gs = shl nuw nsw i32 %i.di, 1
  %i.gt = add nsw i32 %i.ch, %i.gs
  %i.gu = add nsw i32 %i.gt, %.0.i195.us
  %i.gv = call i32 @llvm.smax.i32(i32 %i.gu, i32 0)
  %i.gw = call i32 @llvm.umin.i32(i32 %i.gv, i32 65)
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr @tctable, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !104
  %i.ha = zext i16 %i.gz to i32
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !102
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %get_qp.exit.us
  %i.he = select i1 %.not185, i32 %i.cv, i32 %i.kx
  %i.hf = select i1 %.not185, i32 %4, i32 %i.cv
  %i.hg = load ptr, ptr %.in.i.i, align 8, !tbaa !88 ; 2 uses
  %i.hh = ashr i32 %i.hf, 2
  %i.hi = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4052
  %i.hk = load i16, ptr %i.hj, align 4, !tbaa !143
  %i.hl = zext i16 %i.hk to i32                   ; 2 uses
  %i.hm = mul nsw i32 %i.hh, %i.hl
  %i.hn = ashr i32 %i.he, 2
  %i.ho = add nsw i32 %i.hm, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds i8, ptr %i.hg, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !82
  %i.hs = mul nsw i32 %i.cx, %i.hl
  %i.ht = add nsw i32 %i.hs, %i.dd
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.hg, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !82
  %i.hx = icmp ugt i8 %i.hr, 7
  %i.hy = icmp ugt i8 %i.hw, 7
  %or.cond.i.i.us = select i1 %i.hx, i1 %i.hy, i1 false ; 2 uses
  %i.hz = icmp eq i8 %i.dh, 2
  %i.ia = zext i1 %i.hz to i8                     ; 2 uses
  %.sink.i.i.us = select i1 %or.cond.i.i.us, i8 3, i8 %i.ia
  %storemerge.i.i.us = select i1 %or.cond.i.i.us, i8 %spec.store.select.i.i.us, i8 %i.ia
  store i8 %storemerge.i.i.us, ptr %i.hc, align 1, !tbaa !82
  br label %max_filter_length.exit.us

bb.p:                                             ; preds = %get_qp.exit.us
  %i.ib = load ptr, ptr %i.ay, align 8, !tbaa !88
  %i.ic = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4052 ; 2 uses
  %i.ie = load i16, ptr %i.id, align 4, !tbaa !143
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nsw i32 %i.cx, %i.if
  %i.ih = add nsw i32 %i.ig, %i.dd
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %i.ib, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !82
  store i8 %i.ik, ptr %i.hc, align 1, !tbaa !82
  %i.il = load ptr, ptr %i.ba, align 8, !tbaa !88
  %i.im = load i16, ptr %i.id, align 4, !tbaa !143
  %i.in = zext i16 %i.im to i32
  %i.io = mul nsw i32 %i.cx, %i.in
  %i.ip = add nsw i32 %i.io, %i.dd
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %i.il, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !82
  br label %max_filter_length.exit.us

max_filter_length.exit.us:                        ; preds = %bb.p, %bb.o
  %.sink.i.i.us.sink = phi i8 [ %i.is, %bb.p ], [ %.sink.i.i.us, %bb.o ]
  store i8 %.sink.i.i.us.sink, ptr %i.hd, align 1, !tbaa !82
  %i.it = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 38745
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !203
  %.not191.us = icmp eq i8 %i.iv, 0
  br i1 %.not191.us, label %.thread.us, label %bb.q

bb.q:                                             ; preds = %max_filter_length.exit.us
  %i.iw = ashr i32 %spec.select192.us, %i.af
  %i.ix = mul nsw i32 %i.iw, %i.ai
  %i.iy = ashr i32 %spec.select.us, %i.af
  %i.iz = add nsw i32 %i.ix, %i.iy
  %i.ja = ashr i32 %i.ej, %i.af
  %i.jb = mul nsw i32 %i.ja, %i.ai
  %i.jc = ashr i32 %i.ei, %i.af
  %i.jd = add nsw i32 %i.jb, %i.jc                ; 2 uses
  %i.je = load ptr, ptr %i.cj, align 8, !tbaa !88 ; 2 uses
  %i.jf = sext i32 %i.iz to i64
  %i.jg = getelementptr inbounds i8, ptr %i.je, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !82
  %i.ji = icmp eq i8 %i.jh, 3
  %i.jj = zext i1 %i.ji to i8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !82
  %i.jl = icmp sgt i32 %i.jd, -1
  br i1 %i.jl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jm = zext nneg i32 %i.jd to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !82
  %i.jp = icmp eq i8 %i.jo, 3
  %i.jq = zext i1 %i.jp to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.jr = phi i8 [ 0, %bb.q ], [ %i.jq, %bb.r ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !82
  br label %.thread.us

.thread.us:                                       ; preds = %bb.s, %max_filter_length.exit.us, %bb.h, %bb.g
  %.1.us = phi i32 [ %.01733.us, %bb.h ], [ 0, %bb.s ], [ 0, %max_filter_length.exit.us ], [ %.01733.us, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.g, !llvm.loop !195

._crit_edge.us:                                   ; preds = %.thread.us
  %i.jt = icmp eq i32 %.1.us, 0
  br i1 %i.jt, label %bb.t, label %._crit_edge.us.thread

bb.t:                                             ; preds = %._crit_edge.us
  %i.ju = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv22
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !88
  %i.jx = load ptr, ptr %i.g, align 8, !tbaa !77  ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 11
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv22
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !82
  %i.kb = zext nneg i8 %i.ka to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv22
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !102
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %indvars.iv22
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !82
  %i.ki = zext nneg i8 %i.kh to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 20
  %i.kk = load i8, ptr %i.kj, align 4, !tbaa !89
  %i.kl = zext nneg i8 %i.kk to i32
  %.01745.us. = select i1 %.not185, i32 %.01745.us, i32 %i.co
  %..01745.us = select i1 %.not185, i32 %i.cp, i32 %.01745.us
  %i.km = ashr i32 %.01745.us., %i.kb
  %i.kn = mul nsw i32 %i.km, %i.ke
  %i.ko = ashr i32 %..01745.us, %i.ki
  %i.kp = shl i32 %i.ko, %i.kl
  %i.kq = add nsw i32 %i.kp, %i.kn
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %i.jw, i64 %i.kr ; 2 uses
  br i1 %i.bo, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kt = load ptr, ptr %i.bd, align 8, !tbaa !129
  call void %i.kt(ptr noundef %i.ks, i64 noundef %i.ck, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.cs) #8
  br label %._crit_edge.us.thread

bb.v:                                             ; preds = %bb.t
  %i.ku = load ptr, ptr %i.bf, align 8, !tbaa !129
  call void %i.ku(ptr noundef %i.ks, i64 noundef %i.ck, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.bn) #8
  br label %._crit_edge.us.thread

._crit_edge.us.thread:                            ; preds = %bb.f, %bb.v, %bb.u, %._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.kv = add nsw i32 %.01745.us, %i.bq           ; 2 uses
  %i.kw = icmp slt i32 %i.kv, %.0179
  br i1 %i.kw, label %bb.d, label %._crit_edge8.us, !llvm.loop !196

.lr.ph.us:                                        ; preds = %bb.f
  %4 = add i32 %.01745.us, -1
  %.not26.i.i.us = icmp eq i32 %i.cs, 0
  %spec.store.select.i.i.us = select i1 %.not26.i.i.us, i8 3, i8 1
  %i.kx = add i32 %.01745.us, -1
  br label %bb.g

._crit_edge8.us:                                  ; preds = %._crit_edge.us.thread
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, %i.cn ; 2 uses
  %i.ky = icmp slt i64 %indvars.iv.next20, %i.bg
  br i1 %i.ky, label %.lr.ph7.us, label %._crit_edge12, !llvm.loop !197

._crit_edge12:                                    ; preds = %._crit_edge8.us, %.lr.ph11
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %i.kz = icmp samesign ult i64 %indvars.iv22, 2
  %i.la = select i1 %.not, i1 %i.kz, i1 false
  br i1 %i.la, label %.lr.ph11, label %.split14, !llvm.loop !198
}

; Function Attrs: nounwind uwtable
define void @ff_vvc_deblock_horizontal(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call fastcc void @vvc_deblock(ptr %.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_vvc_alf_copy_ctu_to_hv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2064 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  %i.f = load i8, ptr %i.e, align 2, !tbaa !81
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = ashr i32 %1, %i.g
  %i.i = ashr i32 %2, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load i16, ptr %i.j, align 8, !tbaa !80
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.o = load i8, ptr %i.n, align 1, !tbaa !101
  %.not = icmp ne i8 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2072
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2048
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 22256
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 22304
  br label %bb.c

bb.b:                                             ; preds = %alf_copy_ctb_to_hv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %alf_copy_ctb_to_hv.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %alf_copy_ctb_to_hv.exit ] ; 9 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !82
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !82
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = ashr i32 %1, %i.x                       ; 2 uses
  %i.ad = ashr i32 %2, %i.ab                      ; 2 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !84  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 30
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !87
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %1
  %. = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.l)
  %i.aj = ashr i32 %., %i.x                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !103
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !83  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !102 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88
  %i.as = mul nsw i32 %i.ap, %i.ad
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.au = load i8, ptr %i.at, align 4, !tbaa !89
  %i.av = zext i8 %i.au to i32                    ; 6 uses
  %i.aw = shl i32 %i.ac, %i.av
  %i.ax = add nsw i32 %i.aw, %i.as
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.ay ; 6 uses
  %i.ba = sext i32 %i.ap to i64                   ; 15 uses
  %i.bb = lshr i32 %i.ah, %i.x                    ; 2 uses
  %.not67.not = icmp eq i64 %indvars.iv, 0        ; 3 uses
  %i.bc = select i1 %.not67.not, i32 3, i32 2     ; 4 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.be = mul nsw i32 %i.bc, %i.i
  %i.bf = mul nsw i32 %i.be, %i.bb
  %i.bg = add nsw i32 %i.bf, %i.ac
  %i.bh = shl i32 %i.bg, %i.av
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = shl i32 %i.bb, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 4 uses
  %i.bl = shl i32 %i.aj, %i.av
  %i.bm = sext i32 %i.bl to i64                   ; 6 uses
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !88
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bi ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.az, i64 %i.bm, i1 false)
  %i.bp = getelementptr inbounds i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bk ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bp, i64 %i.bm, i1 false)
  br i1 %.not67.not, label %bb.d, label %alf_copy_border.exit.i

.lr.ph.i.preheader.preheader.i:                   ; preds = %alf_copy_border.exit.1.i
  %i.br = load ptr, ptr %i.cn, align 8, !tbaa !88
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.cs ; 2 uses
  %xtraiter = and i32 %i.bz, 3                    ; 3 uses
  %i.bt = icmp ult i32 %i.bz, 4
  br i1 %i.bt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.preheader.preheader.i.new

.lr.ph.i.preheader.preheader.i.new:               ; preds = %.lr.ph.i.preheader.preheader.i
  %unroll_iter = and i32 %i.bz, 2147483644
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.ba
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bu, i64 %i.bm, i1 false)
  br label %alf_copy_border.exit.i

alf_copy_border.exit.i:                           ; preds = %bb.d, %bb.c
  %i.bw = zext i16 %i.al to i32                   ; 2 uses
  %i.bx = sub nsw i32 %i.bw, %2
  %i.by = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.l)
  %i.bz = ashr i32 %i.by, %i.ab                   ; 8 uses
  %i.ca = sub nsw i32 %i.bz, %i.bc
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.ba
  %i.cd = getelementptr inbounds i8, ptr %i.az, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bi ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.cd, i64 %i.bm, i1 false)
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.ba ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.bk ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.ch, i64 %i.bm, i1 false)
  br i1 %.not67.not, label %bb.e, label %alf_copy_border.exit.1.i

bb.e:                                             ; preds = %alf_copy_border.exit.i
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %i.ba
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cj, i64 %i.bm, i1 false)
  br label %alf_copy_border.exit.1.i

alf_copy_border.exit.1.i:                         ; preds = %bb.e, %alf_copy_border.exit.i
  %i.cl = sub nsw i32 %i.aj, %i.bc
  %i.cm = lshr i32 %i.bw, %i.ab
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.co = mul nsw i32 %i.cm, %i.h
  %i.cp = add nsw i32 %i.co, %i.ad
  %i.cq = shl i32 %i.bc, %i.av                    ; 2 uses
  %i.cr = mul nsw i32 %i.cp, %i.cq
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = sext i32 %i.cq to i64                   ; 20 uses
  %i.cu = icmp sgt i32 %i.bz, 0
  br i1 %i.cu, label %.lr.ph.i.preheader.preheader.i, label %alf_copy_ctb_to_hv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.preheader.i.new
  %.01114.i53.i = phi ptr [ %i.bs, %.lr.ph.i.preheader.preheader.i.new ], [ %i.db, %.lr.ph.i.i ] ; 2 uses
  %.01213.i54.i = phi ptr [ %i.az, %.lr.ph.i.preheader.preheader.i.new ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i53.i, ptr align 1 %.01213.i54.i, i64 %i.ct, i1 false)
  %i.cv = getelementptr inbounds i8, ptr %.01114.i53.i, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.01213.i54.i, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cw, i64 %i.ct, i1 false)
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.ct ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cy, i64 %i.ct, i1 false)
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 %i.ct ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.da, i64 %i.ct, i1 false)
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 %i.ct ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.ba ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %alf_copy_border.exit56.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !4

alf_copy_border.exit56.loopexit.i.unr-lcssa:      ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %alf_copy_border.exit56.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %alf_copy_border.exit56.loopexit.i.unr-lcssa, %.lr.ph.i.preheader.preheader.i
  %.01114.i53.i.epil.init = phi ptr [ %i.bs, %.lr.ph.i.preheader.preheader.i ], [ %i.db, %alf_copy_border.exit56.loopexit.i.unr-lcssa ]
  %.01213.i54.i.epil.init = phi ptr [ %i.az, %.lr.ph.i.preheader.preheader.i ], [ %i.dc, %alf_copy_border.exit56.loopexit.i.unr-lcssa ]
  %lcmp.mod60 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.01114.i53.i.epil = phi ptr [ %i.dd, %.lr.ph.i.i.epil ], [ %.01114.i53.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01213.i54.i.epil = phi ptr [ %i.de, %.lr.ph.i.i.epil ], [ %.01213.i54.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i53.i.epil, ptr align 1 %.01213.i54.i.epil, i64 %i.ct, i1 false)
end_hunk_0
