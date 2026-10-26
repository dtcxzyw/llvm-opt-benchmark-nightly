Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@LoadModel:bb.a
  store i32 %i.kx, ptr %i.ky, align 8, !noalias !141
  %i.kz = mul nsw i32 %i.kx, 3
  %i.la = sext i32 %i.kz to i64                   ; 4 uses
  %i.lb = call noalias ptr @calloc(i64 noundef %i.la, i64 noundef 4) #57, !noalias !141
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %i.lb, ptr %i.lc, align 8, !noalias !141
  %i.ld = call noalias ptr @calloc(i64 noundef %i.la, i64 noundef 4) #57, !noalias !141
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  store ptr %i.ld, ptr %i.le, align 8, !noalias !141
  %i.lf = shl nsw i32 %i.kx, 1
  %i.lg = sext i32 %i.lf to i64
  %i.lh = call noalias ptr @calloc(i64 noundef %i.lg, i64 noundef 4) #57, !noalias !141
  %i.li = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr %i.lh, ptr %i.li, align 8, !noalias !141
  %i.lj = shl nsw i32 %i.kx, 2
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = call noalias ptr @calloc(i64 noundef %i.lk, i64 noundef 1) #57, !noalias !141
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ky, i64 72
  store ptr %i.ll, ptr %i.lm, align 8, !noalias !141
  %i.ln = call noalias ptr @calloc(i64 noundef %i.lk, i64 noundef 4) #57, !noalias !141
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 80
  store ptr %i.ln, ptr %i.lo, align 8, !noalias !141
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ke, i64 20
  %i.lq = load i32, ptr %i.lp, align 4, !noalias !141 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  store i32 %i.lq, ptr %i.lr, align 4, !noalias !141
  %i.ls = mul nsw i32 %i.lq, 3
  %i.lt = sext i32 %i.ls to i64
  %i.lu = call noalias ptr @calloc(i64 noundef %i.lt, i64 noundef 2) #57, !noalias !141
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ky, i64 56
  store ptr %i.lu, ptr %i.lv, align 8, !noalias !141
  %i.lw = call noalias ptr @calloc(i64 noundef %i.la, i64 noundef 4) #57, !noalias !141
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ky, i64 88
  store ptr %i.lw, ptr %i.lx, align 8, !noalias !141
  %i.ly = call noalias ptr @calloc(i64 noundef %i.la, i64 noundef 4) #57, !noalias !141
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ky, i64 96
  store ptr %i.ly, ptr %i.lz, align 8, !noalias !141
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %i.jh
  br i1 %exitcond.not.i33, label %._crit_edge.i18, label %bb.bh

._crit_edge369.i:                                 ; preds = %._crit_edge365.i, %._crit_edge.i18
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ip, i64 44 ; 3 uses
  %i.mb = load i32, ptr %i.ma, align 4, !noalias !141
  %i.mc = zext i32 %i.mb to i64
  %i.md = mul nuw nsw i64 %i.mc, 20
  %i.me = call noalias ptr @malloc(i64 noundef %i.md) #56, !noalias !141 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ip, i64 52
  %i.mg = load i32, ptr %i.mf, align 4, !noalias !141
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.mh
  %i.mj = load i32, ptr %i.ma, align 4, !noalias !141 ; 2 uses
  %i.mk = zext i32 %i.mj to i64
  %i.ml = mul nuw nsw i64 %i.mk, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.me, ptr nonnull align 1 %i.mi, i64 %i.ml, i1 false), !noalias !141
  %.not441.i = icmp eq i32 %i.mj, 0
  br i1 %.not441.i, label %._crit_edge427.i, label %.lr.ph426.i

.lr.ph426.i:                                      ; preds = %._crit_edge369.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ip, i64 48 ; 12 uses
  br label %bb.bj

