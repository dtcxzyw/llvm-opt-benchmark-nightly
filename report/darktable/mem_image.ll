Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/mem_image?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6LibRaw14copy_mem_imageEPvii:bb.a
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !76
  %i.kk = getelementptr inbounds nuw i8, ptr %.173110.us.us, i64 16 ; 2 uses
  store i16 %i.kj, ptr %i.ke, align 2, !tbaa !76
  %i.kl = icmp sgt i64 %indvars.iv200, 8
  br i1 %i.kl, label %.lr.ph.us.us.new, label %._crit_edge.us.us, !llvm.loop !106

._crit_edge.us.us:                                ; preds = %.lr.ph.us.us.new, %.prol.loopexit
  %.lcssa289.a = phi ptr [ %.lcssa289.unr.a, %.prol.loopexit ], [ %i.kk, %.lr.ph.us.us.new ]
  %i.km = add nuw nsw i32 %.164114.us.us, 1       ; 2 uses
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, %i.hj ; 2 uses
  %i.kn = load i16, ptr %i.ca, align 2, !tbaa !82 ; 3 uses
  %i.ko = zext i16 %i.kn to i32
  %i.kp = icmp samesign ult i32 %i.km, %i.ko
  br i1 %i.kp, label %.lr.ph.us.us, label %.loopexit104.us.loopexit, !llvm.loop !107

.loopexit104.us.loopexit:                         ; preds = %._crit_edge.us.us
  %i.kq = trunc nsw i64 %indvars.iv.next204 to i32
  %.pre241 = load i16, ptr %i.cc, align 4, !tbaa !83
  br label %.loopexit104.us

.loopexit104.us:                                  ; preds = %.lr.ph116.split.us159, %.loopexit104.us.loopexit, %.preheader103.us
  %i.kr = phi i16 [ %i.hl, %.preheader103.us ], [ %.pre241, %.loopexit104.us.loopexit ], [ %i.hl, %.lr.ph116.split.us159 ] ; 2 uses
  %i.ks = phi i16 [ %i.hm, %.preheader103.us ], [ %i.kn, %.loopexit104.us.loopexit ], [ %i.hm, %.lr.ph116.split.us159 ]
  %i.kt = phi i16 [ 0, %.preheader103.us ], [ %i.kn, %.loopexit104.us.loopexit ], [ %i.hm, %.lr.ph116.split.us159 ]
  %.2.lcssa.us = phi i32 [ %.0147.us157, %.preheader103.us ], [ %i.kq, %.loopexit104.us.loopexit ], [ %i.hw, %.lr.ph116.split.us159 ]
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ku = add nsw i32 %i.co, %.2.lcssa.us
  %i.kv = zext i16 %i.kr to i64
  %i.kw = icmp samesign ult i64 %indvars.iv.next207, %i.kv
  br i1 %i.kw, label %.preheader103.us, label %._crit_edge150, !llvm.loop !104

.lr.ph149.split.splitthread-pre-split:            ; preds = %.loopexit102
  %i.kx = add nsw i32 %i.co, %.5
  %.pr = load i32, ptr %i.cq, align 8, !tbaa !90
  br label %.lr.ph149.split.split

.lr.ph149.split.split:                            ; preds = %.lr.ph149.split, %.lr.ph149.split.splitthread-pre-split
  %i.ky = phi i32 [ %.pr, %.lr.ph149.split.splitthread-pre-split ], [ 8, %.lr.ph149.split ]
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %.lr.ph149.split.splitthread-pre-split ], [ 0, %.lr.ph149.split ] ; 2 uses
  %.0147 = phi i32 [ %i.kx, %.lr.ph149.split.splitthread-pre-split ], [ %i.ch, %.lr.ph149.split ] ; 6 uses
  %i.kz = mul nsw i64 %indvars.iv221, %i.hk
  %i.la = getelementptr inbounds i8, ptr %1, i64 %i.kz ; 2 uses
  %i.lb = icmp eq i32 %i.ky, 8
  %i.lc = load i16, ptr %i.ca, align 2, !tbaa !82 ; 4 uses
  %.not169 = icmp eq i16 %i.lc, 0                 ; 2 uses
  br i1 %i.lb, label %.preheader101, label %.preheader103

