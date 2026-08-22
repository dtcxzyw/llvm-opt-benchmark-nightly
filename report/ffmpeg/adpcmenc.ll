Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/adpcmenc?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@adpcm_compress_trellis:bb.a
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !165
  %i.bu = load i32, ptr %i.au, align 4, !tbaa !89
  %i.bv = mul nsw i32 %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !166
  %i.by = load i32, ptr %i.av, align 4, !tbaa !90
  %i.bz = mul nsw i32 %i.by, %i.bx
  %i.ca = add nsw i32 %i.bz, %i.bv
  %i.cb = sdiv i32 %i.ca, 64                      ; 2 uses
  %i.cc = sub nsw i32 %i.bk, %i.cb
  %i.cd = sdiv i32 %i.cc, %i.br                   ; 2 uses
  %i.ce = sub nsw i32 %i.cd, %i.bp
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 -8)
  %.0.i509.us = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 6) ; 3 uses
  %i.cg = add nsw i32 %i.cd, %i.bp
  %i.ch = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 -7) ; 2 uses
  %.not491556.us = icmp slt i32 %i.ch, %.0.i509.us
  br i1 %.not491556.us, label %.loopexit.us, label %.lr.ph561.us.preheader

.lr.ph561.us.preheader:                           ; preds = %bb.j
  %.0.i507.us = tail call i32 @llvm.smin.i32(i32 %i.ch, i32 7)
  %smax629 = tail call i32 @llvm.smax.i32(i32 %.0.i507.us, i32 %.0.i509.us)
  br label %.lr.ph561.us

.lr.ph561.us:                                     ; preds = %.lr.ph561.us.preheader, %.thread515.us
  %.0422560.us = phi i32 [ %i.eo, %.thread515.us ], [ %.0.i509.us, %.lr.ph561.us.preheader ] ; 4 uses
  %.1426559.us = phi i32 [ %.3.us, %.thread515.us ], [ %.0425568.us, %.lr.ph561.us.preheader ] ; 8 uses
  %.1429558.us = phi ptr [ %.3431.us, %.thread515.us ], [ %.0428567.us, %.lr.ph561.us.preheader ] ; 8 uses
  %.2450557.us = phi i32 [ %.4452.us, %.thread515.us ], [ %.1449565.us, %.lr.ph561.us.preheader ] ; 7 uses
  %i.ci = and i32 %.0422560.us, 15                ; 2 uses
  %i.cj = mul nsw i32 %.0422560.us, %i.br
  %i.ck = add nsw i32 %i.cj, %i.cb
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 -32768)
  %i.cm = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 32767) ; 3 uses
  %i.cn = sub nsw i32 %i.bk, %i.cm                ; 2 uses
  %i.co = load ptr, ptr %i.bm, align 8, !tbaa !160
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !161 ; 2 uses
  %i.cq = mul i32 %i.cn, %i.cn
  %i.cr = add i32 %i.cp, %i.cq                    ; 4 uses
  %i.cs = icmp ult i32 %i.cr, %i.cp
  br i1 %i.cs, label %.thread515.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph561.us
  %i.ct = and i32 %i.cm, 65535
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !51
  %i.cx = zext i8 %i.cw to i32
  %i.cy = icmp eq i32 %.0439596, %i.cx
  br i1 %i.cy, label %.thread515.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = icmp slt i32 %.1426559.us, %i.e
  br i1 %i.cz, label %._crit_edge664, label %bb.m

._crit_edge664:                                   ; preds = %bb.l
  %.pre665 = sext i32 %.1426559.us to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = and i32 %.1426559.us, %i.at
  %i.db = add nsw i32 %i.da, %i.as                ; 2 uses
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0459592, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !160
  %i.df = load i32, ptr %i.de, align 4, !tbaa !161
  %i.dg = icmp ugt i32 %i.cr, %i.df
  br i1 %i.dg, label %.thread515.us, label %bb.n

bb.n:                                             ; preds = %._crit_edge664, %bb.m
  %.pre-phi = phi i64 [ %.pre665, %._crit_edge664 ], [ %i.dc, %bb.m ]
  %.0419.us = phi i32 [ %.1426559.us, %._crit_edge664 ], [ %i.db, %bb.m ] ; 2 uses
  %.2427.us = add nsw i32 %.1426559.us, 1         ; 3 uses
  store i8 %i.bl, ptr %i.cv, align 1, !tbaa !51
  %i.dh = getelementptr inbounds [8 x i8], ptr %.0459592, i64 %.pre-phi ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !160 ; 3 uses
  %.not492.us = icmp eq ptr %i.di, null
  br i1 %.not492.us, label %bb.o, label %._crit_edge657

._crit_edge657:                                   ; preds = %bb.n
  %.phi.trans.insert658 = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %.pre659.a = load i32, ptr %.phi.trans.insert658, align 4, !tbaa !163
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %.1429558.us, i64 20
  store ptr %.1429558.us, ptr %i.dh, align 8, !tbaa !160
  %i.dk = add nsw i32 %.2450557.us, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.1429558.us, i64 4
  store i32 %.2450557.us, ptr %i.dl, align 4, !tbaa !163
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge657, %bb.o
  %i.dm = phi i32 [ %.pre659.a, %._crit_edge657 ], [ %.2450557.us, %bb.o ]
  %.3451.us = phi i32 [ %.2450557.us, %._crit_edge657 ], [ %i.dk, %bb.o ] ; 3 uses
  %.2430.us = phi ptr [ %.1429558.us, %._crit_edge657 ], [ %i.dj, %bb.o ] ; 3 uses
  %.0418.us = phi ptr [ %i.di, %._crit_edge657 ], [ %.1429558.us, %bb.o ] ; 4 uses
  store i32 %i.cr, ptr %.0418.us, align 4, !tbaa !161
  %i.dn = zext nneg i32 %i.ci to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @ff_adpcm_AdaptationTable, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !65
  %i.dq = sext i16 %i.dp to i32
  %i.dr = mul nsw i32 %i.br, %i.dq
  %i.ds = ashr i32 %i.dr, 8
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 16)
  %i.dt = getelementptr inbounds nuw i8, ptr %.0418.us, i64 16
  store i32 %spec.select.us, ptr %i.dt, align 4, !tbaa !164
  %i.du = load ptr, ptr %i.bm, align 8, !tbaa !160 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !165
  %i.dx = getelementptr inbounds nuw i8, ptr %.0418.us, i64 12
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !166
  %i.dy = getelementptr inbounds nuw i8, ptr %.0418.us, i64 8
  store i32 %i.cm, ptr %i.dy, align 4, !tbaa !165
  %i.dz = sext i32 %i.dm to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dz ; 2 uses
  store i32 %i.ci, ptr %i.ea, align 4, !tbaa !167
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !163
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !169
  %i.ee = icmp sgt i32 %.0419.us, 0
  br i1 %i.ee, label %.lr.ph554.us, label %.thread515.us