.lr.ph368.i:                                      ; preds = %._crit_edge.i18, %._crit_edge365.i
  %indvars.iv464.i = phi i64 [ %indvars.iv.next465.i, %._crit_edge365.i ], [ 0, %._crit_edge.i18 ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv464.i ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load i32, ptr %i.mo, align 4, !noalias !141 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 20
  %i.mr = load i32, ptr %i.mq, align 4, !noalias !141
  %i.ms = add i32 %i.mr, %i.mp                    ; 2 uses
  %i.mt = icmp ult i32 %i.mp, %i.ms
  br i1 %i.mt, label %.lr.ph364.i, label %._crit_edge365.i

.lr.ph364.i:                                      ; preds = %.lr.ph368.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mv = load i32, ptr %i.mu, align 4, !noalias !141 ; 3 uses
  %i.mw = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv464.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 56 ; 3 uses
  %i.my = zext i32 %i.mp to i64
  %wide.trip.count462.i = zext i32 %i.ms to i64
  br label %bb.bi

._crit_edge365.i:                                 ; preds = %bb.bi, %.lr.ph368.i
  %indvars.iv.next465.i = add nuw nsw i64 %indvars.iv464.i, 1 ; 2 uses
  %exitcond468.not.i = icmp eq i64 %indvars.iv.next465.i, %i.jh
  br i1 %exitcond468.not.i, label %._crit_edge369.i, label %.lr.ph368.i

bb.bi:                                            ; preds = %bb.bi, %.lr.ph364.i
  %indvars.iv457.i = phi i64 [ 0, %.lr.ph364.i ], [ %indvars.iv.next458.i, %bb.bi ] ; 4 uses
  %indvars.iv455.i = phi i64 [ %i.my, %.lr.ph364.i ], [ %indvars.iv.next456.i, %bb.bi ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv455.i ; 3 uses
  %i.na = load i32, ptr %i.mz, align 4, !noalias !141
  %i.nb = sub i32 %i.na, %i.mv
  %i.nc = trunc i32 %i.nb to i16
  %i.nd = load ptr, ptr %i.mx, align 8, !noalias !141
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nd, i64 %indvars.iv457.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  store i16 %i.nc, ptr %i.nf, align 2, !noalias !141
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nh = load i32, ptr %i.ng, align 4, !noalias !141
  %i.ni = sub i32 %i.nh, %i.mv
  %i.nj = trunc i32 %i.ni to i16
  %i.nk = load ptr, ptr %i.mx, align 8, !noalias !141
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %indvars.iv457.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 2
  store i16 %i.nj, ptr %i.nm, align 2, !noalias !141
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.no = load i32, ptr %i.nn, align 4, !noalias !141
  %i.np = sub i32 %i.no, %i.mv
  %i.nq = trunc i32 %i.np to i16
  %i.nr = load ptr, ptr %i.mx, align 8, !noalias !141
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.nr, i64 %indvars.iv457.i
  store i16 %i.nq, ptr %i.ns, align 2, !noalias !141
  %indvars.iv.next458.i = add nuw nsw i64 %indvars.iv457.i, 3
  %indvars.iv.next456.i = add nuw nsw i64 %indvars.iv455.i, 1 ; 2 uses
  %exitcond463.not.i = icmp eq i64 %indvars.iv.next456.i, %wide.trip.count462.i
  br i1 %exitcond463.not.i, label %._crit_edge365.i, label %bb.bi

._crit_edge427.i:                                 ; preds = %.loopexit.i19, %._crit_edge369.i
  %.0339.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1340.i, %.loopexit.i19 ]
  %.0337.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1338.i, %.loopexit.i19 ]
  %.0335.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1336.i, %.loopexit.i19 ]
  %.0333.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1334.i, %.loopexit.i19 ]
  %.0331.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1332.i, %.loopexit.i19 ]
  %.0330.lcssa.i = phi ptr [ null, %._crit_edge369.i ], [ %.1.i20, %.loopexit.i19 ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ip, i64 68 ; 4 uses
  %i.nu = load i32, ptr %i.nt, align 4, !noalias !141
  %i.nv = zext i32 %i.nu to i64
  %i.nw = mul nuw nsw i64 %i.nv, 48
  %i.nx = call noalias ptr @malloc(i64 noundef %i.nw) #56, !noalias !141 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ip, i64 72
  %i.nz = load i32, ptr %i.ny, align 4, !noalias !141
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.oa
  %i.oc = load i32, ptr %i.nt, align 4, !noalias !141 ; 7 uses
  %i.od = zext i32 %i.oc to i64                   ; 4 uses
  %i.oe = mul nuw nsw i64 %i.od, 48
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nx, ptr nonnull align 1 %i.ob, i64 %i.oe, i1 false), !noalias !141
  %i.of = call noalias ptr @calloc(i64 noundef %i.od, i64 noundef 36) #57, !noalias !141 ; 3 uses
  %i.og = load i32, ptr %i.nt, align 4, !noalias !141
  %i.oh = zext i32 %i.og to i64
  %i.oi = call noalias ptr @calloc(i64 noundef %i.oh, i64 noundef 40) #57, !noalias !141 ; 3 uses
  %i.oj = load i32, ptr %i.nt, align 4, !noalias !141 ; 2 uses
  %.not448.i = icmp eq i32 %i.oj, 0
  br i1 %.not448.i, label %._crit_edge436.i, label %.lr.ph435.i