.preheader103:                                    ; preds = %.lr.ph149.split.split
  br i1 %.not169, label %.loopexit102, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader103
  %i.ld = load i32, ptr %i.cr, align 4, !tbaa !89 ; 3 uses
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %.lr.ph116.split.us, label %.lr.ph116.split

.lr.ph116.split.us:                               ; preds = %.lr.ph116
  %i.lf = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.lg = zext nneg i32 %i.ld to i64              ; 3 uses
  %i.lh = sext i32 %.0147 to i64
  %xtraiter294 = and i64 %i.lg, 7                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  %i.li = icmp ult i32 %i.ld, 8
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph116.split.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %._crit_edge.us ], [ %i.lh, %.lr.ph116.split.us ] ; 2 uses
  %.164114.us = phi i32 [ %i.nu, %._crit_edge.us ], [ 0, %.lr.ph116.split.us ]
  %.072113.us = phi ptr [ %.lcssa286, %._crit_edge.us ], [ %i.la, %.lr.ph116.split.us ] ; 2 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %indvars.iv212 ; 9 uses
  br i1 %lcmp.mod295.not, label %.prol.loopexit293, label %.prol.preheader292

.prol.preheader292:                               ; preds = %.lr.ph.us, %.prol.preheader292
  %indvars.iv209.prol = phi i64 [ %indvars.iv.next210.prol, %.prol.preheader292 ], [ %i.lg, %.lr.ph.us ]
  %.173110.us.prol = phi ptr [ %i.lp, %.prol.preheader292 ], [ %.072113.us, %.lr.ph.us ] ; 2 uses
  %prol.iter296 = phi i64 [ %prol.iter296.next, %.prol.preheader292 ], [ 0, %.lr.ph.us ]
  %indvars.iv.next210.prol = add nsw i64 %indvars.iv209.prol, -1 ; 3 uses
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %indvars.iv.next210.prol
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !76
  %i.lm = zext i16 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !76
  %i.lp = getelementptr inbounds nuw i8, ptr %.173110.us.prol, i64 2 ; 3 uses
  store i16 %i.lo, ptr %.173110.us.prol, align 2, !tbaa !76
  %prol.iter296.next = add i64 %prol.iter296, 1   ; 2 uses
  %prol.iter296.cmp.not = icmp eq i64 %prol.iter296.next, %xtraiter294
  br i1 %prol.iter296.cmp.not, label %.prol.loopexit293, label %.prol.preheader292, !llvm.loop !108