.lr.ph554.us:                                     ; preds = %bb.p, %bb.q
  %.1420553.us = phi i32 [ %i.eg, %bb.q ], [ %.0419.us, %bb.p ] ; 2 uses
  %i.ef = add nsw i32 %.1420553.us, -1
  %i.eg = lshr i32 %i.ef, 1                       ; 3 uses
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.0459592, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !160 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !161
  %.not493.us = icmp ugt i32 %i.ek, %i.cr
  br i1 %.not493.us, label %bb.q, label %.thread515.us

bb.q:                                             ; preds = %.lr.ph554.us
  %i.el = zext nneg i32 %.1420553.us to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0459592, i64 %i.el ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !160
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !160
  store ptr %i.en, ptr %i.ei, align 8, !tbaa !160
  %.not613 = icmp eq i32 %i.eg, 0
  br i1 %.not613, label %.thread515.us, label %.lr.ph554.us

.thread515.us:                                    ; preds = %.lr.ph554.us, %bb.q, %bb.p, %bb.m, %bb.k, %.lr.ph561.us
  %.4452.us = phi i32 [ %.2450557.us, %.lr.ph561.us ], [ %.2450557.us, %bb.k ], [ %.2450557.us, %bb.m ], [ %.3451.us, %bb.p ], [ %.3451.us, %bb.q ], [ %.3451.us, %.lr.ph554.us ] ; 2 uses
  %.3431.us = phi ptr [ %.1429558.us, %.lr.ph561.us ], [ %.1429558.us, %bb.k ], [ %.1429558.us, %bb.m ], [ %.2430.us, %bb.p ], [ %.2430.us, %bb.q ], [ %.2430.us, %.lr.ph554.us ] ; 2 uses
  %.3.us = phi i32 [ %.1426559.us, %.lr.ph561.us ], [ %.1426559.us, %bb.k ], [ %.1426559.us, %bb.m ], [ %.2427.us, %bb.p ], [ %.2427.us, %bb.q ], [ %.2427.us, %.lr.ph554.us ] ; 2 uses
  %i.eo = add nsw i32 %.0422560.us, 1
  %exitcond630.not = icmp eq i32 %.0422560.us, %smax629
  br i1 %exitcond630.not, label %.loopexit.us, label %.lr.ph561.us, !llvm.loop !170

.loopexit.us:                                     ; preds = %.thread515.us, %bb.j
  %.2450.lcssa.us = phi i32 [ %.1449565.us, %bb.j ], [ %.4452.us, %.thread515.us ] ; 2 uses
  %.1429.lcssa.us = phi ptr [ %.0428567.us, %bb.j ], [ %.3431.us, %.thread515.us ]
  %.1426.lcssa.us = phi i32 [ %.0425568.us, %bb.j ], [ %.3.us, %.thread515.us ]
  %indvars.iv.next632 = add nuw nsw i64 %indvars.iv631, 1 ; 2 uses
  %exitcond636.not = icmp eq i64 %indvars.iv.next632, %wide.trip.count635
  br i1 %exitcond636.not, label %.critedge, label %.lr.ph569.split.us, !llvm.loop !171

.lr.ph569.split:                                  ; preds = %.lr.ph569
  switch i32 %i.i, label %.lr.ph569.split.split [
    i32 69651, label %.lr.ph569.split.split.us.preheader
    i32 69645, label %.lr.ph569.split.split.us.preheader
    i32 69633, label %.lr.ph569.split.split.us.preheader
    i32 69632, label %.lr.ph569.split.split.us.preheader
  ]

.lr.ph569.split.split.us.preheader:               ; preds = %.lr.ph569.split, %.lr.ph569.split, %.lr.ph569.split, %.lr.ph569.split
  br label %.lr.ph569.split.split.us