.lr.ph435.i:                                      ; preds = %._crit_edge427.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %.pre556.i = load i32, ptr %i.ok, align 4, !noalias !141
  %i.ol = zext i32 %.pre556.i to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ol
  %i.on = zext i32 %i.oj to i64
  br label %bb.cg

bb.bj:                                            ; preds = %.loopexit.i19, %.lr.ph426.i
  %indvars.iv541.i = phi i64 [ 0, %.lr.ph426.i ], [ %indvars.iv.next542.i, %.loopexit.i19 ] ; 2 uses
  %.0330423.i = phi ptr [ null, %.lr.ph426.i ], [ %.1.i20, %.loopexit.i19 ] ; 11 uses
  %.0331422.i = phi ptr [ null, %.lr.ph426.i ], [ %.1332.i, %.loopexit.i19 ] ; 11 uses
  %.0333421.i = phi ptr [ null, %.lr.ph426.i ], [ %.1334.i, %.loopexit.i19 ] ; 11 uses
  %.0335420.i = phi ptr [ null, %.lr.ph426.i ], [ %.1336.i, %.loopexit.i19 ] ; 11 uses
  %.0337419.i = phi ptr [ null, %.lr.ph426.i ], [ %.1338.i, %.loopexit.i19 ] ; 11 uses
  %.0339418.i = phi ptr [ null, %.lr.ph426.i ], [ %.1340.i, %.loopexit.i19 ] ; 11 uses
  %i.oo = getelementptr inbounds nuw [20 x i8], ptr %i.me, i64 %indvars.iv541.i ; 7 uses
  %i.op = load i32, ptr %i.oo, align 4, !noalias !141
  switch i32 %i.op, label %.loopexit.i19 [
    i32 0, label %bb.bk
    i32 2, label %bb.br
    i32 1, label %bb.by
    i32 4, label %bb.cb
    i32 5, label %bb.cd
    i32 6, label %bb.cf
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.oq = load i32, ptr %i.mm, align 4, !noalias !141
  %i.or = mul i32 %i.oq, 3
  %i.os = zext i32 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, 2
  %i.ou = call noalias ptr @malloc(i64 noundef %i.ot) #56, !noalias !141 ; 6 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.ow = load i32, ptr %i.ov, align 4, !noalias !141
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ox
  %i.oz = load i32, ptr %i.mm, align 4, !noalias !141
  %i.pa = mul i32 %i.oz, 3
  %i.pb = zext i32 %i.pa to i64
  %i.pc = shl nuw nsw i64 %i.pb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ou, ptr nonnull align 1 %i.oy, i64 %i.pc, i1 false), !noalias !141
  %i.pd = load i32, ptr %i.ix, align 4, !noalias !141 ; 2 uses
  %.not447.i = icmp eq i32 %i.pd, 0
  br i1 %.not447.i, label %.loopexit.i19, label %.lr.ph417.i

