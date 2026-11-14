Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.15?download=true
inline.NumInlined: 9258
inline.NumDeleted: 3480
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
  %i.mn = alloca [24 x i8], align 8               ; 2 uses
  %i.mo = alloca [24 x i8], align 8               ; 4 uses
  %i.mp = alloca [16 x i8], align 8               ; 5 uses
  %i.mq = alloca [16 x i8], align 8               ; 5 uses
  %i.mr = alloca [8 x i8], align 8                ; 4 uses
  %i.ms = alloca [16 x i8], align 8               ; 5 uses
  %i.mt = alloca [24 x i8], align 8               ; 11 uses
  %i.mu = alloca [8 x i8], align 8                ; 4 uses
  %i.mv = alloca [48 x i8], align 16              ; 4 uses
  %i.mw = alloca [144 x i8], align 16             ; 5 uses
  %i.mx = alloca [144 x i8], align 16             ; 5 uses
  %i.my = alloca [72 x i8], align 8               ; 7 uses
  %i.mz = alloca [13 x i8], align 1               ; 12 uses
  %i.na = alloca [144 x i8], align 16             ; 5 uses
  %i.nb = alloca [144 x i8], align 16             ; 4 uses
  %i.nc = alloca [8 x i8], align 8                ; 4 uses
  %i.nd = alloca [144 x i8], align 16             ; 6 uses
  %i.ne = alloca [48 x i8], align 16              ; 4 uses
  %i.nf = alloca [8 x i8], align 8                ; 4 uses
  %i.ng = alloca [144 x i8], align 16             ; 6 uses
  %i.nh = alloca [24 x i8], align 8               ; 11 uses
  %i.ni = alloca [24 x i8], align 8               ; 12 uses
  %i.nj = alloca [8 x i8], align 8                ; 2 uses
  %i.nk = alloca [8 x i8], align 8                ; 2 uses
  %i.nl = alloca [16 x i8], align 8               ; 8 uses
  %i.nm = alloca [368 x i8], align 16             ; 7 uses
  %i.nn = alloca [16 x i8], align 8               ; 6 uses
  %i.no = alloca [8 x i8], align 8                ; 13 uses
  %i.np = alloca [368 x i8], align 16             ; 6 uses
  %i.nq = alloca [24 x i8], align 8               ; 2 uses
  %i.nr = alloca [24 x i8], align 8               ; 4 uses
  %i.ns = alloca [72 x i8], align 8               ; 6 uses
  %i.nt = alloca [72 x i8], align 8               ; 4 uses
  %i.nu = alloca [16 x i8], align 8               ; 5 uses
  %i.nv = alloca [144 x i8], align 16             ; 6 uses
  %i.nw = alloca [24 x i8], align 8               ; 2 uses
  %i.nx = alloca [24 x i8], align 8               ; 4 uses
  %i.ny = alloca [32 x i8], align 8               ; 9 uses
  %i.nz = alloca [24 x i8], align 8               ; 4 uses
  %i.oa = alloca [8 x i8], align 8                ; 9 uses
  %i.ob = alloca [24 x i8], align 8               ; 9 uses
  %i.oc = alloca [368 x i8], align 16             ; 5 uses
  %i.od = alloca [368 x i8], align 16             ; 7 uses
  %i.oe = alloca [3 x i8], align 1                ; 2 uses
  %i.of = alloca [24 x i8], align 8               ; 6 uses
  %i.og = alloca [16 x i8], align 8               ; 6 uses
  %i.oh = alloca [368 x i8], align 16             ; 5 uses
  %i.oi = alloca [368 x i8], align 16             ; 7 uses
  %i.oj = alloca [8 x i8], align 8                ; 6 uses
  %i.ok = alloca [80 x i8], align 8               ; 9 uses
  %i.ol = alloca [192 x i8], align 16             ; 7 uses
  %i.om = alloca [24 x i8], align 8               ; 5 uses
  %i.on = alloca [24 x i8], align 8               ; 5 uses
  %i.oo = alloca [24 x i8], align 8               ; 5 uses
  %i.op = alloca [16 x i8], align 8               ; 4 uses
  %i.oq = alloca [16 x i8], align 8               ; 4 uses
  %i.or = alloca [24 x i8], align 8               ; 6 uses
  %i.os = alloca [368 x i8], align 16             ; 14 uses
  %.sroa.3285 = alloca [16 x i8], align 8         ; 2 uses
  %i.ot = alloca [8 x i8], align 8                ; 10 uses
  %i.ou = alloca [24 x i8], align 8               ; 8 uses
  %i.ov = alloca [24 x i8], align 8               ; 4 uses
  %i.ow = alloca [24 x i8], align 8               ; 4 uses
  %i.ox = alloca [8 x i8], align 8                ; 7 uses
  %i.oy = alloca [24 x i8], align 8               ; 11 uses
  %i.oz = alloca [24 x i8], align 8               ; 10 uses
  %i.pa = alloca [368 x i8], align 16             ; 5 uses
  %i.pb = alloca [32 x i8], align 8               ; 7 uses
  %i.pc = alloca [24 x i8], align 8               ; 4 uses
  %i.pd = alloca [144 x i8], align 16             ; 6 uses
  %i.pe = alloca [144 x i8], align 16             ; 4 uses
  %i.pf = alloca [368 x i8], align 16             ; 14 uses
  %i.pg = alloca [368 x i8], align 16             ; 4 uses
  %i.ph = alloca [368 x i8], align 16             ; 4 uses
  %i.pi = alloca [368 x i8], align 16             ; 2 uses
  %i.pj = alloca [64 x i8], align 8               ; 8 uses
  %i.pk = alloca [24 x i8], align 8               ; 6 uses
  %i.pl = alloca [16 x i8], align 8               ; 8 uses
  %i.pm = alloca [8 x i8], align 8                ; 6 uses
  %i.pn = alloca [24 x i8], align 8               ; 11 uses
  %i.po = alloca [24 x i8], align 8               ; 9 uses
  %i.pp = alloca [24 x i8], align 8               ; 9 uses
  %i.pq = alloca [24 x i8], align 8               ; 8 uses
  %i.pr = alloca [8 x i8], align 8                ; 4 uses
  %i.ps = alloca [368 x i8], align 16             ; 5 uses
  %i.pt = alloca [16 x i8], align 1               ; 5 uses
  %i.pu = alloca [8 x i8], align 8                ; 6 uses
  %i.pv = alloca [368 x i8], align 16             ; 9 uses
  %i.pw = alloca [112 x i8], align 16             ; 4 uses
  %i.px = alloca [32 x i8], align 8               ; 8 uses
  %i.py = alloca [72 x i8], align 8               ; 7 uses
  %i.pz = alloca [24 x i8], align 8               ; 12 uses
  %i.qa = alloca [16 x i8], align 8               ; 9 uses
  %i.qb = alloca [24 x i8], align 8               ; 9 uses
  %i.qc = alloca [24 x i8], align 8               ; 5 uses
  %i.qd = alloca [24 x i8], align 8               ; 5 uses
  %i.qe = alloca [24 x i8], align 8               ; 6 uses
  %i.qf = alloca [24 x i8], align 8               ; 8 uses
  %i.qg = alloca [144 x i8], align 16             ; 6 uses
  %i.qh = alloca [160 x i8], align 16             ; 9 uses
  %i.qi = alloca [128 x i8], align 8              ; 20 uses
  %i.qj = alloca [24 x i8], align 8               ; 10 uses
  %i.qk = alloca [24 x i8], align 8               ; 10 uses
  %i.ql = alloca [24 x i8], align 8               ; 10 uses
  %i.qm = alloca [32 x i8], align 8               ; 7 uses
  %i.qn = alloca [8 x i8], align 8                ; 4 uses
  %i.qo = alloca [24 x i8], align 8               ; 2 uses
  %i.qp = alloca [24 x i8], align 8               ; 4 uses
  %i.qq = alloca [8 x i8], align 8                ; 2 uses
  %i.qr = alloca [32 x i8], align 8               ; 7 uses
  %i.qs = alloca [8 x i8], align 8                ; 4 uses
  %i.qt = alloca [24 x i8], align 8               ; 2 uses
  %i.qu = alloca [24 x i8], align 8               ; 4 uses
  %i.qv = alloca [8 x i8], align 8                ; 2 uses
  %i.qw = alloca [64 x i8], align 8               ; 12 uses
  %i.qx = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.6197 = alloca [64 x i8], align 8         ; 6 uses
  %i.qy = alloca [64 x i8], align 8               ; 6 uses
  %i.qz = alloca [16 x i8], align 8               ; 8 uses
  %i.ra = alloca [368 x i8], align 16             ; 7 uses
  %i.rb = alloca [64 x i8], align 8               ; 20 uses
  %i.rc = alloca [24 x i8], align 8               ; 9 uses
  %i.rd = alloca [368 x i8], align 16             ; 6 uses
  %i.re = alloca [88 x i8], align 8               ; 12 uses
  %i.rf = alloca [24 x i8], align 8               ; 4 uses
  %i.rg = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6172 = alloca [24 x i8], align 8         ; 6 uses
  %i.rh = alloca [24 x i8], align 8               ; 7 uses
  %i.ri = alloca [368 x i8], align 16             ; 4 uses
  %i.rj = alloca [368 x i8], align 16             ; 4 uses
  %i.rk = alloca [24 x i8], align 8               ; 4 uses
  %i.rl = alloca [64 x i8], align 8               ; 8 uses
  %i.rm = alloca [24 x i8], align 8               ; 8 uses
  %i.rn = alloca [16 x i8], align 8               ; 7 uses
  %i.ro = alloca [368 x i8], align 16             ; 7 uses
  %i.rp = alloca [3 x i8], align 1                ; 2 uses
  %i.rq = alloca [24 x i8], align 8               ; 6 uses
  %i.rr = alloca [48 x i8], align 8               ; 4 uses
  %i.rs = alloca [16 x i8], align 8               ; 5 uses
  %i.rt = alloca [8 x i8], align 8                ; 9 uses
  %i.ru = alloca [368 x i8], align 16             ; 7 uses
  %i.rv = alloca [368 x i8], align 16             ; 4 uses
  %i.rw = alloca [72 x i8], align 8               ; 6 uses
  %i.rx = alloca [72 x i8], align 8               ; 6 uses
  %i.ry = alloca [32 x i8], align 8               ; 10 uses
  %i.rz = alloca [40 x i8], align 8               ; 9 uses
  %i.sa = alloca [88 x i8], align 8               ; 12 uses
  %i.sb = alloca [144 x i8], align 16             ; 4 uses
  %i.sc = alloca [112 x i8], align 16             ; 7 uses
  %.sroa.6129 = alloca [72 x i8], align 8         ; 6 uses
  %i.sd = alloca [112 x i8], align 16             ; 11 uses
  %i.se = alloca [16 x i8], align 8               ; 5 uses
  %i.sf = alloca [24 x i8], align 8               ; 2 uses
  %i.sg = alloca [24 x i8], align 8               ; 4 uses
  %i.sh = alloca [16 x i8], align 8               ; 21 uses
  %i.si = alloca [24 x i8], align 8               ; 20 uses
  %i.sj = alloca [24 x i8], align 8               ; 23 uses
  %i.sk = alloca [8 x i8], align 8                ; 20 uses
  %i.sl = alloca [24 x i8], align 8               ; 15 uses
  %i.sm = alloca [64 x i8], align 8               ; 12 uses
  %i.sn = alloca [72 x i8], align 8               ; 6 uses
  %i.so = alloca [24 x i8], align 8               ; 8 uses
  %i.sp = alloca [16 x i8], align 8               ; 8 uses
  %i.sq = alloca [368 x i8], align 16             ; 7 uses
  %i.sr = alloca [8 x i8], align 8                ; 7 uses
  %i.ss = alloca [144 x i8], align 16             ; 6 uses
  %i.st = alloca [72 x i8], align 8               ; 7 uses
  %i.su = alloca [40 x i8], align 8               ; 6 uses
  %i.sv = alloca [24 x i8], align 8               ; 9 uses
  %i.sw = alloca [3 x i8], align 1                ; 2 uses
  %i.sx = alloca [72 x i8], align 8               ; 7 uses
  %i.sy = alloca [16 x i8], align 8               ; 9 uses
  %i.sz = alloca [16 x i8], align 8               ; 10 uses
  %i.ta = alloca [24 x i8], align 8               ; 4 uses
  %i.tb = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.651 = alloca [24 x i8], align 8          ; 6 uses
  %i.tc = alloca [40 x i8], align 8               ; 6 uses
  %i.td = alloca [24 x i8], align 8               ; 13 uses
  %i.te = alloca [72 x i8], align 8               ; 7 uses
  %i.tf = alloca [24 x i8], align 8               ; 13 uses
  %i.tg = alloca [24 x i8], align 8               ; 8 uses
  %i.th = alloca [8 x i8], align 8                ; 5 uses
  %i.ti = alloca [368 x i8], align 16             ; 72 uses
  %i.tj = alloca [72 x i8], align 8               ; 4 uses
  %i.tk = alloca [72 x i8], align 8               ; 6 uses
  %i.tl = alloca [72 x i8], align 8               ; 9 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 368, !dbg !102277 ; 104 uses
  %i.tn = load ptr, ptr %i.tm, align 16, !dbg !102277, !nonnull !3011, !align !3101, !noundef !3011 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 225, !dbg !102277
  %i.tp = load i8, ptr %i.to, align 1, !dbg !102277, !range !3179, !noundef !3011
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 216, !dbg !102278
  %.val2649.a = load ptr, ptr %i.tq, align 8, !dbg !102279, !nonnull !3011, !noundef !3011 ; 2 uses
  %i.tr = atomicrmw add ptr %.val2649.a, i64 1 monotonic, align 8, !dbg !102280
  %i.ts = icmp slt i64 %i.tr, 0, !dbg !102281
  br i1 %i.ts, label %bb.b, label %bb.d, !dbg !102281

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !102282
  unreachable, !dbg !102282

.critedge2460:                                    ; preds = %.invoke5011.a, %.thread4411, %bb.blg, %bb.blh, %.thread4372, %bb.bkt, %bb.bku, %.split4342.thread, %.thread4337, %bb.bhx, %bb.bhy, %bb.ayr, %.thread4225, %bb.aww, %bb.awp, %.noexc3049, %bb.awo, %bb.awd, %bb.awe, %.split4120, %.body2592, %bb.apw, %bb.ahn, %bb.aho, %bb.yr, %bb.ys, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit, %bb.wt, %bb.qd, %bb.qe, %.thread3800, %.thread3791.a, %bb.ov, %bb.ow, %bb.oj, %bb.oh, %bb.oi, %.thread3775, %bb.ix, %.thread3632, %.body2567, %bb.ig, %bb.ie, %bb.if, %.thread3629, %bb.ec, %bb.eb, %bb.ed, %bb.f, %bb.awi, %.thread3809, %bb.bpf, %.noexc3171, %bb.bgu, %bb.bar, %bb.aym, %.thread4208, %bb.awl, %bb.awk, %bb.awj, %bb.awh, %bb.awg, %.noexc3004, %bb.apf, %bb.aoz, %bb.akt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951, %bb.ahi, %bb.nw, %bb.kr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, %.body2700
  %.sroa.01155.0 = phi i1 [ %.sroa.01155.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ false, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ false, %bb.blh ], [ false, %bb.blg ], !dbg !102283
  %.sroa.01147.0 = phi i1 [ %.sroa.01147.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ false, %.split4342.thread ], [ false, %.noexc3171 ], [ false, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ false, %.thread4337 ], [ false, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01145.0 = phi i1 [ %.sroa.01145.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102284
  %.sroa.01140.0 = phi i1 [ %.sroa.01140.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ false, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ false, %bb.bhy ], [ false, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01135.0 = phi i1 [ %.sroa.01135.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ false, %bb.bar ], [ false, %bb.ayr ], [ false, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01130.0 = phi i1 [ %.sroa.01130.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ false, %.split4120 ], [ false, %bb.awg ], [ false, %bb.awl ], [ false, %bb.awh ], [ false, %bb.awe ], [ false, %bb.awd ], [ false, %.noexc3049 ], [ false, %bb.awj ], [ true, %.thread4411 ], [ false, %bb.awk ], [ false, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ false, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ false, %bb.awo ], [ false, %.invoke5011.a ], [ false, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01125.0 = phi i1 [ %.sroa.01125.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ false, %bb.akt ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01105.0 = phi i1 [ %.sroa.01105.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ false, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ false, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ false, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01100.0 = phi i1 [ %.sroa.01100.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ false, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ false, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01092.0 = phi i1 [ %.sroa.01092.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ false, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01087.0 = phi i1 [ true, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ false, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01082.0 = phi i1 [ %.sroa.01082.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ false, %.thread3791.a ], [ false, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ false, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ false, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01065.0 = phi i1 [ %.sroa.01065.1.lpad-body, %.body2700 ], [ false, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ false, %bb.ow ], [ false, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01048.0 = phi i1 [ true, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ false, %.thread3775 ], [ false, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ false, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ false, %bb.oi ], [ false, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01046.0 = phi i1 [ %.sroa.01046.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ false, %.thread3629 ], [ false, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ false, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01038.0 = phi i1 [ %.sroa.01038.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ false, %bb.apf ], [ false, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01033.0 = phi i1 [ %.sroa.01033.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ false, %bb.kr ], [ false, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ false, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01028.0 = phi i1 [ %.sroa.01028.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102284
  %.sroa.01026.0 = phi i1 [ %.sroa.01026.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ false, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ false, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01021.0 = phi i1 [ %.sroa.01021.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01019.0 = phi i1 [ %.sroa.01019.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ false, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01017.0 = phi i1 [ %.sroa.01017.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ false, %.thread4208 ], [ false, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01015.0 = phi i1 [ %.sroa.01015.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ false, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ true, %bb.ig ], [ true, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ false, %bb.ed ], [ false, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.01012.0 = phi i1 [ %.sroa.01012.1.lpad-body, %.body2700 ], [ true, %bb.oj ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.ec ], [ true, %.thread3629 ], [ true, %bb.ie ], [ true, %bb.kr ], [ true, %bb.ix ], [ true, %.thread3775 ], [ true, %bb.nw ], [ false, %bb.ig ], [ false, %.body2567 ], [ true, %.thread3791.a ], [ true, %.thread3800 ], [ true, %bb.f ], [ true, %.thread3809 ], [ true, %bb.qd ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.yr ], [ true, %bb.ahi ], [ true, %bb.akt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ true, %bb.apf ], [ true, %bb.aoz ], [ true, %bb.ahn ], [ true, %.body2592 ], [ true, %.split4120 ], [ true, %bb.awg ], [ true, %bb.awl ], [ true, %bb.awh ], [ true, %bb.awe ], [ true, %bb.awd ], [ true, %.noexc3049 ], [ true, %bb.awj ], [ true, %.thread4411 ], [ true, %bb.awk ], [ true, %.noexc3004 ], [ true, %.thread4208 ], [ true, %bb.aww ], [ true, %bb.aym ], [ true, %bb.bar ], [ true, %bb.ayr ], [ true, %.thread4225 ], [ true, %bb.bgu ], [ true, %.split4342.thread ], [ true, %.noexc3171 ], [ true, %bb.bkt ], [ true, %.thread4372 ], [ true, %bb.bpf ], [ true, %bb.awi ], [ true, %.thread3632 ], [ true, %bb.oi ], [ true, %bb.oh ], [ true, %bb.ed ], [ true, %bb.eb ], [ true, %bb.if ], [ true, %bb.ow ], [ true, %bb.ov ], [ true, %bb.qe ], [ true, %bb.wt ], [ true, %bb.ys ], [ true, %bb.aho ], [ true, %bb.apw ], [ true, %bb.awo ], [ true, %.invoke5011.a ], [ true, %bb.awp ], [ true, %bb.bhy ], [ true, %bb.bhx ], [ true, %.thread4337 ], [ true, %bb.bku ], [ true, %bb.blh ], [ true, %bb.blg ], !dbg !102283
  %.sroa.02013.0 = phi ptr [ %i.tz, %.body2700 ], [ %i.bdh, %bb.oj ], [ %.sroa.02013.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.02013.13606, %bb.ec ], [ %i.aqi, %.thread3629 ], [ %i.ark, %bb.ie ], [ %.sroa.02013.83645, %bb.kr ], [ %.sroa.02013.8, %bb.ix ], [ %i.bcs, %.thread3775 ], [ %.sroa.02013.23, %bb.nw ], [ %.sroa.02013.7, %bb.ig ], [ %.sroa.02013.7, %.body2567 ], [ %.sroa.02013.253795, %.thread3791.a ], [ %.sroa.02013.253804, %.thread3800 ], [ %i.ui, %bb.f ], [ %.sroa.02013.29, %.thread3809 ], [ %.sroa.02013.25, %bb.qd ], [ %.sroa.02013.35, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ %.sroa.02013.39, %bb.yr ], [ %.sroa.02013.59, %bb.ahi ], [ %.sroa.02013.60, %bb.akt ], [ %.sroa.02013.60, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ %.sroa.02013.77, %bb.apf ], [ %.sroa.02013.77, %bb.aoz ], [ %.sroa.02013.59, %bb.ahn ], [ %i.dbt, %.body2592 ], [ %.sroa.02013.784122, %.split4120 ], [ %.sroa.02013.784128, %bb.awg ], [ %.sroa.02013.784128, %bb.awl ], [ %.sroa.02013.784128, %bb.awh ], [ %6, %bb.awe ], [ %6, %bb.awd ], [ %.sroa.02013.784128, %.noexc3049 ], [ %.sroa.02013.784128, %bb.awj ], [ %.sroa.02013.194394, %.thread4411 ], [ %.sroa.02013.784128, %bb.awk ], [ %.sroa.02013.78, %.noexc3004 ], [ %.sroa.02013.934214, %.thread4208 ], [ %.sroa.02013.93, %bb.aww ], [ %i.dvi, %bb.aym ], [ %.sroa.02013.954238, %bb.bar ], [ %.sroa.02013.95, %bb.ayr ], [ %.sroa.02013.954229, %.thread4225 ], [ %.sroa.02013.117, %bb.bgu ], [ %.sroa.02013.12543444352, %.split4342.thread ], [ %.sroa.02013.125, %.noexc3171 ], [ %.sroa.02013.1254346, %bb.bkt ], [ %i.etg, %.thread4372 ], [ %i.fcb, %bb.bpf ], [ %.sroa.02013.784128, %bb.awi ], [ %.sroa.02013.83636, %.thread3632 ], [ %.sroa.02013.23, %bb.oi ], [ %.sroa.02013.23, %bb.oh ], [ %.sroa.02013.13606, %bb.ed ], [ %.sroa.02013.13606, %bb.eb ], [ %i.ark, %bb.if ], [ %i.bec, %bb.ow ], [ %i.bec, %bb.ov ], [ %.sroa.02013.25, %bb.qe ], [ %.sroa.02013.35, %bb.wt ], [ %.sroa.02013.39, %bb.ys ], [ %.sroa.02013.59, %bb.aho ], [ %i.dbt, %bb.apw ], [ %.sroa.02013.784128, %bb.awo ], [ %.sroa.02013.784128, %.invoke5011.a ], [ %.sroa.02013.784128, %bb.awp ], [ %.sroa.02013.117, %bb.bhy ], [ %.sroa.02013.117, %bb.bhx ], [ %.sroa.02013.1254341, %.thread4337 ], [ %.sroa.02013.1254346, %bb.bku ], [ %i.euk, %bb.blh ], [ %i.euk, %bb.blg ] ; 52 uses
  %.sroa.478.0 = phi i32 [ %i.ua, %.body2700 ], [ %i.bdi, %bb.oj ], [ %.sroa.478.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.478.13605, %bb.ec ], [ %i.aqj, %.thread3629 ], [ %i.arl, %bb.ie ], [ %.sroa.478.83644, %bb.kr ], [ %.sroa.478.8, %bb.ix ], [ %i.bct, %.thread3775 ], [ %.sroa.478.23, %bb.nw ], [ %.sroa.478.7, %bb.ig ], [ %.sroa.478.7, %.body2567 ], [ %.sroa.478.253794, %.thread3791.a ], [ %.sroa.478.253803, %.thread3800 ], [ %i.uj, %bb.f ], [ %.sroa.478.29, %.thread3809 ], [ %.sroa.478.25, %bb.qd ], [ %.sroa.478.35, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ %.sroa.478.39, %bb.yr ], [ %.sroa.478.59, %bb.ahi ], [ %.sroa.478.60, %bb.akt ], [ %.sroa.478.60, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 ], [ %.sroa.478.77, %bb.apf ], [ %.sroa.478.77, %bb.aoz ], [ %.sroa.478.59, %bb.ahn ], [ %i.dbu, %.body2592 ], [ %.sroa.478.784121, %.split4120 ], [ %.sroa.478.784127, %bb.awg ], [ %.sroa.478.784127, %bb.awl ], [ %.sroa.478.784127, %bb.awh ], [ %7, %bb.awe ], [ %7, %bb.awd ], [ %.sroa.478.784127, %.noexc3049 ], [ %.sroa.478.784127, %bb.awj ], [ %.sroa.478.194393, %.thread4411 ], [ %.sroa.478.784127, %bb.awk ], [ %.sroa.478.78, %.noexc3004 ], [ %.sroa.478.934213, %.thread4208 ], [ %.sroa.478.93, %bb.aww ], [ %i.dvj, %bb.aym ], [ %.sroa.478.954237, %bb.bar ], [ %.sroa.478.95, %bb.ayr ], [ %.sroa.478.954228, %.thread4225 ], [ %.sroa.478.117, %bb.bgu ], [ %.sroa.478.12543434351, %.split4342.thread ], [ %.sroa.478.125, %.noexc3171 ], [ %.sroa.478.1254345, %bb.bkt ], [ %i.eth, %.thread4372 ], [ %i.fcc, %bb.bpf ], [ %.sroa.478.784127, %bb.awi ], [ %.sroa.478.83635, %.thread3632 ], [ %.sroa.478.23, %bb.oi ], [ %.sroa.478.23, %bb.oh ], [ %.sroa.478.13605, %bb.ed ], [ %.sroa.478.13605, %bb.eb ], [ %i.arl, %bb.if ], [ %i.bed, %bb.ow ], [ %i.bed, %bb.ov ], [ %.sroa.478.25, %bb.qe ], [ %.sroa.478.35, %bb.wt ], [ %.sroa.478.39, %bb.ys ], [ %.sroa.478.59, %bb.aho ], [ %i.dbu, %bb.apw ], [ %.sroa.478.784127, %bb.awo ], [ %.sroa.478.784127, %.invoke5011.a ], [ %.sroa.478.784127, %bb.awp ], [ %.sroa.478.117, %bb.bhy ], [ %.sroa.478.117, %bb.bhx ], [ %.sroa.478.1254340, %.thread4337 ], [ %.sroa.478.1254345, %bb.bku ], [ %i.eul, %bb.blh ], [ %i.eul, %bb.blg ] ; 52 uses
  %i.tt = load i64, ptr %1, align 16, !dbg !102274, !range !3407, !noundef !3011 ; 3 uses
  %i.tu = icmp ne i64 %i.tt, -9223372036854775782, !dbg !102274
  call void @llvm.assume(i1 %i.tu), !dbg !102274
  %i.tv = add nsw i64 %i.tt, 9223372036854775802, !dbg !102274
  %i.tw = icmp ugt i64 %i.tt, -9223372036854775803, !dbg !102274
  %i.tx = select i1 %i.tw, i64 %i.tv, i64 20, !dbg !102274
  switch i64 %i.tx, label %bb.bpg [
    i64 0, label %bb.bph
    i64 1, label %bb.bpi
    i64 2, label %bb.bpj
    i64 3, label %bb.bpk
    i64 4, label %bb.bpl
    i64 5, label %bb.bpm
    i64 6, label %bb.bpn
    i64 7, label %bb.bpo
    i64 8, label %bb.bpp
    i64 9, label %bb.bpq
    i64 10, label %bb.bpr
    i64 11, label %bb.bps
    i64 12, label %bb.bpt
    i64 13, label %bb.bpu
    i64 14, label %bb.bpv
    i64 15, label %bb.bpw
    i64 16, label %bb.bpx
    i64 17, label %bb.bpy
    i64 18, label %bb.bpz
    i64 19, label %bb.bqa
    i64 20, label %bb.bqb
    i64 21, label %bb.bqc
    i64 22, label %bb.bqd
  ], !dbg !102274

bb.c:                                             ; preds = %.invoke, %bb.blb, %bb.bki, %bb.bhk, %bb.awc, %bb.aqc, %bb.ahm, %bb.yu, %bb.wv, %bb.pc, %bb.iw, %bb.hr, %bb.br, %bb.bia, %bb.ayw, %bb.ayo, %bb.ayj, %bb.axg, %bb.awr, %bb.avr, %bb.avm, %bb.atd, %bb.app, %bb.apo, %bb.apj, %bb.aph, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread, %2, %bb.akr, %bb.on, %bb.jc, %bb.hm, %bb.bo, %bb.bh, %bb.bc, %bb.bb
  %.sroa.01155.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ false, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01147.1 = phi i1 [ true, %bb.bo ], [ false, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01145.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ false, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ false, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01140.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ false, %bb.bhk ], !dbg !102283
  %.sroa.01135.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ false, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01130.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ false, %bb.avm ], [ false, %bb.avr ], [ false, %bb.awc ], [ false, %.invoke ], [ true, %bb.bia ], [ false, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01125.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ false, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01105.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ false, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01100.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ false, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01092.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ false, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01082.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ false, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01065.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ false, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01046.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ false, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01038.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ false, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01033.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ false, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01026.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ false, %bb.apj ], [ false, %bb.aqc ], [ false, %bb.app ], [ false, %bb.apo ], [ false, %bb.aph ], [ false, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01021.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ false, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01019.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ false, %bb.ayj ], [ false, %bb.ayo ], [ false, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01017.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ false, %bb.awr ], [ false, %bb.axg ], [ false, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01015.1 = phi i1 [ false, %bb.bo ], [ true, %bb.bki ], [ false, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ true, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %.sroa.01012.1 = phi i1 [ true, %bb.bo ], [ true, %bb.bki ], [ true, %bb.br ], [ true, %bb.hm ], [ true, %bb.hr ], [ false, %bb.iw ], [ true, %bb.jc ], [ true, %bb.on ], [ true, %bb.bh ], [ true, %bb.pc ], [ true, %bb.wv ], [ true, %bb.yu ], [ true, %bb.ahm ], [ true, %bb.akr ], [ true, %2 ], [ true, %bb.apj ], [ true, %bb.aqc ], [ true, %bb.app ], [ true, %bb.apo ], [ true, %bb.aph ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread ], [ true, %bb.blb ], [ true, %bb.avm ], [ true, %bb.avr ], [ true, %bb.awc ], [ true, %.invoke ], [ true, %bb.bia ], [ true, %bb.atd ], [ true, %bb.awr ], [ true, %bb.axg ], [ true, %bb.bb ], [ true, %bb.ayj ], [ true, %bb.ayo ], [ true, %bb.bc ], [ true, %bb.ayw ], [ true, %bb.bhk ], !dbg !102283
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %.body2700

.body2700:                                        ; preds = %bb.bu, %bb.c
  %.sroa.01155.1.lpad-body = phi i1 [ %.sroa.01155.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01147.1.lpad-body = phi i1 [ %.sroa.01147.1, %bb.c ], [ %.sroa.01147.2, %bb.bu ]
  %.sroa.01145.1.lpad-body = phi i1 [ %.sroa.01145.1, %bb.c ], [ %.sroa.01145.2, %bb.bu ]
  %.sroa.01140.1.lpad-body = phi i1 [ %.sroa.01140.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01135.1.lpad-body = phi i1 [ %.sroa.01135.1, %bb.c ], [ %.sroa.01135.2, %bb.bu ]
  %.sroa.01130.1.lpad-body = phi i1 [ %.sroa.01130.1, %bb.c ], [ %.sroa.01130.2, %bb.bu ]
  %.sroa.01125.1.lpad-body = phi i1 [ %.sroa.01125.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01105.1.lpad-body = phi i1 [ %.sroa.01105.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01100.1.lpad-body = phi i1 [ %.sroa.01100.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01092.1.lpad-body = phi i1 [ %.sroa.01092.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01082.1.lpad-body = phi i1 [ %.sroa.01082.1, %bb.c ], [ %.sroa.01082.2, %bb.bu ]
  %.sroa.01065.1.lpad-body = phi i1 [ %.sroa.01065.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01046.1.lpad-body = phi i1 [ %.sroa.01046.1, %bb.c ], [ %.sroa.01046.2, %bb.bu ]
  %.sroa.01038.1.lpad-body = phi i1 [ %.sroa.01038.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01033.1.lpad-body = phi i1 [ %.sroa.01033.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01028.1.lpad-body = phi i1 [ true, %bb.c ], [ %.sroa.01028.2, %bb.bu ]
  %.sroa.01026.1.lpad-body = phi i1 [ %.sroa.01026.1, %bb.c ], [ %.sroa.01026.2, %bb.bu ]
  %.sroa.01021.1.lpad-body = phi i1 [ %.sroa.01021.1, %bb.c ], [ true, %bb.bu ]
  %.sroa.01019.1.lpad-body = phi i1 [ %.sroa.01019.1, %bb.c ], [ %.sroa.01019.2, %bb.bu ]
  %.sroa.01017.1.lpad-body = phi i1 [ %.sroa.01017.1, %bb.c ], [ %.sroa.01017.2, %bb.bu ]
  %.sroa.01015.1.lpad-body = phi i1 [ %.sroa.01015.1, %bb.c ], [ %.sroa.01015.2, %bb.bu ]
  %.sroa.01012.1.lpad-body = phi i1 [ %.sroa.01012.1, %bb.c ], [ %.sroa.01012.2, %bb.bu ]
  %eh.lpad-body2701 = phi { ptr, i32 } [ %i.ty, %bb.c ], [ %i.aer, %bb.bu ] ; 2 uses
  %i.tz = extractvalue { ptr, i32 } %eh.lpad-body2701, 0
  %i.ua = extractvalue { ptr, i32 } %eh.lpad-body2701, 1
  br label %.critedge2460

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tl), !dbg !102285
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tl, i64 48, !dbg !102286
  store ptr %1, ptr %i.ub, align 8, !dbg !102286, !alias.scope !98799
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tl, i64 56, !dbg !102286
  store ptr %.val2649.a, ptr %i.uc, align 8, !dbg !102286, !alias.scope !98799
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tl, i64 66, !dbg !102286
  store i8 %i.tp, ptr %i.ud, align 2, !dbg !102286, !alias.scope !98799
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tl, i64 65, !dbg !102286
  store i8 0, ptr %i.ue, align 1, !dbg !102286, !alias.scope !98799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tk), !dbg !98800
  %i.uf = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80) acquire, align 8, !dbg !102287
  %i.ug = icmp eq i32 %i.uf, 0, !dbg !102288
  br i1 %i.ug, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !102288, !prof !3155

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !102289
  store ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr %i.h, align 8, !dbg !102290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !102291
  store ptr %i.h, ptr %i.g, align 8, !dbg !102291
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc2678 unwind label %bb.bpf, !dbg !102292

.noexc2678:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !102293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !102294
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !102294

bb.f:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit
  %i.uh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ui = extractvalue { ptr, i32 } %i.uh, 0
  %i.uj = extractvalue { ptr, i32 } %i.uh, 1
  br label %.critedge2460, !dbg !102295

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.noexc2678, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tj), !dbg !102296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tj, ptr noundef nonnull align 8 dereferenceable(72) %i.tl, i64 72, i1 false), !dbg !102296
  invoke void @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0EB1j_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.tk, ptr noundef nonnull align 8 @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.tj)
          to label %bb.g unwind label %bb.f, !dbg !102297

bb.g:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tj), !dbg !102298
  %i.uk = load i64, ptr %i.tk, align 8, !dbg !102299, !range !3398, !noundef !3011
  %.not2081 = icmp eq i64 %i.uk, 18, !dbg !102299
  br i1 %.not2081, label %bb.i, label %bb.h, !dbg !102300

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.tk, i64 72, i1 false), !dbg !102301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tk), !dbg !102302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tl), !dbg !102295
  %i.ul = load i64, ptr %1, align 16, !dbg !102274, !range !3407, !noundef !3011 ; 3 uses
  %i.um = icmp ne i64 %i.ul, -9223372036854775782, !dbg !102274
  call void @llvm.assume(i1 %i.um), !dbg !102274
  %i.un = add nsw i64 %i.ul, 9223372036854775802, !dbg !102274
  %i.uo = icmp ugt i64 %i.ul, -9223372036854775803, !dbg !102274
  %i.up = select i1 %i.uo, i64 %i.un, i64 20, !dbg !102274
  switch i64 %i.up, label %.loopexit4494 [
    i64 0, label %bb.id
    i64 1, label %bb.by
    i64 2, label %bb.ca
    i64 3, label %bb.cc
    i64 4, label %bb.ci
    i64 5, label %bb.ck
    i64 6, label %bb.co
    i64 7, label %bb.cq
    i64 8, label %bb.cs
    i64 9, label %bb.cu
    i64 10, label %bb.cw
    i64 11, label %bb.cy
    i64 12, label %bb.da
    i64 13, label %bb.dc
    i64 14, label %bb.de
    i64 15, label %bb.dg
    i64 16, label %bb.di
    i64 17, label %bb.dk
    i64 18, label %bb.dn
    i64 19, label %bb.dq
    i64 20, label %bb.ds
    i64 21, label %bb.du
    i64 22, label %bb.dx
    i64 23, label %bb.dz
  ], !dbg !102274

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tk), !dbg !102302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tl), !dbg !102295
  %i.uq = load i64, ptr %1, align 16, !dbg !102303, !range !3407, !noundef !3011 ; 3 uses
  %i.ur = icmp ne i64 %i.uq, -9223372036854775782, !dbg !102303
  call void @llvm.assume(i1 %i.ur), !dbg !102303
  %i.us = add nsw i64 %i.uq, 9223372036854775802, !dbg !102303
  %i.ut = icmp ugt i64 %i.uq, -9223372036854775803, !dbg !102303
  %i.uu = select i1 %i.ut, i64 %i.us, i64 20, !dbg !102303
  switch i64 %i.uu, label %.loopexit4494 [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
    i64 5, label %bb.r
    i64 6, label %bb.v
    i64 7, label %bb.w
    i64 8, label %bb.aa
    i64 9, label %bb.ae
    i64 10, label %bb.af
    i64 11, label %bb.aj
    i64 12, label %bb.ak
    i64 13, label %bb.al
    i64 14, label %bb.ap
    i64 15, label %bb.at
    i64 16, label %bb.ax
    i64 17, label %bb.bb
    i64 18, label %bb.bc
    i64 19, label %bb.bd
    i64 20, label %bb.bat
    i64 21, label %bb.bh
    i64 22, label %bb.bi
    i64 23, label %bb.bm
  ], !dbg !102304

.loopexit4494:                                    ; preds = %bb.un, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.bdw, %bb.bcx, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aqq, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.ho, %bb.bx, %bb.i, %bb.h
  unreachable, !dbg !102305

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tf), !dbg !102306
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tf, ptr noundef nonnull align 8 dereferenceable(24) %i.uv, i64 24, i1 false), !dbg !102306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.te), !dbg !98878
  invoke void @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl6sourceNtB2_16PythonOptionsDsl10get_schema(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.te, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tf)
          to label %bb.bn unwind label %bb.ee, !dbg !102307

bb.k:                                             ; preds = %bb.i
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !102308
  %i.ux = load ptr, ptr %i.uw, align 16, !dbg !102308, !nonnull !3011, !noundef !3011 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ss), !dbg !102309
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ss, ptr noundef nonnull align 16 dereferenceable(144) %i.uy, i64 144, i1 false), !dbg !102309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sr), !dbg !102310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sq), !dbg !98805
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.83551), !dbg !102311
  %i.uz = cmpxchg ptr %i.ux, i64 1, i64 0 monotonic monotonic, align 8, !dbg !102312, !noalias !98806
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.uz, 1, !dbg !102313
  br i1 %.sroa.18.0.in.i.i, label %bb.l, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread, !dbg !102314

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !102315
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 16, !dbg !102316
  %.sroa.03546.0.copyload3547 = load i64, ptr %i.va, align 16, !dbg !102316 ; 2 uses
  %.sroa.63548.0..sroa_idx3549 = getelementptr inbounds nuw i8, ptr %i.ux, i64 24, !dbg !102316
  %.sroa.63548.0.copyload3550 = load ptr, ptr %.sroa.63548.0..sroa_idx3549, align 8, !dbg !102316 ; 2 uses
  %.sroa.83551.0..sroa_idx3552 = getelementptr inbounds nuw i8, ptr %i.ux, i64 32, !dbg !102316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83551, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83551.0..sroa_idx3552, i64 352, i1 false), !dbg !102316
  %i.vb = icmp eq ptr %i.ux, inttoptr (i64 -1 to ptr), !dbg !102317
  br i1 %i.vb, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit, label %bb.m, !dbg !102317

bb.m:                                             ; preds = %bb.l
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ux, i64 8, !dbg !102318
  %i.vd = atomicrmw add ptr %i.vc, i64 -1 release, align 8, !dbg !102319, !noalias !98807
  %i.ve = icmp eq i64 %i.vd, 1, !dbg !102320
  br i1 %i.ve, label %bb.n, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit, !dbg !102320

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !102321
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ux, i64 noundef 384, i64 noundef 16) #44, !dbg !102322, !noalias !98807
  br label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit, !dbg !102323

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pu), !dbg !102324
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abz, i64 8, !dbg !102530
  %i.acf = atomicrmw add ptr %i.ace, i64 -1 release, align 8, !dbg !102531, !noalias !98864
  %i.acg = icmp eq i64 %i.acf, 1, !dbg !102532
  br i1 %i.acg, label %bb.bg, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2695, !dbg !102532

bb.bg:                                            ; preds = %bb.bf
  fence acquire, !dbg !102533
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abz, i64 noundef 384, i64 noundef 16) #44, !dbg !102534, !noalias !98864
  br label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2695, !dbg !102535

bb.bh:                                            ; preds = %bb.i
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102536
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102536
  %i.acj = load ptr, ptr %i.aci, align 16, !dbg !102536, !nonnull !3011, !noundef !3011 ; 3 uses
  %i.ack = load i64, ptr %i.ach, align 8, !dbg !102536, !range !3217, !noundef !3011
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102536
  %i.acm = load i64, ptr %i.acl, align 8, !dbg !102536, !noundef !3011 ; 2 uses
  %i.acn = icmp ult i64 %i.acm, 25063510969714065, !dbg !102537
  call void @llvm.assume(i1 %i.acn), !dbg !102538
  %i.aco = getelementptr inbounds nuw [368 x i8], ptr %i.acj, i64 %i.acm, !dbg !102539
  %i.acp = load ptr, ptr %i.tm, align 16, !dbg !102540, !nonnull !3011, !align !3101, !noundef !3011
  store ptr %i.acj, ptr %i.ea, align 8, !dbg !102541
  %.sroa.4842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !102541
  store ptr %i.acj, ptr %.sroa.4842.0..sroa_idx, align 8, !dbg !102541
  %.sroa.5843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !102541
  store i64 %i.ack, ptr %.sroa.5843.0..sroa_idx, align 8, !dbg !102541
  %.sroa.6844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 24, !dbg !102541
  store ptr %i.aco, ptr %.sroa.6844.0..sroa_idx, align 8, !dbg !102541
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ea, i64 32, !dbg !102541
  store ptr %i.acp, ptr %i.acq, align 8, !dbg !102541
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENCNCNvNtNtNtB20_5plans10conversion9dsl_to_ir11to_alp_impl0s16_0ENtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B4v_IB4t_INtB1b_3VecB3L_EB5f_EINtNtNtB4_6traits7collect12FromIteratorIB4t_B3L_B5f_EE9from_iterBQ_E0B6f_EB20_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ea)
          to label %bb.bhz unwind label %bb.c, !dbg !102542

bb.bi:                                            ; preds = %bb.i
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102543
  %i.acs = load ptr, ptr %i.acr, align 8, !dbg !102543, !nonnull !3011, !noundef !3011 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !dbg !102544
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102544
  %i.acu = load ptr, ptr %i.act, align 16, !dbg !102544, !nonnull !3011, !noundef !3011 ; 4 uses
  store ptr %i.acu, ptr %i.dz, align 8, !dbg !102544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !dbg !102545
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102545
  %i.acw = load ptr, ptr %i.acv, align 8, !dbg !102545, !nonnull !3011, !noundef !3011
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102545
  %i.acy = load i64, ptr %i.acx, align 16, !dbg !102545, !noundef !3011
  store ptr %i.acw, ptr %i.dy, align 8, !dbg !102545
  %i.acz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !102545 ; 3 uses
  store i64 %i.acy, ptr %i.acz, align 8, !dbg !102545
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102546
  %i.adb = load i8, ptr %i.ada, align 8, !dbg !102546, !range !3179, !noundef !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !dbg !98874
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.83481), !dbg !102547
  %i.adc = cmpxchg ptr %i.acs, i64 1, i64 0 monotonic monotonic, align 8, !dbg !102548, !noalias !98875
  %.sroa.18.0.in.i.i2696 = extractvalue { i64, i1 } %i.adc, 1, !dbg !102549
  br i1 %.sroa.18.0.in.i.i2696, label %bb.bj, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2697.thread, !dbg !102550

bb.bj:                                            ; preds = %bb.bi
  fence acquire, !dbg !102551
  %i.add = getelementptr inbounds nuw i8, ptr %i.acs, i64 16, !dbg !102552
  %.sroa.03476.0.copyload3477 = load i64, ptr %i.add, align 16, !dbg !102552 ; 2 uses
  %.sroa.63478.0..sroa_idx3479 = getelementptr inbounds nuw i8, ptr %i.acs, i64 24, !dbg !102552
  %.sroa.63478.0.copyload3480 = load ptr, ptr %.sroa.63478.0..sroa_idx3479, align 8, !dbg !102552 ; 2 uses
  %.sroa.83481.0..sroa_idx3482 = getelementptr inbounds nuw i8, ptr %i.acs, i64 32, !dbg !102552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83481, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83481.0..sroa_idx3482, i64 352, i1 false), !dbg !102552
  %i.ade = icmp eq ptr %i.acs, inttoptr (i64 -1 to ptr), !dbg !102553
  br i1 %i.ade, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2697, label %bb.bk, !dbg !102553

bb.bk:                                            ; preds = %bb.bj
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acs, i64 8, !dbg !102554
  %i.adg = atomicrmw add ptr %i.adf, i64 -1 release, align 8, !dbg !102555, !noalias !98876
  %i.adh = icmp eq i64 %i.adg, 1, !dbg !102556
  br i1 %i.adh, label %bb.bl, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2697, !dbg !102556

bb.bl:                                            ; preds = %bb.bk
  fence acquire, !dbg !102557
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acs, i64 noundef 384, i64 noundef 16) #44, !dbg !102558, !noalias !98876
  br label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2697, !dbg !102559

bb.bm:                                            ; preds = %bb.i
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102560
  %i.adj = load i64, ptr %i.adi, align 8, !dbg !102560, !range !3063, !noundef !3011
  %i.adk = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102560
  %i.adl = load i64, ptr %i.adk, align 16, !dbg !102560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !dbg !102561
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102561
  %i.adn = load ptr, ptr %i.adm, align 16, !dbg !102561, !nonnull !3011, !noundef !3011 ; 4 uses
  store ptr %i.adn, ptr %i.dt, align 8, !dbg !102561
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102562
  %i.adp = load i32, ptr %i.ado, align 8, !dbg !102562, !noundef !3011 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102563
  %i.adr = load i32, ptr %i.adq, align 8, !dbg !102563, !range !3397, !noundef !3011
  %i.ads = trunc nuw i32 %i.adr to i1, !dbg !102564
  br i1 %i.ads, label %bb.bkw, label %bb.bkv, !dbg !102564

bb.bn:                                            ; preds = %bb.j
  %i.adt = load i64, ptr %i.te, align 8, !dbg !102565, !range !3398, !noundef !3011 ; 2 uses
  %.not2427 = icmp eq i64 %i.adt, 18, !dbg !102565
  %i.adu = getelementptr inbounds nuw i8, ptr %i.te, i64 8, !dbg !102566
  %i.adv = load ptr, ptr %i.adu, align 8, !dbg !102566 ; 2 uses
  br i1 %.not2427, label %bb.bp, label %bb.bo, !dbg !102567

bb.bo:                                            ; preds = %bb.bn
  %.sroa.61225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.te, i64 16, !dbg !102568
  %.sroa.31228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !102569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.31228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.61225.0..sroa_idx, i64 56, i1 false), !dbg !102568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.te), !dbg !102570
  store i64 %i.adt, ptr %0, align 8, !dbg !102569
  %.sroa.21227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102569
  store ptr %i.adv, ptr %.sroa.21227.0..sroa_idx, align 8, !dbg !102569
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl6source16PythonOptionsDslEBO_(ptr noalias noundef align 8 dereferenceable(24) %i.tf)
          to label %bb.bx unwind label %bb.c, !dbg !102571

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.te), !dbg !102570
  %i.adw = load ptr, ptr %i.tf, align 8, !dbg !102572, !noundef !3011
  %i.adx = getelementptr inbounds nuw i8, ptr %i.tf, i64 16, !dbg !102573
  %i.ady = load i8, ptr %i.adx, align 8, !dbg !102573, !range !3161, !noundef !3011
  %i.adz = getelementptr inbounds nuw i8, ptr %i.tf, i64 17, !dbg !102574
  %i.aea = load i8, ptr %i.adz, align 1, !dbg !102574, !range !3179, !noundef !3011
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.tf, i64 18, !dbg !102575
  %i.aec = load i8, ptr %i.aeb, align 2, !dbg !102575, !range !3179, !noundef !3011
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ti, i64 16, !dbg !102576
  store i64 0, ptr %i.aed, align 16, !dbg !102576
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 32, !dbg !102576
  store i64 6, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !102576
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 160, !dbg !102576
  store ptr null, ptr %.sroa.624.0..sroa_idx, align 16, !dbg !102576
  %.sroa.825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 176, !dbg !102576
  store ptr %i.adv, ptr %.sroa.825.0..sroa_idx, align 16, !dbg !102576
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 184, !dbg !102576
  store ptr %i.adw, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !102576
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 192, !dbg !102576
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 16, !dbg !102576
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 200, !dbg !102576
  store i8 %i.aea, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !102576
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 201, !dbg !102576
  store i8 %i.aec, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !102576
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 202, !dbg !102576
  store i8 %i.ady, ptr %.sroa.13.0..sroa_idx, align 2, !dbg !102576
  store i64 -9223372036854775804, ptr %i.ti, align 16, !dbg !102576
  %i.aee = getelementptr inbounds nuw i8, ptr %i.tf, i64 8, !dbg !102571 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98881), !dbg !102571
  %i.aef = load ptr, ptr %i.aee, align 8, !dbg !102577, !alias.scope !98881, !noundef !3011 ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, null, !dbg !102577
  br i1 %i.aeg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit, label %bb.bq, !dbg !102577

bb.bq:                                            ; preds = %bb.bp
  %i.aeh = atomicrmw add ptr %i.aef, i64 -1 release, align 8, !dbg !102578, !noalias !98882
  %i.aei = icmp eq i64 %i.aeh, 1, !dbg !102579
  br i1 %i.aei, label %bb.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit, !dbg !102579

bb.br:                                            ; preds = %bb.bq
  fence acquire, !dbg !102580
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIBx_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aee) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit unwind label %bb.c, !dbg !102581

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit: ; preds = %bb.bq, %bb.bp, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tf), !dbg !102571
  br label %bb.bs, !dbg !102571

bb.bs:                                            ; preds = %bb.apn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160, %bb.bic, %bb.bao, %bb.ayp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a, %bb.ate, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit, %bb.q
  %.sroa.01147.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01145.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ false, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01135.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ false, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01130.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ false, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01082.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01046.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01028.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ false, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01026.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ false, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01019.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ false, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01017.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01015.2 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %.sroa.01012.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2762 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2769 ], [ true, %bb.q ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2806 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2997 ], [ true, %bb.apn ], [ true, %bb.ate ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3072.a ], [ true, %bb.ayp ], [ true, %bb.bao ], [ true, %bb.bic ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 ], !dbg !102283
  %i.aej = load ptr, ptr %i.tm, align 16, !dbg !102582, !nonnull !3011, !align !3101, !noundef !3011
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 192, !dbg !102582
  %i.ael = load ptr, ptr %i.aek, align 8, !dbg !102582, !nonnull !3011, !align !3101, !noundef !3011 ; 4 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16, !dbg !102583 ; 2 uses
  %i.aen = load i64, ptr %i.aem, align 8, !dbg !102583, !noundef !3011 ; 5 uses
  %i.aeo = icmp ult i64 %i.aen, 25063510969714065, !dbg !102584
  call void @llvm.assume(i1 %i.aeo), !dbg !102585
  %i.aep = load i64, ptr %i.ael, align 8, !dbg !102586, !range !3217, !alias.scope !98886, !noundef !3011
  %i.aeq = icmp eq i64 %i.aen, %i.aep, !dbg !102587
  br i1 %i.aeq, label %bb.bt, label %bb.bjt, !dbg !102587

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ael)
          to label %bb.bjt unwind label %bb.bu, !dbg !102588, !noalias !98889

bb.bu:                                            ; preds = %bb.bt
  %i.aer = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.ti) #51
          to label %.body2700 unwind label %bb.bv, !dbg !102589

bb.bv:                                            ; preds = %bb.bu
  %i.aes = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !102590
  unreachable, !dbg !102590

bb.bw:                                            ; preds = %.invoke5012, %.invoke5011.a, %.invoke5010, %bb.bsb, %bb.bsa, %bb.brz, %bb.brx, %bb.brv, %bb.brt, %bb.brq, %bb.bro, %bb.brm, %bb.brl, %bb.brk, %bb.bri, %bb.brg, %bb.brf, %bb.bre, %bb.brc, %bb.bra, %bb.bqy, %bb.bqx, %bb.bqw, %bb.bqu, %bb.bqt, %bb.bqp, %bb.bqo, %bb.bqm, %bb.bqg, %bb.bpe, %bb.bpc, %bb.boj, %bb.bof, %bb.bnp, %bb.bnn, %bb.bne, %bb.bnc, %bb.bmo, %bb.bmm, %bb.blv, %bb.bls, %bb.blq, %bb.blh, %bb.bku, %bb.bks, %bb.bjb, %bb.bix, %bb.bhy, %bb.bht, %bb.bhs, %bb.bha, %bb.bgo, %bb.bgm, %bb.beh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3107, %bb.ban, %bb.azs, %bb.azi, %bb.axt, %bb.axq, %bb.awo, %bb.awn, %bb.awe, %bb.avk, %bb.auz, %bb.asy, %bb.arv, %bb.arm, %bb.apw, %bb.ano, %bb.ana, %.thread4062, %bb.alg, %bb.aks, %bb.ajy, %bb.aho, %bb.ahd, %bb.agh, %bb.afn, %bb.acz, %bb.zi, %bb.yw, %bb.ys, %bb.yg, %bb.wt, %bb.vk, %bb.uz, %bb.sk, %bb.rv, %bb.rr, %bb.qe, %bb.pu, %bb.ow, %bb.ou, %bb.oi, %bb.od, %bb.nz, %bb.nx, %.body2571.thread, %bb.my, %bb.mt, %bb.mr, %bb.ji, %bb.ig, %bb.if, %bb.fu, %bb.es, %bb.ed, %bb.iq, %bb.bkb, %bb.blk, %bb.bqj, %bb.bka, %bb.blj, %bb.bqi, %bb.ee, %bb.bbc, %.noexc3291, %.noexc3287, %.critedge2524, %.noexc3283, %.noexc3281, %.critedge2518, %.critedge2517, %.critedge2516, %.noexc3275.a, %.noexc3273.a, %.noexc3265.a, %.critedge2502, %.critedge2501.a, %.critedge2500.a, %.critedge2497.a, %.critedge2495, %.critedge2494, %.noexc3251, %bb.bqq, %.noexc3239, %bb.bqe, %bb.bpk, %bb.bpf, %bb.box, %bb.bou, %bb.bot, %bb.bos, %22, %bb.bol, %bb.boh, %bb.bog, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3222, %17, %bb.bnr, %bb.bng, %bb.bna, %bb.bmz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3201, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3199, %bb.bmk, %.body3193, %bb.blx, %bb.bli, %bb.bhw, %bb.bhv, %bb.bhu, %.noexc3134, %bb.bhq, %bb.bhp, %bb.bhi, %bb.bhh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeEEB1a_.exit3127, %bb.bgk, %bb.bgi, %bb.bgh, %bb.bfs, %bb.bfi, %bb.bfb, %bb.beu, %.thread4297, %bb.bdo, %bb.bde, %bb.bck, %bb.bcc, %.body, %bb.bar, %bb.bap, %.loopexit.split-lp4545, %.body2581, %.noexc3099, %bb.bai, %bb.aym, %.thread4208, %bb.awl, %bb.awg, %.noexc3034, %.critedge2473, %.thread4178, %bb.aut, %bb.aul, %bb.auc, %.thread4428, %bb.atn, %bb.atg, %.body2586, %bb.asn, %bb.asc, %bb.arj, %bb.aqv, %.thread4142, %bb.apf, %bb.ape, %bb.apd, %bb.apc, %.thread4106, %bb.aoy, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread, %bb.aox, %bb.aom, %.thread4016, %.loopexit.split-lp4525.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.alm, %bb.akt, %bb.akj, %bb.akf, %bb.ake, %bb.akd, %.noexc2946, %.critedge2466, %bb.ail, %bb.aih, %bb.aid, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit2928, %bb.agz, %bb.agw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, %.loopexit.split-lp4512, %bb.agi, %bb.agf, %bb.age, %bb.afv, %bb.afh, %bb.afa, %.thread3910, %.body2569, %.thread3921, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterEBM_.exit, %bb.acq, %.thread3932, %bb.abs, %bb.abn, %bb.abh, %bb.aal, %bb.aah, %bb.aab, %bb.zx, %bb.zr, %bb.zn, %bb.yv, %.thread3883, %bb.ww, %bb.wq, %bb.wh, %.loopexit.split-lp4485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.tw, %.loopexit.split-lp4480.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ti, %bb.sy, %.body2594, %bb.ru, %bb.rs, %bb.ro, %bb.rf, %.critedge2457.a, %bb.os, %bb.or, %bb.og, %bb.of, %bb.oe, %bb.ob, %bb.mv, %bb.mu, %.thread3695, %bb.lz, %bb.kr, %bb.kp, %.thread3652, %.body2589.thread, %bb.jx, %bb.gl, %.loopexit.split-lp, %.thread3614.a, %bb.fi, %bb.fb, %bb.ex, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit
  %i.aet = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !102591
  unreachable, !dbg !102591

bb.bx:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tf), !dbg !102571
  %i.aeu = load i64, ptr %1, align 16, !dbg !102274, !range !3407, !noundef !3011 ; 3 uses
  %i.aev = icmp ne i64 %i.aeu, -9223372036854775782, !dbg !102274
  call void @llvm.assume(i1 %i.aev), !dbg !102274
  %i.aew = add nsw i64 %i.aeu, 9223372036854775802, !dbg !102274
  %i.aex = icmp ugt i64 %i.aeu, -9223372036854775803, !dbg !102274
  %i.aey = select i1 %i.aex, i64 %i.aew, i64 20, !dbg !102274
  switch i64 %i.aey, label %.loopexit4494 [
    i64 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705
    i64 1, label %bb.by
    i64 2, label %bb.ca
    i64 3, label %bb.cc
    i64 4, label %bb.ci
    i64 5, label %bb.ck
    i64 6, label %bb.co
    i64 7, label %bb.cq
    i64 8, label %bb.cs
    i64 9, label %bb.cu
    i64 10, label %bb.cw
    i64 11, label %bb.cy
    i64 12, label %bb.da
    i64 13, label %bb.dc
    i64 14, label %bb.de
    i64 15, label %bb.dg
    i64 16, label %bb.di
    i64 17, label %bb.dk
    i64 18, label %bb.dn
    i64 19, label %bb.dq
    i64 20, label %bb.ds
    i64 21, label %bb.du
    i64 22, label %bb.dx
    i64 23, label %bb.dz
  ], !dbg !102274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705: ; preds = %bb.bpa, %.noexc3232, %bb.bod, %bb.boc, %bb.bnl, %.noexc3211, %bb.bnf, %.critedge2462, %bb.bmy, %bb.bmx, %bb.blw, %.critedge, %bb.blt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit, %bb.blp, %bb.blo, %bb.bkq, %bb.bko, %bb.bkn, %bb.bkm, %bb.bkl, %bb.bkk, %bb.bkj, %bb.oq, %bb.nu, %bb.ea, %bb.dz, %bb.dh, %bb.dg, %bb.cb, %bb.ca, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.kq, %.critedge2486, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit3231, %.critedge2475, %bb.bor, %bb.bok, %bb.bnq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_.exit3210, %.noexc3196, %8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bkp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_.exit, %bb.bjt, %bb.bib, %bb.ayq, %bb.aws, %bb.apk, %bb.id, %bb.hy, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2739, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2733, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit, %bb.bx
  ret void, !dbg !102592

bb.by:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bkj, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98890), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98891), !dbg !102593
  %i.afa = load ptr, ptr %i.aez, align 16, !dbg !102594, !alias.scope !98892, !nonnull !3011, !noundef !3011
  %i.afb = atomicrmw add ptr %i.afa, i64 -1 release, align 8, !dbg !102595, !noalias !98892
  %i.afc = icmp eq i64 %i.afb, 1, !dbg !102596
  br i1 %i.afc, label %bb.bz, label %8, !dbg !102596

bb.bz:                                            ; preds = %bb.by
  fence acquire, !dbg !102597, !noalias !98891
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aez) #52
          to label %8 unwind label %bb.bli, !dbg !102598, !inline_history !1539

bb.ca:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.bx, %bb.h
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98893), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98894), !dbg !102599
  %i.afe = load ptr, ptr %i.afd, align 8, !dbg !102600, !alias.scope !98895, !nonnull !3011, !noundef !3011
  %i.aff = atomicrmw add ptr %i.afe, i64 -1 release, align 8, !dbg !102601, !noalias !98895
  %i.afg = icmp eq i64 %i.aff, 1, !dbg !102602
  br i1 %i.afg, label %bb.cb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102602

bb.cb:                                            ; preds = %bb.ca
  fence acquire, !dbg !102603, !noalias !98894
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.afd) #52, !dbg !102604, !inline_history !1538
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102604

bb.cc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.ho, %bb.bx, %bb.h
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98896), !dbg !102274
  %i.afi = load i64, ptr %i.afh, align 8, !dbg !102605, !range !3127, !alias.scope !98896, !noundef !3011
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102605 ; 5 uses
  switch i64 %i.afi, label %bb.cd [
    i64 0, label %bb.cf
    i64 1, label %bb.cg
  ], !dbg !102605

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !98897), !dbg !102605
  call void @llvm.experimental.noalias.scope.decl(metadata !98898), !dbg !102606
  %i.afk = load ptr, ptr %i.afj, align 16, !dbg !102607, !alias.scope !98899, !nonnull !3011, !noundef !3011
  %i.afl = atomicrmw add ptr %i.afk, i64 -1 release, align 8, !dbg !102608, !noalias !98899
  %i.afm = icmp eq i64 %i.afl, 1, !dbg !102609
  br i1 %i.afm, label %bb.ce, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !102609

bb.ce:                                            ; preds = %bb.cd
  fence acquire, !dbg !102610
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.afj) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.blj, !dbg !102611

bb.cf:                                            ; preds = %bb.cc
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.blj, !dbg !102612

bb.cg:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !98900), !dbg !102605
  call void @llvm.experimental.noalias.scope.decl(metadata !98901), !dbg !102613
  %i.afn = load ptr, ptr %i.afj, align 16, !dbg !102614, !alias.scope !98902, !nonnull !3011, !noundef !3011
  %i.afo = atomicrmw add ptr %i.afn, i64 -1 release, align 8, !dbg !102615, !noalias !98902
  %i.afp = icmp eq i64 %i.afo, 1, !dbg !102616
  br i1 %i.afp, label %bb.ch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !102616

bb.ch:                                            ; preds = %bb.cg
  fence acquire, !dbg !102617
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.afj) #52, !dbg !102618
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !102618

bb.ci:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98903), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98904), !dbg !102619
  %i.afr = load ptr, ptr %i.afq, align 8, !dbg !102620, !alias.scope !98905, !nonnull !3011, !noundef !3011
  %i.afs = atomicrmw add ptr %i.afr, i64 -1 release, align 8, !dbg !102621, !noalias !98905
  %i.aft = icmp eq i64 %i.afs, 1, !dbg !102622
  br i1 %i.aft, label %bb.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !102622

bb.cj:                                            ; preds = %bb.ci
  fence acquire, !dbg !102623
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.afq) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.blr, !dbg !102624

bb.ck:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.hy, %bb.bx, %bb.h
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afu)
          to label %bb.cm unwind label %bb.cl, !dbg !102625

bb.cl:                                            ; preds = %bb.ck
  %i.afv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afu)
          to label %.body2710 unwind label %bb.cn, !dbg !102626

bb.cm:                                            ; preds = %bb.ck
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afu)
          to label %.critedge unwind label %bb.blu, !dbg !102627

bb.cn:                                            ; preds = %bb.cl
  %i.afw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !102625
  unreachable, !dbg !102625

bb.co:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98906), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98907), !dbg !102628
  %i.afy = load ptr, ptr %i.afx, align 16, !dbg !102629, !alias.scope !98908, !nonnull !3011, !noundef !3011
  %i.afz = atomicrmw add ptr %i.afy, i64 -1 release, align 8, !dbg !102630, !noalias !98908
  %i.aga = icmp eq i64 %i.afz, 1, !dbg !102631
  br i1 %i.aga, label %bb.cp, label %bb.bly, !dbg !102631

bb.cp:                                            ; preds = %bb.co
  fence acquire, !dbg !102632, !noalias !98907
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.afx) #52
          to label %bb.bly unwind label %bb.blx, !dbg !102633, !inline_history !1539

bb.cq:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98909), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98910), !dbg !102634
  %i.agc = load ptr, ptr %i.agb, align 16, !dbg !102635, !alias.scope !98911, !nonnull !3011, !noundef !3011
  %i.agd = atomicrmw add ptr %i.agc, i64 -1 release, align 8, !dbg !102636, !noalias !98911
  %i.age = icmp eq i64 %i.agd, 1, !dbg !102637
  br i1 %i.age, label %bb.cr, label %bb.bmp, !dbg !102637

bb.cr:                                            ; preds = %bb.cq
  fence acquire, !dbg !102638, !noalias !98910
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.agb) #52
          to label %bb.bmp unwind label %bb.bmn, !dbg !102639, !inline_history !1539

bb.cs:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98912), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98913), !dbg !102640
  %i.agg = load ptr, ptr %i.agf, align 8, !dbg !102641, !alias.scope !98914, !nonnull !3011, !noundef !3011
  %i.agh = atomicrmw add ptr %i.agg, i64 -1 release, align 8, !dbg !102642, !noalias !98914
  %i.agi = icmp eq i64 %i.agh, 1, !dbg !102643
  br i1 %i.agi, label %bb.ct, label %.critedge2462, !dbg !102643

bb.ct:                                            ; preds = %bb.cs
  fence acquire, !dbg !102644, !noalias !98913
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.agf) #52
          to label %.critedge2462 unwind label %bb.bnd, !dbg !102645, !inline_history !1539

bb.cu:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98915), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98916), !dbg !102646
  %i.agk = load ptr, ptr %i.agj, align 16, !dbg !102647, !alias.scope !98917, !nonnull !3011, !noundef !3011
  %i.agl = atomicrmw add ptr %i.agk, i64 -1 release, align 8, !dbg !102648, !noalias !98917
  %i.agm = icmp eq i64 %i.agl, 1, !dbg !102649
  br i1 %i.agm, label %bb.cv, label %.critedge2464, !dbg !102649

bb.cv:                                            ; preds = %bb.cu
  fence acquire, !dbg !102650, !noalias !98916
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.agj) #52
          to label %.critedge2464 unwind label %bb.bng, !dbg !102651, !inline_history !1539

bb.cw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bkk, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98918), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98919), !dbg !102652
  %i.ago = load ptr, ptr %i.agn, align 8, !dbg !102653, !alias.scope !98920, !nonnull !3011, !noundef !3011
  %i.agp = atomicrmw add ptr %i.ago, i64 -1 release, align 8, !dbg !102654, !noalias !98920
  %i.agq = icmp eq i64 %i.agp, 1, !dbg !102655
  br i1 %i.agq, label %bb.cx, label %bb.bnj, !dbg !102655

bb.cx:                                            ; preds = %bb.cw
  fence acquire, !dbg !102656, !noalias !98919
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.agn) #52
          to label %bb.bnj unwind label %bb.bnm, !dbg !102657, !inline_history !1539

bb.cy:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bkl, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98921), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98922), !dbg !102658
  %i.ags = load ptr, ptr %i.agr, align 8, !dbg !102659, !alias.scope !98923, !nonnull !3011, !noundef !3011
  %i.agt = atomicrmw add ptr %i.ags, i64 -1 release, align 8, !dbg !102660, !noalias !98923
  %i.agu = icmp eq i64 %i.agt, 1, !dbg !102661
  br i1 %i.agu, label %bb.cz, label %bb.bnq, !dbg !102661

bb.cz:                                            ; preds = %bb.cy
  fence acquire, !dbg !102662
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.agr) #52
          to label %bb.bnq unwind label %bb.bnr, !dbg !102663, !inline_history !94672

bb.da:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bkm, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 280, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98924), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98925), !dbg !102664
  %i.agw = load ptr, ptr %i.agv, align 8, !dbg !102665, !alias.scope !98926, !nonnull !3011, !noundef !3011
  %i.agx = atomicrmw add ptr %i.agw, i64 -1 release, align 8, !dbg !102666, !noalias !98926
  %i.agy = icmp eq i64 %i.agx, 1, !dbg !102667
  br i1 %i.agy, label %bb.db, label %bb.bns, !dbg !102667

bb.db:                                            ; preds = %bb.da
  fence acquire, !dbg !102668, !noalias !98925
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.agv) #52
          to label %bb.bns unwind label %17, !dbg !102669, !inline_history !1539

bb.dc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bkn, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98927), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98928), !dbg !102670
  %i.aha = load ptr, ptr %i.agz, align 8, !dbg !102671, !alias.scope !98929, !nonnull !3011, !noundef !3011
  %i.ahb = atomicrmw add ptr %i.aha, i64 -1 release, align 8, !dbg !102672, !noalias !98929
  %i.ahc = icmp eq i64 %i.ahb, 1, !dbg !102673
  br i1 %i.ahc, label %bb.dd, label %bb.bok, !dbg !102673

bb.dd:                                            ; preds = %bb.dc
  fence acquire, !dbg !102674, !noalias !98928
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.agz) #52
          to label %bb.bok unwind label %bb.bol, !dbg !102675, !inline_history !1539

bb.de:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bko, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98930), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98931), !dbg !102676
  %i.ahe = load ptr, ptr %i.ahd, align 8, !dbg !102677, !alias.scope !98932, !nonnull !3011, !noundef !3011
  %i.ahf = atomicrmw add ptr %i.ahe, i64 -1 release, align 8, !dbg !102678, !noalias !98932
  %i.ahg = icmp eq i64 %i.ahf, 1, !dbg !102679
  br i1 %i.ahg, label %bb.df, label %bb.bom, !dbg !102679

bb.df:                                            ; preds = %bb.de
  fence acquire, !dbg !102680, !noalias !98931
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ahd) #52
          to label %bb.bom unwind label %22, !dbg !102681, !inline_history !1539

bb.dg:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98933), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98934), !dbg !102682
  %i.ahi = load ptr, ptr %i.ahh, align 8, !dbg !102683, !alias.scope !98935, !nonnull !3011, !noundef !3011
  %i.ahj = atomicrmw add ptr %i.ahi, i64 -1 release, align 8, !dbg !102684, !noalias !98935
  %i.ahk = icmp eq i64 %i.ahj, 1, !dbg !102685
  br i1 %i.ahk, label %bb.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102685

bb.dh:                                            ; preds = %bb.dg
  fence acquire, !dbg !102686, !noalias !98934
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ahh) #52, !dbg !102687, !inline_history !1538
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102687

bb.di:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98936), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98937), !dbg !102688
  %i.ahm = load ptr, ptr %i.ahl, align 16, !dbg !102689, !alias.scope !98938, !nonnull !3011, !noundef !3011
  %i.ahn = atomicrmw add ptr %i.ahm, i64 -1 release, align 8, !dbg !102690, !noalias !98938
  %i.aho = icmp eq i64 %i.ahn, 1, !dbg !102691
  br i1 %i.aho, label %bb.dj, label %.critedge2475, !dbg !102691

bb.dj:                                            ; preds = %bb.di
  fence acquire, !dbg !102692, !noalias !98937
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ahl) #52
          to label %.critedge2475 unwind label %bb.bot, !dbg !102693, !inline_history !1539

bb.dk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bkp, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit unwind label %bb.dl, !dbg !102694

bb.dl:                                            ; preds = %bb.dk
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahp)
          to label %common.resume unwind label %bb.dm, !dbg !102695

bb.dm:                                            ; preds = %bb.dl
  %i.ahr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !102694
  unreachable, !dbg !102694

common.resume:                                    ; preds = %bb.bov, %bb.bnh, %bb.dv, %bb.do, %bb.dl, %.critedge2488, %bb.bke
  %common.resume.op = phi { ptr, i32 } [ %i.eyp, %bb.bnh ], [ %i.ahq, %bb.dl ], [ %i.aht, %bb.do ], [ %i.esm, %bb.bke ], [ %i.eso, %.critedge2488 ], [ %i.aie, %bb.dv ], [ %i.fbf, %bb.bov ]
  resume { ptr, i32 } %common.resume.op, !dbg !102696

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit: ; preds = %bb.dk
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahp), !dbg !102697
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.dn:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.ahs = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahs)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2733 unwind label %bb.do, !dbg !102698

bb.do:                                            ; preds = %bb.dn
  %i.aht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahs)
          to label %common.resume unwind label %bb.dp, !dbg !102699

bb.dp:                                            ; preds = %bb.do
  %i.ahu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !102698
  unreachable, !dbg !102698

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2733: ; preds = %bb.dn
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahs), !dbg !102700
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.dq:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.ahv = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98939), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98940), !dbg !102701
  %i.ahw = load ptr, ptr %i.ahv, align 16, !dbg !102702, !alias.scope !98941, !nonnull !3011, !noundef !3011
  %i.ahx = atomicrmw add ptr %i.ahw, i64 -1 release, align 8, !dbg !102703, !noalias !98941
  %i.ahy = icmp eq i64 %i.ahx, 1, !dbg !102704
  br i1 %i.ahy, label %bb.dr, label %.critedge2481, !dbg !102704

bb.dr:                                            ; preds = %bb.dq
  fence acquire, !dbg !102705, !noalias !98940
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ahv) #52
          to label %.critedge2481 unwind label %bb.bou, !dbg !102706, !inline_history !1539

bb.ds:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bib, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 360, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98942), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98943), !dbg !102707
  %i.aia = load ptr, ptr %i.ahz, align 8, !dbg !102708, !alias.scope !98944, !nonnull !3011, !noundef !3011
  %i.aib = atomicrmw add ptr %i.aia, i64 -1 release, align 8, !dbg !102709, !noalias !98944
  %i.aic = icmp eq i64 %i.aib, 1, !dbg !102710
  br i1 %i.aic, label %bb.dt, label %.critedge2486, !dbg !102710

bb.dt:                                            ; preds = %bb.ds
  fence acquire, !dbg !102711, !noalias !98943
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ahz) #52
          to label %.critedge2486 unwind label %bb.box, !dbg !102712, !inline_history !1539

bb.du:                                            ; preds = %bb.ho, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aid)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2739 unwind label %bb.dv, !dbg !102713

bb.dv:                                            ; preds = %bb.du
  %i.aie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aid)
          to label %common.resume unwind label %bb.dw, !dbg !102714

bb.dw:                                            ; preds = %bb.dv
  %i.aif = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !102713
  unreachable, !dbg !102713

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2739: ; preds = %bb.du
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aid), !dbg !102715
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.dx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, %bb.bkq, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.aig = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98945), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98946), !dbg !102716
  %i.aih = load ptr, ptr %i.aig, align 8, !dbg !102717, !alias.scope !98947, !nonnull !3011, !noundef !3011
  %i.aii = atomicrmw add ptr %i.aih, i64 -1 release, align 8, !dbg !102718, !noalias !98947
  %i.aij = icmp eq i64 %i.aii, 1, !dbg !102719
  br i1 %i.aij, label %bb.dy, label %bb.boy, !dbg !102719

bb.dy:                                            ; preds = %bb.dx
  fence acquire, !dbg !102720, !noalias !98946
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aig) #52
          to label %bb.boy unwind label %bb.bpb, !dbg !102721, !inline_history !1539

bb.dz:                                            ; preds = %bb.ho, %bb.bib, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3131, %bb.baq, %bb.ayq, %bb.aws, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.apk, %bb.qj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2802, %bb.oq, %bb.nu, %bb.kq, %bb.hy, %bb.bx, %bb.h
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98948), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !98949), !dbg !102722
  %i.ail = load ptr, ptr %i.aik, align 16, !dbg !102723, !alias.scope !98950, !nonnull !3011, !noundef !3011
  %i.aim = atomicrmw add ptr %i.ail, i64 -1 release, align 8, !dbg !102724, !noalias !98950
  %i.ain = icmp eq i64 %i.aim, 1, !dbg !102725
  br i1 %i.ain, label %bb.ea, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102725

bb.ea:                                            ; preds = %bb.dz
  fence acquire, !dbg !102726, !noalias !98949
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aik) #52, !dbg !102727, !inline_history !1538
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102727

bb.eb:                                            ; preds = %bb.ee
  %i.aio = getelementptr inbounds nuw i8, ptr %i.tf, i64 8, !dbg !102571 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98951), !dbg !102571
  %i.aip = load ptr, ptr %i.aio, align 8, !dbg !102728, !alias.scope !98951, !noundef !3011 ; 2 uses
  %i.aiq = icmp eq ptr %i.aip, null, !dbg !102728
  br i1 %i.aiq, label %.critedge2460, label %bb.ec, !dbg !102728

bb.ec:                                            ; preds = %bb.eb
  %i.air = atomicrmw add ptr %i.aip, i64 -1 release, align 8, !dbg !102729, !noalias !98952
  %i.ais = icmp eq i64 %i.air, 1, !dbg !102730
  br i1 %i.ais, label %bb.ed, label %.critedge2460, !dbg !102730

bb.ed:                                            ; preds = %bb.ec
  fence acquire, !dbg !102731
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIBx_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aio) #52
          to label %.critedge2460 unwind label %bb.bw, !dbg !102732

bb.ee:                                            ; preds = %bb.j
  %i.ait = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.478.13605 = extractvalue { ptr, i32 } %i.ait, 1 ; 3 uses
  %.sroa.02013.13606 = extractvalue { ptr, i32 } %i.ait, 0 ; 3 uses
  %.val2606 = load ptr, ptr %i.tf, align 8, !dbg !102571, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECsfcROwRM8ZtH_11polars_plan(ptr %.val2606) #51
          to label %bb.eb unwind label %bb.bw, !dbg !102571

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.er, %bb.eq, %bb.es, %bb.ef
  %.pn2425 = phi { ptr, i32 } [ %i.aiu, %bb.ef ], [ %.pn2423, %bb.es ], [ %.pn2423, %bb.eq ], [ %.pn2423, %bb.er ] ; 2 uses
  %.sroa.478.2 = extractvalue { ptr, i32 } %.pn2425, 1
  %.sroa.02013.2 = extractvalue { ptr, i32 } %.pn2425, 0
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ss) #51
          to label %.critedge2460 unwind label %bb.bw, !dbg !102733

bb.ef:                                            ; preds = %bb.hl, %bb.en, %bb.em, %bb.ej, %bb.eh, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit: ; preds = %bb.n, %bb.m, %bb.l
  %i.aiv = icmp eq i64 %.sroa.03546.0.copyload3547, -9223372036854775778, !dbg !102734
  br i1 %i.aiv, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread, label %bb.eg, !dbg !102735

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread: ; preds = %bb.k, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit
  %.sroa.63548.03613 = phi ptr [ %.sroa.63548.0.copyload3550, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit ], [ %i.ux, %bb.k ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63548.03613) ]
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE15unwrap_or_clone0BO_(ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.sq, ptr noundef nonnull %.sroa.63548.03613)
          to label %bb.eh unwind label %bb.ef, !dbg !102736

bb.eg:                                            ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit
  store i64 %.sroa.03546.0.copyload3547, ptr %i.sq, align 16, !dbg !102737
  %.sroa.63548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sq, i64 8, !dbg !102737
  store ptr %.sroa.63548.0.copyload3550, ptr %.sroa.63548.0..sroa_idx, align 8, !dbg !102737
  %.sroa.83551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sq, i64 16, !dbg !102737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83551.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83551, i64 352, i1 false), !dbg !102737
  br label %bb.eh, !dbg !102738

bb.eh:                                            ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83551), !dbg !102739
  %i.aiw = load ptr, ptr %i.tm, align 16, !dbg !102740, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.dh, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.sq, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.aiw)
          to label %bb.ei unwind label %bb.ef, !dbg !98956

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sq), !dbg !102741
  %i.aix = load i64, ptr %i.dh, align 16, !dbg !102742, !range !3398, !noundef !3011
  %.not2411.a = icmp eq i64 %i.aix, 18, !dbg !102742
  br i1 %.not2411.a, label %bb.el, label %bb.ej, !dbg !102743

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !102744
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0s5_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.di, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.dh)
          to label %bb.ek unwind label %bb.ef, !dbg !102744

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.dh, ptr noundef nonnull align 8 dereferenceable(72) %i.di, i64 72, i1 false), !dbg !102745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !102746
  %.sroa.71290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16, !dbg !102747
  %.sroa.31293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !102748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.31293.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.71290.0..sroa_idx, i64 56, i1 false), !dbg !102747
  %i.aiy = load <2 x i64>, ptr %i.dh, align 16, !dbg !102747
  store <2 x i64> %i.aiy, ptr %0, align 8, !dbg !102748
  br label %bb.hm, !dbg !102749

bb.el:                                            ; preds = %bb.ei
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.dh, i64 8, !dbg !102750
  %i.aja = load i64, ptr %i.aiz, align 8, !dbg !102750, !noundef !3011 ; 3 uses
  store i64 %i.aja, ptr %i.sr, align 8, !dbg !102751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sp), !dbg !102752
  %i.ajb = load ptr, ptr %i.tm, align 16, !dbg !102753, !nonnull !3011, !align !3101, !noundef !3011
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 192, !dbg !102753
  %i.ajd = load ptr, ptr %i.ajc, align 8, !dbg !102753, !nonnull !3011, !align !3101, !noundef !3011 ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16, !dbg !102754
  %i.ajf = load i64, ptr %i.aje, align 8, !dbg !102754, !noundef !3011
  %i.ajg = icmp ult i64 %i.aja, %i.ajf, !dbg !102755
  br i1 %i.ajg, label %bb.en, label %bb.em, !dbg !102755, !prof !3155

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #49
          to label %bb.eo unwind label %bb.ef, !dbg !102756

bb.en:                                            ; preds = %bb.el
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8, !dbg !102757
  %i.aji = load ptr, ptr %i.ajh, align 8, !dbg !102757, !nonnull !3011, !noundef !3011
  %i.ajj = getelementptr inbounds nuw [368 x i8], ptr %i.aji, i64 %i.aja, !dbg !102758
  %i.ajk = invoke { i64, ptr } @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR6schema(ptr noundef nonnull align 16 %i.ajj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ajd)
          to label %bb.ep unwind label %bb.ef, !dbg !102759 ; 2 uses

bb.eo:                                            ; preds = %bb.biu, %bb.bir, %bb.bda, %bb.bcs, %bb.bbw, %bb.azo, %bb.azc, %bb.axn, %bb.axl, %bb.axh, %bb.atl, %bb.ars, %bb.aqk, %bb.apo, %bb.amr, %bb.alb, %bb.ahw, %bb.aee, %bb.adz, %bb.abz, %bb.abv, %bb.zd, %bb.xk, %bb.xc, %bb.wy, %bb.wa, %bb.ue, %bb.ts, %bb.tp, %bb.sq, %bb.sg, %bb.sd, %bb.rc, %bb.pq, %bb.pl, %bb.je, %bb.ip, %bb.ib, %bb.ev, %bb.em
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.ajl = extractvalue { i64, ptr } %i.ajk, 0, !dbg !102753
  %i.ajm = extractvalue { i64, ptr } %i.ajk, 1, !dbg !102753
  store i64 %i.ajl, ptr %i.sp, align 8, !dbg !102753
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.sp, i64 8, !dbg !102753 ; 9 uses
  store ptr %i.ajm, ptr %i.ajn, align 8, !dbg !102753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.so), !dbg !102760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !102761
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dg, i64 noundef 1, i1 noundef zeroext false, i64 noundef 16, i64 noundef 144)
          to label %bb.eu unwind label %bb.et, !dbg !102761

bb.eq:                                            ; preds = %bb.ex, %bb.et
  %.pn2423 = phi { ptr, i32 } [ %i.ajt, %bb.et ], [ %.pn2421, %bb.ex ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98981), !dbg !102762
  %i.ajo = load i64, ptr %i.sp, align 8, !dbg !102763, !range !3063, !alias.scope !98981, !noundef !3011
  %i.ajp = icmp eq i64 %i.ajo, 0, !dbg !102763
  br i1 %i.ajp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.er, !dbg !102763

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !98982), !dbg !102763
  call void @llvm.experimental.noalias.scope.decl(metadata !98983), !dbg !102764
  %i.ajq = load ptr, ptr %i.ajn, align 8, !dbg !102765, !alias.scope !98984, !nonnull !3011, !noundef !3011
  %i.ajr = atomicrmw add ptr %i.ajq, i64 -1 release, align 8, !dbg !102766, !noalias !98984
  %i.ajs = icmp eq i64 %i.ajr, 1, !dbg !102767
  br i1 %i.ajs, label %bb.es, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !102767

bb.es:                                            ; preds = %bb.er
  fence acquire, !dbg !102768
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ajn) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bw, !dbg !102769

bb.et:                                            ; preds = %bb.hh, %bb.ev, %bb.ep
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.eu:                                            ; preds = %bb.ep
  %i.aju = load i64, ptr %i.dg, align 8, !dbg !102761, !range !3063, !noundef !3011
  %i.ajv = trunc nuw i64 %i.aju to i1, !dbg !102770
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !102771
  %i.ajx = load i64, ptr %i.ajw, align 8, !dbg !102771, !range !3064, !noundef !3011 ; 3 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.dg, i64 16, !dbg !102771 ; 2 uses
  br i1 %i.ajv, label %bb.ev, label %bb.ew, !dbg !102770, !prof !3065

bb.ev:                                            ; preds = %bb.eu
  %i.ajz = load i64, ptr %i.ajy, align 8, !dbg !102772
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ajx, i64 %i.ajz) #49
          to label %bb.eo unwind label %bb.et, !dbg !102773

bb.ew:                                            ; preds = %bb.eu
  %i.aka = load ptr, ptr %i.ajy, align 8, !dbg !102774, !nonnull !3011, !noundef !3011
  %i.akb = icmp ne i64 %i.ajx, 0, !dbg !102775
  call void @llvm.assume(i1 %i.akb), !dbg !102776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !102777
  store i64 %i.ajx, ptr %i.so, align 8, !dbg !102778
  %i.akc = getelementptr inbounds nuw i8, ptr %i.so, i64 8, !dbg !102778 ; 3 uses
  store ptr %i.aka, ptr %i.akc, align 8, !dbg !102778
  %i.akd = getelementptr inbounds nuw i8, ptr %i.so, i64 16, !dbg !102778 ; 4 uses
  store i64 0, ptr %i.akd, align 8, !dbg !102778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sn), !dbg !99003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sm), !dbg !98987
  %i.ake = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.ey unwind label %bb.fm, !dbg !102779

bb.ex:                                            ; preds = %bb.fm, %.loopexit.split-lp, %.thread3614.a, %bb.fi, %bb.fb
  %.pn2421 = phi { ptr, i32 } [ %i.akp, %bb.fb ], [ %.pn2419, %.loopexit.split-lp ], [ %.pn24173617, %.thread3614.a ], [ %lpad.thr_comm.split-lp, %bb.fm ], [ %i.all, %bb.fi ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.so) #51
          to label %bb.eq unwind label %bb.bw, !dbg !102780

bb.ey:                                            ; preds = %bb.ew
  %i.akf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !102781
  %i.akg = icmp eq i8 %i.akf, 2, !dbg !102782
  br i1 %i.akg, label %bb.fa, label %bb.ez, !dbg !102782, !prof !3155

bb.ez:                                            ; preds = %bb.ey
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
bb.akc:                                           ; preds = %bb.akb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !dbg !104621
  br label %bb.akh, !dbg !104760

bb.akd:                                           ; preds = %bb.ajz
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.im) #51
          to label %.thread3943 unwind label %bb.bw, !dbg !104706

.loopexit4519:                                    ; preds = %bb.ajg, %bb.aiz, %bb.aiq, %bb.air, %bb.aix
  %lpad.loopexit4521 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ake

.loopexit.split-lp4520:                           ; preds = %bb.ajc, %._crit_edge4646.thread
  %.not4445.not4609 = phi i1 [ false, %bb.ajc ], [ true, %._crit_edge4646.thread ]
  %lpad.loopexit.split-lp4522 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ake

bb.ake:                                           ; preds = %.loopexit.split-lp4520, %.loopexit4519
  %.not4445.not4608 = phi i1 [ false, %.loopexit4519 ], [ %.not4445.not4609, %.loopexit.split-lp4520 ]
  %lpad.phi4523 = phi { ptr, i32 } [ %lpad.loopexit4521, %.loopexit4519 ], [ %lpad.loopexit.split-lp4522, %.loopexit.split-lp4520 ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ir) #51
          to label %bb.ajf unwind label %bb.bw, !dbg !104682

bb.akf:                                           ; preds = %.thread3943.thread, %.thread3943, %bb.ajf
  %.pn22523960 = phi { ptr, i32 } [ %i.cqf, %.thread3943.thread ], [ %lpad.phi4523, %bb.ajf ], [ %.pn2246, %.thread3943 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.is) #51
          to label %bb.ail unwind label %bb.bw, !dbg !104649

bb.akg:                                           ; preds = %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it), !dbg !104614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6530), !dbg !104614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !dbg !104621
  br label %bb.akh, !dbg !104740

bb.akh:                                           ; preds = %bb.akc, %bb.akn, %bb.akg
  %.sroa.0951.6 = phi i8 [ 0, %bb.akg ], [ %.sroa.0951.4, %bb.akn ], [ 0, %bb.akc ], !dbg !104603 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100722), !dbg !104740
  call void @llvm.experimental.noalias.scope.decl(metadata !100723), !dbg !104761
  %i.cqg = load ptr, ptr %i.iy, align 8, !dbg !104762, !alias.scope !100724, !nonnull !3011, !noundef !3011
  %i.cqh = atomicrmw add ptr %i.cqg, i64 -1 release, align 8, !dbg !104763, !noalias !100724
  %i.cqi = icmp eq i64 %i.cqh, 1, !dbg !104764
  br i1 %i.cqi, label %bb.aki, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2949, !dbg !104764

bb.aki:                                           ; preds = %bb.akh
  fence acquire, !dbg !104765
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.iy) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2949 unwind label %bb.ahp, !dbg !104766

bb.akj:                                           ; preds = %bb.ajw, %bb.akm
  %.sroa.0949.2 = phi i1 [ false, %bb.akm ], [ true, %bb.ajw ], !dbg !104767
  %i.cqj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ix) #51
          to label %bb.aju unwind label %bb.bw, !dbg !104768

bb.akk:                                           ; preds = %bb.ajw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !dbg !104769
  %i.cqk = load i64, ptr %.sroa.6573.0..sroa_idx574, align 8, !dbg !104770, !noundef !3011 ; 2 uses
  %i.cql = icmp ult i64 %i.cqk, 384307168202282326, !dbg !104771
  call void @llvm.assume(i1 %i.cql), !dbg !104772
  %i.cqm = icmp eq i64 %i.cqk, 0, !dbg !104773
  br i1 %i.cqm, label %bb.akl, label %bb.akm, !dbg !104773

bb.akl:                                           ; preds = %bb.akk
  %i.cqn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !104774
  store i64 %i.cqa, ptr %i.cqn, align 8, !dbg !104774
  store i64 18, ptr %0, align 8, !dbg !104774
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ix)
          to label %bb.akn unwind label %.split3977.thread, !dbg !104768

bb.akm:                                           ; preds = %bb.akk
  %i.cqo = load ptr, ptr %i.tm, align 16, !dbg !104775, !nonnull !3011, !align !3101, !noundef !3011
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 192, !dbg !104775
  %i.cqq = load ptr, ptr %i.cqp, align 8, !dbg !104775, !nonnull !3011, !align !3101, !noundef !3011 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib), !dbg !104776
  %i.cqr = load ptr, ptr %i.iy, align 8, !dbg !104777, !nonnull !3011, !noundef !3011
  %i.cqs = getelementptr inbounds nuw i8, ptr %i.ib, i64 16, !dbg !104776
  store i64 %i.cqa, ptr %i.cqs, align 16, !dbg !104776
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.ib, i64 8, !dbg !104776
  store ptr %i.cqr, ptr %i.cqt, align 8, !dbg !104776
  store i64 -9223372036854775799, ptr %i.ib, align 16, !dbg !104776
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqq, i64 16, !dbg !104778
  %i.cqv = load i64, ptr %i.cqu, align 8, !dbg !104778, !noundef !3011 ; 2 uses
  %i.cqw = icmp ult i64 %i.cqv, 25063510969714065, !dbg !104779
  call void @llvm.assume(i1 %i.cqw), !dbg !104780
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8push_mutBL_(ptr noalias noundef align 8 dereferenceable(24) %i.cqq, ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.ib)
          to label %bb.ako unwind label %bb.akj, !dbg !104781

bb.akn:                                           ; preds = %bb.akl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ix), !dbg !104768
  br label %bb.akh, !dbg !104760

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2949: ; preds = %bb.akh, %bb.aki, %bb.akp
  %.sroa.0951.7 = phi i8 [ %.sroa.0951.4, %bb.akp ], [ %.sroa.0951.6, %bb.aki ], [ %.sroa.0951.6, %bb.akh ], !dbg !104603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy), !dbg !104740
  %i.cqx = load i64, ptr %i.ja, align 8, !dbg !104569, !range !3064, !noundef !3011
  %i.cqy = icmp ne i64 %i.cqx, -9223372036854775808, !dbg !104569
  %i.cqz = trunc nuw i8 %.sroa.0951.7 to i1, !dbg !104569
  %or.cond = select i1 %i.cqy, i1 %i.cqz, i1 false, !dbg !104569
  br i1 %or.cond, label %bb.akr, label %bb.akq, !dbg !104569

bb.ako:                                           ; preds = %bb.akm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !dbg !104782
  %i.cra = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !104783
  store i64 %i.cqv, ptr %i.cra, align 8, !dbg !104783
  store i64 18, ptr %0, align 8, !dbg !104783
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ix)
          to label %bb.akp unwind label %.split3977, !dbg !104768

bb.akp:                                           ; preds = %bb.ako
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ix), !dbg !104768
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2949, !dbg !104760

bb.akq:                                           ; preds = %bb.akr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2949, %bb.ahu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja), !dbg !104569
  br label %bb.ho, !dbg !102939

bb.akr:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2949, %bb.ahu
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ja)
          to label %bb.akq unwind label %bb.c, !dbg !104569

.thread3971:                                      ; preds = %bb.aid, %bb.aih, %bb.ail, %.split3977.thread, %bb.aju
  %.pn22573976 = phi { ptr, i32 } [ %lpad.thr_comm3978, %.split3977.thread ], [ %i.cqj, %bb.aju ], [ %i.clt, %bb.aid ], [ %i.cmb, %bb.aih ], [ %.pn2252.pn, %bb.ail ] ; 2 uses
  %.sroa.0951.23975 = phi i8 [ %.sroa.0951.3.ph, %.split3977.thread ], [ %.sroa.0951.4, %bb.aju ], [ 0, %bb.aid ], [ 0, %bb.aih ], [ 0, %bb.ail ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100733), !dbg !104740
  call void @llvm.experimental.noalias.scope.decl(metadata !100734), !dbg !104784
  %i.crb = load ptr, ptr %i.iy, align 8, !dbg !104785, !alias.scope !100735, !nonnull !3011, !noundef !3011
  %i.crc = atomicrmw add ptr %i.crb, i64 -1 release, align 8, !dbg !104786, !noalias !100735
  %i.crd = icmp eq i64 %i.crc, 1, !dbg !104787
  br i1 %i.crd, label %bb.aks, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951, !dbg !104787

bb.aks:                                           ; preds = %.thread3971
  fence acquire, !dbg !104788
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.iy) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951 unwind label %bb.bw, !dbg !104789

bb.akt:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2951
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ja) #51
          to label %.critedge2460 unwind label %bb.bw, !dbg !104569

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954: ; preds = %bb.alf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread, %bb.alg, %bb.aku
  %.sroa.01003.0 = phi i8 [ %.sroa.01003.1, %bb.aku ], [ %.sroa.01003.2, %bb.alg ], [ %.sroa.01003.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread ], [ %.sroa.01003.2, %bb.alf ], !dbg !102456 ; 2 uses
  %.sroa.0998.0 = phi i8 [ %.sroa.0998.1, %bb.aku ], [ %.sroa.0998.2, %bb.alg ], [ %.sroa.0998.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread ], [ %.sroa.0998.2, %bb.alf ], !dbg !102458
  %.pn2235 = phi { ptr, i32 } [ %i.cre, %bb.aku ], [ %.pn2233, %bb.alg ], [ %.pn2233, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread ], [ %.pn2233, %bb.alf ] ; 2 uses
  %cond2543 = icmp eq i8 %.sroa.0998.0, 0, !dbg !104790
  br i1 %cond2543, label %bb.aoz, label %bb.apd, !dbg !104790

bb.aku:                                           ; preds = %bb.aou, %bb.alw, %bb.alc, %bb.alb, %bb.aky, %bb.akw, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689.thread
  %.sroa.01003.1 = phi i8 [ 1, %bb.aky ], [ 1, %bb.alw ], [ 0, %bb.aou ], [ 1, %bb.alc ], [ 1, %bb.alb ], [ 1, %bb.akw ], [ 1, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689.thread ], !dbg !103129
  %.sroa.0998.1 = phi i8 [ 1, %bb.aky ], [ 1, %bb.alw ], [ %.sroa.0998.9405740854103, %bb.aou ], [ 1, %bb.alc ], [ 1, %bb.alb ], [ 1, %bb.akw ], [ 1, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689.thread ], !dbg !102458
  %i.cre = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.crf = icmp eq i64 %.sroa.03525.0.copyload3526, -9223372036854775778, !dbg !104791
  br i1 %i.crf, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689.thread, label %bb.akv, !dbg !104792

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689.thread: ; preds = %bb.ap, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689
  %.sroa.63527.03991 = phi ptr [ %.sroa.63527.0.copyload3529, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689 ], [ %i.zx, %bb.ap ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63527.03991) ]
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE15unwrap_or_clone0BO_(ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.ra, ptr noundef nonnull %.sroa.63527.03991)
          to label %bb.akw unwind label %bb.aku, !dbg !104793

bb.akv:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689
  store i64 %.sroa.03525.0.copyload3526, ptr %i.ra, align 16, !dbg !104794
  %.sroa.63527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ra, i64 8, !dbg !104794
  store ptr %.sroa.63527.0.copyload3529, ptr %.sroa.63527.0..sroa_idx, align 8, !dbg !104794
  %.sroa.83530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ra, i64 16, !dbg !104794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83530.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83530, i64 352, i1 false), !dbg !104794
  br label %bb.akw, !dbg !104795

bb.akw:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2689.thread, %bb.akv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83530), !dbg !104796
  %i.crg = load ptr, ptr %i.tm, align 16, !dbg !104797, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cu, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.ra, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.crg)
          to label %bb.akx unwind label %bb.aku, !dbg !100739

bb.akx:                                           ; preds = %bb.akw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ra), !dbg !104798
  %i.crh = load i64, ptr %i.cu, align 16, !dbg !104799, !range !3398, !noundef !3011
  %.not2207 = icmp eq i64 %i.crh, 18, !dbg !104799
  br i1 %.not2207, label %bb.ala, label %bb.aky, !dbg !104800

bb.aky:                                           ; preds = %bb.akx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !104801
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0sb_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cv, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.cu)
          to label %bb.akz unwind label %bb.aku, !dbg !104801

bb.akz:                                           ; preds = %bb.aky
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.cu, ptr noundef nonnull align 8 dereferenceable(72) %i.cv, i64 72, i1 false), !dbg !104802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !104803
  %.sroa.71355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16, !dbg !104804
  %.sroa.31358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !104805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.31358.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.71355.0..sroa_idx, i64 56, i1 false), !dbg !104804
  %i.cri = load <2 x i64>, ptr %i.cu, align 16, !dbg !104804
  store <2 x i64> %i.cri, ptr %0, align 8, !dbg !104805
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.rb)
          to label %.thread4112 unwind label %bb.apc, !dbg !104790

bb.ala:                                           ; preds = %bb.akx
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !104806
  %i.crk = load i64, ptr %i.crj, align 8, !dbg !104806, !noundef !3011 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qz), !dbg !104807
  %i.crl = load ptr, ptr %i.tm, align 16, !dbg !104808, !nonnull !3011, !align !3101, !noundef !3011
  %i.crm = getelementptr inbounds nuw i8, ptr %i.crl, i64 192, !dbg !104808
  %i.crn = load ptr, ptr %i.crm, align 8, !dbg !104808, !nonnull !3011, !align !3101, !noundef !3011 ; 3 uses
  %i.cro = getelementptr inbounds nuw i8, ptr %i.crn, i64 16, !dbg !104809
  %i.crp = load i64, ptr %i.cro, align 8, !dbg !104809, !noundef !3011
  %i.crq = icmp ult i64 %i.crk, %i.crp, !dbg !104810
  br i1 %i.crq, label %bb.alc, label %bb.alb, !dbg !104810, !prof !3155

bb.alb:                                           ; preds = %bb.ala
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #49
          to label %bb.eo unwind label %bb.aku, !dbg !104811

bb.alc:                                           ; preds = %bb.ala
  %i.crr = getelementptr inbounds nuw i8, ptr %i.crn, i64 8, !dbg !104812
  %i.crs = load ptr, ptr %i.crr, align 8, !dbg !104812, !nonnull !3011, !noundef !3011
  %i.crt = getelementptr inbounds nuw [368 x i8], ptr %i.crs, i64 %i.crk, !dbg !104813
  %i.cru = invoke { i64, ptr } @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR6schema(ptr noundef nonnull align 16 %i.crt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.crn)
          to label %bb.ald unwind label %bb.aku, !dbg !104814 ; 2 uses

bb.ald:                                           ; preds = %bb.alc
  %i.crv = extractvalue { i64, ptr } %i.cru, 0, !dbg !104808 ; 2 uses
  %i.crw = extractvalue { i64, ptr } %i.cru, 1, !dbg !104808 ; 2 uses
  store i64 %i.crv, ptr %i.qz, align 8, !dbg !104808
  %i.crx = getelementptr inbounds nuw i8, ptr %i.qz, i64 8, !dbg !104808 ; 8 uses
  store ptr %i.crw, ptr %i.crx, align 8, !dbg !104808
  %i.cry = getelementptr inbounds nuw i8, ptr %i.rc, i64 16, !dbg !104815 ; 4 uses
  %i.crz = load i64, ptr %i.cry, align 8, !dbg !104815, !noundef !3011 ; 3 uses
  %i.csa = icmp ult i64 %i.crz, 64051194700380388, !dbg !104816
  call void @llvm.assume(i1 %i.csa), !dbg !104817
  %i.csb = icmp eq i64 %i.crz, 1, !dbg !104818
  br i1 %i.csb, label %bb.ale, label %bb.als, !dbg !104818

bb.ale:                                           ; preds = %bb.ald
  %i.csc = getelementptr inbounds nuw i8, ptr %i.rc, i64 8, !dbg !104819
  %i.csd = load ptr, ptr %i.csc, align 8, !dbg !104819, !nonnull !3011, !noundef !3011 ; 2 uses
  %i.cse = getelementptr inbounds nuw i8, ptr %i.csd, i64 112, !dbg !104820
  %i.csf = load i64, ptr %i.cse, align 16, !dbg !104820, !range !3494, !noundef !3011 ; 2 uses
  %i.csg = icmp ne i64 %i.csf, -9223372036854775795, !dbg !104820
  call void @llvm.assume(i1 %i.csg), !dbg !104820
  %i.csh = icmp eq i64 %i.csf, -9223372036854775805, !dbg !104821
  br i1 %i.csh, label %bb.ali, label %bb.als, !dbg !104821

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread: ; preds = %.thread4016, %bb.amt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003, %.thread4106, %bb.alm, %bb.alh
  %.sroa.01003.2 = phi i8 [ %.sroa.01003.3, %bb.alh ], [ 0, %.thread4106 ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003 ], [ 1, %bb.alm ], [ 0, %bb.amt ], [ 0, %.thread4016 ], !dbg !103129 ; 3 uses
  %.sroa.0998.2 = phi i8 [ 1, %bb.alh ], [ 1, %.thread4106 ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003 ], [ 1, %bb.alm ], [ 0, %bb.amt ], [ 1, %.thread4016 ], !dbg !102458 ; 3 uses
  %.pn2233 = phi { ptr, i32 } [ %i.csn, %bb.alh ], [ %.pn22314111, %.thread4106 ], [ %lpad.thr_comm.split-lp4011, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003 ], [ %i.csu, %bb.alm ], [ %lpad.thr_comm.split-lp4029, %bb.amt ], [ %.pn22184021, %.thread4016 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100773), !dbg !104822
  %i.csi = load i64, ptr %i.qz, align 8, !dbg !104823, !range !3063, !alias.scope !100773, !noundef !3011
  %i.csj = icmp eq i64 %i.csi, 0, !dbg !104823
  br i1 %i.csj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954, label %bb.alf, !dbg !104823

bb.alf:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !100774), !dbg !104823
  call void @llvm.experimental.noalias.scope.decl(metadata !100775), !dbg !104824
  %i.csk = load ptr, ptr %i.crx, align 8, !dbg !104825, !alias.scope !100776, !nonnull !3011, !noundef !3011
  %i.csl = atomicrmw add ptr %i.csk, i64 -1 release, align 8, !dbg !104826, !noalias !100776
  %i.csm = icmp eq i64 %i.csl, 1, !dbg !104827
  br i1 %i.csm, label %bb.alg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954, !dbg !104827

bb.alg:                                           ; preds = %bb.alf
  fence acquire, !dbg !104828
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.crx) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954 unwind label %bb.bw, !dbg !104829

bb.alh:                                           ; preds = %bb.ama, %bb.aly, %bb.aov, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2964, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2962, %bb.alq, %bb.alo, %bb.alk, %bb.ali
  %.sroa.01003.3 = phi i8 [ 1, %bb.alo ], [ 0, %bb.aov ], [ 1, %bb.ali ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2964 ], [ 1, %bb.ama ], [ 1, %bb.alk ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2962 ], [ 1, %bb.aly ], [ 1, %bb.alq ], !dbg !103129
  %i.csn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread

bb.ali:                                           ; preds = %bb.ale
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qy), !dbg !100795
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6197), !dbg !100795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qx), !dbg !100795
  %i.cso = trunc nuw i64 %i.crv to i1, !dbg !104830
  %.sroa.01359.0 = select i1 %i.cso, ptr %i.crx, ptr %i.crw, !dbg !104830
  %i.csp = load ptr, ptr %.sroa.01359.0, align 8, !dbg !104831, !nonnull !3011, !noundef !3011
  %i.csq = getelementptr inbounds nuw i8, ptr %i.csp, i64 16, !dbg !104832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qw), !dbg !100787
  %i.csr = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.alj unwind label %bb.alh, !dbg !104833

bb.alj:                                           ; preds = %bb.ali
  %i.css = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !104834
  %i.cst = icmp eq i8 %i.css, 2, !dbg !104835
  br i1 %i.cst, label %bb.all, label %bb.alk, !dbg !104835, !prof !3155

bb.alk:                                           ; preds = %bb.alj
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.all unwind label %bb.alh, !dbg !104836

bb.all:                                           ; preds = %bb.alj, %bb.alk
  store i64 0, ptr %i.qw, align 8, !dbg !104837
  %.sroa.43562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8, !dbg !104837
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43562.0..sroa_idx, align 8, !dbg !104837
  %.sroa.53563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16, !dbg !104837
  store i64 0, ptr %.sroa.53563.0..sroa_idx, align 8, !dbg !104837
  %.sroa.63564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24, !dbg !104837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.63564.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @485, i64 32, i1 false), !dbg !104837
  %.sroa.73565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qw, i64 56, !dbg !104837
  store i64 %i.csr, ptr %.sroa.73565.0..sroa_idx, align 8, !dbg !104837
  invoke void @_RNvMs0_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_8Selector12into_columns(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.qx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.csd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.csq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.qw)
          to label %bb.aln unwind label %bb.alm, !dbg !104838

bb.alm:                                           ; preds = %bb.alp, %bb.all
  %i.csu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.qw) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread unwind label %bb.bw, !dbg !104839

bb.aln:                                           ; preds = %bb.all
  %i.csv = load i64, ptr %i.qx, align 8, !dbg !104840, !range !3398, !noundef !3011 ; 2 uses
  %.not2209 = icmp eq i64 %i.csv, 18, !dbg !104840
  %i.csw = getelementptr inbounds nuw i8, ptr %i.qx, i64 8, !dbg !104841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6197, ptr noundef nonnull align 8 dereferenceable(64) %i.csw, i64 64, i1 false), !dbg !104841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qx), !dbg !104842
  br i1 %.not2209, label %bb.alp, label %bb.alo, !dbg !104843

bb.alo:                                           ; preds = %bb.aln
  %.sroa.21365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !104844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.21365.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6197, i64 64, i1 false), !dbg !104842
  store i64 %i.csv, ptr %0, align 8, !dbg !104844
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.qw)
          to label %bb.alt unwind label %bb.alh, !dbg !104839

bb.alp:                                           ; preds = %bb.aln
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qy, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6197, i64 64, i1 false), !dbg !100795
  %i.csx = getelementptr inbounds nuw i8, ptr %i.qy, i64 48, !dbg !104845
  %i.csy = load i64, ptr %i.csx, align 8, !dbg !104845, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.qy)
          to label %bb.alq unwind label %bb.alm, !dbg !104839

bb.alq:                                           ; preds = %bb.alp
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.qw)
          to label %bb.alr unwind label %bb.alh, !dbg !104839

bb.alr:                                           ; preds = %bb.alq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qw), !dbg !104839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6197), !dbg !104839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qy), !dbg !104839
  br label %bb.als, !dbg !104839

bb.als:                                           ; preds = %bb.ale, %bb.ald, %bb.alr
  %.sroa.0192.0 = phi i64 [ %i.csy, %bb.alr ], [ %i.crz, %bb.ald ], [ 1, %bb.ale ], !dbg !104846 ; 2 uses
  %i.csz = getelementptr inbounds nuw i8, ptr %i.rb, i64 16, !dbg !104847 ; 3 uses
  %i.cta = load i64, ptr %i.csz, align 8, !dbg !104847, !noundef !3011 ; 5 uses
  store i64 %i.cta, ptr %i.qv, align 8, !dbg !104847
  %i.ctb = icmp sgt i64 %i.cta, -1, !dbg !104848
  call void @llvm.assume(i1 %i.ctb), !dbg !104849
  %i.ctc = icmp eq i64 %i.cta, %.sroa.0192.0, !dbg !104850
  %i.ctd = icmp eq i64 %i.cta, 1
  %or.cond15 = or i1 %i.ctc, %i.ctd, !dbg !104850
  br i1 %or.cond15, label %bb.alx, label %bb.aly, !dbg !104850

bb.alt:                                           ; preds = %bb.alo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qw), !dbg !104839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6197), !dbg !104839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qy), !dbg !104839
  br label %bb.alu, !dbg !104851

bb.alu:                                           ; preds = %bb.amb, %bb.alz, %bb.alt
  call void @llvm.experimental.noalias.scope.decl(metadata !100806), !dbg !104822
  %i.cte = load i64, ptr %i.qz, align 8, !dbg !104852, !range !3063, !alias.scope !100806, !noundef !3011
  %i.ctf = icmp eq i64 %i.cte, 0, !dbg !104852
  br i1 %i.ctf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2960, label %bb.alv, !dbg !104852

bb.alv:                                           ; preds = %bb.alu
  call void @llvm.experimental.noalias.scope.decl(metadata !100807), !dbg !104852
  call void @llvm.experimental.noalias.scope.decl(metadata !100808), !dbg !104853
  %i.ctg = load ptr, ptr %i.crx, align 8, !dbg !104854, !alias.scope !100809, !nonnull !3011, !noundef !3011
  %i.cth = atomicrmw add ptr %i.ctg, i64 -1 release, align 8, !dbg !104855, !noalias !100809
  %i.cti = icmp eq i64 %i.cth, 1, !dbg !104856
  br i1 %i.cti, label %bb.alw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2960, !dbg !104856

bb.alw:                                           ; preds = %bb.alv
  fence acquire, !dbg !104857
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.crx) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2960 unwind label %bb.aku, !dbg !104858

bb.alx:                                           ; preds = %bb.als
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.rb, i64 24, !dbg !104859 ; 4 uses
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.rb, i64 40, !dbg !104859 ; 3 uses
  %i.ctl = load i64, ptr %i.ctk, align 8, !dbg !104859, !noundef !3011 ; 5 uses
  store i64 %i.ctl, ptr %i.qq, align 8, !dbg !104859
  %i.ctm = icmp sgt i64 %i.ctl, -1, !dbg !104860
  call void @llvm.assume(i1 %i.ctm), !dbg !104861
  %i.ctn = icmp eq i64 %i.ctl, %.sroa.0192.0, !dbg !104862
  %i.cto = icmp eq i64 %i.ctl, 1
  %or.cond17 = or i1 %i.ctn, %i.cto, !dbg !104862
  br i1 %or.cond17, label %bb.amd, label %bb.ama, !dbg !104862

bb.aly:                                           ; preds = %bb.als
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qu), !dbg !104863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qs), !dbg !104864
  %i.ctp = load i64, ptr %i.cry, align 8, !dbg !104865, !noundef !3011 ; 2 uses
  store i64 %i.ctp, ptr %i.qs, align 8, !dbg !104865
  %i.ctq = icmp ult i64 %i.ctp, 64051194700380388, !dbg !104866
  call void @llvm.assume(i1 %i.ctq), !dbg !104867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qr), !dbg !104868
  store ptr %i.qv, ptr %i.qr, align 8, !dbg !104868
  %.sroa.41369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qr, i64 8, !dbg !104868
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.41369.0..sroa_idx, align 8, !dbg !104868
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.qr, i64 16, !dbg !104868
  store ptr %i.qs, ptr %i.ctr, align 8, !dbg !104868
  %.sroa.41373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qr, i64 24, !dbg !104868
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.41373.0..sroa_idx, align 8, !dbg !104868
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.qt, ptr noundef nonnull @397, ptr noundef nonnull %i.qr)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2962 unwind label %bb.alh, !dbg !104869

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2962: ; preds = %bb.aly
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qr), !dbg !104863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qs), !dbg !104863
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.qu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.qt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @398)
          to label %bb.alz unwind label %bb.alh, !dbg !104870

bb.alz:                                           ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2962
  %.sroa.43331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !104863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43331.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.qu, i64 24, i1 false), !dbg !104863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qu), !dbg !104863
  store i64 2, ptr %0, align 8, !dbg !104863
  br label %bb.alu, !dbg !104871

bb.ama:                                           ; preds = %bb.alx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qp), !dbg !104872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qn), !dbg !104873
  %i.cts = load i64, ptr %i.cry, align 8, !dbg !104874, !noundef !3011 ; 2 uses
  store i64 %i.cts, ptr %i.qn, align 8, !dbg !104874
  %i.ctt = icmp ult i64 %i.cts, 64051194700380388, !dbg !104875
  call void @llvm.assume(i1 %i.ctt), !dbg !104876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qm), !dbg !104877
  store ptr %i.qq, ptr %i.qm, align 8, !dbg !104877
  %.sroa.41379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qm, i64 8, !dbg !104877
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.41379.0..sroa_idx, align 8, !dbg !104877
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.qm, i64 16, !dbg !104877
  store ptr %i.qn, ptr %i.ctu, align 8, !dbg !104877
  %.sroa.41383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qm, i64 24, !dbg !104877
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.41383.0..sroa_idx, align 8, !dbg !104877
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.qo, ptr noundef nonnull @399, ptr noundef nonnull %i.qm)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2964 unwind label %bb.alh, !dbg !104878

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2964: ; preds = %bb.ama
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qm), !dbg !104872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qn), !dbg !104872
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.qp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.qo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400)
          to label %bb.amb unwind label %bb.alh, !dbg !104879

bb.amb:                                           ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit2964
  %.sroa.43339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !104872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43339.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.qp, i64 24, i1 false), !dbg !104872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qp), !dbg !104872
  store i64 2, ptr %0, align 8, !dbg !104872
  br label %bb.alu, !dbg !104880

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2960: ; preds = %bb.alv, %bb.alu, %bb.alw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qz), !dbg !104822
  br label %bb.amc, !dbg !104790

bb.amc:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2988, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2960
  %.sroa.01003.4 = phi i8 [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2960 ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2988 ], !dbg !103129 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.rb)
          to label %.thread4112 unwind label %bb.apc, !dbg !104790

bb.amd:                                           ; preds = %bb.alx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ql), !dbg !104881
  store i64 0, ptr %i.ql, align 8, !dbg !104882
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.ql, i64 8, !dbg !104882
  store ptr inttoptr (i64 16 to ptr), ptr %i.ctv, align 8, !dbg !104882
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ql, i64 16, !dbg !104882
  store i64 0, ptr %i.ctw, align 8, !dbg !104882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qk), !dbg !104883
  store i64 0, ptr %i.qk, align 8, !dbg !104884
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.qk, i64 8, !dbg !104884
  store ptr inttoptr (i64 1 to ptr), ptr %i.ctx, align 8, !dbg !104884
  %i.cty = getelementptr inbounds nuw i8, ptr %i.qk, i64 16, !dbg !104884
  store i64 0, ptr %i.cty, align 8, !dbg !104884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qj), !dbg !104885
  store i64 0, ptr %i.qj, align 8, !dbg !104886
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.qj, i64 8, !dbg !104886
  store ptr inttoptr (i64 1 to ptr), ptr %i.ctz, align 8, !dbg !104886
  %i.cua = getelementptr inbounds nuw i8, ptr %i.qj, i64 16, !dbg !104886
  store i64 0, ptr %i.cua, align 8, !dbg !104886
  %i.cub = getelementptr inbounds nuw i8, ptr %i.rc, i64 8, !dbg !104887
  %i.cuc = load ptr, ptr %i.cub, align 8, !dbg !104887, !nonnull !3011, !noundef !3011 ; 3 uses
  %i.cud = load i64, ptr %i.rc, align 8, !dbg !104887, !range !3217, !noundef !3011
  %i.cue = load i64, ptr %i.cry, align 8, !dbg !104887, !noundef !3011 ; 2 uses
  %i.cuf = icmp ult i64 %i.cue, 64051194700380388, !dbg !104888
  call void @llvm.assume(i1 %i.cuf), !dbg !104889
  %i.cug = getelementptr inbounds nuw [144 x i8], ptr %i.cuc, i64 %i.cue, !dbg !104890
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.rb, i64 32, !dbg !104891
  %i.cui = load ptr, ptr %i.cuh, align 8, !dbg !104891, !nonnull !3011, !noundef !3011 ; 3 uses
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cui, i64 %i.ctl, !dbg !104892 ; 2 uses
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.rb, i64 8, !dbg !104893
  %i.cul = load ptr, ptr %i.cuk, align 8, !dbg !104893, !nonnull !3011, !noundef !3011 ; 3 uses
  %i.cum = getelementptr inbounds nuw i8, ptr %i.cul, i64 %i.cta, !dbg !104894 ; 2 uses
  %.sroa.73359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 96, !dbg !104887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qi), !dbg !104887
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.73359.0..sroa_idx, i8 0, i64 32, i1 false), !dbg !104895
  store ptr %i.cuc, ptr %i.qi, align 8, !dbg !104887
  %.sroa.03353.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 8, !dbg !104887
  store ptr %i.cuc, ptr %.sroa.03353.sroa.2.0..sroa_idx, align 8, !dbg !104887
  %.sroa.03353.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 16, !dbg !104887
  store i64 %i.cud, ptr %.sroa.03353.sroa.3.0..sroa_idx, align 8, !dbg !104887
  %.sroa.03353.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 24, !dbg !104887
  store ptr %i.cug, ptr %.sroa.03353.sroa.4.0..sroa_idx, align 8, !dbg !104887
  %.sroa.23354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 32, !dbg !104887
  store ptr %i.cui, ptr %.sroa.23354.0..sroa_idx, align 8, !dbg !104887
  %.sroa.33355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 40, !dbg !104887
  store ptr %i.cuj, ptr %.sroa.33355.0..sroa_idx, align 8, !dbg !104887
  %.sroa.43356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 48, !dbg !104887
  store ptr %i.cui, ptr %.sroa.43356.0..sroa_idx, align 8, !dbg !104887
  %.sroa.53357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 56, !dbg !104887
  store ptr %i.cuj, ptr %.sroa.53357.0..sroa_idx, align 8, !dbg !104887
  %.sroa.63358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 64, !dbg !104887
  store ptr %i.cul, ptr %.sroa.63358.0..sroa_idx, align 8, !dbg !104887
  %.sroa.63358.sroa.2.0..sroa.63358.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 72, !dbg !104887
  store ptr %i.cum, ptr %.sroa.63358.sroa.2.0..sroa.63358.0..sroa_idx.sroa_idx, align 8, !dbg !104887
  %.sroa.63358.sroa.3.0..sroa.63358.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 80, !dbg !104887
  store ptr %i.cul, ptr %.sroa.63358.sroa.3.0..sroa.63358.0..sroa_idx.sroa_idx, align 8, !dbg !104887
  %.sroa.63358.sroa.4.0..sroa.63358.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 88, !dbg !104887
  store ptr %i.cum, ptr %.sroa.63358.sroa.4.0..sroa.63358.0..sroa_idx.sroa_idx, align 8, !dbg !104887
  %i.cun = getelementptr inbounds nuw i8, ptr %i.qh, i64 112
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.qh, i64 144
  %i.cup = getelementptr inbounds nuw i8, ptr %i.qh, i64 152
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.cur = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %i.qf, i64 16 ; 3 uses
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  br label %bb.ame, !dbg !104896

bb.ame:                                           ; preds = %bb.aol, %bb.amd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qh), !dbg !104897
  invoke fastcc void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBN_INtNtB7_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEB2A_EEINtB5_7ZipImplBW_B2w_E4nextB1Q_(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.qh, ptr noalias noundef align 8 dereferenceable(128) %i.qi)
          to label %bb.amf unwind label %.loopexit.split-lp4530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !104898

.thread4062:                                      ; preds = %.loopexit.split-lp4530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aom, %bb.aox
  %.pn2224.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp4068, %bb.aox ], [ %lpad.thr_comm4074, %bb.aom ], [ %lpad.loopexit.split-lp5215, %.loopexit.split-lp4530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.qi)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread unwind label %bb.bw, !dbg !104899

bb.amf:                                           ; preds = %bb.ame
  %i.cuy = load i64, ptr %i.cun, align 16, !dbg !104897, !range !3352, !noundef !3011
  %.not2210 = icmp eq i64 %i.cuy, -9223372036854775780, !dbg !104897
  br i1 %.not2210, label %bb.amh, label %bb.amg, !dbg !104897

bb.amg:                                           ; preds = %bb.amf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qg), !dbg !104900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.qg, ptr noundef nonnull align 16 dereferenceable(144) %i.qh, i64 144, i1 false), !dbg !104900
  %i.cuz = load ptr, ptr %i.cuo, align 16, !dbg !104901, !nonnull !3011, !noundef !3011
  %i.cva = load i8, ptr %i.cuz, align 1, !dbg !104901, !range !3179, !noundef !3011
  %i.cvb = load ptr, ptr %i.cup, align 8, !dbg !104902, !nonnull !3011, !noundef !3011
  %i.cvc = load i8, ptr %i.cvb, align 1, !dbg !104902, !range !3179, !noundef !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qf), !dbg !104903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qe), !dbg !100866
  %i.cvd = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 144)
          to label %bb.aoe unwind label %bb.aox, !dbg !104904 ; 2 uses

bb.amh:                                           ; preds = %bb.amf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qh), !dbg !104905
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.qi)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit2967 unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4012, !dbg !104906

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4012: ; preds = %bb.aoh, %bb.amh
  %lpad.thr_comm4010.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread, !dbg !104907

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit2967: ; preds = %bb.amh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qi), !dbg !104908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qd), !dbg !104909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qd, ptr noundef nonnull align 8 dereferenceable(24) %i.qk, i64 24, i1 false), !dbg !104909
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ctj)
          to label %bb.amj unwind label %bb.ami, !dbg !104910

bb.ami:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit2967
  %i.cve = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ctj, ptr noundef nonnull align 8 dereferenceable(24) %i.qd, i64 24, i1 false), !dbg !104910
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread, !dbg !104911

bb.amj:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit2967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ctj, ptr noundef nonnull align 8 dereferenceable(24) %i.qd, i64 24, i1 false), !dbg !104910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qd), !dbg !104911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qc), !dbg !104912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qc, ptr noundef nonnull align 8 dereferenceable(24) %i.qj, i64 24, i1 false), !dbg !104912
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.rb)
          to label %bb.amk unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread4420, !dbg !104913

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread4420: ; preds = %bb.amj
  %i.cvf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rb, ptr noundef nonnull align 8 dereferenceable(24) %i.qc, i64 24, i1 false), !dbg !104913
  br label %.thread4106, !dbg !104914

bb.amk:                                           ; preds = %bb.amj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rb, ptr noundef nonnull align 8 dereferenceable(24) %i.qc, i64 24, i1 false), !dbg !104913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qc), !dbg !104915
  %i.cvg = load ptr, ptr %i.tm, align 16, !dbg !104916, !nonnull !3011, !align !3101, !noundef !3011 ; 2 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cvg, i64 184, !dbg !104917
  %i.cvi = load ptr, ptr %i.cvh, align 8, !dbg !104917, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RINvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9stack_optNtB5_19ConversionOptimizer12fill_scratchRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB9_7expr_ir6ExprIRERB2g_EBb_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.cvg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ql, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cvi)
          to label %bb.aml unwind label %bb.aor, !dbg !104918

bb.aml:                                           ; preds = %bb.amk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qb), !dbg !104919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i64 24, i1 false), !dbg !104920
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.qb, i64 16, !dbg !104921 ; 5 uses
  %i.cvk = load i64, ptr %i.cvj, align 8, !dbg !104921, !noundef !3011 ; 3 uses
  %i.cvl = icmp ult i64 %i.cvk, 82351536043346213, !dbg !104922
  call void @llvm.assume(i1 %i.cvl), !dbg !104923
  %i.cvm = icmp samesign ugt i64 %i.cvk, 1, !dbg !104924
  br i1 %i.cvm, label %bb.amn, label %bb.amm, !dbg !104924

bb.amm:                                           ; preds = %bb.aml
  %i.cvn = icmp eq i64 %i.cvk, 0, !dbg !104925
  br i1 %i.cvn, label %bb.amp, label %bb.amo, !dbg !104926

bb.amn:                                           ; preds = %bb.aml
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qa), !dbg !104927
  %i.cvo = load ptr, ptr %i.tm, align 16, !dbg !104928, !nonnull !3011, !align !3101, !noundef !3011
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 192, !dbg !104928
  %i.cvq = load ptr, ptr %i.cvp, align 8, !dbg !104928, !nonnull !3011, !align !3101, !noundef !3011 ; 3 uses
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvq, i64 16, !dbg !104929
  %i.cvs = load i64, ptr %i.cvr, align 8, !dbg !104929, !noundef !3011
  %i.cvt = icmp ult i64 %i.crk, %i.cvs, !dbg !104930
  br i1 %i.cvt, label %bb.ams, label %bb.amr, !dbg !104930, !prof !3155

bb.amo:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2976, %bb.amm
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.pv, i64 40, !dbg !104931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cvu, ptr noundef nonnull align 8 dereferenceable(24) %i.qb, i64 24, i1 false), !dbg !104932
  %i.cvv = trunc nuw i64 %.sroa.0179.0.copyload to i1, !dbg !104933 ; 2 uses
  %.sroa.5241.sroa.0.0 = select i1 %i.cvv, i64 %.sroa.2180.0.copyload, i64 undef, !dbg !104933
  %.sroa.5241.sroa.4.0 = select i1 %i.cvv, i64 %.sroa.3181.0.copyload, i64 undef, !dbg !104933
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.pv, i64 64, !dbg !104931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cvw, ptr noundef nonnull align 8 dereferenceable(64) %i.rb, i64 64, i1 false), !dbg !104934
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.pv, i64 128, !dbg !104931
  store i64 %i.crk, ptr %i.cvx, align 16, !dbg !104931
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.pv, i64 8, !dbg !104931
  store i64 %.sroa.0179.0.copyload, ptr %i.cvy, align 8, !dbg !104931
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pv, i64 16, !dbg !104931
  store i64 %.sroa.5241.sroa.0.0, ptr %.sroa.5241.0..sroa_idx, align 16, !dbg !104931
  %.sroa.5241.sroa.4.0..sroa.5241.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.pv, i64 24, !dbg !104931
  store i64 %.sroa.5241.sroa.4.0, ptr %.sroa.5241.sroa.4.0..sroa.5241.0..sroa_idx.sroa_idx, align 8, !dbg !104931
  %.sroa.5241.sroa.5.0..sroa.5241.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.pv, i64 32, !dbg !104931
  store ptr null, ptr %.sroa.5241.sroa.5.0..sroa.5241.0..sroa_idx.sroa_idx, align 16, !dbg !104931
  store i64 -9223372036854775797, ptr %i.pv, align 16, !dbg !104931
  %i.cvz = load ptr, ptr %i.tm, align 16, !dbg !104935, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14run_conversion(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.pv, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.cvz, ptr noalias noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 4)
          to label %bb.anr unwind label %bb.amt, !dbg !104936

bb.amp:                                           ; preds = %bb.amm
  %i.cwa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !104937
  store i64 %i.crk, ptr %i.cwa, align 8, !dbg !104937
  store i64 18, ptr %0, align 8, !dbg !104937
  br label %bb.amq, !dbg !104938

bb.amq:                                           ; preds = %bb.anq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2983, %bb.amp
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.qb)
end_hunk_2
begin_hunk_3_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a

bb.aob:                                           ; preds = %bb.anv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pz), !dbg !104983
  call void @llvm.experimental.noalias.scope.decl(metadata !100947), !dbg !105000
  %i.cyy = load i64, ptr %i.qa, align 8, !dbg !105042, !range !3063, !alias.scope !100947, !noundef !3011
  %i.cyz = icmp eq i64 %i.cyy, 0, !dbg !105042
  br i1 %i.cyz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2983, label %bb.aoc, !dbg !105042

bb.aoc:                                           ; preds = %bb.aob
  call void @llvm.experimental.noalias.scope.decl(metadata !100948), !dbg !105042
  call void @llvm.experimental.noalias.scope.decl(metadata !100949), !dbg !105043
  %i.cza = load ptr, ptr %i.cwh, align 8, !dbg !105044, !alias.scope !100950, !nonnull !3011, !noundef !3011
  %i.czb = atomicrmw add ptr %i.cza, i64 -1 release, align 8, !dbg !105045, !noalias !100950
  %i.czc = icmp eq i64 %i.czb, 1, !dbg !105046
  br i1 %i.czc, label %bb.aod, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2983, !dbg !105046

bb.aod:                                           ; preds = %bb.aoc
  fence acquire, !dbg !105047
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cwh) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2983 unwind label %.thread4030, !dbg !105048

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2983: ; preds = %bb.aoc, %bb.aob, %bb.aod
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qa), !dbg !105000
  br label %bb.amq, !dbg !104938

.loopexit.split-lp4525.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.any, %bb.amv, %bb.ang
  %lpad.loopexit.split-lp5208 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.pz) #51
          to label %.thread4033 unwind label %bb.bw, !dbg !104983

.thread4016:                                      ; preds = %bb.ano, %.thread4033, %bb.ann, %.thread4030
  %.pn22184021 = phi { ptr, i32 } [ %lpad.thr_comm4028, %.thread4030 ], [ %.pn2216, %bb.ann ], [ %.pn2216, %.thread4033 ], [ %.pn2216, %bb.ano ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.qb) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread unwind label %bb.bw, !dbg !104939

bb.aoe:                                           ; preds = %bb.amg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.cvd, ptr noundef nonnull align 16 dereferenceable(144) %i.qg, i64 144, i1 false), !dbg !105049
  store i64 1, ptr %i.qe, align 8, !dbg !105050
  store ptr %i.cvd, ptr %i.cuq, align 8, !dbg !105050
  store i64 1, ptr %i.cur, align 8, !dbg !105050
  %i.czd = load ptr, ptr %i.tm, align 16, !dbg !105051, !nonnull !3011, !align !3101, !noundef !3011 ; 3 uses
  %i.cze = getelementptr inbounds nuw i8, ptr %i.czd, i64 192, !dbg !105051
  %i.czf = load ptr, ptr %i.cze, align 8, !dbg !105051, !nonnull !3011, !align !3101, !noundef !3011
  %i.czg = getelementptr inbounds nuw i8, ptr %i.czd, i64 184, !dbg !105052
  %i.czh = load ptr, ptr %i.czg, align 8, !dbg !105052, !nonnull !3011, !align !3101, !noundef !3011
  %i.czi = getelementptr inbounds nuw i8, ptr %i.czd, i64 200, !dbg !105053
  %i.czj = load ptr, ptr %i.czi, align 8, !dbg !105053, !nonnull !3011, !align !4022, !noundef !3011
  invoke void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5utils18expand_expressions(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cs, i64 noundef %i.crk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.qe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.czf, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.czh, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.czj)
          to label %bb.aof unwind label %.loopexit.split-lp4530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !100956

bb.aof:                                           ; preds = %bb.aoe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qe), !dbg !105054
  %i.czk = load i64, ptr %i.cs, align 8, !dbg !105055, !range !3398, !noundef !3011
  %.not2220 = icmp eq i64 %i.czk, 18, !dbg !105055
  br i1 %.not2220, label %bb.aoi, label %bb.aog, !dbg !105056

bb.aog:                                           ; preds = %bb.aof
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !105057
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0sc_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ct, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.cs)
          to label %bb.aoh unwind label %.loopexit.split-lp4530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !105057

bb.aoh:                                           ; preds = %bb.aog
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !105058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !105059
  %.sroa.01389.0.copyload = load i64, ptr %i.cs, align 8, !dbg !105060
  %.sroa.71391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32, !dbg !105060
  %.sroa.31394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !105061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.31394.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71391.0..sroa_idx, i64 40, i1 false), !dbg !105060
  %.sroa.21393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !105061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21393.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cus, i64 24, i1 false), !dbg !105062
  store i64 %.sroa.01389.0.copyload, ptr %0, align 8, !dbg !105061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qf), !dbg !105063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qg), !dbg !104905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qh), !dbg !104905
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.qi)
          to label %bb.aon unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4012, !dbg !105064

bb.aoi:                                           ; preds = %bb.aof
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qf, ptr noundef nonnull align 8 dereferenceable(24) %i.cus, i64 24, i1 false), !dbg !100956
  %i.czl = load i64, ptr %i.cut, align 8, !dbg !105065, !noundef !3011 ; 3 uses
  %i.czm = icmp ult i64 %i.czl, 82351536043346213, !dbg !105066
  call void @llvm.assume(i1 %i.czm), !dbg !105067
  %.not2222 = icmp eq i64 %i.czl, 0, !dbg !105068
  %.2469 = select i1 %.not2222, i8 2, i8 %i.cva, !dbg !105069
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecbE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qk, i64 %i.czl, i8 noundef %.2469)
          to label %bb.aoj unwind label %bb.aom, !dbg !105070

.loopexit.split-lp4530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aoe, %bb.ame, %bb.aok, %bb.aog
  %lpad.loopexit.split-lp5215 = landingpad { ptr, i32 }
          cleanup
  br label %.thread4062

bb.aoj:                                           ; preds = %bb.aoi
  %i.czn = load i64, ptr %i.cut, align 8, !dbg !105071, !noundef !3011 ; 3 uses
  %i.czo = icmp ult i64 %i.czn, 82351536043346213, !dbg !105072
  call void @llvm.assume(i1 %i.czo), !dbg !105073
  %.not2223 = icmp eq i64 %i.czn, 0, !dbg !105074
  %.2470 = select i1 %.not2223, i8 2, i8 %i.cvc, !dbg !105075
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecbE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qj, i64 %i.czn, i8 noundef %.2470)
          to label %bb.aok unwind label %bb.aom, !dbg !105076

bb.aok:                                           ; preds = %bb.aoj
  %i.czp = load ptr, ptr %i.cuu, align 8, !dbg !105077, !nonnull !3011, !noundef !3011 ; 3 uses
  %i.czq = load i64, ptr %i.qf, align 8, !dbg !105077, !range !3217, !noundef !3011
  %i.czr = load i64, ptr %i.cut, align 8, !dbg !105077, !noundef !3011 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !105078
  %i.czs = icmp ult i64 %i.czr, 82351536043346213, !dbg !105079
  call void @llvm.assume(i1 %i.czs), !dbg !105080
  %i.czt = getelementptr inbounds nuw [112 x i8], ptr %i.czp, i64 %i.czr, !dbg !105081
  store ptr %i.czp, ptr %i.cr, align 8, !dbg !105082
  store i64 %i.czq, ptr %i.cuv, align 8, !dbg !105082
  store ptr %i.czp, ptr %i.cuw, align 8, !dbg !105082
  store ptr %i.czt, ptr %i.cux, align 8, !dbg !105082
  invoke void @_RNvXs0_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB10_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ql, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cr)
          to label %bb.aol unwind label %.loopexit.split-lp4530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !105083

bb.aol:                                           ; preds = %bb.aok
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !105084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qf), !dbg !105063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qg), !dbg !104905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qh), !dbg !104905
  br label %bb.ame, !dbg !104896

bb.aom:                                           ; preds = %bb.aoj, %bb.aoi
  %lpad.thr_comm4074 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.qf) #51
          to label %.thread4062 unwind label %bb.bw, !dbg !105063

bb.aon:                                           ; preds = %bb.aoh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qi), !dbg !104908
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.qj)
          to label %bb.aoq unwind label %.thread4093, !dbg !104907

bb.aoo:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread
  br i1 %.sroa.0994.03999, label %bb.aoy, label %.thread4106, !dbg !105085

.thread4093:                                      ; preds = %bb.aon
  %i.czu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aoy, !dbg !105085

bb.aop:                                           ; preds = %bb.ant, %bb.anr, %bb.amq
  %.sroa.0998.8 = phi i8 [ 1, %bb.amq ], [ 0, %bb.anr ], [ 0, %bb.ant ], !dbg !105086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qb), !dbg !104939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qj), !dbg !104907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qk), !dbg !105085
  br label %bb.aos, !dbg !104914

bb.aoq:                                           ; preds = %bb.aon
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qj), !dbg !104907
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.qk)
          to label %bb.aov unwind label %bb.aor, !dbg !105085

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003: ; preds = %bb.amq
  %lpad.thr_comm.split-lp4011 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread, !dbg !104914

bb.aor:                                           ; preds = %bb.amk, %bb.aoq
  %i.czv = landingpad { ptr, i32 }
          cleanup
  br label %.thread4106

bb.aos:                                           ; preds = %bb.aop, %bb.aov
  %.sroa.0998.9405740854103 = phi i8 [ 1, %bb.aov ], [ %.sroa.0998.8, %bb.aop ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ql), !dbg !104914
  call void @llvm.experimental.noalias.scope.decl(metadata !100985), !dbg !104822
  %i.czw = load i64, ptr %i.qz, align 8, !dbg !105087, !range !3063, !alias.scope !100985, !noundef !3011
  %i.czx = icmp eq i64 %i.czw, 0, !dbg !105087
  br i1 %i.czx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2988, label %bb.aot, !dbg !105087

bb.aot:                                           ; preds = %bb.aos
  call void @llvm.experimental.noalias.scope.decl(metadata !100986), !dbg !105087
  call void @llvm.experimental.noalias.scope.decl(metadata !100987), !dbg !105088
  %i.czy = load ptr, ptr %i.crx, align 8, !dbg !105089, !alias.scope !100988, !nonnull !3011, !noundef !3011
  %i.czz = atomicrmw add ptr %i.czy, i64 -1 release, align 8, !dbg !105090, !noalias !100988
  %i.daa = icmp eq i64 %i.czz, 1, !dbg !105091
  br i1 %i.daa, label %bb.aou, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2988, !dbg !105091

bb.aou:                                           ; preds = %bb.aot
  fence acquire, !dbg !105092
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.crx) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2988 unwind label %bb.aku, !dbg !105093

bb.aov:                                           ; preds = %bb.aoq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qk), !dbg !105085
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ql)
          to label %bb.aos unwind label %bb.alh, !dbg !104914

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2988: ; preds = %bb.aot, %bb.aos, %bb.aou
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qz), !dbg !104822
  %i.dab = trunc nuw i8 %.sroa.0998.9405740854103 to i1, !dbg !104790
  br i1 %i.dab, label %bb.amc, label %.thread4115, !dbg !104790

.thread4115:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rb), !dbg !104790
  br label %bb.apb, !dbg !104790

bb.aow:                                           ; preds = %.thread4112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rb), !dbg !104790
  %i.dac = trunc nuw i8 %.sroa.01003.8 to i1, !dbg !104790
  br i1 %i.dac, label %2, label %bb.apb, !dbg !104790

.thread4112:                                      ; preds = %bb.amc, %bb.akz
  %.sroa.01003.8 = phi i8 [ 1, %bb.akz ], [ %.sroa.01003.4, %bb.amc ], !dbg !102456 ; 2 uses
  %i.dad = getelementptr inbounds nuw i8, ptr %i.rb, i64 24, !dbg !104790
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.dad)
          to label %bb.aow unwind label %bb.apa, !dbg !104790

bb.aox:                                           ; preds = %bb.amg
  %lpad.thr_comm.split-lp4068 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.qg) #51
          to label %.thread4062 unwind label %bb.bw, !dbg !104905

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread: ; preds = %.thread4062, %bb.ami, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4012
  %.pn22274000 = phi { ptr, i32 } [ %lpad.thr_comm4010.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4012 ], [ %.pn2224.pn, %.thread4062 ], [ %i.cve, %bb.ami ] ; 2 uses
  %.sroa.0994.03999 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4012 ], [ true, %.thread4062 ], [ false, %bb.ami ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.qj) #51
          to label %bb.aoo unwind label %bb.bw, !dbg !104907

bb.aoy:                                           ; preds = %.thread4093, %bb.aoo
  %.pn22294100 = phi { ptr, i32 } [ %i.czu, %.thread4093 ], [ %.pn22274000, %bb.aoo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.qk) #51
          to label %.thread4106 unwind label %bb.bw, !dbg !105085

.thread4106:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread4420, %bb.aoo, %bb.aoy, %bb.aor
  %.pn22314111 = phi { ptr, i32 } [ %i.cvf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread4420 ], [ %.pn22274000, %bb.aoo ], [ %.pn22294100, %bb.aoy ], [ %i.czv, %bb.aor ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ql) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4003.thread unwind label %bb.bw, !dbg !104914

bb.aoz:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954, %bb.ape, %bb.apc, %bb.apa
  %.sroa.01003.9 = phi i8 [ %.sroa.01003.8, %bb.apa ], [ %.sroa.01003.6, %bb.apc ], [ %.sroa.01003.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954 ], [ %.sroa.01003.0, %bb.ape ], !dbg !102456
  %.pn2237 = phi { ptr, i32 } [ %i.daf, %bb.apa ], [ %3, %bb.apc ], [ %.pn2235, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954 ], [ %.pn2235, %bb.ape ] ; 2 uses
  %.sroa.478.77 = extractvalue { ptr, i32 } %.pn2237, 1 ; 2 uses
  %.sroa.02013.77 = extractvalue { ptr, i32 } %.pn2237, 0 ; 2 uses
  %i.dae = trunc nuw i8 %.sroa.01003.9 to i1, !dbg !104790
  br i1 %i.dae, label %bb.apf, label %.critedge2460, !dbg !104790

bb.apa:                                           ; preds = %.thread4112
  %i.daf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aoz

bb.apb:                                           ; preds = %.thread4115, %2, %bb.aow
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rc), !dbg !104790
  br label %bb.ho, !dbg !102939

2:                                                ; preds = %bb.aow
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.rc)
          to label %bb.apb unwind label %bb.c, !dbg !104790

bb.apc:                                           ; preds = %bb.akz, %bb.amc
  %.sroa.01003.6 = phi i8 [ 1, %bb.akz ], [ %.sroa.01003.4, %bb.amc ], !dbg !102456
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = getelementptr inbounds nuw i8, ptr %i.rb, i64 24, !dbg !104790
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %4) #51
          to label %bb.aoz unwind label %bb.bw, !dbg !104790

bb.apd:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2954
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.rb) #51
          to label %bb.ape unwind label %bb.bw, !dbg !104790

bb.ape:                                           ; preds = %bb.apd
  %i.dag = getelementptr inbounds nuw i8, ptr %i.rb, i64 24, !dbg !104790
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.dag) #51
          to label %bb.aoz unwind label %bb.bw, !dbg !104790

bb.apf:                                           ; preds = %bb.aoz
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.rc) #51
          to label %.critedge2460 unwind label %bb.bw, !dbg !104790

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691: ; preds = %bb.aw, %bb.av, %bb.au
  %i.dah = icmp eq i64 %.sroa.03539.0.copyload3540, -9223372036854775778, !dbg !105094
  br i1 %i.dah, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread, label %bb.apg, !dbg !105095

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread: ; preds = %bb.at, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691
  %.sroa.63541.04119 = phi ptr [ %.sroa.63541.0.copyload3543, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691 ], [ %i.aai, %bb.at ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63541.04119) ]
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE15unwrap_or_clone0BO_(ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.ru, ptr noundef nonnull %.sroa.63541.04119)
          to label %bb.aph unwind label %bb.c, !dbg !105096

bb.apg:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691
  store i64 %.sroa.03539.0.copyload3540, ptr %i.ru, align 16, !dbg !105097
  %.sroa.63541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8, !dbg !105097
  store ptr %.sroa.63541.0.copyload3543, ptr %.sroa.63541.0..sroa_idx, align 8, !dbg !105097
  %.sroa.83544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 16, !dbg !105097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83544.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83544, i64 352, i1 false), !dbg !105097
  br label %bb.aph, !dbg !105098

bb.aph:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2691.thread, %bb.apg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83544), !dbg !105099
  %i.dai = load ptr, ptr %i.tm, align 16, !dbg !105100, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.de, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.ru, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.dai)
          to label %bb.api unwind label %bb.c, !dbg !100992

bb.api:                                           ; preds = %bb.aph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ru), !dbg !105101
  %i.daj = load i64, ptr %i.de, align 16, !dbg !105102, !range !3398, !noundef !3011
  %.not = icmp eq i64 %i.daj, 18, !dbg !105102
  br i1 %.not, label %bb.apl, label %bb.apj, !dbg !105103

bb.apj:                                           ; preds = %bb.api
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !105104
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0s7_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.df, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.de)
          to label %bb.apk unwind label %bb.c, !dbg !105104

bb.apk:                                           ; preds = %bb.apj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.de, ptr noundef nonnull align 8 dereferenceable(72) %i.df, i64 72, i1 false), !dbg !105105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !105106
  %.sroa.71319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !105107
  %.sroa.31322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !105108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.31322.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.71319.0..sroa_idx, i64 56, i1 false), !dbg !105107
  %i.dak = load <2 x i64>, ptr %i.de, align 16, !dbg !105107
  store <2 x i64> %i.dak, ptr %0, align 8, !dbg !105108
  %i.dal = load i64, ptr %1, align 16, !dbg !102274, !range !3407, !noundef !3011 ; 3 uses
  %i.dam = icmp ne i64 %i.dal, -9223372036854775782, !dbg !102274
  call void @llvm.assume(i1 %i.dam), !dbg !102274
  %i.dan = add nsw i64 %i.dal, 9223372036854775802, !dbg !102274
  %i.dao = icmp ugt i64 %i.dal, -9223372036854775803, !dbg !102274
  %i.dap = select i1 %i.dao, i64 %i.dan, i64 20, !dbg !102274
  switch i64 %i.dap, label %.loopexit4494 [
    i64 0, label %bb.id
    i64 1, label %bb.by
    i64 2, label %bb.ca
    i64 3, label %bb.cc
    i64 4, label %bb.ci
    i64 5, label %bb.ck
    i64 6, label %bb.co
    i64 7, label %bb.cq
    i64 8, label %bb.cs
    i64 9, label %bb.cu
    i64 10, label %bb.cw
    i64 11, label %bb.cy
    i64 12, label %bb.da
    i64 13, label %bb.dc
    i64 14, label %bb.de
    i64 15, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705
    i64 16, label %bb.di
    i64 17, label %bb.dk
    i64 18, label %bb.dn
    i64 19, label %bb.dq
    i64 20, label %bb.ds
    i64 21, label %bb.du
    i64 22, label %bb.dx
    i64 23, label %bb.dz
  ], !dbg !102274

bb.apl:                                           ; preds = %bb.api
  %i.daq = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !105109
  %i.dar = load i64, ptr %i.daq, align 8, !dbg !105109, !noundef !3011 ; 3 uses
  %i.das = icmp eq i32 %i.aam, 0, !dbg !105110
  br i1 %i.das, label %bb.apm, label %bb.apn, !dbg !105110

bb.apm:                                           ; preds = %bb.apl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rt), !dbg !105111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rs), !dbg !105112
  %i.dat = load ptr, ptr %i.tm, align 16, !dbg !105112, !nonnull !3011, !align !3101, !noundef !3011
  %i.dau = getelementptr inbounds nuw i8, ptr %i.dat, i64 192, !dbg !105112
  %i.dav = load ptr, ptr %i.dau, align 8, !dbg !105112, !nonnull !3011, !align !3101, !noundef !3011 ; 3 uses
  %i.daw = getelementptr inbounds nuw i8, ptr %i.dav, i64 16, !dbg !105113
  %i.dax = load i64, ptr %i.daw, align 8, !dbg !105113, !noundef !3011
  %i.day = icmp ult i64 %i.dar, %i.dax, !dbg !105114
  br i1 %i.day, label %bb.app, label %bb.apo, !dbg !105114, !prof !3155

bb.apn:                                           ; preds = %bb.apl
  %i.daz = getelementptr inbounds nuw i8, ptr %i.ti, i64 8, !dbg !105115
  store i64 %i.dar, ptr %i.daz, align 8, !dbg !105115
  %i.dba = getelementptr inbounds nuw i8, ptr %i.ti, i64 16, !dbg !105115
  store i64 %i.aak, ptr %i.dba, align 16, !dbg !105115
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.ti, i64 24, !dbg !105115
  store i32 %i.aam, ptr %i.dbb, align 8, !dbg !105115
  store i64 -9223372036854775803, ptr %i.ti, align 16, !dbg !105115
  br label %bb.bs, !dbg !105116

bb.apo:                                           ; preds = %bb.apm
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #49
          to label %bb.eo unwind label %bb.c, !dbg !105117

bb.app:                                           ; preds = %bb.apm
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.dav, i64 8, !dbg !105118
  %i.dbd = load ptr, ptr %i.dbc, align 8, !dbg !105118, !nonnull !3011, !noundef !3011
  %i.dbe = getelementptr inbounds nuw [368 x i8], ptr %i.dbd, i64 %i.dar, !dbg !105119
  %i.dbf = invoke { i64, ptr } @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR6schema(ptr noundef nonnull align 16 %i.dbe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dav)
          to label %bb.apq unwind label %bb.c, !dbg !105120 ; 2 uses

bb.apq:                                           ; preds = %bb.app
  %i.dbg = extractvalue { i64, ptr } %i.dbf, 0, !dbg !105112 ; 2 uses
  %i.dbh = extractvalue { i64, ptr } %i.dbf, 1, !dbg !105112 ; 2 uses
  store i64 %i.dbg, ptr %i.rs, align 8, !dbg !105112
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.rs, i64 8, !dbg !105112 ; 4 uses
  store ptr %i.dbh, ptr %i.dbi, align 8, !dbg !105112
  %i.dbj = trunc nuw i64 %i.dbg to i1, !dbg !105121
  %.2471 = select i1 %i.dbj, ptr %i.dbi, ptr %i.dbh, !dbg !105122
  %i.dbk = load ptr, ptr %.2471, align 8, !dbg !105123, !nonnull !3011, !noundef !3011 ; 2 uses
  %i.dbl = atomicrmw add ptr %i.dbk, i64 1 monotonic, align 8, !dbg !105124
  %i.dbm = icmp slt i64 %i.dbl, 0, !dbg !105125
  br i1 %i.dbm, label %bb.apu, label %bb.apr, !dbg !105125

bb.apr:                                           ; preds = %bb.apq
  store ptr %i.dbk, ptr %i.rt, align 8, !dbg !105126
  call void @llvm.experimental.noalias.scope.decl(metadata !101022), !dbg !105127
  %i.dbn = load i64, ptr %i.rs, align 8, !dbg !105128, !range !3063, !alias.scope !101022, !noundef !3011
  %i.dbo = icmp eq i64 %i.dbn, 0, !dbg !105128
  br i1 %i.dbo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2992, label %bb.aps, !dbg !105128

bb.aps:                                           ; preds = %bb.apr
  call void @llvm.experimental.noalias.scope.decl(metadata !101023), !dbg !105128
  call void @llvm.experimental.noalias.scope.decl(metadata !101024), !dbg !105129
  %i.dbp = load ptr, ptr %i.dbi, align 8, !dbg !105130, !alias.scope !101025, !nonnull !3011, !noundef !3011
  %i.dbq = atomicrmw add ptr %i.dbp, i64 -1 release, align 8, !dbg !105131, !noalias !101025
  %i.dbr = icmp eq i64 %i.dbq, 1, !dbg !105132
  br i1 %i.dbr, label %bb.apt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2992, !dbg !105132

bb.apt:                                           ; preds = %bb.aps
  fence acquire, !dbg !105133
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dbi) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2992 unwind label %bb.apv, !dbg !105134

bb.apu:                                           ; preds = %bb.apq
  call void @llvm.trap(), !dbg !105135
  unreachable, !dbg !105135

bb.apv:                                           ; preds = %bb.apt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2992
  %i.dbs = landingpad { ptr, i32 }
          cleanup
  br label %.body2592

.body2592:                                        ; preds = %bb.apy, %bb.apv
  %eh.lpad-body2593 = phi { ptr, i32 } [ %i.dbs, %bb.apv ], [ %i.dcd, %bb.apy ] ; 2 uses
  %i.dbt = extractvalue { ptr, i32 } %eh.lpad-body2593, 0 ; 2 uses
  %i.dbu = extractvalue { ptr, i32 } %eh.lpad-body2593, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101026), !dbg !105136
  call void @llvm.experimental.noalias.scope.decl(metadata !101027), !dbg !105137
  %i.dbv = load ptr, ptr %i.rt, align 8, !dbg !105138, !alias.scope !101028, !nonnull !3011, !noundef !3011
  %i.dbw = atomicrmw add ptr %i.dbv, i64 -1 release, align 8, !dbg !105139, !noalias !101028
  %i.dbx = icmp eq i64 %i.dbw, 1, !dbg !105140
  br i1 %i.dbx, label %bb.apw, label %.critedge2460, !dbg !105140

bb.apw:                                           ; preds = %.body2592
  fence acquire, !dbg !105141
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rt) #52
          to label %.critedge2460 unwind label %bb.bw, !dbg !105142

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2992: ; preds = %bb.aps, %bb.apr, %bb.apt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rs), !dbg !105127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rr), !dbg !105143
  %i.dby = load ptr, ptr %i.rt, align 8, !dbg !105144, !nonnull !3011, !noundef !3011
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.dby, i64 16, !dbg !105145
  invoke void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframeNtB4_9DataFrame17empty_with_schema(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.rr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dbz)
          to label %bb.apx unwind label %bb.apv, !dbg !105143

bb.apx:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !dbg !105146
  store i64 1, ptr %i.dd, align 8, !dbg !105146
  %i.dca = getelementptr inbounds nuw i8, ptr %i.dd, i64 8, !dbg !105146
  store i64 1, ptr %i.dca, align 8, !dbg !105146
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !105146 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dcb, ptr noundef nonnull align 8 dereferenceable(48) %i.rr, i64 48, i1 false), !dbg !105146
end_hunk_3
begin_hunk_4_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
  br label %bb.aux, !dbg !105451

bb.aut:                                           ; preds = %bb.auq, %bb.auo
  %lpad.thr_comm4189 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.hd) #51
          to label %bb.auy unwind label %bb.bw, !dbg !105487

bb.auu:                                           ; preds = %bb.aun
  %i.dna = landingpad { ptr, i32 }
          cleanup
  br label %bb.auy

bb.auv:                                           ; preds = %bb.aun
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !dbg !105479
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6646), !dbg !105479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !dbg !105487
  call void @llvm.experimental.noalias.scope.decl(metadata !101387), !dbg !105460
  call void @llvm.experimental.noalias.scope.decl(metadata !101388), !dbg !105496
  %i.dnb = load ptr, ptr %i.hf, align 8, !dbg !105497, !alias.scope !101389, !nonnull !3011, !noundef !3011
  %i.dnc = atomicrmw add ptr %i.dnb, i64 -1 release, align 8, !dbg !105498, !noalias !101389
  %i.dnd = icmp eq i64 %i.dnc, 1, !dbg !105499
  br i1 %i.dnd, label %bb.auw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3029, !dbg !105499

bb.auw:                                           ; preds = %bb.auv
  fence acquire, !dbg !105500
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hf) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3029 unwind label %bb.aup, !dbg !105501

bb.aux:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3029, %bb.aug
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk), !dbg !105451
  br label %bb.arp, !dbg !105262

bb.auy:                                           ; preds = %bb.auu, %bb.aut, %bb.aul
  %.pn2177.ph = phi { ptr, i32 } [ %i.dna, %bb.auu ], [ %i.dmo, %bb.aul ], [ %lpad.thr_comm4189, %bb.aut ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101390), !dbg !105460
  call void @llvm.experimental.noalias.scope.decl(metadata !101391), !dbg !105502
  %i.dne = load ptr, ptr %i.hf, align 8, !dbg !105503, !alias.scope !101392, !nonnull !3011, !noundef !3011
  %i.dnf = atomicrmw add ptr %i.dne, i64 -1 release, align 8, !dbg !105504, !noalias !101392
  %i.dng = icmp eq i64 %i.dnf, 1, !dbg !105505
  br i1 %i.dng, label %bb.auz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3016, !dbg !105505

bb.auz:                                           ; preds = %bb.auy
  fence acquire, !dbg !105506
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hf) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3016 unwind label %bb.bw, !dbg !105507

.thread4178:                                      ; preds = %bb.aui, %.thread4182
  %eh.lpad-body25844181 = phi { ptr, i32 } [ %i.dlo, %.thread4182 ], [ %i.dlv, %bb.aui ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.hk) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3016 unwind label %bb.bw, !dbg !105451

.critedge2473:                                    ; preds = %bb.avf, %.noexc3034
  %.pn2171 = phi { ptr, i32 } [ %i.dnt, %bb.avf ], [ %i.doa, %.noexc3034 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.hq) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3016 unwind label %bb.bw, !dbg !105508

bb.ava:                                           ; preds = %bb.aqr
  %i.dnh = load ptr, ptr %i.tm, align 16, !dbg !105509, !nonnull !3011, !align !3101, !noundef !3011 ; 3 uses
  %i.dni = getelementptr inbounds nuw i8, ptr %i.dnh, i64 192, !dbg !105509
  %i.dnj = load ptr, ptr %i.dni, align 8, !dbg !105509, !nonnull !3011, !align !3101, !noundef !3011
  %i.dnk = getelementptr inbounds nuw i8, ptr %i.dnh, i64 184, !dbg !105510
  %i.dnl = load ptr, ptr %i.dnk, align 8, !dbg !105510, !nonnull !3011, !align !3101, !noundef !3011
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dnh, i64 200, !dbg !105511
  %i.dnn = load ptr, ptr %i.dnm, align 8, !dbg !105511, !nonnull !3011, !align !4022, !noundef !3011
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir20resolve_with_columns(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hp, i64 noundef %i.dcy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dnj, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dnl, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.dnn)
          to label %bb.avb unwind label %bb.avf, !dbg !101394

bb.avb:                                           ; preds = %bb.ava
  %i.dno = load i64, ptr %i.al, align 8, !dbg !105512, !range !3398, !noundef !3011
  %.not2167 = icmp eq i64 %i.dno, 18, !dbg !105512
  br i1 %.not2167, label %bb.ave, label %bb.avc, !dbg !105513

bb.avc:                                           ; preds = %bb.avb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !105514
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0sF_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.am, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.al)
          to label %bb.avd unwind label %bb.avf, !dbg !105514

bb.avd:                                           ; preds = %bb.avc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.am, i64 72, i1 false), !dbg !105515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !105516
  %.sroa.01794.0.copyload = load i64, ptr %i.al, align 8, !dbg !105517
  %.sroa.61795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !105517
  %.sroa.71796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !105517
  %.sroa.71796.0.copyload = load ptr, ptr %.sroa.71796.0..sroa_idx, align 8, !dbg !105517
  %.sroa.81797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40, !dbg !105517
  %.sroa.41801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !105518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.41801.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.81797.0..sroa_idx, i64 32, i1 false), !dbg !105517
  %.sroa.21799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !105518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21799.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61795.0..sroa_idx, i64 24, i1 false), !dbg !105519
  store i64 %.sroa.01794.0.copyload, ptr %0, align 8, !dbg !105518
  %.sroa.31800.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !105518
  store ptr %.sroa.71796.0.copyload, ptr %.sroa.31800.0..sroa_idx, align 8, !dbg !105518
  br label %bb.avi, !dbg !105520

bb.ave:                                           ; preds = %bb.avb
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !105521
  %.sroa.61789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !105521
  %.sroa.61789.0.copyload = load ptr, ptr %.sroa.61789.0..sroa_idx, align 8, !dbg !105521, !nonnull !3011, !noundef !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn), !dbg !105522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.dnp, i64 24, i1 false), !dbg !101394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm), !dbg !105523
  store ptr %.sroa.61789.0.copyload, ptr %i.hm, align 8, !dbg !105523
  %i.dnq = load ptr, ptr %i.tm, align 16, !dbg !105524, !nonnull !3011, !align !3101, !noundef !3011 ; 2 uses
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.dnq, i64 184, !dbg !105525
  %i.dns = load ptr, ptr %i.dnr, align 8, !dbg !105525, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RINvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9stack_optNtB5_19ConversionOptimizer12fill_scratchRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB9_7expr_ir6ExprIRERB2g_EBb_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.dnq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dns)
          to label %bb.avg unwind label %bb.avj, !dbg !105526

bb.avf:                                           ; preds = %bb.aqr, %bb.ava, %bb.avc, %bb.avg
  %i.dnt = landingpad { ptr, i32 }
          cleanup
  br label %.critedge2473, !dbg !105527

bb.avg:                                           ; preds = %bb.ave
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.hl, i64 8, !dbg !105528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dnu, ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i64 24, i1 false), !dbg !105529
  %i.dnv = load ptr, ptr %i.hm, align 8, !dbg !105530, !nonnull !3011, !noundef !3011
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.hl, i64 40, !dbg !105528
  store i64 %i.dcy, ptr %i.dnw, align 8, !dbg !105528
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.hl, i64 32, !dbg !105528
  store ptr %i.dnv, ptr %i.dnx, align 16, !dbg !105528
  %i.dny = getelementptr inbounds nuw i8, ptr %i.hl, i64 48, !dbg !105528
  store i8 1, ptr %i.dny, align 16, !dbg !105528
  %.sroa.4621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 49, !dbg !105528
  store i8 0, ptr %.sroa.4621.0..sroa_idx, align 1, !dbg !105528
  %.sroa.5622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 50, !dbg !105528
  store i8 1, ptr %.sroa.5622.0..sroa_idx, align 2, !dbg !105528
  store i64 -9223372036854775792, ptr %i.hl, align 16, !dbg !105528
  %i.dnz = load ptr, ptr %i.tm, align 16, !dbg !105531, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14run_conversion(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.hl, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.dnz, ptr noalias noundef nonnull readonly captures(address, read_provenance) @412, i64 noundef 8)
          to label %bb.avh unwind label %bb.avf, !dbg !105532

bb.avh:                                           ; preds = %bb.avg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm), !dbg !105527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !dbg !105527
  br label %bb.avi, !dbg !105520

bb.avi:                                           ; preds = %bb.avh, %bb.avd
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.hq)
          to label %bb.avl unwind label %bb.arn, !dbg !105508

bb.avj:                                           ; preds = %bb.ave
  %i.doa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !101398), !dbg !105527
  call void @llvm.experimental.noalias.scope.decl(metadata !101399), !dbg !105533
  %i.dob = load ptr, ptr %i.hm, align 8, !dbg !105534, !alias.scope !101400, !nonnull !3011, !noundef !3011
  %i.doc = atomicrmw add ptr %i.dob, i64 -1 release, align 8, !dbg !105535, !noalias !101400
  %i.dod = icmp eq i64 %i.doc, 1, !dbg !105536
  br i1 %i.dod, label %bb.avk, label %.noexc3034, !dbg !105536

bb.avk:                                           ; preds = %bb.avj
  fence acquire, !dbg !105537
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hm) #52
          to label %.noexc3034 unwind label %bb.bw, !dbg !105538

.noexc3034:                                       ; preds = %bb.avk, %bb.avj
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.hn) #51
          to label %.critedge2473 unwind label %bb.bw, !dbg !105527

bb.avl:                                           ; preds = %bb.avi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq), !dbg !105508
  br label %bb.arp, !dbg !105262

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3008: ; preds = %bb.arq, %bb.arp, %bb.arr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy), !dbg !105254
  %i.doe = load i64, ptr %i.ia, align 16, !dbg !105163, !range !3506, !noundef !3011 ; 3 uses
  %i.dof = icmp ne i64 %i.doe, 20, !dbg !105163
  call void @llvm.assume(i1 %i.dof), !dbg !105163
  %i.dog = add nsw i64 %i.doe, -12, !dbg !105163
  %i.doh = icmp samesign ugt i64 %i.doe, 11, !dbg !105163
  %i.doi = select i1 %i.doh, i64 %i.dog, i64 8, !dbg !105163
  switch i64 %i.doi, label %bb.avm [
    i64 2, label %bb.avn
    i64 4, label %bb.avo
    i64 6, label %bb.avp
    i64 7, label %bb.avq
  ], !dbg !105163

bb.avm:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3008, %bb.aqi
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %i.ia)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit unwind label %bb.c, !dbg !105163

bb.avn:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3008
  %i.doj = trunc nuw i8 %.sroa.0938.4 to i1, !dbg !105163
  br i1 %i.doj, label %bb.avr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !105163

bb.avo:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3008
  %i.dok = trunc nuw i8 %.sroa.0944.4 to i1, !dbg !105163
  br i1 %i.dok, label %bb.avs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !105163

bb.avp:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3008
  %i.dol = trunc nuw i8 %.sroa.0942.4 to i1, !dbg !105163
  br i1 %i.dol, label %bb.avu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !105163

bb.avq:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3008
  %i.dom = trunc nuw i8 %.sroa.0940.4 to i1, !dbg !105163
  br i1 %i.dom, label %.invoke, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !105163

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit: ; preds = %.invoke, %.thread4206, %bb.awc, %bb.avu, %bb.avo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3041, %bb.avr, %bb.avq, %bb.avp, %bb.avn, %bb.avm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !dbg !105163
  %i.don = load i64, ptr %1, align 16, !dbg !102274, !range !3407, !noundef !3011 ; 3 uses
  %i.doo = icmp ne i64 %i.don, -9223372036854775782, !dbg !102274
  call void @llvm.assume(i1 %i.doo), !dbg !102274
  %i.dop = add nsw i64 %i.don, 9223372036854775802, !dbg !102274
  %i.doq = icmp ugt i64 %i.don, -9223372036854775803, !dbg !102274
  %i.dor = select i1 %i.doq, i64 %i.dop, i64 20, !dbg !102274
  switch i64 %i.dor, label %.loopexit4494 [
    i64 0, label %bb.id
    i64 1, label %bb.by
    i64 2, label %bb.ca
    i64 3, label %bb.cc
    i64 4, label %bb.ci
    i64 5, label %bb.ck
    i64 6, label %bb.co
    i64 7, label %bb.cq
    i64 8, label %bb.cs
    i64 9, label %bb.cu
    i64 10, label %bb.cw
    i64 11, label %bb.cy
    i64 12, label %bb.da
    i64 13, label %bb.dc
    i64 14, label %bb.de
    i64 15, label %bb.dg
    i64 16, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705
    i64 17, label %bb.dk
    i64 18, label %bb.dn
    i64 19, label %bb.dq
    i64 20, label %bb.ds
    i64 21, label %bb.du
    i64 22, label %bb.dx
    i64 23, label %bb.dz
  ], !dbg !102274

bb.avr:                                           ; preds = %bb.avn, %bb.aqi
  %i.dos = getelementptr inbounds nuw i8, ptr %i.ia, i64 8, !dbg !105163
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.dos)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit unwind label %bb.c, !dbg !105163

bb.avs:                                           ; preds = %bb.avo, %bb.aqi
  %i.dot = getelementptr inbounds nuw i8, ptr %i.ia, i64 8, !dbg !105163 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101401), !dbg !105163
  call void @llvm.experimental.noalias.scope.decl(metadata !101402), !dbg !105539
  %i.dou = load ptr, ptr %i.dot, align 8, !dbg !105540, !alias.scope !101403, !nonnull !3011, !noundef !3011
  %i.dov = atomicrmw add ptr %i.dou, i64 -1 release, align 8, !dbg !105541, !noalias !101403
  %i.dow = icmp eq i64 %i.dov, 1, !dbg !105542
  br i1 %i.dow, label %bb.avt, label %.thread4206, !dbg !105542

bb.avt:                                           ; preds = %bb.avs
  fence acquire, !dbg !105543
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dot) #52
          to label %.thread4206 unwind label %bb.awd, !dbg !105544

bb.avu:                                           ; preds = %bb.avp, %bb.aqi
  %i.dox = getelementptr inbounds nuw i8, ptr %i.ia, i64 128, !dbg !105545
  %i.doy = load i64, ptr %i.dox, align 16, !dbg !105545, !range !3513, !alias.scope !101404, !noundef !3011 ; 2 uses
  %i.doz = icmp ne i64 %i.doy, -9223372036854775778, !dbg !105545
  call void @llvm.assume(i1 %i.doz), !dbg !105545
  %i.dpa = icmp ult i64 %i.doy, -9223372036854775780, !dbg !105545
  br i1 %i.dpa, label %.invoke, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !105545

.invoke:                                          ; preds = %bb.avu, %bb.aqi, %bb.avq
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.ia, i64 16, !dbg !105163
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.dpb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit unwind label %bb.c, !dbg !105163, !inline_history !1683

bb.avv:                                           ; preds = %bb.aqn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !dbg !105546
  %i.dpc = load i64, ptr %i.ge, align 8, !dbg !105547, !range !101405, !noundef !3011 ; 2 uses
  %i.dpd = icmp eq i64 %i.dpc, 12, !dbg !105547
  %i.dpe = getelementptr inbounds nuw i8, ptr %i.ge, i64 8, !dbg !105548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6688, ptr noundef nonnull align 8 dereferenceable(72) %i.dpe, i64 72, i1 false), !dbg !105548
  br i1 %i.dpd, label %bb.avw, label %bb.avz, !dbg !105549

bb.avw:                                           ; preds = %bb.avv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !dbg !105550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6688, i64 72, i1 false), !dbg !105550
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6688), !dbg !105551
  call void @llvm.experimental.noalias.scope.decl(metadata !101407), !dbg !105254
  %i.dpf = load i64, ptr %i.hy, align 8, !dbg !105552, !range !3063, !alias.scope !101407, !noundef !3011
  %i.dpg = icmp eq i64 %i.dpf, 0, !dbg !105552
  br i1 %i.dpg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3041, label %bb.avx, !dbg !105552

bb.avx:                                           ; preds = %bb.avw
  call void @llvm.experimental.noalias.scope.decl(metadata !101408), !dbg !105552
  call void @llvm.experimental.noalias.scope.decl(metadata !101409), !dbg !105553
  %i.dph = load ptr, ptr %i.ddl, align 8, !dbg !105554, !alias.scope !101410, !nonnull !3011, !noundef !3011
  %i.dpi = atomicrmw add ptr %i.dph, i64 -1 release, align 8, !dbg !105555, !noalias !101410
  %i.dpj = icmp eq i64 %i.dpi, 1, !dbg !105556
  br i1 %i.dpj, label %bb.avy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3041, !dbg !105556

bb.avy:                                           ; preds = %bb.avx
  fence acquire, !dbg !105557
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ddl) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3041 unwind label %.split4120, !dbg !105558

bb.avz:                                           ; preds = %bb.avv
  %.sroa.61860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 80, !dbg !105559
  %.sroa.3694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 88, !dbg !105560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.3694.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.61860.0..sroa_idx, i64 128, i1 false), !dbg !105559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !dbg !105550
  %.sroa.2693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 16, !dbg !105560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.2693.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6688, i64 72, i1 false), !dbg !101406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6688), !dbg !105551
  %i.dpk = getelementptr inbounds nuw i8, ptr %i.ti, i64 216, !dbg !105560
  store i64 %i.dcy, ptr %i.dpk, align 8, !dbg !105560
  %i.dpl = getelementptr inbounds nuw i8, ptr %i.ti, i64 8, !dbg !105560
  store i64 %i.dpc, ptr %i.dpl, align 8, !dbg !105560
  store i64 -9223372036854775790, ptr %i.ti, align 16, !dbg !105560
  call void @llvm.experimental.noalias.scope.decl(metadata !101411), !dbg !105254
  %i.dpm = load i64, ptr %i.hy, align 8, !dbg !105561, !range !3063, !alias.scope !101411, !noundef !3011
  %i.dpn = icmp eq i64 %i.dpm, 0, !dbg !105561
  br i1 %i.dpn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3044, label %bb.awa, !dbg !105561

bb.awa:                                           ; preds = %bb.avz
  call void @llvm.experimental.noalias.scope.decl(metadata !101412), !dbg !105561
  call void @llvm.experimental.noalias.scope.decl(metadata !101413), !dbg !105562
  %i.dpo = load ptr, ptr %i.ddl, align 8, !dbg !105563, !alias.scope !101414, !nonnull !3011, !noundef !3011
  %i.dpp = atomicrmw add ptr %i.dpo, i64 -1 release, align 8, !dbg !105564, !noalias !101414
  %i.dpq = icmp eq i64 %i.dpp, 1, !dbg !105565
  br i1 %i.dpq, label %bb.awb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3044, !dbg !105565

bb.awb:                                           ; preds = %bb.awa
  fence acquire, !dbg !105566
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ddl) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3044 unwind label %.split4120, !dbg !105567

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3044: ; preds = %bb.awa, %bb.avz, %bb.awb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy), !dbg !105254
  br label %bb.ate, !dbg !105163

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3041: ; preds = %bb.avx, %bb.avw, %bb.avy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy), !dbg !105254
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !105163

.thread4206:                                      ; preds = %bb.avt, %bb.avs
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.ia, i64 24, !dbg !105163 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101415), !dbg !105163
  call void @llvm.experimental.noalias.scope.decl(metadata !101416), !dbg !105568
  %i.dps = load ptr, ptr %i.dpr, align 8, !dbg !105569, !alias.scope !101417, !nonnull !3011, !noundef !3011
  %i.dpt = atomicrmw add ptr %i.dps, i64 -1 release, align 8, !dbg !105570, !noalias !101417
  %i.dpu = icmp eq i64 %i.dpt, 1, !dbg !105571
  br i1 %i.dpu, label %bb.awc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !105571

bb.awc:                                           ; preds = %.thread4206
  fence acquire, !dbg !105572
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dpr) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit unwind label %bb.c, !dbg !105573

bb.awd:                                           ; preds = %bb.avt
  %5 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %6 = extractvalue { ptr, i32 } %5, 0            ; 2 uses
  %7 = extractvalue { ptr, i32 } %5, 1            ; 2 uses
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.ia, i64 24, !dbg !105163 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101418), !dbg !105163
  call void @llvm.experimental.noalias.scope.decl(metadata !101419), !dbg !105574
  %i.dpw = load ptr, ptr %i.dpv, align 8, !dbg !105575, !alias.scope !101420, !nonnull !3011, !noundef !3011
  %i.dpx = atomicrmw add ptr %i.dpw, i64 -1 release, align 8, !dbg !105576, !noalias !101420
  %i.dpy = icmp eq i64 %i.dpx, 1, !dbg !105577
  br i1 %i.dpy, label %bb.awe, label %.critedge2460, !dbg !105577

bb.awe:                                           ; preds = %bb.awd
  fence acquire, !dbg !105578
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dpv) #52
          to label %.critedge2460 unwind label %bb.bw, !dbg !105579

bb.awf:                                           ; preds = %.split4120.thread, %.noexc3004
  %.sroa.02013.784128 = phi ptr [ %.sroa.02013.7841224138, %.split4120.thread ], [ %.sroa.02013.78, %.noexc3004 ] ; 10 uses
  %.sroa.478.784127 = phi i32 [ %.sroa.478.7841214137, %.split4120.thread ], [ %.sroa.478.78, %.noexc3004 ] ; 10 uses
  %.sroa.0938.04126 = phi i8 [ %.sroa.0938.1.ph, %.split4120.thread ], [ %.sroa.0938.2, %.noexc3004 ]
  %.sroa.0940.04125 = phi i8 [ %.sroa.0940.1.ph, %.split4120.thread ], [ %.sroa.0940.2, %.noexc3004 ]
  %.sroa.0942.04124 = phi i8 [ %.sroa.0942.1.ph, %.split4120.thread ], [ %.sroa.0942.2, %.noexc3004 ]
  %.sroa.0944.04123 = phi i8 [ %.sroa.0944.1.ph, %.split4120.thread ], [ %.sroa.0944.2, %.noexc3004 ]
  %i.dpz = load i64, ptr %i.ia, align 16, !dbg !105163, !range !3506, !noundef !3011 ; 3 uses
  %i.dqa = icmp ne i64 %i.dpz, 20, !dbg !105163
  call void @llvm.assume(i1 %i.dqa), !dbg !105163
  %i.dqb = add nsw i64 %i.dpz, -12, !dbg !105163
  %i.dqc = icmp samesign ugt i64 %i.dpz, 11, !dbg !105163
  %i.dqd = select i1 %i.dqc, i64 %i.dqb, i64 8, !dbg !105163
  switch i64 %i.dqd, label %bb.awg [
    i64 2, label %bb.awh
    i64 4, label %bb.awi
    i64 6, label %bb.awj
    i64 7, label %bb.awk
  ], !dbg !105163

bb.awg:                                           ; preds = %bb.awf
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %i.ia) #51
          to label %.critedge2460 unwind label %bb.bw, !dbg !105163

bb.awh:                                           ; preds = %bb.awf
  %i.dqe = trunc nuw i8 %.sroa.0938.04126 to i1, !dbg !105163
  br i1 %i.dqe, label %bb.awl, label %.critedge2460, !dbg !105163

bb.awi:                                           ; preds = %bb.awf
  %cond2544 = icmp eq i8 %.sroa.0944.04123, 0, !dbg !105163
  br i1 %cond2544, label %.critedge2460, label %bb.awm, !dbg !105163

bb.awj:                                           ; preds = %bb.awf
  %i.dqf = trunc nuw i8 %.sroa.0942.04124 to i1, !dbg !105163
  br i1 %i.dqf, label %bb.awp, label %.critedge2460, !dbg !105163

bb.awk:                                           ; preds = %bb.awf
  %i.dqg = trunc nuw i8 %.sroa.0940.04125 to i1, !dbg !105163
  br i1 %i.dqg, label %.invoke5011.a, label %.critedge2460, !dbg !105163

bb.awl:                                           ; preds = %bb.awh
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.ia, i64 8, !dbg !105163
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.dqh) #51
          to label %.critedge2460 unwind label %bb.bw, !dbg !105163

bb.awm:                                           ; preds = %bb.awi
  %i.dqi = getelementptr inbounds nuw i8, ptr %i.ia, i64 8, !dbg !105163 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101421), !dbg !105163
  call void @llvm.experimental.noalias.scope.decl(metadata !101422), !dbg !105580
  %i.dqj = load ptr, ptr %i.dqi, align 8, !dbg !105581, !alias.scope !101423, !nonnull !3011, !noundef !3011
  %i.dqk = atomicrmw add ptr %i.dqj, i64 -1 release, align 8, !dbg !105582, !noalias !101423
  %i.dql = icmp eq i64 %i.dqk, 1, !dbg !105583
  br i1 %i.dql, label %bb.awn, label %.noexc3049, !dbg !105583

bb.awn:                                           ; preds = %bb.awm
  fence acquire, !dbg !105584
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dqi) #52
          to label %.noexc3049 unwind label %bb.bw, !dbg !105585

.noexc3049:                                       ; preds = %bb.awn, %bb.awm
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.ia, i64 24, !dbg !105163 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101424), !dbg !105163
  call void @llvm.experimental.noalias.scope.decl(metadata !101425), !dbg !105586
  %i.dqn = load ptr, ptr %i.dqm, align 8, !dbg !105587, !alias.scope !101426, !nonnull !3011, !noundef !3011
  %i.dqo = atomicrmw add ptr %i.dqn, i64 -1 release, align 8, !dbg !105588, !noalias !101426
  %i.dqp = icmp eq i64 %i.dqo, 1, !dbg !105589
  br i1 %i.dqp, label %bb.awo, label %.critedge2460, !dbg !105589

bb.awo:                                           ; preds = %.noexc3049
  fence acquire, !dbg !105590
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dqm) #52
          to label %.critedge2460 unwind label %bb.bw, !dbg !105591

bb.awp:                                           ; preds = %bb.awj
  %i.dqq = getelementptr inbounds nuw i8, ptr %i.ia, i64 128, !dbg !105592
  %i.dqr = load i64, ptr %i.dqq, align 16, !dbg !105592, !range !3513, !alias.scope !101427, !noundef !3011 ; 2 uses
  %i.dqs = icmp ne i64 %i.dqr, -9223372036854775778, !dbg !105592
  call void @llvm.assume(i1 %i.dqs), !dbg !105592
  %i.dqt = icmp ult i64 %i.dqr, -9223372036854775780, !dbg !105592
  br i1 %i.dqt, label %.invoke5011.a, label %.critedge2460, !dbg !105592

.invoke5011.a:                                    ; preds = %bb.awp, %bb.awk
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.ia, i64 16, !dbg !105163
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.dqu)
          to label %.critedge2460 unwind label %bb.bw, !dbg !105163, !inline_history !1683

bb.awq:                                           ; preds = %bb.bb
  %i.dqv = load i64, ptr %i.dp, align 8, !dbg !105593, !range !3398, !noundef !3011
  %.not2153 = icmp eq i64 %i.dqv, 18, !dbg !105593
  br i1 %.not2153, label %bb.awt, label %bb.awr, !dbg !105594

bb.awr:                                           ; preds = %bb.awq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !dbg !105595
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0s_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dq, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.dp)
          to label %bb.aws unwind label %bb.c, !dbg !105595

bb.aws:                                           ; preds = %bb.awr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i64 72, i1 false), !dbg !105596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !dbg !105597
  %.sroa.01232.0.copyload = load i64, ptr %i.dp, align 8, !dbg !105598
  %.sroa.61233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !105598
  %.sroa.71234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 32, !dbg !105598
  %.sroa.31237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !105599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.31237.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71234.0..sroa_idx, i64 40, i1 false), !dbg !105598
  %.sroa.21236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !105599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61233.0..sroa_idx, i64 24, i1 false), !dbg !105600
  store i64 %.sroa.01232.0.copyload, ptr %0, align 8, !dbg !105599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.td), !dbg !105601
  %i.dqw = load i64, ptr %1, align 16, !dbg !102274, !range !3407, !noundef !3011 ; 3 uses
  %i.dqx = icmp ne i64 %i.dqw, -9223372036854775782, !dbg !102274
  call void @llvm.assume(i1 %i.dqx), !dbg !102274
  %i.dqy = add nsw i64 %i.dqw, 9223372036854775802, !dbg !102274
  %i.dqz = icmp ugt i64 %i.dqw, -9223372036854775803, !dbg !102274
  %i.dra = select i1 %i.dqz, i64 %i.dqy, i64 20, !dbg !102274
  switch i64 %i.dra, label %.loopexit4494 [
    i64 0, label %bb.id
    i64 1, label %bb.by
    i64 2, label %bb.ca
    i64 3, label %bb.cc
    i64 4, label %bb.ci
    i64 5, label %bb.ck
    i64 6, label %bb.co
    i64 7, label %bb.cq
    i64 8, label %bb.cs
    i64 9, label %bb.cu
    i64 10, label %bb.cw
    i64 11, label %bb.cy
    i64 12, label %bb.da
    i64 13, label %bb.dc
    i64 14, label %bb.de
    i64 15, label %bb.dg
    i64 16, label %bb.di
    i64 17, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705
    i64 18, label %bb.dn
    i64 19, label %bb.dq
    i64 20, label %bb.ds
    i64 21, label %bb.du
    i64 22, label %bb.dx
    i64 23, label %bb.dz
  ], !dbg !102274

bb.awt:                                           ; preds = %bb.awq
  %i.drb = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !105602 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.td, ptr noundef nonnull align 8 dereferenceable(24) %i.drb, i64 24, i1 false), !dbg !101429
  %i.drc = trunc nuw i8 %.sroa.331.0.copyload to i1, !dbg !105603
  br i1 %i.drc, label %bb.awv, label %bb.awu, !dbg !105603

bb.awu:                                           ; preds = %bb.awz, %bb.awt
  %i.drd = trunc nuw i8 %.sroa.228.0.copyload to i1, !dbg !105604
  br i1 %i.drd, label %bb.axb, label %bb.axa, !dbg !105604

bb.awv:                                           ; preds = %bb.awt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.651), !dbg !101432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tb), !dbg !101432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ta), !dbg !105605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ta, ptr noundef nonnull align 8 dereferenceable(24) %i.drb, i64 24, i1 false), !dbg !105605
  %i.dre = load ptr, ptr %i.tm, align 16, !dbg !105606, !nonnull !3011, !align !3101, !noundef !3011 ; 2 uses
  %i.drf = getelementptr inbounds nuw i8, ptr %i.dre, i64 192, !dbg !105606
  %i.drg = load ptr, ptr %i.drf, align 8, !dbg !105606, !nonnull !3011, !align !3101, !noundef !3011
  %i.drh = getelementptr inbounds nuw i8, ptr %i.dre, i64 184, !dbg !105607
  %i.dri = load ptr, ptr %i.drh, align 8, !dbg !105607, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir6concat23convert_diagonal_concat(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.tb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ta, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.drg, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dri)
          to label %bb.awx unwind label %bb.aww, !dbg !101432

.thread4219:                                      ; preds = %bb.axd, %bb.ayd, %bb.axi, %bb.axh, %bb.axb
  %lpad.thr_comm4217 = landingpad { ptr, i32 }
          cleanup
  br label %.thread4208, !dbg !105601

bb.aww:                                           ; preds = %bb.awv, %bb.ayg
  %lpad.thr_comm.split-lp4218 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.478.93 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4218, 1
  %.sroa.02013.93 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4218, 0
  br label %.critedge2460, !dbg !105601

bb.awx:                                           ; preds = %bb.awv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ta), !dbg !105608
  %i.drj = load i64, ptr %i.tb, align 8, !dbg !105609, !range !3398, !noundef !3011 ; 2 uses
  %.not2155 = icmp eq i64 %i.drj, 18, !dbg !105609
  %i.drk = getelementptr inbounds nuw i8, ptr %i.tb, i64 8, !dbg !105610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, ptr noundef nonnull align 8 dereferenceable(24) %i.drk, i64 24, i1 false), !dbg !105610
  br i1 %.not2155, label %bb.awz, label %bb.awy, !dbg !105611

bb.awy:                                           ; preds = %bb.awx
  %.sroa.61243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tb, i64 32, !dbg !105612
  %.sroa.31246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !105613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.31246.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61243.0..sroa_idx, i64 40, i1 false), !dbg !105612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tb), !dbg !105614
  %.sroa.21245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !105613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21245.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, i64 24, i1 false), !dbg !105614
  store i64 %i.drj, ptr %0, align 8, !dbg !105613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651), !dbg !105615
  br label %bb.aye, !dbg !105616

bb.awz:                                           ; preds = %bb.awx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tb), !dbg !105614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.td, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, i64 24, i1 false), !dbg !101432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651), !dbg !105615
end_hunk_4
begin_hunk_5_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a

bb.bjk:                                           ; preds = %.lr.ph
  %i.equ = load ptr, ptr %.sroa.0868.04623, align 8, !dbg !106380, !alias.scope !102054, !noundef !3011
  %i.eqv = getelementptr inbounds nuw i8, ptr %.sroa.0868.04623, i64 8, !dbg !106381
  %i.eqw = load i64, ptr %i.eqv, align 8, !dbg !106381, !alias.scope !102054, !noundef !3011
  br label %bb.bjn, !dbg !106382

._crit_edge:                                      ; preds = %bb.bjq
  %.pre4804 = load i64, ptr %i.acz, align 8, !dbg !106383
  %.pre = load ptr, ptr %i.dy, align 8, !dbg !106383
  %i.eqx = getelementptr inbounds nuw i8, ptr %i.ti, i64 24, !dbg !106384
  store i64 %i.ent, ptr %i.eqx, align 8, !dbg !106384
  %i.eqy = getelementptr inbounds nuw i8, ptr %i.ti, i64 32, !dbg !106384
  store i64 %i.eof, ptr %i.eqy, align 16, !dbg !106384
  %i.eqz = getelementptr inbounds nuw i8, ptr %i.ti, i64 8, !dbg !106384
  store ptr %.pre, ptr %i.eqz, align 8, !dbg !106384
  %i.era = getelementptr inbounds nuw i8, ptr %i.ti, i64 16, !dbg !106384
  store i64 %.pre4804, ptr %i.era, align 16, !dbg !106384
  %i.erb = getelementptr inbounds nuw i8, ptr %i.ti, i64 40, !dbg !106384
  store i8 %i.adb, ptr %i.erb, align 8, !dbg !106384
  store i64 -9223372036854775784, ptr %i.ti, align 16, !dbg !106384
  call void @llvm.experimental.noalias.scope.decl(metadata !102055), !dbg !106348
  %i.erc = load i64, ptr %i.du, align 8, !dbg !106385, !range !3063, !alias.scope !102055, !noundef !3011
  %i.erd = icmp eq i64 %i.erc, 0, !dbg !106385
  br i1 %i.erd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3157, label %bb.bjl, !dbg !106385

bb.bjl:                                           ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !102056), !dbg !106385
  call void @llvm.experimental.noalias.scope.decl(metadata !102057), !dbg !106386
  %i.ere = load ptr, ptr %i.epl, align 8, !dbg !106387, !alias.scope !102058, !nonnull !3011, !noundef !3011
  %i.erf = atomicrmw add ptr %i.ere, i64 -1 release, align 8, !dbg !106388, !noalias !102058
  %i.erg = icmp eq i64 %i.erf, 1, !dbg !106389
  br i1 %i.erg, label %bb.bjm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3157, !dbg !106389

bb.bjm:                                           ; preds = %bb.bjl
  fence acquire, !dbg !106390
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.epl) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3157 unwind label %bb.biy, !dbg !106391

bb.bjn:                                           ; preds = %bb.bjk, %bb.bjj
  %.sroa.01.0.i3152 = phi i64 [ %i.eqw, %bb.bjk ], [ %.sroa.0.0.i.i3151, %bb.bjj ], !dbg !106392
  %.sroa.0.0.i3153 = phi ptr [ %i.equ, %bb.bjk ], [ %.sroa.0868.04623, %bb.bjj ], !dbg !106393
  %i.erh = getelementptr inbounds nuw i8, ptr %i.eqo, i64 16, !dbg !106394
  invoke void @_RNvMs1_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE7try_getCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.erh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i3153, i64 noundef %.sroa.01.0.i3152)
          to label %bb.bjo unwind label %.loopexit.split-lp4550.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !106395

bb.bjo:                                           ; preds = %bb.bjn
  %i.eri = load i64, ptr %i.o, align 8, !dbg !106396, !range !3398, !noundef !3011
  %.not2087 = icmp eq i64 %i.eri, 18, !dbg !106396
  br i1 %.not2087, label %bb.bjq, label %bb.bjp, !dbg !106397

bb.bjp:                                           ; preds = %bb.bjo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !106398
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0s1b_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.o)
          to label %.loopexit4554 unwind label %.loopexit.split-lp4550.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !106398

.loopexit4554:                                    ; preds = %bb.bjp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !106399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !106400
  %.sroa.02005.0.copyload.pre = load i64, ptr %i.o, align 8, !dbg !106401
  %.sroa.62006.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !106401
  %.sroa.62006.0.copyload = load ptr, ptr %.sroa.62006.0..sroa_idx, align 8, !dbg !106401
  %.sroa.72007.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !106401
  %.sroa.32010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !106402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.32010.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.72007.0..sroa_idx, i64 56, i1 false), !dbg !106401
  store i64 %.sroa.02005.0.copyload.pre, ptr %0, align 8, !dbg !106402
  %.sroa.22009.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !106402
  store ptr %.sroa.62006.0.copyload, ptr %.sroa.22009.0..sroa_idx, align 8, !dbg !106402
  br label %bb.bjg, !dbg !106361

bb.bjq:                                           ; preds = %bb.bjo
  %i.erj = icmp eq ptr %i.eqk, %i.eqe, !dbg !106403
  br i1 %i.erj, label %._crit_edge, label %.lr.ph, !dbg !106404

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3157: ; preds = %bb.bjl, %._crit_edge, %bb.bjm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !dbg !106348
  call void @llvm.experimental.noalias.scope.decl(metadata !102065), !dbg !106332
  %i.erk = load i64, ptr %i.dv, align 8, !dbg !106405, !range !3063, !alias.scope !102065, !noundef !3011
  %i.erl = icmp eq i64 %i.erk, 0, !dbg !106405
  br i1 %i.erl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160, label %bb.bjr, !dbg !106405

bb.bjr:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3157
  call void @llvm.experimental.noalias.scope.decl(metadata !102066), !dbg !106405
  call void @llvm.experimental.noalias.scope.decl(metadata !102067), !dbg !106406
  %i.erm = load ptr, ptr %i.eos, align 8, !dbg !106407, !alias.scope !102068, !nonnull !3011, !noundef !3011
  %i.ern = atomicrmw add ptr %i.erm, i64 -1 release, align 8, !dbg !106408, !noalias !102068
  %i.ero = icmp eq i64 %i.ern, 1, !dbg !106409
  br i1 %i.ero, label %bb.bjs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160, !dbg !106409

bb.bjs:                                           ; preds = %bb.bjr
  fence acquire, !dbg !106410
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eos) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160 unwind label %.split4325, !dbg !106411

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3160: ; preds = %bb.bjr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3157, %bb.bjs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !dbg !106332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !101962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !dbg !101962
  br label %bb.bs, !dbg !101962

bb.bjt:                                           ; preds = %bb.bt, %bb.bs
  %i.erp = getelementptr inbounds nuw i8, ptr %i.ael, i64 8, !dbg !106412
  %i.erq = load ptr, ptr %i.erp, align 8, !dbg !106412, !alias.scope !98886, !nonnull !3011, !noundef !3011
  %i.err = getelementptr inbounds nuw [368 x i8], ptr %i.erq, i64 %i.aen, !dbg !106413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.err, ptr noundef nonnull align 16 dereferenceable(368) %i.ti, i64 368, i1 false), !dbg !106414
  %i.ers = add nuw nsw i64 %i.aen, 1, !dbg !106415
  store i64 %i.ers, ptr %i.aem, align 8, !dbg !106415, !alias.scope !98886
  %i.ert = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !106416
  store i64 %i.aen, ptr %i.ert, align 8, !dbg !106416
  store i64 18, ptr %0, align 8, !dbg !106416
  %i.eru = load i64, ptr %1, align 16, !dbg !102274, !range !3407, !noundef !3011 ; 2 uses
  %i.erv = icmp ne i64 %i.eru, -9223372036854775782, !dbg !102274
  call void @llvm.assume(i1 %i.erv), !dbg !102274
  %i.erw = icmp eq i64 %i.eru, -9223372036854775799, !dbg !102274
  br i1 %i.erw, label %bb.bju, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bju:                                           ; preds = %bb.bjt
  %i.erx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102069), !dbg !102274
  %i.ery = load i64, ptr %i.erx, align 8, !dbg !106417, !range !3127, !alias.scope !102069, !noundef !3011
  %i.erz = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !106417 ; 5 uses
  switch i64 %i.ery, label %bb.bjv [
    i64 0, label %bb.bjx
    i64 1, label %bb.bjy
  ], !dbg !106417

bb.bjv:                                           ; preds = %bb.bju
  call void @llvm.experimental.noalias.scope.decl(metadata !102070), !dbg !106417
  call void @llvm.experimental.noalias.scope.decl(metadata !102071), !dbg !106418
  %i.esa = load ptr, ptr %i.erz, align 16, !dbg !106419, !alias.scope !102072, !nonnull !3011, !noundef !3011
  %i.esb = atomicrmw add ptr %i.esa, i64 -1 release, align 8, !dbg !106420, !noalias !102072
  %i.esc = icmp eq i64 %i.esb, 1, !dbg !106421
  br i1 %i.esc, label %bb.bjw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3163, !dbg !106421

bb.bjw:                                           ; preds = %bb.bjv
  fence acquire, !dbg !106422
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.erz) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3163 unwind label %bb.bka, !dbg !106423

bb.bjx:                                           ; preds = %bb.bju
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.erz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3163 unwind label %bb.bka, !dbg !106424

bb.bjy:                                           ; preds = %bb.bju
  call void @llvm.experimental.noalias.scope.decl(metadata !102073), !dbg !106417
  call void @llvm.experimental.noalias.scope.decl(metadata !102074), !dbg !106425
  %i.esd = load ptr, ptr %i.erz, align 16, !dbg !106426, !alias.scope !102075, !nonnull !3011, !noundef !3011
  %i.ese = atomicrmw add ptr %i.esd, i64 -1 release, align 8, !dbg !106427, !noalias !102075
  %i.esf = icmp eq i64 %i.ese, 1, !dbg !106428
  br i1 %i.esf, label %bb.bjz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3163, !dbg !106428

bb.bjz:                                           ; preds = %bb.bjy
  fence acquire, !dbg !106429
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.erz) #52, !dbg !106430
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3163, !dbg !106430

bb.bka:                                           ; preds = %bb.bjx, %bb.bjw
  %i.esg = landingpad { ptr, i32 }
          cleanup
  %i.esh = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102274
  %.val2612 = load ptr, ptr %i.esh, align 8, !dbg !102274, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr nonnull %.val2612) #51
          to label %bb.bkb unwind label %bb.bw, !dbg !102274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3163: ; preds = %bb.bjz, %bb.bjy, %bb.bjv, %bb.bjw, %bb.bjx
  %i.esi = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102274
  %.val2611 = load ptr, ptr %i.esi, align 8, !dbg !102274, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr nonnull %.val2611)
          to label %bb.bkd unwind label %bb.bkc, !dbg !102274

bb.bkb:                                           ; preds = %bb.bka, %bb.bkc
  %.pn2430.a = phi { ptr, i32 } [ %i.esk, %bb.bkc ], [ %i.esg, %bb.bka ] ; 2 uses
  %.sroa.478.123 = extractvalue { ptr, i32 } %.pn2430.a, 1
  %.sroa.02013.123 = extractvalue { ptr, i32 } %.pn2430.a, 0
  %i.esj = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !102274
  %.val2617 = load ptr, ptr %i.esj, align 16, !dbg !102274, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr %.val2617) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

bb.bkc:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3163
  %i.esk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bkb

bb.bkd:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3163
  %i.esl = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !102274
  %.val2616 = load ptr, ptr %i.esl, align 16, !dbg !102274, !nonnull !3011, !noundef !3011 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEBM_(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val2616)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_.exit unwind label %bb.bke, !dbg !106431

bb.bke:                                           ; preds = %bb.bkd
  %i.esm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2616, i64 noundef 72, i64 noundef 8) #44, !dbg !106432
  br label %common.resume, !dbg !106431

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_.exit: ; preds = %bb.bkd
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2616, i64 noundef 72, i64 noundef 8) #44, !dbg !106433
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

.critedge2488:                                    ; preds = %.invoke5012, %.invoke5010, %bb.bsc, %.critedge2533, %bb.bsb, %bb.brr, %.critedge2519, %bb.brm, %.critedge2510, %bb.brg, %.noexc3261, %.critedge2503, %bb.bqy, %bb.bqr, %.noexc3245, %bb.bqp, %bb.bql, %bb.bqm, %bb.bqh, %bb.bpd, %bb.bpe, %bb.boi, %bb.boj, %bb.bno, %bb.bnp, %bb.bnd, %bb.bne, %bb.bnb, %bb.bnc, %.body2710, %bb.blv, %bb.blr, %bb.bls, %.body3179, %bb.blq, %bb.bkb, %bb.bqd, %bb.bqb, %bb.bqa, %bb.bpx, %bb.bpv, %bb.bpu, %bb.bpt, %bb.bps, %bb.bpr, %bb.bpq, %bb.bpp, %bb.bpo, %bb.bpn, %bb.bpm, %bb.bpl, %bb.bpi, %.noexc3291, %.noexc3287, %.critedge2524, %.noexc3281, %.noexc3273.a, %.noexc3265.a, %.critedge2497.a, %bb.bqk, %.noexc3239, %bb.bqe, %bb.bqc, %bb.bpz, %bb.bpy, %bb.bpw, %bb.bpj, %bb.bph, %bb.bpg, %bb.box, %bb.bou, %bb.bot, %bb.bos, %bb.bol, %bb.bnr, %bb.bng, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3199, %bb.bli
  %.sroa.02013.124 = phi ptr [ %10, %bb.bli ], [ %.sroa.02013.0, %bb.bqd ], [ %.sroa.02013.0, %bb.bps ], [ %.sroa.02013.123, %bb.bkb ], [ %.sroa.02013.127, %.body3179 ], [ %.sroa.02013.0, %bb.bpr ], [ %i.evh, %bb.blr ], [ %.sroa.02013.0, %bb.bpq ], [ %.sroa.02013.131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3199 ], [ %i.evs, %.body2710 ], [ %i.evh, %bb.bls ], [ %i.evs, %bb.blv ], [ %.sroa.02013.135, %bb.bnb ], [ %.sroa.02013.0, %bb.bqc ], [ %i.eym, %bb.bng ], [ %.sroa.02013.0, %.invoke5012 ], [ %i.eyb, %bb.bne ], [ %i.eyb, %bb.bnd ], [ %15, %bb.bnr ], [ %.sroa.02013.136, %bb.bno ], [ %.sroa.02013.135, %bb.bnc ], [ %.sroa.02013.136, %bb.bnp ], [ %20, %bb.bol ], [ %.sroa.02013.141, %bb.boi ], [ %.sroa.02013.142, %bb.bos ], [ %.sroa.02013.141, %bb.boj ], [ %i.fax, %bb.bot ], [ %.sroa.02013.0, %bb.bpt ], [ %i.fbc, %bb.bou ], [ %.sroa.02013.0, %.noexc3291 ], [ %i.fbj, %bb.box ], [ %.sroa.02013.0, %bb.bsc ], [ %.sroa.02013.0, %bb.brm ], [ %.sroa.02013.127, %bb.blq ], [ %.sroa.02013.0, %.critedge2533 ], [ %.sroa.02013.0, %bb.bpg ], [ %.sroa.02013.0, %bb.bqe ], [ %.sroa.02013.0, %bb.bph ], [ %.sroa.02013.0, %.noexc3239 ], [ %.sroa.02013.143, %bb.bpd ], [ %.sroa.02013.143, %bb.bpe ], [ %.sroa.02013.0, %bb.bpj ], [ %.sroa.02013.0, %bb.bqh ], [ %.sroa.02013.0, %bb.bqk ], [ %.sroa.02013.0, %bb.bqm ], [ %.sroa.02013.0, %bb.bql ], [ %.sroa.02013.0, %bb.bqp ], [ %.sroa.02013.0, %.noexc3245 ], [ %.sroa.02013.0, %.critedge2497.a ], [ %.sroa.02013.0, %bb.bqr ], [ %.sroa.02013.0, %bb.bpp ], [ %.sroa.02013.0, %bb.bsb ], [ %.sroa.02013.0, %bb.bqy ], [ %.sroa.02013.0, %.critedge2503 ], [ %.sroa.02013.0, %.noexc3265.a ], [ %.sroa.02013.0, %.noexc3261 ], [ %.sroa.02013.0, %.invoke5010 ], [ %.sroa.02013.0, %bb.brg ], [ %.sroa.02013.0, %.noexc3273.a ], [ %.sroa.02013.0, %.critedge2510 ], [ %.sroa.02013.0, %bb.bpx ], [ %.sroa.02013.0, %bb.bqa ], [ %.sroa.02013.0, %.noexc3281 ], [ %.sroa.02013.0, %.critedge2519 ], [ %.sroa.02013.0, %.critedge2524 ], [ %.sroa.02013.0, %bb.bpv ], [ %.sroa.02013.0, %bb.bpu ], [ %.sroa.02013.0, %bb.bpw ], [ %.sroa.02013.0, %.noexc3287 ], [ %.sroa.02013.0, %bb.brr ], [ %.sroa.02013.0, %bb.bpm ], [ %.sroa.02013.0, %bb.bpy ], [ %.sroa.02013.0, %bb.bpn ], [ %.sroa.02013.0, %bb.bpz ], [ %.sroa.02013.0, %bb.bpo ], [ %.sroa.02013.0, %bb.bqb ], [ %.sroa.02013.0, %bb.bpi ], [ %.sroa.02013.0, %bb.bpl ]
  %.sroa.478.124 = phi i32 [ %11, %bb.bli ], [ %.sroa.478.0, %bb.bqd ], [ %.sroa.478.0, %bb.bps ], [ %.sroa.478.123, %bb.bkb ], [ %.sroa.478.127, %.body3179 ], [ %.sroa.478.0, %bb.bpr ], [ %i.evg, %bb.blr ], [ %.sroa.478.0, %bb.bpq ], [ %.sroa.478.131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3199 ], [ %i.evr, %.body2710 ], [ %i.evg, %bb.bls ], [ %i.evr, %bb.blv ], [ %.sroa.478.135, %bb.bnb ], [ %.sroa.478.0, %bb.bqc ], [ %i.eyl, %bb.bng ], [ %.sroa.478.0, %.invoke5012 ], [ %i.eya, %bb.bne ], [ %i.eya, %bb.bnd ], [ %16, %bb.bnr ], [ %.sroa.478.136, %bb.bno ], [ %.sroa.478.135, %bb.bnc ], [ %.sroa.478.136, %bb.bnp ], [ %21, %bb.bol ], [ %.sroa.478.141, %bb.boi ], [ %.sroa.478.142, %bb.bos ], [ %.sroa.478.141, %bb.boj ], [ %i.faw, %bb.bot ], [ %.sroa.478.0, %bb.bpt ], [ %i.fbb, %bb.bou ], [ %.sroa.478.0, %.noexc3291 ], [ %i.fbi, %bb.box ], [ %.sroa.478.0, %bb.bsc ], [ %.sroa.478.0, %bb.brm ], [ %.sroa.478.127, %bb.blq ], [ %.sroa.478.0, %.critedge2533 ], [ %.sroa.478.0, %bb.bpg ], [ %.sroa.478.0, %bb.bqe ], [ %.sroa.478.0, %bb.bph ], [ %.sroa.478.0, %.noexc3239 ], [ %.sroa.478.143, %bb.bpd ], [ %.sroa.478.143, %bb.bpe ], [ %.sroa.478.0, %bb.bpj ], [ %.sroa.478.0, %bb.bqh ], [ %.sroa.478.0, %bb.bqk ], [ %.sroa.478.0, %bb.bqm ], [ %.sroa.478.0, %bb.bql ], [ %.sroa.478.0, %bb.bqp ], [ %.sroa.478.0, %.noexc3245 ], [ %.sroa.478.0, %.critedge2497.a ], [ %.sroa.478.0, %bb.bqr ], [ %.sroa.478.0, %bb.bpp ], [ %.sroa.478.0, %bb.bsb ], [ %.sroa.478.0, %bb.bqy ], [ %.sroa.478.0, %.critedge2503 ], [ %.sroa.478.0, %.noexc3265.a ], [ %.sroa.478.0, %.noexc3261 ], [ %.sroa.478.0, %.invoke5010 ], [ %.sroa.478.0, %bb.brg ], [ %.sroa.478.0, %.noexc3273.a ], [ %.sroa.478.0, %.critedge2510 ], [ %.sroa.478.0, %bb.bpx ], [ %.sroa.478.0, %bb.bqa ], [ %.sroa.478.0, %.noexc3281 ], [ %.sroa.478.0, %.critedge2519 ], [ %.sroa.478.0, %.critedge2524 ], [ %.sroa.478.0, %bb.bpv ], [ %.sroa.478.0, %bb.bpu ], [ %.sroa.478.0, %bb.bpw ], [ %.sroa.478.0, %.noexc3287 ], [ %.sroa.478.0, %bb.brr ], [ %.sroa.478.0, %bb.bpm ], [ %.sroa.478.0, %bb.bpy ], [ %.sroa.478.0, %bb.bpn ], [ %.sroa.478.0, %bb.bpz ], [ %.sroa.478.0, %bb.bpo ], [ %.sroa.478.0, %bb.bqb ], [ %.sroa.478.0, %bb.bpi ], [ %.sroa.478.0, %bb.bpl ]
  %i.esn = insertvalue { ptr, i32 } poison, ptr %.sroa.02013.124, 0, !dbg !102591
  %i.eso = insertvalue { ptr, i32 } %i.esn, i32 %.sroa.478.124, 1, !dbg !102591
  br label %common.resume, !dbg !102591

bb.bkf:                                           ; preds = %bb.bjd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !106434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !106435
  br label %bb.bjg, !dbg !106361

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3150: ; preds = %bb.bjh, %bb.bjg, %bb.bji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !dbg !106348
  call void @llvm.experimental.noalias.scope.decl(metadata !102076), !dbg !106332
  %i.esp = load i64, ptr %i.dv, align 8, !dbg !106436, !range !3063, !alias.scope !102076, !noundef !3011
  %i.esq = icmp eq i64 %i.esp, 0, !dbg !106436
  br i1 %i.esq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3166, label %bb.bkg, !dbg !106436

bb.bkg:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3150
  call void @llvm.experimental.noalias.scope.decl(metadata !102077), !dbg !106436
  call void @llvm.experimental.noalias.scope.decl(metadata !102078), !dbg !106437
  %i.esr = load ptr, ptr %i.eos, align 8, !dbg !106438, !alias.scope !102079, !nonnull !3011, !noundef !3011
  %i.ess = atomicrmw add ptr %i.esr, i64 -1 release, align 8, !dbg !106439, !noalias !102079
  %i.est = icmp eq i64 %i.ess, 1, !dbg !106440
  br i1 %i.est, label %bb.bkh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3166, !dbg !106440

bb.bkh:                                           ; preds = %bb.bkg
  fence acquire, !dbg !106441
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eos) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3166 unwind label %.split4325.thread, !dbg !106442

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3166: ; preds = %bb.bkg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3150, %bb.bkh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !dbg !106332
  call void @llvm.experimental.noalias.scope.decl(metadata !102080), !dbg !101962
  call void @llvm.experimental.noalias.scope.decl(metadata !102081), !dbg !106443
  %i.esu = load ptr, ptr %i.dy, align 8, !dbg !106444, !alias.scope !102082, !nonnull !3011, !noundef !3011
  %i.esv = atomicrmw add ptr %i.esu, i64 -1 release, align 8, !dbg !106445, !noalias !102082
  %i.esw = icmp eq i64 %i.esv, 1, !dbg !106446
  br i1 %i.esw, label %.invoke5016, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3170.sink.split, !dbg !106446

.thread4337:                                      ; preds = %.noexc3143, %.split4325
  %.pn2092.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp4329, %.split4325 ], [ %.pn, %.noexc3143 ] ; 2 uses
  %.sroa.478.1254340 = extractvalue { ptr, i32 } %.pn2092.ph, 1
  %.sroa.02013.1254341 = extractvalue { ptr, i32 } %.pn2092.ph, 0
  br label %.critedge2460, !dbg !101962

.noexc3171:                                       ; preds = %bb.bks, %bb.bkr
  %.sroa.478.125 = extractvalue { ptr, i32 } %.pn20904327, 1 ; 2 uses
  %.sroa.02013.125 = extractvalue { ptr, i32 } %.pn20904327, 0 ; 2 uses
  br i1 %.sroa.0902.04326, label %bb.bkt, label %.critedge2460, !dbg !101962

.split4342.thread:                                ; preds = %.invoke5016
  %lpad.thr_comm4347 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.478.12543434351 = extractvalue { ptr, i32 } %lpad.thr_comm4347, 1
  %.sroa.02013.12543444352 = extractvalue { ptr, i32 } %lpad.thr_comm4347, 0
  br label %.critedge2460, !dbg !101962

.split4342:                                       ; preds = %bb.bii
  %lpad.thr_comm.split-lp4348 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.478.1254343 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4348, 1
  %.sroa.02013.1254344 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4348, 0
  br label %bb.bkt, !dbg !101962

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3170.sink.split: ; preds = %.invoke5016, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3166, %bb.bip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !101962
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3170, !dbg !101962

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3170: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3170.sink.split, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3139, %bb.bki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !dbg !101962
  br label %bb.ho, !dbg !102939

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3139: ; preds = %bb.bih, %bb.bii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !101962
  %i.esx = atomicrmw add ptr %i.acu, i64 -1 release, align 8, !dbg !106447, !noalias !102083
  %i.esy = icmp eq i64 %i.esx, 1, !dbg !106448
  br i1 %i.esy, label %bb.bki, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3170, !dbg !106448

bb.bki:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3139
  fence acquire, !dbg !106449, !noalias !102084
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dz) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3170 unwind label %bb.c, !dbg !106450, !inline_history !1539

bb.bkj:                                           ; preds = %bb.ho
  br i1 %.sroa.01021.3, label %bb.by, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bkk:                                           ; preds = %bb.ho
  br i1 %.sroa.01092.3, label %bb.cw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bkl:                                           ; preds = %bb.ho
  br i1 %.sroa.01100.3, label %bb.cy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bkm:                                           ; preds = %bb.ho
  br i1 %.sroa.01105.3, label %bb.da, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bkn:                                           ; preds = %bb.ho
  br i1 %.sroa.01125.3, label %bb.dc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bko:                                           ; preds = %bb.ho
  br i1 %.sroa.01038.3, label %bb.de, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bkp:                                           ; preds = %bb.ho
  br i1 %.sroa.01017.3, label %bb.dk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bkq:                                           ; preds = %bb.ho
  br i1 %.sroa.01147.4, label %bb.dx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bkr:                                           ; preds = %.split4325.thread, %.noexc3143
  %.pn20904327 = phi { ptr, i32 } [ %lpad.thr_comm4328, %.split4325.thread ], [ %.pn, %.noexc3143 ] ; 2 uses
  %.sroa.0902.04326 = phi i1 [ %.sroa.0902.1.ph, %.split4325.thread ], [ false, %.noexc3143 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !102085), !dbg !101962
  call void @llvm.experimental.noalias.scope.decl(metadata !102086), !dbg !106451
  %i.esz = load ptr, ptr %i.dy, align 8, !dbg !106452, !alias.scope !102087, !nonnull !3011, !noundef !3011
  %i.eta = atomicrmw add ptr %i.esz, i64 -1 release, align 8, !dbg !106453, !noalias !102087
  %i.etb = icmp eq i64 %i.eta, 1, !dbg !106454
  br i1 %i.etb, label %bb.bks, label %.noexc3171, !dbg !106454

bb.bks:                                           ; preds = %bb.bkr
  fence acquire, !dbg !106455
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dy) #52
          to label %.noexc3171 unwind label %bb.bw, !dbg !106456

bb.bkt:                                           ; preds = %.split4342, %.noexc3171
  %.sroa.02013.1254346 = phi ptr [ %.sroa.02013.1254344, %.split4342 ], [ %.sroa.02013.125, %.noexc3171 ] ; 2 uses
  %.sroa.478.1254345 = phi i32 [ %.sroa.478.1254343, %.split4342 ], [ %.sroa.478.125, %.noexc3171 ] ; 2 uses
  %i.etc = atomicrmw add ptr %i.acu, i64 -1 release, align 8, !dbg !106457, !noalias !102088
  %i.etd = icmp eq i64 %i.etc, 1, !dbg !106458
  br i1 %i.etd, label %bb.bku, label %.critedge2460, !dbg !106458

bb.bku:                                           ; preds = %bb.bkt
  fence acquire, !dbg !106459, !noalias !102089
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dz) #52
          to label %.critedge2460 unwind label %bb.bw, !dbg !106460, !inline_history !1539

bb.bkv:                                           ; preds = %bb.bm, %bb.bkz, %bb.bkx, %bb.bkw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !dbg !102090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !106461
  call fastcc void @_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_(ptr noalias noundef align 16 captures(none) dereferenceable(368) %i.n, ptr noundef nonnull %i.adn), !dbg !106461
  %i.ete = load i64, ptr %i.n, align 16, !dbg !106462, !range !3945, !noundef !3011
  %i.etf = icmp eq i64 %i.ete, -9223372036854775778, !dbg !106462
  br i1 %i.etf, label %bb.blc, label %bb.bld, !dbg !106463

.thread4372:                                      ; preds = %bb.ble, %bb.blc
  %lpad.thr_comm4370 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.etg = extractvalue { ptr, i32 } %lpad.thr_comm4370, 0
  %i.eth = extractvalue { ptr, i32 } %lpad.thr_comm4370, 1
  br label %.critedge2460, !dbg !106464

bb.bkw:                                           ; preds = %bb.bm
  %i.eti = load ptr, ptr %i.tm, align 16, !dbg !106465, !nonnull !3011, !align !3101, !noundef !3011 ; 3 uses
  %i.etj = getelementptr inbounds nuw i8, ptr %i.eti, i64 200, !dbg !106465
  %i.etk = load ptr, ptr %i.etj, align 8, !dbg !106465, !nonnull !3011, !align !4022, !noundef !3011
  %i.etl = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !102563
  %i.etm = load i32, ptr %i.etl, align 4, !dbg !102563
  %.val2677 = load i32, ptr %i.etk, align 4, !dbg !106466, !noundef !3011
  %i.etn = and i32 %.val2677, 116, !dbg !106467   ; 2 uses
  %i.eto = and i32 %i.etn, %i.etm, !dbg !106468
  %i.etp = icmp eq i32 %i.eto, %i.etn, !dbg !106468
  %i.etq = trunc nuw i64 %i.adj to i1, !dbg !106469
  %or.cond12 = and i1 %i.etp, %i.etq, !dbg !106469
  br i1 %or.cond12, label %bb.bkx, label %bb.bkv, !dbg !106469

bb.bkx:                                           ; preds = %bb.bkw
  %i.etr = getelementptr inbounds nuw i8, ptr %i.eti, i64 192, !dbg !106470
  %i.ets = load ptr, ptr %i.etr, align 8, !dbg !106470, !nonnull !3011, !align !3101, !noundef !3011
  %i.ett = getelementptr inbounds nuw i8, ptr %i.ets, i64 24, !dbg !106471
  %i.etu = load i32, ptr %i.ett, align 8, !dbg !106471, !noundef !3011
  %i.etv = icmp eq i32 %i.adp, %i.etu, !dbg !106472
  br i1 %i.etv, label %bb.bky, label %bb.bkv, !dbg !106472

bb.bky:                                           ; preds = %bb.bkx
  %i.etw = getelementptr inbounds nuw i8, ptr %i.eti, i64 48, !dbg !106473
  %i.etx = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapmuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.etw, i32 noundef %i.adp)
          to label %bb.bkz unwind label %bb.blg, !dbg !106474

bb.bkz:                                           ; preds = %bb.bky
  %i.ety = extractvalue { i64, i1 } %i.etx, 1, !dbg !106475
  br i1 %i.ety, label %bb.bkv, label %bb.bla, !dbg !106476

bb.bla:                                           ; preds = %bb.bkz
  %i.etz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !106477
  store i64 %i.adl, ptr %i.etz, align 8, !dbg !106477
  store i64 18, ptr %0, align 8, !dbg !106477
  %i.eua = atomicrmw add ptr %i.adn, i64 -1 release, align 8, !dbg !106478, !noalias !102105
  %i.eub = icmp eq i64 %i.eua, 1, !dbg !106479
  br i1 %i.eub, label %bb.blb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, !dbg !106479

bb.blb:                                           ; preds = %bb.bla
  fence acquire, !dbg !106480, !noalias !102106
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dt) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176 unwind label %bb.c, !dbg !106481, !inline_history !1539

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176: ; preds = %bb.bla, %bb.blb, %bb.blf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !dbg !106464
  %i.euc = load i64, ptr %1, align 16, !dbg !102274, !range !3407, !noundef !3011 ; 3 uses
  %i.eud = icmp ne i64 %i.euc, -9223372036854775782, !dbg !102274
  call void @llvm.assume(i1 %i.eud), !dbg !102274
  %i.eue = add nsw i64 %i.euc, 9223372036854775802, !dbg !102274
  %i.euf = icmp ugt i64 %i.euc, -9223372036854775803, !dbg !102274
  %i.eug = select i1 %i.euf, i64 %i.eue, i64 20, !dbg !102274
  switch i64 %i.eug, label %.loopexit4494 [
    i64 0, label %bb.id
    i64 1, label %bb.by
    i64 2, label %bb.ca
    i64 3, label %bb.cc
    i64 4, label %bb.ci
    i64 5, label %bb.ck
    i64 6, label %bb.co
    i64 7, label %bb.cq
    i64 8, label %bb.cs
    i64 9, label %bb.cu
    i64 10, label %bb.cw
    i64 11, label %bb.cy
    i64 12, label %bb.da
    i64 13, label %bb.dc
    i64 14, label %bb.de
    i64 15, label %bb.dg
    i64 16, label %bb.di
    i64 17, label %bb.dk
    i64 18, label %bb.dn
    i64 19, label %bb.dq
    i64 20, label %bb.ds
    i64 21, label %bb.du
    i64 22, label %bb.dx
    i64 23, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705
  ], !dbg !102274

bb.blc:                                           ; preds = %bb.bkv
  %i.euh = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !106482
  %i.eui = load ptr, ptr %i.euh, align 8, !dbg !106482, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE15unwrap_or_clone0BO_(ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.ds, ptr noundef nonnull %i.eui)
          to label %bb.ble unwind label %.thread4372, !dbg !106483

bb.bld:                                           ; preds = %bb.bkv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ds, ptr noundef nonnull align 16 dereferenceable(368) %i.n, i64 368, i1 false), !dbg !106484
  br label %bb.ble, !dbg !106485

bb.ble:                                           ; preds = %bb.blc, %bb.bld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !106486
  %i.euj = load ptr, ptr %i.tm, align 16, !dbg !106487, !nonnull !3011, !align !3101, !noundef !3011
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.ds, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.euj)
          to label %bb.blf unwind label %.thread4372, !dbg !106488

bb.blf:                                           ; preds = %bb.ble
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !dbg !106489
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3176, !dbg !106464

bb.blg:                                           ; preds = %bb.bky
  %lpad.thr_comm.split-lp4371 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.euk = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4371, 0 ; 2 uses
  %i.eul = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4371, 1 ; 2 uses
  %i.eum = atomicrmw add ptr %i.adn, i64 -1 release, align 8, !dbg !106490, !noalias !102107
  %i.eun = icmp eq i64 %i.eum, 1, !dbg !106491
  br i1 %i.eun, label %bb.blh, label %.critedge2460, !dbg !106491

bb.blh:                                           ; preds = %bb.blg
  fence acquire, !dbg !106492, !noalias !102108
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dt) #52
          to label %.critedge2460 unwind label %bb.bw, !dbg !106493, !inline_history !1539

8:                                                ; preds = %bb.bz, %bb.by
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %9), !dbg !102274
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bli:                                           ; preds = %bb.bz
  %i.euo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %10 = extractvalue { ptr, i32 } %i.euo, 0
  %11 = extractvalue { ptr, i32 } %i.euo, 1
  %i.eup = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.eup) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

bb.blj:                                           ; preds = %bb.cf, %bb.ce
  %i.euq = landingpad { ptr, i32 }
          cleanup
  %i.eur = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102274
  %.val2610 = load ptr, ptr %i.eur, align 8, !dbg !102274, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr nonnull %.val2610) #51
          to label %bb.blk unwind label %bb.bw, !dbg !102274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit: ; preds = %bb.ch, %bb.cg, %bb.cd, %bb.ce, %bb.cf
  %i.eus = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102274
  %.val2609 = load ptr, ptr %i.eus, align 8, !dbg !102274, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr nonnull %.val2609)
          to label %bb.blm unwind label %bb.bll, !dbg !102274

bb.blk:                                           ; preds = %bb.blj, %bb.bll
  %.pn2452 = phi { ptr, i32 } [ %i.euu, %bb.bll ], [ %i.euq, %bb.blj ]
  %i.eut = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !102274
  %.val2615 = load ptr, ptr %i.eut, align 16, !dbg !102274, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr %.val2615) #51
          to label %.body3179 unwind label %bb.bw, !dbg !102274

bb.bll:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit
  %i.euu = landingpad { ptr, i32 }
          cleanup
  br label %bb.blk

bb.blm:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit
  %i.euv = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !102274
  %.val2614 = load ptr, ptr %i.euv, align 16, !dbg !102274, !nonnull !3011, !noundef !3011 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEBM_(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val2614)
          to label %bb.blo unwind label %bb.bln, !dbg !106494

bb.bln:                                           ; preds = %bb.blm
  %i.euw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2614, i64 noundef 72, i64 noundef 8) #44, !dbg !106495
  br label %.body3179, !dbg !106494

bb.blo:                                           ; preds = %bb.blm
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2614, i64 noundef 72, i64 noundef 8) #44, !dbg !106496
  %i.eux = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102109), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102110), !dbg !106497
  %i.euy = load ptr, ptr %i.eux, align 8, !dbg !106498, !alias.scope !102111, !nonnull !3011, !noundef !3011
  %i.euz = atomicrmw add ptr %i.euy, i64 -1 release, align 8, !dbg !106499, !noalias !102111
  %i.eva = icmp eq i64 %i.euz, 1, !dbg !106500
  br i1 %i.eva, label %bb.blp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106500

bb.blp:                                           ; preds = %bb.blo
  fence acquire, !dbg !106501
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEE9drop_slowB2d_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.eux) #52, !dbg !106502, !inline_history !98164
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106502

.body3179:                                        ; preds = %bb.bln, %bb.blk
  %.pn2454 = phi { ptr, i32 } [ %.pn2452, %bb.blk ], [ %i.euw, %bb.bln ] ; 2 uses
  %.sroa.478.127 = extractvalue { ptr, i32 } %.pn2454, 1 ; 2 uses
  %.sroa.02013.127 = extractvalue { ptr, i32 } %.pn2454, 0 ; 2 uses
  %i.evb = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102112), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102113), !dbg !106503
  %i.evc = load ptr, ptr %i.evb, align 8, !dbg !106504, !alias.scope !102114, !nonnull !3011, !noundef !3011
  %i.evd = atomicrmw add ptr %i.evc, i64 -1 release, align 8, !dbg !106505, !noalias !102114
  %i.eve = icmp eq i64 %i.evd, 1, !dbg !106506
  br i1 %i.eve, label %bb.blq, label %.critedge2488, !dbg !106506

bb.blq:                                           ; preds = %.body3179
  fence acquire, !dbg !106507
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEE9drop_slowB2d_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.evb) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106508, !inline_history !392

bb.blr:                                           ; preds = %bb.cj
  %i.evf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.evg = extractvalue { ptr, i32 } %i.evf, 1    ; 2 uses
  %i.evh = extractvalue { ptr, i32 } %i.evf, 0    ; 2 uses
  %i.evi = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102115), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102116), !dbg !106509
  %i.evj = load ptr, ptr %i.evi, align 16, !dbg !106510, !alias.scope !102117, !nonnull !3011, !noundef !3011
  %i.evk = atomicrmw add ptr %i.evj, i64 -1 release, align 8, !dbg !106511, !noalias !102117
  %i.evl = icmp eq i64 %i.evk, 1, !dbg !106512
  br i1 %i.evl, label %bb.bls, label %.critedge2488, !dbg !106512

bb.bls:                                           ; preds = %bb.blr
  fence acquire, !dbg !106513
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.evi) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106514

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.ci, %bb.cj
  %i.evm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102118), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102119), !dbg !106515
  %i.evn = load ptr, ptr %i.evm, align 16, !dbg !106516, !alias.scope !102120, !nonnull !3011, !noundef !3011
  %i.evo = atomicrmw add ptr %i.evn, i64 -1 release, align 8, !dbg !106517, !noalias !102120
  %i.evp = icmp eq i64 %i.evo, 1, !dbg !106518
  br i1 %i.evp, label %bb.blt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106518

bb.blt:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit
  fence acquire, !dbg !106519
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.evm) #52, !dbg !106520
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106520

bb.blu:                                           ; preds = %bb.cm
  %i.evq = landingpad { ptr, i32 }
          cleanup
  br label %.body2710

.body2710:                                        ; preds = %bb.cl, %bb.blu
  %eh.lpad-body2711 = phi { ptr, i32 } [ %i.evq, %bb.blu ], [ %i.afv, %bb.cl ] ; 2 uses
  %i.evr = extractvalue { ptr, i32 } %eh.lpad-body2711, 1 ; 2 uses
  %i.evs = extractvalue { ptr, i32 } %eh.lpad-body2711, 0 ; 2 uses
  %i.evt = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102121), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102122), !dbg !106521
  %i.evu = load ptr, ptr %i.evt, align 16, !dbg !106522, !alias.scope !102123, !nonnull !3011, !noundef !3011
  %i.evv = atomicrmw add ptr %i.evu, i64 -1 release, align 8, !dbg !106523, !noalias !102123
  %i.evw = icmp eq i64 %i.evv, 1, !dbg !106524
  br i1 %i.evw, label %bb.blv, label %.critedge2488, !dbg !106524

bb.blv:                                           ; preds = %.body2710
  fence acquire, !dbg !106525, !noalias !102122
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.evt) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106526, !inline_history !1539

.critedge:                                        ; preds = %bb.cm
  %i.evx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102124), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102125), !dbg !106527
  %i.evy = load ptr, ptr %i.evx, align 16, !dbg !106528, !alias.scope !102126, !nonnull !3011, !noundef !3011
  %i.evz = atomicrmw add ptr %i.evy, i64 -1 release, align 8, !dbg !106529, !noalias !102126
  %i.ewa = icmp eq i64 %i.evz, 1, !dbg !106530
  br i1 %i.ewa, label %bb.blw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106530

bb.blw:                                           ; preds = %.critedge
  fence acquire, !dbg !106531, !noalias !102125
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.evx) #52, !dbg !106532, !inline_history !1538
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106532

bb.blx:                                           ; preds = %bb.cp
  %i.ewb = landingpad { ptr, i32 }
          cleanup
  %i.ewc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ewc) #51
          to label %.body3193 unwind label %bb.bw, !dbg !102274

bb.bly:                                           ; preds = %bb.cp, %bb.co
  %i.ewd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ewd)
          to label %bb.bma unwind label %bb.blz, !dbg !106533

bb.blz:                                           ; preds = %bb.bly
  %i.ewe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ewd)
          to label %.body3193 unwind label %bb.bmb, !dbg !106534

bb.bma:                                           ; preds = %bb.bly
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ewd)
          to label %bb.bmd unwind label %bb.bmc, !dbg !106535

bb.bmb:                                           ; preds = %bb.blz
  %i.ewf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !106533
  unreachable, !dbg !106533

bb.bmc:                                           ; preds = %bb.bma
  %i.ewg = landingpad { ptr, i32 }
          cleanup
  br label %.body3193

bb.bmd:                                           ; preds = %bb.bma
  %i.ewh = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ewh)
          to label %bb.bmf unwind label %bb.bme, !dbg !102274

bb.bme:                                           ; preds = %bb.bmd
  %i.ewi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmk

bb.bmf:                                           ; preds = %bb.bmd
  %i.ewj = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ewj)
          to label %bb.bmh unwind label %bb.bmg, !dbg !102274

bb.bmg:                                           ; preds = %bb.bmf
  %i.ewk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bml

bb.bmh:                                           ; preds = %bb.bmf
  %i.ewl = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102127), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102128), !dbg !106536
  %i.ewm = load ptr, ptr %i.ewl, align 8, !dbg !106537, !alias.scope !102129, !nonnull !3011, !noundef !3011
  %i.ewn = atomicrmw add ptr %i.ewm, i64 -1 release, align 8, !dbg !106538, !noalias !102129
  %i.ewo = icmp eq i64 %i.ewn, 1, !dbg !106539
  br i1 %i.ewo, label %bb.bmi, label %.noexc3196, !dbg !106539

end_hunk_5
begin_hunk_6_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a

bb.bml:                                           ; preds = %bb.bmg, %bb.bmk
  %.pn4462 = phi { ptr, i32 } [ %i.ewk, %bb.bmg ], [ %.pn4460, %bb.bmk ] ; 2 uses
  %i.ewt = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102130), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102131), !dbg !106542
  %i.ewu = load ptr, ptr %i.ewt, align 8, !dbg !106543, !alias.scope !102132, !nonnull !3011, !noundef !3011
  %i.ewv = atomicrmw add ptr %i.ewu, i64 -1 release, align 8, !dbg !106544, !noalias !102132
  %i.eww = icmp eq i64 %i.ewv, 1, !dbg !106545
  br i1 %i.eww, label %bb.bmm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3199, !dbg !106545

bb.bmm:                                           ; preds = %bb.bml
  fence acquire, !dbg !106546
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ewt) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3199 unwind label %bb.bw, !dbg !106547

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3199: ; preds = %bb.bml, %bb.bmm, %bb.bmj
  %.pn4464 = phi { ptr, i32 } [ %i.ewp, %bb.bmj ], [ %.pn4462, %bb.bmm ], [ %.pn4462, %bb.bml ] ; 2 uses
  %.sroa.478.131 = extractvalue { ptr, i32 } %.pn4464, 1
  %.sroa.02013.131 = extractvalue { ptr, i32 } %.pn4464, 0
  %i.ewx = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1W_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB22_9datatypes5dtype8DataTypeuEEEEEB18_(ptr noalias noundef align 8 dereferenceable(24) %i.ewx) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

bb.bmn:                                           ; preds = %bb.cr
  %i.ewy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ewz = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102133), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102134), !dbg !106548
  %i.exa = load ptr, ptr %i.ewz, align 8, !dbg !106549, !alias.scope !102135, !nonnull !3011, !noundef !3011
  %i.exb = atomicrmw add ptr %i.exa, i64 -1 release, align 8, !dbg !106550, !noalias !102135
  %i.exc = icmp eq i64 %i.exb, 1, !dbg !106551
  br i1 %i.exc, label %bb.bmo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3201, !dbg !106551

bb.bmo:                                           ; preds = %bb.bmn
  fence acquire, !dbg !106552, !noalias !102134
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ewz) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3201 unwind label %bb.bw, !dbg !106553, !inline_history !1539

bb.bmp:                                           ; preds = %bb.cr, %bb.cq
  %i.exd = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102136), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102137), !dbg !106554
  %i.exe = load ptr, ptr %i.exd, align 8, !dbg !106555, !alias.scope !102138, !nonnull !3011, !noundef !3011
  %i.exf = atomicrmw add ptr %i.exe, i64 -1 release, align 8, !dbg !106556, !noalias !102138
  %i.exg = icmp eq i64 %i.exf, 1, !dbg !106557
  br i1 %i.exg, label %bb.bmq, label %.noexc3202, !dbg !106557

bb.bmq:                                           ; preds = %bb.bmp
  fence acquire, !dbg !106558, !noalias !102137
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.exd) #52
          to label %.noexc3202 unwind label %bb.bmr, !dbg !106559, !inline_history !1539

bb.bmr:                                           ; preds = %bb.bmq
  %i.exh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3201

.noexc3202:                                       ; preds = %bb.bmq, %bb.bmp
  %i.exi = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.exi)
          to label %bb.bmt unwind label %bb.bms, !dbg !102274

bb.bms:                                           ; preds = %.noexc3202
  %i.exj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmz

bb.bmt:                                           ; preds = %.noexc3202
  %i.exk = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.exk)
          to label %bb.bmv unwind label %bb.bmu, !dbg !102274

bb.bmu:                                           ; preds = %bb.bmt
  %i.exl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bna

bb.bmv:                                           ; preds = %bb.bmt
  %i.exm = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.exm)
          to label %bb.bmx unwind label %bb.bmw, !dbg !102274

bb.bmw:                                           ; preds = %bb.bmv
  %i.exn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bnb

bb.bmx:                                           ; preds = %bb.bmv
  %i.exo = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102139), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102140), !dbg !106560
  %i.exp = load ptr, ptr %i.exo, align 16, !dbg !106561, !alias.scope !102141, !nonnull !3011, !noundef !3011
  %i.exq = atomicrmw add ptr %i.exp, i64 -1 release, align 8, !dbg !106562, !noalias !102141
  %i.exr = icmp eq i64 %i.exq, 1, !dbg !106563
  br i1 %i.exr, label %bb.bmy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106563

bb.bmy:                                           ; preds = %bb.bmx
  fence acquire, !dbg !106564
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.exo) #52, !dbg !106565
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106565

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3201: ; preds = %bb.bmn, %bb.bmo, %bb.bmr
  %.pn2448 = phi { ptr, i32 } [ %i.exh, %bb.bmr ], [ %i.ewy, %bb.bmo ], [ %i.ewy, %bb.bmn ]
  %i.exs = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.exs) #51
          to label %bb.bmz unwind label %bb.bw, !dbg !102274

bb.bmz:                                           ; preds = %bb.bms, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3201
  %.pn4454 = phi { ptr, i32 } [ %i.exj, %bb.bms ], [ %.pn2448, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3201 ]
  %i.ext = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ext) #51
          to label %bb.bna unwind label %bb.bw, !dbg !102274

bb.bna:                                           ; preds = %bb.bmu, %bb.bmz
  %.pn4456 = phi { ptr, i32 } [ %i.exl, %bb.bmu ], [ %.pn4454, %bb.bmz ]
  %i.exu = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.exu) #51
          to label %bb.bnb unwind label %bb.bw, !dbg !102274

bb.bnb:                                           ; preds = %bb.bmw, %bb.bna
  %.pn4458 = phi { ptr, i32 } [ %i.exn, %bb.bmw ], [ %.pn4456, %bb.bna ] ; 2 uses
  %.sroa.478.135 = extractvalue { ptr, i32 } %.pn4458, 1 ; 2 uses
  %.sroa.02013.135 = extractvalue { ptr, i32 } %.pn4458, 0 ; 2 uses
  %i.exv = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102142), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102143), !dbg !106566
  %i.exw = load ptr, ptr %i.exv, align 16, !dbg !106567, !alias.scope !102144, !nonnull !3011, !noundef !3011
  %i.exx = atomicrmw add ptr %i.exw, i64 -1 release, align 8, !dbg !106568, !noalias !102144
  %i.exy = icmp eq i64 %i.exx, 1, !dbg !106569
  br i1 %i.exy, label %bb.bnc, label %.critedge2488, !dbg !106569

bb.bnc:                                           ; preds = %bb.bnb
  fence acquire, !dbg !106570
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.exv) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106571

bb.bnd:                                           ; preds = %bb.ct
  %i.exz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eya = extractvalue { ptr, i32 } %i.exz, 1    ; 2 uses
  %i.eyb = extractvalue { ptr, i32 } %i.exz, 0    ; 2 uses
  %i.eyc = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102145), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102146), !dbg !106572
  %i.eyd = load ptr, ptr %i.eyc, align 16, !dbg !106573, !alias.scope !102147, !nonnull !3011, !noundef !3011
  %i.eye = atomicrmw add ptr %i.eyd, i64 -1 release, align 8, !dbg !106574, !noalias !102147
  %i.eyf = icmp eq i64 %i.eye, 1, !dbg !106575
  br i1 %i.eyf, label %bb.bne, label %.critedge2488, !dbg !106575

bb.bne:                                           ; preds = %bb.bnd
  fence acquire, !dbg !106576, !noalias !102146
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.eyc) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106577, !inline_history !1539

.critedge2462:                                    ; preds = %bb.cs, %bb.ct
  %i.eyg = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102148), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102149), !dbg !106578
  %i.eyh = load ptr, ptr %i.eyg, align 16, !dbg !106579, !alias.scope !102150, !nonnull !3011, !noundef !3011
  %i.eyi = atomicrmw add ptr %i.eyh, i64 -1 release, align 8, !dbg !106580, !noalias !102150
  %i.eyj = icmp eq i64 %i.eyi, 1, !dbg !106581
  br i1 %i.eyj, label %bb.bnf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106581

bb.bnf:                                           ; preds = %.critedge2462
  fence acquire, !dbg !106582, !noalias !102149
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.eyg) #52, !dbg !106583, !inline_history !1538
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106583

bb.bng:                                           ; preds = %bb.cv
  %i.eyk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eyl = extractvalue { ptr, i32 } %i.eyk, 1
  %i.eym = extractvalue { ptr, i32 } %i.eyk, 0
  %i.eyn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.eyn) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

.critedge2464:                                    ; preds = %bb.cu, %bb.cv
  %i.eyo = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eyo)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_.exit3210 unwind label %bb.bnh, !dbg !106584

bb.bnh:                                           ; preds = %.critedge2464
  %i.eyp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eyo)
          to label %common.resume unwind label %bb.bni, !dbg !106585

bb.bni:                                           ; preds = %bb.bnh
  %i.eyq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !106584
  unreachable, !dbg !106584

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_.exit3210: ; preds = %.critedge2464
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eyo), !dbg !106586
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bnj:                                           ; preds = %bb.cx, %bb.cw
  %i.eyr = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102151), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102152), !dbg !106587
  %i.eys = load ptr, ptr %i.eyr, align 16, !dbg !106588, !alias.scope !102153, !nonnull !3011, !noundef !3011
  %i.eyt = atomicrmw add ptr %i.eys, i64 -1 release, align 8, !dbg !106589, !noalias !102153
  %i.eyu = icmp eq i64 %i.eyt, 1, !dbg !106590
  br i1 %i.eyu, label %bb.bnk, label %.noexc3211, !dbg !106590

bb.bnk:                                           ; preds = %bb.bnj
  fence acquire, !dbg !106591
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eyr) #52
          to label %.noexc3211 unwind label %12, !dbg !106592

12:                                               ; preds = %bb.bnk
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bno

.noexc3211:                                       ; preds = %bb.bnk, %bb.bnj
  %i.eyv = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102154), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102155), !dbg !106593
  %i.eyw = load ptr, ptr %i.eyv, align 8, !dbg !106594, !alias.scope !102156, !nonnull !3011, !noundef !3011
  %i.eyx = atomicrmw add ptr %i.eyw, i64 -1 release, align 8, !dbg !106595, !noalias !102156
  %i.eyy = icmp eq i64 %i.eyx, 1, !dbg !106596
  br i1 %i.eyy, label %bb.bnl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106596

bb.bnl:                                           ; preds = %.noexc3211
  fence acquire, !dbg !106597
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnE9drop_slowBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.eyv) #52, !dbg !106598, !inline_history !1524
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106598

bb.bnm:                                           ; preds = %bb.cx
  %14 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eyz = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102157), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102158), !dbg !106599
  %i.eza = load ptr, ptr %i.eyz, align 16, !dbg !106600, !alias.scope !102159, !nonnull !3011, !noundef !3011
  %i.ezb = atomicrmw add ptr %i.eza, i64 -1 release, align 8, !dbg !106601, !noalias !102159
  %i.ezc = icmp eq i64 %i.ezb, 1, !dbg !106602
  br i1 %i.ezc, label %bb.bnn, label %bb.bno, !dbg !106602

bb.bnn:                                           ; preds = %bb.bnm
  fence acquire, !dbg !106603
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eyz) #52
          to label %bb.bno unwind label %bb.bw, !dbg !106604

bb.bno:                                           ; preds = %12, %bb.bnn, %bb.bnm
  %.pn2446 = phi { ptr, i32 } [ %13, %12 ], [ %14, %bb.bnn ], [ %14, %bb.bnm ] ; 2 uses
  %.sroa.478.136 = extractvalue { ptr, i32 } %.pn2446, 1 ; 2 uses
  %.sroa.02013.136 = extractvalue { ptr, i32 } %.pn2446, 0 ; 2 uses
  %i.ezd = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102160), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102161), !dbg !106605
  %i.eze = load ptr, ptr %i.ezd, align 8, !dbg !106606, !alias.scope !102162, !nonnull !3011, !noundef !3011
  %i.ezf = atomicrmw add ptr %i.eze, i64 -1 release, align 8, !dbg !106607, !noalias !102162
  %i.ezg = icmp eq i64 %i.ezf, 1, !dbg !106608
  br i1 %i.ezg, label %bb.bnp, label %.critedge2488, !dbg !106608

bb.bnp:                                           ; preds = %bb.bno
  fence acquire, !dbg !106609
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnE9drop_slowBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ezd) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106610, !inline_history !1523

bb.bnq:                                           ; preds = %bb.cz, %bb.cy
  %i.ezh = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102274
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtBL_3dsl4plan7DslPlanEIB1B_INtNtB1F_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEB27_EEBL_(ptr noalias noundef align 8 dereferenceable(16) %i.ezh), !dbg !102274
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bnr:                                           ; preds = %bb.cz
  %i.ezi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %15 = extractvalue { ptr, i32 } %i.ezi, 0
  %16 = extractvalue { ptr, i32 } %i.ezi, 1
  %i.ezj = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtBL_3dsl4plan7DslPlanEIB1B_INtNtB1F_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEB27_EEBL_(ptr noalias noundef align 8 dereferenceable(16) %i.ezj) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

bb.bns:                                           ; preds = %bb.db, %bb.da
  %i.ezk = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.ezk)
          to label %bb.bnu unwind label %bb.bnt, !dbg !102274

bb.bnt:                                           ; preds = %bb.bns
  %i.ezl = landingpad { ptr, i32 }
          cleanup
  br label %bb.boe

bb.bnu:                                           ; preds = %bb.bns
  %i.ezm = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102163), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102164), !dbg !106611
  %i.ezn = load ptr, ptr %i.ezm, align 16, !dbg !106612, !alias.scope !102165, !nonnull !3011, !noundef !3011
  %i.ezo = atomicrmw add ptr %i.ezn, i64 -1 release, align 8, !dbg !106613, !noalias !102165
  %i.ezp = icmp eq i64 %i.ezo, 1, !dbg !106614
  br i1 %i.ezp, label %bb.bnv, label %.noexc3218, !dbg !106614

bb.bnv:                                           ; preds = %bb.bnu
  fence acquire, !dbg !106615
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ezm) #52
          to label %.noexc3218 unwind label %bb.bnw, !dbg !106616

bb.bnw:                                           ; preds = %bb.bnv
  %i.ezq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3222

.noexc3218:                                       ; preds = %bb.bnv, %bb.bnu
  %i.ezr = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.ezr)
          to label %bb.bny unwind label %bb.bnx, !dbg !102274

bb.bnx:                                           ; preds = %.noexc3218
  %i.ezs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bog

bb.bny:                                           ; preds = %.noexc3218
  %i.ezt = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.ezt)
          to label %bb.boa unwind label %bb.bnz, !dbg !102274

bb.bnz:                                           ; preds = %bb.bny
  %i.ezu = landingpad { ptr, i32 }
          cleanup
  br label %bb.boh

bb.boa:                                           ; preds = %bb.bny
  %i.ezv = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ezv)
          to label %bb.boc unwind label %bb.bob, !dbg !102274

bb.bob:                                           ; preds = %bb.boa
  %i.ezw = landingpad { ptr, i32 }
          cleanup
  br label %bb.boi

bb.boc:                                           ; preds = %bb.boa
  %i.ezx = getelementptr inbounds nuw i8, ptr %1, i64 279, !dbg !106617
  %i.ezy = load i8, ptr %i.ezx, align 1, !dbg !106617, !range !3312, !alias.scope !102166, !noundef !3011
  %i.ezz = icmp eq i8 %i.ezy, -40, !dbg !106618
  br i1 %i.ezz, label %bb.bod, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106618, !prof !3065

bb.bod:                                           ; preds = %bb.boc
  %i.faa = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !102274
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.faa), !dbg !106619
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106619

17:                                               ; preds = %bb.db
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %19) #51
          to label %bb.boe unwind label %bb.bw, !dbg !102274

bb.boe:                                           ; preds = %bb.bnt, %17
  %.pn2436 = phi { ptr, i32 } [ %i.ezl, %bb.bnt ], [ %18, %17 ] ; 2 uses
  %i.fab = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102167), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102168), !dbg !106620
  %i.fac = load ptr, ptr %i.fab, align 16, !dbg !106621, !alias.scope !102169, !nonnull !3011, !noundef !3011
  %i.fad = atomicrmw add ptr %i.fac, i64 -1 release, align 8, !dbg !106622, !noalias !102169
  %i.fae = icmp eq i64 %i.fad, 1, !dbg !106623
  br i1 %i.fae, label %bb.bof, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3222, !dbg !106623

bb.bof:                                           ; preds = %bb.boe
  fence acquire, !dbg !106624
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fab) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3222 unwind label %bb.bw, !dbg !106625

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3222: ; preds = %bb.boe, %bb.bof, %bb.bnw
  %.pn2438 = phi { ptr, i32 } [ %i.ezq, %bb.bnw ], [ %.pn2436, %bb.bof ], [ %.pn2436, %bb.boe ]
  %i.faf = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.faf) #51
          to label %bb.bog unwind label %bb.bw, !dbg !102274

bb.bog:                                           ; preds = %bb.bnx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3222
  %.pn2440 = phi { ptr, i32 } [ %i.ezs, %bb.bnx ], [ %.pn2438, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3222 ]
  %i.fag = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fag) #51
          to label %bb.boh unwind label %bb.bw, !dbg !102274

bb.boh:                                           ; preds = %bb.bnz, %bb.bog
  %.pn2442 = phi { ptr, i32 } [ %i.ezu, %bb.bnz ], [ %.pn2440, %bb.bog ]
  %i.fah = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.fah) #51
          to label %bb.boi unwind label %bb.bw, !dbg !102274

bb.boi:                                           ; preds = %bb.bob, %bb.boh
  %.pn2444 = phi { ptr, i32 } [ %i.ezw, %bb.bob ], [ %.pn2442, %bb.boh ] ; 2 uses
  %.sroa.478.141 = extractvalue { ptr, i32 } %.pn2444, 1 ; 2 uses
  %.sroa.02013.141 = extractvalue { ptr, i32 } %.pn2444, 0 ; 2 uses
  %i.fai = getelementptr inbounds nuw i8, ptr %1, i64 279, !dbg !106626
  %i.faj = load i8, ptr %i.fai, align 1, !dbg !106626, !range !3312, !alias.scope !102170, !noundef !3011
  %i.fak = icmp eq i8 %i.faj, -40, !dbg !106627
  br i1 %i.fak, label %bb.boj, label %.critedge2488, !dbg !106627, !prof !3065

bb.boj:                                           ; preds = %bb.boi
  %i.fal = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !102274
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fal)
          to label %.critedge2488 unwind label %bb.bw, !dbg !106628

bb.bok:                                           ; preds = %bb.dd, %bb.dc
  %i.fam = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18DistinctOptionsDSLEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fam), !dbg !102274
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bol:                                           ; preds = %bb.dd
  %i.fan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %20 = extractvalue { ptr, i32 } %i.fan, 0
  %21 = extractvalue { ptr, i32 } %i.fan, 1
  %i.fao = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18DistinctOptionsDSLEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fao) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

bb.bom:                                           ; preds = %bb.df, %bb.de
  %i.fap = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fap)
          to label %bb.boo unwind label %bb.bon, !dbg !106629

bb.bon:                                           ; preds = %bb.bom
  %i.faq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fap)
          to label %bb.bos unwind label %bb.bop, !dbg !106630

bb.boo:                                           ; preds = %bb.bom
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fap)
          to label %bb.bor unwind label %bb.boq, !dbg !106631

bb.bop:                                           ; preds = %bb.bon
  %i.far = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !106629
  unreachable, !dbg !106629

bb.boq:                                           ; preds = %bb.boo
  %i.fas = landingpad { ptr, i32 }
          cleanup
  br label %bb.bos

bb.bor:                                           ; preds = %bb.boo
  %i.fat = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !102274
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options19SortMultipleOptionsECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.fat), !dbg !102274
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

22:                                               ; preds = %bb.df
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %24) #51
          to label %bb.bos unwind label %bb.bw, !dbg !102274

bb.bos:                                           ; preds = %22, %bb.bon, %bb.boq
  %.pn2434 = phi { ptr, i32 } [ %23, %22 ], [ %i.fas, %bb.boq ], [ %i.faq, %bb.bon ] ; 2 uses
  %.sroa.478.142 = extractvalue { ptr, i32 } %.pn2434, 1
  %.sroa.02013.142 = extractvalue { ptr, i32 } %.pn2434, 0
  %i.fau = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options19SortMultipleOptionsECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.fau) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

bb.bot:                                           ; preds = %bb.dj
  %i.fav = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.faw = extractvalue { ptr, i32 } %i.fav, 1
  %i.fax = extractvalue { ptr, i32 } %i.fav, 0
  %i.fay = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %i.fay) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

.critedge2475:                                    ; preds = %bb.di, %bb.dj
  %i.faz = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %i.faz), !dbg !102274
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.bou:                                           ; preds = %bb.dr
  %i.fba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fbb = extractvalue { ptr, i32 } %i.fba, 1
  %i.fbc = extractvalue { ptr, i32 } %i.fba, 0
  %i.fbd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.fbd) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

.critedge2481:                                    ; preds = %bb.dq, %bb.dr
  %i.fbe = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fbe)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit3231 unwind label %bb.bov, !dbg !106632

bb.bov:                                           ; preds = %.critedge2481
  %i.fbf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fbe)
          to label %common.resume unwind label %bb.bow, !dbg !106633

bb.bow:                                           ; preds = %bb.bov
  %i.fbg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !106632
  unreachable, !dbg !106632

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit3231: ; preds = %.critedge2481
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fbe), !dbg !106634
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.box:                                           ; preds = %bb.dt
  %i.fbh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fbi = extractvalue { ptr, i32 } %i.fbh, 1
  %i.fbj = extractvalue { ptr, i32 } %i.fbh, 0
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink8SinkTypeEBO_(ptr noalias noundef align 8 dereferenceable(360) %1) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

.critedge2486:                                    ; preds = %bb.ds, %bb.dt
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink8SinkTypeEBO_(ptr noalias noundef align 8 dereferenceable(360) %1), !dbg !102274
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !102274

bb.boy:                                           ; preds = %bb.dy, %bb.dx
  %i.fbk = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102171), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102172), !dbg !106635
  %i.fbl = load ptr, ptr %i.fbk, align 16, !dbg !106636, !alias.scope !102173, !nonnull !3011, !noundef !3011
  %i.fbm = atomicrmw add ptr %i.fbl, i64 -1 release, align 8, !dbg !106637, !noalias !102173
  %i.fbn = icmp eq i64 %i.fbm, 1, !dbg !106638
  br i1 %i.fbn, label %bb.boz, label %.noexc3232, !dbg !106638

bb.boz:                                           ; preds = %bb.boy
  fence acquire, !dbg !106639, !noalias !102172
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fbk) #52
          to label %.noexc3232 unwind label %25, !dbg !106640, !inline_history !1539

25:                                               ; preds = %bb.boz
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bpd

.noexc3232:                                       ; preds = %bb.boz, %bb.boy
  %i.fbo = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102174), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102175), !dbg !106641
  %i.fbp = load ptr, ptr %i.fbo, align 8, !dbg !106642, !alias.scope !102176, !nonnull !3011, !noundef !3011
  %i.fbq = atomicrmw add ptr %i.fbp, i64 -1 release, align 8, !dbg !106643, !noalias !102176
  %i.fbr = icmp eq i64 %i.fbq, 1, !dbg !106644
  br i1 %i.fbr, label %bb.bpa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106644

bb.bpa:                                           ; preds = %.noexc3232
  fence acquire, !dbg !106645
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fbo) #52, !dbg !106646
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2705, !dbg !106646

bb.bpb:                                           ; preds = %bb.dy
  %27 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fbs = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102177), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102178), !dbg !106647
  %i.fbt = load ptr, ptr %i.fbs, align 16, !dbg !106648, !alias.scope !102179, !nonnull !3011, !noundef !3011
  %i.fbu = atomicrmw add ptr %i.fbt, i64 -1 release, align 8, !dbg !106649, !noalias !102179
  %i.fbv = icmp eq i64 %i.fbu, 1, !dbg !106650
  br i1 %i.fbv, label %bb.bpc, label %bb.bpd, !dbg !106650

bb.bpc:                                           ; preds = %bb.bpb
  fence acquire, !dbg !106651, !noalias !102178
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fbs) #52
          to label %bb.bpd unwind label %bb.bw, !dbg !106652, !inline_history !1539

bb.bpd:                                           ; preds = %25, %bb.bpc, %bb.bpb
  %.pn2432 = phi { ptr, i32 } [ %26, %25 ], [ %27, %bb.bpc ], [ %27, %bb.bpb ] ; 2 uses
  %.sroa.478.143 = extractvalue { ptr, i32 } %.pn2432, 1 ; 2 uses
  %.sroa.02013.143 = extractvalue { ptr, i32 } %.pn2432, 0 ; 2 uses
  %i.fbw = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102180), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102181), !dbg !106653
  %i.fbx = load ptr, ptr %i.fbw, align 8, !dbg !106654, !alias.scope !102182, !nonnull !3011, !noundef !3011
  %i.fby = atomicrmw add ptr %i.fbx, i64 -1 release, align 8, !dbg !106655, !noalias !102182
  %i.fbz = icmp eq i64 %i.fby, 1, !dbg !106656
  br i1 %i.fbz, label %bb.bpe, label %.critedge2488, !dbg !106656

bb.bpe:                                           ; preds = %bb.bpd
  fence acquire, !dbg !106657
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fbw) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106658

bb.bpf:                                           ; preds = %bb.e
  %i.fca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fcb = extractvalue { ptr, i32 } %i.fca, 0
  %i.fcc = extractvalue { ptr, i32 } %i.fca, 1
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0EBQ_(ptr noundef nonnull align 8 %i.tl) #51
          to label %.critedge2460 unwind label %bb.bw, !dbg !102295

bb.bpg:                                           ; preds = %.critedge2460
  br i1 %.sroa.01155.0, label %bb.bsc, label %.critedge2488, !dbg !102274

bb.bph:                                           ; preds = %.critedge2460
  br i1 %.sroa.01015.0, label %bb.bqe, label %.critedge2488, !dbg !102274

bb.bpi:                                           ; preds = %.critedge2460
  br i1 %.sroa.01021.0, label %bb.bqf, label %.critedge2488, !dbg !102274

bb.bpj:                                           ; preds = %.critedge2460
  br i1 %.sroa.01046.0, label %bb.bqh, label %.critedge2488, !dbg !102274

bb.bpk:                                           ; preds = %.critedge2460
  %i.fcd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fcd) #51
          to label %bb.bqi unwind label %bb.bw, !dbg !102274

bb.bpl:                                           ; preds = %.critedge2460
  br i1 %.sroa.01028.0, label %bb.bqn, label %.critedge2488, !dbg !102274

bb.bpm:                                           ; preds = %.critedge2460
  br i1 %.sroa.01033.0, label %bb.bqq, label %.critedge2488, !dbg !102274

bb.bpn:                                           ; preds = %.critedge2460
  br i1 %.sroa.01048.0, label %bb.bqs, label %.critedge2488, !dbg !102274

bb.bpo:                                           ; preds = %.critedge2460
  br i1 %.sroa.01065.0, label %bb.bqv, label %.critedge2488, !dbg !102274

bb.bpp:                                           ; preds = %.critedge2460
  br i1 %.sroa.01082.0, label %bb.bqz, label %.critedge2488, !dbg !102274

bb.bpq:                                           ; preds = %.critedge2460
  br i1 %.sroa.01087.0, label %bb.brb, label %.critedge2488, !dbg !102274

bb.bpr:                                           ; preds = %.critedge2460
  br i1 %.sroa.01092.0, label %bb.brd, label %.critedge2488, !dbg !102274

bb.bps:                                           ; preds = %.critedge2460
  br i1 %.sroa.01100.0, label %bb.brh, label %.critedge2488, !dbg !102274

bb.bpt:                                           ; preds = %.critedge2460
  br i1 %.sroa.01105.0, label %bb.brj, label %.critedge2488, !dbg !102274

bb.bpu:                                           ; preds = %.critedge2460
  br i1 %.sroa.01125.0, label %bb.brn, label %.critedge2488, !dbg !102274

bb.bpv:                                           ; preds = %.critedge2460
  br i1 %.sroa.01038.0, label %bb.brp, label %.critedge2488, !dbg !102274

bb.bpw:                                           ; preds = %.critedge2460
  br i1 %.sroa.01026.0, label %bb.brr, label %.critedge2488, !dbg !102274

bb.bpx:                                           ; preds = %.critedge2460
  br i1 %.sroa.01130.0, label %bb.brs, label %.critedge2488, !dbg !102274

bb.bpy:                                           ; preds = %.critedge2460
  br i1 %.sroa.01017.0, label %.invoke5012, label %.critedge2488, !dbg !102274

bb.bpz:                                           ; preds = %.critedge2460
  br i1 %.sroa.01019.0, label %.invoke5012, label %.critedge2488, !dbg !102274

bb.bqa:                                           ; preds = %.critedge2460
  br i1 %.sroa.01135.0, label %bb.bru, label %.critedge2488, !dbg !102274

bb.bqb:                                           ; preds = %.critedge2460
  br i1 %.sroa.01140.0, label %bb.brw, label %.critedge2488, !dbg !102274

bb.bqc:                                           ; preds = %.critedge2460
  br i1 %.sroa.01145.0, label %.invoke5012, label %.critedge2488, !dbg !102274

bb.bqd:                                           ; preds = %.critedge2460
  br i1 %.sroa.01147.0, label %bb.bry, label %.critedge2488, !dbg !102274

bb.bqe:                                           ; preds = %bb.bph
  %i.fce = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl6source16PythonOptionsDslEBO_(ptr noalias noundef align 8 dereferenceable(24) %i.fce) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

bb.bqf:                                           ; preds = %bb.bpi
  %i.fcf = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102183), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102184), !dbg !106659
  %i.fcg = load ptr, ptr %i.fcf, align 16, !dbg !106660, !alias.scope !102185, !nonnull !3011, !noundef !3011
  %i.fch = atomicrmw add ptr %i.fcg, i64 -1 release, align 8, !dbg !106661, !noalias !102185
  %i.fci = icmp eq i64 %i.fch, 1, !dbg !106662
  br i1 %i.fci, label %bb.bqg, label %.noexc3239, !dbg !106662

bb.bqg:                                           ; preds = %bb.bqf
  fence acquire, !dbg !106663, !noalias !102184
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fcf) #52
          to label %.noexc3239 unwind label %bb.bw, !dbg !106664, !inline_history !1539

.noexc3239:                                       ; preds = %bb.bqg, %bb.bqf
  %i.fcj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.fcj) #51
          to label %.critedge2488 unwind label %bb.bw, !dbg !102274

bb.bqh:                                           ; preds = %bb.bpj
  %i.fck = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102186), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102187), !dbg !106665
  %i.fcl = load ptr, ptr %i.fck, align 8, !dbg !106666, !alias.scope !102188, !nonnull !3011, !noundef !3011
  %i.fcm = atomicrmw add ptr %i.fcl, i64 -1 release, align 8, !dbg !106667, !noalias !102188
  %i.fcn = icmp eq i64 %i.fcm, 1, !dbg !106668
  br i1 %i.fcn, label %.invoke5010, label %.critedge2488, !dbg !106668

bb.bqi:                                           ; preds = %bb.bpk
  %i.fco = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102274
  %.val2608 = load ptr, ptr %i.fco, align 8, !dbg !102274, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr nonnull %.val2608) #51
          to label %bb.bqj unwind label %bb.bw, !dbg !102274

bb.bqj:                                           ; preds = %bb.bqi
  %i.fcp = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !102274
  %.val2613 = load ptr, ptr %i.fcp, align 16, !dbg !102274, !nonnull !3011, !noundef !3011
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr %.val2613) #51
          to label %bb.bqk unwind label %bb.bw, !dbg !102274

bb.bqk:                                           ; preds = %bb.bqj
  br i1 %.sroa.01012.0, label %bb.bql, label %.critedge2488, !dbg !102274

bb.bql:                                           ; preds = %bb.bqk
  %i.fcq = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102189), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102190), !dbg !106669
  %i.fcr = load ptr, ptr %i.fcq, align 8, !dbg !106670, !alias.scope !102191, !nonnull !3011, !noundef !3011
  %i.fcs = atomicrmw add ptr %i.fcr, i64 -1 release, align 8, !dbg !106671, !noalias !102191
  %i.fct = icmp eq i64 %i.fcs, 1, !dbg !106672
  br i1 %i.fct, label %bb.bqm, label %.critedge2488, !dbg !106672

bb.bqm:                                           ; preds = %bb.bql
  fence acquire, !dbg !106673
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEE9drop_slowB2d_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fcq) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106674, !inline_history !392

bb.bqn:                                           ; preds = %bb.bpl
  %i.fcu = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102192), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102193), !dbg !106675
  %i.fcv = load ptr, ptr %i.fcu, align 8, !dbg !106676, !alias.scope !102194, !nonnull !3011, !noundef !3011
  %i.fcw = atomicrmw add ptr %i.fcv, i64 -1 release, align 8, !dbg !106677, !noalias !102194
  %i.fcx = icmp eq i64 %i.fcw, 1, !dbg !106678
  br i1 %i.fcx, label %bb.bqo, label %.noexc3245, !dbg !106678

bb.bqo:                                           ; preds = %bb.bqn
  fence acquire, !dbg !106679
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fcu) #52
          to label %.noexc3245 unwind label %bb.bw, !dbg !106680

.noexc3245:                                       ; preds = %bb.bqo, %bb.bqn
  %i.fcy = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102195), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102196), !dbg !106681
  %i.fcz = load ptr, ptr %i.fcy, align 16, !dbg !106682, !alias.scope !102197, !nonnull !3011, !noundef !3011
  %i.fda = atomicrmw add ptr %i.fcz, i64 -1 release, align 8, !dbg !106683, !noalias !102197
  %i.fdb = icmp eq i64 %i.fda, 1, !dbg !106684
  br i1 %i.fdb, label %bb.bqp, label %.critedge2488, !dbg !106684

bb.bqp:                                           ; preds = %.noexc3245
  fence acquire, !dbg !106685
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fcy) #52
          to label %.critedge2488 unwind label %bb.bw, !dbg !106686

bb.bqq:                                           ; preds = %bb.bpm
  %i.fdc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !102274
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.fdc) #51
          to label %bb.bqr unwind label %bb.bw, !dbg !102274

bb.bqr:                                           ; preds = %bb.bqq
  %i.fdd = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102274 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102198), !dbg !102274
  call void @llvm.experimental.noalias.scope.decl(metadata !102199), !dbg !106687
  %i.fde = load ptr, ptr %i.fdd, align 16, !dbg !106688, !alias.scope !102200, !nonnull !3011, !noundef !3011
  %i.fdf = atomicrmw add ptr %i.fde, i64 -1 release, align 8, !dbg !106689, !noalias !102200
  %i.fdg = icmp eq i64 %i.fdf, 1, !dbg !106690
  br i1 %i.fdg, label %.invoke5010, label %.critedge2488, !dbg !106690
end_hunk_6
begin_hunk_7_@llvm.umin.i16
!98125 = distinct !{!98125, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98126 = distinct !{!98126, !98125, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98127 = distinct !DILocation(line: 1615, column: 9, scope: !94202)
!98128 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98127)
!98129 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98128)
!98130 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98129)
!98131 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98128)
!98132 = distinct !DILexicalBlock(scope: !94796, file: !3016, line: 1622, column: 13)
!98133 = distinct !{!98133, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98134 = distinct !{!98134, !98133, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98135 = distinct !{!98135, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98136 = distinct !{!98136, !98135, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98137 = distinct !DILocation(line: 1615, column: 9, scope: !94202)
!98138 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98137)
!98139 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98138)
!98140 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98139)
!98141 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98138)
!98142 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98143 = distinct !DILocation(line: 810, column: 1, scope: !382, inlinedAt: !98142)
!98144 = distinct !DILocation(line: 1921, column: 24, scope: !385, inlinedAt: !98143)
!98145 = distinct !DILocation(line: 462, column: 23, scope: !352, inlinedAt: !98144)
!98146 = distinct !DILocation(line: 344, column: 9, scope: !351, inlinedAt: !98145)
!98147 = distinct !DILocation(line: 229, column: 22, scope: !350, inlinedAt: !98146)
!98148 = distinct !DILocation(line: 810, column: 1, scope: !382, inlinedAt: !98142)
!98149 = distinct !DILocation(line: 1921, column: 24, scope: !385, inlinedAt: !98148)
!98150 = distinct !DILocation(line: 462, column: 23, scope: !352, inlinedAt: !98149)
!98151 = distinct !DILocation(line: 344, column: 9, scope: !351, inlinedAt: !98150)
!98152 = distinct !DILocation(line: 229, column: 22, scope: !350, inlinedAt: !98151)
!98153 = distinct !{!98153, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_"}
!98154 = distinct !{!98154, !98153, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_: argument 0"}
!98155 = distinct !{!98155, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_"}
!98156 = distinct !{!98156, !98155, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_: argument 0"}
!98157 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98158 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !98157)
!98159 = distinct !DILocation(line: 2814, column: 17, scope: !389, inlinedAt: !98158)
!98160 = distinct !DILocation(line: 2110, column: 27, scope: !388, inlinedAt: !98159)
!98161 = distinct !DILocation(line: 2814, column: 32, scope: !389, inlinedAt: !98158)
!98162 = distinct !DILocation(line: 3193, column: 26, scope: !391, inlinedAt: !98161)
!98163 = distinct !DILocation(line: 64, column: 9, scope: !389, inlinedAt: !98158)
!98164 = distinct !{null, null}
!98165 = distinct !{!98165, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_"}
!98166 = distinct !{!98166, !98165, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_: argument 0"}
!98167 = distinct !{!98167, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_"}
!98168 = distinct !{!98168, !98167, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_: argument 0"}
!98169 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98170 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !98169)
!98171 = distinct !DILocation(line: 2814, column: 17, scope: !389, inlinedAt: !98170)
!98172 = distinct !DILocation(line: 2110, column: 27, scope: !388, inlinedAt: !98171)
!98173 = distinct !DILocation(line: 2814, column: 32, scope: !389, inlinedAt: !98170)
!98174 = distinct !DILocation(line: 3193, column: 26, scope: !391, inlinedAt: !98173)
!98175 = distinct !DILocation(line: 64, column: 9, scope: !389, inlinedAt: !98170)
!98176 = distinct !{!98176, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!98177 = distinct !{!98177, !98176, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98178 = distinct !{!98178, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98179 = distinct !{!98179, !98178, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98180 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98181 = distinct !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98180)
!98182 = distinct !DILocation(line: 2814, column: 17, scope: !421, inlinedAt: !98181)
!98183 = distinct !DILocation(line: 2110, column: 27, scope: !420, inlinedAt: !98182)
!98184 = distinct !DILocation(line: 2814, column: 32, scope: !421, inlinedAt: !98181)
!98185 = distinct !DILocation(line: 3193, column: 26, scope: !423, inlinedAt: !98184)
!98186 = distinct !DILocation(line: 64, column: 9, scope: !421, inlinedAt: !98181)
!98187 = distinct !{!98187, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!98188 = distinct !{!98188, !98187, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98189 = distinct !{!98189, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98190 = distinct !{!98190, !98189, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98191 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98192 = distinct !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98191)
!98193 = distinct !DILocation(line: 2814, column: 17, scope: !421, inlinedAt: !98192)
!98194 = distinct !DILocation(line: 2110, column: 27, scope: !420, inlinedAt: !98193)
!98195 = distinct !DILocation(line: 2814, column: 32, scope: !421, inlinedAt: !98192)
!98196 = distinct !DILocation(line: 3193, column: 26, scope: !423, inlinedAt: !98195)
!98197 = distinct !DILocation(line: 64, column: 9, scope: !421, inlinedAt: !98192)
!98198 = distinct !{!98198, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98199 = distinct !{!98199, !98198, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98200 = distinct !{!98200, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98201 = distinct !{!98201, !98200, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98202 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98203 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98202)
!98204 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98203)
!98205 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98204)
!98206 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98203)
!98207 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98206)
!98208 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98203)
!98209 = distinct !{!98209, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98210 = distinct !{!98210, !98209, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98211 = distinct !{!98211, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98212 = distinct !{!98212, !98211, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98213 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98214 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98213)
!98215 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98214)
!98216 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98215)
!98217 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98214)
!98218 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98217)
!98219 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98214)
!98220 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98221 = distinct !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98220)
!98222 = distinct !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98220)
!98223 = distinct !{!98223, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_"}
!98224 = distinct !{!98224, !98223, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_: argument 0"}
!98225 = distinct !{!98225, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98226 = distinct !{!98226, !98225, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98227 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98228 = distinct !DILocation(line: 810, column: 1, scope: !1505, inlinedAt: !98227)
!98229 = distinct !DILocation(line: 2814, column: 17, scope: !1508, inlinedAt: !98228)
!98230 = distinct !DILocation(line: 2110, column: 27, scope: !1507, inlinedAt: !98229)
!98231 = distinct !DILocation(line: 2814, column: 32, scope: !1508, inlinedAt: !98228)
!98232 = distinct !DILocation(line: 3193, column: 26, scope: !1510, inlinedAt: !98231)
!98233 = distinct !DILocation(line: 64, column: 9, scope: !1508, inlinedAt: !98228)
!98234 = distinct !{!98234, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_"}
!98235 = distinct !{!98235, !98234, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_: argument 0"}
!98236 = distinct !{!98236, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98237 = distinct !{!98237, !98236, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98238 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98239 = distinct !DILocation(line: 810, column: 1, scope: !1505, inlinedAt: !98238)
!98240 = distinct !DILocation(line: 2814, column: 17, scope: !1508, inlinedAt: !98239)
!98241 = distinct !DILocation(line: 2110, column: 27, scope: !1507, inlinedAt: !98240)
!98242 = distinct !DILocation(line: 2814, column: 32, scope: !1508, inlinedAt: !98239)
!98243 = distinct !DILocation(line: 3193, column: 26, scope: !1510, inlinedAt: !98242)
!98244 = distinct !DILocation(line: 64, column: 9, scope: !1508, inlinedAt: !98239)
!98245 = distinct !{!98245, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98246 = distinct !{!98246, !98245, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98247 = distinct !{!98247, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98248 = distinct !{!98248, !98247, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98249 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98250 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98249)
!98251 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98250)
!98252 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98251)
!98253 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98250)
!98254 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98253)
!98255 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98250)
!98256 = distinct !{!98256, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98257 = distinct !{!98257, !98256, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98258 = distinct !{!98258, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98259 = distinct !{!98259, !98258, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98260 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98261 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98260)
!98262 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98261)
!98263 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98262)
!98264 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98261)
!98265 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98264)
!98266 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98261)
!98267 = distinct !{!98267, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_"}
!98268 = distinct !{!98268, !98267, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_: argument 0"}
!98269 = distinct !{!98269, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98270 = distinct !{!98270, !98269, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98271 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98272 = distinct !DILocation(line: 810, column: 1, scope: !1511, inlinedAt: !98271)
!98273 = distinct !DILocation(line: 2814, column: 17, scope: !1514, inlinedAt: !98272)
!98274 = distinct !DILocation(line: 2110, column: 27, scope: !1513, inlinedAt: !98273)
!98275 = distinct !DILocation(line: 2814, column: 32, scope: !1514, inlinedAt: !98272)
!98276 = distinct !DILocation(line: 3193, column: 26, scope: !1516, inlinedAt: !98275)
!98277 = distinct !DILocation(line: 64, column: 9, scope: !1514, inlinedAt: !98272)
!98278 = distinct !{!98278, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_"}
!98279 = distinct !{!98279, !98278, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_: argument 0"}
!98280 = distinct !{!98280, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98281 = distinct !{!98281, !98280, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98282 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98283 = distinct !DILocation(line: 810, column: 1, scope: !1511, inlinedAt: !98282)
!98284 = distinct !DILocation(line: 2814, column: 17, scope: !1514, inlinedAt: !98283)
!98285 = distinct !DILocation(line: 2110, column: 27, scope: !1513, inlinedAt: !98284)
!98286 = distinct !DILocation(line: 2814, column: 32, scope: !1514, inlinedAt: !98283)
!98287 = distinct !DILocation(line: 3193, column: 26, scope: !1516, inlinedAt: !98286)
!98288 = distinct !DILocation(line: 64, column: 9, scope: !1514, inlinedAt: !98283)
!98289 = distinct !{!98289, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98290 = distinct !{!98290, !98289, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98291 = distinct !{!98291, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98292 = distinct !{!98292, !98291, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98293 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98294 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98293)
!98295 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98294)
!98296 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98295)
!98297 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98294)
!98298 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98297)
!98299 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98294)
!98300 = distinct !{!98300, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98301 = distinct !{!98301, !98300, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98302 = distinct !{!98302, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98303 = distinct !{!98303, !98302, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98304 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98305 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98304)
!98306 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98305)
!98307 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98306)
!98308 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98305)
!98309 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98308)
!98310 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98305)
!98311 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98312 = distinct !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98311)
!98313 = distinct !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98311)
!98314 = distinct !{!98314, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!98315 = distinct !{!98315, !98314, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98316 = distinct !{!98316, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98317 = distinct !{!98317, !98316, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98318 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98319 = distinct !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98318)
!98320 = distinct !DILocation(line: 2814, column: 17, scope: !421, inlinedAt: !98319)
!98321 = distinct !DILocation(line: 2110, column: 27, scope: !420, inlinedAt: !98320)
!98322 = distinct !DILocation(line: 2814, column: 32, scope: !421, inlinedAt: !98319)
!98323 = distinct !DILocation(line: 3193, column: 26, scope: !423, inlinedAt: !98322)
!98324 = distinct !DILocation(line: 64, column: 9, scope: !421, inlinedAt: !98319)
!98325 = distinct !{!98325, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_"}
!98326 = distinct !{!98326, !98325, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_: argument 0"}
!98327 = distinct !{!98327, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_"}
!98328 = distinct !{!98328, !98327, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_: argument 0"}
!98329 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98330 = distinct !DILocation(line: 810, column: 1, scope: !1517, inlinedAt: !98329)
!98331 = distinct !DILocation(line: 2814, column: 17, scope: !1520, inlinedAt: !98330)
!98332 = distinct !DILocation(line: 2110, column: 27, scope: !1519, inlinedAt: !98331)
!98333 = distinct !DILocation(line: 2814, column: 32, scope: !1520, inlinedAt: !98330)
!98334 = distinct !DILocation(line: 3193, column: 26, scope: !1522, inlinedAt: !98333)
!98335 = distinct !DILocation(line: 64, column: 9, scope: !1520, inlinedAt: !98330)
!98336 = distinct !{!98336, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!98337 = distinct !{!98337, !98336, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98338 = distinct !{!98338, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98339 = distinct !{!98339, !98338, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98340 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98341 = distinct !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98340)
!98342 = distinct !DILocation(line: 2814, column: 17, scope: !421, inlinedAt: !98341)
!98343 = distinct !DILocation(line: 2110, column: 27, scope: !420, inlinedAt: !98342)
!98344 = distinct !DILocation(line: 2814, column: 32, scope: !421, inlinedAt: !98341)
!98345 = distinct !DILocation(line: 3193, column: 26, scope: !423, inlinedAt: !98344)
!98346 = distinct !DILocation(line: 64, column: 9, scope: !421, inlinedAt: !98341)
!98347 = distinct !{!98347, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_"}
!98348 = distinct !{!98348, !98347, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_: argument 0"}
!98349 = distinct !{!98349, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_"}
!98350 = distinct !{!98350, !98349, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_: argument 0"}
!98351 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98352 = distinct !DILocation(line: 810, column: 1, scope: !1517, inlinedAt: !98351)
!98353 = distinct !DILocation(line: 2814, column: 17, scope: !1520, inlinedAt: !98352)
!98354 = distinct !DILocation(line: 2110, column: 27, scope: !1519, inlinedAt: !98353)
!98355 = distinct !DILocation(line: 2814, column: 32, scope: !1520, inlinedAt: !98352)
!98356 = distinct !DILocation(line: 3193, column: 26, scope: !1522, inlinedAt: !98355)
!98357 = distinct !DILocation(line: 64, column: 9, scope: !1520, inlinedAt: !98352)
!98358 = distinct !{!98358, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan"}
!98359 = distinct !{!98359, !98358, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98360 = distinct !{!98360, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98361 = distinct !{!98361, !98360, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98362 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98363 = distinct !DILocation(line: 810, column: 1, scope: !170, inlinedAt: !98362)
!98364 = distinct !DILocation(line: 2814, column: 17, scope: !169, inlinedAt: !98363)
!98365 = distinct !DILocation(line: 2110, column: 27, scope: !651, inlinedAt: !98364)
!98366 = distinct !DILocation(line: 2814, column: 32, scope: !169, inlinedAt: !98363)
!98367 = distinct !DILocation(line: 3193, column: 26, scope: !168, inlinedAt: !98366)
!98368 = distinct !DILocation(line: 64, column: 9, scope: !169, inlinedAt: !98363)
!98369 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98370 = distinct !DILocation(line: 810, column: 1, scope: !266, inlinedAt: !98369)
!98371 = distinct !DILocation(line: 810, column: 1, scope: !265, inlinedAt: !98370)
!98372 = distinct !DILocation(line: 810, column: 1, scope: !264, inlinedAt: !98371)
!98373 = distinct !DILocation(line: 779, column: 17, scope: !263, inlinedAt: !98372)
!98374 = distinct !DILocation(line: 447, column: 30, scope: !262, inlinedAt: !98373)
!98375 = distinct !{!98375, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan"}
!98376 = distinct !{!98376, !98375, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98377 = distinct !{!98377, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfcROwRM8ZtH_11polars_plan"}
!98378 = distinct !{!98378, !98377, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98379 = distinct !{!98379, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfcROwRM8ZtH_11polars_plan"}
!98380 = distinct !{!98380, !98379, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98381 = distinct !{!98381, i1 true, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!98382 = distinct !{!98382, !98381, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!98383 = distinct !{!98383, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan"}
!98384 = distinct !{!98384, !98383, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98385 = distinct !{!98385, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98386 = distinct !{!98386, !98385, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98387 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98388 = distinct !DILocation(line: 810, column: 1, scope: !170, inlinedAt: !98387)
!98389 = distinct !DILocation(line: 2814, column: 17, scope: !169, inlinedAt: !98388)
!98390 = distinct !DILocation(line: 2110, column: 27, scope: !651, inlinedAt: !98389)
!98391 = distinct !DILocation(line: 2814, column: 32, scope: !169, inlinedAt: !98388)
!98392 = distinct !DILocation(line: 3193, column: 26, scope: !168, inlinedAt: !98391)
!98393 = distinct !DILocation(line: 64, column: 9, scope: !169, inlinedAt: !98388)
!98394 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98395 = distinct !DILocation(line: 810, column: 1, scope: !266, inlinedAt: !98394)
!98396 = distinct !DILocation(line: 810, column: 1, scope: !265, inlinedAt: !98395)
!98397 = distinct !DILocation(line: 810, column: 1, scope: !264, inlinedAt: !98396)
!98398 = distinct !DILocation(line: 779, column: 17, scope: !263, inlinedAt: !98397)
!98399 = distinct !DILocation(line: 447, column: 30, scope: !262, inlinedAt: !98398)
!98400 = distinct !{!98400, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan"}
!98401 = distinct !{!98401, !98400, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98402 = distinct !{!98402, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfcROwRM8ZtH_11polars_plan"}
!98403 = distinct !{!98403, !98402, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98404 = distinct !{!98404, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfcROwRM8ZtH_11polars_plan"}
!98405 = distinct !{!98405, !98404, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98406 = distinct !{!98406, i1 true, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!98407 = distinct !{!98407, !98406, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!98408 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98409 = distinct !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98408)
!98410 = distinct !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98408)
!98411 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98412 = distinct !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !98411)
!98413 = distinct !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !98411)
!98414 = distinct !{!98414, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98415 = distinct !{!98415, !98414, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98416 = distinct !{!98416, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98417 = distinct !{!98417, !98416, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98418 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98419 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98418)
!98420 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98419)
!98421 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98420)
!98422 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98419)
!98423 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98422)
!98424 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98419)
!98425 = distinct !{!98425, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan"}
!98426 = distinct !{!98426, !98425, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98427 = distinct !{!98427, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98428 = distinct !{!98428, !98427, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98429 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98430 = distinct !DILocation(line: 810, column: 1, scope: !1127, inlinedAt: !98429)
!98431 = distinct !DILocation(line: 2814, column: 17, scope: !1126, inlinedAt: !98430)
!98432 = distinct !DILocation(line: 2110, column: 27, scope: !1499, inlinedAt: !98431)
!98433 = distinct !DILocation(line: 2814, column: 32, scope: !1126, inlinedAt: !98430)
!98434 = distinct !DILocation(line: 3193, column: 26, scope: !1125, inlinedAt: !98433)
!98435 = distinct !DILocation(line: 64, column: 9, scope: !1126, inlinedAt: !98430)
!98436 = distinct !{!98436, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98437 = distinct !{!98437, !98436, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98438 = distinct !{!98438, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98439 = distinct !{!98439, !98438, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98440 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98441 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98440)
!98442 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98441)
!98443 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98442)
!98444 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98441)
!98445 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98444)
!98446 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98441)
!98447 = distinct !{!98447, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan"}
!98448 = distinct !{!98448, !98447, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98449 = distinct !{!98449, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98450 = distinct !{!98450, !98449, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98451 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98452 = distinct !DILocation(line: 810, column: 1, scope: !1127, inlinedAt: !98451)
!98453 = distinct !DILocation(line: 2814, column: 17, scope: !1126, inlinedAt: !98452)
!98454 = distinct !DILocation(line: 2110, column: 27, scope: !1499, inlinedAt: !98453)
!98455 = distinct !DILocation(line: 2814, column: 32, scope: !1126, inlinedAt: !98452)
!98456 = distinct !DILocation(line: 3193, column: 26, scope: !1125, inlinedAt: !98455)
!98457 = distinct !DILocation(line: 64, column: 9, scope: !1126, inlinedAt: !98452)
!98458 = distinct !{!98458, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98459 = distinct !{!98459, !98458, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98460 = distinct !{!98460, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98461 = distinct !{!98461, !98460, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98462 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98463 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98462)
!98464 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98463)
!98465 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98464)
!98466 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98463)
!98467 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98466)
!98468 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98463)
!98469 = distinct !{!98469, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98470 = distinct !{!98470, !98469, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98471 = distinct !{!98471, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98472 = distinct !{!98472, !98471, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98473 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98474 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98473)
!98475 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98474)
!98476 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98475)
!98477 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98474)
!98478 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98477)
!98479 = distinct !{!98479, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_"}
!98480 = distinct !{!98480, !98479, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_: argument 0"}
!98481 = distinct !{!98481, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_"}
!98482 = distinct !{!98482, !98481, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_: argument 0"}
!98483 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98484 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !98483)
!98485 = distinct !DILocation(line: 2814, column: 17, scope: !389, inlinedAt: !98484)
!98486 = distinct !DILocation(line: 2110, column: 27, scope: !388, inlinedAt: !98485)
!98487 = distinct !DILocation(line: 2814, column: 32, scope: !389, inlinedAt: !98484)
!98488 = distinct !DILocation(line: 3193, column: 26, scope: !391, inlinedAt: !98487)
!98489 = distinct !DILocation(line: 64, column: 9, scope: !389, inlinedAt: !98484)
!98490 = distinct !{!98490, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan"}
!98491 = distinct !{!98491, !98490, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98492 = distinct !{!98492, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98493 = distinct !{!98493, !98492, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98494 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98495 = distinct !DILocation(line: 810, column: 1, scope: !170, inlinedAt: !98494)
!98496 = distinct !DILocation(line: 2814, column: 17, scope: !169, inlinedAt: !98495)
!98497 = distinct !DILocation(line: 2110, column: 27, scope: !651, inlinedAt: !98496)
!98498 = distinct !DILocation(line: 2814, column: 32, scope: !169, inlinedAt: !98495)
!98499 = distinct !DILocation(line: 3193, column: 26, scope: !168, inlinedAt: !98498)
!98500 = distinct !DILocation(line: 64, column: 9, scope: !169, inlinedAt: !98495)
!98501 = distinct !{!98501, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!98502 = distinct !{!98502, !98501, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98503 = distinct !{!98503, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98504 = distinct !{!98504, !98503, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98505 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98506 = distinct !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98505)
!98507 = distinct !DILocation(line: 2814, column: 17, scope: !421, inlinedAt: !98506)
!98508 = distinct !DILocation(line: 2110, column: 27, scope: !420, inlinedAt: !98507)
!98509 = distinct !DILocation(line: 2814, column: 32, scope: !421, inlinedAt: !98506)
!98510 = distinct !DILocation(line: 3193, column: 26, scope: !423, inlinedAt: !98509)
!98511 = distinct !DILocation(line: 64, column: 9, scope: !421, inlinedAt: !98506)
!98512 = distinct !{!98512, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98513 = distinct !{!98513, !98512, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98514 = distinct !{!98514, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98515 = distinct !{!98515, !98514, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98516 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98517 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98516)
!98518 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98517)
!98519 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98518)
!98520 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98517)
!98521 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98520)
!98522 = distinct !{!98522, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98523 = distinct !{!98523, !98522, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98524 = distinct !{!98524, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98525 = distinct !{!98525, !98524, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98526 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98527 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98526)
!98528 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98527)
!98529 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98528)
!98530 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98527)
!98531 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98530)
!98532 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98527)
!98533 = distinct !{!98533, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_"}
!98534 = distinct !{!98534, !98533, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_: argument 0"}
!98535 = distinct !{!98535, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98536 = distinct !{!98536, !98535, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98537 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98538 = distinct !DILocation(line: 810, column: 1, scope: !1505, inlinedAt: !98537)
!98539 = distinct !DILocation(line: 2814, column: 17, scope: !1508, inlinedAt: !98538)
!98540 = distinct !DILocation(line: 2110, column: 27, scope: !1507, inlinedAt: !98539)
!98541 = distinct !DILocation(line: 2814, column: 32, scope: !1508, inlinedAt: !98538)
!98542 = distinct !DILocation(line: 3193, column: 26, scope: !1510, inlinedAt: !98541)
!98543 = distinct !DILocation(line: 64, column: 9, scope: !1508, inlinedAt: !98538)
!98544 = distinct !{!98544, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98545 = distinct !{!98545, !98544, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98546 = distinct !{!98546, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98547 = distinct !{!98547, !98546, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98548 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98549 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98548)
!98550 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98549)
!98551 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98550)
!98552 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98549)
!98553 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98552)
!98554 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98549)
!98555 = distinct !{!98555, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98556 = distinct !{!98556, !98555, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98557 = distinct !{!98557, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98558 = distinct !{!98558, !98557, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98559 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98560 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98559)
!98561 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98560)
!98562 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98561)
!98563 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98560)
!98564 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98563)
!98565 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98560)
!98566 = distinct !{!98566, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_"}
!98567 = distinct !{!98567, !98566, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_: argument 0"}
!98568 = distinct !{!98568, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98569 = distinct !{!98569, !98568, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98570 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98571 = distinct !DILocation(line: 810, column: 1, scope: !1511, inlinedAt: !98570)
!98572 = distinct !DILocation(line: 2814, column: 17, scope: !1514, inlinedAt: !98571)
!98573 = distinct !DILocation(line: 2110, column: 27, scope: !1513, inlinedAt: !98572)
!98574 = distinct !DILocation(line: 2814, column: 32, scope: !1514, inlinedAt: !98571)
!98575 = distinct !DILocation(line: 3193, column: 26, scope: !1516, inlinedAt: !98574)
!98576 = distinct !DILocation(line: 64, column: 9, scope: !1514, inlinedAt: !98571)
!98577 = distinct !{!98577, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98578 = distinct !{!98578, !98577, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98579 = distinct !{!98579, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98580 = distinct !{!98580, !98579, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98581 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98582 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98581)
!98583 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98582)
!98584 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98583)
!98585 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98582)
!98586 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98585)
!98587 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98582)
!98588 = distinct !{!98588, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98589 = distinct !{!98589, !98588, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98590 = distinct !{!98590, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98591 = distinct !{!98591, !98590, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98592 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98593 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98592)
!98594 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98593)
!98595 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98594)
!98596 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98593)
!98597 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98596)
!98598 = distinct !{!98598, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98599 = distinct !{!98599, !98598, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98600 = distinct !{!98600, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98601 = distinct !{!98601, !98600, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98602 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98603 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98602)
!98604 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98603)
!98605 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98604)
!98606 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98603)
!98607 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98606)
!98608 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98603)
!98609 = distinct !{!98609, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!98610 = distinct !{!98610, !98609, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!98611 = distinct !{!98611, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!98612 = distinct !{!98612, !98611, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!98613 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98614 = distinct !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98613)
!98615 = distinct !DILocation(line: 2814, column: 17, scope: !1529, inlinedAt: !98614)
!98616 = distinct !DILocation(line: 2110, column: 27, scope: !1528, inlinedAt: !98615)
!98617 = distinct !DILocation(line: 2814, column: 32, scope: !1529, inlinedAt: !98614)
!98618 = distinct !DILocation(line: 3193, column: 26, scope: !1531, inlinedAt: !98617)
!98619 = distinct !DILocation(line: 64, column: 9, scope: !1529, inlinedAt: !98614)
!98620 = distinct !{!98620, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!98621 = distinct !{!98621, !98620, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!98622 = distinct !{!98622, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!98623 = distinct !{!98623, !98622, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!98624 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98625 = distinct !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98624)
!98626 = distinct !DILocation(line: 2814, column: 17, scope: !421, inlinedAt: !98625)
!98627 = distinct !DILocation(line: 2110, column: 27, scope: !420, inlinedAt: !98626)
!98628 = distinct !DILocation(line: 2814, column: 32, scope: !421, inlinedAt: !98625)
!98629 = distinct !DILocation(line: 3193, column: 26, scope: !423, inlinedAt: !98628)
!98630 = distinct !DILocation(line: 64, column: 9, scope: !421, inlinedAt: !98625)
!98631 = distinct !{!98631, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_"}
!98632 = distinct !{!98632, !98631, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_: argument 0"}
!98633 = distinct !{!98633, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_"}
!98634 = distinct !{!98634, !98633, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_: argument 0"}
!98635 = distinct !DILocation(line: 156, column: 12, scope: !94201)
!98636 = distinct !DILocation(line: 810, column: 1, scope: !1517, inlinedAt: !98635)
!98637 = distinct !DILocation(line: 2814, column: 17, scope: !1520, inlinedAt: !98636)
!98638 = distinct !DILocation(line: 2110, column: 27, scope: !1519, inlinedAt: !98637)
!98639 = distinct !DILocation(line: 2814, column: 32, scope: !1520, inlinedAt: !98636)
!98640 = distinct !DILocation(line: 3193, column: 26, scope: !1522, inlinedAt: !98639)
!98641 = distinct !DILocation(line: 64, column: 9, scope: !1520, inlinedAt: !98636)
!98642 = distinct !{!98642, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_"}
!98643 = distinct !{!98643, !98642, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_: argument 0"}
!98644 = distinct !{!98644, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_"}
!98645 = distinct !{!98645, !98644, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_: argument 0"}
!98646 = distinct !DILocation(line: 156, column: 12, scope: !94201)
end_hunk_7
begin_hunk_8_@llvm.umin.i16
!106393 = !DILocation(line: 0, scope: !1726, inlinedAt: !97948)
!106394 = !DILocation(line: 2428, column: 9, scope: !94851, inlinedAt: !102051)
!106395 = !DILocation(line: 1586, column: 22, scope: !97947)
!106396 = !DILocation(line: 966, column: 15, scope: !97987, inlinedAt: !102059)
!106397 = !DILocation(line: 966, column: 9, scope: !97987, inlinedAt: !102059)
!106398 = !DILocation(line: 968, column: 27, scope: !97988, inlinedAt: !102059)
!106399 = !DILocation(line: 968, column: 23, scope: !97988, inlinedAt: !102059)
!106400 = !DILocation(line: 968, column: 32, scope: !97988, inlinedAt: !102059)
!106401 = !DILocation(line: 2175, column: 17, scope: !96235, inlinedAt: !102061)
!106402 = !DILocation(line: 2189, column: 23, scope: !97989, inlinedAt: !102063)
!106403 = !DILocation(line: 1717, column: 9, scope: !97992, inlinedAt: !102064)
!106404 = !DILocation(line: 180, column: 28, scope: !97966, inlinedAt: !102045)
!106405 = !DILocation(line: 810, column: 1, scope: !2416, inlinedAt: !97995)
!106406 = !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98000)
!106407 = !DILocation(line: 444, column: 20, scope: !419, inlinedAt: !98003)
!106408 = !DILocation(line: 3956, column: 24, scope: !422, inlinedAt: !98005)
!106409 = !DILocation(line: 2814, column: 12, scope: !421, inlinedAt: !98001)
!106410 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98006)
!106411 = !DILocation(line: 2857, column: 18, scope: !421, inlinedAt: !98001)
!106412 = !DILocation(line: 614, column: 9, scope: !2211, inlinedAt: !98010)
!106413 = !DILocation(line: 961, column: 18, scope: !2215, inlinedAt: !98011)
!106414 = !DILocation(line: 1045, column: 29, scope: !2216, inlinedAt: !94539)
!106415 = !DILocation(line: 1046, column: 13, scope: !2216, inlinedAt: !94539)
!106416 = !DILocation(line: 1617, column: 5, scope: !94531)
!106417 = !DILocation(line: 810, column: 1, scope: !58, inlinedAt: !98014)
!106418 = !DILocation(line: 810, column: 1, scope: !59, inlinedAt: !98019)
!106419 = !DILocation(line: 444, column: 20, scope: !60, inlinedAt: !98022)
!106420 = !DILocation(line: 3956, column: 24, scope: !63, inlinedAt: !98024)
!106421 = !DILocation(line: 2814, column: 12, scope: !62, inlinedAt: !98020)
!106422 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98025)
!106423 = !DILocation(line: 2857, column: 18, scope: !62, inlinedAt: !98020)
!106424 = !DILocation(line: 810, column: 1, scope: !66, inlinedAt: !98027)
!106425 = !DILocation(line: 810, column: 1, scope: !68, inlinedAt: !98032)
!106426 = !DILocation(line: 444, column: 20, scope: !69, inlinedAt: !98035)
!106427 = !DILocation(line: 3956, column: 24, scope: !72, inlinedAt: !98037)
!106428 = !DILocation(line: 2814, column: 12, scope: !71, inlinedAt: !98033)
!106429 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98038)
!106430 = !DILocation(line: 2857, column: 18, scope: !71, inlinedAt: !98033)
!106431 = !DILocation(line: 810, column: 1, scope: !382, inlinedAt: !98039)
!106432 = !DILocation(line: 128, column: 14, scope: !349, inlinedAt: !98044)
!106433 = !DILocation(line: 128, column: 14, scope: !349, inlinedAt: !98049)
!106434 = !DILocation(line: 968, column: 23, scope: !97943, inlinedAt: !102020)
!106435 = !DILocation(line: 968, column: 32, scope: !97943, inlinedAt: !102020)
!106436 = !DILocation(line: 810, column: 1, scope: !2416, inlinedAt: !98052)
!106437 = !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98057)
!106438 = !DILocation(line: 444, column: 20, scope: !419, inlinedAt: !98060)
!106439 = !DILocation(line: 3956, column: 24, scope: !422, inlinedAt: !98062)
!106440 = !DILocation(line: 2814, column: 12, scope: !421, inlinedAt: !98058)
!106441 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98063)
!106442 = !DILocation(line: 2857, column: 18, scope: !421, inlinedAt: !98058)
!106443 = !DILocation(line: 810, column: 1, scope: !1127, inlinedAt: !98068)
!106444 = !DILocation(line: 444, column: 20, scope: !1498, inlinedAt: !98071)
!106445 = !DILocation(line: 3956, column: 24, scope: !1124, inlinedAt: !98073)
!106446 = !DILocation(line: 2814, column: 12, scope: !1126, inlinedAt: !98069)
!106447 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98081)
!106448 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98079)
!106449 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98082)
!106450 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98079)
!106451 = !DILocation(line: 810, column: 1, scope: !1127, inlinedAt: !98087)
!106452 = !DILocation(line: 444, column: 20, scope: !1498, inlinedAt: !98090)
!106453 = !DILocation(line: 3956, column: 24, scope: !1124, inlinedAt: !98092)
!106454 = !DILocation(line: 2814, column: 12, scope: !1126, inlinedAt: !98088)
!106455 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98093)
!106456 = !DILocation(line: 2857, column: 18, scope: !1126, inlinedAt: !98088)
!106457 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98101)
!106458 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98099)
!106459 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98102)
!106460 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98099)
!106461 = !DILocation(line: 2588, column: 9, scope: !94228, inlinedAt: !102090)
!106462 = !DILocation(line: 1620, column: 15, scope: !94796, inlinedAt: !102092)
!106463 = !DILocation(line: 1620, column: 9, scope: !94796, inlinedAt: !102092)
!106464 = !DILocation(line: 1615, column: 9, scope: !94202)
!106465 = !DILocation(line: 1604, column: 39, scope: !94508)
!106466 = !DILocation(line: 664, column: 24, scope: !98104, inlinedAt: !98877)
!106467 = !DILocation(line: 3, column: 1, scope: !102093, inlinedAt: !98115)
!106468 = !DILocation(line: 3, column: 1, scope: !102099, inlinedAt: !98119)
!106469 = !DILocation(line: 1605, column: 20, scope: !98103)
!106470 = !DILocation(line: 1608, column: 39, scope: !98103)
!106471 = !DILocation(line: 54, column: 9, scope: !95969, inlinedAt: !102102)
!106472 = !DILocation(line: 1608, column: 28, scope: !98103)
!106473 = !DILocation(line: 382, column: 9, scope: !98120, inlinedAt: !102103)
!106474 = !DILocation(line: 451, column: 14, scope: !98121, inlinedAt: !102104)
!106475 = !DILocation(line: 451, column: 9, scope: !98121, inlinedAt: !102104)
!106476 = !DILocation(line: 1609, column: 28, scope: !98103)
!106477 = !DILocation(line: 1611, column: 21, scope: !98122)
!106478 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98130)
!106479 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98128)
!106480 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98131)
!106481 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98128)
!106482 = !DILocation(line: 1622, column: 17, scope: !94796, inlinedAt: !102092)
!106483 = !DILocation(line: 1622, column: 23, scope: !98132, inlinedAt: !102092)
!106484 = !DILocation(line: 1621, column: 16, scope: !94796, inlinedAt: !102092)
!106485 = !DILocation(line: 1624, column: 5, scope: !94796, inlinedAt: !102092)
!106486 = !DILocation(line: 2588, column: 66, scope: !94228, inlinedAt: !102090)
!106487 = !DILocation(line: 1613, column: 46, scope: !98103)
!106488 = !DILocation(line: 1613, column: 22, scope: !98103)
!106489 = !DILocation(line: 1613, column: 50, scope: !98103)
!106490 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98140)
!106491 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98138)
!106492 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98141)
!106493 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98138)
!106494 = !DILocation(line: 810, column: 1, scope: !382, inlinedAt: !98142)
!106495 = !DILocation(line: 128, column: 14, scope: !349, inlinedAt: !98147)
!106496 = !DILocation(line: 128, column: 14, scope: !349, inlinedAt: !98152)
!106497 = !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !98157)
!106498 = !DILocation(line: 444, column: 20, scope: !387, inlinedAt: !98160)
!106499 = !DILocation(line: 3956, column: 24, scope: !390, inlinedAt: !98162)
!106500 = !DILocation(line: 2814, column: 12, scope: !389, inlinedAt: !98158)
!106501 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98163)
!106502 = !DILocation(line: 2857, column: 18, scope: !389, inlinedAt: !98158)
!106503 = !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !98169)
!106504 = !DILocation(line: 444, column: 20, scope: !387, inlinedAt: !98172)
!106505 = !DILocation(line: 3956, column: 24, scope: !390, inlinedAt: !98174)
!106506 = !DILocation(line: 2814, column: 12, scope: !389, inlinedAt: !98170)
!106507 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98175)
!106508 = !DILocation(line: 2857, column: 18, scope: !389, inlinedAt: !98170)
!106509 = !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98180)
!106510 = !DILocation(line: 444, column: 20, scope: !419, inlinedAt: !98183)
!106511 = !DILocation(line: 3956, column: 24, scope: !422, inlinedAt: !98185)
!106512 = !DILocation(line: 2814, column: 12, scope: !421, inlinedAt: !98181)
!106513 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98186)
!106514 = !DILocation(line: 2857, column: 18, scope: !421, inlinedAt: !98181)
!106515 = !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98191)
!106516 = !DILocation(line: 444, column: 20, scope: !419, inlinedAt: !98194)
!106517 = !DILocation(line: 3956, column: 24, scope: !422, inlinedAt: !98196)
!106518 = !DILocation(line: 2814, column: 12, scope: !421, inlinedAt: !98192)
!106519 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98197)
!106520 = !DILocation(line: 2857, column: 18, scope: !421, inlinedAt: !98192)
!106521 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98202)
!106522 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98205)
!106523 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98207)
!106524 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98203)
!106525 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98208)
!106526 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98203)
!106527 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98213)
!106528 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98216)
!106529 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98218)
!106530 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98214)
!106531 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98219)
!106532 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98214)
!106533 = !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98220)
!106534 = !DILocation(line: 810, column: 1, scope: !751, inlinedAt: !98221)
!106535 = !DILocation(line: 810, column: 1, scope: !751, inlinedAt: !98222)
!106536 = !DILocation(line: 810, column: 1, scope: !1505, inlinedAt: !98227)
!106537 = !DILocation(line: 444, column: 20, scope: !1506, inlinedAt: !98230)
!106538 = !DILocation(line: 3956, column: 24, scope: !1509, inlinedAt: !98232)
!106539 = !DILocation(line: 2814, column: 12, scope: !1508, inlinedAt: !98228)
!106540 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98233)
!106541 = !DILocation(line: 2857, column: 18, scope: !1508, inlinedAt: !98228)
!106542 = !DILocation(line: 810, column: 1, scope: !1505, inlinedAt: !98238)
!106543 = !DILocation(line: 444, column: 20, scope: !1506, inlinedAt: !98241)
!106544 = !DILocation(line: 3956, column: 24, scope: !1509, inlinedAt: !98243)
!106545 = !DILocation(line: 2814, column: 12, scope: !1508, inlinedAt: !98239)
!106546 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98244)
!106547 = !DILocation(line: 2857, column: 18, scope: !1508, inlinedAt: !98239)
!106548 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98249)
!106549 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98252)
!106550 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98254)
!106551 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98250)
!106552 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98255)
!106553 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98250)
!106554 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98260)
!106555 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98263)
!106556 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98265)
!106557 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98261)
!106558 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98266)
!106559 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98261)
!106560 = !DILocation(line: 810, column: 1, scope: !1511, inlinedAt: !98271)
!106561 = !DILocation(line: 444, column: 20, scope: !1512, inlinedAt: !98274)
!106562 = !DILocation(line: 3956, column: 24, scope: !1515, inlinedAt: !98276)
!106563 = !DILocation(line: 2814, column: 12, scope: !1514, inlinedAt: !98272)
!106564 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98277)
!106565 = !DILocation(line: 2857, column: 18, scope: !1514, inlinedAt: !98272)
!106566 = !DILocation(line: 810, column: 1, scope: !1511, inlinedAt: !98282)
!106567 = !DILocation(line: 444, column: 20, scope: !1512, inlinedAt: !98285)
!106568 = !DILocation(line: 3956, column: 24, scope: !1515, inlinedAt: !98287)
!106569 = !DILocation(line: 2814, column: 12, scope: !1514, inlinedAt: !98283)
!106570 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98288)
!106571 = !DILocation(line: 2857, column: 18, scope: !1514, inlinedAt: !98283)
!106572 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98293)
!106573 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98296)
!106574 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98298)
!106575 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98294)
!106576 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98299)
!106577 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98294)
!106578 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98304)
!106579 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98307)
!106580 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98309)
!106581 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98305)
!106582 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98310)
!106583 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98305)
!106584 = !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98311)
!106585 = !DILocation(line: 810, column: 1, scope: !751, inlinedAt: !98312)
!106586 = !DILocation(line: 810, column: 1, scope: !751, inlinedAt: !98313)
!106587 = !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98318)
!106588 = !DILocation(line: 444, column: 20, scope: !419, inlinedAt: !98321)
!106589 = !DILocation(line: 3956, column: 24, scope: !422, inlinedAt: !98323)
!106590 = !DILocation(line: 2814, column: 12, scope: !421, inlinedAt: !98319)
!106591 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98324)
!106592 = !DILocation(line: 2857, column: 18, scope: !421, inlinedAt: !98319)
!106593 = !DILocation(line: 810, column: 1, scope: !1517, inlinedAt: !98329)
!106594 = !DILocation(line: 444, column: 20, scope: !1518, inlinedAt: !98332)
!106595 = !DILocation(line: 3956, column: 24, scope: !1521, inlinedAt: !98334)
!106596 = !DILocation(line: 2814, column: 12, scope: !1520, inlinedAt: !98330)
!106597 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98335)
!106598 = !DILocation(line: 2857, column: 18, scope: !1520, inlinedAt: !98330)
!106599 = !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98340)
!106600 = !DILocation(line: 444, column: 20, scope: !419, inlinedAt: !98343)
!106601 = !DILocation(line: 3956, column: 24, scope: !422, inlinedAt: !98345)
!106602 = !DILocation(line: 2814, column: 12, scope: !421, inlinedAt: !98341)
!106603 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98346)
!106604 = !DILocation(line: 2857, column: 18, scope: !421, inlinedAt: !98341)
!106605 = !DILocation(line: 810, column: 1, scope: !1517, inlinedAt: !98351)
!106606 = !DILocation(line: 444, column: 20, scope: !1518, inlinedAt: !98354)
!106607 = !DILocation(line: 3956, column: 24, scope: !1521, inlinedAt: !98356)
!106608 = !DILocation(line: 2814, column: 12, scope: !1520, inlinedAt: !98352)
!106609 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98357)
!106610 = !DILocation(line: 2857, column: 18, scope: !1520, inlinedAt: !98352)
!106611 = !DILocation(line: 810, column: 1, scope: !170, inlinedAt: !98362)
!106612 = !DILocation(line: 444, column: 20, scope: !650, inlinedAt: !98365)
!106613 = !DILocation(line: 3956, column: 24, scope: !167, inlinedAt: !98367)
!106614 = !DILocation(line: 2814, column: 12, scope: !169, inlinedAt: !98363)
!106615 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98368)
!106616 = !DILocation(line: 2857, column: 18, scope: !169, inlinedAt: !98363)
!106617 = !DILocation(line: 612, column: 33, scope: !261, inlinedAt: !98374)
!106618 = !DILocation(line: 779, column: 12, scope: !263, inlinedAt: !98372)
!106619 = !DILocation(line: 780, column: 13, scope: !263, inlinedAt: !98372)
!106620 = !DILocation(line: 810, column: 1, scope: !170, inlinedAt: !98387)
!106621 = !DILocation(line: 444, column: 20, scope: !650, inlinedAt: !98390)
!106622 = !DILocation(line: 3956, column: 24, scope: !167, inlinedAt: !98392)
!106623 = !DILocation(line: 2814, column: 12, scope: !169, inlinedAt: !98388)
!106624 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98393)
!106625 = !DILocation(line: 2857, column: 18, scope: !169, inlinedAt: !98388)
!106626 = !DILocation(line: 612, column: 33, scope: !261, inlinedAt: !98399)
!106627 = !DILocation(line: 779, column: 12, scope: !263, inlinedAt: !98397)
!106628 = !DILocation(line: 780, column: 13, scope: !263, inlinedAt: !98397)
!106629 = !DILocation(line: 810, column: 1, scope: !750, inlinedAt: !98408)
!106630 = !DILocation(line: 810, column: 1, scope: !751, inlinedAt: !98409)
!106631 = !DILocation(line: 810, column: 1, scope: !751, inlinedAt: !98410)
!106632 = !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !98411)
!106633 = !DILocation(line: 810, column: 1, scope: !753, inlinedAt: !98412)
!106634 = !DILocation(line: 810, column: 1, scope: !753, inlinedAt: !98413)
!106635 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98418)
!106636 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98421)
!106637 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98423)
!106638 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98419)
!106639 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98424)
!106640 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98419)
!106641 = !DILocation(line: 810, column: 1, scope: !1127, inlinedAt: !98429)
!106642 = !DILocation(line: 444, column: 20, scope: !1498, inlinedAt: !98432)
!106643 = !DILocation(line: 3956, column: 24, scope: !1124, inlinedAt: !98434)
!106644 = !DILocation(line: 2814, column: 12, scope: !1126, inlinedAt: !98430)
!106645 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98435)
!106646 = !DILocation(line: 2857, column: 18, scope: !1126, inlinedAt: !98430)
!106647 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98440)
!106648 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98443)
!106649 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98445)
!106650 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98441)
!106651 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98446)
!106652 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98441)
!106653 = !DILocation(line: 810, column: 1, scope: !1127, inlinedAt: !98451)
!106654 = !DILocation(line: 444, column: 20, scope: !1498, inlinedAt: !98454)
!106655 = !DILocation(line: 3956, column: 24, scope: !1124, inlinedAt: !98456)
!106656 = !DILocation(line: 2814, column: 12, scope: !1126, inlinedAt: !98452)
!106657 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98457)
!106658 = !DILocation(line: 2857, column: 18, scope: !1126, inlinedAt: !98452)
!106659 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98462)
!106660 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98465)
!106661 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98467)
!106662 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98463)
!106663 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98468)
!106664 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98463)
!106665 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98473)
!106666 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98476)
!106667 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98478)
!106668 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98474)
!106669 = !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !98483)
!106670 = !DILocation(line: 444, column: 20, scope: !387, inlinedAt: !98486)
!106671 = !DILocation(line: 3956, column: 24, scope: !390, inlinedAt: !98488)
!106672 = !DILocation(line: 2814, column: 12, scope: !389, inlinedAt: !98484)
!106673 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98489)
!106674 = !DILocation(line: 2857, column: 18, scope: !389, inlinedAt: !98484)
!106675 = !DILocation(line: 810, column: 1, scope: !170, inlinedAt: !98494)
!106676 = !DILocation(line: 444, column: 20, scope: !650, inlinedAt: !98497)
!106677 = !DILocation(line: 3956, column: 24, scope: !167, inlinedAt: !98499)
!106678 = !DILocation(line: 2814, column: 12, scope: !169, inlinedAt: !98495)
!106679 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98500)
!106680 = !DILocation(line: 2857, column: 18, scope: !169, inlinedAt: !98495)
!106681 = !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98505)
!106682 = !DILocation(line: 444, column: 20, scope: !419, inlinedAt: !98508)
!106683 = !DILocation(line: 3956, column: 24, scope: !422, inlinedAt: !98510)
!106684 = !DILocation(line: 2814, column: 12, scope: !421, inlinedAt: !98506)
!106685 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98511)
!106686 = !DILocation(line: 2857, column: 18, scope: !421, inlinedAt: !98506)
!106687 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98516)
!106688 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98519)
!106689 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98521)
!106690 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98517)
!106691 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98526)
!106692 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98529)
!106693 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98531)
!106694 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98527)
!106695 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98532)
!106696 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98527)
!106697 = !DILocation(line: 810, column: 1, scope: !1505, inlinedAt: !98537)
!106698 = !DILocation(line: 444, column: 20, scope: !1506, inlinedAt: !98540)
!106699 = !DILocation(line: 3956, column: 24, scope: !1509, inlinedAt: !98542)
!106700 = !DILocation(line: 2814, column: 12, scope: !1508, inlinedAt: !98538)
!106701 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98543)
!106702 = !DILocation(line: 2857, column: 18, scope: !1508, inlinedAt: !98538)
!106703 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98548)
!106704 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98551)
!106705 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98553)
!106706 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98549)
!106707 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98554)
!106708 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98549)
!106709 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98559)
!106710 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98562)
!106711 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98564)
!106712 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98560)
!106713 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98565)
!106714 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98560)
!106715 = !DILocation(line: 810, column: 1, scope: !1511, inlinedAt: !98570)
!106716 = !DILocation(line: 444, column: 20, scope: !1512, inlinedAt: !98573)
!106717 = !DILocation(line: 3956, column: 24, scope: !1515, inlinedAt: !98575)
!106718 = !DILocation(line: 2814, column: 12, scope: !1514, inlinedAt: !98571)
!106719 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98576)
!106720 = !DILocation(line: 2857, column: 18, scope: !1514, inlinedAt: !98571)
!106721 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98581)
!106722 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98584)
!106723 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98586)
!106724 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98582)
!106725 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98587)
!106726 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98582)
!106727 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98592)
!106728 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98595)
!106729 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98597)
!106730 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98593)
!106731 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98602)
!106732 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98605)
!106733 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98607)
!106734 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98603)
!106735 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98608)
!106736 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98603)
!106737 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98613)
!106738 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98616)
!106739 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98618)
!106740 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98614)
!106741 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98619)
!106742 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98614)
!106743 = !DILocation(line: 810, column: 1, scope: !418, inlinedAt: !98624)
!106744 = !DILocation(line: 444, column: 20, scope: !419, inlinedAt: !98627)
!106745 = !DILocation(line: 3956, column: 24, scope: !422, inlinedAt: !98629)
!106746 = !DILocation(line: 2814, column: 12, scope: !421, inlinedAt: !98625)
!106747 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98630)
!106748 = !DILocation(line: 2857, column: 18, scope: !421, inlinedAt: !98625)
!106749 = !DILocation(line: 810, column: 1, scope: !1517, inlinedAt: !98635)
!106750 = !DILocation(line: 444, column: 20, scope: !1518, inlinedAt: !98638)
!106751 = !DILocation(line: 3956, column: 24, scope: !1521, inlinedAt: !98640)
!106752 = !DILocation(line: 2814, column: 12, scope: !1520, inlinedAt: !98636)
!106753 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98641)
!106754 = !DILocation(line: 2857, column: 18, scope: !1520, inlinedAt: !98636)
!106755 = !DILocation(line: 810, column: 1, scope: !1540, inlinedAt: !98646)
!106756 = !DILocation(line: 444, column: 20, scope: !1541, inlinedAt: !98649)
!106757 = !DILocation(line: 3956, column: 24, scope: !1544, inlinedAt: !98651)
!106758 = !DILocation(line: 2814, column: 12, scope: !1543, inlinedAt: !98647)
!106759 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98652)
!106760 = !DILocation(line: 2857, column: 18, scope: !1543, inlinedAt: !98647)
!106761 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98657)
!106762 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98660)
!106763 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98662)
!106764 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98658)
!106765 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98663)
!106766 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98658)
!106767 = !DILocation(line: 810, column: 1, scope: !170, inlinedAt: !98668)
!106768 = !DILocation(line: 444, column: 20, scope: !650, inlinedAt: !98671)
!106769 = !DILocation(line: 3956, column: 24, scope: !167, inlinedAt: !98673)
!106770 = !DILocation(line: 2814, column: 12, scope: !169, inlinedAt: !98669)
!106771 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98674)
!106772 = !DILocation(line: 2857, column: 18, scope: !169, inlinedAt: !98669)
!106773 = !DILocation(line: 612, column: 33, scope: !261, inlinedAt: !98680)
!106774 = !DILocation(line: 779, column: 12, scope: !263, inlinedAt: !98678)
!106775 = !DILocation(line: 780, column: 13, scope: !263, inlinedAt: !98678)
!106776 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98693)
!106777 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98696)
!106778 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98698)
!106779 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98694)
!106780 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98699)
!106781 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98694)
!106782 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98704)
!106783 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98707)
!106784 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98709)
!106785 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98705)
!106786 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98710)
!106787 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98705)
!106788 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98715)
!106789 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98718)
!106790 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98720)
!106791 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98716)
!106792 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98725)
!106793 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98728)
!106794 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98730)
!106795 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98726)
!106796 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98731)
!106797 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98726)
!106798 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98736)
!106799 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98739)
!106800 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98741)
!106801 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98737)
!106802 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98742)
!106803 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98737)
!106804 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98747)
!106805 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98750)
!106806 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98752)
!106807 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98748)
!106808 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98753)
!106809 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98748)
!106810 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98758)
!106811 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98761)
!106812 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98763)
!106813 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98759)
!106814 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98764)
!106815 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98759)
!106816 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98769)
!106817 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98772)
!106818 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98774)
!106819 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98770)
!106820 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98775)
!106821 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !98770)
!106822 = !DILocation(line: 810, column: 1, scope: !1127, inlinedAt: !98780)
!106823 = !DILocation(line: 444, column: 20, scope: !1498, inlinedAt: !98783)
!106824 = !DILocation(line: 3956, column: 24, scope: !1124, inlinedAt: !98785)
!106825 = !DILocation(line: 2814, column: 12, scope: !1126, inlinedAt: !98781)
!106826 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !98786)
!106827 = !DILocation(line: 2857, column: 18, scope: !1126, inlinedAt: !98781)
!106828 = !DILocation(line: 810, column: 1, scope: !1526, inlinedAt: !98791)
!106829 = !DILocation(line: 444, column: 20, scope: !1527, inlinedAt: !98794)
!106830 = !DILocation(line: 3956, column: 24, scope: !1530, inlinedAt: !98796)
!106831 = !DILocation(line: 2814, column: 12, scope: !1529, inlinedAt: !98792)
!106832 = !DILocation(line: 4387, column: 24, scope: !65, inlinedAt: !102276)
!106833 = !DILocation(line: 2857, column: 18, scope: !1529, inlinedAt: !102275)
!106834 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown5utils20pushdown_eligibility0Bb_", scope: !4102, file: !3694, line: 184, type: !3041, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3011)
!106835 = distinct !DILexicalBlock(scope: !106834, file: !3694, line: 190, column: 9)
!106836 = distinct !DISubprogram(name: "pop<polars_utils::arena::Node>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeE3popCsfcROwRM8ZtH_11polars_plan", scope: !3897, file: !3895, line: 109, type: !3012, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3011)
!106837 = distinct !DILexicalBlock(scope: !106835, file: !3694, line: 191, column: 9)
!106838 = distinct !DILexicalBlock(scope: !106837, file: !3694, line: 193, column: 53)
!106839 = distinct !DILocation(line: 252, column: 5, scope: !106834)
!106840 = distinct !DILocation(line: 810, column: 1, scope: !684, inlinedAt: !106839)
!106841 = distinct !DILocation(line: 810, column: 1, scope: !686, inlinedAt: !106840)
!106842 = distinct !DILocation(line: 810, column: 1, scope: !685, inlinedAt: !106841)
!106843 = distinct !DILocation(line: 810, column: 1, scope: !476, inlinedAt: !106842)
!106844 = distinct !DILocation(line: 810, column: 1, scope: !475, inlinedAt: !106843)
!106845 = distinct !DILocation(line: 810, column: 1, scope: !685, inlinedAt: !106841)
!106846 = distinct !DILocation(line: 810, column: 1, scope: !687, inlinedAt: !106845)
!106847 = distinct !DISubprogram(name: "is_inline<polars_utils::arena::Node>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeE9is_inlineCsfcROwRM8ZtH_11polars_plan", scope: !3897, file: !3895, line: 59, type: !3012, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3011)
!106848 = distinct !DISubprogram(name: "data_ptr<polars_utils::arena::Node>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeE8data_ptrCsfcROwRM8ZtH_11polars_plan", scope: !3897, file: !3895, line: 40, type: !3012, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3011)
!106849 = distinct !DISubprogram(name: "add<polars_utils::arena::Node>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtCs2mZqlW55729_12polars_utils5arena4Node3addCsfcROwRM8ZtH_11polars_plan", scope: !3070, file: !3068, line: 829, type: !3012, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3011)
!106850 = distinct !DISubprogram(name: "read<polars_utils::arena::Node>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readNtNtCs2mZqlW55729_12polars_utils5arena4NodeECsfcROwRM8ZtH_11polars_plan", scope: !3031, file: !3030, line: 1682, type: !3012, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3011)
!106851 = distinct !DISubprogram(name: "read<polars_utils::arena::Node>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtCs2mZqlW55729_12polars_utils5arena4Node4readCsfcROwRM8ZtH_11polars_plan", scope: !3070, file: !3068, line: 1166, type: !3012, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3011)
!106852 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, polars_plan::plans::aexpr::AExpr>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEB17_", scope: !3049, file: !3046, line: 613, type: !3012, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3011)
end_hunk_8