.prol.loopexit293:                                ; preds = %.prol.preheader292, %.lr.ph.us
  %indvars.iv209.unr = phi i64 [ %i.lg, %.lr.ph.us ], [ %indvars.iv.next210.prol, %.prol.preheader292 ]
  %.173110.us.unr = phi ptr [ %.072113.us, %.lr.ph.us ], [ %i.lp, %.prol.preheader292 ]
  %.lcssa286.unr = phi ptr [ poison, %.lr.ph.us ], [ %i.lp, %.prol.preheader292 ]
  br i1 %i.li, label %._crit_edge.us, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.prol.loopexit293, %.lr.ph.us.new
  %indvars.iv209 = phi i64 [ %indvars.iv.next210.7, %.lr.ph.us.new ], [ %indvars.iv209.unr, %.prol.loopexit293 ] ; 9 uses
  %.173110.us = phi ptr [ %i.ns, %.lr.ph.us.new ], [ %.173110.us.unr, %.prol.loopexit293 ] ; 9 uses
  %i.lq = getelementptr [2 x i8], ptr %i.lj, i64 %indvars.iv209
  %i.lr = getelementptr i8, ptr %i.lq, i64 -2
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !76
  %i.lt = zext i16 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.lt
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !76
  %i.lw = getelementptr inbounds nuw i8, ptr %.173110.us, i64 2
  store i16 %i.lv, ptr %.173110.us, align 2, !tbaa !76
  %i.lx = getelementptr [2 x i8], ptr %i.lj, i64 %indvars.iv209
  %i.ly = getelementptr i8, ptr %i.lx, i64 -4
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !76
  %i.ma = zext i16 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.ma
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !76
  %i.md = getelementptr inbounds nuw i8, ptr %.173110.us, i64 4
  store i16 %i.mc, ptr %i.lw, align 2, !tbaa !76
  %i.me = getelementptr [2 x i8], ptr %i.lj, i64 %indvars.iv209
  %i.mf = getelementptr i8, ptr %i.me, i64 -6
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !76
  %i.mh = zext i16 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !76
  %i.mk = getelementptr inbounds nuw i8, ptr %.173110.us, i64 6
  store i16 %i.mj, ptr %i.md, align 2, !tbaa !76
  %i.ml = getelementptr [2 x i8], ptr %i.lj, i64 %indvars.iv209
  %i.mm = getelementptr i8, ptr %i.ml, i64 -8
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !76
  %i.mo = zext i16 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !76
  %i.mr = getelementptr inbounds nuw i8, ptr %.173110.us, i64 8
  store i16 %i.mq, ptr %i.mk, align 2, !tbaa !76
  %i.ms = getelementptr [2 x i8], ptr %i.lj, i64 %indvars.iv209
  %i.mt = getelementptr i8, ptr %i.ms, i64 -10
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !76
  %i.mv = zext i16 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !76
  %i.my = getelementptr inbounds nuw i8, ptr %.173110.us, i64 10
  store i16 %i.mx, ptr %i.mr, align 2, !tbaa !76
  %i.mz = getelementptr [2 x i8], ptr %i.lj, i64 %indvars.iv209
  %i.na = getelementptr i8, ptr %i.mz, i64 -12
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !76
  %i.nc = zext i16 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.nc
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !76
  %i.nf = getelementptr inbounds nuw i8, ptr %.173110.us, i64 12
  store i16 %i.ne, ptr %i.my, align 2, !tbaa !76
  %i.ng = getelementptr [2 x i8], ptr %i.lj, i64 %indvars.iv209
  %i.nh = getelementptr i8, ptr %i.ng, i64 -14
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !76
  %i.nj = zext i16 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !76
  %i.nm = getelementptr inbounds nuw i8, ptr %.173110.us, i64 14
  store i16 %i.nl, ptr %i.nf, align 2, !tbaa !76
  %indvars.iv.next210.7 = add nsw i64 %indvars.iv209, -8 ; 2 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %indvars.iv.next210.7
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !76
  %i.np = zext i16 %i.no to i64
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.np
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !76
  %i.ns = getelementptr inbounds nuw i8, ptr %.173110.us, i64 16 ; 2 uses
  store i16 %i.nr, ptr %i.nm, align 2, !tbaa !76
  %i.nt = icmp sgt i64 %indvars.iv209, 8
  br i1 %i.nt, label %.lr.ph.us.new, label %._crit_edge.us, !llvm.loop !106

._crit_edge.us:                                   ; preds = %.lr.ph.us.new, %.prol.loopexit293
  %.lcssa286 = phi ptr [ %.lcssa286.unr, %.prol.loopexit293 ], [ %i.ns, %.lr.ph.us.new ]
  %i.nu = add nuw nsw i32 %.164114.us, 1          ; 2 uses
  %indvars.iv.next213 = add nsw i64 %indvars.iv212, %i.hj ; 2 uses
  %i.nv = load i16, ptr %i.ca, align 2, !tbaa !82
  %i.nw = zext i16 %i.nv to i32
  %i.nx = icmp samesign ult i32 %i.nu, %i.nw
  br i1 %i.nx, label %.lr.ph.us, label %.loopexit102.loopexit176, !llvm.loop !107

.lr.ph116.split:                                  ; preds = %.lr.ph116
  %i.ny = zext i16 %i.lc to i32
  %i.nz = add i32 %i.cj, %.0147
  %i.oa = add nsw i32 %i.ny, -1
  %i.ob = mul i32 %i.cj, %i.oa
  %i.oc = add i32 %i.nz, %i.ob
  br label %.loopexit102

.preheader101:                                    ; preds = %.lr.ph149.split.split
  br i1 %.not169, label %.loopexit102, label %.lr.ph124

.lr.ph124:                                        ; preds = %.preheader101
  %i.od = load i32, ptr %i.cr, align 4, !tbaa !89 ; 2 uses
  %i.oe = icmp sgt i32 %i.od, 0
  br i1 %i.oe, label %.lr.ph124.split.preheader, label %.lr.ph124.split.us

.lr.ph124.split.preheader:                        ; preds = %.lr.ph124
  %i.of = sext i32 %.0147 to i64
  br label %.lr.ph124.split