.lr.ph417.i:                                      ; preds = %bb.bk, %._crit_edge414.i
  %i.pe = phi i32 [ %i.qa, %._crit_edge414.i ], [ %i.pd, %bb.bk ]
  %indvars.iv538.i = phi i64 [ %indvars.iv.next539.i, %._crit_edge414.i ], [ 0, %bb.bk ] ; 3 uses
  %i.pf = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv538.i ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load i32, ptr %i.pg, align 4, !noalias !141 ; 2 uses
  %i.pi = mul i32 %i.ph, 3                        ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  %i.pk = load i32, ptr %i.pj, align 4, !noalias !141 ; 3 uses
  %i.pl = add i32 %i.pk, %i.ph
  %i.pm = mul i32 %i.pl, 3
  %i.pn = icmp ult i32 %i.pi, %i.pm
  br i1 %i.pn, label %.lr.ph413.i, label %._crit_edge414.i

.lr.ph413.i:                                      ; preds = %.lr.ph417.i
  %i.po = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv538.i ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 88 ; 3 uses
  %i.pr = zext i32 %i.pi to i64                   ; 2 uses
  %i.ps = mul i32 %i.pk, 3                        ; 2 uses
  %wide.trip.count536.i = zext i32 %i.ps to i64   ; 2 uses
  %xtraiter263 = and i64 %wide.trip.count536.i, 1
  %i.pt = icmp eq i32 %i.pk, -1431655765
  br i1 %i.pt, label %.epil.preheader262, label %.lr.ph413.i.new

.lr.ph413.i.new:                                  ; preds = %.lr.ph413.i
  %unroll_iter267 = and i64 %wide.trip.count536.i, 4294967294
  br label %bb.bm

._crit_edge414.loopexit.i.unr-lcssa:              ; preds = %bb.bq
  %lcmp.mod265.not = icmp eq i64 %xtraiter263, 0
  br i1 %lcmp.mod265.not, label %._crit_edge414.loopexit.i, label %.epil.preheader262

.epil.preheader262:                               ; preds = %._crit_edge414.loopexit.i.unr-lcssa, %.lr.ph413.i
  %indvars.iv531.i.epil.init = phi i64 [ 0, %.lr.ph413.i ], [ %indvars.iv.next532.i.1, %._crit_edge414.loopexit.i.unr-lcssa ] ; 2 uses
  %indvars.iv529.i.epil.init = phi i64 [ %i.pr, %.lr.ph413.i ], [ %indvars.iv.next530.i.1, %._crit_edge414.loopexit.i.unr-lcssa ]
  %lcmp.mod266 = trunc i32 %i.ps to i1
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv529.i.epil.init
  %i.pv = load float, ptr %i.pu, align 4, !noalias !141 ; 2 uses
  %i.pw = load ptr, ptr %i.pp, align 8, !noalias !141
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv531.i.epil.init
  store float %i.pv, ptr %i.px, align 4, !noalias !141
  %i.py = load ptr, ptr %i.pq, align 8, !noalias !141 ; 2 uses
  %.not347.i.epil = icmp eq ptr %i.py, null
  br i1 %.not347.i.epil, label %._crit_edge414.loopexit.i, label %bb.bl

bb.bl:                                            ; preds = %.epil.preheader262
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv531.i.epil.init
  store float %i.pv, ptr %i.pz, align 4, !noalias !141
  br label %._crit_edge414.loopexit.i

._crit_edge414.loopexit.i:                        ; preds = %.epil.preheader262, %bb.bl, %._crit_edge414.loopexit.i.unr-lcssa
  %.pre555.i = load i32, ptr %i.ix, align 4, !noalias !141
  br label %._crit_edge414.i

._crit_edge414.i:                                 ; preds = %._crit_edge414.loopexit.i, %.lr.ph417.i
  %i.qa = phi i32 [ %.pre555.i, %._crit_edge414.loopexit.i ], [ %i.pe, %.lr.ph417.i ] ; 2 uses
  %indvars.iv.next539.i = add nuw nsw i64 %indvars.iv538.i, 1 ; 2 uses
  %i.qb = zext i32 %i.qa to i64
  %i.qc = icmp samesign ult i64 %indvars.iv.next539.i, %i.qb
  br i1 %i.qc, label %.lr.ph417.i, label %.loopexit.i19