.lr.ph569.split.split.us:                         ; preds = %.lr.ph569.split.split.us.preheader, %.loopexit529.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit529.us ], [ 0, %.lr.ph569.split.split.us.preheader ] ; 3 uses
  %.0425568.us574 = phi i32 [ %.4.lcssa.us, %.loopexit529.us ], [ 0, %.lr.ph569.split.split.us.preheader ] ; 2 uses
  %.0428567.us575 = phi ptr [ %.4432.lcssa.us, %.loopexit529.us ], [ %i.bg, %.lr.ph569.split.split.us.preheader ] ; 2 uses
  %.1449565.us577 = phi i32 [ %.5453.lcssa.us, %.loopexit529.us ], [ %.0448593, %.lr.ph569.split.split.us.preheader ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0460591, i64 %indvars.iv ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !160 ; 3 uses
  %.not.us578 = icmp eq ptr %i.eq, null
  br i1 %.not.us578, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.lr.ph569.split.split.us
  %i.er = icmp slt i64 %indvars.iv, %i.ba
  %i.es = zext i1 %i.er to i32                    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !164 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !165 ; 2 uses
  %i.ex = sub nsw i32 %i.bk, %i.ew
  %i.ey = shl nsw i32 %i.ex, 2
  %i.ez = sext i32 %i.eu to i64
  %i.fa = getelementptr inbounds [2 x i8], ptr @ff_adpcm_step_table, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !65
  %i.fc = sext i16 %i.fb to i32                   ; 2 uses
  %i.fd = sdiv i32 %i.ey, %i.fc                   ; 2 uses
  %i.fe = sub nsw i32 %i.fd, %i.es                ; 2 uses
  %i.ff = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 -7)
  %.0.i505.us = tail call i32 @llvm.smin.i32(i32 %i.ff, i32 6)
  %i.fg = add nsw i32 %i.fd, %i.es                ; 2 uses
  %i.fh = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 -6)
  %.0.i503.us = tail call i32 @llvm.smin.i32(i32 %i.fh, i32 7)
  %i.fi = icmp slt i32 %i.fe, 1
  %i.fj = sext i1 %i.fi to i32
  %spec.select494.us = add nsw i32 %.0.i505.us, %i.fj ; 2 uses
  %.lobit.us = ashr i32 %i.fg, 31
  %.0413.us = add nsw i32 %.0.i503.us, %.lobit.us ; 2 uses
  %.not488533.us = icmp sgt i32 %spec.select494.us, %.0413.us
  br i1 %.not488533.us, label %.loopexit529.us, label %.lr.ph538.us

.lr.ph538.us:                                     ; preds = %bb.r, %.thread518.us
  %.1423537.us = phi i32 [ %i.hx, %.thread518.us ], [ %spec.select494.us, %bb.r ] ; 5 uses
  %.4536.us = phi i32 [ %.6.us, %.thread518.us ], [ %.0425568.us574, %bb.r ] ; 8 uses
  %.4432535.us = phi ptr [ %.6434.us, %.thread518.us ], [ %.0428567.us575, %bb.r ] ; 8 uses
  %.5453534.us = phi i32 [ %.7455.us, %.thread518.us ], [ %.1449565.us577, %bb.r ] ; 7 uses
  %i.fk = icmp slt i32 %.1423537.us, 0
  %i.fl = sub nsw i32 7, %.1423537.us
  %i.fm = select i1 %i.fk, i32 %i.fl, i32 %.1423537.us ; 2 uses
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr @ff_adpcm_yamaha_difflookup, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !51
  %i.fq = sext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, %i.fc
  %i.fs = sdiv i32 %i.fr, 8
  %i.ft = add nsw i32 %i.fs, %i.ew
  %i.fu = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 -32768)
  %i.fv = tail call i32 @llvm.smin.i32(i32 %i.fu, i32 32767) ; 3 uses
  %i.fw = sub nsw i32 %i.bk, %i.fv                ; 2 uses
  %i.fx = load ptr, ptr %i.ep, align 8, !tbaa !160
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !161 ; 2 uses
  %i.fz = mul i32 %i.fw, %i.fw
  %i.ga = add i32 %i.fz, %i.fy                    ; 4 uses
  %i.gb = icmp ult i32 %i.ga, %i.fy
  br i1 %i.gb, label %.thread518.us, label %bb.s

bb.s:                                             ; preds = %.lr.ph538.us
  %i.gc = and i32 %i.fv, 65535
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.gd ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !51
  %i.gg = zext i8 %i.gf to i32
  %i.gh = icmp eq i32 %.0439596, %i.gg
  br i1 %i.gh, label %.thread518.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gi = icmp slt i32 %.4536.us, %i.e
  br i1 %i.gi, label %._crit_edge662, label %bb.u

._crit_edge662:                                   ; preds = %bb.t
  %.pre668 = sext i32 %.4536.us to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gj = and i32 %.4536.us, %i.at
  %i.gk = add nsw i32 %i.gj, %i.as                ; 2 uses
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0459592, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !160
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !161
  %i.gp = icmp ugt i32 %i.ga, %i.go
  br i1 %i.gp, label %.thread518.us, label %bb.v

bb.v:                                             ; preds = %._crit_edge662, %bb.u
  %.pre-phi669 = phi i64 [ %.pre668, %._crit_edge662 ], [ %i.gl, %bb.u ]
  %.0410.us = phi i32 [ %.4536.us, %._crit_edge662 ], [ %i.gk, %bb.u ] ; 2 uses
  %.5.us = add nsw i32 %.4536.us, 1               ; 3 uses
  store i8 %i.bl, ptr %i.ge, align 1, !tbaa !51
  %i.gq = getelementptr inbounds [8 x i8], ptr %.0459592, i64 %.pre-phi669 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !160 ; 3 uses
  %.not489.us = icmp eq ptr %i.gr, null
  br i1 %.not489.us, label %bb.w, label %._crit_edge653