.lr.ph124.split.us:                               ; preds = %.lr.ph124
  %i.og = zext i16 %i.lc to i32
  %i.oh = add i32 %i.cj, %.0147
  %i.oi = add nsw i32 %i.og, -1
  %i.oj = mul i32 %i.cj, %i.oi
  %i.ok = add i32 %i.oh, %i.oj
  br label %.loopexit102

.lr.ph124.splitthread-pre-split:                  ; preds = %._crit_edge
  %.pr262 = load i32, ptr %i.cr, align 4, !tbaa !89
  br label %.lr.ph124.split

.lr.ph124.split:                                  ; preds = %.lr.ph124.splitthread-pre-split, %.lr.ph124.split.preheader
  %4 = phi i32 [ %.pr262, %.lr.ph124.splitthread-pre-split ], [ %i.od, %.lr.ph124.split.preheader ] ; 3 uses
  %5 = phi i16 [ %i.si, %.lr.ph124.splitthread-pre-split ], [ %i.lc, %.lr.ph124.split.preheader ]
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph124.splitthread-pre-split ], [ %i.of, %.lr.ph124.split.preheader ] ; 10 uses
  %.063122 = phi i32 [ %i.sj, %.lr.ph124.splitthread-pre-split ], [ 0, %.lr.ph124.split.preheader ]
  %.076121 = phi ptr [ %.177.lcssa, %.lr.ph124.splitthread-pre-split ], [ %i.la, %.lr.ph124.split.preheader ] ; 3 uses
  %i.ol = icmp sgt i32 %4, 0
  br i1 %i.ol, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph124.split
  %i.om = zext nneg i32 %4 to i64                 ; 3 uses
  %xtraiter299 = and i64 %i.om, 7                 ; 2 uses
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %.prol.loopexit298, label %.prol.preheader297

.prol.preheader297:                               ; preds = %.lr.ph, %.prol.preheader297
  %indvars.iv215.prol = phi i64 [ %indvars.iv.next216.prol, %.prol.preheader297 ], [ %i.om, %.lr.ph ]
  %.177118.prol = phi ptr [ %i.ow, %.prol.preheader297 ], [ %.076121, %.lr.ph ] ; 2 uses
  %prol.iter301 = phi i64 [ %prol.iter301.next, %.prol.preheader297 ], [ 0, %.lr.ph ]
  %indvars.iv.next216.prol = add nsw i64 %indvars.iv215.prol, -1 ; 3 uses
  %i.on = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.on, i64 %indvars.iv218
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.oo, i64 %indvars.iv.next216.prol
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !76
  %i.or = zext i16 %i.oq to i64
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.or
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !76
  %i.ou = lshr i16 %i.ot, 8
  %i.ov = trunc nuw i16 %i.ou to i8
  %i.ow = getelementptr inbounds nuw i8, ptr %.177118.prol, i64 1 ; 3 uses
  store i8 %i.ov, ptr %.177118.prol, align 1, !tbaa !80
  %prol.iter301.next = add i64 %prol.iter301, 1   ; 2 uses
  %prol.iter301.cmp.not = icmp eq i64 %prol.iter301.next, %xtraiter299
  br i1 %prol.iter301.cmp.not, label %.prol.loopexit298, label %.prol.preheader297, !llvm.loop !109