bb.bm:                                            ; preds = %bb.bq, %.lr.ph413.i.new
  %indvars.iv531.i = phi i64 [ 0, %.lr.ph413.i.new ], [ %indvars.iv.next532.i.1, %bb.bq ] ; 4 uses
  %indvars.iv529.i = phi i64 [ %i.pr, %.lr.ph413.i.new ], [ %indvars.iv.next530.i.1, %bb.bq ] ; 3 uses
  %niter268 = phi i64 [ 0, %.lr.ph413.i.new ], [ %niter268.next.1, %bb.bq ]
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv529.i
  %i.qe = load float, ptr %i.qd, align 4, !noalias !141 ; 2 uses
  %i.qf = load ptr, ptr %i.pp, align 8, !noalias !141
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %indvars.iv531.i
  store float %i.qe, ptr %i.qg, align 4, !noalias !141
  %i.qh = load ptr, ptr %i.pq, align 8, !noalias !141 ; 2 uses
  %.not347.i = icmp eq ptr %i.qh, null
  br i1 %.not347.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %indvars.iv531.i
  store float %i.qe, ptr %i.qi, align 4, !noalias !141
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %indvars.iv.next532.i = or disjoint i64 %indvars.iv531.i, 1 ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv529.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.ql = load float, ptr %i.qk, align 4, !noalias !141 ; 2 uses
  %i.qm = load ptr, ptr %i.pp, align 8, !noalias !141
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv.next532.i
  store float %i.ql, ptr %i.qn, align 4, !noalias !141
  %i.qo = load ptr, ptr %i.pq, align 8, !noalias !141 ; 2 uses
  %.not347.i.1 = icmp eq ptr %i.qo, null
  br i1 %.not347.i.1, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv.next532.i
  store float %i.ql, ptr %i.qp, align 4, !noalias !141
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %indvars.iv.next532.i.1 = add nuw nsw i64 %indvars.iv531.i, 2 ; 2 uses
  %indvars.iv.next530.i.1 = add nuw nsw i64 %indvars.iv529.i, 2 ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %._crit_edge414.loopexit.i.unr-lcssa, label %bb.bm

bb.br:                                            ; preds = %bb.bj
  %i.qq = load i32, ptr %i.mm, align 4, !noalias !141
  %i.qr = mul i32 %i.qq, 3
  %i.qs = zext i32 %i.qr to i64
  %i.qt = shl nuw nsw i64 %i.qs, 2
  %i.qu = call noalias ptr @malloc(i64 noundef %i.qt) #56, !noalias !141 ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.qw = load i32, ptr %i.qv, align 4, !noalias !141
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.qx
  %i.qz = load i32, ptr %i.mm, align 4, !noalias !141
  %i.ra = mul i32 %i.qz, 3
  %i.rb = zext i32 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qu, ptr nonnull align 1 %i.qy, i64 %i.rc, i1 false), !noalias !141
  %i.rd = load i32, ptr %i.ix, align 4, !noalias !141 ; 2 uses
  %.not446.i = icmp eq i32 %i.rd, 0
  br i1 %.not446.i, label %.loopexit.i19, label %.lr.ph409.i

.lr.ph409.i:                                      ; preds = %bb.br, %._crit_edge406.i
  %i.re = phi i32 [ %i.sa, %._crit_edge406.i ], [ %i.rd, %bb.br ]
  %indvars.iv526.i = phi i64 [ %indvars.iv.next527.i, %._crit_edge406.i ], [ 0, %bb.br ] ; 3 uses
  %i.rf = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv526.i ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load i32, ptr %i.rg, align 4, !noalias !141 ; 2 uses
  %i.ri = mul i32 %i.rh, 3                        ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  %i.rk = load i32, ptr %i.rj, align 4, !noalias !141 ; 3 uses
  %i.rl = add i32 %i.rk, %i.rh
  %i.rm = mul i32 %i.rl, 3
  %i.rn = icmp ult i32 %i.ri, %i.rm
  br i1 %i.rn, label %.lr.ph405.i, label %._crit_edge406.i

.lr.ph405.i:                                      ; preds = %.lr.ph409.i
  %i.ro = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv526.i ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 96 ; 3 uses
  %i.rr = zext i32 %i.ri to i64                   ; 2 uses
  %i.rs = mul i32 %i.rk, 3                        ; 2 uses
  %wide.trip.count524.i = zext i32 %i.rs to i64   ; 2 uses
  %xtraiter256 = and i64 %wide.trip.count524.i, 1
  %i.rt = icmp eq i32 %i.rk, -1431655765
  br i1 %i.rt, label %.epil.preheader255, label %.lr.ph405.i.new