._crit_edge653:                                   ; preds = %bb.v
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !163
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %.4432535.us, i64 20
  store ptr %.4432535.us, ptr %i.gq, align 8, !tbaa !160
  %i.gt = add nsw i32 %.5453534.us, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.4432535.us, i64 4
  store i32 %.5453534.us, ptr %i.gu, align 4, !tbaa !163
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge653, %bb.w
  %i.gv = phi i32 [ %.pre, %._crit_edge653 ], [ %.5453534.us, %bb.w ]
  %.6454.us = phi i32 [ %.5453534.us, %._crit_edge653 ], [ %i.gt, %bb.w ] ; 3 uses
  %.5433.us = phi ptr [ %.4432535.us, %._crit_edge653 ], [ %i.gs, %bb.w ] ; 3 uses
  %.0409.us = phi ptr [ %i.gr, %._crit_edge653 ], [ %.4432535.us, %bb.w ] ; 4 uses
  store i32 %i.ga, ptr %.0409.us, align 4, !tbaa !161
  %i.gw = getelementptr inbounds i8, ptr @ff_adpcm_index_table, i64 %i.fn
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !51
  %i.gy = sext i8 %i.gx to i32
  %i.gz = add nsw i32 %i.eu, %i.gy
  %i.ha = tail call i32 @llvm.smax.i32(i32 %i.gz, i32 0)
  %i.hb = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 88)
  %i.hc = getelementptr inbounds nuw i8, ptr %.0409.us, i64 16
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !164
  %i.hd = load ptr, ptr %i.ep, align 8, !tbaa !160 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !165
  %i.hg = getelementptr inbounds nuw i8, ptr %.0409.us, i64 12
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !166
  %i.hh = getelementptr inbounds nuw i8, ptr %.0409.us, i64 8
  store i32 %i.fv, ptr %i.hh, align 4, !tbaa !165
  %i.hi = sext i32 %i.gv to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hi ; 2 uses
  store i32 %i.fm, ptr %i.hj, align 4, !tbaa !167
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !163
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !169
  %i.hn = icmp sgt i32 %.0410.us, 0
  br i1 %i.hn, label %.lr.ph.us, label %.thread518.us

.lr.ph.us:                                        ; preds = %bb.x, %bb.y
  %.1411531.us = phi i32 [ %i.hp, %bb.y ], [ %.0410.us, %bb.x ] ; 2 uses
  %i.ho = add nsw i32 %.1411531.us, -1
  %i.hp = lshr i32 %i.ho, 1                       ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.0459592, i64 %i.hq ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !160 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !161
  %.not490.us = icmp ugt i32 %i.ht, %i.ga
  br i1 %.not490.us, label %bb.y, label %.thread518.us

bb.y:                                             ; preds = %.lr.ph.us
  %i.hu = zext nneg i32 %.1411531.us to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.0459592, i64 %i.hu ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !160
  store ptr %i.hs, ptr %i.hv, align 8, !tbaa !160
  store ptr %i.hw, ptr %i.hr, align 8, !tbaa !160
  %.not611 = icmp eq i32 %i.hp, 0
  br i1 %.not611, label %.thread518.us, label %.lr.ph.us

.thread518.us:                                    ; preds = %.lr.ph.us, %bb.y, %bb.x, %bb.u, %bb.s, %.lr.ph538.us
  %.7455.us = phi i32 [ %.5453534.us, %.lr.ph538.us ], [ %.5453534.us, %bb.s ], [ %.5453534.us, %bb.u ], [ %.6454.us, %bb.x ], [ %.6454.us, %bb.y ], [ %.6454.us, %.lr.ph.us ] ; 2 uses
  %.6434.us = phi ptr [ %.4432535.us, %.lr.ph538.us ], [ %.4432535.us, %bb.s ], [ %.4432535.us, %bb.u ], [ %.5433.us, %bb.x ], [ %.5433.us, %bb.y ], [ %.5433.us, %.lr.ph.us ] ; 2 uses
  %.6.us = phi i32 [ %.4536.us, %.lr.ph538.us ], [ %.4536.us, %bb.s ], [ %.4536.us, %bb.u ], [ %.5.us, %bb.x ], [ %.5.us, %bb.y ], [ %.5.us, %.lr.ph.us ] ; 2 uses
  %i.hx = add nsw i32 %.1423537.us, 1
  %exitcond.not = icmp eq i32 %.1423537.us, %.0413.us
  br i1 %exitcond.not, label %.loopexit529.us, label %.lr.ph538.us, !llvm.loop !172