.prol.loopexit298:                                ; preds = %.prol.preheader297, %.lr.ph
  %indvars.iv215.unr = phi i64 [ %i.om, %.lr.ph ], [ %indvars.iv.next216.prol, %.prol.preheader297 ]
  %.177118.unr = phi ptr [ %.076121, %.lr.ph ], [ %i.ow, %.prol.preheader297 ]
  %.lcssa287.unr = phi ptr [ poison, %.lr.ph ], [ %i.ow, %.prol.preheader297 ]
  %i.ox = icmp ult i32 %4, 8
  br i1 %i.ox, label %._crit_edge.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit298, %.lr.ph.new
  %indvars.iv215 = phi i64 [ %indvars.iv.next216.7, %.lr.ph.new ], [ %indvars.iv215.unr, %.prol.loopexit298 ] ; 9 uses
  %.177118 = phi ptr [ %i.sg, %.lr.ph.new ], [ %.177118.unr, %.prol.loopexit298 ] ; 9 uses
  %i.oy = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.oy, i64 %indvars.iv218
  %i.pa = getelementptr [2 x i8], ptr %i.oz, i64 %indvars.iv215
  %i.pb = getelementptr i8, ptr %i.pa, i64 -2
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !76
  %i.pd = zext i16 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !76
  %i.pg = lshr i16 %i.pf, 8
  %i.ph = trunc nuw i16 %i.pg to i8
  %i.pi = getelementptr inbounds nuw i8, ptr %.177118, i64 1
  store i8 %i.ph, ptr %.177118, align 1, !tbaa !80
  %i.pj = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %indvars.iv218
  %i.pl = getelementptr [2 x i8], ptr %i.pk, i64 %indvars.iv215
  %i.pm = getelementptr i8, ptr %i.pl, i64 -4
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !76
  %i.po = zext i16 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.po
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !76
  %i.pr = lshr i16 %i.pq, 8
  %i.ps = trunc nuw i16 %i.pr to i8
  %i.pt = getelementptr inbounds nuw i8, ptr %.177118, i64 2
  store i8 %i.ps, ptr %i.pi, align 1, !tbaa !80
  %i.pu = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %indvars.iv218
  %i.pw = getelementptr [2 x i8], ptr %i.pv, i64 %indvars.iv215
  %i.px = getelementptr i8, ptr %i.pw, i64 -6
  %i.py = load i16, ptr %i.px, align 2, !tbaa !76
  %i.pz = zext i16 %i.py to i64
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.pz
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !76
  %i.qc = lshr i16 %i.qb, 8
  %i.qd = trunc nuw i16 %i.qc to i8
  %i.qe = getelementptr inbounds nuw i8, ptr %.177118, i64 3
  store i8 %i.qd, ptr %i.pt, align 1, !tbaa !80
  %i.qf = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %indvars.iv218
  %i.qh = getelementptr [2 x i8], ptr %i.qg, i64 %indvars.iv215
  %i.qi = getelementptr i8, ptr %i.qh, i64 -8
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !76
  %i.qk = zext i16 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.qk
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !76
  %i.qn = lshr i16 %i.qm, 8
  %i.qo = trunc nuw i16 %i.qn to i8
  %i.qp = getelementptr inbounds nuw i8, ptr %.177118, i64 4
  store i8 %i.qo, ptr %i.qe, align 1, !tbaa !80
  %i.qq = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.qq, i64 %indvars.iv218
  %i.qs = getelementptr [2 x i8], ptr %i.qr, i64 %indvars.iv215
  %i.qt = getelementptr i8, ptr %i.qs, i64 -10
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !76
  %i.qv = zext i16 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !76
  %i.qy = lshr i16 %i.qx, 8
  %i.qz = trunc nuw i16 %i.qy to i8
  %i.ra = getelementptr inbounds nuw i8, ptr %.177118, i64 5
  store i8 %i.qz, ptr %i.qp, align 1, !tbaa !80
  %i.rb = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %indvars.iv218
  %i.rd = getelementptr [2 x i8], ptr %i.rc, i64 %indvars.iv215
  %i.re = getelementptr i8, ptr %i.rd, i64 -12
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !76
  %i.rg = zext i16 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.rg
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !76
  %i.rj = lshr i16 %i.ri, 8
  %i.rk = trunc nuw i16 %i.rj to i8
  %i.rl = getelementptr inbounds nuw i8, ptr %.177118, i64 6
  store i8 %i.rk, ptr %i.ra, align 1, !tbaa !80
  %i.rm = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.rm, i64 %indvars.iv218
  %i.ro = getelementptr [2 x i8], ptr %i.rn, i64 %indvars.iv215
  %i.rp = getelementptr i8, ptr %i.ro, i64 -14
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !76
  %i.rr = zext i16 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.rr
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !76
  %i.ru = lshr i16 %i.rt, 8
  %i.rv = trunc nuw i16 %i.ru to i8
  %i.rw = getelementptr inbounds nuw i8, ptr %.177118, i64 7
  store i8 %i.rv, ptr %i.rl, align 1, !tbaa !80
  %indvars.iv.next216.7 = add nsw i64 %indvars.iv215, -8 ; 2 uses
  %i.rx = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv218
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.ry, i64 %indvars.iv.next216.7
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !76
  %i.sb = zext i16 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.sb
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !76
  %i.se = lshr i16 %i.sd, 8
  %i.sf = trunc nuw i16 %i.se to i8
  %i.sg = getelementptr inbounds nuw i8, ptr %.177118, i64 8 ; 2 uses
  store i8 %i.sf, ptr %i.rw, align 1, !tbaa !80
  %i.sh = icmp sgt i64 %indvars.iv215, 8
  br i1 %i.sh, label %.lr.ph.new, label %._crit_edge.loopexit, !llvm.loop !110