.lr.ph405.i.new:                                  ; preds = %.lr.ph405.i
  %unroll_iter260 = and i64 %wide.trip.count524.i, 4294967294
  br label %bb.bt

._crit_edge406.loopexit.i.unr-lcssa:              ; preds = %bb.bx
  %lcmp.mod258.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod258.not, label %._crit_edge406.loopexit.i, label %.epil.preheader255

.epil.preheader255:                               ; preds = %._crit_edge406.loopexit.i.unr-lcssa, %.lr.ph405.i
  %indvars.iv519.i.epil.init = phi i64 [ 0, %.lr.ph405.i ], [ %indvars.iv.next520.i.1, %._crit_edge406.loopexit.i.unr-lcssa ] ; 2 uses
  %indvars.iv517.i.epil.init = phi i64 [ %i.rr, %.lr.ph405.i ], [ %indvars.iv.next518.i.1, %._crit_edge406.loopexit.i.unr-lcssa ]
  %lcmp.mod259 = trunc i32 %i.rs to i1
  call void @llvm.assume(i1 %lcmp.mod259)
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv517.i.epil.init
  %i.rv = load float, ptr %i.ru, align 4, !noalias !141 ; 2 uses
  %i.rw = load ptr, ptr %i.rp, align 8, !noalias !141
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv519.i.epil.init
  store float %i.rv, ptr %i.rx, align 4, !noalias !141
  %i.ry = load ptr, ptr %i.rq, align 8, !noalias !141 ; 2 uses
  %.not346.i.epil = icmp eq ptr %i.ry, null
  br i1 %.not346.i.epil, label %._crit_edge406.loopexit.i, label %bb.bs

bb.bs:                                            ; preds = %.epil.preheader255
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %indvars.iv519.i.epil.init
  store float %i.rv, ptr %i.rz, align 4, !noalias !141
  br label %._crit_edge406.loopexit.i

._crit_edge406.loopexit.i:                        ; preds = %.epil.preheader255, %bb.bs, %._crit_edge406.loopexit.i.unr-lcssa
  %.pre554.i = load i32, ptr %i.ix, align 4, !noalias !141
  br label %._crit_edge406.i

._crit_edge406.i:                                 ; preds = %._crit_edge406.loopexit.i, %.lr.ph409.i
  %i.sa = phi i32 [ %.pre554.i, %._crit_edge406.loopexit.i ], [ %i.re, %.lr.ph409.i ] ; 2 uses
  %indvars.iv.next527.i = add nuw nsw i64 %indvars.iv526.i, 1 ; 2 uses
  %i.sb = zext i32 %i.sa to i64
  %i.sc = icmp samesign ult i64 %indvars.iv.next527.i, %i.sb
  br i1 %i.sc, label %.lr.ph409.i, label %.loopexit.i19