.loopexit529.us:                                  ; preds = %.thread518.us, %bb.r
  %.5453.lcssa.us = phi i32 [ %.1449565.us577, %bb.r ], [ %.7455.us, %.thread518.us ] ; 2 uses
  %.4432.lcssa.us = phi ptr [ %.0428567.us575, %bb.r ], [ %.6434.us, %.thread518.us ]
  %.4.lcssa.us = phi i32 [ %.0425568.us574, %bb.r ], [ %.6.us, %.thread518.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond620.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond620.not.a, label %.critedge, label %.lr.ph569.split.split.us, !llvm.loop !171

.lr.ph569.split.split:                            ; preds = %.lr.ph569.split, %.loopexit528
  %indvars.iv623 = phi i64 [ %indvars.iv.next624, %.loopexit528 ], [ 0, %.lr.ph569.split ] ; 3 uses
  %.0425568 = phi i32 [ %.7.lcssa, %.loopexit528 ], [ 0, %.lr.ph569.split ] ; 2 uses
  %.0428567 = phi ptr [ %.7435.lcssa, %.loopexit528 ], [ %i.bg, %.lr.ph569.split ] ; 2 uses
  %.1449565 = phi i32 [ %.8456.lcssa, %.loopexit528 ], [ %.0448593, %.lr.ph569.split ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.0460591, i64 %indvars.iv623 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !160 ; 3 uses
  %.not = icmp eq ptr %i.hz, null
  br i1 %.not, label %.critedge, label %bb.z

bb.z:                                             ; preds = %.lr.ph569.split.split
  %i.ia = icmp slt i64 %indvars.iv623, %i.ba
  %i.ib = zext i1 %i.ia to i32                    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !164 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !165 ; 2 uses
  %i.ig = sub nsw i32 %i.bk, %i.if
  %i.ih = shl nsw i32 %i.ig, 2
  %i.ii = sdiv i32 %i.ih, %i.id                   ; 2 uses
  %i.ij = sub nsw i32 %i.ii, %i.ib                ; 2 uses
  %i.ik = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 -7)
  %.0.i499 = tail call i32 @llvm.smin.i32(i32 %i.ik, i32 6)
  %i.il = add nsw i32 %i.ii, %i.ib                ; 2 uses
  %i.im = tail call i32 @llvm.smax.i32(i32 %i.il, i32 -6)
  %.0.i497 = tail call i32 @llvm.smin.i32(i32 %i.im, i32 7)
  %i.in = icmp slt i32 %i.ij, 1
  %i.io = sext i1 %i.in to i32
  %spec.select495 = add nsw i32 %.0.i499, %i.io   ; 2 uses
  %.lobit525 = ashr i32 %i.il, 31
  %.0407 = add nsw i32 %.0.i497, %.lobit525       ; 2 uses
  %.not485544 = icmp sgt i32 %spec.select495, %.0407
  br i1 %.not485544, label %.loopexit528, label %.lr.ph549

.lr.ph549:                                        ; preds = %bb.z, %.thread521
  %.2424548 = phi i32 [ %i.ld, %.thread521 ], [ %spec.select495, %bb.z ] ; 5 uses
  %.7547 = phi i32 [ %.9, %.thread521 ], [ %.0425568, %bb.z ] ; 8 uses
  %.7435546 = phi ptr [ %.9437, %.thread521 ], [ %.0428567, %bb.z ] ; 8 uses
  %.8456545 = phi i32 [ %.10458, %.thread521 ], [ %.1449565, %bb.z ] ; 7 uses
  %i.ip = icmp slt i32 %.2424548, 0
  %i.iq = sub nsw i32 7, %.2424548
  %i.ir = select i1 %i.ip, i32 %i.iq, i32 %.2424548 ; 2 uses
  %i.is = sext i32 %i.ir to i64                   ; 2 uses
  %i.it = getelementptr inbounds i8, ptr @ff_adpcm_yamaha_difflookup, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !51
  %i.iv = sext i8 %i.iu to i32
  %i.iw = mul nsw i32 %i.id, %i.iv
  %i.ix = sdiv i32 %i.iw, 8
  %i.iy = add nsw i32 %i.ix, %i.if
  %i.iz = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 -32768)
  %i.ja = tail call i32 @llvm.smin.i32(i32 %i.iz, i32 32767) ; 3 uses
  %i.jb = sub nsw i32 %i.bk, %i.ja                ; 2 uses
  %i.jc = load ptr, ptr %i.hy, align 8, !tbaa !160
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !161 ; 2 uses
  %i.je = mul i32 %i.jb, %i.jb
  %i.jf = add i32 %i.je, %i.jd                    ; 4 uses
  %i.jg = icmp ult i32 %i.jf, %i.jd
  br i1 %i.jg, label %.thread521, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph549
  %i.jh = and i32 %i.ja, 65535
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ji ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !51
  %i.jl = zext i8 %i.jk to i32
  %i.jm = icmp eq i32 %.0439596, %i.jl
  br i1 %i.jm, label %.thread521, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jn = icmp slt i32 %.7547, %i.e
  br i1 %i.jn, label %._crit_edge663, label %bb.ac

._crit_edge663:                                   ; preds = %bb.ab
  %.pre666 = sext i32 %.7547 to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jo = and i32 %.7547, %i.at
  %i.jp = add nsw i32 %i.jo, %i.as                ; 2 uses
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %.0459592, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !160
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !161
  %i.ju = icmp ugt i32 %i.jf, %i.jt
  br i1 %i.ju, label %.thread521, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge663, %bb.ac
  %.pre-phi667 = phi i64 [ %.pre666, %._crit_edge663 ], [ %i.jq, %bb.ac ]
  %.0406 = phi i32 [ %.7547, %._crit_edge663 ], [ %i.jp, %bb.ac ] ; 2 uses
  %.8 = add nsw i32 %.7547, 1                     ; 3 uses
  store i8 %i.bl, ptr %i.jj, align 1, !tbaa !51
  %i.jv = getelementptr inbounds [8 x i8], ptr %.0459592, i64 %.pre-phi667 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !160 ; 3 uses
  %.not486 = icmp eq ptr %i.jw, null
  br i1 %.not486, label %bb.ae, label %._crit_edge654

._crit_edge654:                                   ; preds = %bb.ad
  %.phi.trans.insert655 = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %.pre656 = load i32, ptr %.phi.trans.insert655, align 4, !tbaa !163
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jx = getelementptr inbounds nuw i8, ptr %.7435546, i64 20
  store ptr %.7435546, ptr %i.jv, align 8, !tbaa !160
  %i.jy = add nsw i32 %.8456545, 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.7435546, i64 4
  store i32 %.8456545, ptr %i.jz, align 4, !tbaa !163
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge654, %bb.ae
  %i.ka = phi i32 [ %.pre656, %._crit_edge654 ], [ %.8456545, %bb.ae ]
  %.9457 = phi i32 [ %.8456545, %._crit_edge654 ], [ %i.jy, %bb.ae ] ; 3 uses
  %.8436 = phi ptr [ %.7435546, %._crit_edge654 ], [ %i.jx, %bb.ae ] ; 3 uses
  %.0 = phi ptr [ %i.jw, %._crit_edge654 ], [ %.7435546, %bb.ae ] ; 4 uses
  store i32 %i.jf, ptr %.0, align 4, !tbaa !161
  %i.kb = getelementptr inbounds [2 x i8], ptr @ff_adpcm_yamaha_indexscale, i64 %i.is
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !65
  %i.kd = sext i16 %i.kc to i32
  %i.ke = mul nsw i32 %i.id, %i.kd
  %i.kf = ashr i32 %i.ke, 8
  %i.kg = tail call i32 @llvm.smax.i32(i32 %i.kf, i32 127)
  %i.kh = tail call i32 @llvm.umin.i32(i32 %i.kg, i32 24576)
  %i.ki = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !164
  %i.kj = load ptr, ptr %i.hy, align 8, !tbaa !160 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !165
  %i.km = getelementptr inbounds nuw i8, ptr %.0, i64 12
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !166
  %i.kn = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.ja, ptr %i.kn, align 4, !tbaa !165
  %i.ko = sext i32 %i.ka to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ko ; 2 uses
  store i32 %i.ir, ptr %i.kp, align 4, !tbaa !167
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !163
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !169
  %i.kt = icmp sgt i32 %.0406, 0
  br i1 %i.kt, label %.lr.ph542, label %.thread521