._crit_edge.loopexit:                             ; preds = %.lr.ph.new, %.prol.loopexit298
  %.lcssa287 = phi ptr [ %.lcssa287.unr, %.prol.loopexit298 ], [ %i.sg, %.lr.ph.new ]
  %.pre242.a = load i16, ptr %i.ca, align 2, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph124.split
  %i.si = phi i16 [ %5, %.lr.ph124.split ], [ %.pre242.a, %._crit_edge.loopexit ] ; 2 uses
  %.177.lcssa = phi ptr [ %.076121, %.lr.ph124.split ], [ %.lcssa287, %._crit_edge.loopexit ]
  %i.sj = add nuw nsw i32 %.063122, 1             ; 2 uses
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, %i.hj ; 2 uses
  %i.sk = zext i16 %i.si to i32
  %i.sl = icmp samesign ult i32 %i.sj, %i.sk
  br i1 %i.sl, label %.lr.ph124.splitthread-pre-split, label %.loopexit102.loopexit, !llvm.loop !111

.loopexit102.loopexit:                            ; preds = %._crit_edge
  %i.sm = trunc nsw i64 %indvars.iv.next219 to i32
  br label %.loopexit102

.loopexit102.loopexit176:                         ; preds = %._crit_edge.us
  %i.sn = trunc nsw i64 %indvars.iv.next213 to i32
  br label %.loopexit102

.loopexit102:                                     ; preds = %.lr.ph116.split, %.loopexit102.loopexit176, %.lr.ph124.split.us, %.loopexit102.loopexit, %.preheader103, %.preheader101
  %.5 = phi i32 [ %i.sn, %.loopexit102.loopexit176 ], [ %.0147, %.preheader101 ], [ %i.sm, %.loopexit102.loopexit ], [ %.0147, %.preheader103 ], [ %i.ok, %.lr.ph124.split.us ], [ %i.oc, %.lr.ph116.split ]
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.so = load i16, ptr %i.cc, align 4, !tbaa !83
  %i.sp = zext i16 %i.so to i64
  %i.sq = icmp samesign ult i64 %indvars.iv.next222, %i.sp
  br i1 %i.sq, label %.lr.ph149.split.splitthread-pre-split, label %._crit_edge150, !llvm.loop !112

._crit_edge150:                                   ; preds = %.loopexit104.us, %.loopexit102, %.loopexit100.us, %bb.o
  store <2 x i16> %i.bz, ptr %i.bx, align 4, !tbaa !76
  store i16 %i.cb, ptr %i.ca, align 2, !tbaa !82
  store i16 %i.cd, ptr %i.cc, align 4, !tbaa !83
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %._crit_edge150
  %.087 = phi i32 [ 0, %._crit_edge150 ], [ -4, %bb.a ]
  ret i32 %.087
}

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6LibRaw10flip_indexEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZN6LibRaw20dcraw_make_mem_imageEPi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.d = load i16, ptr %i.c, align 2, !tbaa !82   ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 3 uses
  store i32 %i.e, ptr %i.a, align 4, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i16, ptr %i.f, align 4, !tbaa !83   ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 4 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !84
  %i.k = icmp ugt i32 %i.j, 32767
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5500
  %i.m = load i32, ptr %i.l, align 4
  %.not.i = icmp eq i32 %i.m, 0
  %or.cond.i = select i1 %i.k, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK6LibRaw20get_mem_image_formatEPiS0_S0_S0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381670
  %i.o = load i16, ptr %i.n, align 2, !tbaa !85   ; 2 uses
  %.not17.i = icmp eq i16 %i.o, 0
  br i1 %.not17.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.s = load i16, ptr %i.r, align 4, !tbaa !86
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = add nuw nsw i32 %i.q, %i.t
  %i.v = lshr i32 %i.u, %i.t                      ; 2 uses
  %i.w = uitofp nneg i32 %i.v to double
  %i.x = fmul reassoc nnan nsz arcp contract afn double %i.w, f0x3FF6A09E667F3BCC
  %i.y = fptoui double %i.x to i16
  %i.z = zext i16 %i.y to i32
  store i32 %i.z, ptr %i.a, align 4, !tbaa !81
  %i.aa = sub nsw i32 %i.h, %i.v
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ac = fmul reassoc nnan nsz arcp contract afn double %i.ab, f0x3FF6A09E667F3BCC
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !87 ; 4 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt double %i.ae, f0x3FEFD70A3D70A3D7
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = uitofp i16 %i.g to double
  %i.ah = fdiv reassoc nsz arcp contract afn double %i.ag, %i.ae
  %i.ai = fadd reassoc nsz arcp contract afn double %i.ah, 5.000000e-01
  %i.aj = fptoui double %i.ai to i16
  %i.ak = zext i16 %i.aj to i32                   ; 2 uses
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0..0..pre34 = phi i32 [ %i.ak, %bb.e ], [ %i.h, %bb.d ]
  %i.al = fcmp reassoc nsz arcp contract afn ogt double %i.ae, 1.005000e+00
  br i1 %i.al, label %bb.g, label %_ZNK6LibRaw20get_mem_image_formatEPiS0_S0_S0_.exit