bb.bt:                                            ; preds = %bb.bx, %.lr.ph405.i.new
  %indvars.iv519.i = phi i64 [ 0, %.lr.ph405.i.new ], [ %indvars.iv.next520.i.1, %bb.bx ] ; 4 uses
  %indvars.iv517.i = phi i64 [ %i.rr, %.lr.ph405.i.new ], [ %indvars.iv.next518.i.1, %bb.bx ] ; 3 uses
  %niter261 = phi i64 [ 0, %.lr.ph405.i.new ], [ %niter261.next.1, %bb.bx ]
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv517.i
  %i.se = load float, ptr %i.sd, align 4, !noalias !141 ; 2 uses
  %i.sf = load ptr, ptr %i.rp, align 8, !noalias !141
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %indvars.iv519.i
  store float %i.se, ptr %i.sg, align 4, !noalias !141
  %i.sh = load ptr, ptr %i.rq, align 8, !noalias !141 ; 2 uses
  %.not346.i = icmp eq ptr %i.sh, null
  br i1 %.not346.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv519.i
  store float %i.se, ptr %i.si, align 4, !noalias !141
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %indvars.iv.next520.i = or disjoint i64 %indvars.iv519.i, 1 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv517.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sl = load float, ptr %i.sk, align 4, !noalias !141 ; 2 uses
  %i.sm = load ptr, ptr %i.rp, align 8, !noalias !141
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.next520.i
  store float %i.sl, ptr %i.sn, align 4, !noalias !141
  %i.so = load ptr, ptr %i.rq, align 8, !noalias !141 ; 2 uses
  %.not346.i.1 = icmp eq ptr %i.so, null
  br i1 %.not346.i.1, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %indvars.iv.next520.i
  store float %i.sl, ptr %i.sp, align 4, !noalias !141
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %indvars.iv.next520.i.1 = add nuw nsw i64 %indvars.iv519.i, 2 ; 2 uses
  %indvars.iv.next518.i.1 = add nuw nsw i64 %indvars.iv517.i, 2 ; 2 uses
  %niter261.next.1 = add i64 %niter261, 2         ; 2 uses
  %niter261.ncmp.1 = icmp eq i64 %niter261.next.1, %unroll_iter260
  br i1 %niter261.ncmp.1, label %._crit_edge406.loopexit.i.unr-lcssa, label %bb.bt

bb.by:                                            ; preds = %bb.bj
  %i.sq = load i32, ptr %i.mm, align 4, !noalias !141
  %i.sr = shl i32 %i.sq, 1
  %i.ss = zext i32 %i.sr to i64
  %i.st = shl nuw nsw i64 %i.ss, 2
  %i.su = call noalias ptr @malloc(i64 noundef %i.st) #56, !noalias !141 ; 8 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.sw = load i32, ptr %i.sv, align 4, !noalias !141
  %i.sx = zext i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.sx
  %i.sz = load i32, ptr %i.mm, align 4, !noalias !141
  %i.ta = shl i32 %i.sz, 1
  %i.tb = zext i32 %i.ta to i64
  %i.tc = shl nuw nsw i64 %i.tb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.su, ptr nonnull align 1 %i.sy, i64 %i.tc, i1 false), !noalias !141
  %i.td = load i32, ptr %i.ix, align 4, !noalias !141 ; 2 uses
  %.not445.i = icmp eq i32 %i.td, 0
  br i1 %.not445.i, label %.loopexit.i19, label %.lr.ph401.i

.lr.ph401.i:                                      ; preds = %bb.by, %._crit_edge398.i
  %i.te = phi i32 [ %i.ty, %._crit_edge398.i ], [ %i.td, %bb.by ]
  %indvars.iv514.i = phi i64 [ %indvars.iv.next515.i, %._crit_edge398.i ], [ 0, %bb.by ] ; 3 uses
  %i.tf = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %indvars.iv514.i ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load i32, ptr %i.tg, align 4, !noalias !141 ; 2 uses
  %i.ti = shl i32 %i.th, 1                        ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 12
  %i.tk = load i32, ptr %i.tj, align 4, !noalias !141 ; 2 uses
  %i.tl = add i32 %i.tk, %i.th
  %i.tm = shl i32 %i.tl, 1
  %i.tn = icmp ult i32 %i.ti, %i.tm
  br i1 %i.tn, label %.lr.ph397.i, label %._crit_edge398.i

.lr.ph397.i:                                      ; preds = %.lr.ph401.i
  %i.to = getelementptr inbounds nuw [120 x i8], ptr %i.jk, i64 %indvars.iv514.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 5 uses
  %i.tq = zext i32 %i.ti to i64                   ; 2 uses
  %i.tr = shl i32 %i.tk, 1                        ; 2 uses
  %wide.trip.count512.i = zext i32 %i.tr to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count512.i, 2    ; 2 uses
  %i.ts = add i32 %i.tr, -1
  %i.tt = icmp ult i32 %i.ts, 3
  br i1 %i.tt, label %.epil.preheader, label %.lr.ph397.i.new

.lr.ph397.i.new:                                  ; preds = %.lr.ph397.i
  %unroll_iter = and i64 %wide.trip.count512.i, 4294967292
  br label %bb.ca