.lr.ph542:                                        ; preds = %bb.af, %bb.ag
  %.1541 = phi i32 [ %i.kv, %bb.ag ], [ %.0406, %bb.af ] ; 2 uses
  %i.ku = add nsw i32 %.1541, -1
  %i.kv = lshr i32 %i.ku, 1                       ; 3 uses
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.0459592, i64 %i.kw ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !160 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !161
  %.not487 = icmp ugt i32 %i.kz, %i.jf
  br i1 %.not487, label %bb.ag, label %.thread521

bb.ag:                                            ; preds = %.lr.ph542
  %i.la = zext nneg i32 %.1541 to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.0459592, i64 %i.la ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !160
  store ptr %i.ky, ptr %i.lb, align 8, !tbaa !160
  store ptr %i.lc, ptr %i.kx, align 8, !tbaa !160
  %.not612 = icmp eq i32 %i.kv, 0
  br i1 %.not612, label %.thread521, label %.lr.ph542

.thread521:                                       ; preds = %bb.ag, %.lr.ph542, %bb.af, %bb.ac, %bb.aa, %.lr.ph549
  %.10458 = phi i32 [ %.8456545, %.lr.ph549 ], [ %.8456545, %bb.aa ], [ %.8456545, %bb.ac ], [ %.9457, %bb.af ], [ %.9457, %.lr.ph542 ], [ %.9457, %bb.ag ] ; 2 uses
  %.9437 = phi ptr [ %.7435546, %.lr.ph549 ], [ %.7435546, %bb.aa ], [ %.7435546, %bb.ac ], [ %.8436, %bb.af ], [ %.8436, %.lr.ph542 ], [ %.8436, %bb.ag ] ; 2 uses
  %.9 = phi i32 [ %.7547, %.lr.ph549 ], [ %.7547, %bb.aa ], [ %.7547, %bb.ac ], [ %.8, %bb.af ], [ %.8, %.lr.ph542 ], [ %.8, %bb.ag ] ; 2 uses
  %i.ld = add nsw i32 %.2424548, 1
  %exitcond622.not = icmp eq i32 %.2424548, %.0407
  br i1 %exitcond622.not, label %.loopexit528, label %.lr.ph549, !llvm.loop !173

.loopexit528:                                     ; preds = %.thread521, %bb.z
  %.8456.lcssa = phi i32 [ %.1449565, %bb.z ], [ %.10458, %.thread521 ] ; 2 uses
  %.7435.lcssa = phi ptr [ %.0428567, %bb.z ], [ %.9437, %.thread521 ]
  %.7.lcssa = phi i32 [ %.0425568, %bb.z ], [ %.9, %.thread521 ]
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond628.not = icmp eq i64 %indvars.iv.next624, %wide.trip.count627
  br i1 %exitcond628.not, label %.critedge, label %.lr.ph569.split.split, !llvm.loop !171

.critedge:                                        ; preds = %.lr.ph569.split.split.us, %.loopexit529.us, %.lr.ph569.split.split, %.loopexit528, %.lr.ph569.split.us, %.loopexit.us, %bb.i
  %.1449.lcssa = phi i32 [ %.0448593, %bb.i ], [ %.8456.lcssa, %.loopexit528 ], [ %.2450.lcssa.us, %.loopexit.us ], [ %.1449565.us, %.lr.ph569.split.us ], [ %.1449565, %.lr.ph569.split.split ], [ %.1449565.us577, %.lr.ph569.split.split.us ], [ %.5453.lcssa.us, %.loopexit529.us ]
  %i.le = add nsw i32 %.0439596, 1                ; 2 uses
  %i.lf = icmp eq i32 %i.le, 255
  br i1 %i.lf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.critedge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.s, i8 -1, i64 65536, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge
  %.1440 = phi i32 [ 0, %bb.ah ], [ %i.le, %.critedge ]
  %i.lg = load ptr, ptr %.0459592, align 8, !tbaa !160 ; 5 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !161
  %i.li = icmp ugt i32 %i.lh, 268435456
  br i1 %i.li, label %.preheader530, label %bb.ak

.preheader530:                                    ; preds = %bb.ai
  br i1 %i.aw, label %.lr.ph, label %.critedge13