bb.g:                                             ; preds = %bb.f
  %i.am = uitofp i16 %i.d to double
  %i.an = fmul reassoc nsz arcp contract afn double %i.ae, %i.am
  %i.ao = fadd reassoc nsz arcp contract afn double %i.an, 5.000000e-01
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.c
  %.sink.i = phi double [ %i.ao, %bb.g ], [ %i.ac, %bb.c ]
  %.sink21.i = phi ptr [ %i.a, %bb.g ], [ %i.b, %bb.c ]
  %i.ap = fptoui double %.sink.i to i16
  %i.aq = zext i16 %i.ap to i32
  store i32 %i.aq, ptr %.sink21.i, align 4, !tbaa !81
  %.0..0..0.26.pre.pre = load i32, ptr %i.a, align 4, !tbaa !81
  %.0..0..0..pre.pre = load i32, ptr %i.b, align 4, !tbaa !81
  br label %_ZNK6LibRaw20get_mem_image_formatEPiS0_S0_S0_.exit

_ZNK6LibRaw20get_mem_image_formatEPiS0_S0_S0_.exit: ; preds = %.sink.split.i, %bb.f, %bb.a
  %.0..0..pre = phi i32 [ %.0..0..0..pre.pre, %.sink.split.i ], [ %.0..0..pre34, %bb.f ], [ %i.h, %bb.a ] ; 2 uses
  %.0..0.26.pre = phi i32 [ %.0..0..0.26.pre.pre, %.sink.split.i ], [ %i.e, %bb.f ], [ %i.e, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !88
  %i.at = and i32 %i.as, 4
  %.not18.i = icmp eq i32 %i.at, 0                ; 2 uses
  %spec.select = select i1 %.not18.i, i32 %.0..0..pre, i32 %.0..0.26.pre ; 2 uses
  %spec.select38 = select i1 %.not18.i, i32 %.0..0.26.pre, i32 %.0..0..pre ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.av = load i32, ptr %i.au, align 4, !tbaa !89 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5440
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !90 ; 2 uses
  %i.ay = sdiv i32 %i.ax, 8
  %i.az = mul i32 %i.ay, %i.av
  %i.ba = mul i32 %i.az, %spec.select38           ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %spec.select         ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.bc, 20
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #11 ; 10 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK6LibRaw20get_mem_image_formatEPiS0_S0_S0_.exit
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 12, ptr %1, align 4, !tbaa !81
  br label %bb.k

bb.j:                                             ; preds = %_ZNK6LibRaw20get_mem_image_formatEPiS0_S0_S0_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 0, ptr %i.bf, align 4
  store i32 2, ptr %i.be, align 4, !tbaa !75
  %i.bg = trunc i32 %spec.select to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i16 %i.bg, ptr %i.bh, align 4, !tbaa !124
  %i.bi = trunc i32 %spec.select38 to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !125
  %i.bk = trunc i32 %i.av to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i16 %i.bk, ptr %i.bl, align 4, !tbaa !77
  %i.bm = trunc i32 %i.ax to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !79
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bq = tail call noundef i32 @_ZN6LibRaw14copy_mem_imageEPvii(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bp, i32 noundef %i.ba, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.be
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6LibRaw15dcraw_clear_memEP24libraw_processed_image_t(ptr noundef captures(address_is_null) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10
end_hunk_0