._crit_edge398.loopexit.i.unr-lcssa:              ; preds = %bb.ca
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge398.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge398.loopexit.i.unr-lcssa, %.lr.ph397.i
  %indvars.iv507.i.epil.init = phi i64 [ 0, %.lr.ph397.i ], [ %indvars.iv.next508.i.3, %._crit_edge398.loopexit.i.unr-lcssa ]
  %indvars.iv505.i.epil.init = phi i64 [ %i.tq, %.lr.ph397.i ], [ %indvars.iv.next506.i.3, %._crit_edge398.loopexit.i.unr-lcssa ]
  %lcmp.mod254 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod254)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader
  %indvars.iv507.i.epil = phi i64 [ %indvars.iv507.i.epil.init, %.epil.preheader ], [ %indvars.iv.next508.i.epil, %bb.bz ] ; 2 uses
  %indvars.iv505.i.epil = phi i64 [ %indvars.iv505.i.epil.init, %.epil.preheader ], [ %indvars.iv.next506.i.epil, %bb.bz ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bz ]
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i.epil
  %i.tv = load float, ptr %i.tu, align 4, !noalias !141
  %i.tw = load ptr, ptr %i.tp, align 8, !noalias !141
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %indvars.iv507.i.epil
  store float %i.tv, ptr %i.tx, align 4, !noalias !141
  %indvars.iv.next508.i.epil = add nuw nsw i64 %indvars.iv507.i.epil, 1
  %indvars.iv.next506.i.epil = add nuw nsw i64 %indvars.iv505.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %._crit_edge398.loopexit.i, label %bb.bz, !llvm.loop !126

._crit_edge398.loopexit.i:                        ; preds = %bb.bz, %._crit_edge398.loopexit.i.unr-lcssa
  %.pre553.i = load i32, ptr %i.ix, align 4, !noalias !141
  br label %._crit_edge398.i

._crit_edge398.i:                                 ; preds = %._crit_edge398.loopexit.i, %.lr.ph401.i
  %i.ty = phi i32 [ %.pre553.i, %._crit_edge398.loopexit.i ], [ %i.te, %.lr.ph401.i ] ; 2 uses
  %indvars.iv.next515.i = add nuw nsw i64 %indvars.iv514.i, 1 ; 2 uses
  %i.tz = zext i32 %i.ty to i64
  %i.ua = icmp samesign ult i64 %indvars.iv.next515.i, %i.tz
  br i1 %i.ua, label %.lr.ph401.i, label %.loopexit.i19

bb.ca:                                            ; preds = %bb.ca, %.lr.ph397.i.new
  %indvars.iv507.i = phi i64 [ 0, %.lr.ph397.i.new ], [ %indvars.iv.next508.i.3, %bb.ca ] ; 5 uses
  %indvars.iv505.i = phi i64 [ %i.tq, %.lr.ph397.i.new ], [ %indvars.iv.next506.i.3, %bb.ca ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph397.i.new ], [ %niter.next.3, %bb.ca ]
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i
  %i.uc = load float, ptr %i.ub, align 4, !noalias !141
  %i.ud = load ptr, ptr %i.tp, align 8, !noalias !141
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %indvars.iv507.i
  store float %i.uc, ptr %i.ue, align 4, !noalias !141
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.uh = load float, ptr %i.ug, align 4, !noalias !141
  %i.ui = load ptr, ptr %i.tp, align 8, !noalias !141
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %indvars.iv507.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  store float %i.uh, ptr %i.uk, align 4, !noalias !141
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load float, ptr %i.um, align 4, !noalias !141
  %i.uo = load ptr, ptr %i.tp, align 8, !noalias !141
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv507.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  store float %i.un, ptr %i.uq, align 4, !noalias !141
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv505.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 12
  %i.ut = load float, ptr %i.us, align 4, !noalias !141
  %i.uu = load ptr, ptr %i.tp, align 8, !noalias !141
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv507.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  store float %i.ut, ptr %i.uw, align 4, !noalias !141
  %indvars.iv.next508.i.3 = add nuw nsw i64 %indvars.iv507.i, 4 ; 2 uses
  %indvars.iv.next506.i.3 = add nuw nsw i64 %indvars.iv505.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
end_hunk_0