.lr.ph:                                           ; preds = %.preheader530, %bb.aj
  %indvars.iv637 = phi i64 [ %indvars.iv.next638, %bb.aj ], [ 1, %.preheader530 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.0459592, i64 %indvars.iv637
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !160 ; 3 uses
  %.not484 = icmp eq ptr %i.lk, null
  br i1 %.not484, label %.critedge13, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  %i.ll = load i32, ptr %i.lg, align 4, !tbaa !161
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !161
  %i.ln = sub i32 %i.lm, %i.ll
  store i32 %i.ln, ptr %i.lk, align 4, !tbaa !161
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1 ; 2 uses
  %exitcond641.not = icmp eq i64 %indvars.iv.next638, %wide.trip.count640
  br i1 %exitcond641.not, label %.critedge13, label %.lr.ph, !llvm.loop !174

.critedge13:                                      ; preds = %.lr.ph, %bb.aj, %.preheader530
  store i32 0, ptr %i.lg, align 4, !tbaa !161
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge13, %bb.ai
  %i.lo = add nsw i32 %.0446594, 128
  %i.lp = zext i32 %i.lo to i64
  %i.lq = icmp eq i64 %indvars.iv642.a, %i.lp
  br i1 %i.lq, label %.preheader, label %bb.al

.preheader:                                       ; preds = %bb.ak
  %i.lr = sext i32 %.0446594 to i64               ; 4 uses
  %i.ls = icmp sgt i64 %indvars.iv642.a, %i.lr
  br i1 %i.ls, label %.lr.ph590.preheader, label %._crit_edge

.lr.ph590.preheader:                              ; preds = %.preheader
  %i.lt = sub i64 %indvars.iv642.a, %i.lr
  %xtraiter = and i64 %i.lt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph590.prol.loopexit, label %.lr.ph590.prol

.lr.ph590.prol:                                   ; preds = %.lr.ph590.preheader, %.lr.ph590.prol
  %indvars.iv644.prol = phi i64 [ %indvars.iv.next645.prol, %.lr.ph590.prol ], [ %indvars.iv642.a, %.lr.ph590.preheader ] ; 2 uses
  %.pn527588.prol = phi ptr [ %.0461.prol, %.lr.ph590.prol ], [ %i.lg, %.lr.ph590.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph590.prol ], [ 0, %.lr.ph590.preheader ]
  %.pn526.in.in.prol = getelementptr inbounds nuw i8, ptr %.pn527588.prol, i64 4
  %.pn526.in.prol = load i32, ptr %.pn526.in.in.prol, align 4, !tbaa !152
  %.pn526.prol = sext i32 %.pn526.in.prol to i64
  %.0461.prol = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.pn526.prol ; 3 uses
  %i.lu = load i32, ptr %.0461.prol, align 4, !tbaa !167
  %i.lv = trunc i32 %i.lu to i8
  %i.lw = getelementptr inbounds i8, ptr %2, i64 %indvars.iv644.prol
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !51
  %indvars.iv.next645.prol = add nsw i64 %indvars.iv644.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph590.prol.loopexit, label %.lr.ph590.prol, !llvm.loop !175

.lr.ph590.prol.loopexit:                          ; preds = %.lr.ph590.prol, %.lr.ph590.preheader
  %indvars.iv644.unr = phi i64 [ %indvars.iv642.a, %.lr.ph590.preheader ], [ %indvars.iv.next645.prol, %.lr.ph590.prol ]
  %.pn527588.unr = phi ptr [ %i.lg, %.lr.ph590.preheader ], [ %.0461.prol, %.lr.ph590.prol ]
  %i.lx = sub i64 %i.lr, %indvars.iv642.a
  %i.ly = icmp ugt i64 %i.lx, -4
  br i1 %i.ly, label %._crit_edge, label %.lr.ph590

.lr.ph590:                                        ; preds = %.lr.ph590.prol.loopexit, %.lr.ph590
  %indvars.iv644 = phi i64 [ %indvars.iv.next645.3, %.lr.ph590 ], [ %indvars.iv644.unr, %.lr.ph590.prol.loopexit ] ; 5 uses
  %.pn527588 = phi ptr [ %.0461.3, %.lr.ph590 ], [ %.pn527588.unr, %.lr.ph590.prol.loopexit ]
  %.pn526.in.in = getelementptr inbounds nuw i8, ptr %.pn527588, i64 4
  %.pn526.in = load i32, ptr %.pn526.in.in, align 4, !tbaa !152
  %.pn526 = sext i32 %.pn526.in to i64
  %.0461 = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.pn526 ; 2 uses
  %i.lz = load i32, ptr %.0461, align 4, !tbaa !167
  %i.ma = trunc i32 %i.lz to i8
  %i.mb = getelementptr inbounds i8, ptr %2, i64 %indvars.iv644
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !51
  %.pn526.in.in.1 = getelementptr inbounds nuw i8, ptr %.0461, i64 4
  %.pn526.in.1 = load i32, ptr %.pn526.in.in.1, align 4, !tbaa !152
  %.pn526.1 = sext i32 %.pn526.in.1 to i64
  %.0461.1 = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.pn526.1 ; 2 uses
  %i.mc = load i32, ptr %.0461.1, align 4, !tbaa !167
  %i.md = trunc i32 %i.mc to i8
  %i.me = getelementptr i8, ptr %2, i64 %indvars.iv644
  %i.mf = getelementptr i8, ptr %i.me, i64 -1
  store i8 %i.md, ptr %i.mf, align 1, !tbaa !51
  %.pn526.in.in.2 = getelementptr inbounds nuw i8, ptr %.0461.1, i64 4
  %.pn526.in.2 = load i32, ptr %.pn526.in.in.2, align 4, !tbaa !152
  %.pn526.2 = sext i32 %.pn526.in.2 to i64
  %.0461.2 = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.pn526.2 ; 2 uses
  %i.mg = load i32, ptr %.0461.2, align 4, !tbaa !167
  %i.mh = trunc i32 %i.mg to i8
  %i.mi = getelementptr i8, ptr %2, i64 %indvars.iv644
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  store i8 %i.mh, ptr %i.mj, align 1, !tbaa !51
  %.pn526.in.in.3 = getelementptr inbounds nuw i8, ptr %.0461.2, i64 4
  %.pn526.in.3 = load i32, ptr %.pn526.in.in.3, align 4, !tbaa !152
  %.pn526.3 = sext i32 %.pn526.in.3 to i64
  %.0461.3 = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.pn526.3 ; 2 uses
  %i.mk = load i32, ptr %.0461.3, align 4, !tbaa !167
  %i.ml = trunc i32 %i.mk to i8
  %i.mm = getelementptr i8, ptr %2, i64 %indvars.iv644
  %i.mn = getelementptr i8, ptr %i.mm, i64 -3
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !51
  %indvars.iv.next645.3 = add nsw i64 %indvars.iv644, -4 ; 2 uses
  %i.mo = icmp sgt i64 %indvars.iv.next645.3, %i.lr
  br i1 %i.mo, label %.lr.ph590, label %._crit_edge, !llvm.loop !176

._crit_edge:                                      ; preds = %.lr.ph590.prol.loopexit, %.lr.ph590, %.preheader
  %i.mp = getelementptr inbounds nuw i8, ptr %.0459592, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mp, i8 0, i64 %i.az, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %bb.ak
  %.12 = phi i32 [ 0, %._crit_edge ], [ %.1449.lcssa, %bb.ak ]
  %.1447 = phi i32 [ %i.bc, %._crit_edge ], [ %.0446594, %bb.ak ] ; 2 uses
  %indvars.iv.next643 = add nuw nsw i64 %indvars.iv642.a, 1 ; 2 uses
  %exitcond649.not = icmp eq i64 %indvars.iv.next643, %wide.trip.count648
  br i1 %exitcond649.not, label %._crit_edge602.loopexit, label %bb.i, !llvm.loop !177

._crit_edge602.loopexit:                          ; preds = %bb.al
  %.pre660 = load ptr, ptr %.0459592, align 8, !tbaa !160
  br label %._crit_edge602

._crit_edge602:                                   ; preds = %._crit_edge602.loopexit, %bb.h
  %i.mq = phi ptr [ %i.w, %bb.h ], [ %.pre660, %._crit_edge602.loopexit ] ; 3 uses
  %.0460.lcssa = phi ptr [ %i.o, %bb.h ], [ %.0459592, %._crit_edge602.loopexit ]
  %.0446.lcssa = phi i32 [ -1, %bb.h ], [ %.1447, %._crit_edge602.loopexit ] ; 2 uses
  %.1445604 = add nsw i32 %4, -1                  ; 2 uses
  %i.mr = icmp sgt i32 %.1445604, %.0446.lcssa
  br i1 %i.mr, label %.lr.ph608.preheader, label %._crit_edge609

.lr.ph608.preheader:                              ; preds = %._crit_edge602
  %i.ms = sext i32 %.1445604 to i64               ; 4 uses
  %i.mt = sext i32 %.0446.lcssa to i64            ; 3 uses
  %i.mu = sub nsw i64 %i.ms, %i.mt
  %xtraiter704 = and i64 %i.mu, 3                 ; 2 uses
  %lcmp.mod705.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %.lr.ph608.prol.loopexit, label %.lr.ph608.prol

.lr.ph608.prol:                                   ; preds = %.lr.ph608.preheader, %.lr.ph608.prol
  %indvars.iv650.prol = phi i64 [ %indvars.iv.next651.prol, %.lr.ph608.prol ], [ %i.ms, %.lr.ph608.preheader ] ; 2 uses
  %.pn524605.prol = phi ptr [ %.1462.prol, %.lr.ph608.prol ], [ %i.mq, %.lr.ph608.preheader ]
  %prol.iter706 = phi i64 [ %prol.iter706.next, %.lr.ph608.prol ], [ 0, %.lr.ph608.preheader ]
  %.pn.in.in.prol = getelementptr inbounds nuw i8, ptr %.pn524605.prol, i64 4
  %.pn.in.prol = load i32, ptr %.pn.in.in.prol, align 4, !tbaa !152
  %.pn.prol = sext i32 %.pn.in.prol to i64
  %.1462.prol = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.pn.prol ; 3 uses
  %i.mv = load i32, ptr %.1462.prol, align 4, !tbaa !167
  %i.mw = trunc i32 %i.mv to i8
  %i.mx = getelementptr inbounds i8, ptr %2, i64 %indvars.iv650.prol
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !51
  %indvars.iv.next651.prol = add nsw i64 %indvars.iv650.prol, -1 ; 2 uses
  %prol.iter706.next = add i64 %prol.iter706, 1   ; 2 uses
  %prol.iter706.cmp.not = icmp eq i64 %prol.iter706.next, %xtraiter704
  br i1 %prol.iter706.cmp.not, label %.lr.ph608.prol.loopexit, label %.lr.ph608.prol, !llvm.loop !178

.lr.ph608.prol.loopexit:                          ; preds = %.lr.ph608.prol, %.lr.ph608.preheader
  %indvars.iv650.unr = phi i64 [ %i.ms, %.lr.ph608.preheader ], [ %indvars.iv.next651.prol, %.lr.ph608.prol ]
  %.pn524605.unr = phi ptr [ %i.mq, %.lr.ph608.preheader ], [ %.1462.prol, %.lr.ph608.prol ]
  %i.my = sub nsw i64 %i.mt, %i.ms
  %i.mz = icmp ugt i64 %i.my, -4
  br i1 %i.mz, label %._crit_edge609.loopexit, label %.lr.ph608

.lr.ph608:                                        ; preds = %.lr.ph608.prol.loopexit, %.lr.ph608
  %indvars.iv650 = phi i64 [ %indvars.iv.next651.3, %.lr.ph608 ], [ %indvars.iv650.unr, %.lr.ph608.prol.loopexit ] ; 5 uses
  %.pn524605 = phi ptr [ %.1462.3, %.lr.ph608 ], [ %.pn524605.unr, %.lr.ph608.prol.loopexit ]
  %.pn.in.in = getelementptr inbounds nuw i8, ptr %.pn524605, i64 4
  %.pn.in = load i32, ptr %.pn.in.in, align 4, !tbaa !152
  %.pn = sext i32 %.pn.in to i64
  %.1462 = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.pn ; 2 uses
  %i.na = load i32, ptr %.1462, align 4, !tbaa !167
  %i.nb = trunc i32 %i.na to i8
  %i.nc = getelementptr inbounds i8, ptr %2, i64 %indvars.iv650
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !51
end_hunk_0
