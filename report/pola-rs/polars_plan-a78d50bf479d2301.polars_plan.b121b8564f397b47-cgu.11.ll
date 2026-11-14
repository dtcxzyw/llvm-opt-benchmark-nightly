Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.11?download=true
inline.NumInlined: 6320
inline.NumDeleted: 2547
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
  %i.nd = alloca [16 x i8], align 8               ; 5 uses
  %i.ne = alloca [24 x i8], align 8               ; 11 uses
  %i.nf = alloca [8 x i8], align 8                ; 4 uses
  %i.ng = alloca [48 x i8], align 16              ; 4 uses
  %i.nh = alloca [144 x i8], align 16             ; 5 uses
  %i.ni = alloca [144 x i8], align 16             ; 5 uses
  %i.nj = alloca [72 x i8], align 8               ; 7 uses
  %i.nk = alloca [13 x i8], align 1               ; 12 uses
  %i.nl = alloca [144 x i8], align 16             ; 5 uses
  %i.nm = alloca [144 x i8], align 16             ; 4 uses
  %i.nn = alloca [8 x i8], align 8                ; 6 uses
  %i.no = alloca [144 x i8], align 16             ; 6 uses
  %i.np = alloca [48 x i8], align 16              ; 4 uses
  %i.nq = alloca [8 x i8], align 8                ; 6 uses
  %i.nr = alloca [144 x i8], align 16             ; 6 uses
  %i.ns = alloca [24 x i8], align 8               ; 11 uses
  %i.nt = alloca [24 x i8], align 8               ; 12 uses
  %i.nu = alloca [8 x i8], align 8                ; 2 uses
  %i.nv = alloca [8 x i8], align 8                ; 2 uses
  %i.nw = alloca [16 x i8], align 8               ; 8 uses
  %i.nx = alloca [368 x i8], align 16             ; 7 uses
  %i.ny = alloca [16 x i8], align 8               ; 9 uses
  %i.nz = alloca [8 x i8], align 8                ; 13 uses
  %i.oa = alloca [368 x i8], align 16             ; 6 uses
  %i.ob = alloca [24 x i8], align 8               ; 2 uses
  %i.oc = alloca [24 x i8], align 8               ; 4 uses
  %i.od = alloca [72 x i8], align 8               ; 6 uses
  %i.oe = alloca [72 x i8], align 8               ; 4 uses
  %i.of = alloca [16 x i8], align 8               ; 5 uses
  %i.og = alloca [144 x i8], align 16             ; 6 uses
  %i.oh = alloca [24 x i8], align 8               ; 2 uses
  %i.oi = alloca [24 x i8], align 8               ; 4 uses
  %i.oj = alloca [32 x i8], align 8               ; 9 uses
  %i.ok = alloca [24 x i8], align 8               ; 4 uses
  %i.ol = alloca [8 x i8], align 8                ; 9 uses
  %i.om = alloca [24 x i8], align 8               ; 9 uses
  %i.on = alloca [368 x i8], align 16             ; 7 uses
  %i.oo = alloca [368 x i8], align 16             ; 7 uses
  %i.op = alloca [3 x i8], align 1                ; 2 uses
  %i.oq = alloca [24 x i8], align 8               ; 6 uses
  %i.or = alloca [16 x i8], align 8               ; 6 uses
  %i.os = alloca [368 x i8], align 16             ; 7 uses
  %i.ot = alloca [368 x i8], align 16             ; 7 uses
  %i.ou = alloca [8 x i8], align 8                ; 9 uses
  %i.ov = alloca [80 x i8], align 8               ; 9 uses
  %i.ow = alloca [192 x i8], align 16             ; 7 uses
  %i.ox = alloca [24 x i8], align 8               ; 5 uses
  %i.oy = alloca [24 x i8], align 8               ; 5 uses
  %i.oz = alloca [24 x i8], align 8               ; 5 uses
  %i.pa = alloca [16 x i8], align 8               ; 6 uses
  %i.pb = alloca [16 x i8], align 8               ; 6 uses
  %i.pc = alloca [24 x i8], align 8               ; 6 uses
  %i.pd = alloca [368 x i8], align 16             ; 14 uses
  %.sroa.3285 = alloca [16 x i8], align 8         ; 2 uses
  %i.pe = alloca [8 x i8], align 8                ; 10 uses
  %i.pf = alloca [24 x i8], align 8               ; 8 uses
  %i.pg = alloca [24 x i8], align 8               ; 4 uses
  %i.ph = alloca [24 x i8], align 8               ; 4 uses
  %i.pi = alloca [8 x i8], align 8                ; 7 uses
  %i.pj = alloca [24 x i8], align 8               ; 11 uses
  %i.pk = alloca [24 x i8], align 8               ; 10 uses
  %i.pl = alloca [368 x i8], align 16             ; 7 uses
  %i.pm = alloca [32 x i8], align 8               ; 7 uses
  %i.pn = alloca [24 x i8], align 8               ; 4 uses
  %i.po = alloca [144 x i8], align 16             ; 6 uses
  %i.pp = alloca [144 x i8], align 16             ; 4 uses
  %i.pq = alloca [368 x i8], align 16             ; 14 uses
  %i.pr = alloca [368 x i8], align 16             ; 4 uses
  %i.ps = alloca [368 x i8], align 16             ; 4 uses
  %i.pt = alloca [368 x i8], align 16             ; 2 uses
  %i.pu = alloca [64 x i8], align 8               ; 8 uses
  %i.pv = alloca [24 x i8], align 8               ; 6 uses
  %i.pw = alloca [16 x i8], align 8               ; 8 uses
  %i.px = alloca [8 x i8], align 8                ; 13 uses
  %i.py = alloca [24 x i8], align 8               ; 11 uses
  %i.pz = alloca [24 x i8], align 8               ; 9 uses
  %i.qa = alloca [24 x i8], align 8               ; 9 uses
  %i.qb = alloca [24 x i8], align 8               ; 8 uses
  %i.qc = alloca [8 x i8], align 8                ; 6 uses
  %i.qd = alloca [368 x i8], align 16             ; 7 uses
  %i.qe = alloca [16 x i8], align 1               ; 5 uses
  %i.qf = alloca [8 x i8], align 8                ; 9 uses
  %i.qg = alloca [368 x i8], align 16             ; 9 uses
  %i.qh = alloca [112 x i8], align 16             ; 4 uses
  %i.qi = alloca [32 x i8], align 8               ; 8 uses
  %i.qj = alloca [72 x i8], align 8               ; 7 uses
  %i.qk = alloca [24 x i8], align 8               ; 12 uses
  %i.ql = alloca [16 x i8], align 8               ; 9 uses
  %i.qm = alloca [24 x i8], align 8               ; 9 uses
  %i.qn = alloca [24 x i8], align 8               ; 5 uses
  %i.qo = alloca [24 x i8], align 8               ; 5 uses
  %i.qp = alloca [24 x i8], align 8               ; 6 uses
  %i.qq = alloca [24 x i8], align 8               ; 8 uses
  %i.qr = alloca [144 x i8], align 16             ; 6 uses
  %i.qs = alloca [160 x i8], align 16             ; 9 uses
  %i.qt = alloca [128 x i8], align 8              ; 8 uses
  %i.qu = alloca [32 x i8], align 8               ; 4 uses
  %i.qv = alloca [32 x i8], align 8               ; 4 uses
  %i.qw = alloca [80 x i8], align 8               ; 6 uses
  %i.qx = alloca [32 x i8], align 8               ; 8 uses
  %i.qy = alloca [128 x i8], align 8              ; 4 uses
  %i.qz = alloca [24 x i8], align 8               ; 10 uses
  %i.ra = alloca [24 x i8], align 8               ; 10 uses
  %i.rb = alloca [24 x i8], align 8               ; 10 uses
  %i.rc = alloca [32 x i8], align 8               ; 7 uses
  %i.rd = alloca [8 x i8], align 8                ; 4 uses
  %i.re = alloca [24 x i8], align 8               ; 2 uses
  %i.rf = alloca [24 x i8], align 8               ; 4 uses
  %i.rg = alloca [8 x i8], align 8                ; 2 uses
  %i.rh = alloca [32 x i8], align 8               ; 7 uses
  %i.ri = alloca [8 x i8], align 8                ; 4 uses
  %i.rj = alloca [24 x i8], align 8               ; 2 uses
  %i.rk = alloca [24 x i8], align 8               ; 4 uses
  %i.rl = alloca [8 x i8], align 8                ; 2 uses
  %i.rm = alloca [64 x i8], align 8               ; 12 uses
  %i.rn = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.6197 = alloca [64 x i8], align 8         ; 6 uses
  %i.ro = alloca [64 x i8], align 8               ; 6 uses
  %i.rp = alloca [16 x i8], align 8               ; 8 uses
  %i.rq = alloca [368 x i8], align 16             ; 7 uses
  %i.rr = alloca [64 x i8], align 8               ; 20 uses
  %i.rs = alloca [24 x i8], align 8               ; 9 uses
  %i.rt = alloca [368 x i8], align 16             ; 6 uses
  %i.ru = alloca [88 x i8], align 8               ; 12 uses
  %i.rv = alloca [24 x i8], align 8               ; 4 uses
  %i.rw = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6172 = alloca [24 x i8], align 8         ; 6 uses
  %i.rx = alloca [24 x i8], align 8               ; 7 uses
  %i.ry = alloca [368 x i8], align 16             ; 4 uses
  %i.rz = alloca [368 x i8], align 16             ; 4 uses
  %i.sa = alloca [24 x i8], align 8               ; 4 uses
  %i.sb = alloca [64 x i8], align 8               ; 8 uses
  %i.sc = alloca [24 x i8], align 8               ; 8 uses
  %i.sd = alloca [16 x i8], align 8               ; 7 uses
  %i.se = alloca [368 x i8], align 16             ; 7 uses
  %i.sf = alloca [3 x i8], align 1                ; 2 uses
  %i.sg = alloca [24 x i8], align 8               ; 6 uses
  %i.sh = alloca [48 x i8], align 8               ; 4 uses
  %i.si = alloca [16 x i8], align 8               ; 5 uses
  %i.sj = alloca [8 x i8], align 8                ; 9 uses
  %i.sk = alloca [368 x i8], align 16             ; 7 uses
  %i.sl = alloca [368 x i8], align 16             ; 4 uses
  %i.sm = alloca [72 x i8], align 8               ; 6 uses
  %i.sn = alloca [72 x i8], align 8               ; 6 uses
  %i.so = alloca [32 x i8], align 8               ; 10 uses
  %i.sp = alloca [40 x i8], align 8               ; 9 uses
  %i.sq = alloca [88 x i8], align 8               ; 12 uses
  %i.sr = alloca [144 x i8], align 16             ; 4 uses
  %i.ss = alloca [112 x i8], align 16             ; 7 uses
  %.sroa.6129 = alloca [72 x i8], align 8         ; 6 uses
  %i.st = alloca [112 x i8], align 16             ; 11 uses
  %i.su = alloca [16 x i8], align 8               ; 5 uses
  %i.sv = alloca [24 x i8], align 8               ; 2 uses
  %i.sw = alloca [24 x i8], align 8               ; 4 uses
  %i.sx = alloca [16 x i8], align 8               ; 21 uses
  %i.sy = alloca [24 x i8], align 8               ; 20 uses
  %i.sz = alloca [24 x i8], align 8               ; 23 uses
  %i.ta = alloca [8 x i8], align 8                ; 20 uses
  %i.tb = alloca [24 x i8], align 8               ; 15 uses
  %i.tc = alloca [64 x i8], align 8               ; 12 uses
  %i.td = alloca [72 x i8], align 8               ; 6 uses
  %i.te = alloca [24 x i8], align 8               ; 8 uses
  %i.tf = alloca [16 x i8], align 8               ; 8 uses
  %i.tg = alloca [368 x i8], align 16             ; 7 uses
  %i.th = alloca [8 x i8], align 8                ; 7 uses
  %i.ti = alloca [144 x i8], align 16             ; 6 uses
  %i.tj = alloca [72 x i8], align 8               ; 7 uses
  %i.tk = alloca [40 x i8], align 8               ; 6 uses
  %i.tl = alloca [24 x i8], align 8               ; 9 uses
  %i.tm = alloca [3 x i8], align 1                ; 2 uses
  %i.tn = alloca [72 x i8], align 8               ; 7 uses
  %i.to = alloca [16 x i8], align 8               ; 9 uses
  %i.tp = alloca [16 x i8], align 8               ; 10 uses
  %i.tq = alloca [24 x i8], align 8               ; 4 uses
  %i.tr = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.651 = alloca [24 x i8], align 8          ; 6 uses
  %i.ts = alloca [40 x i8], align 8               ; 6 uses
  %i.tt = alloca [24 x i8], align 8               ; 13 uses
  %i.tu = alloca [72 x i8], align 8               ; 7 uses
  %i.tv = alloca [24 x i8], align 8               ; 13 uses
  %i.tw = alloca [24 x i8], align 8               ; 8 uses
  %i.tx = alloca [8 x i8], align 8                ; 7 uses
  %i.ty = alloca [368 x i8], align 16             ; 72 uses
  %i.tz = alloca [72 x i8], align 8               ; 4 uses
  %i.ua = alloca [72 x i8], align 8               ; 6 uses
  %i.ub = alloca [72 x i8], align 8               ; 9 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 368, !dbg !94136 ; 104 uses
  %i.ud = load ptr, ptr %i.uc, align 16, !dbg !94136, !nonnull !2293, !align !2349, !noundef !2293 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 225, !dbg !94136
  %i.uf = load i8, ptr %i.ue, align 1, !dbg !94136, !range !2317, !noundef !2293
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 216, !dbg !94137
  %.val2626 = load ptr, ptr %i.ug, align 8, !dbg !94138, !nonnull !2293, !noundef !2293 ; 2 uses
  %i.uh = atomicrmw add ptr %.val2626, i64 1 monotonic, align 8, !dbg !94139
  %i.ui = icmp slt i64 %i.uh, 0, !dbg !94140
  br i1 %i.ui, label %bb.b, label %bb.d, !dbg !94140

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !94141
  unreachable, !dbg !94141

.critedge2460:                                    ; preds = %.invoke5114.a, %.thread4518, %bb.bjt, %bb.bju, %.thread4476, %bb.bjh, %bb.bji, %.split4446.thread, %.thread4441, %bb.bgo, %bb.bgp, %bb.axj, %.thread4325, %bb.avo, %bb.avh, %.noexc3093, %bb.avg, %.thread4306, %bb.auu, %.split4220, %.body2592, %bb.aoo, %bb.agc, %bb.agd, %bb.xg, %bb.xh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit, %bb.vi, %bb.ot, %bb.ou, %.thread3896, %.thread3887, %bb.nm, %.critedge2459, %bb.nn, %bb.na, %bb.my, %bb.mz, %.thread3866, %bb.hp, %.thread3721, %.body2567, %bb.gy, %bb.gw, %bb.gx, %.thread3715, %bb.cv, %bb.cu, %bb.cw, %bb.f, %bb.ava, %.thread3908, %bb.bns, %.noexc3226, %bb.bfl, %bb.azj, %bb.axe, %.thread4308, %bb.avd, %bb.avc, %bb.avb, %bb.auz, %bb.auy, %.noexc3048, %bb.anx, %bb.anr, %bb.aji, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993, %bb.afx, %bb.mn, %bb.jj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, %.body2720
  %.sroa.01155.0 = phi i1 [ %.sroa.01155.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ false, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ false, %bb.bju ], [ false, %bb.bjt ], !dbg !94142
  %.sroa.01147.0 = phi i1 [ %.sroa.01147.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ false, %.split4446.thread ], [ false, %.noexc3226 ], [ false, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ false, %.thread4441 ], [ false, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01145.0 = phi i1 [ %.sroa.01145.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94143
  %.sroa.01140.0 = phi i1 [ %.sroa.01140.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ false, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ false, %bb.bgp ], [ false, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01135.0 = phi i1 [ %.sroa.01135.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ false, %bb.azj ], [ false, %bb.axj ], [ false, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01130.0 = phi i1 [ %.sroa.01130.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ false, %.split4220 ], [ true, %bb.bns ], [ false, %bb.auy ], [ false, %bb.avd ], [ false, %bb.auz ], [ false, %bb.auu ], [ false, %.thread4306 ], [ false, %.noexc3093 ], [ false, %bb.avb ], [ true, %.thread4518 ], [ false, %bb.avc ], [ false, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ false, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ false, %bb.avg ], [ false, %.invoke5114.a ], [ false, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01125.0 = phi i1 [ %.sroa.01125.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ false, %bb.aji ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01105.0 = phi i1 [ %.sroa.01105.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ false, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ false, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ false, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01100.0 = phi i1 [ %.sroa.01100.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ false, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ false, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01092.0 = phi i1 [ %.sroa.01092.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ false, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01087.0 = phi i1 [ true, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ false, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01082.0 = phi i1 [ %.sroa.01082.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ false, %.thread3887 ], [ false, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ false, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ false, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01065.0 = phi i1 [ %.sroa.01065.1.lpad-body, %.body2720 ], [ false, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ false, %bb.nn ], [ false, %.critedge2459 ], [ false, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01048.0 = phi i1 [ true, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ false, %.thread3866 ], [ false, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ false, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ false, %bb.mz ], [ false, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01046.0 = phi i1 [ %.sroa.01046.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ false, %.thread3715 ], [ false, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ false, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01038.0 = phi i1 [ %.sroa.01038.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ false, %bb.anx ], [ false, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01033.0 = phi i1 [ %.sroa.01033.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ false, %bb.jj ], [ false, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ false, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01028.0 = phi i1 [ %.sroa.01028.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94143
  %.sroa.01026.0 = phi i1 [ %.sroa.01026.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ false, %bb.aoo ], [ false, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01021.0 = phi i1 [ %.sroa.01021.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01019.0 = phi i1 [ %.sroa.01019.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ false, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01017.0 = phi i1 [ %.sroa.01017.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ false, %.thread4308 ], [ false, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01015.0 = phi i1 [ %.sroa.01015.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ false, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ true, %bb.gy ], [ true, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ false, %bb.cw ], [ false, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.01012.0 = phi i1 [ %.sroa.01012.1.lpad-body, %.body2720 ], [ true, %bb.na ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.cv ], [ true, %.thread3715 ], [ true, %bb.gw ], [ true, %bb.jj ], [ true, %bb.hp ], [ true, %.thread3866 ], [ true, %bb.mn ], [ false, %bb.gy ], [ false, %.body2567 ], [ true, %.thread3887 ], [ true, %.thread3896 ], [ true, %bb.f ], [ true, %.thread3908 ], [ true, %bb.ot ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ true, %bb.xg ], [ true, %bb.afx ], [ true, %bb.aji ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ true, %bb.anx ], [ true, %bb.anr ], [ true, %bb.agc ], [ true, %.split4220 ], [ true, %bb.bns ], [ true, %bb.auy ], [ true, %bb.avd ], [ true, %bb.auz ], [ true, %bb.auu ], [ true, %.thread4306 ], [ true, %.noexc3093 ], [ true, %bb.avb ], [ true, %.thread4518 ], [ true, %bb.avc ], [ true, %.noexc3048 ], [ true, %.thread4308 ], [ true, %bb.avo ], [ true, %bb.axe ], [ true, %bb.azj ], [ true, %bb.axj ], [ true, %.thread4325 ], [ true, %bb.bfl ], [ true, %.split4446.thread ], [ true, %.noexc3226 ], [ true, %bb.bjh ], [ true, %.thread4476 ], [ true, %bb.ava ], [ true, %.thread3721 ], [ true, %bb.mz ], [ true, %bb.my ], [ true, %bb.cw ], [ true, %bb.cu ], [ true, %bb.gx ], [ true, %bb.nn ], [ true, %.critedge2459 ], [ true, %bb.nm ], [ true, %bb.ou ], [ true, %bb.vi ], [ true, %bb.xh ], [ true, %bb.agd ], [ true, %bb.aoo ], [ true, %.body2592 ], [ true, %bb.avg ], [ true, %.invoke5114.a ], [ true, %bb.avh ], [ true, %bb.bgp ], [ true, %bb.bgo ], [ true, %.thread4441 ], [ true, %bb.bji ], [ true, %bb.bju ], [ true, %bb.bjt ], !dbg !94142
  %.sroa.02013.0 = phi ptr [ %i.up, %.body2720 ], [ %i.bcp, %bb.na ], [ %.sroa.02013.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.02013.13692, %bb.cv ], [ %i.apg, %.thread3715 ], [ %i.aqj, %bb.gw ], [ %.sroa.02013.83734, %bb.jj ], [ %.sroa.02013.8, %bb.hp ], [ %i.bbz, %.thread3866 ], [ %.sroa.02013.23, %bb.mn ], [ %.sroa.02013.7, %bb.gy ], [ %.sroa.02013.7, %.body2567 ], [ %.sroa.02013.253891, %.thread3887 ], [ %.sroa.02013.253900, %.thread3896 ], [ %i.uy, %bb.f ], [ %.sroa.02013.29, %.thread3908 ], [ %.sroa.02013.25, %bb.ot ], [ %.sroa.02013.35, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ %.sroa.02013.39, %bb.xg ], [ %.sroa.02013.59, %bb.afx ], [ %.sroa.02013.60, %bb.aji ], [ %.sroa.02013.60, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ %.sroa.02013.77, %bb.anx ], [ %.sroa.02013.77, %bb.anr ], [ %.sroa.02013.59, %bb.agc ], [ %.sroa.02013.784222, %.split4220 ], [ %i.fdp, %bb.bns ], [ %.sroa.02013.784228, %bb.auy ], [ %.sroa.02013.784228, %bb.avd ], [ %.sroa.02013.784228, %bb.auz ], [ %7, %bb.auu ], [ %7, %.thread4306 ], [ %.sroa.02013.784228, %.noexc3093 ], [ %.sroa.02013.784228, %bb.avb ], [ %.sroa.02013.194501, %.thread4518 ], [ %.sroa.02013.784228, %bb.avc ], [ %.sroa.02013.78, %.noexc3048 ], [ %.sroa.02013.934314, %.thread4308 ], [ %.sroa.02013.93, %bb.avo ], [ %i.dwp, %bb.axe ], [ %.sroa.02013.954338, %bb.azj ], [ %.sroa.02013.95, %bb.axj ], [ %.sroa.02013.954329, %.thread4325 ], [ %.sroa.02013.117, %bb.bfl ], [ %.sroa.02013.12544484456, %.split4446.thread ], [ %.sroa.02013.125, %.noexc3226 ], [ %.sroa.02013.1254450, %bb.bjh ], [ %i.euu, %.thread4476 ], [ %.sroa.02013.784228, %bb.ava ], [ %.sroa.02013.83725, %.thread3721 ], [ %.sroa.02013.23, %bb.mz ], [ %.sroa.02013.23, %bb.my ], [ %.sroa.02013.13692, %bb.cw ], [ %.sroa.02013.13692, %bb.cu ], [ %i.aqj, %bb.gx ], [ %i.bdn, %bb.nn ], [ %i.bdn, %.critedge2459 ], [ %i.bdn, %bb.nm ], [ %.sroa.02013.25, %bb.ou ], [ %.sroa.02013.35, %bb.vi ], [ %.sroa.02013.39, %bb.xh ], [ %.sroa.02013.59, %bb.agd ], [ %i.dda, %bb.aoo ], [ %i.dda, %.body2592 ], [ %.sroa.02013.784228, %bb.avg ], [ %.sroa.02013.784228, %.invoke5114.a ], [ %.sroa.02013.784228, %bb.avh ], [ %.sroa.02013.117, %bb.bgp ], [ %.sroa.02013.117, %bb.bgo ], [ %.sroa.02013.1254445, %.thread4441 ], [ %.sroa.02013.1254450, %bb.bji ], [ %i.evx, %bb.bju ], [ %i.evx, %bb.bjt ] ; 52 uses
  %.sroa.478.0 = phi i32 [ %i.uq, %.body2720 ], [ %i.bcq, %bb.na ], [ %.sroa.478.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.478.13691, %bb.cv ], [ %i.aph, %.thread3715 ], [ %i.aqk, %bb.gw ], [ %.sroa.478.83733, %bb.jj ], [ %.sroa.478.8, %bb.hp ], [ %i.bca, %.thread3866 ], [ %.sroa.478.23, %bb.mn ], [ %.sroa.478.7, %bb.gy ], [ %.sroa.478.7, %.body2567 ], [ %.sroa.478.253890, %.thread3887 ], [ %.sroa.478.253899, %.thread3896 ], [ %i.uz, %bb.f ], [ %.sroa.478.29, %.thread3908 ], [ %.sroa.478.25, %bb.ot ], [ %.sroa.478.35, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_.exit ], [ %.sroa.478.39, %bb.xg ], [ %.sroa.478.59, %bb.afx ], [ %.sroa.478.60, %bb.aji ], [ %.sroa.478.60, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 ], [ %.sroa.478.77, %bb.anx ], [ %.sroa.478.77, %bb.anr ], [ %.sroa.478.59, %bb.agc ], [ %.sroa.478.784221, %.split4220 ], [ %i.fdq, %bb.bns ], [ %.sroa.478.784227, %bb.auy ], [ %.sroa.478.784227, %bb.avd ], [ %.sroa.478.784227, %bb.auz ], [ %6, %bb.auu ], [ %6, %.thread4306 ], [ %.sroa.478.784227, %.noexc3093 ], [ %.sroa.478.784227, %bb.avb ], [ %.sroa.478.194500, %.thread4518 ], [ %.sroa.478.784227, %bb.avc ], [ %.sroa.478.78, %.noexc3048 ], [ %.sroa.478.934313, %.thread4308 ], [ %.sroa.478.93, %bb.avo ], [ %i.dwq, %bb.axe ], [ %.sroa.478.954337, %bb.azj ], [ %.sroa.478.95, %bb.axj ], [ %.sroa.478.954328, %.thread4325 ], [ %.sroa.478.117, %bb.bfl ], [ %.sroa.478.12544474455, %.split4446.thread ], [ %.sroa.478.125, %.noexc3226 ], [ %.sroa.478.1254449, %bb.bjh ], [ %i.euv, %.thread4476 ], [ %.sroa.478.784227, %bb.ava ], [ %.sroa.478.83724, %.thread3721 ], [ %.sroa.478.23, %bb.mz ], [ %.sroa.478.23, %bb.my ], [ %.sroa.478.13691, %bb.cw ], [ %.sroa.478.13691, %bb.cu ], [ %i.aqk, %bb.gx ], [ %i.bdo, %bb.nn ], [ %i.bdo, %.critedge2459 ], [ %i.bdo, %bb.nm ], [ %.sroa.478.25, %bb.ou ], [ %.sroa.478.35, %bb.vi ], [ %.sroa.478.39, %bb.xh ], [ %.sroa.478.59, %bb.agd ], [ %i.ddb, %bb.aoo ], [ %i.ddb, %.body2592 ], [ %.sroa.478.784227, %bb.avg ], [ %.sroa.478.784227, %.invoke5114.a ], [ %.sroa.478.784227, %bb.avh ], [ %.sroa.478.117, %bb.bgp ], [ %.sroa.478.117, %bb.bgo ], [ %.sroa.478.1254444, %.thread4441 ], [ %.sroa.478.1254449, %bb.bji ], [ %i.evy, %bb.bju ], [ %i.evy, %bb.bjt ] ; 52 uses
  %i.uj = load i64, ptr %1, align 16, !dbg !94133, !range !2692, !noundef !2293 ; 3 uses
  %i.uk = icmp ne i64 %i.uj, -9223372036854775782, !dbg !94133
  call void @llvm.assume(i1 %i.uk), !dbg !94133
  %i.ul = add nsw i64 %i.uj, 9223372036854775802, !dbg !94133
  %i.um = icmp ugt i64 %i.uj, -9223372036854775803, !dbg !94133
  %i.un = select i1 %i.um, i64 %i.ul, i64 20, !dbg !94133
  switch i64 %i.un, label %bb.bnt [
    i64 0, label %bb.bnu
    i64 1, label %bb.bnv
    i64 2, label %bb.bnw
    i64 3, label %bb.bnx
    i64 4, label %bb.bny
    i64 5, label %bb.bnz
    i64 6, label %bb.boa
    i64 7, label %bb.bob
    i64 8, label %bb.boc
    i64 9, label %bb.bod
    i64 10, label %bb.boe
    i64 11, label %bb.bof
    i64 12, label %bb.bog
    i64 13, label %bb.boh
    i64 14, label %bb.boi
    i64 15, label %bb.boj
    i64 16, label %bb.bok
    i64 17, label %bb.bol
    i64 18, label %bb.bom
    i64 19, label %bb.bon
    i64 20, label %bb.boo
    i64 21, label %bb.bop
    i64 22, label %bb.boq
  ], !dbg !94133

bb.c:                                             ; preds = %.invoke, %bb.bjp, %bb.biw, %bb.bgb, %bb.auw, %bb.aou, %bb.agb, %bb.xj, %bb.vk, %bb.nt, %bb.ho, %bb.gk, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703, %bb.bgr, %bb.axo, %bb.axg, %bb.axb, %bb.avy, %bb.avj, %bb.auj, %bb.aue, %bb.arv, %bb.aoh, %bb.aog, %bb.aob, %bb.anz, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread, %bb.anu, %bb.ajg, %bb.ne, %bb.hu, %bb.gf, %bb.ah, %bb.ad, %bb.ab, %bb.aa
  %.sroa.01155.1 = phi i1 [ true, %bb.ah ], [ false, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01147.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ false, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01145.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ false, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ false, %bb.bgr ], !dbg !94142
  %.sroa.01140.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ false, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01135.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ false, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01130.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ false, %bb.aue ], [ false, %bb.auj ], [ false, %bb.auw ], [ false, %.invoke ], [ true, %bb.ad ], [ false, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01125.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ false, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01105.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ false, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01100.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ false, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01092.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ false, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01082.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ false, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01065.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ false, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01046.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ false, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01038.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ false, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01033.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ false, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01026.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ false, %bb.aob ], [ false, %bb.aou ], [ false, %bb.aoh ], [ false, %bb.aog ], [ false, %bb.anz ], [ false, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01021.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ false, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01019.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ false, %bb.axb ], [ false, %bb.axg ], [ false, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01017.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ false, %bb.avj ], [ false, %bb.avy ], [ false, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01015.1 = phi i1 [ false, %bb.ah ], [ true, %bb.bjp ], [ false, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ true, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %.sroa.01012.1 = phi i1 [ true, %bb.ah ], [ true, %bb.bjp ], [ true, %bb.ak ], [ true, %bb.gf ], [ true, %bb.gk ], [ false, %bb.ho ], [ true, %bb.hu ], [ true, %bb.ne ], [ true, %bb.biw ], [ true, %bb.nt ], [ true, %bb.vk ], [ true, %bb.xj ], [ true, %bb.agb ], [ true, %bb.ajg ], [ true, %bb.anu ], [ true, %bb.aob ], [ true, %bb.aou ], [ true, %bb.aoh ], [ true, %bb.aog ], [ true, %bb.anz ], [ true, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703 ], [ true, %bb.aue ], [ true, %bb.auj ], [ true, %bb.auw ], [ true, %.invoke ], [ true, %bb.ad ], [ true, %bb.arv ], [ true, %bb.avj ], [ true, %bb.avy ], [ true, %bb.aa ], [ true, %bb.axb ], [ true, %bb.axg ], [ true, %bb.ab ], [ true, %bb.axo ], [ true, %bb.bgb ], [ true, %bb.bgr ], !dbg !94142
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %.body2720

.body2720:                                        ; preds = %bb.an, %bb.c
  %.sroa.01155.1.lpad-body = phi i1 [ %.sroa.01155.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01147.1.lpad-body = phi i1 [ %.sroa.01147.1, %bb.c ], [ %.sroa.01147.2, %bb.an ]
  %.sroa.01145.1.lpad-body = phi i1 [ %.sroa.01145.1, %bb.c ], [ %.sroa.01145.2, %bb.an ]
  %.sroa.01140.1.lpad-body = phi i1 [ %.sroa.01140.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01135.1.lpad-body = phi i1 [ %.sroa.01135.1, %bb.c ], [ %.sroa.01135.2, %bb.an ]
  %.sroa.01130.1.lpad-body = phi i1 [ %.sroa.01130.1, %bb.c ], [ %.sroa.01130.2, %bb.an ]
  %.sroa.01125.1.lpad-body = phi i1 [ %.sroa.01125.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01105.1.lpad-body = phi i1 [ %.sroa.01105.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01100.1.lpad-body = phi i1 [ %.sroa.01100.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01092.1.lpad-body = phi i1 [ %.sroa.01092.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01082.1.lpad-body = phi i1 [ %.sroa.01082.1, %bb.c ], [ %.sroa.01082.2, %bb.an ]
  %.sroa.01065.1.lpad-body = phi i1 [ %.sroa.01065.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01046.1.lpad-body = phi i1 [ %.sroa.01046.1, %bb.c ], [ %.sroa.01046.2, %bb.an ]
  %.sroa.01038.1.lpad-body = phi i1 [ %.sroa.01038.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01033.1.lpad-body = phi i1 [ %.sroa.01033.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01028.1.lpad-body = phi i1 [ true, %bb.c ], [ %.sroa.01028.2, %bb.an ]
  %.sroa.01026.1.lpad-body = phi i1 [ %.sroa.01026.1, %bb.c ], [ %.sroa.01026.2, %bb.an ]
  %.sroa.01021.1.lpad-body = phi i1 [ %.sroa.01021.1, %bb.c ], [ true, %bb.an ]
  %.sroa.01019.1.lpad-body = phi i1 [ %.sroa.01019.1, %bb.c ], [ %.sroa.01019.2, %bb.an ]
  %.sroa.01017.1.lpad-body = phi i1 [ %.sroa.01017.1, %bb.c ], [ %.sroa.01017.2, %bb.an ]
  %.sroa.01015.1.lpad-body = phi i1 [ %.sroa.01015.1, %bb.c ], [ %.sroa.01015.2, %bb.an ]
  %.sroa.01012.1.lpad-body = phi i1 [ %.sroa.01012.1, %bb.c ], [ %.sroa.01012.2, %bb.an ]
  %eh.lpad-body2721 = phi { ptr, i32 } [ %i.uo, %bb.c ], [ %i.adp, %bb.an ] ; 2 uses
  %i.up = extractvalue { ptr, i32 } %eh.lpad-body2721, 0
  %i.uq = extractvalue { ptr, i32 } %eh.lpad-body2721, 1
  br label %.critedge2460

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ub), !dbg !94144
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ub, i64 48, !dbg !94145
  store ptr %1, ptr %i.ur, align 8, !dbg !94145, !alias.scope !90530
  %i.us = getelementptr inbounds nuw i8, ptr %i.ub, i64 56, !dbg !94145
  store ptr %.val2626, ptr %i.us, align 8, !dbg !94145, !alias.scope !90530
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ub, i64 66, !dbg !94145
  store i8 %i.uf, ptr %i.ut, align 2, !dbg !94145, !alias.scope !90530
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ub, i64 65, !dbg !94145
  store i8 0, ptr %i.uu, align 1, !dbg !94145, !alias.scope !90530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ua), !dbg !90531
  %i.uv = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80) acquire, align 8, !dbg !94146
  %i.uw = icmp eq i32 %i.uv, 0, !dbg !94147
  br i1 %i.uw, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !94147, !prof !2316

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !94148
  store ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr %i.z, align 8, !dbg !94149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !94150
  store ptr %i.z, ptr %i.y, align 8, !dbg !94150
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80), i1 noundef zeroext true, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @163, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165)
          to label %.noexc2678 unwind label %bb.bns, !dbg !94151

.noexc2678:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !94152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !94153
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94153

bb.f:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit
  %i.ux = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uy = extractvalue { ptr, i32 } %i.ux, 0
  %i.uz = extractvalue { ptr, i32 } %i.ux, 1
  br label %.critedge2460, !dbg !94154

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.noexc2678, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tz), !dbg !94155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tz, ptr noundef nonnull align 8 dereferenceable(72) %i.ub, i64 72, i1 false), !dbg !94155
  invoke void @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0EB1j_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ua, ptr noundef nonnull align 8 @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.tz)
          to label %bb.g unwind label %bb.f, !dbg !94156

bb.g:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !94157
  %i.va = load i64, ptr %i.ua, align 8, !dbg !94158, !range !2573, !noundef !2293
  %.not2081 = icmp eq i64 %i.va, 18, !dbg !94158
  br i1 %.not2081, label %bb.i, label %bb.h, !dbg !94159

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ua, i64 72, i1 false), !dbg !94160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !94161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ub), !dbg !94154
  %i.vb = load i64, ptr %1, align 16, !dbg !94133, !range !2692, !noundef !2293 ; 3 uses
  %i.vc = icmp ne i64 %i.vb, -9223372036854775782, !dbg !94133
  call void @llvm.assume(i1 %i.vc), !dbg !94133
  %i.vd = add nsw i64 %i.vb, 9223372036854775802, !dbg !94133
  %i.ve = icmp ugt i64 %i.vb, -9223372036854775803, !dbg !94133
  %i.vf = select i1 %i.ve, i64 %i.vd, i64 20, !dbg !94133
  switch i64 %i.vf, label %.loopexit4601 [
    i64 0, label %bb.gv
    i64 1, label %bb.ar
    i64 2, label %bb.at
    i64 3, label %bb.av
    i64 4, label %bb.bb
    i64 5, label %bb.bd
    i64 6, label %bb.bh
    i64 7, label %bb.bj
    i64 8, label %bb.bl
    i64 9, label %bb.bn
    i64 10, label %bb.bp
    i64 11, label %bb.br
    i64 12, label %bb.bt
    i64 13, label %bb.bv
    i64 14, label %bb.bx
    i64 15, label %bb.bz
    i64 16, label %bb.cb
    i64 17, label %bb.cd
    i64 18, label %bb.cg
    i64 19, label %bb.cj
    i64 20, label %bb.cl
    i64 21, label %bb.cn
    i64 22, label %bb.cq
    i64 23, label %bb.cs
  ], !dbg !94133

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !94161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ub), !dbg !94154
  %i.vg = load i64, ptr %1, align 16, !dbg !94162, !range !2692, !noundef !2293 ; 3 uses
  %i.vh = icmp ne i64 %i.vg, -9223372036854775782, !dbg !94162
  call void @llvm.assume(i1 %i.vh), !dbg !94162
  %i.vi = add nsw i64 %i.vg, 9223372036854775802, !dbg !94162
  %i.vj = icmp ugt i64 %i.vg, -9223372036854775803, !dbg !94162
  %i.vk = select i1 %i.vj, i64 %i.vi, i64 20, !dbg !94162
  switch i64 %i.vk, label %.loopexit4601 [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
    i64 7, label %bb.q
    i64 8, label %bb.r
    i64 9, label %bb.s
    i64 10, label %bb.t
    i64 11, label %bb.u
    i64 12, label %bb.v
    i64 13, label %bb.w
    i64 14, label %bb.x
    i64 15, label %bb.y
    i64 16, label %bb.z
    i64 17, label %bb.aa
    i64 18, label %bb.ab
    i64 19, label %bb.ac
    i64 20, label %bb.azl
    i64 21, label %bb.ad
    i64 22, label %bb.ae
    i64 23, label %bb.af
  ], !dbg !94163

.loopexit4601:                                    ; preds = %bb.tc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.bcn, %bb.bbo, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.api, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.gh, %bb.aq, %bb.i, %bb.h
  unreachable, !dbg !94164

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tv), !dbg !94165
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tv, ptr noundef nonnull align 8 dereferenceable(24) %i.vl, i64 24, i1 false), !dbg !94165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tu), !dbg !90598
  invoke void @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl6sourceNtB2_16PythonOptionsDsl10get_schema(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.tu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tv)
          to label %bb.ag unwind label %bb.cx, !dbg !94166

bb.k:                                             ; preds = %bb.i
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !94167
  %i.vn = load ptr, ptr %i.vm, align 16, !dbg !94167, !nonnull !2293, !noundef !2293 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ti), !dbg !94168
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ti, ptr noundef nonnull align 16 dereferenceable(144) %i.vo, i64 144, i1 false), !dbg !94168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.th), !dbg !94169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tg), !dbg !90536
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.83588), !dbg !94170
  %i.vp = cmpxchg ptr %i.vn, i64 1, i64 0 monotonic monotonic, align 8, !dbg !94171, !noalias !90537
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.vp, 1, !dbg !94172
  br i1 %.sroa.18.0.in.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread, !dbg !94173

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i: ; preds = %bb.k
  fence acquire, !dbg !94174
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 16, !dbg !94175
  %.sroa.03583.0.copyload3584 = load i64, ptr %i.vq, align 16, !dbg !94175 ; 2 uses
  %.sroa.63585.0..sroa_idx3586 = getelementptr inbounds nuw i8, ptr %i.vn, i64 24, !dbg !94175
  %.sroa.63585.0.copyload3587 = load ptr, ptr %.sroa.63585.0..sroa_idx3586, align 8, !dbg !94175 ; 2 uses
  %.sroa.83588.0..sroa_idx3589 = getelementptr inbounds nuw i8, ptr %i.vn, i64 32, !dbg !94175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83588, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83588.0..sroa_idx3589, i64 352, i1 false), !dbg !94175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !94176, !noalias !90537
  store ptr %i.vn, ptr %i.x, align 8, !dbg !94177, !noalias !90537
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit unwind label %bb.cy, !dbg !94178

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qf), !dbg !94179
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94179
  %i.vs = load ptr, ptr %i.vr, align 8, !dbg !94179, !nonnull !2293, !noundef !2293
  store ptr %i.vs, ptr %i.qf, align 8, !dbg !94179
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.qe, ptr noundef nonnull align 16 dereferenceable(16) %i.vt, i64 16, i1 false), !dbg !94180
  %i.vu = load ptr, ptr %i.uc, align 16, !dbg !94181, !nonnull !2293, !align !2349, !noundef !2293
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 120, !dbg !94181
  %i.vw = invoke noundef align 8 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.vv, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.qe)
          to label %bb.gi unwind label %bb.gw, !dbg !94182 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !dbg !90584
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.83525), !dbg !94346
  %i.abh = cmpxchg ptr %i.abf, i64 1, i64 0 monotonic monotonic, align 8, !dbg !94347, !noalias !90585
  %.sroa.18.0.in.i.i2710 = extractvalue { i64, i1 } %i.abh, 1, !dbg !94348
  br i1 %.sroa.18.0.in.i.i2710, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2711, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2713.thread, !dbg !94349

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2711: ; preds = %bb.ac
  fence acquire, !dbg !94350
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 16, !dbg !94351
  %.sroa.03520.0.copyload3521 = load i64, ptr %i.abi, align 16, !dbg !94351 ; 2 uses
  %.sroa.63522.0..sroa_idx3523 = getelementptr inbounds nuw i8, ptr %i.abf, i64 24, !dbg !94351
  %.sroa.63522.0.copyload3524 = load ptr, ptr %.sroa.63522.0..sroa_idx3523, align 8, !dbg !94351 ; 2 uses
  %.sroa.83525.0..sroa_idx3526 = getelementptr inbounds nuw i8, ptr %i.abf, i64 32, !dbg !94351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83525, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83525.0..sroa_idx3526, i64 352, i1 false), !dbg !94351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !94352, !noalias !90585
  store ptr %i.abf, ptr %i.o, align 8, !dbg !94353, !noalias !90585
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2713 unwind label %bb.azj, !dbg !94354

bb.ad:                                            ; preds = %bb.i
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94355
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94355
  %i.abl = load ptr, ptr %i.abk, align 16, !dbg !94355, !nonnull !2293, !noundef !2293 ; 3 uses
  %i.abm = load i64, ptr %i.abj, align 8, !dbg !94355, !range !2736, !noundef !2293
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94355
  %i.abo = load i64, ptr %i.abn, align 8, !dbg !94355, !noundef !2293 ; 2 uses
  %i.abp = icmp ult i64 %i.abo, 25063510969714065, !dbg !94356
  call void @llvm.assume(i1 %i.abp), !dbg !94357
  %i.abq = getelementptr inbounds nuw [368 x i8], ptr %i.abl, i64 %i.abo, !dbg !94358
  %i.abr = load ptr, ptr %i.uc, align 16, !dbg !94359, !nonnull !2293, !align !2349, !noundef !2293
  store ptr %i.abl, ptr %i.el, align 8, !dbg !94360
  %.sroa.4842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8, !dbg !94360
  store ptr %i.abl, ptr %.sroa.4842.0..sroa_idx, align 8, !dbg !94360
  %.sroa.5843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 16, !dbg !94360
  store i64 %i.abm, ptr %.sroa.5843.0..sroa_idx, align 8, !dbg !94360
  %.sroa.6844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 24, !dbg !94360
  store ptr %i.abq, ptr %.sroa.6844.0..sroa_idx, align 8, !dbg !94360
  %i.abs = getelementptr inbounds nuw i8, ptr %i.el, i64 32, !dbg !94360
  store ptr %i.abr, ptr %i.abs, align 8, !dbg !94360
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENCNCNvNtNtNtB20_5plans10conversion9dsl_to_ir11to_alp_impl0s16_0ENtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B4v_IB4t_INtB1b_3VecB3L_EB5f_EINtNtNtB4_6traits7collect12FromIteratorIB4t_B3L_B5f_EE9from_iterBQ_E0B6f_EB20_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.an, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.el)
          to label %bb.bgq unwind label %bb.c, !dbg !94361

bb.ae:                                            ; preds = %bb.i
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94362
  %i.abu = load ptr, ptr %i.abt, align 8, !dbg !94362, !nonnull !2293, !noundef !2293 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !dbg !94363
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94363
  %i.abw = load ptr, ptr %i.abv, align 16, !dbg !94363, !nonnull !2293, !noundef !2293
  store ptr %i.abw, ptr %i.ek, align 8, !dbg !94363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !dbg !94364
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94364
  %i.aby = load ptr, ptr %i.abx, align 8, !dbg !94364, !nonnull !2293, !noundef !2293
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94364
  %i.aca = load i64, ptr %i.abz, align 16, !dbg !94364, !noundef !2293
  store ptr %i.aby, ptr %i.ej, align 8, !dbg !94364
  %i.acb = getelementptr inbounds nuw i8, ptr %i.ej, i64 8, !dbg !94364 ; 3 uses
  store i64 %i.aca, ptr %i.acb, align 8, !dbg !94364
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !94365
  %i.acd = load i8, ptr %i.acc, align 8, !dbg !94365, !range !2317, !noundef !2293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !dbg !90595
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.83518), !dbg !94366
  %i.ace = cmpxchg ptr %i.abu, i64 1, i64 0 monotonic monotonic, align 8, !dbg !94367, !noalias !90596
  %.sroa.18.0.in.i.i2714 = extractvalue { i64, i1 } %i.ace, 1, !dbg !94368
  br i1 %.sroa.18.0.in.i.i2714, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2715, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2717.thread, !dbg !94369

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2715: ; preds = %bb.ae
  fence acquire, !dbg !94370
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abu, i64 16, !dbg !94371
  %.sroa.03513.0.copyload3514 = load i64, ptr %i.acf, align 16, !dbg !94371 ; 2 uses
  %.sroa.63515.0..sroa_idx3516 = getelementptr inbounds nuw i8, ptr %i.abu, i64 24, !dbg !94371
  %.sroa.63515.0.copyload3517 = load ptr, ptr %.sroa.63515.0..sroa_idx3516, align 8, !dbg !94371 ; 2 uses
  %.sroa.83518.0..sroa_idx3519 = getelementptr inbounds nuw i8, ptr %i.abu, i64 32, !dbg !94371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83518, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83518.0..sroa_idx3519, i64 352, i1 false), !dbg !94371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !94372, !noalias !90596
  store ptr %i.abu, ptr %i.n, align 8, !dbg !94373, !noalias !90596
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2717 unwind label %.split4426.thread, !dbg !94374

bb.af:                                            ; preds = %bb.i
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94375
  %i.ach = load i64, ptr %i.acg, align 8, !dbg !94375, !range !2315, !noundef !2293
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94375
  %i.acj = load i64, ptr %i.aci, align 16, !dbg !94375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !dbg !94376
  %i.ack = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94376
  %i.acl = load ptr, ptr %i.ack, align 16, !dbg !94376, !nonnull !2293, !noundef !2293 ; 4 uses
  store ptr %i.acl, ptr %i.ee, align 8, !dbg !94376
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !94377
  %i.acn = load i32, ptr %i.acm, align 8, !dbg !94377, !noundef !2293 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94378
  %i.acp = load i32, ptr %i.aco, align 8, !dbg !94378, !range !3316, !noundef !2293
  %i.acq = trunc nuw i32 %i.acp to i1, !dbg !94379
  br i1 %i.acq, label %bb.bjk, label %bb.bjj, !dbg !94379

bb.ag:                                            ; preds = %bb.j
  %i.acr = load i64, ptr %i.tu, align 8, !dbg !94380, !range !2573, !noundef !2293 ; 2 uses
  %.not2427 = icmp eq i64 %i.acr, 18, !dbg !94380
  %i.acs = getelementptr inbounds nuw i8, ptr %i.tu, i64 8, !dbg !94381
  %i.act = load ptr, ptr %i.acs, align 8, !dbg !94381 ; 2 uses
  br i1 %.not2427, label %bb.ai, label %bb.ah, !dbg !94382

bb.ah:                                            ; preds = %bb.ag
  %.sroa.61225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tu, i64 16, !dbg !94383
  %.sroa.31228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !94384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.31228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.61225.0..sroa_idx, i64 56, i1 false), !dbg !94383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tu), !dbg !94385
  store i64 %i.acr, ptr %0, align 8, !dbg !94384
  %.sroa.21227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !94384
  store ptr %i.act, ptr %.sroa.21227.0..sroa_idx, align 8, !dbg !94384
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl6source16PythonOptionsDslEBO_(ptr noalias noundef align 8 dereferenceable(24) %i.tv)
          to label %bb.aq unwind label %bb.c, !dbg !94386

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tu), !dbg !94385
  %i.acu = load ptr, ptr %i.tv, align 8, !dbg !94387, !noundef !2293
  %i.acv = getelementptr inbounds nuw i8, ptr %i.tv, i64 16, !dbg !94388
  %i.acw = load i8, ptr %i.acv, align 8, !dbg !94388, !range !2306, !noundef !2293
  %i.acx = getelementptr inbounds nuw i8, ptr %i.tv, i64 17, !dbg !94389
  %i.acy = load i8, ptr %i.acx, align 1, !dbg !94389, !range !2317, !noundef !2293
  %i.acz = getelementptr inbounds nuw i8, ptr %i.tv, i64 18, !dbg !94390
  %i.ada = load i8, ptr %i.acz, align 2, !dbg !94390, !range !2317, !noundef !2293
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ty, i64 16, !dbg !94391
  store i64 0, ptr %i.adb, align 16, !dbg !94391
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 32, !dbg !94391
  store i64 6, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !94391
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 160, !dbg !94391
  store ptr null, ptr %.sroa.624.0..sroa_idx, align 16, !dbg !94391
  %.sroa.825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 176, !dbg !94391
  store ptr %i.act, ptr %.sroa.825.0..sroa_idx, align 16, !dbg !94391
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 184, !dbg !94391
  store ptr %i.acu, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !94391
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 192, !dbg !94391
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 16, !dbg !94391
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 200, !dbg !94391
  store i8 %i.acy, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !94391
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 201, !dbg !94391
  store i8 %i.ada, ptr %.sroa.12.0..sroa_idx, align 1, !dbg !94391
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 202, !dbg !94391
  store i8 %i.acw, ptr %.sroa.13.0..sroa_idx, align 2, !dbg !94391
  store i64 -9223372036854775804, ptr %i.ty, align 16, !dbg !94391
  %i.adc = getelementptr inbounds nuw i8, ptr %i.tv, i64 8, !dbg !94386 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90601), !dbg !94386
  %i.add = load ptr, ptr %i.adc, align 8, !dbg !94392, !alias.scope !90601, !noundef !2293 ; 2 uses
  %i.ade = icmp eq ptr %i.add, null, !dbg !94392
  br i1 %i.ade, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit, label %bb.aj, !dbg !94392

bb.aj:                                            ; preds = %bb.ai
  %i.adf = atomicrmw add ptr %i.add, i64 -1 release, align 8, !dbg !94393, !noalias !90602
  %i.adg = icmp eq i64 %i.adf, 1, !dbg !94394
  br i1 %i.adg, label %bb.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit, !dbg !94394

bb.ak:                                            ; preds = %bb.aj
  fence acquire, !dbg !94395
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIBx_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.adc) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit unwind label %bb.c, !dbg !94396

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit: ; preds = %bb.aj, %bb.ai, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tv), !dbg !94386
  br label %bb.al, !dbg !94386

bb.al:                                            ; preds = %bb.aof, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212, %bb.bgt, %bb.azg, %bb.axh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a, %bb.arw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit, %bb.n
  %.sroa.01147.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01145.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ false, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01135.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ false, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01130.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ false, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01082.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01046.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01028.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ false, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01026.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ false, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01019.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ false, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01017.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01015.2 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %.sroa.01012.2 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIB2d_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEEB1d_.exit ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2783 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_.exit2794 ], [ true, %bb.n ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2839 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3040 ], [ true, %bb.aof ], [ true, %bb.arw ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3116.a ], [ true, %bb.axh ], [ true, %bb.azg ], [ true, %bb.bgt ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 ], !dbg !94142
  %i.adh = load ptr, ptr %i.uc, align 16, !dbg !94397, !nonnull !2293, !align !2349, !noundef !2293
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 192, !dbg !94397
  %i.adj = load ptr, ptr %i.adi, align 8, !dbg !94397, !nonnull !2293, !align !2349, !noundef !2293 ; 4 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16, !dbg !94398 ; 2 uses
  %i.adl = load i64, ptr %i.adk, align 8, !dbg !94398, !noundef !2293 ; 5 uses
  %i.adm = icmp ult i64 %i.adl, 25063510969714065, !dbg !94399
  call void @llvm.assume(i1 %i.adm), !dbg !94400
  %i.adn = load i64, ptr %i.adj, align 8, !dbg !94401, !range !2736, !alias.scope !90606, !noundef !2293
  %i.ado = icmp eq i64 %i.adl, %i.adn, !dbg !94402
  br i1 %i.ado, label %bb.am, label %bb.bij, !dbg !94402

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.adj)
          to label %bb.bij unwind label %bb.an, !dbg !94403, !noalias !90609

bb.an:                                            ; preds = %bb.am
  %i.adp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.ty) #43
          to label %.body2720 unwind label %bb.ao, !dbg !94404

bb.ao:                                            ; preds = %bb.an
  %i.adq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !94405
  unreachable, !dbg !94405

bb.ap:                                            ; preds = %.invoke5115, %.invoke5114.a, %.invoke5113, %bb.bqo, %bb.bqn, %bb.bqm, %bb.bqk, %bb.bqi, %bb.bqg, %bb.bqd, %bb.bqb, %bb.bpz, %bb.bpy, %bb.bpx, %bb.bpv, %bb.bpt, %bb.bps, %bb.bpr, %bb.bpp, %bb.bpn, %bb.bpl, %bb.bpk, %bb.bpj, %bb.bph, %bb.bpg, %bb.bpc, %bb.bpb, %bb.boz, %bb.bot, %bb.bnr, %bb.bnm, %bb.bmw, %bb.bms, %bb.bmc, %bb.blx, %bb.blr, %bb.blp, %bb.blb, %bb.bkz, %bb.bki, %bb.bkf, %bb.bkd, %bb.bju, %bb.bji, %bb.bjg, %bb.bhr, %bb.bhn, %bb.bgp, %bb.bgk, %bb.bgj, %bb.bfr, %bb.bff, %bb.bfd, %bb.bcy, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3155, %bb.azf, %bb.ayk, %bb.aya, %bb.awl, %bb.awi, %bb.avg, %bb.avf, %bb.auu, %bb.auc, %bb.atr, %bb.arq, %bb.aqn, %bb.aqe, %bb.aoo, %bb.anp, %bb.amf, %bb.alr, %.thread4162, %bb.ajv, %bb.ajh, %bb.ain, %bb.agd, %bb.afs, %bb.aew, %bb.aec, %bb.abo, %bb.xx, %bb.xl, %bb.xh, %bb.wv, %bb.vi, %bb.tz, %bb.to, %bb.qz, %bb.qk, %bb.qg, %bb.ou, %bb.ok, %bb.nn, %bb.nl, %bb.mz, %bb.mu, %bb.mq, %bb.mo, %.body2571.thread, %bb.lp, %bb.lk, %bb.li, %bb.ia, %bb.gy, %bb.gx, %bb.en, %bb.dl, %bb.cw, %bb.hi, %.body3217, %.body3238, %bb.bow, %bb.biq, %bb.bjw, %bb.bov, %bb.cx, %bb.azu, %.noexc3350, %.noexc3346, %.critedge2524, %.noexc3342, %.noexc3340, %.critedge2518, %.critedge2517, %.critedge2516, %.noexc3334.a, %.noexc3332.a, %.noexc3324.a, %.critedge2502, %.critedge2501.a, %.critedge2500.a, %.critedge2497.a, %.critedge2495, %.critedge2494, %.noexc3310, %bb.bpd, %.noexc3298, %bb.bor, %bb.bnx, %bb.bns, %bb.bnk, %bb.bnh, %bb.bng, %bb.bnf, %bb.bmy, %20, %bb.bmu, %bb.bmt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3281, %bb.bme, %15, %bb.blt, %bb.bln, %bb.blm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3260, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3258, %bb.bkx, %.body3252, %bb.bkk, %bb.bjv, %bb.bgn, %bb.bgm, %bb.bgl, %.noexc3182, %bb.bgh, %bb.bgg, %bb.bfz, %bb.bfy, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeEEB1a_.exit3175, %bb.bfb, %bb.bez, %bb.bey, %bb.bej, %bb.bdz, %bb.bds, %bb.bdl, %.thread4399, %bb.bcf, %bb.bbv, %bb.bbc, %bb.bau, %.body, %bb.azj, %bb.azh, %.loopexit.split-lp4652, %.body2581, %.noexc3143, %bb.aza, %bb.axe, %.thread4308, %bb.avd, %bb.auy, %.noexc3078, %.critedge2473, %.thread4278, %bb.atl, %bb.atd, %bb.asu, %.thread4535, %bb.asf, %bb.ary, %.body2586, %bb.arf, %bb.aqu, %bb.aqb, %bb.apn, %.thread4242, %bb.anx, %bb.anw, %bb.anv, %2, %.thread4206, %bb.anq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread, %bb.ano, %bb.and, %.thread4116, %.loopexit.split-lp4632.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.akb, %bb.aji, %bb.aiy, %bb.aiu, %bb.ait, %bb.ais, %.noexc2988, %.critedge2466, %bb.aha, %bb.agw, %bb.ags, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit2969, %bb.afo, %bb.afl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, %.loopexit.split-lp4619, %bb.aex, %bb.aeu, %bb.aet, %bb.aek, %bb.adw, %bb.adp, %.thread4010, %.body2569, %.thread4021, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterEBM_.exit, %bb.abf, %.thread4032, %bb.aah, %bb.aac, %bb.zw, %bb.za, %bb.yw, %bb.yq, %bb.ym, %bb.yg, %bb.yc, %bb.xk, %.thread3985, %bb.vl, %bb.vf, %bb.uw, %.loopexit.split-lp4592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.sl, %.loopexit.split-lp4587.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.rx, %bb.rn, %.body2594, %bb.qj, %bb.qh, %bb.qd, %bb.pu, %.critedge2457.a, %bb.nj, %bb.ni, %bb.mx, %bb.mw, %bb.mv, %bb.ms, %bb.lm, %bb.ll, %.thread3787, %bb.kq, %bb.jj, %bb.jh, %.thread3741, %.body2589.thread, %bb.ip, %bb.fe, %.loopexit.split-lp, %.thread3700, %bb.eb, %bb.du, %bb.dq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit
  %i.adr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !94406
  unreachable, !dbg !94406

bb.aq:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tv), !dbg !94386
  %i.ads = load i64, ptr %1, align 16, !dbg !94133, !range !2692, !noundef !2293 ; 3 uses
  %i.adt = icmp ne i64 %i.ads, -9223372036854775782, !dbg !94133
  call void @llvm.assume(i1 %i.adt), !dbg !94133
  %i.adu = add nsw i64 %i.ads, 9223372036854775802, !dbg !94133
  %i.adv = icmp ugt i64 %i.ads, -9223372036854775803, !dbg !94133
  %i.adw = select i1 %i.adv, i64 %i.adu, i64 20, !dbg !94133
  switch i64 %i.adw, label %.loopexit4601 [
    i64 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725
    i64 1, label %bb.ar
    i64 2, label %bb.at
    i64 3, label %bb.av
    i64 4, label %bb.bb
    i64 5, label %bb.bd
    i64 6, label %bb.bh
    i64 7, label %bb.bj
    i64 8, label %bb.bl
    i64 9, label %bb.bn
    i64 10, label %bb.bp
    i64 11, label %bb.br
    i64 12, label %bb.bt
    i64 13, label %bb.bv
    i64 14, label %bb.bx
    i64 15, label %bb.bz
    i64 16, label %bb.cb
    i64 17, label %bb.cd
    i64 18, label %bb.cg
    i64 19, label %bb.cj
    i64 20, label %bb.cl
    i64 21, label %bb.cn
    i64 22, label %bb.cq
    i64 23, label %bb.cs
  ], !dbg !94133

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725: ; preds = %bb.bnp, %bb.bno, %bb.bmq, %bb.bmp, %bb.bma, %bb.blz, %bb.bls, %.critedge2462, %bb.bll, %bb.blk, %bb.bkj, %.critedge, %bb.bkg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit, %bb.bkb, %bb.bka, %bb.bje, %bb.bjc, %bb.bjb, %bb.bja, %bb.biz, %bb.biy, %bb.bix, %bb.nh, %bb.ml, %bb.ct, %bb.cs, %bb.ca, %bb.bz, %bb.au, %bb.at, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.ji, %.critedge2486, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit3290, %.critedge2475, %bb.bne, %bb.bmx, %bb.bmd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_.exit3269, %.noexc3255, %10, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bjd, %bb.bis, %bb.bij, %bb.bgs, %bb.axi, %bb.avk, %bb.aoc, %bb.gv, %bb.gq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2760, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2754, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit, %bb.aq
  ret void, !dbg !94407

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bix, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90610), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90611), !dbg !94408
  %i.ady = load ptr, ptr %i.adx, align 16, !dbg !94409, !alias.scope !90612, !nonnull !2293, !noundef !2293
  %i.adz = atomicrmw add ptr %i.ady, i64 -1 release, align 8, !dbg !94410, !noalias !90612
  %i.aea = icmp eq i64 %i.adz, 1, !dbg !94411
  br i1 %i.aea, label %bb.as, label %10, !dbg !94411

bb.as:                                            ; preds = %bb.ar
  fence acquire, !dbg !94412
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.adx) #44
          to label %10 unwind label %bb.bjv, !dbg !94413

bb.at:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.aq, %bb.h
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90613), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90614), !dbg !94414
  %i.aec = load ptr, ptr %i.aeb, align 8, !dbg !94415, !alias.scope !90615, !nonnull !2293, !noundef !2293
  %i.aed = atomicrmw add ptr %i.aec, i64 -1 release, align 8, !dbg !94416, !noalias !90615
  %i.aee = icmp eq i64 %i.aed, 1, !dbg !94417
  br i1 %i.aee, label %bb.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94417

bb.au:                                            ; preds = %bb.at
  fence acquire, !dbg !94418
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aeb) #44, !dbg !94419
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94419

bb.av:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.gh, %bb.aq, %bb.h
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90616), !dbg !94133
  %i.aeg = load i64, ptr %i.aef, align 8, !dbg !94420, !range !2295, !alias.scope !90616, !noundef !2293
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94420 ; 5 uses
  switch i64 %i.aeg, label %bb.aw [
    i64 0, label %bb.ay
    i64 1, label %bb.az
  ], !dbg !94420

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !90617), !dbg !94420
  call void @llvm.experimental.noalias.scope.decl(metadata !90618), !dbg !94421
  %i.aei = load ptr, ptr %i.aeh, align 16, !dbg !94422, !alias.scope !90619, !nonnull !2293, !noundef !2293
  %i.aej = atomicrmw add ptr %i.aei, i64 -1 release, align 8, !dbg !94423, !noalias !90619
  %i.aek = icmp eq i64 %i.aej, 1, !dbg !94424
  br i1 %i.aek, label %bb.ax, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !94424

bb.ax:                                            ; preds = %bb.aw
  fence acquire, !dbg !94425
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aeh) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.bjw, !dbg !94426

bb.ay:                                            ; preds = %bb.av
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aeh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.bjw, !dbg !94427

bb.az:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !90620), !dbg !94420
  call void @llvm.experimental.noalias.scope.decl(metadata !90621), !dbg !94428
  %i.ael = load ptr, ptr %i.aeh, align 16, !dbg !94429, !alias.scope !90622, !nonnull !2293, !noundef !2293
  %i.aem = atomicrmw add ptr %i.ael, i64 -1 release, align 8, !dbg !94430, !noalias !90622
  %i.aen = icmp eq i64 %i.aem, 1, !dbg !94431
  br i1 %i.aen, label %bb.ba, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !94431

bb.ba:                                            ; preds = %bb.az
  fence acquire, !dbg !94432
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aeh) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.bjw, !dbg !94433

bb.bb:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90623), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90624), !dbg !94434
  %i.aep = load ptr, ptr %i.aeo, align 8, !dbg !94435, !alias.scope !90625, !nonnull !2293, !noundef !2293
  %i.aeq = atomicrmw add ptr %i.aep, i64 -1 release, align 8, !dbg !94436, !noalias !90625
  %i.aer = icmp eq i64 %i.aeq, 1, !dbg !94437
  br i1 %i.aer, label %bb.bc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94437

bb.bc:                                            ; preds = %bb.bb
  fence acquire, !dbg !94438
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aeo) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bke, !dbg !94439

bb.bd:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.gq, %bb.aq, %bb.h
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aes)
          to label %bb.bf unwind label %bb.be, !dbg !94440

bb.be:                                            ; preds = %bb.bd
  %i.aet = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aes)
          to label %.body2731 unwind label %bb.bg, !dbg !94441

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aes)
          to label %.critedge unwind label %bb.bkh, !dbg !94442

bb.bg:                                            ; preds = %bb.be
  %i.aeu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !94440
  unreachable, !dbg !94440

bb.bh:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90626), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90627), !dbg !94443
  %i.aew = load ptr, ptr %i.aev, align 16, !dbg !94444, !alias.scope !90628, !nonnull !2293, !noundef !2293
  %i.aex = atomicrmw add ptr %i.aew, i64 -1 release, align 8, !dbg !94445, !noalias !90628
  %i.aey = icmp eq i64 %i.aex, 1, !dbg !94446
  br i1 %i.aey, label %bb.bi, label %bb.bkl, !dbg !94446

bb.bi:                                            ; preds = %bb.bh
  fence acquire, !dbg !94447
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aev) #44
          to label %bb.bkl unwind label %bb.bkk, !dbg !94448

bb.bj:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90629), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90630), !dbg !94449
  %i.afa = load ptr, ptr %i.aez, align 16, !dbg !94450, !alias.scope !90631, !nonnull !2293, !noundef !2293
  %i.afb = atomicrmw add ptr %i.afa, i64 -1 release, align 8, !dbg !94451, !noalias !90631
  %i.afc = icmp eq i64 %i.afb, 1, !dbg !94452
  br i1 %i.afc, label %bb.bk, label %bb.blc, !dbg !94452

bb.bk:                                            ; preds = %bb.bj
  fence acquire, !dbg !94453
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aez) #44
          to label %bb.blc unwind label %bb.bla, !dbg !94454

bb.bl:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90632), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90633), !dbg !94455
  %i.afe = load ptr, ptr %i.afd, align 8, !dbg !94456, !alias.scope !90634, !nonnull !2293, !noundef !2293
  %i.aff = atomicrmw add ptr %i.afe, i64 -1 release, align 8, !dbg !94457, !noalias !90634
  %i.afg = icmp eq i64 %i.aff, 1, !dbg !94458
  br i1 %i.afg, label %bb.bm, label %.critedge2462, !dbg !94458

bb.bm:                                            ; preds = %bb.bl
  fence acquire, !dbg !94459
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afd) #44
          to label %.critedge2462 unwind label %bb.blq, !dbg !94460

bb.bn:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90635), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90636), !dbg !94461
  %i.afi = load ptr, ptr %i.afh, align 16, !dbg !94462, !alias.scope !90637, !nonnull !2293, !noundef !2293
  %i.afj = atomicrmw add ptr %i.afi, i64 -1 release, align 8, !dbg !94463, !noalias !90637
  %i.afk = icmp eq i64 %i.afj, 1, !dbg !94464
  br i1 %i.afk, label %bb.bo, label %.critedge2464, !dbg !94464

bb.bo:                                            ; preds = %bb.bn
  fence acquire, !dbg !94465
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afh) #44
          to label %.critedge2464 unwind label %bb.blt, !dbg !94466

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.biy, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90638), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90639), !dbg !94467
  %i.afm = load ptr, ptr %i.afl, align 8, !dbg !94468, !alias.scope !90640, !nonnull !2293, !noundef !2293
  %i.afn = atomicrmw add ptr %i.afm, i64 -1 release, align 8, !dbg !94469, !noalias !90640
  %i.afo = icmp eq i64 %i.afn, 1, !dbg !94470
  br i1 %i.afo, label %bb.bq, label %.noexc3270, !dbg !94470

bb.bq:                                            ; preds = %bb.bp
  fence acquire, !dbg !94471
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afl) #44
          to label %.noexc3270 unwind label %bb.blw, !dbg !94472

bb.br:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.biz, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90641), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90642), !dbg !94473
  %i.afq = load ptr, ptr %i.afp, align 8, !dbg !94474, !alias.scope !90643, !nonnull !2293, !noundef !2293
  %i.afr = atomicrmw add ptr %i.afq, i64 -1 release, align 8, !dbg !94475, !noalias !90643
  %i.afs = icmp eq i64 %i.afr, 1, !dbg !94476
  br i1 %i.afs, label %bb.bs, label %bb.bmd, !dbg !94476

bb.bs:                                            ; preds = %bb.br
  fence acquire, !dbg !94477
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.afp) #44
          to label %bb.bmd unwind label %15, !dbg !94478

bb.bt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bja, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.aft = getelementptr inbounds nuw i8, ptr %1, i64 280, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90644), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90645), !dbg !94479
  %i.afu = load ptr, ptr %i.aft, align 8, !dbg !94480, !alias.scope !90646, !nonnull !2293, !noundef !2293
  %i.afv = atomicrmw add ptr %i.afu, i64 -1 release, align 8, !dbg !94481, !noalias !90646
  %i.afw = icmp eq i64 %i.afv, 1, !dbg !94482
  br i1 %i.afw, label %bb.bu, label %bb.bmf, !dbg !94482

bb.bu:                                            ; preds = %bb.bt
  fence acquire, !dbg !94483
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aft) #44
          to label %bb.bmf unwind label %bb.bme, !dbg !94484

bb.bv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bjb, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90647), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90648), !dbg !94485
  %i.afy = load ptr, ptr %i.afx, align 8, !dbg !94486, !alias.scope !90649, !nonnull !2293, !noundef !2293
  %i.afz = atomicrmw add ptr %i.afy, i64 -1 release, align 8, !dbg !94487, !noalias !90649
  %i.aga = icmp eq i64 %i.afz, 1, !dbg !94488
  br i1 %i.aga, label %bb.bw, label %bb.bmx, !dbg !94488

bb.bw:                                            ; preds = %bb.bv
  fence acquire, !dbg !94489
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afx) #44
          to label %bb.bmx unwind label %20, !dbg !94490

bb.bx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bjc, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90650), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90651), !dbg !94491
  %i.agc = load ptr, ptr %i.agb, align 8, !dbg !94492, !alias.scope !90652, !nonnull !2293, !noundef !2293
  %i.agd = atomicrmw add ptr %i.agc, i64 -1 release, align 8, !dbg !94493, !noalias !90652
  %i.age = icmp eq i64 %i.agd, 1, !dbg !94494
  br i1 %i.age, label %bb.by, label %bb.bmz, !dbg !94494

bb.by:                                            ; preds = %bb.bx
  fence acquire, !dbg !94495
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agb) #44
          to label %bb.bmz unwind label %bb.bmy, !dbg !94496

bb.bz:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90653), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90654), !dbg !94497
  %i.agg = load ptr, ptr %i.agf, align 8, !dbg !94498, !alias.scope !90655, !nonnull !2293, !noundef !2293
  %i.agh = atomicrmw add ptr %i.agg, i64 -1 release, align 8, !dbg !94499, !noalias !90655
  %i.agi = icmp eq i64 %i.agh, 1, !dbg !94500
  br i1 %i.agi, label %bb.ca, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94500

bb.ca:                                            ; preds = %bb.bz
  fence acquire, !dbg !94501
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agf) #44, !dbg !94502
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94502

bb.cb:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90656), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90657), !dbg !94503
  %i.agk = load ptr, ptr %i.agj, align 16, !dbg !94504, !alias.scope !90658, !nonnull !2293, !noundef !2293
  %i.agl = atomicrmw add ptr %i.agk, i64 -1 release, align 8, !dbg !94505, !noalias !90658
  %i.agm = icmp eq i64 %i.agl, 1, !dbg !94506
  br i1 %i.agm, label %bb.cc, label %.critedge2475, !dbg !94506

bb.cc:                                            ; preds = %bb.cb
  fence acquire, !dbg !94507
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agj) #44
          to label %.critedge2475 unwind label %bb.bng, !dbg !94508

bb.cd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bjd, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agn)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit unwind label %bb.ce, !dbg !94509

bb.ce:                                            ; preds = %bb.cd
  %i.ago = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agn)
          to label %common.resume unwind label %bb.cf, !dbg !94510

bb.cf:                                            ; preds = %bb.ce
  %i.agp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !94509
  unreachable, !dbg !94509

common.resume:                                    ; preds = %bb.bni, %bb.blu, %bb.co, %bb.ch, %bb.ce, %.critedge2488
  %common.resume.op = phi { ptr, i32 } [ %i.fad, %bb.blu ], [ %i.ago, %bb.ce ], [ %i.agr, %bb.ch ], [ %i.etz, %.critedge2488 ], [ %i.ahc, %bb.co ], [ %i.fct, %bb.bni ]
  resume { ptr, i32 } %common.resume.op, !dbg !94511

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit: ; preds = %bb.cd
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agn), !dbg !94512
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.cg:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2754 unwind label %bb.ch, !dbg !94513

bb.ch:                                            ; preds = %bb.cg
  %i.agr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agq)
          to label %common.resume unwind label %bb.ci, !dbg !94514

bb.ci:                                            ; preds = %bb.ch
  %i.ags = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !94513
  unreachable, !dbg !94513

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2754: ; preds = %bb.cg
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agq), !dbg !94515
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.cj:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90659), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90660), !dbg !94516
  %i.agu = load ptr, ptr %i.agt, align 16, !dbg !94517, !alias.scope !90661, !nonnull !2293, !noundef !2293
  %i.agv = atomicrmw add ptr %i.agu, i64 -1 release, align 8, !dbg !94518, !noalias !90661
  %i.agw = icmp eq i64 %i.agv, 1, !dbg !94519
  br i1 %i.agw, label %bb.ck, label %.critedge2481, !dbg !94519

bb.ck:                                            ; preds = %bb.cj
  fence acquire, !dbg !94520
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agt) #44
          to label %.critedge2481 unwind label %bb.bnh, !dbg !94521

bb.cl:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bgs, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 360, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90662), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90663), !dbg !94522
  %i.agy = load ptr, ptr %i.agx, align 8, !dbg !94523, !alias.scope !90664, !nonnull !2293, !noundef !2293
  %i.agz = atomicrmw add ptr %i.agy, i64 -1 release, align 8, !dbg !94524, !noalias !90664
  %i.aha = icmp eq i64 %i.agz, 1, !dbg !94525
  br i1 %i.aha, label %bb.cm, label %.critedge2486, !dbg !94525

bb.cm:                                            ; preds = %bb.cl
  fence acquire, !dbg !94526
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agx) #44
          to label %.critedge2486 unwind label %bb.bnk, !dbg !94527

bb.cn:                                            ; preds = %bb.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2760 unwind label %bb.co, !dbg !94528

bb.co:                                            ; preds = %bb.cn
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahb)
          to label %common.resume unwind label %bb.cp, !dbg !94529

bb.cp:                                            ; preds = %bb.co
  %i.ahd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !94528
  unreachable, !dbg !94528

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit2760: ; preds = %bb.cn
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahb), !dbg !94530
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.cq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, %bb.bje, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90665), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90666), !dbg !94531
  %i.ahf = load ptr, ptr %i.ahe, align 8, !dbg !94532, !alias.scope !90667, !nonnull !2293, !noundef !2293
  %i.ahg = atomicrmw add ptr %i.ahf, i64 -1 release, align 8, !dbg !94533, !noalias !90667
  %i.ahh = icmp eq i64 %i.ahg, 1, !dbg !94534
  br i1 %i.ahh, label %bb.cr, label %.noexc3291, !dbg !94534

bb.cr:                                            ; preds = %bb.cq
  fence acquire, !dbg !94535
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ahe) #44
          to label %.noexc3291 unwind label %bb.bnl, !dbg !94536

bb.cs:                                            ; preds = %bb.gh, %bb.bgs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3179, %bb.azi, %bb.axi, %bb.avk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, %bb.aoc, %bb.oz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2831, %bb.nh, %bb.ml, %bb.ji, %bb.gq, %bb.aq, %bb.h
  %i.ahi = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90668), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !90669), !dbg !94537
  %i.ahj = load ptr, ptr %i.ahi, align 16, !dbg !94538, !alias.scope !90670, !nonnull !2293, !noundef !2293
  %i.ahk = atomicrmw add ptr %i.ahj, i64 -1 release, align 8, !dbg !94539, !noalias !90670
  %i.ahl = icmp eq i64 %i.ahk, 1, !dbg !94540
  br i1 %i.ahl, label %bb.ct, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94540

bb.ct:                                            ; preds = %bb.cs
  fence acquire, !dbg !94541
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ahi) #44, !dbg !94542
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94542

bb.cu:                                            ; preds = %bb.cx
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.tv, i64 8, !dbg !94386 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90671), !dbg !94386
  %i.ahn = load ptr, ptr %i.ahm, align 8, !dbg !94543, !alias.scope !90671, !noundef !2293 ; 2 uses
  %i.aho = icmp eq ptr %i.ahn, null, !dbg !94543
  br i1 %i.aho, label %.critedge2460, label %bb.cv, !dbg !94543

bb.cv:                                            ; preds = %bb.cu
  %i.ahp = atomicrmw add ptr %i.ahn, i64 -1 release, align 8, !dbg !94544, !noalias !90672
  %i.ahq = icmp eq i64 %i.ahp, 1, !dbg !94545
  br i1 %i.ahq, label %bb.cw, label %.critedge2460, !dbg !94545

bb.cw:                                            ; preds = %bb.cv
  fence acquire, !dbg !94546
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtCs76NdGGEXHxZ_6either6EitherNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectIBx_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ahm) #44
          to label %.critedge2460 unwind label %bb.ap, !dbg !94547

bb.cx:                                            ; preds = %bb.j
  %i.ahr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.478.13691 = extractvalue { ptr, i32 } %i.ahr, 1 ; 3 uses
  %.sroa.02013.13692 = extractvalue { ptr, i32 } %i.ahr, 0 ; 3 uses
  %.val2614 = load ptr, ptr %i.tv, align 8, !dbg !94386, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECsfcROwRM8ZtH_11polars_plan(ptr %.val2614) #43
          to label %bb.cu unwind label %bb.ap, !dbg !94386

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.dk, %bb.dj, %bb.dl, %bb.cy
  %.pn2425 = phi { ptr, i32 } [ %i.ahs, %bb.cy ], [ %.pn2423, %bb.dl ], [ %.pn2423, %bb.dj ], [ %.pn2423, %bb.dk ] ; 2 uses
  %.sroa.478.2 = extractvalue { ptr, i32 } %.pn2425, 1
  %.sroa.02013.2 = extractvalue { ptr, i32 } %.pn2425, 0
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ti) #43
          to label %.critedge2460 unwind label %bb.ap, !dbg !94548

bb.cy:                                            ; preds = %bb.ge, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i, %bb.dg, %bb.df, %bb.dc, %bb.da, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !94549, !noalias !90537
  %i.aht = icmp eq i64 %.sroa.03583.0.copyload3584, -9223372036854775778, !dbg !94550
  br i1 %i.aht, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread, label %bb.cz, !dbg !94551

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread: ; preds = %bb.k, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit
  %.sroa.63585.03699 = phi ptr [ %.sroa.63585.0.copyload3587, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit ], [ %i.vn, %bb.k ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63585.03699) ]
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE15unwrap_or_clone0BO_(ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.tg, ptr noundef nonnull %.sroa.63585.03699)
          to label %bb.da unwind label %bb.cy, !dbg !94552

bb.cz:                                            ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit
  store i64 %.sroa.03583.0.copyload3584, ptr %i.tg, align 16, !dbg !94553
  %.sroa.63585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tg, i64 8, !dbg !94553
  store ptr %.sroa.63585.0.copyload3587, ptr %.sroa.63585.0..sroa_idx, align 8, !dbg !94553
  %.sroa.83588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tg, i64 16, !dbg !94553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83588.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83588, i64 352, i1 false), !dbg !94553
  br label %bb.da, !dbg !94554

bb.da:                                            ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit.thread, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83588), !dbg !94555
  %i.ahu = load ptr, ptr %i.uc, align 16, !dbg !94556, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ds, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.tg, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.ahu)
          to label %bb.db unwind label %bb.cy, !dbg !90676

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tg), !dbg !94557
  %i.ahv = load i64, ptr %i.ds, align 16, !dbg !94558, !range !2573, !noundef !2293
  %.not2411.a = icmp eq i64 %i.ahv, 18, !dbg !94558
  br i1 %.not2411.a, label %bb.de, label %bb.dc, !dbg !94559

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !dbg !94560
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0s5_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dt, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.ds)
          to label %bb.dd unwind label %bb.cy, !dbg !94560

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ds, ptr noundef nonnull align 8 dereferenceable(72) %i.dt, i64 72, i1 false), !dbg !94561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !dbg !94562
  %.sroa.71290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16, !dbg !94563
  %.sroa.31293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !94564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.31293.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.71290.0..sroa_idx, i64 56, i1 false), !dbg !94563
  %i.ahw = load <2 x i64>, ptr %i.ds, align 16, !dbg !94563
  store <2 x i64> %i.ahw, ptr %0, align 8, !dbg !94564
  br label %bb.gf, !dbg !94565

bb.de:                                            ; preds = %bb.db
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8, !dbg !94566
  %i.ahy = load i64, ptr %i.ahx, align 8, !dbg !94566, !noundef !2293 ; 3 uses
  store i64 %i.ahy, ptr %i.th, align 8, !dbg !94567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tf), !dbg !94568
  %i.ahz = load ptr, ptr %i.uc, align 16, !dbg !94569, !nonnull !2293, !align !2349, !noundef !2293
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 192, !dbg !94569
  %i.aib = load ptr, ptr %i.aia, align 8, !dbg !94569, !nonnull !2293, !align !2349, !noundef !2293 ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16, !dbg !94570
  %i.aid = load i64, ptr %i.aic, align 8, !dbg !94570, !noundef !2293
  %i.aie = icmp ult i64 %i.ahy, %i.aid, !dbg !94571
  br i1 %i.aie, label %bb.dg, label %bb.df, !dbg !94571, !prof !2316

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #41
          to label %bb.dh unwind label %bb.cy, !dbg !94572

bb.dg:                                            ; preds = %bb.de
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 8, !dbg !94573
  %i.aig = load ptr, ptr %i.aif, align 8, !dbg !94573, !nonnull !2293, !noundef !2293
  %i.aih = getelementptr inbounds nuw [368 x i8], ptr %i.aig, i64 %i.ahy, !dbg !94574
  %i.aii = invoke { i64, ptr } @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR6schema(ptr noundef nonnull align 16 %i.aih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aib)
          to label %bb.di unwind label %bb.cy, !dbg !94575 ; 2 uses

bb.dh:                                            ; preds = %bb.bhk, %bb.bhh, %bb.bbr, %bb.bbj, %bb.bao, %bb.ayg, %bb.axu, %bb.awf, %bb.awd, %bb.avz, %bb.asd, %bb.aqk, %bb.apc, %bb.aog, %bb.ali, %bb.ajq, %bb.agl, %bb.act, %bb.aco, %bb.aao, %bb.aak, %bb.xs, %bb.vz, %bb.vr, %bb.vn, %bb.up, %bb.st, %bb.sh, %bb.se, %bb.rf, %bb.qv, %bb.qs, %bb.pr, %bb.og, %bb.ob, %bb.hw, %bb.hh, %bb.gt, %bb.do, %bb.df
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.aij = extractvalue { i64, ptr } %i.aii, 0, !dbg !94569
  %i.aik = extractvalue { i64, ptr } %i.aii, 1, !dbg !94569
  store i64 %i.aij, ptr %i.tf, align 8, !dbg !94569
  %i.ail = getelementptr inbounds nuw i8, ptr %i.tf, i64 8, !dbg !94569 ; 9 uses
  store ptr %i.aik, ptr %i.ail, align 8, !dbg !94569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.te), !dbg !94576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !dbg !94577
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dr, i64 noundef 1, i1 noundef zeroext false, i64 noundef 16, i64 noundef 144)
          to label %bb.dn unwind label %bb.dm, !dbg !94577

bb.dj:                                            ; preds = %bb.dq, %bb.dm
  %.pn2423 = phi { ptr, i32 } [ %i.air, %bb.dm ], [ %.pn2421, %bb.dq ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90701), !dbg !94578
  %i.aim = load i64, ptr %i.tf, align 8, !dbg !94579, !range !2315, !alias.scope !90701, !noundef !2293
  %i.ain = icmp eq i64 %i.aim, 0, !dbg !94579
  br i1 %i.ain, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.dk, !dbg !94579

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !90702), !dbg !94579
  call void @llvm.experimental.noalias.scope.decl(metadata !90703), !dbg !94580
  %i.aio = load ptr, ptr %i.ail, align 8, !dbg !94581, !alias.scope !90704, !nonnull !2293, !noundef !2293
  %i.aip = atomicrmw add ptr %i.aio, i64 -1 release, align 8, !dbg !94582, !noalias !90704
  %i.aiq = icmp eq i64 %i.aip, 1, !dbg !94583
  br i1 %i.aiq, label %bb.dl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !94583

bb.dl:                                            ; preds = %bb.dk
  fence acquire, !dbg !94584
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ail) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.ap, !dbg !94585

bb.dm:                                            ; preds = %bb.ga, %bb.do, %bb.di
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dn:                                            ; preds = %bb.di
  %i.ais = load i64, ptr %i.dr, align 8, !dbg !94577, !range !2315, !noundef !2293
  %i.ait = trunc nuw i64 %i.ais to i1, !dbg !94586
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.dr, i64 8, !dbg !94587
  %i.aiv = load i64, ptr %i.aiu, align 8, !dbg !94587, !range !2442, !noundef !2293 ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16, !dbg !94587 ; 2 uses
  br i1 %i.ait, label %bb.do, label %bb.dp, !dbg !94586, !prof !2300

bb.do:                                            ; preds = %bb.dn
  %i.aix = load i64, ptr %i.aiw, align 8, !dbg !94588
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.aiv, i64 %i.aix) #41
          to label %bb.dh unwind label %bb.dm, !dbg !94589

bb.dp:                                            ; preds = %bb.dn
  %i.aiy = load ptr, ptr %i.aiw, align 8, !dbg !94590, !nonnull !2293, !noundef !2293
  %i.aiz = icmp ne i64 %i.aiv, 0, !dbg !94591
  call void @llvm.assume(i1 %i.aiz), !dbg !94592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !dbg !94593
  store i64 %i.aiv, ptr %i.te, align 8, !dbg !94594
  %i.aja = getelementptr inbounds nuw i8, ptr %i.te, i64 8, !dbg !94594 ; 3 uses
  store ptr %i.aiy, ptr %i.aja, align 8, !dbg !94594
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.te, i64 16, !dbg !94594 ; 4 uses
  store i64 0, ptr %i.ajb, align 8, !dbg !94594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.td), !dbg !90723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tc), !dbg !90707
  %i.ajc = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.dr unwind label %bb.ef, !dbg !94595

bb.dq:                                            ; preds = %bb.ef, %.loopexit.split-lp, %.thread3700, %bb.eb, %bb.du
  %.pn2421 = phi { ptr, i32 } [ %i.ajn, %bb.du ], [ %.pn2419, %.loopexit.split-lp ], [ %.pn24173703, %.thread3700 ], [ %lpad.thr_comm.split-lp, %bb.ef ], [ %i.akj, %bb.eb ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.te) #43
          to label %bb.dj unwind label %bb.ap, !dbg !94596

bb.dr:                                            ; preds = %bb.dp
  %i.ajd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !94597
  %i.aje = icmp eq i8 %i.ajd, 2, !dbg !94598
  br i1 %i.aje, label %bb.dt, label %bb.ds, !dbg !94598, !prof !2316

end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh), !dbg !96533
  br label %bb.aiw, !dbg !96672

bb.ais:                                           ; preds = %bb.aio
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ix) #43
          to label %.thread4043 unwind label %bb.ap, !dbg !96618

.loopexit4626:                                    ; preds = %bb.ahv, %bb.aho, %bb.ahf, %bb.ahg, %bb.ahm
  %lpad.loopexit4628 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ait

.loopexit.split-lp4627:                           ; preds = %bb.ahr, %._crit_edge4751.thread
  %.not4552.not4714 = phi i1 [ false, %bb.ahr ], [ true, %._crit_edge4751.thread ]
  %lpad.loopexit.split-lp4629 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ait

bb.ait:                                           ; preds = %.loopexit.split-lp4627, %.loopexit4626
  %.not4552.not4713 = phi i1 [ false, %.loopexit4626 ], [ %.not4552.not4714, %.loopexit.split-lp4627 ]
  %lpad.phi4630 = phi { ptr, i32 } [ %lpad.loopexit4628, %.loopexit4626 ], [ %lpad.loopexit.split-lp4629, %.loopexit.split-lp4627 ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.jc) #43
          to label %bb.ahu unwind label %bb.ap, !dbg !96594

bb.aiu:                                           ; preds = %.thread4043.thread, %.thread4043, %bb.ahu
  %.pn22524060 = phi { ptr, i32 } [ %i.crf, %.thread4043.thread ], [ %lpad.phi4630, %bb.ahu ], [ %.pn2246, %.thread4043 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.jd) #43
          to label %bb.aha unwind label %bb.ap, !dbg !96561

bb.aiv:                                           ; preds = %bb.agy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je), !dbg !96526
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6530), !dbg !96526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh), !dbg !96533
  br label %bb.aiw, !dbg !96652

bb.aiw:                                           ; preds = %bb.air, %bb.ajc, %bb.aiv
  %.sroa.0951.6 = phi i8 [ 0, %bb.aiv ], [ %.sroa.0951.4, %bb.ajc ], [ 0, %bb.air ], !dbg !96515 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92557), !dbg !96652
  call void @llvm.experimental.noalias.scope.decl(metadata !92558), !dbg !96673
  %i.crg = load ptr, ptr %i.jj, align 8, !dbg !96674, !alias.scope !92559, !nonnull !2293, !noundef !2293
  %i.crh = atomicrmw add ptr %i.crg, i64 -1 release, align 8, !dbg !96675, !noalias !92559
  %i.cri = icmp eq i64 %i.crh, 1, !dbg !96676
  br i1 %i.cri, label %bb.aix, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2991, !dbg !96676

bb.aix:                                           ; preds = %bb.aiw
  fence acquire, !dbg !96677
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jj) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2991 unwind label %bb.age, !dbg !96678

bb.aiy:                                           ; preds = %bb.ail, %bb.ajb
  %.sroa.0949.2 = phi i1 [ false, %bb.ajb ], [ true, %bb.ail ], !dbg !96679
  %i.crj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ji) #43
          to label %bb.aij unwind label %bb.ap, !dbg !96680

bb.aiz:                                           ; preds = %bb.ail
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in), !dbg !96681
  %i.crk = load i64, ptr %.sroa.6573.0..sroa_idx574, align 8, !dbg !96682, !noundef !2293 ; 2 uses
  %i.crl = icmp ult i64 %i.crk, 384307168202282326, !dbg !96683
  call void @llvm.assume(i1 %i.crl), !dbg !96684
  %i.crm = icmp eq i64 %i.crk, 0, !dbg !96685
  br i1 %i.crm, label %bb.aja, label %bb.ajb, !dbg !96685

bb.aja:                                           ; preds = %bb.aiz
  %i.crn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96686
  store i64 %i.cra, ptr %i.crn, align 8, !dbg !96686
  store i64 18, ptr %0, align 8, !dbg !96686
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ji)
          to label %bb.ajc unwind label %.split4077.thread, !dbg !96680

bb.ajb:                                           ; preds = %bb.aiz
  %i.cro = load ptr, ptr %i.uc, align 16, !dbg !96687, !nonnull !2293, !align !2349, !noundef !2293
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cro, i64 192, !dbg !96687
  %i.crq = load ptr, ptr %i.crp, align 8, !dbg !96687, !nonnull !2293, !align !2349, !noundef !2293 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.im), !dbg !96688
  %i.crr = load ptr, ptr %i.jj, align 8, !dbg !96689, !nonnull !2293, !noundef !2293
  %i.crs = getelementptr inbounds nuw i8, ptr %i.im, i64 16, !dbg !96688
  store i64 %i.cra, ptr %i.crs, align 16, !dbg !96688
  %i.crt = getelementptr inbounds nuw i8, ptr %i.im, i64 8, !dbg !96688
  store ptr %i.crr, ptr %i.crt, align 8, !dbg !96688
  store i64 -9223372036854775799, ptr %i.im, align 16, !dbg !96688
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crq, i64 16, !dbg !96690
  %i.crv = load i64, ptr %i.cru, align 8, !dbg !96690, !noundef !2293 ; 2 uses
  %i.crw = icmp ult i64 %i.crv, 25063510969714065, !dbg !96691
  call void @llvm.assume(i1 %i.crw), !dbg !96692
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8push_mutBL_(ptr noalias noundef align 8 dereferenceable(24) %i.crq, ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.im)
          to label %bb.ajd unwind label %bb.aiy, !dbg !96693

bb.ajc:                                           ; preds = %bb.aja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji), !dbg !96680
  br label %bb.aiw, !dbg !96672

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2991: ; preds = %bb.aiw, %bb.aix, %bb.aje
  %.sroa.0951.7 = phi i8 [ %.sroa.0951.4, %bb.aje ], [ %.sroa.0951.6, %bb.aix ], [ %.sroa.0951.6, %bb.aiw ], !dbg !96515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jj), !dbg !96652
  %i.crx = load i64, ptr %i.jl, align 8, !dbg !96480, !range !2442, !noundef !2293
  %i.cry = icmp ne i64 %i.crx, -9223372036854775808, !dbg !96480
  %i.crz = trunc nuw i8 %.sroa.0951.7 to i1, !dbg !96480
  %or.cond = select i1 %i.cry, i1 %i.crz, i1 false, !dbg !96480
  br i1 %or.cond, label %bb.ajg, label %bb.ajf, !dbg !96480

bb.ajd:                                           ; preds = %bb.ajb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im), !dbg !96694
  %i.csa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96695
  store i64 %i.crv, ptr %i.csa, align 8, !dbg !96695
  store i64 18, ptr %0, align 8, !dbg !96695
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ji)
          to label %bb.aje unwind label %.split4077, !dbg !96680

bb.aje:                                           ; preds = %bb.ajd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji), !dbg !96680
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2991, !dbg !96672

bb.ajf:                                           ; preds = %bb.ajg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2991, %bb.agj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl), !dbg !96480
  br label %bb.gh, !dbg !94755

bb.ajg:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2991, %bb.agj
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.jl)
          to label %bb.ajf unwind label %bb.c, !dbg !96480

.thread4071:                                      ; preds = %bb.ags, %bb.agw, %bb.aha, %.split4077.thread, %bb.aij
  %.pn22574076 = phi { ptr, i32 } [ %lpad.thr_comm4078, %.split4077.thread ], [ %i.crj, %bb.aij ], [ %i.cmt, %bb.ags ], [ %i.cnb, %bb.agw ], [ %.pn2252.pn, %bb.aha ] ; 2 uses
  %.sroa.0951.24075 = phi i8 [ %.sroa.0951.3.ph, %.split4077.thread ], [ %.sroa.0951.4, %bb.aij ], [ 0, %bb.ags ], [ 0, %bb.agw ], [ 0, %bb.aha ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92568), !dbg !96652
  call void @llvm.experimental.noalias.scope.decl(metadata !92569), !dbg !96696
  %i.csb = load ptr, ptr %i.jj, align 8, !dbg !96697, !alias.scope !92570, !nonnull !2293, !noundef !2293
  %i.csc = atomicrmw add ptr %i.csb, i64 -1 release, align 8, !dbg !96698, !noalias !92570
  %i.csd = icmp eq i64 %i.csc, 1, !dbg !96699
  br i1 %i.csd, label %bb.ajh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993, !dbg !96699

bb.ajh:                                           ; preds = %.thread4071
  fence acquire, !dbg !96700
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jj) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993 unwind label %bb.ap, !dbg !96701

bb.aji:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit2993
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.jl) #43
          to label %.critedge2460 unwind label %bb.ap, !dbg !96480

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996: ; preds = %bb.aju, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread, %bb.ajv, %bb.ajj
  %.sroa.01003.0 = phi i8 [ %.sroa.01003.1, %bb.ajj ], [ %.sroa.01003.2, %bb.ajv ], [ %.sroa.01003.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread ], [ %.sroa.01003.2, %bb.aju ], !dbg !94291 ; 2 uses
  %.sroa.0998.0 = phi i8 [ %.sroa.0998.1, %bb.ajj ], [ %.sroa.0998.2, %bb.ajv ], [ %.sroa.0998.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread ], [ %.sroa.0998.2, %bb.aju ], !dbg !94293
  %.pn2235 = phi { ptr, i32 } [ %i.cse, %bb.ajj ], [ %.pn2233, %bb.ajv ], [ %.pn2233, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread ], [ %.pn2233, %bb.aju ] ; 2 uses
  %cond2543 = icmp eq i8 %.sroa.0998.0, 0, !dbg !96702
  br i1 %cond2543, label %bb.anr, label %bb.anv, !dbg !96702

bb.ajj:                                           ; preds = %bb.anl, %bb.akl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2699, %bb.ajr, %bb.ajq, %bb.ajn, %bb.ajl, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701.thread
  %.sroa.01003.1 = phi i8 [ 1, %bb.ajn ], [ 1, %bb.akl ], [ 0, %bb.anl ], [ 1, %bb.ajr ], [ 1, %bb.ajq ], [ 1, %bb.ajl ], [ 1, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701.thread ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2699 ], !dbg !94969
  %.sroa.0998.1 = phi i8 [ 1, %bb.ajn ], [ 1, %bb.akl ], [ %.sroa.0998.9415741854203, %bb.anl ], [ 1, %bb.ajr ], [ 1, %bb.ajq ], [ 1, %bb.ajl ], [ 1, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701.thread ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2699 ], !dbg !94293
  %i.cse = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !96703, !noalias !90561
  %i.csf = icmp eq i64 %.sroa.03562.0.copyload3563, -9223372036854775778, !dbg !96704
  br i1 %i.csf, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701.thread, label %bb.ajk, !dbg !96705

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701.thread: ; preds = %bb.x, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701
  %.sroa.63564.04091 = phi ptr [ %.sroa.63564.0.copyload3566, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701 ], [ %i.zp, %bb.x ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63564.04091) ]
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE15unwrap_or_clone0BO_(ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.rq, ptr noundef nonnull %.sroa.63564.04091)
          to label %bb.ajl unwind label %bb.ajj, !dbg !96706

bb.ajk:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701
  store i64 %.sroa.03562.0.copyload3563, ptr %i.rq, align 16, !dbg !96707
  %.sroa.63564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 8, !dbg !96707
  store ptr %.sroa.63564.0.copyload3566, ptr %.sroa.63564.0..sroa_idx, align 8, !dbg !96707
  %.sroa.83567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 16, !dbg !96707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83567.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83567, i64 352, i1 false), !dbg !96707
  br label %bb.ajl, !dbg !96708

bb.ajl:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2701.thread, %bb.ajk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83567), !dbg !96709
  %i.csg = load ptr, ptr %i.uc, align 16, !dbg !96710, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.df, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.rq, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.csg)
          to label %bb.ajm unwind label %bb.ajj, !dbg !92574

bb.ajm:                                           ; preds = %bb.ajl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rq), !dbg !96711
  %i.csh = load i64, ptr %i.df, align 16, !dbg !96712, !range !2573, !noundef !2293
  %.not2207 = icmp eq i64 %i.csh, 18, !dbg !96712
  br i1 %.not2207, label %bb.ajp, label %bb.ajn, !dbg !96713

bb.ajn:                                           ; preds = %bb.ajm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !96714
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0sb_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dg, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.df)
          to label %bb.ajo unwind label %bb.ajj, !dbg !96714

bb.ajo:                                           ; preds = %bb.ajn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.df, ptr noundef nonnull align 8 dereferenceable(72) %i.dg, i64 72, i1 false), !dbg !96715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !96716
  %.sroa.71355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16, !dbg !96717
  %.sroa.31358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !96718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.31358.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.71355.0..sroa_idx, i64 56, i1 false), !dbg !96717
  %i.csi = load <2 x i64>, ptr %i.df, align 16, !dbg !96717
  store <2 x i64> %i.csi, ptr %0, align 8, !dbg !96718
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.rr)
          to label %.thread4212 unwind label %2, !dbg !96702

bb.ajp:                                           ; preds = %bb.ajm
  %i.csj = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !96719
  %i.csk = load i64, ptr %i.csj, align 8, !dbg !96719, !noundef !2293 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rp), !dbg !96720
  %i.csl = load ptr, ptr %i.uc, align 16, !dbg !96721, !nonnull !2293, !align !2349, !noundef !2293
  %i.csm = getelementptr inbounds nuw i8, ptr %i.csl, i64 192, !dbg !96721
  %i.csn = load ptr, ptr %i.csm, align 8, !dbg !96721, !nonnull !2293, !align !2349, !noundef !2293 ; 3 uses
  %i.cso = getelementptr inbounds nuw i8, ptr %i.csn, i64 16, !dbg !96722
  %i.csp = load i64, ptr %i.cso, align 8, !dbg !96722, !noundef !2293
  %i.csq = icmp ult i64 %i.csk, %i.csp, !dbg !96723
  br i1 %i.csq, label %bb.ajr, label %bb.ajq, !dbg !96723, !prof !2316

bb.ajq:                                           ; preds = %bb.ajp
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #41
          to label %bb.dh unwind label %bb.ajj, !dbg !96724

bb.ajr:                                           ; preds = %bb.ajp
  %i.csr = getelementptr inbounds nuw i8, ptr %i.csn, i64 8, !dbg !96725
  %i.css = load ptr, ptr %i.csr, align 8, !dbg !96725, !nonnull !2293, !noundef !2293
  %i.cst = getelementptr inbounds nuw [368 x i8], ptr %i.css, i64 %i.csk, !dbg !96726
  %i.csu = invoke { i64, ptr } @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR6schema(ptr noundef nonnull align 16 %i.cst, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.csn)
          to label %bb.ajs unwind label %bb.ajj, !dbg !96727 ; 2 uses

bb.ajs:                                           ; preds = %bb.ajr
  %i.csv = extractvalue { i64, ptr } %i.csu, 0, !dbg !96721 ; 2 uses
  %i.csw = extractvalue { i64, ptr } %i.csu, 1, !dbg !96721 ; 2 uses
  store i64 %i.csv, ptr %i.rp, align 8, !dbg !96721
  %i.csx = getelementptr inbounds nuw i8, ptr %i.rp, i64 8, !dbg !96721 ; 8 uses
  store ptr %i.csw, ptr %i.csx, align 8, !dbg !96721
  %i.csy = getelementptr inbounds nuw i8, ptr %i.rs, i64 16, !dbg !96728 ; 4 uses
  %i.csz = load i64, ptr %i.csy, align 8, !dbg !96728, !noundef !2293 ; 3 uses
  %i.cta = icmp ult i64 %i.csz, 64051194700380388, !dbg !96729
  call void @llvm.assume(i1 %i.cta), !dbg !96730
  %i.ctb = icmp eq i64 %i.csz, 1, !dbg !96731
  br i1 %i.ctb, label %bb.ajt, label %bb.akh, !dbg !96731

bb.ajt:                                           ; preds = %bb.ajs
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.rs, i64 8, !dbg !96732
  %i.ctd = load ptr, ptr %i.ctc, align 8, !dbg !96732, !nonnull !2293, !noundef !2293 ; 2 uses
  %i.cte = getelementptr inbounds nuw i8, ptr %i.ctd, i64 112, !dbg !96733
  %i.ctf = load i64, ptr %i.cte, align 16, !dbg !96733, !range !2789, !noundef !2293 ; 2 uses
  %i.ctg = icmp ne i64 %i.ctf, -9223372036854775795, !dbg !96733
  call void @llvm.assume(i1 %i.ctg), !dbg !96733
  %i.cth = icmp eq i64 %i.ctf, -9223372036854775805, !dbg !96734
  br i1 %i.cth, label %bb.ajx, label %bb.akh, !dbg !96734

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread: ; preds = %.thread4116, %bb.alk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103, %.thread4206, %bb.akb, %bb.ajw
  %.sroa.01003.2 = phi i8 [ %.sroa.01003.3, %bb.ajw ], [ 0, %.thread4206 ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103 ], [ 1, %bb.akb ], [ 0, %bb.alk ], [ 0, %.thread4116 ], !dbg !94969 ; 3 uses
  %.sroa.0998.2 = phi i8 [ 1, %bb.ajw ], [ 1, %.thread4206 ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103 ], [ 1, %bb.akb ], [ 0, %bb.alk ], [ 1, %.thread4116 ], !dbg !94293 ; 3 uses
  %.pn2233 = phi { ptr, i32 } [ %i.ctn, %bb.ajw ], [ %.pn22314211, %.thread4206 ], [ %lpad.thr_comm.split-lp4111, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103 ], [ %i.ctu, %bb.akb ], [ %lpad.thr_comm.split-lp4129, %bb.alk ], [ %.pn22184121, %.thread4116 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92608), !dbg !96735
  %i.cti = load i64, ptr %i.rp, align 8, !dbg !96736, !range !2315, !alias.scope !92608, !noundef !2293
  %i.ctj = icmp eq i64 %i.cti, 0, !dbg !96736
  br i1 %i.ctj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996, label %bb.aju, !dbg !96736

bb.aju:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !92609), !dbg !96736
  call void @llvm.experimental.noalias.scope.decl(metadata !92610), !dbg !96737
  %i.ctk = load ptr, ptr %i.csx, align 8, !dbg !96738, !alias.scope !92611, !nonnull !2293, !noundef !2293
  %i.ctl = atomicrmw add ptr %i.ctk, i64 -1 release, align 8, !dbg !96739, !noalias !92611
  %i.ctm = icmp eq i64 %i.ctl, 1, !dbg !96740
  br i1 %i.ctm, label %bb.ajv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996, !dbg !96740

bb.ajv:                                           ; preds = %bb.aju
  fence acquire, !dbg !96741
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.csx) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996 unwind label %bb.ap, !dbg !96742

bb.ajw:                                           ; preds = %bb.akq, %bb.akn, %bb.anm, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3007, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3005, %bb.akf, %bb.akd, %bb.ajz, %bb.ajx
  %.sroa.01003.3 = phi i8 [ 1, %bb.akd ], [ 0, %bb.anm ], [ 1, %bb.ajx ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3007 ], [ 1, %bb.akq ], [ 1, %bb.ajz ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3005 ], [ 1, %bb.akn ], [ 1, %bb.akf ], !dbg !94969
  %i.ctn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread

bb.ajx:                                           ; preds = %bb.ajt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ro), !dbg !92630
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6197), !dbg !92630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rn), !dbg !92630
  %i.cto = trunc nuw i64 %i.csv to i1, !dbg !96743
  %.sroa.01359.0 = select i1 %i.cto, ptr %i.csx, ptr %i.csw, !dbg !96743
  %i.ctp = load ptr, ptr %.sroa.01359.0, align 8, !dbg !96744, !nonnull !2293, !noundef !2293
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.ctp, i64 16, !dbg !96745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rm), !dbg !92622
  %i.ctr = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.ajy unwind label %bb.ajw, !dbg !96746

bb.ajy:                                           ; preds = %bb.ajx
  %i.cts = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !96747
  %i.ctt = icmp eq i8 %i.cts, 2, !dbg !96748
  br i1 %i.ctt, label %bb.aka, label %bb.ajz, !dbg !96748, !prof !2316

bb.ajz:                                           ; preds = %bb.ajy
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.aka unwind label %bb.ajw, !dbg !96749

bb.aka:                                           ; preds = %bb.ajy, %bb.ajz
  store i64 0, ptr %i.rm, align 8, !dbg !96750
  %.sroa.43599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rm, i64 8, !dbg !96750
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43599.0..sroa_idx, align 8, !dbg !96750
  %.sroa.53600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rm, i64 16, !dbg !96750
  store i64 0, ptr %.sroa.53600.0..sroa_idx, align 8, !dbg !96750
  %.sroa.63601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rm, i64 24, !dbg !96750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.63601.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @904, i64 32, i1 false), !dbg !96750
  %.sroa.73602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rm, i64 56, !dbg !96750
  store i64 %i.ctr, ptr %.sroa.73602.0..sroa_idx, align 8, !dbg !96750
  invoke void @_RNvMs0_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_8Selector12into_columns(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.rn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ctd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ctq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.rm)
          to label %bb.akc unwind label %bb.akb, !dbg !96751

bb.akb:                                           ; preds = %bb.ake, %bb.aka
  %i.ctu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.rm) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread unwind label %bb.ap, !dbg !96752

bb.akc:                                           ; preds = %bb.aka
  %i.ctv = load i64, ptr %i.rn, align 8, !dbg !96753, !range !2573, !noundef !2293 ; 2 uses
  %.not2209 = icmp eq i64 %i.ctv, 18, !dbg !96753
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.rn, i64 8, !dbg !96754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6197, ptr noundef nonnull align 8 dereferenceable(64) %i.ctw, i64 64, i1 false), !dbg !96754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rn), !dbg !96755
  br i1 %.not2209, label %bb.ake, label %bb.akd, !dbg !96756

bb.akd:                                           ; preds = %bb.akc
  %.sroa.21365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.21365.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6197, i64 64, i1 false), !dbg !96755
  store i64 %i.ctv, ptr %0, align 8, !dbg !96757
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.rm)
          to label %bb.aki unwind label %bb.ajw, !dbg !96752

bb.ake:                                           ; preds = %bb.akc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ro, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6197, i64 64, i1 false), !dbg !92630
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ro, i64 48, !dbg !96758
  %i.cty = load i64, ptr %i.ctx, align 8, !dbg !96758, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.ro)
          to label %bb.akf unwind label %bb.akb, !dbg !96752

bb.akf:                                           ; preds = %bb.ake
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.rm)
          to label %bb.akg unwind label %bb.ajw, !dbg !96752

bb.akg:                                           ; preds = %bb.akf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rm), !dbg !96752
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6197), !dbg !96752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ro), !dbg !96752
  br label %bb.akh, !dbg !96752

bb.akh:                                           ; preds = %bb.ajt, %bb.ajs, %bb.akg
  %.sroa.0192.0 = phi i64 [ %i.cty, %bb.akg ], [ %i.csz, %bb.ajs ], [ 1, %bb.ajt ], !dbg !96759 ; 2 uses
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.rr, i64 16, !dbg !96760 ; 4 uses
  %i.cua = load i64, ptr %i.ctz, align 8, !dbg !96760, !noundef !2293 ; 4 uses
  store i64 %i.cua, ptr %i.rl, align 8, !dbg !96760
  %i.cub = icmp sgt i64 %i.cua, -1, !dbg !96761
  call void @llvm.assume(i1 %i.cub), !dbg !96762
  %i.cuc = icmp eq i64 %i.cua, %.sroa.0192.0, !dbg !96763
  %i.cud = icmp eq i64 %i.cua, 1
  %or.cond15 = or i1 %i.cuc, %i.cud, !dbg !96763
  br i1 %or.cond15, label %bb.akm, label %bb.akn, !dbg !96763

bb.aki:                                           ; preds = %bb.akd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rm), !dbg !96752
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6197), !dbg !96752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ro), !dbg !96752
  br label %bb.akj, !dbg !96764

bb.akj:                                           ; preds = %bb.akr, %bb.ako, %bb.aki
  call void @llvm.experimental.noalias.scope.decl(metadata !92641), !dbg !96735
  %i.cue = load i64, ptr %i.rp, align 8, !dbg !96765, !range !2315, !alias.scope !92641, !noundef !2293
  %i.cuf = icmp eq i64 %i.cue, 0, !dbg !96765
  br i1 %i.cuf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3003, label %bb.akk, !dbg !96765

bb.akk:                                           ; preds = %bb.akj
  call void @llvm.experimental.noalias.scope.decl(metadata !92642), !dbg !96765
  call void @llvm.experimental.noalias.scope.decl(metadata !92643), !dbg !96766
  %i.cug = load ptr, ptr %i.csx, align 8, !dbg !96767, !alias.scope !92644, !nonnull !2293, !noundef !2293
  %i.cuh = atomicrmw add ptr %i.cug, i64 -1 release, align 8, !dbg !96768, !noalias !92644
  %i.cui = icmp eq i64 %i.cuh, 1, !dbg !96769
  br i1 %i.cui, label %bb.akl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3003, !dbg !96769

bb.akl:                                           ; preds = %bb.akk
  fence acquire, !dbg !96770
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.csx) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3003 unwind label %bb.ajj, !dbg !96771

bb.akm:                                           ; preds = %bb.akh
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.rr, i64 24, !dbg !96772 ; 4 uses
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.rr, i64 40, !dbg !96772 ; 3 uses
  %i.cul = load i64, ptr %i.cuk, align 8, !dbg !96772, !noundef !2293 ; 5 uses
  store i64 %i.cul, ptr %i.rg, align 8, !dbg !96772
  %i.cum = icmp sgt i64 %i.cul, -1, !dbg !96773
  call void @llvm.assume(i1 %i.cum), !dbg !96774
  %i.cun = icmp eq i64 %i.cul, %.sroa.0192.0, !dbg !96775
  %i.cuo = icmp eq i64 %i.cul, 1
  %or.cond17 = or i1 %i.cun, %i.cuo, !dbg !96775
  br i1 %or.cond17, label %bb.akp, label %bb.akq, !dbg !96775

bb.akn:                                           ; preds = %bb.akh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rk), !dbg !96776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ri), !dbg !96777
  %i.cup = load i64, ptr %i.csy, align 8, !dbg !96778, !noundef !2293 ; 2 uses
  store i64 %i.cup, ptr %i.ri, align 8, !dbg !96778
  %i.cuq = icmp ult i64 %i.cup, 64051194700380388, !dbg !96779
  call void @llvm.assume(i1 %i.cuq), !dbg !96780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rh), !dbg !96781
  store ptr %i.rl, ptr %i.rh, align 8, !dbg !96781
  %.sroa.41369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rh, i64 8, !dbg !96781
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.41369.0..sroa_idx, align 8, !dbg !96781
  %i.cur = getelementptr inbounds nuw i8, ptr %i.rh, i64 16, !dbg !96781
  store ptr %i.ri, ptr %i.cur, align 8, !dbg !96781
  %.sroa.41373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rh, i64 24, !dbg !96781
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.41373.0..sroa_idx, align 8, !dbg !96781
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.rj, ptr noundef nonnull @729, ptr noundef nonnull %i.rh)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3005 unwind label %bb.ajw, !dbg !96782

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3005: ; preds = %bb.akn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rh), !dbg !96776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ri), !dbg !96776
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.rk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.rj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @730)
          to label %bb.ako unwind label %bb.ajw, !dbg !96783

bb.ako:                                           ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3005
  %.sroa.43390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43390.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.rk, i64 24, i1 false), !dbg !96776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rk), !dbg !96776
  store i64 2, ptr %0, align 8, !dbg !96776
  br label %bb.akj, !dbg !96784

bb.akp:                                           ; preds = %bb.akm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rb), !dbg !96785
  store i64 0, ptr %i.rb, align 8, !dbg !96786
  %i.cus = getelementptr inbounds nuw i8, ptr %i.rb, i64 8, !dbg !96786
  store ptr inttoptr (i64 16 to ptr), ptr %i.cus, align 8, !dbg !96786
  %i.cut = getelementptr inbounds nuw i8, ptr %i.rb, i64 16, !dbg !96786
  store i64 0, ptr %i.cut, align 8, !dbg !96786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ra), !dbg !96787
  store i64 0, ptr %i.ra, align 8, !dbg !96788
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.ra, i64 8, !dbg !96788
  store ptr inttoptr (i64 1 to ptr), ptr %i.cuu, align 8, !dbg !96788
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.ra, i64 16, !dbg !96788
  store i64 0, ptr %i.cuv, align 8, !dbg !96788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qz), !dbg !96789
  store i64 0, ptr %i.qz, align 8, !dbg !96790
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.qz, i64 8, !dbg !96790
  store ptr inttoptr (i64 1 to ptr), ptr %i.cuw, align 8, !dbg !96790
  %i.cux = getelementptr inbounds nuw i8, ptr %i.qz, i64 16, !dbg !96790
  store i64 0, ptr %i.cux, align 8, !dbg !96790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qx), !dbg !96791
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.rs, i64 8, !dbg !96791
  %i.cuz = load ptr, ptr %i.cuy, align 8, !dbg !96791, !nonnull !2293, !noundef !2293 ; 3 uses
  %i.cva = load i64, ptr %i.rs, align 8, !dbg !96791, !range !2736, !noundef !2293
  %i.cvb = load i64, ptr %i.csy, align 8, !dbg !96791, !noundef !2293 ; 2 uses
  %i.cvc = icmp ult i64 %i.cvb, 64051194700380388, !dbg !96792
  call void @llvm.assume(i1 %i.cvc), !dbg !96793
  %i.cvd = getelementptr inbounds nuw [144 x i8], ptr %i.cuz, i64 %i.cvb, !dbg !96794
  store ptr %i.cuz, ptr %i.qx, align 8, !dbg !96795
  %i.cve = getelementptr inbounds nuw i8, ptr %i.qx, i64 16, !dbg !96795
  store i64 %i.cva, ptr %i.cve, align 8, !dbg !96795
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.qx, i64 8, !dbg !96795
  store ptr %i.cuz, ptr %i.cvf, align 8, !dbg !96795
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.qx, i64 24, !dbg !96795
  store ptr %i.cvd, ptr %i.cvg, align 8, !dbg !96795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qw), !dbg !92665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qv), !dbg !92665
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.rr, i64 32, !dbg !96796
  %i.cvi = load ptr, ptr %i.cvh, align 8, !dbg !96796, !nonnull !2293, !noundef !2293 ; 2 uses
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvi, i64 %i.cul, !dbg !96797
  invoke void @_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters5cycleINtB2_5CycleINtNtNtB8_5slice4iter4IterbEE3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.qv, ptr noundef nonnull %i.cvi, ptr noundef nonnull %i.cvj)
          to label %bb.akt unwind label %bb.anp, !dbg !96798

bb.akq:                                           ; preds = %bb.akm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rf), !dbg !96799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rd), !dbg !96800
  %i.cvk = load i64, ptr %i.csy, align 8, !dbg !96801, !noundef !2293 ; 2 uses
  store i64 %i.cvk, ptr %i.rd, align 8, !dbg !96801
  %i.cvl = icmp ult i64 %i.cvk, 64051194700380388, !dbg !96802
  call void @llvm.assume(i1 %i.cvl), !dbg !96803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rc), !dbg !96804
  store ptr %i.rg, ptr %i.rc, align 8, !dbg !96804
  %.sroa.41379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 8, !dbg !96804
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.41379.0..sroa_idx, align 8, !dbg !96804
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.rc, i64 16, !dbg !96804
  store ptr %i.rd, ptr %i.cvm, align 8, !dbg !96804
  %.sroa.41383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 24, !dbg !96804
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.41383.0..sroa_idx, align 8, !dbg !96804
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.re, ptr noundef nonnull @731, ptr noundef nonnull %i.rc)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3007 unwind label %bb.ajw, !dbg !96805

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3007: ; preds = %bb.akq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rc), !dbg !96799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rd), !dbg !96799
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.rf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.re, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @732)
          to label %bb.akr unwind label %bb.ajw, !dbg !96806

bb.akr:                                           ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit3007
  %.sroa.43398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43398.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.rf, i64 24, i1 false), !dbg !96799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rf), !dbg !96799
  store i64 2, ptr %0, align 8, !dbg !96799
  br label %bb.akj, !dbg !96807

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3003: ; preds = %bb.akk, %bb.akj, %bb.akl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rp), !dbg !96735
  br label %bb.aks, !dbg !96702

bb.aks:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3031, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3003
  %.sroa.01003.4 = phi i8 [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3003 ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3031 ], !dbg !94969 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.rr)
          to label %.thread4212 unwind label %2, !dbg !96702

bb.akt:                                           ; preds = %bb.akp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qu), !dbg !92689
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.rr, i64 8, !dbg !96808
  %i.cvo = load ptr, ptr %i.cvn, align 8, !dbg !96808, !nonnull !2293, !noundef !2293 ; 2 uses
  %i.cvp = load i64, ptr %i.ctz, align 8, !dbg !96809, !noundef !2293
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.cvo, i64 %i.cvp, !dbg !96810
  invoke void @_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters5cycleINtB2_5CycleINtNtNtB8_5slice4iter4IterbEE3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.qu, ptr noundef nonnull %i.cvo, ptr noundef nonnull %i.cvq)
          to label %bb.aku unwind label %bb.anp, !dbg !96811

bb.aku:                                           ; preds = %bb.akt
  call void @llvm.experimental.noalias.scope.decl(metadata !92701), !dbg !96812
  call void @llvm.experimental.noalias.scope.decl(metadata !92702), !dbg !96812
  call void @llvm.experimental.noalias.scope.decl(metadata !92703), !dbg !96813
  call void @llvm.experimental.noalias.scope.decl(metadata !92704), !dbg !96813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.qv, i64 32, i1 false), !dbg !96814, !alias.scope !92705
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.qw, i64 32, !dbg !96814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cvr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.qu, i64 32, i1 false), !dbg !96814, !alias.scope !92706
  %.64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qw, i64 64, !dbg !96814
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.64..64..64..sroa_idx, i8 0, i64 16, i1 false), !dbg !96814, !alias.scope !92707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qu), !dbg !96815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qv), !dbg !96815
  call void @llvm.experimental.noalias.scope.decl(metadata !92708), !dbg !96816
  call void @llvm.experimental.noalias.scope.decl(metadata !92709), !dbg !96816
  call void @llvm.experimental.noalias.scope.decl(metadata !92710), !dbg !96817
  call void @llvm.experimental.noalias.scope.decl(metadata !92711), !dbg !96817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.qy, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.qx, i64 32, i1 false), !dbg !96818, !alias.scope !92712
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.qy, i64 32, !dbg !96818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cvs, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.qw, i64 80, i1 false), !dbg !96818, !alias.scope !92713
  %.112..112..112..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qy, i64 112, !dbg !96818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.112..112..112..sroa_idx, i8 0, i64 16, i1 false), !dbg !96818, !alias.scope !92714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qw), !dbg !96819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qx), !dbg !96819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qt), !dbg !96791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.qt, ptr noundef nonnull align 8 dereferenceable(128) %i.qy, i64 128, i1 false), !dbg !96791
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.qs, i64 112
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.qs, i64 144
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.qs, i64 152
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.qq, i64 16 ; 3 uses
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %bb.akv, !dbg !96820

bb.akv:                                           ; preds = %bb.anc, %bb.aku
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qs), !dbg !96821
  invoke fastcc void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBN_INtNtB7_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEB2A_EEINtB5_7ZipImplBW_B2w_E4nextB1Q_(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.qs, ptr noalias noundef align 8 dereferenceable(128) %i.qt)
          to label %bb.akw unwind label %.loopexit.split-lp4637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !96822

.thread4162:                                      ; preds = %.loopexit.split-lp4637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.and, %bb.ano
  %.pn2224.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp4168, %bb.ano ], [ %lpad.thr_comm4174, %bb.and ], [ %lpad.loopexit.split-lp5314, %.loopexit.split-lp4637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.qt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread unwind label %bb.ap, !dbg !96823

bb.akw:                                           ; preds = %bb.akv
  %i.cwe = load i64, ptr %i.cvt, align 16, !dbg !96821, !range !2305, !noundef !2293
  %.not2210 = icmp eq i64 %i.cwe, -9223372036854775780, !dbg !96821
  br i1 %.not2210, label %bb.aky, label %bb.akx, !dbg !96821

bb.akx:                                           ; preds = %bb.akw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qr), !dbg !96824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.qr, ptr noundef nonnull align 16 dereferenceable(144) %i.qs, i64 144, i1 false), !dbg !96824
  %i.cwf = load ptr, ptr %i.cvu, align 16, !dbg !96825, !nonnull !2293, !noundef !2293
  %i.cwg = load i8, ptr %i.cwf, align 1, !dbg !96825, !range !2317, !noundef !2293
  %i.cwh = load ptr, ptr %i.cvv, align 8, !dbg !96826, !nonnull !2293, !noundef !2293
  %i.cwi = load i8, ptr %i.cwh, align 1, !dbg !96826, !range !2317, !noundef !2293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qq), !dbg !96827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qp), !dbg !92717
  %i.cwj = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 144)
          to label %bb.amv unwind label %bb.ano, !dbg !96828 ; 2 uses

bb.aky:                                           ; preds = %bb.akw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qs), !dbg !96829
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.qt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit3010 unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4112, !dbg !96830

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4112: ; preds = %bb.amy, %bb.aky
  %lpad.thr_comm4110.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread, !dbg !96831

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit3010: ; preds = %bb.aky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qt), !dbg !96832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qo), !dbg !96833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr noundef nonnull align 8 dereferenceable(24) %i.ra, i64 24, i1 false), !dbg !96833
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.cuj)
          to label %bb.ala unwind label %bb.akz, !dbg !96834

bb.akz:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit3010
  %i.cwk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cuj, ptr noundef nonnull align 8 dereferenceable(24) %i.qo, i64 24, i1 false), !dbg !96834
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread, !dbg !96835

bb.ala:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit3010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cuj, ptr noundef nonnull align 8 dereferenceable(24) %i.qo, i64 24, i1 false), !dbg !96834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qo), !dbg !96835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qn), !dbg !96836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qn, ptr noundef nonnull align 8 dereferenceable(24) %i.qz, i64 24, i1 false), !dbg !96836
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.rr)
          to label %bb.alb unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread4527, !dbg !96837

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread4527: ; preds = %bb.ala
  %i.cwl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rr, ptr noundef nonnull align 8 dereferenceable(24) %i.qn, i64 24, i1 false), !dbg !96837
  br label %.thread4206, !dbg !96838

bb.alb:                                           ; preds = %bb.ala
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rr, ptr noundef nonnull align 8 dereferenceable(24) %i.qn, i64 24, i1 false), !dbg !96837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qn), !dbg !96839
  %i.cwm = load ptr, ptr %i.uc, align 16, !dbg !96840, !nonnull !2293, !align !2349, !noundef !2293 ; 2 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cwm, i64 184, !dbg !96841
  %i.cwo = load ptr, ptr %i.cwn, align 8, !dbg !96841, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RINvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9stack_optNtB5_19ConversionOptimizer12fill_scratchRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB9_7expr_ir6ExprIRERB2g_EBb_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.cwm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cwo)
          to label %bb.alc unwind label %bb.ani, !dbg !96842

bb.alc:                                           ; preds = %bb.alb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qm), !dbg !96843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qm, ptr noundef nonnull align 8 dereferenceable(24) %i.rb, i64 24, i1 false), !dbg !96844
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.qm, i64 16, !dbg !96845 ; 5 uses
  %i.cwq = load i64, ptr %i.cwp, align 8, !dbg !96845, !noundef !2293 ; 3 uses
  %i.cwr = icmp ult i64 %i.cwq, 82351536043346213, !dbg !96846
  call void @llvm.assume(i1 %i.cwr), !dbg !96847
  %i.cws = icmp samesign ugt i64 %i.cwq, 1, !dbg !96848
  br i1 %i.cws, label %bb.ale, label %bb.ald, !dbg !96848

bb.ald:                                           ; preds = %bb.alc
  %i.cwt = icmp eq i64 %i.cwq, 0, !dbg !96849
  br i1 %i.cwt, label %bb.alg, label %bb.alf, !dbg !96850

bb.ale:                                           ; preds = %bb.alc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ql), !dbg !96851
  %i.cwu = load ptr, ptr %i.uc, align 16, !dbg !96852, !nonnull !2293, !align !2349, !noundef !2293
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwu, i64 192, !dbg !96852
  %i.cww = load ptr, ptr %i.cwv, align 8, !dbg !96852, !nonnull !2293, !align !2349, !noundef !2293 ; 3 uses
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cww, i64 16, !dbg !96853
  %i.cwy = load i64, ptr %i.cwx, align 8, !dbg !96853, !noundef !2293
  %i.cwz = icmp ult i64 %i.csk, %i.cwy, !dbg !96854
  br i1 %i.cwz, label %bb.alj, label %bb.ali, !dbg !96854, !prof !2316

bb.alf:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3019, %bb.ald
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.qg, i64 40, !dbg !96855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cxa, ptr noundef nonnull align 8 dereferenceable(24) %i.qm, i64 24, i1 false), !dbg !96856
  %i.cxb = trunc nuw i64 %.sroa.0179.0.copyload to i1, !dbg !96857 ; 2 uses
  %.sroa.5241.sroa.4.0 = select i1 %i.cxb, i64 %.sroa.3181.0.copyload, i64 undef, !dbg !96857
  %.sroa.5241.sroa.0.0 = select i1 %i.cxb, i64 %.sroa.2180.0.copyload, i64 undef, !dbg !96857
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.qg, i64 64, !dbg !96855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cxc, ptr noundef nonnull align 8 dereferenceable(64) %i.rr, i64 64, i1 false), !dbg !96858
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.qg, i64 128, !dbg !96855
  store i64 %i.csk, ptr %i.cxd, align 16, !dbg !96855
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.qg, i64 8, !dbg !96855
  store i64 %.sroa.0179.0.copyload, ptr %i.cxe, align 8, !dbg !96855
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qg, i64 16, !dbg !96855
  store i64 %.sroa.5241.sroa.0.0, ptr %.sroa.5241.0..sroa_idx, align 16, !dbg !96855
  %.sroa.5241.sroa.4.0..sroa.5241.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.qg, i64 24, !dbg !96855
  store i64 %.sroa.5241.sroa.4.0, ptr %.sroa.5241.sroa.4.0..sroa.5241.0..sroa_idx.sroa_idx, align 8, !dbg !96855
  %.sroa.5241.sroa.5.0..sroa.5241.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.qg, i64 32, !dbg !96855
  store ptr null, ptr %.sroa.5241.sroa.5.0..sroa.5241.0..sroa_idx.sroa_idx, align 16, !dbg !96855
  store i64 -9223372036854775797, ptr %i.qg, align 16, !dbg !96855
  %i.cxf = load ptr, ptr %i.uc, align 16, !dbg !96859, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14run_conversion(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.qg, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.cxf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @736, i64 noundef 4)
          to label %bb.ami unwind label %bb.alk, !dbg !96860

bb.alg:                                           ; preds = %bb.ald
  %i.cxg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96861
  store i64 %i.csk, ptr %i.cxg, align 8, !dbg !96861
  store i64 18, ptr %0, align 8, !dbg !96861
  br label %bb.alh, !dbg !96862

bb.alh:                                           ; preds = %bb.amh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3026, %bb.alg
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.qm)
          to label %bb.ang unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103, !dbg !96863

bb.ali:                                           ; preds = %bb.ale
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #41
          to label %bb.dh unwind label %.thread4130, !dbg !96864

bb.alj:                                           ; preds = %bb.ale
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cww, i64 8, !dbg !96865
  %i.cxi = load ptr, ptr %i.cxh, align 8, !dbg !96865, !nonnull !2293, !noundef !2293
  %i.cxj = getelementptr inbounds nuw [368 x i8], ptr %i.cxi, i64 %i.csk, !dbg !96866
  %i.cxk = invoke { i64, ptr } @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR6schema(ptr noundef nonnull align 16 %i.cxj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cww)
          to label %bb.all unwind label %.thread4130, !dbg !96867 ; 2 uses

.thread4130:                                      ; preds = %bb.amu, %bb.amd, %bb.alj, %bb.ali
  %lpad.thr_comm4128 = landingpad { ptr, i32 }
          cleanup
  br label %.thread4116, !dbg !96863

bb.alk:                                           ; preds = %bb.alf, %bb.amj
  %lpad.thr_comm.split-lp4129 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread, !dbg !96863

bb.all:                                           ; preds = %bb.alj
end_hunk_2
begin_hunk_3_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a

bb.ams:                                           ; preds = %bb.amm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qk), !dbg !96907
  call void @llvm.experimental.noalias.scope.decl(metadata !92799), !dbg !96924
  %i.dae = load i64, ptr %i.ql, align 8, !dbg !96966, !range !2315, !alias.scope !92799, !noundef !2293
  %i.daf = icmp eq i64 %i.dae, 0, !dbg !96966
  br i1 %i.daf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3026, label %bb.amt, !dbg !96966

bb.amt:                                           ; preds = %bb.ams
  call void @llvm.experimental.noalias.scope.decl(metadata !92800), !dbg !96966
  call void @llvm.experimental.noalias.scope.decl(metadata !92801), !dbg !96967
  %i.dag = load ptr, ptr %i.cxn, align 8, !dbg !96968, !alias.scope !92802, !nonnull !2293, !noundef !2293
  %i.dah = atomicrmw add ptr %i.dag, i64 -1 release, align 8, !dbg !96969, !noalias !92802
  %i.dai = icmp eq i64 %i.dah, 1, !dbg !96970
  br i1 %i.dai, label %bb.amu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3026, !dbg !96970

bb.amu:                                           ; preds = %bb.amt
  fence acquire, !dbg !96971
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cxn) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3026 unwind label %.thread4130, !dbg !96972

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3026: ; preds = %bb.amt, %bb.ams, %bb.amu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ql), !dbg !96924
  br label %bb.alh, !dbg !96862

.loopexit.split-lp4632.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.amp, %bb.alm, %bb.alx
  %lpad.loopexit.split-lp5307 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.qk) #43
          to label %.thread4133 unwind label %bb.ap, !dbg !96907

.thread4116:                                      ; preds = %bb.amf, %.thread4133, %bb.ame, %.thread4130
  %.pn22184121 = phi { ptr, i32 } [ %lpad.thr_comm4128, %.thread4130 ], [ %.pn2216, %bb.ame ], [ %.pn2216, %.thread4133 ], [ %.pn2216, %bb.amf ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.qm) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread unwind label %bb.ap, !dbg !96863

bb.amv:                                           ; preds = %bb.akx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.cwj, ptr noundef nonnull align 16 dereferenceable(144) %i.qr, i64 144, i1 false), !dbg !96973
  store i64 1, ptr %i.qp, align 8, !dbg !96974
  store ptr %i.cwj, ptr %i.cvw, align 8, !dbg !96974
  store i64 1, ptr %i.cvx, align 8, !dbg !96974
  %i.daj = load ptr, ptr %i.uc, align 16, !dbg !96975, !nonnull !2293, !align !2349, !noundef !2293 ; 3 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daj, i64 192, !dbg !96975
  %i.dal = load ptr, ptr %i.dak, align 8, !dbg !96975, !nonnull !2293, !align !2349, !noundef !2293
  %i.dam = getelementptr inbounds nuw i8, ptr %i.daj, i64 184, !dbg !96976
  %i.dan = load ptr, ptr %i.dam, align 8, !dbg !96976, !nonnull !2293, !align !2349, !noundef !2293
  %i.dao = getelementptr inbounds nuw i8, ptr %i.daj, i64 200, !dbg !96977
  %i.dap = load ptr, ptr %i.dao, align 8, !dbg !96977, !nonnull !2293, !align !3282, !noundef !2293
  invoke void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5utils18expand_expressions(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.dd, i64 noundef %i.csk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.qp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dal, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dan, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.dap)
          to label %bb.amw unwind label %.loopexit.split-lp4637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !92808

bb.amw:                                           ; preds = %bb.amv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qp), !dbg !96978
  %i.daq = load i64, ptr %i.dd, align 8, !dbg !96979, !range !2573, !noundef !2293
  %.not2220 = icmp eq i64 %i.daq, 18, !dbg !96979
  br i1 %.not2220, label %bb.amz, label %bb.amx, !dbg !96980

bb.amx:                                           ; preds = %bb.amw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !96981
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0sc_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.de, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.dd)
          to label %bb.amy unwind label %.loopexit.split-lp4637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !96981

bb.amy:                                           ; preds = %bb.amx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i64 72, i1 false), !dbg !96982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !96983
  %.sroa.01389.0.copyload = load i64, ptr %i.dd, align 8, !dbg !96984
  %.sroa.71391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 32, !dbg !96984
  %.sroa.31394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !96985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.31394.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71391.0..sroa_idx, i64 40, i1 false), !dbg !96984
  %.sroa.21393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21393.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cvy, i64 24, i1 false), !dbg !96986
  store i64 %.sroa.01389.0.copyload, ptr %0, align 8, !dbg !96985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qq), !dbg !96987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qr), !dbg !96829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qs), !dbg !96829
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.qt)
          to label %bb.ane unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4112, !dbg !96988

bb.amz:                                           ; preds = %bb.amw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qq, ptr noundef nonnull align 8 dereferenceable(24) %i.cvy, i64 24, i1 false), !dbg !92808
  %i.dar = load i64, ptr %i.cvz, align 8, !dbg !96989, !noundef !2293 ; 3 uses
  %i.das = icmp ult i64 %i.dar, 82351536043346213, !dbg !96990
  call void @llvm.assume(i1 %i.das), !dbg !96991
  %.not2222 = icmp eq i64 %i.dar, 0, !dbg !96992
  %.2469 = select i1 %.not2222, i8 2, i8 %i.cwg, !dbg !96993
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecbE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ra, i64 %i.dar, i8 noundef %.2469)
          to label %bb.ana unwind label %bb.and, !dbg !96994

.loopexit.split-lp4637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.amv, %bb.akv, %bb.anb, %bb.amx
  %lpad.loopexit.split-lp5314 = landingpad { ptr, i32 }
          cleanup
  br label %.thread4162

bb.ana:                                           ; preds = %bb.amz
  %i.dat = load i64, ptr %i.cvz, align 8, !dbg !96995, !noundef !2293 ; 3 uses
  %i.dau = icmp ult i64 %i.dat, 82351536043346213, !dbg !96996
  call void @llvm.assume(i1 %i.dau), !dbg !96997
  %.not2223 = icmp eq i64 %i.dat, 0, !dbg !96998
  %.2470 = select i1 %.not2223, i8 2, i8 %i.cwi, !dbg !96999
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecbE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qz, i64 %i.dat, i8 noundef %.2470)
          to label %bb.anb unwind label %bb.and, !dbg !97000

bb.anb:                                           ; preds = %bb.ana
  %i.dav = load ptr, ptr %i.cwa, align 8, !dbg !97001, !nonnull !2293, !noundef !2293 ; 3 uses
  %i.daw = load i64, ptr %i.qq, align 8, !dbg !97001, !range !2736, !noundef !2293
  %i.dax = load i64, ptr %i.cvz, align 8, !dbg !97001, !noundef !2293 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !dbg !97002
  %i.day = icmp ult i64 %i.dax, 82351536043346213, !dbg !97003
  call void @llvm.assume(i1 %i.day), !dbg !97004
  %i.daz = getelementptr inbounds nuw [112 x i8], ptr %i.dav, i64 %i.dax, !dbg !97005
  store ptr %i.dav, ptr %i.dc, align 8, !dbg !97006
  store i64 %i.daw, ptr %i.cwb, align 8, !dbg !97006
  store ptr %i.dav, ptr %i.cwc, align 8, !dbg !97006
  store ptr %i.daz, ptr %i.cwd, align 8, !dbg !97006
  invoke void @_RNvXs0_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB10_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.dc)
          to label %bb.anc unwind label %.loopexit.split-lp4637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !97007

bb.anc:                                           ; preds = %bb.anb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !97008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qq), !dbg !96987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qr), !dbg !96829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qs), !dbg !96829
  br label %bb.akv, !dbg !96820

bb.and:                                           ; preds = %bb.ana, %bb.amz
  %lpad.thr_comm4174 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.qq) #43
          to label %.thread4162 unwind label %bb.ap, !dbg !96987

bb.ane:                                           ; preds = %bb.amy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qt), !dbg !96832
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.qz)
          to label %bb.anh unwind label %.thread4193, !dbg !96831

bb.anf:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread
  br i1 %.sroa.0994.04099, label %bb.anq, label %.thread4206, !dbg !97009

.thread4193:                                      ; preds = %bb.ane
  %i.dba = landingpad { ptr, i32 }
          cleanup
  br label %bb.anq, !dbg !97009

bb.ang:                                           ; preds = %bb.amk, %bb.ami, %bb.alh
  %.sroa.0998.8 = phi i8 [ 1, %bb.alh ], [ 0, %bb.ami ], [ 0, %bb.amk ], !dbg !97010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qm), !dbg !96863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qz), !dbg !96831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ra), !dbg !97009
  br label %bb.anj, !dbg !96838

bb.anh:                                           ; preds = %bb.ane
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qz), !dbg !96831
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ra)
          to label %bb.anm unwind label %bb.ani, !dbg !97009

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103: ; preds = %bb.alh
  %lpad.thr_comm.split-lp4111 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread, !dbg !96838

bb.ani:                                           ; preds = %bb.alb, %bb.anh
  %i.dbb = landingpad { ptr, i32 }
          cleanup
  br label %.thread4206

bb.anj:                                           ; preds = %bb.ang, %bb.anm
  %.sroa.0998.9415741854203 = phi i8 [ 1, %bb.anm ], [ %.sroa.0998.8, %bb.ang ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rb), !dbg !96838
  call void @llvm.experimental.noalias.scope.decl(metadata !92837), !dbg !96735
  %i.dbc = load i64, ptr %i.rp, align 8, !dbg !97011, !range !2315, !alias.scope !92837, !noundef !2293
  %i.dbd = icmp eq i64 %i.dbc, 0, !dbg !97011
  br i1 %i.dbd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3031, label %bb.ank, !dbg !97011

bb.ank:                                           ; preds = %bb.anj
  call void @llvm.experimental.noalias.scope.decl(metadata !92838), !dbg !97011
  call void @llvm.experimental.noalias.scope.decl(metadata !92839), !dbg !97012
  %i.dbe = load ptr, ptr %i.csx, align 8, !dbg !97013, !alias.scope !92840, !nonnull !2293, !noundef !2293
  %i.dbf = atomicrmw add ptr %i.dbe, i64 -1 release, align 8, !dbg !97014, !noalias !92840
  %i.dbg = icmp eq i64 %i.dbf, 1, !dbg !97015
  br i1 %i.dbg, label %bb.anl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3031, !dbg !97015

bb.anl:                                           ; preds = %bb.ank
  fence acquire, !dbg !97016
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.csx) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3031 unwind label %bb.ajj, !dbg !97017

bb.anm:                                           ; preds = %bb.anh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ra), !dbg !97009
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.rb)
          to label %bb.anj unwind label %bb.ajw, !dbg !96838

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3031: ; preds = %bb.ank, %bb.anj, %bb.anl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rp), !dbg !96735
  %i.dbh = trunc nuw i8 %.sroa.0998.9415741854203 to i1, !dbg !96702
  br i1 %i.dbh, label %bb.aks, label %.thread4215, !dbg !96702

.thread4215:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rr), !dbg !96702
  br label %bb.ant, !dbg !96702

2:                                                ; preds = %bb.aks, %bb.ajo
  %.sroa.01003.6 = phi i8 [ 1, %bb.ajo ], [ %.sroa.01003.4, %bb.aks ], !dbg !94291
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = getelementptr inbounds nuw i8, ptr %i.rr, i64 24, !dbg !96702
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %4) #43
          to label %bb.anr unwind label %bb.ap, !dbg !96702

bb.ann:                                           ; preds = %.thread4212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rr), !dbg !96702
  %i.dbi = trunc nuw i8 %.sroa.01003.8 to i1, !dbg !96702
  br i1 %i.dbi, label %bb.anu, label %bb.ant, !dbg !96702

.thread4212:                                      ; preds = %bb.aks, %bb.ajo
  %.sroa.01003.8 = phi i8 [ 1, %bb.ajo ], [ %.sroa.01003.4, %bb.aks ], !dbg !94291 ; 2 uses
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.rr, i64 24, !dbg !96702
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.dbj)
          to label %bb.ann unwind label %bb.ans, !dbg !96702

bb.ano:                                           ; preds = %bb.akx
  %lpad.thr_comm.split-lp4168 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.qr) #43
          to label %.thread4162 unwind label %bb.ap, !dbg !96829

bb.anp:                                           ; preds = %bb.akp, %bb.akt
  %i.dbk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.qx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread unwind label %bb.ap, !dbg !97018

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread: ; preds = %bb.anp, %.thread4162, %bb.akz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4112
  %.pn22274100 = phi { ptr, i32 } [ %lpad.thr_comm4110.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4112 ], [ %.pn2224.pn, %.thread4162 ], [ %i.cwk, %bb.akz ], [ %i.dbk, %bb.anp ] ; 2 uses
  %.sroa.0994.04099 = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4112 ], [ true, %.thread4162 ], [ false, %bb.akz ], [ true, %bb.anp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.qz) #43
          to label %bb.anf unwind label %bb.ap, !dbg !96831

bb.anq:                                           ; preds = %.thread4193, %bb.anf
  %.pn22294200 = phi { ptr, i32 } [ %i.dba, %.thread4193 ], [ %.pn22274100, %bb.anf ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ra) #43
          to label %.thread4206 unwind label %bb.ap, !dbg !97009

.thread4206:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread4527, %bb.anf, %bb.anq, %bb.ani
  %.pn22314211 = phi { ptr, i32 } [ %i.cwl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread4527 ], [ %.pn22274100, %bb.anf ], [ %.pn22294200, %bb.anq ], [ %i.dbb, %bb.ani ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.rb) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEIBH_INtNtBL_5cycle5CycleINtNtNtB4_5slice4iter4IterbEEB2S_EEEB28_.exit.thread4103.thread unwind label %bb.ap, !dbg !96838

bb.anr:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996, %bb.anw, %2, %bb.ans
  %.sroa.01003.9 = phi i8 [ %.sroa.01003.8, %bb.ans ], [ %.sroa.01003.6, %2 ], [ %.sroa.01003.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996 ], [ %.sroa.01003.0, %bb.anw ], !dbg !94291
  %.pn2237 = phi { ptr, i32 } [ %i.dbm, %bb.ans ], [ %3, %2 ], [ %.pn2235, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996 ], [ %.pn2235, %bb.anw ] ; 2 uses
  %.sroa.478.77 = extractvalue { ptr, i32 } %.pn2237, 1 ; 2 uses
  %.sroa.02013.77 = extractvalue { ptr, i32 } %.pn2237, 0 ; 2 uses
  %i.dbl = trunc nuw i8 %.sroa.01003.9 to i1, !dbg !96702
  br i1 %i.dbl, label %bb.anx, label %.critedge2460, !dbg !96702

bb.ans:                                           ; preds = %.thread4212
  %i.dbm = landingpad { ptr, i32 }
          cleanup
  br label %bb.anr

bb.ant:                                           ; preds = %.thread4215, %bb.anu, %bb.ann
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rs), !dbg !96702
  br label %bb.gh, !dbg !94755

bb.anu:                                           ; preds = %bb.ann
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.rs)
          to label %bb.ant unwind label %bb.c, !dbg !96702

bb.anv:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit2996
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.rr) #43
          to label %bb.anw unwind label %bb.ap, !dbg !96702

bb.anw:                                           ; preds = %bb.anv
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.rr, i64 24, !dbg !96702
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.dbn) #43
          to label %bb.anr unwind label %bb.ap, !dbg !96702

bb.anx:                                           ; preds = %bb.anr
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.rs) #43
          to label %.critedge2460 unwind label %bb.ap, !dbg !96702

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i2703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !97019, !noalias !90563
  %i.dbo = icmp eq i64 %.sroa.03576.0.copyload3577, -9223372036854775778, !dbg !97020
  br i1 %i.dbo, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread, label %bb.any, !dbg !97021

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread: ; preds = %bb.y, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705
  %.sroa.63578.04219 = phi ptr [ %.sroa.63578.0.copyload3580, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705 ], [ %i.zw, %bb.y ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63578.04219) ]
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE15unwrap_or_clone0BO_(ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.sk, ptr noundef nonnull %.sroa.63578.04219)
          to label %bb.anz unwind label %bb.c, !dbg !97022

bb.any:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705
  store i64 %.sroa.03576.0.copyload3577, ptr %i.sk, align 16, !dbg !97023
  %.sroa.63578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sk, i64 8, !dbg !97023
  store ptr %.sroa.63578.0.copyload3580, ptr %.sroa.63578.0..sroa_idx, align 8, !dbg !97023
  %.sroa.83581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sk, i64 16, !dbg !97023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83581.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83581, i64 352, i1 false), !dbg !97023
  br label %bb.anz, !dbg !97024

bb.anz:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit2705.thread, %bb.any
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83581), !dbg !97025
  %i.dbp = load ptr, ptr %i.uc, align 16, !dbg !97026, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.dp, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.sk, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.dbp)
          to label %bb.aoa unwind label %bb.c, !dbg !92844

bb.aoa:                                           ; preds = %bb.anz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sk), !dbg !97027
  %i.dbq = load i64, ptr %i.dp, align 16, !dbg !97028, !range !2573, !noundef !2293
  %.not = icmp eq i64 %i.dbq, 18, !dbg !97028
  br i1 %.not, label %bb.aod, label %bb.aob, !dbg !97029

bb.aob:                                           ; preds = %bb.aoa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !dbg !97030
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0s7_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dq, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.dp)
          to label %bb.aoc unwind label %bb.c, !dbg !97030

bb.aoc:                                           ; preds = %bb.aob
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i64 72, i1 false), !dbg !97031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !dbg !97032
  %.sroa.71319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 16, !dbg !97033
  %.sroa.31322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !97034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.31322.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.71319.0..sroa_idx, i64 56, i1 false), !dbg !97033
  %i.dbr = load <2 x i64>, ptr %i.dp, align 16, !dbg !97033
  store <2 x i64> %i.dbr, ptr %0, align 8, !dbg !97034
  %i.dbs = load i64, ptr %1, align 16, !dbg !94133, !range !2692, !noundef !2293 ; 3 uses
  %i.dbt = icmp ne i64 %i.dbs, -9223372036854775782, !dbg !94133
  call void @llvm.assume(i1 %i.dbt), !dbg !94133
  %i.dbu = add nsw i64 %i.dbs, 9223372036854775802, !dbg !94133
  %i.dbv = icmp ugt i64 %i.dbs, -9223372036854775803, !dbg !94133
  %i.dbw = select i1 %i.dbv, i64 %i.dbu, i64 20, !dbg !94133
  switch i64 %i.dbw, label %.loopexit4601 [
    i64 0, label %bb.gv
    i64 1, label %bb.ar
    i64 2, label %bb.at
    i64 3, label %bb.av
    i64 4, label %bb.bb
    i64 5, label %bb.bd
    i64 6, label %bb.bh
    i64 7, label %bb.bj
    i64 8, label %bb.bl
    i64 9, label %bb.bn
    i64 10, label %bb.bp
    i64 11, label %bb.br
    i64 12, label %bb.bt
    i64 13, label %bb.bv
    i64 14, label %bb.bx
    i64 15, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725
    i64 16, label %bb.cb
    i64 17, label %bb.cd
    i64 18, label %bb.cg
    i64 19, label %bb.cj
    i64 20, label %bb.cl
    i64 21, label %bb.cn
    i64 22, label %bb.cq
    i64 23, label %bb.cs
  ], !dbg !94133

bb.aod:                                           ; preds = %bb.aoa
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !97035
  %i.dby = load i64, ptr %i.dbx, align 8, !dbg !97035, !noundef !2293 ; 3 uses
  %i.dbz = icmp eq i32 %i.aaa, 0, !dbg !97036
  br i1 %i.dbz, label %bb.aoe, label %bb.aof, !dbg !97036

bb.aoe:                                           ; preds = %bb.aod
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sj), !dbg !97037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.si), !dbg !97038
  %i.dca = load ptr, ptr %i.uc, align 16, !dbg !97038, !nonnull !2293, !align !2349, !noundef !2293
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dca, i64 192, !dbg !97038
  %i.dcc = load ptr, ptr %i.dcb, align 8, !dbg !97038, !nonnull !2293, !align !2349, !noundef !2293 ; 3 uses
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dcc, i64 16, !dbg !97039
  %i.dce = load i64, ptr %i.dcd, align 8, !dbg !97039, !noundef !2293
  %i.dcf = icmp ult i64 %i.dby, %i.dce, !dbg !97040
  br i1 %i.dcf, label %bb.aoh, label %bb.aog, !dbg !97040, !prof !2316

bb.aof:                                           ; preds = %bb.aod
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.ty, i64 8, !dbg !97041
  store i64 %i.dby, ptr %i.dcg, align 8, !dbg !97041
  %i.dch = getelementptr inbounds nuw i8, ptr %i.ty, i64 16, !dbg !97041
  store i64 %i.zy, ptr %i.dch, align 16, !dbg !97041
  %i.dci = getelementptr inbounds nuw i8, ptr %i.ty, i64 24, !dbg !97041
  store i32 %i.aaa, ptr %i.dci, align 8, !dbg !97041
  store i64 -9223372036854775803, ptr %i.ty, align 16, !dbg !97041
  br label %bb.al, !dbg !97042

bb.aog:                                           ; preds = %bb.aoe
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #41
          to label %bb.dh unwind label %bb.c, !dbg !97043

bb.aoh:                                           ; preds = %bb.aoe
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.dcc, i64 8, !dbg !97044
  %i.dck = load ptr, ptr %i.dcj, align 8, !dbg !97044, !nonnull !2293, !noundef !2293
  %i.dcl = getelementptr inbounds nuw [368 x i8], ptr %i.dck, i64 %i.dby, !dbg !97045
  %i.dcm = invoke { i64, ptr } @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR6schema(ptr noundef nonnull align 16 %i.dcl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dcc)
          to label %bb.aoi unwind label %bb.c, !dbg !97046 ; 2 uses

bb.aoi:                                           ; preds = %bb.aoh
  %i.dcn = extractvalue { i64, ptr } %i.dcm, 0, !dbg !97038 ; 2 uses
  %i.dco = extractvalue { i64, ptr } %i.dcm, 1, !dbg !97038 ; 2 uses
  store i64 %i.dcn, ptr %i.si, align 8, !dbg !97038
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.si, i64 8, !dbg !97038 ; 4 uses
  store ptr %i.dco, ptr %i.dcp, align 8, !dbg !97038
  %i.dcq = trunc nuw i64 %i.dcn to i1, !dbg !97047
  %.2471 = select i1 %i.dcq, ptr %i.dcp, ptr %i.dco, !dbg !97048
  %i.dcr = load ptr, ptr %.2471, align 8, !dbg !97049, !nonnull !2293, !noundef !2293 ; 2 uses
  %i.dcs = atomicrmw add ptr %i.dcr, i64 1 monotonic, align 8, !dbg !97050
  %i.dct = icmp slt i64 %i.dcs, 0, !dbg !97051
  br i1 %i.dct, label %bb.aom, label %bb.aoj, !dbg !97051

bb.aoj:                                           ; preds = %bb.aoi
  store ptr %i.dcr, ptr %i.sj, align 8, !dbg !97052
  call void @llvm.experimental.noalias.scope.decl(metadata !92874), !dbg !97053
  %i.dcu = load i64, ptr %i.si, align 8, !dbg !97054, !range !2315, !alias.scope !92874, !noundef !2293
  %i.dcv = icmp eq i64 %i.dcu, 0, !dbg !97054
  br i1 %i.dcv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3035, label %bb.aok, !dbg !97054

bb.aok:                                           ; preds = %bb.aoj
  call void @llvm.experimental.noalias.scope.decl(metadata !92875), !dbg !97054
  call void @llvm.experimental.noalias.scope.decl(metadata !92876), !dbg !97055
  %i.dcw = load ptr, ptr %i.dcp, align 8, !dbg !97056, !alias.scope !92877, !nonnull !2293, !noundef !2293
  %i.dcx = atomicrmw add ptr %i.dcw, i64 -1 release, align 8, !dbg !97057, !noalias !92877
  %i.dcy = icmp eq i64 %i.dcx, 1, !dbg !97058
  br i1 %i.dcy, label %bb.aol, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3035, !dbg !97058

bb.aol:                                           ; preds = %bb.aok
  fence acquire, !dbg !97059
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dcp) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3035 unwind label %bb.aon, !dbg !97060

bb.aom:                                           ; preds = %bb.aoi
  call void @llvm.trap(), !dbg !97061
  unreachable, !dbg !97061

bb.aon:                                           ; preds = %bb.aol, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3035
  %i.dcz = landingpad { ptr, i32 }
          cleanup
  br label %.body2592

.body2592:                                        ; preds = %bb.aoq, %bb.aon
  %eh.lpad-body2593 = phi { ptr, i32 } [ %i.dcz, %bb.aon ], [ %i.ddk, %bb.aoq ] ; 2 uses
  %i.dda = extractvalue { ptr, i32 } %eh.lpad-body2593, 0 ; 2 uses
  %i.ddb = extractvalue { ptr, i32 } %eh.lpad-body2593, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92878), !dbg !97062
  call void @llvm.experimental.noalias.scope.decl(metadata !92879), !dbg !97063
  %i.ddc = load ptr, ptr %i.sj, align 8, !dbg !97064, !alias.scope !92880, !nonnull !2293, !noundef !2293
  %i.ddd = atomicrmw add ptr %i.ddc, i64 -1 release, align 8, !dbg !97065, !noalias !92880
  %i.dde = icmp eq i64 %i.ddd, 1, !dbg !97066
  br i1 %i.dde, label %bb.aoo, label %.critedge2460, !dbg !97066

bb.aoo:                                           ; preds = %.body2592
  fence acquire, !dbg !97067
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.sj) #44
          to label %.critedge2460 unwind label %bb.ap, !dbg !97068

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3035: ; preds = %bb.aok, %bb.aoj, %bb.aol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.si), !dbg !97053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sh), !dbg !97069
  %i.ddf = load ptr, ptr %i.sj, align 8, !dbg !97070, !nonnull !2293, !noundef !2293
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.ddf, i64 16, !dbg !97071
  invoke void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframeNtB4_9DataFrame17empty_with_schema(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.sh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ddg)
          to label %bb.aop unwind label %bb.aon, !dbg !97069

bb.aop:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !dbg !97072
  store i64 1, ptr %i.do, align 8, !dbg !97072
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.do, i64 8, !dbg !97072
  store i64 1, ptr %i.ddh, align 8, !dbg !97072
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.do, i64 16, !dbg !97072 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
  br label %bb.atp, !dbg !97378

bb.atl:                                           ; preds = %bb.ati, %bb.atg
  %lpad.thr_comm4289 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ho) #43
          to label %bb.atq unwind label %bb.ap, !dbg !97414

bb.atm:                                           ; preds = %bb.atf
  %i.doh = landingpad { ptr, i32 }
          cleanup
  br label %bb.atq

bb.atn:                                           ; preds = %bb.atf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl), !dbg !97406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6646), !dbg !97406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho), !dbg !97414
  call void @llvm.experimental.noalias.scope.decl(metadata !93240), !dbg !97387
  call void @llvm.experimental.noalias.scope.decl(metadata !93241), !dbg !97423
  %i.doi = load ptr, ptr %i.hq, align 8, !dbg !97424, !alias.scope !93242, !nonnull !2293, !noundef !2293
  %i.doj = atomicrmw add ptr %i.doi, i64 -1 release, align 8, !dbg !97425, !noalias !93242
  %i.dok = icmp eq i64 %i.doj, 1, !dbg !97426
  br i1 %i.dok, label %bb.ato, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3073, !dbg !97426

bb.ato:                                           ; preds = %bb.atn
  fence acquire, !dbg !97427
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hq) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3073 unwind label %bb.ath, !dbg !97428

bb.atp:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit3073, %bb.asy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv), !dbg !97378
  br label %bb.aqh, !dbg !97189

bb.atq:                                           ; preds = %bb.atm, %bb.atl, %bb.atd
  %.pn2177.ph = phi { ptr, i32 } [ %i.doh, %bb.atm ], [ %i.dnv, %bb.atd ], [ %lpad.thr_comm4289, %bb.atl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93243), !dbg !97387
  call void @llvm.experimental.noalias.scope.decl(metadata !93244), !dbg !97429
  %i.dol = load ptr, ptr %i.hq, align 8, !dbg !97430, !alias.scope !93245, !nonnull !2293, !noundef !2293
  %i.dom = atomicrmw add ptr %i.dol, i64 -1 release, align 8, !dbg !97431, !noalias !93245
  %i.don = icmp eq i64 %i.dom, 1, !dbg !97432
  br i1 %i.don, label %bb.atr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3060, !dbg !97432

bb.atr:                                           ; preds = %bb.atq
  fence acquire, !dbg !97433
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hq) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3060 unwind label %bb.ap, !dbg !97434

.thread4278:                                      ; preds = %bb.ata, %.thread4282
  %eh.lpad-body25844281 = phi { ptr, i32 } [ %i.dmv, %.thread4282 ], [ %i.dnc, %bb.ata ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.hv) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3060 unwind label %bb.ap, !dbg !97378

.critedge2473:                                    ; preds = %bb.atx, %.noexc3078
  %.pn2171 = phi { ptr, i32 } [ %i.dpa, %bb.atx ], [ %i.dph, %.noexc3078 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ib) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3060 unwind label %bb.ap, !dbg !97435

bb.ats:                                           ; preds = %bb.apj
  %i.doo = load ptr, ptr %i.uc, align 16, !dbg !97436, !nonnull !2293, !align !2349, !noundef !2293 ; 3 uses
  %i.dop = getelementptr inbounds nuw i8, ptr %i.doo, i64 192, !dbg !97436
  %i.doq = load ptr, ptr %i.dop, align 8, !dbg !97436, !nonnull !2293, !align !2349, !noundef !2293
  %i.dor = getelementptr inbounds nuw i8, ptr %i.doo, i64 184, !dbg !97437
  %i.dos = load ptr, ptr %i.dor, align 8, !dbg !97437, !nonnull !2293, !align !2349, !noundef !2293
  %i.dot = getelementptr inbounds nuw i8, ptr %i.doo, i64 200, !dbg !97438
  %i.dou = load ptr, ptr %i.dot, align 8, !dbg !97438, !nonnull !2293, !align !3282, !noundef !2293
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir20resolve_with_columns(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ia, i64 noundef %i.def, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.doq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dos, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.dou)
          to label %bb.att unwind label %bb.atx, !dbg !93247

bb.att:                                           ; preds = %bb.ats
  %i.dov = load i64, ptr %i.ba, align 8, !dbg !97439, !range !2573, !noundef !2293
  %.not2167 = icmp eq i64 %i.dov, 18, !dbg !97439
  br i1 %.not2167, label %bb.atw, label %bb.atu, !dbg !97440

bb.atu:                                           ; preds = %bb.att
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !97441
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0sF_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bb, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.ba)
          to label %bb.atv unwind label %bb.atx, !dbg !97441

bb.atv:                                           ; preds = %bb.atu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef nonnull align 8 dereferenceable(72) %i.bb, i64 72, i1 false), !dbg !97442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !97443
  %.sroa.01794.0.copyload = load i64, ptr %i.ba, align 8, !dbg !97444
  %.sroa.61795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !97444
  %.sroa.71796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32, !dbg !97444
  %.sroa.71796.0.copyload = load ptr, ptr %.sroa.71796.0..sroa_idx, align 8, !dbg !97444
  %.sroa.81797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40, !dbg !97444
  %.sroa.41801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !97445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.41801.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.81797.0..sroa_idx, i64 32, i1 false), !dbg !97444
  %.sroa.21799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21799.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61795.0..sroa_idx, i64 24, i1 false), !dbg !97446
  store i64 %.sroa.01794.0.copyload, ptr %0, align 8, !dbg !97445
  %.sroa.31800.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !97445
  store ptr %.sroa.71796.0.copyload, ptr %.sroa.31800.0..sroa_idx, align 8, !dbg !97445
  br label %bb.aua, !dbg !97447

bb.atw:                                           ; preds = %bb.att
  %i.dow = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !97448
  %.sroa.61789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32, !dbg !97448
  %.sroa.61789.0.copyload = load ptr, ptr %.sroa.61789.0..sroa_idx, align 8, !dbg !97448, !nonnull !2293, !noundef !2293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy), !dbg !97449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 8 dereferenceable(24) %i.dow, i64 24, i1 false), !dbg !93247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hx), !dbg !97450
  store ptr %.sroa.61789.0.copyload, ptr %i.hx, align 8, !dbg !97450
  %i.dox = load ptr, ptr %i.uc, align 16, !dbg !97451, !nonnull !2293, !align !2349, !noundef !2293 ; 2 uses
  %i.doy = getelementptr inbounds nuw i8, ptr %i.dox, i64 184, !dbg !97452
  %i.doz = load ptr, ptr %i.doy, align 8, !dbg !97452, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RINvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9stack_optNtB5_19ConversionOptimizer12fill_scratchRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB9_7expr_ir6ExprIRERB2g_EBb_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.dox, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.doz)
          to label %bb.aty unwind label %bb.aub, !dbg !97453

bb.atx:                                           ; preds = %bb.apj, %bb.ats, %bb.atu, %bb.aty
  %i.dpa = landingpad { ptr, i32 }
          cleanup
  br label %.critedge2473, !dbg !97454

bb.aty:                                           ; preds = %bb.atw
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.hw, i64 8, !dbg !97455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dpb, ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i64 24, i1 false), !dbg !97456
  %i.dpc = load ptr, ptr %i.hx, align 8, !dbg !97457, !nonnull !2293, !noundef !2293
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.hw, i64 40, !dbg !97455
  store i64 %i.def, ptr %i.dpd, align 8, !dbg !97455
  %i.dpe = getelementptr inbounds nuw i8, ptr %i.hw, i64 32, !dbg !97455
  store ptr %i.dpc, ptr %i.dpe, align 16, !dbg !97455
  %i.dpf = getelementptr inbounds nuw i8, ptr %i.hw, i64 48, !dbg !97455
  store i8 1, ptr %i.dpf, align 16, !dbg !97455
  %.sroa.4621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 49, !dbg !97455
  store i8 0, ptr %.sroa.4621.0..sroa_idx, align 1, !dbg !97455
  %.sroa.5622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 50, !dbg !97455
  store i8 1, ptr %.sroa.5622.0..sroa_idx, align 2, !dbg !97455
  store i64 -9223372036854775792, ptr %i.hw, align 16, !dbg !97455
  %i.dpg = load ptr, ptr %i.uc, align 16, !dbg !97458, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14run_conversion(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.hw, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.dpg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @744, i64 noundef 8)
          to label %bb.atz unwind label %bb.atx, !dbg !97459

bb.atz:                                           ; preds = %bb.aty
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hx), !dbg !97454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy), !dbg !97454
  br label %bb.aua, !dbg !97447

bb.aua:                                           ; preds = %bb.atz, %bb.atv
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ib)
          to label %bb.aud unwind label %bb.aqf, !dbg !97435

bb.aub:                                           ; preds = %bb.atw
  %i.dph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !93251), !dbg !97454
  call void @llvm.experimental.noalias.scope.decl(metadata !93252), !dbg !97460
  %i.dpi = load ptr, ptr %i.hx, align 8, !dbg !97461, !alias.scope !93253, !nonnull !2293, !noundef !2293
  %i.dpj = atomicrmw add ptr %i.dpi, i64 -1 release, align 8, !dbg !97462, !noalias !93253
  %i.dpk = icmp eq i64 %i.dpj, 1, !dbg !97463
  br i1 %i.dpk, label %bb.auc, label %.noexc3078, !dbg !97463

bb.auc:                                           ; preds = %bb.aub
  fence acquire, !dbg !97464
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx) #44
          to label %.noexc3078 unwind label %bb.ap, !dbg !97465

.noexc3078:                                       ; preds = %bb.auc, %bb.aub
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.hy) #43
          to label %.critedge2473 unwind label %bb.ap, !dbg !97454

bb.aud:                                           ; preds = %bb.aua
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !dbg !97435
  br label %bb.aqh, !dbg !97189

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3052: ; preds = %bb.aqi, %bb.aqh, %bb.aqj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij), !dbg !97181
  %i.dpl = load i64, ptr %i.il, align 16, !dbg !97089, !range !2804, !noundef !2293 ; 3 uses
  %i.dpm = icmp ne i64 %i.dpl, 20, !dbg !97089
  call void @llvm.assume(i1 %i.dpm), !dbg !97089
  %i.dpn = add nsw i64 %i.dpl, -12, !dbg !97089
  %i.dpo = icmp samesign ugt i64 %i.dpl, 11, !dbg !97089
  %i.dpp = select i1 %i.dpo, i64 %i.dpn, i64 8, !dbg !97089
  switch i64 %i.dpp, label %bb.aue [
    i64 2, label %bb.auf
    i64 4, label %bb.aug
    i64 6, label %bb.auh
    i64 7, label %bb.aui
  ], !dbg !97089

bb.aue:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3052, %bb.apa
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %i.il)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit unwind label %bb.c, !dbg !97089

bb.auf:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3052
  %i.dpq = trunc nuw i8 %.sroa.0938.4 to i1, !dbg !97089
  br i1 %i.dpq, label %bb.auj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !97089

bb.aug:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3052
  %i.dpr = trunc nuw i8 %.sroa.0944.4 to i1, !dbg !97089
  br i1 %i.dpr, label %bb.auk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !97089

bb.auh:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3052
  %i.dps = trunc nuw i8 %.sroa.0942.4 to i1, !dbg !97089
  br i1 %i.dps, label %bb.aum, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !97089

bb.aui:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3052
  %i.dpt = trunc nuw i8 %.sroa.0940.4 to i1, !dbg !97089
  br i1 %i.dpt, label %.invoke, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !97089

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit: ; preds = %.invoke, %bb.auv, %bb.auw, %bb.aum, %bb.aug, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3085, %bb.auj, %bb.aui, %bb.auh, %bb.auf, %bb.aue
  call void @llvm.lifetime.end.p0(ptr nonnull %i.il), !dbg !97089
  %i.dpu = load i64, ptr %1, align 16, !dbg !94133, !range !2692, !noundef !2293 ; 3 uses
  %i.dpv = icmp ne i64 %i.dpu, -9223372036854775782, !dbg !94133
  call void @llvm.assume(i1 %i.dpv), !dbg !94133
  %i.dpw = add nsw i64 %i.dpu, 9223372036854775802, !dbg !94133
  %i.dpx = icmp ugt i64 %i.dpu, -9223372036854775803, !dbg !94133
  %i.dpy = select i1 %i.dpx, i64 %i.dpw, i64 20, !dbg !94133
  switch i64 %i.dpy, label %.loopexit4601 [
    i64 0, label %bb.gv
    i64 1, label %bb.ar
    i64 2, label %bb.at
    i64 3, label %bb.av
    i64 4, label %bb.bb
    i64 5, label %bb.bd
    i64 6, label %bb.bh
    i64 7, label %bb.bj
    i64 8, label %bb.bl
    i64 9, label %bb.bn
    i64 10, label %bb.bp
    i64 11, label %bb.br
    i64 12, label %bb.bt
    i64 13, label %bb.bv
    i64 14, label %bb.bx
    i64 15, label %bb.bz
    i64 16, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725
    i64 17, label %bb.cd
    i64 18, label %bb.cg
    i64 19, label %bb.cj
    i64 20, label %bb.cl
    i64 21, label %bb.cn
    i64 22, label %bb.cq
    i64 23, label %bb.cs
  ], !dbg !94133

bb.auj:                                           ; preds = %bb.auf, %bb.apa
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.il, i64 8, !dbg !97089
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.dpz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit unwind label %bb.c, !dbg !97089

bb.auk:                                           ; preds = %bb.aug, %bb.apa
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.il, i64 8, !dbg !97089 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93254), !dbg !97089
  call void @llvm.experimental.noalias.scope.decl(metadata !93255), !dbg !97466
  %i.dqb = load ptr, ptr %i.dqa, align 8, !dbg !97467, !alias.scope !93256, !nonnull !2293, !noundef !2293
  %i.dqc = atomicrmw add ptr %i.dqb, i64 -1 release, align 8, !dbg !97468, !noalias !93256
  %i.dqd = icmp eq i64 %i.dqc, 1, !dbg !97469
  br i1 %i.dqd, label %bb.aul, label %bb.auv, !dbg !97469

bb.aul:                                           ; preds = %bb.auk
  fence acquire, !dbg !97470
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dqa) #44
          to label %bb.auv unwind label %.thread4306, !dbg !97471

bb.aum:                                           ; preds = %bb.auh, %bb.apa
  %i.dqe = getelementptr inbounds nuw i8, ptr %i.il, i64 128, !dbg !97472
  %i.dqf = load i64, ptr %i.dqe, align 16, !dbg !97472, !range !2813, !alias.scope !93257, !noundef !2293 ; 2 uses
  %i.dqg = icmp ne i64 %i.dqf, -9223372036854775778, !dbg !97472
  call void @llvm.assume(i1 %i.dqg), !dbg !97472
  %i.dqh = icmp ult i64 %i.dqf, -9223372036854775780, !dbg !97472
  br i1 %i.dqh, label %.invoke, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !97472

.invoke:                                          ; preds = %bb.aum, %bb.apa, %bb.aui
  %i.dqi = getelementptr inbounds nuw i8, ptr %i.il, i64 16, !dbg !97089
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.dqi)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit unwind label %bb.c, !dbg !97089

bb.aun:                                           ; preds = %bb.apf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !dbg !97473
  %i.dqj = load i64, ptr %i.gp, align 8, !dbg !97474, !range !93258, !noundef !2293 ; 2 uses
  %i.dqk = icmp eq i64 %i.dqj, 12, !dbg !97474
  %i.dql = getelementptr inbounds nuw i8, ptr %i.gp, i64 8, !dbg !97475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6688, ptr noundef nonnull align 8 dereferenceable(72) %i.dql, i64 72, i1 false), !dbg !97475
  br i1 %i.dqk, label %bb.auo, label %bb.aur, !dbg !97476

bb.auo:                                           ; preds = %bb.aun
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !dbg !97477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6688, i64 72, i1 false), !dbg !97477
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6688), !dbg !97478
  call void @llvm.experimental.noalias.scope.decl(metadata !93260), !dbg !97181
  %i.dqm = load i64, ptr %i.ij, align 8, !dbg !97479, !range !2315, !alias.scope !93260, !noundef !2293
  %i.dqn = icmp eq i64 %i.dqm, 0, !dbg !97479
  br i1 %i.dqn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3085, label %bb.aup, !dbg !97479

bb.aup:                                           ; preds = %bb.auo
  call void @llvm.experimental.noalias.scope.decl(metadata !93261), !dbg !97479
  call void @llvm.experimental.noalias.scope.decl(metadata !93262), !dbg !97480
  %i.dqo = load ptr, ptr %i.des, align 8, !dbg !97481, !alias.scope !93263, !nonnull !2293, !noundef !2293
  %i.dqp = atomicrmw add ptr %i.dqo, i64 -1 release, align 8, !dbg !97482, !noalias !93263
  %i.dqq = icmp eq i64 %i.dqp, 1, !dbg !97483
  br i1 %i.dqq, label %bb.auq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3085, !dbg !97483

bb.auq:                                           ; preds = %bb.aup
  fence acquire, !dbg !97484
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.des) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3085 unwind label %.split4220, !dbg !97485

bb.aur:                                           ; preds = %bb.aun
  %.sroa.61860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 80, !dbg !97486
  %.sroa.3694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 88, !dbg !97487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.3694.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.61860.0..sroa_idx, i64 128, i1 false), !dbg !97486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !dbg !97477
  %.sroa.2693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 16, !dbg !97487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.2693.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6688, i64 72, i1 false), !dbg !93259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6688), !dbg !97478
  %i.dqr = getelementptr inbounds nuw i8, ptr %i.ty, i64 216, !dbg !97487
  store i64 %i.def, ptr %i.dqr, align 8, !dbg !97487
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.ty, i64 8, !dbg !97487
  store i64 %i.dqj, ptr %i.dqs, align 8, !dbg !97487
  store i64 -9223372036854775790, ptr %i.ty, align 16, !dbg !97487
  call void @llvm.experimental.noalias.scope.decl(metadata !93264), !dbg !97181
  %i.dqt = load i64, ptr %i.ij, align 8, !dbg !97488, !range !2315, !alias.scope !93264, !noundef !2293
  %i.dqu = icmp eq i64 %i.dqt, 0, !dbg !97488
  br i1 %i.dqu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3088, label %bb.aus, !dbg !97488

bb.aus:                                           ; preds = %bb.aur
  call void @llvm.experimental.noalias.scope.decl(metadata !93265), !dbg !97488
  call void @llvm.experimental.noalias.scope.decl(metadata !93266), !dbg !97489
  %i.dqv = load ptr, ptr %i.des, align 8, !dbg !97490, !alias.scope !93267, !nonnull !2293, !noundef !2293
  %i.dqw = atomicrmw add ptr %i.dqv, i64 -1 release, align 8, !dbg !97491, !noalias !93267
  %i.dqx = icmp eq i64 %i.dqw, 1, !dbg !97492
  br i1 %i.dqx, label %bb.aut, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3088, !dbg !97492

bb.aut:                                           ; preds = %bb.aus
  fence acquire, !dbg !97493
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.des) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3088 unwind label %.split4220, !dbg !97494

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3088: ; preds = %bb.aus, %bb.aur, %bb.aut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij), !dbg !97181
  br label %bb.arw, !dbg !97089

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3085: ; preds = %bb.aup, %bb.auo, %bb.auq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij), !dbg !97181
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !97089

.thread4306:                                      ; preds = %bb.aul
  %5 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %6 = extractvalue { ptr, i32 } %5, 1            ; 2 uses
  %7 = extractvalue { ptr, i32 } %5, 0            ; 2 uses
  %i.dqy = getelementptr inbounds nuw i8, ptr %i.il, i64 24, !dbg !97089 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93268), !dbg !97089
  call void @llvm.experimental.noalias.scope.decl(metadata !93269), !dbg !97495
  %i.dqz = load ptr, ptr %i.dqy, align 8, !dbg !97496, !alias.scope !93270, !nonnull !2293, !noundef !2293
  %i.dra = atomicrmw add ptr %i.dqz, i64 -1 release, align 8, !dbg !97497, !noalias !93270
  %i.drb = icmp eq i64 %i.dra, 1, !dbg !97498
  br i1 %i.drb, label %bb.auu, label %.critedge2460, !dbg !97498

bb.auu:                                           ; preds = %.thread4306
  fence acquire, !dbg !97499
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dqy) #44
          to label %.critedge2460 unwind label %bb.ap, !dbg !97500

bb.auv:                                           ; preds = %bb.aul, %bb.auk
  %i.drc = getelementptr inbounds nuw i8, ptr %i.il, i64 24, !dbg !97089 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93271), !dbg !97089
  call void @llvm.experimental.noalias.scope.decl(metadata !93272), !dbg !97501
  %i.drd = load ptr, ptr %i.drc, align 8, !dbg !97502, !alias.scope !93273, !nonnull !2293, !noundef !2293
  %i.dre = atomicrmw add ptr %i.drd, i64 -1 release, align 8, !dbg !97503, !noalias !93273
  %i.drf = icmp eq i64 %i.dre, 1, !dbg !97504
  br i1 %i.drf, label %bb.auw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit, !dbg !97504

bb.auw:                                           ; preds = %bb.auv
  fence acquire, !dbg !97505
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.drc) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl13StatsFunctionEBO_.exit unwind label %bb.c, !dbg !97506

bb.aux:                                           ; preds = %.split4220.thread, %.noexc3048
  %.sroa.02013.784228 = phi ptr [ %.sroa.02013.7842224238, %.split4220.thread ], [ %.sroa.02013.78, %.noexc3048 ] ; 10 uses
  %.sroa.478.784227 = phi i32 [ %.sroa.478.7842214237, %.split4220.thread ], [ %.sroa.478.78, %.noexc3048 ] ; 10 uses
  %.sroa.0938.04226 = phi i8 [ %.sroa.0938.1.ph, %.split4220.thread ], [ %.sroa.0938.2, %.noexc3048 ]
  %.sroa.0940.04225 = phi i8 [ %.sroa.0940.1.ph, %.split4220.thread ], [ %.sroa.0940.2, %.noexc3048 ]
  %.sroa.0942.04224 = phi i8 [ %.sroa.0942.1.ph, %.split4220.thread ], [ %.sroa.0942.2, %.noexc3048 ]
  %.sroa.0944.04223 = phi i8 [ %.sroa.0944.1.ph, %.split4220.thread ], [ %.sroa.0944.2, %.noexc3048 ]
  %i.drg = load i64, ptr %i.il, align 16, !dbg !97089, !range !2804, !noundef !2293 ; 3 uses
  %i.drh = icmp ne i64 %i.drg, 20, !dbg !97089
  call void @llvm.assume(i1 %i.drh), !dbg !97089
  %i.dri = add nsw i64 %i.drg, -12, !dbg !97089
  %i.drj = icmp samesign ugt i64 %i.drg, 11, !dbg !97089
  %i.drk = select i1 %i.drj, i64 %i.dri, i64 8, !dbg !97089
  switch i64 %i.drk, label %bb.auy [
    i64 2, label %bb.auz
    i64 4, label %bb.ava
    i64 6, label %bb.avb
    i64 7, label %bb.avc
  ], !dbg !97089

bb.auy:                                           ; preds = %bb.aux
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %i.il) #43
          to label %.critedge2460 unwind label %bb.ap, !dbg !97089

bb.auz:                                           ; preds = %bb.aux
  %i.drl = trunc nuw i8 %.sroa.0938.04226 to i1, !dbg !97089
  br i1 %i.drl, label %bb.avd, label %.critedge2460, !dbg !97089

bb.ava:                                           ; preds = %bb.aux
  %cond2544 = icmp eq i8 %.sroa.0944.04223, 0, !dbg !97089
  br i1 %cond2544, label %.critedge2460, label %bb.ave, !dbg !97089

bb.avb:                                           ; preds = %bb.aux
  %i.drm = trunc nuw i8 %.sroa.0942.04224 to i1, !dbg !97089
  br i1 %i.drm, label %bb.avh, label %.critedge2460, !dbg !97089

bb.avc:                                           ; preds = %bb.aux
  %i.drn = trunc nuw i8 %.sroa.0940.04225 to i1, !dbg !97089
  br i1 %i.drn, label %.invoke5114.a, label %.critedge2460, !dbg !97089

bb.avd:                                           ; preds = %bb.auz
  %i.dro = getelementptr inbounds nuw i8, ptr %i.il, i64 8, !dbg !97089
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.dro) #43
          to label %.critedge2460 unwind label %bb.ap, !dbg !97089

bb.ave:                                           ; preds = %bb.ava
  %i.drp = getelementptr inbounds nuw i8, ptr %i.il, i64 8, !dbg !97089 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93274), !dbg !97089
  call void @llvm.experimental.noalias.scope.decl(metadata !93275), !dbg !97507
  %i.drq = load ptr, ptr %i.drp, align 8, !dbg !97508, !alias.scope !93276, !nonnull !2293, !noundef !2293
  %i.drr = atomicrmw add ptr %i.drq, i64 -1 release, align 8, !dbg !97509, !noalias !93276
  %i.drs = icmp eq i64 %i.drr, 1, !dbg !97510
  br i1 %i.drs, label %bb.avf, label %.noexc3093, !dbg !97510

bb.avf:                                           ; preds = %bb.ave
  fence acquire, !dbg !97511
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.drp) #44
          to label %.noexc3093 unwind label %bb.ap, !dbg !97512

.noexc3093:                                       ; preds = %bb.avf, %bb.ave
  %i.drt = getelementptr inbounds nuw i8, ptr %i.il, i64 24, !dbg !97089 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93277), !dbg !97089
  call void @llvm.experimental.noalias.scope.decl(metadata !93278), !dbg !97513
  %i.dru = load ptr, ptr %i.drt, align 8, !dbg !97514, !alias.scope !93279, !nonnull !2293, !noundef !2293
  %i.drv = atomicrmw add ptr %i.dru, i64 -1 release, align 8, !dbg !97515, !noalias !93279
  %i.drw = icmp eq i64 %i.drv, 1, !dbg !97516
  br i1 %i.drw, label %bb.avg, label %.critedge2460, !dbg !97516

bb.avg:                                           ; preds = %.noexc3093
  fence acquire, !dbg !97517
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.drt) #44
          to label %.critedge2460 unwind label %bb.ap, !dbg !97518

bb.avh:                                           ; preds = %bb.avb
  %i.drx = getelementptr inbounds nuw i8, ptr %i.il, i64 128, !dbg !97519
  %i.dry = load i64, ptr %i.drx, align 16, !dbg !97519, !range !2813, !alias.scope !93280, !noundef !2293 ; 2 uses
  %i.drz = icmp ne i64 %i.dry, -9223372036854775778, !dbg !97519
  call void @llvm.assume(i1 %i.drz), !dbg !97519
  %i.dsa = icmp ult i64 %i.dry, -9223372036854775780, !dbg !97519
  br i1 %i.dsa, label %.invoke5114.a, label %.critedge2460, !dbg !97519

.invoke5114.a:                                    ; preds = %bb.avh, %bb.avc
  %i.dsb = getelementptr inbounds nuw i8, ptr %i.il, i64 16, !dbg !97089
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.dsb)
          to label %.critedge2460 unwind label %bb.ap, !dbg !97089

bb.avi:                                           ; preds = %bb.aa
  %i.dsc = load i64, ptr %i.ea, align 8, !dbg !97520, !range !2573, !noundef !2293
  %.not2153 = icmp eq i64 %i.dsc, 18, !dbg !97520
  br i1 %.not2153, label %bb.avl, label %bb.avj, !dbg !97521

bb.avj:                                           ; preds = %bb.avi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !dbg !97522
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0s_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.eb, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.ea)
          to label %bb.avk unwind label %bb.c, !dbg !97522

bb.avk:                                           ; preds = %bb.avj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef nonnull align 8 dereferenceable(72) %i.eb, i64 72, i1 false), !dbg !97523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !dbg !97524
  %.sroa.01232.0.copyload = load i64, ptr %i.ea, align 8, !dbg !97525
  %.sroa.61233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !97525
  %.sroa.71234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 32, !dbg !97525
  %.sroa.31237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !97526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.31237.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71234.0..sroa_idx, i64 40, i1 false), !dbg !97525
  %.sroa.21236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61233.0..sroa_idx, i64 24, i1 false), !dbg !97527
  store i64 %.sroa.01232.0.copyload, ptr %0, align 8, !dbg !97526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tt), !dbg !97528
  %i.dsd = load i64, ptr %1, align 16, !dbg !94133, !range !2692, !noundef !2293 ; 3 uses
  %i.dse = icmp ne i64 %i.dsd, -9223372036854775782, !dbg !94133
  call void @llvm.assume(i1 %i.dse), !dbg !94133
  %i.dsf = add nsw i64 %i.dsd, 9223372036854775802, !dbg !94133
  %i.dsg = icmp ugt i64 %i.dsd, -9223372036854775803, !dbg !94133
  %i.dsh = select i1 %i.dsg, i64 %i.dsf, i64 20, !dbg !94133
  switch i64 %i.dsh, label %.loopexit4601 [
    i64 0, label %bb.gv
    i64 1, label %bb.ar
    i64 2, label %bb.at
    i64 3, label %bb.av
    i64 4, label %bb.bb
    i64 5, label %bb.bd
    i64 6, label %bb.bh
    i64 7, label %bb.bj
    i64 8, label %bb.bl
    i64 9, label %bb.bn
    i64 10, label %bb.bp
    i64 11, label %bb.br
    i64 12, label %bb.bt
    i64 13, label %bb.bv
    i64 14, label %bb.bx
    i64 15, label %bb.bz
    i64 16, label %bb.cb
    i64 17, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725
    i64 18, label %bb.cg
    i64 19, label %bb.cj
    i64 20, label %bb.cl
    i64 21, label %bb.cn
    i64 22, label %bb.cq
    i64 23, label %bb.cs
  ], !dbg !94133

bb.avl:                                           ; preds = %bb.avi
  %i.dsi = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !97529 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef nonnull align 8 dereferenceable(24) %i.dsi, i64 24, i1 false), !dbg !93282
  %i.dsj = trunc nuw i8 %.sroa.331.0.copyload to i1, !dbg !97530
  br i1 %i.dsj, label %bb.avn, label %bb.avm, !dbg !97530

bb.avm:                                           ; preds = %bb.avr, %bb.avl
  %i.dsk = trunc nuw i8 %.sroa.228.0.copyload to i1, !dbg !97531
  br i1 %i.dsk, label %bb.avt, label %bb.avs, !dbg !97531

bb.avn:                                           ; preds = %bb.avl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.651), !dbg !93285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tr), !dbg !93285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tq), !dbg !97532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tq, ptr noundef nonnull align 8 dereferenceable(24) %i.dsi, i64 24, i1 false), !dbg !97532
  %i.dsl = load ptr, ptr %i.uc, align 16, !dbg !97533, !nonnull !2293, !align !2349, !noundef !2293 ; 2 uses
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.dsl, i64 192, !dbg !97533
  %i.dsn = load ptr, ptr %i.dsm, align 8, !dbg !97533, !nonnull !2293, !align !2349, !noundef !2293
  %i.dso = getelementptr inbounds nuw i8, ptr %i.dsl, i64 184, !dbg !97534
  %i.dsp = load ptr, ptr %i.dso, align 8, !dbg !97534, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir6concat23convert_diagonal_concat(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.tr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.tq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dsn, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dsp)
          to label %bb.avp unwind label %bb.avo, !dbg !93285

.thread4319:                                      ; preds = %bb.avv, %bb.awv, %bb.awa, %bb.avz, %bb.avt
  %lpad.thr_comm4317 = landingpad { ptr, i32 }
          cleanup
  br label %.thread4308, !dbg !97528

bb.avo:                                           ; preds = %bb.avn, %bb.awy
  %lpad.thr_comm.split-lp4318 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.478.93 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4318, 1
  %.sroa.02013.93 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4318, 0
  br label %.critedge2460, !dbg !97528

bb.avp:                                           ; preds = %bb.avn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tq), !dbg !97535
  %i.dsq = load i64, ptr %i.tr, align 8, !dbg !97536, !range !2573, !noundef !2293 ; 2 uses
  %.not2155 = icmp eq i64 %i.dsq, 18, !dbg !97536
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.tr, i64 8, !dbg !97537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, ptr noundef nonnull align 8 dereferenceable(24) %i.dsr, i64 24, i1 false), !dbg !97537
  br i1 %.not2155, label %bb.avr, label %bb.avq, !dbg !97538

bb.avq:                                           ; preds = %bb.avp
  %.sroa.61243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 32, !dbg !97539
  %.sroa.31246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !97540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.31246.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61243.0..sroa_idx, i64 40, i1 false), !dbg !97539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tr), !dbg !97541
  %.sroa.21245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21245.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, i64 24, i1 false), !dbg !97541
  store i64 %i.dsq, ptr %0, align 8, !dbg !97540
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651), !dbg !97542
  br label %bb.aww, !dbg !97543

bb.avr:                                           ; preds = %bb.avp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tr), !dbg !97541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, i64 24, i1 false), !dbg !93285
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651), !dbg !97542
end_hunk_4
begin_hunk_5_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a
  %i.esd = icmp ugt i8 %i.esc, -41, !dbg !98316
  br i1 %i.esd, label %bb.bia, label %bb.bhz, !dbg !98316

bb.bhz:                                           ; preds = %.lr.ph
  %i.ese = add i8 %i.esc, 64, !dbg !98329
  %i.esf = call i8 @llvm.umin.i8(i8 %i.ese, i8 24), !dbg !98330
  %.sroa.0.0.i.i3203 = zext nneg i8 %i.esf to i64, !dbg !98330
  br label %bb.bid, !dbg !98331

bb.bia:                                           ; preds = %.lr.ph
  %i.esg = load ptr, ptr %.sroa.0868.04728, align 8, !dbg !98332, !alias.scope !93910, !noundef !2293
  %i.esh = getelementptr inbounds nuw i8, ptr %.sroa.0868.04728, i64 8, !dbg !98333
  %i.esi = load i64, ptr %i.esh, align 8, !dbg !98333, !alias.scope !93910, !noundef !2293
  br label %bb.bid, !dbg !98334

._crit_edge:                                      ; preds = %bb.big
  %.pre4906 = load i64, ptr %i.acb, align 8, !dbg !98335
  %.pre4905 = load ptr, ptr %i.ej, align 8, !dbg !98335
  %i.esj = getelementptr inbounds nuw i8, ptr %i.ty, i64 24, !dbg !98336
  store i64 %i.epf, ptr %i.esj, align 8, !dbg !98336
  %i.esk = getelementptr inbounds nuw i8, ptr %i.ty, i64 32, !dbg !98336
  store i64 %i.epr, ptr %i.esk, align 16, !dbg !98336
  %i.esl = getelementptr inbounds nuw i8, ptr %i.ty, i64 8, !dbg !98336
  store ptr %.pre4905, ptr %i.esl, align 8, !dbg !98336
  %i.esm = getelementptr inbounds nuw i8, ptr %i.ty, i64 16, !dbg !98336
  store i64 %.pre4906, ptr %i.esm, align 16, !dbg !98336
  %i.esn = getelementptr inbounds nuw i8, ptr %i.ty, i64 40, !dbg !98336
  store i8 %i.acd, ptr %i.esn, align 8, !dbg !98336
  store i64 -9223372036854775784, ptr %i.ty, align 16, !dbg !98336
  call void @llvm.experimental.noalias.scope.decl(metadata !93911), !dbg !98300
  %i.eso = load i64, ptr %i.ef, align 8, !dbg !98337, !range !2315, !alias.scope !93911, !noundef !2293
  %i.esp = icmp eq i64 %i.eso, 0, !dbg !98337
  br i1 %i.esp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3209, label %bb.bib, !dbg !98337

bb.bib:                                           ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !93912), !dbg !98337
  call void @llvm.experimental.noalias.scope.decl(metadata !93913), !dbg !98338
  %i.esq = load ptr, ptr %i.eqx, align 8, !dbg !98339, !alias.scope !93914, !nonnull !2293, !noundef !2293
  %i.esr = atomicrmw add ptr %i.esq, i64 -1 release, align 8, !dbg !98340, !noalias !93914
  %i.ess = icmp eq i64 %i.esr, 1, !dbg !98341
  br i1 %i.ess, label %bb.bic, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3209, !dbg !98341

bb.bic:                                           ; preds = %bb.bib
  fence acquire, !dbg !98342
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eqx) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3209 unwind label %bb.bho, !dbg !98343

bb.bid:                                           ; preds = %bb.bia, %bb.bhz
  %.sroa.01.0.i3204 = phi i64 [ %i.esi, %bb.bia ], [ %.sroa.0.0.i.i3203, %bb.bhz ], !dbg !98344
  %.sroa.0.0.i3205 = phi ptr [ %i.esg, %bb.bia ], [ %.sroa.0868.04728, %bb.bhz ], !dbg !98345
  %i.est = getelementptr inbounds nuw i8, ptr %i.esa, i64 16, !dbg !98346
  invoke void @_RNvMs1_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE7try_getCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.est, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i3205, i64 noundef %.sroa.01.0.i3204)
          to label %bb.bie unwind label %.loopexit.split-lp4657.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !98347

bb.bie:                                           ; preds = %bb.bid
  %i.esu = load i64, ptr %i.af, align 8, !dbg !98348, !range !2573, !noundef !2293
  %.not2087 = icmp eq i64 %i.esu, 18, !dbg !98348
  br i1 %.not2087, label %bb.big, label %bb.bif, !dbg !98349

bb.bif:                                           ; preds = %bb.bie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !98350
  invoke fastcc void @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0s1b_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ag, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.af)
          to label %.loopexit4661 unwind label %.loopexit.split-lp4657.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !98350

.loopexit4661:                                    ; preds = %bb.bif
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !dbg !98351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !98352
  %.sroa.02005.0.copyload.pre = load i64, ptr %i.af, align 8, !dbg !98353
  %.sroa.62006.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !98353
  %.sroa.62006.0.copyload = load ptr, ptr %.sroa.62006.0..sroa_idx, align 8, !dbg !98353
  %.sroa.72007.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !98353
  %.sroa.32010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !98354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.32010.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.72007.0..sroa_idx, i64 56, i1 false), !dbg !98353
  store i64 %.sroa.02005.0.copyload.pre, ptr %0, align 8, !dbg !98354
  %.sroa.22009.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98354
  store ptr %.sroa.62006.0.copyload, ptr %.sroa.22009.0..sroa_idx, align 8, !dbg !98354
  br label %bb.bhw, !dbg !98313

bb.big:                                           ; preds = %bb.bie
  %i.esv = icmp eq ptr %i.erw, %i.erq, !dbg !98355
  br i1 %i.esv, label %._crit_edge, label %.lr.ph, !dbg !98356

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3209: ; preds = %bb.bib, %._crit_edge, %bb.bic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !98300
  call void @llvm.experimental.noalias.scope.decl(metadata !93921), !dbg !98284
  %i.esw = load i64, ptr %i.eg, align 8, !dbg !98357, !range !2315, !alias.scope !93921, !noundef !2293
  %i.esx = icmp eq i64 %i.esw, 0, !dbg !98357
  br i1 %i.esx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212, label %bb.bih, !dbg !98357

bb.bih:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3209
  call void @llvm.experimental.noalias.scope.decl(metadata !93922), !dbg !98357
  call void @llvm.experimental.noalias.scope.decl(metadata !93923), !dbg !98358
  %i.esy = load ptr, ptr %i.eqe, align 8, !dbg !98359, !alias.scope !93924, !nonnull !2293, !noundef !2293
  %i.esz = atomicrmw add ptr %i.esy, i64 -1 release, align 8, !dbg !98360, !noalias !93924
  %i.eta = icmp eq i64 %i.esz, 1, !dbg !98361
  br i1 %i.eta, label %bb.bii, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212, !dbg !98361

bb.bii:                                           ; preds = %bb.bih
  fence acquire, !dbg !98362
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eqe) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212 unwind label %.split4426, !dbg !98363

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3212: ; preds = %bb.bih, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3209, %bb.bii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !dbg !98284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !dbg !93818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !dbg !93818
  br label %bb.al, !dbg !93818

bb.bij:                                           ; preds = %bb.am, %bb.al
  %i.etb = getelementptr inbounds nuw i8, ptr %i.adj, i64 8, !dbg !98364
  %i.etc = load ptr, ptr %i.etb, align 8, !dbg !98364, !alias.scope !90606, !nonnull !2293, !noundef !2293
  %i.etd = getelementptr inbounds nuw [368 x i8], ptr %i.etc, i64 %i.adl, !dbg !98365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.etd, ptr noundef nonnull align 16 dereferenceable(368) %i.ty, i64 368, i1 false), !dbg !98366
  %i.ete = add nuw nsw i64 %i.adl, 1, !dbg !98367
  store i64 %i.ete, ptr %i.adk, align 8, !dbg !98367, !alias.scope !90606
  %i.etf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98368
  store i64 %i.adl, ptr %i.etf, align 8, !dbg !98368
  store i64 18, ptr %0, align 8, !dbg !98368
  %i.etg = load i64, ptr %1, align 16, !dbg !94133, !range !2692, !noundef !2293 ; 2 uses
  %i.eth = icmp ne i64 %i.etg, -9223372036854775782, !dbg !94133
  call void @llvm.assume(i1 %i.eth), !dbg !94133
  %i.eti = icmp eq i64 %i.etg, -9223372036854775799, !dbg !94133
  br i1 %i.eti, label %bb.bik, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bik:                                           ; preds = %bb.bij
  %i.etj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93925), !dbg !94133
  %i.etk = load i64, ptr %i.etj, align 8, !dbg !98369, !range !2295, !alias.scope !93925, !noundef !2293
  %i.etl = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !98369 ; 5 uses
  switch i64 %i.etk, label %bb.bil [
    i64 0, label %bb.bin
    i64 1, label %bb.bio
  ], !dbg !98369

bb.bil:                                           ; preds = %bb.bik
  call void @llvm.experimental.noalias.scope.decl(metadata !93926), !dbg !98369
  call void @llvm.experimental.noalias.scope.decl(metadata !93927), !dbg !98370
  %i.etm = load ptr, ptr %i.etl, align 16, !dbg !98371, !alias.scope !93928, !nonnull !2293, !noundef !2293
  %i.etn = atomicrmw add ptr %i.etm, i64 -1 release, align 8, !dbg !98372, !noalias !93928
  %i.eto = icmp eq i64 %i.etn, 1, !dbg !98373
  br i1 %i.eto, label %bb.bim, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3216, !dbg !98373

bb.bim:                                           ; preds = %bb.bil
  fence acquire, !dbg !98374
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.etl) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3216 unwind label %bb.biq, !dbg !98375

bb.bin:                                           ; preds = %bb.bik
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.etl)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3216 unwind label %bb.biq, !dbg !98376

bb.bio:                                           ; preds = %bb.bik
  call void @llvm.experimental.noalias.scope.decl(metadata !93929), !dbg !98369
  call void @llvm.experimental.noalias.scope.decl(metadata !93930), !dbg !98377
  %i.etp = load ptr, ptr %i.etl, align 16, !dbg !98378, !alias.scope !93931, !nonnull !2293, !noundef !2293
  %i.etq = atomicrmw add ptr %i.etp, i64 -1 release, align 8, !dbg !98379, !noalias !93931
  %i.etr = icmp eq i64 %i.etq, 1, !dbg !98380
  br i1 %i.etr, label %bb.bip, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3216, !dbg !98380

bb.bip:                                           ; preds = %bb.bio
  fence acquire, !dbg !98381
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.etl) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3216 unwind label %bb.biq, !dbg !98382

bb.biq:                                           ; preds = %bb.bip, %bb.bin, %bb.bim
  %i.ets = landingpad { ptr, i32 }
          cleanup
  %i.ett = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !94133
  %.val2620 = load ptr, ptr %i.ett, align 8, !dbg !94133, !nonnull !2293, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr %.val2620) #43
          to label %.body3217 unwind label %bb.ap, !dbg !94133

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3216: ; preds = %bb.bio, %bb.bil, %bb.bim, %bb.bin, %bb.bip
  %i.etu = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !94133
  %.val2619 = load ptr, ptr %i.etu, align 8, !dbg !94133, !nonnull !2293, !noundef !2293 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEBM_(ptr noalias noundef nonnull align 8 dereferenceable(376) %.val2619)
          to label %bb.bis unwind label %bb.bir, !dbg !98383

bb.bir:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3216
  %i.etv = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2619, i64 noundef 376, i64 noundef 8) #37, !dbg !98384
  br label %.body3217, !dbg !98383

.body3217:                                        ; preds = %bb.bir, %bb.biq
  %.pn2430.a = phi { ptr, i32 } [ %i.ets, %bb.biq ], [ %i.etv, %bb.bir ] ; 2 uses
  %.sroa.478.123 = extractvalue { ptr, i32 } %.pn2430.a, 1
  %.sroa.02013.123 = extractvalue { ptr, i32 } %.pn2430.a, 0
  %i.etw = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !94133
  %.val2625 = load ptr, ptr %i.etw, align 16, !dbg !94133, !nonnull !2293, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr nonnull %.val2625) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

bb.bis:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit3216
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2619, i64 noundef 376, i64 noundef 8) #37, !dbg !98385
  %i.etx = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !94133
  %.val2624 = load ptr, ptr %i.etx, align 16, !dbg !94133, !nonnull !2293, !noundef !2293
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr nonnull %.val2624), !dbg !94133
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

.critedge2488:                                    ; preds = %.invoke5115, %.invoke5113, %bb.bqp, %.critedge2533, %bb.bqo, %bb.bqe, %.critedge2519, %bb.bpz, %.critedge2510, %bb.bpt, %.noexc3320, %.critedge2503, %bb.bpl, %bb.bpe, %.noexc3304, %bb.bpc, %bb.boy, %bb.boz, %bb.bou, %bb.bnq, %bb.bnr, %bb.bmv, %bb.bmw, %bb.bmb, %bb.bmc, %bb.blq, %bb.blr, %bb.blo, %bb.blp, %.body2731, %bb.bki, %bb.bke, %bb.bkf, %bb.bkc, %bb.bkd, %.body3217, %bb.boq, %bb.boo, %bb.bon, %bb.bok, %bb.boi, %bb.boh, %bb.bog, %bb.bof, %bb.boe, %bb.bod, %bb.boc, %bb.bob, %bb.boa, %bb.bnz, %bb.bny, %bb.bnv, %.noexc3350, %.noexc3346, %.critedge2524, %.noexc3340, %.noexc3332.a, %.noexc3324.a, %.critedge2497.a, %bb.box, %.noexc3298, %bb.bor, %bb.bop, %bb.bom, %bb.bol, %bb.boj, %bb.bnw, %bb.bnu, %bb.bnt, %bb.bnk, %bb.bnh, %bb.bng, %bb.bnf, %20, %15, %bb.blt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3258, %bb.bjv
  %.sroa.02013.124 = phi ptr [ %9, %bb.bjv ], [ %.sroa.02013.0, %bb.bod ], [ %.sroa.02013.0, %bb.boq ], [ %.sroa.02013.123, %.body3217 ], [ %.sroa.02013.127, %bb.bkc ], [ %.sroa.02013.0, %bb.boh ], [ %i.ewv, %bb.bke ], [ %.sroa.02013.0, %bb.bog ], [ %.sroa.02013.131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3258 ], [ %i.exg, %.body2731 ], [ %i.ewv, %bb.bkf ], [ %i.exg, %bb.bki ], [ %.sroa.02013.135, %bb.blo ], [ %.sroa.02013.0, %bb.bop ], [ %i.faa, %bb.blt ], [ %.sroa.02013.0, %.invoke5115 ], [ %i.ezp, %bb.blr ], [ %i.ezp, %bb.blq ], [ %18, %15 ], [ %.sroa.02013.0, %bb.bom ], [ %.sroa.02013.136, %bb.bmc ], [ %.sroa.02013.136, %bb.bmb ], [ %23, %20 ], [ %.sroa.02013.0, %bb.boe ], [ %.sroa.02013.142, %bb.bnf ], [ %.sroa.02013.141, %bb.bmv ], [ %i.fcl, %bb.bng ], [ %.sroa.02013.0, %bb.bok ], [ %i.fcq, %bb.bnh ], [ %.sroa.02013.0, %.noexc3350 ], [ %i.fcx, %bb.bnk ], [ %.sroa.02013.0, %bb.bqp ], [ %.sroa.02013.135, %bb.blp ], [ %.sroa.02013.141, %bb.bmw ], [ %.sroa.02013.0, %.critedge2533 ], [ %.sroa.02013.0, %bb.bnt ], [ %.sroa.02013.0, %bb.bor ], [ %.sroa.02013.0, %bb.bnu ], [ %.sroa.02013.0, %.noexc3298 ], [ %.sroa.02013.143, %bb.bnq ], [ %.sroa.02013.143, %bb.bnr ], [ %.sroa.02013.0, %bb.bnw ], [ %.sroa.02013.0, %bb.bou ], [ %.sroa.02013.0, %bb.box ], [ %.sroa.02013.0, %bb.boz ], [ %.sroa.02013.0, %bb.boy ], [ %.sroa.02013.0, %bb.bpc ], [ %.sroa.02013.0, %.noexc3304 ], [ %.sroa.02013.0, %.critedge2497.a ], [ %.sroa.02013.0, %bb.boi ], [ %.sroa.02013.0, %bb.bpe ], [ %.sroa.02013.0, %bb.bpt ], [ %.sroa.02013.0, %bb.bpl ], [ %.sroa.02013.0, %.critedge2503 ], [ %.sroa.02013.0, %.noexc3324.a ], [ %.sroa.02013.0, %.noexc3320 ], [ %.sroa.02013.0, %bb.bpz ], [ %.sroa.02013.0, %.invoke5113 ], [ %.sroa.02013.0, %.noexc3332.a ], [ %.sroa.02013.0, %.critedge2510 ], [ %.sroa.02013.0, %bb.bof ], [ %.sroa.02013.0, %bb.bqo ], [ %.sroa.02013.0, %.noexc3340 ], [ %.sroa.02013.0, %.critedge2519 ], [ %.sroa.02013.0, %.critedge2524 ], [ %.sroa.02013.127, %bb.bkd ], [ %.sroa.02013.0, %bb.bon ], [ %.sroa.02013.0, %bb.boj ], [ %.sroa.02013.0, %.noexc3346 ], [ %.sroa.02013.0, %bb.bqe ], [ %.sroa.02013.0, %bb.boc ], [ %.sroa.02013.0, %bb.bol ], [ %.sroa.02013.0, %bb.boo ], [ %.sroa.02013.0, %bb.bnv ], [ %.sroa.02013.0, %bb.bny ], [ %.sroa.02013.0, %bb.bnz ], [ %.sroa.02013.0, %bb.boa ], [ %.sroa.02013.0, %bb.bob ]
  %.sroa.478.124 = phi i32 [ %8, %bb.bjv ], [ %.sroa.478.0, %bb.bod ], [ %.sroa.478.0, %bb.boq ], [ %.sroa.478.123, %.body3217 ], [ %.sroa.478.127, %bb.bkc ], [ %.sroa.478.0, %bb.boh ], [ %i.ewu, %bb.bke ], [ %.sroa.478.0, %bb.bog ], [ %.sroa.478.131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3258 ], [ %i.exf, %.body2731 ], [ %i.ewu, %bb.bkf ], [ %i.exf, %bb.bki ], [ %.sroa.478.135, %bb.blo ], [ %.sroa.478.0, %bb.bop ], [ %i.ezz, %bb.blt ], [ %.sroa.478.0, %.invoke5115 ], [ %i.ezo, %bb.blr ], [ %i.ezo, %bb.blq ], [ %17, %15 ], [ %.sroa.478.0, %bb.bom ], [ %.sroa.478.136, %bb.bmc ], [ %.sroa.478.136, %bb.bmb ], [ %22, %20 ], [ %.sroa.478.0, %bb.boe ], [ %.sroa.478.142, %bb.bnf ], [ %.sroa.478.141, %bb.bmv ], [ %i.fck, %bb.bng ], [ %.sroa.478.0, %bb.bok ], [ %i.fcp, %bb.bnh ], [ %.sroa.478.0, %.noexc3350 ], [ %i.fcw, %bb.bnk ], [ %.sroa.478.0, %bb.bqp ], [ %.sroa.478.135, %bb.blp ], [ %.sroa.478.141, %bb.bmw ], [ %.sroa.478.0, %.critedge2533 ], [ %.sroa.478.0, %bb.bnt ], [ %.sroa.478.0, %bb.bor ], [ %.sroa.478.0, %bb.bnu ], [ %.sroa.478.0, %.noexc3298 ], [ %.sroa.478.143, %bb.bnq ], [ %.sroa.478.143, %bb.bnr ], [ %.sroa.478.0, %bb.bnw ], [ %.sroa.478.0, %bb.bou ], [ %.sroa.478.0, %bb.box ], [ %.sroa.478.0, %bb.boz ], [ %.sroa.478.0, %bb.boy ], [ %.sroa.478.0, %bb.bpc ], [ %.sroa.478.0, %.noexc3304 ], [ %.sroa.478.0, %.critedge2497.a ], [ %.sroa.478.0, %bb.boi ], [ %.sroa.478.0, %bb.bpe ], [ %.sroa.478.0, %bb.bpt ], [ %.sroa.478.0, %bb.bpl ], [ %.sroa.478.0, %.critedge2503 ], [ %.sroa.478.0, %.noexc3324.a ], [ %.sroa.478.0, %.noexc3320 ], [ %.sroa.478.0, %bb.bpz ], [ %.sroa.478.0, %.invoke5113 ], [ %.sroa.478.0, %.noexc3332.a ], [ %.sroa.478.0, %.critedge2510 ], [ %.sroa.478.0, %bb.bof ], [ %.sroa.478.0, %bb.bqo ], [ %.sroa.478.0, %.noexc3340 ], [ %.sroa.478.0, %.critedge2519 ], [ %.sroa.478.0, %.critedge2524 ], [ %.sroa.478.127, %bb.bkd ], [ %.sroa.478.0, %bb.bon ], [ %.sroa.478.0, %bb.boj ], [ %.sroa.478.0, %.noexc3346 ], [ %.sroa.478.0, %bb.bqe ], [ %.sroa.478.0, %bb.boc ], [ %.sroa.478.0, %bb.bol ], [ %.sroa.478.0, %bb.boo ], [ %.sroa.478.0, %bb.bnv ], [ %.sroa.478.0, %bb.bny ], [ %.sroa.478.0, %bb.bnz ], [ %.sroa.478.0, %bb.boa ], [ %.sroa.478.0, %bb.bob ]
  %i.ety = insertvalue { ptr, i32 } poison, ptr %.sroa.02013.124, 0, !dbg !94406
  %i.etz = insertvalue { ptr, i32 } %i.ety, i32 %.sroa.478.124, 1, !dbg !94406
  br label %common.resume, !dbg !94406

bb.bit:                                           ; preds = %bb.bht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i64 72, i1 false), !dbg !98386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !98387
  br label %bb.bhw, !dbg !98313

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3202: ; preds = %bb.bhx, %bb.bhw, %bb.bhy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !98300
  call void @llvm.experimental.noalias.scope.decl(metadata !93932), !dbg !98284
  %i.eua = load i64, ptr %i.eg, align 8, !dbg !98388, !range !2315, !alias.scope !93932, !noundef !2293
  %i.eub = icmp eq i64 %i.eua, 0, !dbg !98388
  br i1 %i.eub, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3221, label %bb.biu, !dbg !98388

bb.biu:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3202
  call void @llvm.experimental.noalias.scope.decl(metadata !93933), !dbg !98388
  call void @llvm.experimental.noalias.scope.decl(metadata !93934), !dbg !98389
  %i.euc = load ptr, ptr %i.eqe, align 8, !dbg !98390, !alias.scope !93935, !nonnull !2293, !noundef !2293
  %i.eud = atomicrmw add ptr %i.euc, i64 -1 release, align 8, !dbg !98391, !noalias !93935
  %i.eue = icmp eq i64 %i.eud, 1, !dbg !98392
  br i1 %i.eue, label %bb.biv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3221, !dbg !98392

bb.biv:                                           ; preds = %bb.biu
  fence acquire, !dbg !98393
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eqe) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3221 unwind label %.split4426.thread, !dbg !98394

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3221: ; preds = %bb.biu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3202, %bb.biv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !dbg !98284
  call void @llvm.experimental.noalias.scope.decl(metadata !93936), !dbg !93818
  call void @llvm.experimental.noalias.scope.decl(metadata !93937), !dbg !98395
  %i.euf = load ptr, ptr %i.ej, align 8, !dbg !98396, !alias.scope !93938, !nonnull !2293, !noundef !2293
  %i.eug = atomicrmw add ptr %i.euf, i64 -1 release, align 8, !dbg !98397, !noalias !93938
  %i.euh = icmp eq i64 %i.eug, 1, !dbg !98398
  br i1 %i.euh, label %.invoke5119, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3225.sink.split, !dbg !98398

.thread4441:                                      ; preds = %.noexc3195, %.split4426
  %.pn2092.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp4430, %.split4426 ], [ %.pn, %.noexc3195 ] ; 2 uses
  %.sroa.478.1254444 = extractvalue { ptr, i32 } %.pn2092.ph, 1
  %.sroa.02013.1254445 = extractvalue { ptr, i32 } %.pn2092.ph, 0
  br label %.critedge2460, !dbg !93818

.noexc3226:                                       ; preds = %bb.bjg, %bb.bjf
  %.sroa.478.125 = extractvalue { ptr, i32 } %.pn20904428, 1 ; 2 uses
  %.sroa.02013.125 = extractvalue { ptr, i32 } %.pn20904428, 0 ; 2 uses
  br i1 %.sroa.0902.04427, label %bb.bjh, label %.critedge2460, !dbg !93818

.split4446.thread:                                ; preds = %.invoke5119
  %lpad.thr_comm4451 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.478.12544474455 = extractvalue { ptr, i32 } %lpad.thr_comm4451, 1
  %.sroa.02013.12544484456 = extractvalue { ptr, i32 } %lpad.thr_comm4451, 0
  br label %.critedge2460, !dbg !93818

.split4446:                                       ; preds = %bb.bgz
  %lpad.thr_comm.split-lp4452 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.478.1254447 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4452, 1
  %.sroa.02013.1254448 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4452, 0
  br label %bb.bjh, !dbg !93818

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3225.sink.split: ; preds = %.invoke5119, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit3221, %bb.bhf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !dbg !93818
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3225, !dbg !93818

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3225: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3225.sink.split, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3187, %bb.biw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !dbg !93818
  br label %bb.gh, !dbg !94755

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3187: ; preds = %bb.bgy, %bb.bgz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !dbg !93818
  call void @llvm.experimental.noalias.scope.decl(metadata !93939), !dbg !93818
  call void @llvm.experimental.noalias.scope.decl(metadata !93940), !dbg !98399
  %i.eui = load ptr, ptr %i.ek, align 8, !dbg !98400, !alias.scope !93941, !nonnull !2293, !noundef !2293
  %i.euj = atomicrmw add ptr %i.eui, i64 -1 release, align 8, !dbg !98401, !noalias !93941
  %i.euk = icmp eq i64 %i.euj, 1, !dbg !98402
  br i1 %i.euk, label %bb.biw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3225, !dbg !98402

bb.biw:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit3187
  fence acquire, !dbg !98403
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ek) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3225 unwind label %bb.c, !dbg !98404

bb.bix:                                           ; preds = %bb.gh
  br i1 %.sroa.01021.3, label %bb.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.biy:                                           ; preds = %bb.gh
  br i1 %.sroa.01092.3, label %bb.bp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.biz:                                           ; preds = %bb.gh
  br i1 %.sroa.01100.3, label %bb.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bja:                                           ; preds = %bb.gh
  br i1 %.sroa.01105.3, label %bb.bt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bjb:                                           ; preds = %bb.gh
  br i1 %.sroa.01125.3, label %bb.bv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bjc:                                           ; preds = %bb.gh
  br i1 %.sroa.01038.3, label %bb.bx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bjd:                                           ; preds = %bb.gh
  br i1 %.sroa.01017.3, label %bb.cd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bje:                                           ; preds = %bb.gh
  br i1 %.sroa.01147.4, label %bb.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bjf:                                           ; preds = %.split4426.thread, %.noexc3195
  %.pn20904428 = phi { ptr, i32 } [ %lpad.thr_comm4429, %.split4426.thread ], [ %.pn, %.noexc3195 ] ; 2 uses
  %.sroa.0902.04427 = phi i1 [ %.sroa.0902.1.ph, %.split4426.thread ], [ false, %.noexc3195 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !93942), !dbg !93818
  call void @llvm.experimental.noalias.scope.decl(metadata !93943), !dbg !98405
  %i.eul = load ptr, ptr %i.ej, align 8, !dbg !98406, !alias.scope !93944, !nonnull !2293, !noundef !2293
  %i.eum = atomicrmw add ptr %i.eul, i64 -1 release, align 8, !dbg !98407, !noalias !93944
  %i.eun = icmp eq i64 %i.eum, 1, !dbg !98408
  br i1 %i.eun, label %bb.bjg, label %.noexc3226, !dbg !98408

bb.bjg:                                           ; preds = %bb.bjf
  fence acquire, !dbg !98409
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ej) #44
          to label %.noexc3226 unwind label %bb.ap, !dbg !98410

bb.bjh:                                           ; preds = %.split4446, %.noexc3226
  %.sroa.02013.1254450 = phi ptr [ %.sroa.02013.1254448, %.split4446 ], [ %.sroa.02013.125, %.noexc3226 ] ; 2 uses
  %.sroa.478.1254449 = phi i32 [ %.sroa.478.1254447, %.split4446 ], [ %.sroa.478.125, %.noexc3226 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93945), !dbg !93818
  call void @llvm.experimental.noalias.scope.decl(metadata !93946), !dbg !98411
  %i.euo = load ptr, ptr %i.ek, align 8, !dbg !98412, !alias.scope !93947, !nonnull !2293, !noundef !2293
  %i.eup = atomicrmw add ptr %i.euo, i64 -1 release, align 8, !dbg !98413, !noalias !93947
  %i.euq = icmp eq i64 %i.eup, 1, !dbg !98414
  br i1 %i.euq, label %bb.bji, label %.critedge2460, !dbg !98414

bb.bji:                                           ; preds = %bb.bjh
  fence acquire, !dbg !98415
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ek) #44
          to label %.critedge2460 unwind label %bb.ap, !dbg !98416

bb.bjj:                                           ; preds = %bb.af, %bb.bjn, %bb.bjl, %bb.bjk
  %i.eur = phi ptr [ %i.acl, %bb.af ], [ %.pre, %bb.bjn ], [ %i.acl, %bb.bjl ], [ %i.acl, %bb.bjk ], !dbg !98417 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !dbg !93948
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.83685), !dbg !98418
  %i.eus = cmpxchg ptr %i.eur, i64 1, i64 0 monotonic monotonic, align 8, !dbg !98419, !noalias !93949
  %.sroa.18.0.in.i.i3230 = extractvalue { i64, i1 } %i.eus, 1, !dbg !98420
  br i1 %.sroa.18.0.in.i.i3230, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i3231, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233.thread, !dbg !98421

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i3231: ; preds = %bb.bjj
  fence acquire, !dbg !98422
  %i.eut = getelementptr inbounds nuw i8, ptr %i.eur, i64 16, !dbg !98423
  %.sroa.03680.0.copyload3681 = load i64, ptr %i.eut, align 16, !dbg !98423 ; 2 uses
  %.sroa.63682.0..sroa_idx3683 = getelementptr inbounds nuw i8, ptr %i.eur, i64 24, !dbg !98423
  %.sroa.63682.0.copyload3684 = load ptr, ptr %.sroa.63682.0..sroa_idx3683, align 8, !dbg !98423 ; 2 uses
  %.sroa.83685.0..sroa_idx3686 = getelementptr inbounds nuw i8, ptr %i.eur, i64 32, !dbg !98423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83685, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83685.0..sroa_idx3686, i64 352, i1 false), !dbg !98423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !98424, !noalias !93949
  store ptr %i.eur, ptr %i.b, align 8, !dbg !98425, !noalias !93949
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233 unwind label %.thread4476, !dbg !98426

.thread4476:                                      ; preds = %bb.bjr, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i3231
  %lpad.thr_comm4474 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.euu = extractvalue { ptr, i32 } %lpad.thr_comm4474, 0
  %i.euv = extractvalue { ptr, i32 } %lpad.thr_comm4474, 1
  br label %.critedge2460, !dbg !98427

bb.bjk:                                           ; preds = %bb.af
  %i.euw = load ptr, ptr %i.uc, align 16, !dbg !98428, !nonnull !2293, !align !2349, !noundef !2293 ; 3 uses
  %i.eux = getelementptr inbounds nuw i8, ptr %i.euw, i64 200, !dbg !98428
  %i.euy = load ptr, ptr %i.eux, align 8, !dbg !98428, !nonnull !2293, !align !3282, !noundef !2293
  %i.euz = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !94378
  %i.eva = load i32, ptr %i.euz, align 4, !dbg !94378
  %.val2677 = load i32, ptr %i.euy, align 4, !dbg !98429, !noundef !2293
  %i.evb = and i32 %.val2677, 116, !dbg !98430    ; 2 uses
  %i.evc = and i32 %i.evb, %i.eva, !dbg !98431
  %i.evd = icmp eq i32 %i.evc, %i.evb, !dbg !98431
  %i.eve = trunc nuw i64 %i.ach to i1, !dbg !98432
  %or.cond12 = and i1 %i.evd, %i.eve, !dbg !98432
  br i1 %or.cond12, label %bb.bjl, label %bb.bjj, !dbg !98432

bb.bjl:                                           ; preds = %bb.bjk
  %i.evf = getelementptr inbounds nuw i8, ptr %i.euw, i64 192, !dbg !98433
  %i.evg = load ptr, ptr %i.evf, align 8, !dbg !98433, !nonnull !2293, !align !2349, !noundef !2293
  %i.evh = getelementptr inbounds nuw i8, ptr %i.evg, i64 24, !dbg !98434
  %i.evi = load i32, ptr %i.evh, align 8, !dbg !98434, !noundef !2293
  %i.evj = icmp eq i32 %i.acn, %i.evi, !dbg !98435
  br i1 %i.evj, label %bb.bjm, label %bb.bjj, !dbg !98435

bb.bjm:                                           ; preds = %bb.bjl
  %i.evk = getelementptr inbounds nuw i8, ptr %i.euw, i64 48, !dbg !98436
  %i.evl = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapmuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.evk, i32 noundef %i.acn)
          to label %bb.bjn unwind label %bb.bjt, !dbg !98437

bb.bjn:                                           ; preds = %bb.bjm
  %i.evm = extractvalue { i64, i1 } %i.evl, 1, !dbg !98438
  %.pre = load ptr, ptr %i.ee, align 8, !dbg !98417 ; 2 uses
  br i1 %i.evm, label %bb.bjj, label %bb.bjo, !dbg !98439

bb.bjo:                                           ; preds = %bb.bjn
  %i.evn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98440
  store i64 %i.acj, ptr %i.evn, align 8, !dbg !98440
  store i64 18, ptr %0, align 8, !dbg !98440
  %i.evo = atomicrmw add ptr %.pre, i64 -1 release, align 8, !dbg !98441, !noalias !93962
  %i.evp = icmp eq i64 %i.evo, 1, !dbg !98442
  br i1 %i.evp, label %bb.bjp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, !dbg !98442

bb.bjp:                                           ; preds = %bb.bjo
  fence acquire, !dbg !98443
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ee) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235 unwind label %bb.c, !dbg !98444

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235: ; preds = %bb.bjo, %bb.bjp, %bb.bjs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !98427
  %i.evq = load i64, ptr %1, align 16, !dbg !94133, !range !2692, !noundef !2293 ; 3 uses
  %i.evr = icmp ne i64 %i.evq, -9223372036854775782, !dbg !94133
  call void @llvm.assume(i1 %i.evr), !dbg !94133
  %i.evs = add nsw i64 %i.evq, 9223372036854775802, !dbg !94133
  %i.evt = icmp ugt i64 %i.evq, -9223372036854775803, !dbg !94133
  %i.evu = select i1 %i.evt, i64 %i.evs, i64 20, !dbg !94133
  switch i64 %i.evu, label %.loopexit4601 [
    i64 0, label %bb.gv
    i64 1, label %bb.ar
    i64 2, label %bb.at
    i64 3, label %bb.av
    i64 4, label %bb.bb
    i64 5, label %bb.bd
    i64 6, label %bb.bh
    i64 7, label %bb.bj
    i64 8, label %bb.bl
    i64 9, label %bb.bn
    i64 10, label %bb.bp
    i64 11, label %bb.br
    i64 12, label %bb.bt
    i64 13, label %bb.bv
    i64 14, label %bb.bx
    i64 15, label %bb.bz
    i64 16, label %bb.cb
    i64 17, label %bb.cd
    i64 18, label %bb.cg
    i64 19, label %bb.cj
    i64 20, label %bb.cl
    i64 21, label %bb.cn
    i64 22, label %bb.cq
    i64 23, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725
  ], !dbg !94133

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_.exit.i3231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !98445, !noalias !93949
  %i.evv = icmp eq i64 %.sroa.03680.0.copyload3681, -9223372036854775778, !dbg !98446
  br i1 %i.evv, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233.thread, label %bb.bjq, !dbg !98447

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233.thread: ; preds = %bb.bjj, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233
  %.sroa.63682.04481 = phi ptr [ %.sroa.63682.0.copyload3684, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233 ], [ %i.eur, %bb.bjj ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63682.04481) ]
  invoke fastcc void @_RNCNvMsB_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE15unwrap_or_clone0BO_(ptr noalias noundef align 16 captures(address) dereferenceable(368) %i.ed, ptr noundef nonnull %.sroa.63682.04481)
          to label %bb.bjr unwind label %.thread4476, !dbg !98448

bb.bjq:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233
  store i64 %.sroa.03680.0.copyload3681, ptr %i.ed, align 16, !dbg !98449
  %.sroa.63682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8, !dbg !98449
  store ptr %.sroa.63682.0.copyload3684, ptr %.sroa.63682.0..sroa_idx, align 8, !dbg !98449
  %.sroa.83685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16, !dbg !98449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83685.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(352) %.sroa.83685, i64 352, i1 false), !dbg !98449
  br label %bb.bjr, !dbg !98450

bb.bjr:                                           ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE10try_unwrapBM_.exit3233.thread, %bb.bjq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83685), !dbg !98451
  %i.evw = load ptr, ptr %i.uc, align 16, !dbg !98452, !nonnull !2293, !align !2349, !noundef !2293
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.ed, ptr noalias noundef nonnull align 8 dereferenceable(232) %i.evw)
          to label %bb.bjs unwind label %.thread4476, !dbg !98453

bb.bjs:                                           ; preds = %bb.bjr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !98454
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3235, !dbg !98427

bb.bjt:                                           ; preds = %bb.bjm
  %lpad.thr_comm.split-lp4475 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.evx = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4475, 0 ; 2 uses
  %i.evy = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp4475, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93965), !dbg !98427
  call void @llvm.experimental.noalias.scope.decl(metadata !93966), !dbg !98455
  %i.evz = load ptr, ptr %i.ee, align 8, !dbg !98456, !alias.scope !93967, !nonnull !2293, !noundef !2293
  %i.ewa = atomicrmw add ptr %i.evz, i64 -1 release, align 8, !dbg !98457, !noalias !93967
  %i.ewb = icmp eq i64 %i.ewa, 1, !dbg !98458
  br i1 %i.ewb, label %bb.bju, label %.critedge2460, !dbg !98458

bb.bju:                                           ; preds = %bb.bjt
  fence acquire, !dbg !98459
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ee) #44
          to label %.critedge2460 unwind label %bb.ap, !dbg !98460

bb.bjv:                                           ; preds = %bb.as
  %i.ewc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %8 = extractvalue { ptr, i32 } %i.ewc, 1
  %9 = extractvalue { ptr, i32 } %i.ewc, 0
  %i.ewd = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ewd) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

10:                                               ; preds = %bb.as, %bb.ar
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %11), !dbg !94133
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bjw:                                           ; preds = %bb.ba, %bb.ay, %bb.ax
  %i.ewe = landingpad { ptr, i32 }
          cleanup
  %i.ewf = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !94133
  %.val2618 = load ptr, ptr %i.ewf, align 8, !dbg !94133, !nonnull !2293, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr %.val2618) #43
          to label %.body3238 unwind label %bb.ap, !dbg !94133

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit: ; preds = %bb.az, %bb.aw, %bb.ax, %bb.ay, %bb.ba
  %i.ewg = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !94133
  %.val2617 = load ptr, ptr %i.ewg, align 8, !dbg !94133, !nonnull !2293, !noundef !2293 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEBM_(ptr noalias noundef nonnull align 8 dereferenceable(376) %.val2617)
          to label %bb.bjy unwind label %bb.bjx, !dbg !98461

bb.bjx:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit
  %i.ewh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2617, i64 noundef 376, i64 noundef 8) #37, !dbg !98462
  br label %.body3238, !dbg !98461

.body3238:                                        ; preds = %bb.bjx, %bb.bjw
  %.pn2452 = phi { ptr, i32 } [ %i.ewe, %bb.bjw ], [ %i.ewh, %bb.bjx ]
  %i.ewi = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !94133
  %.val2623 = load ptr, ptr %i.ewi, align 16, !dbg !94133, !nonnull !2293, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr nonnull %.val2623) #43
          to label %bb.bkc unwind label %bb.ap, !dbg !94133

bb.bjy:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2617, i64 noundef 376, i64 noundef 8) #37, !dbg !98463
  %i.ewj = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !94133
  %.val2622 = load ptr, ptr %i.ewj, align 16, !dbg !94133, !nonnull !2293, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr nonnull %.val2622)
          to label %bb.bka unwind label %bb.bjz, !dbg !94133

bb.bjz:                                           ; preds = %bb.bjy
  %i.ewk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bkc

bb.bka:                                           ; preds = %bb.bjy
  %i.ewl = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93968), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93969), !dbg !98464
  %i.ewm = load ptr, ptr %i.ewl, align 8, !dbg !98465, !alias.scope !93970, !nonnull !2293, !noundef !2293
  %i.ewn = atomicrmw add ptr %i.ewm, i64 -1 release, align 8, !dbg !98466, !noalias !93970
  %i.ewo = icmp eq i64 %i.ewn, 1, !dbg !98467
  br i1 %i.ewo, label %bb.bkb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98467

bb.bkb:                                           ; preds = %bb.bka
  fence acquire, !dbg !98468
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEE9drop_slowB2d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ewl) #44, !dbg !98469
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98469

bb.bkc:                                           ; preds = %.body3238, %bb.bjz
  %.pn2454 = phi { ptr, i32 } [ %i.ewk, %bb.bjz ], [ %.pn2452, %.body3238 ] ; 2 uses
  %.sroa.478.127 = extractvalue { ptr, i32 } %.pn2454, 1 ; 2 uses
  %.sroa.02013.127 = extractvalue { ptr, i32 } %.pn2454, 0 ; 2 uses
  %i.ewp = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93971), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93972), !dbg !98470
  %i.ewq = load ptr, ptr %i.ewp, align 8, !dbg !98471, !alias.scope !93973, !nonnull !2293, !noundef !2293
  %i.ewr = atomicrmw add ptr %i.ewq, i64 -1 release, align 8, !dbg !98472, !noalias !93973
  %i.ews = icmp eq i64 %i.ewr, 1, !dbg !98473
  br i1 %i.ews, label %bb.bkd, label %.critedge2488, !dbg !98473

bb.bkd:                                           ; preds = %bb.bkc
  fence acquire, !dbg !98474
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEE9drop_slowB2d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ewp) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98475

bb.bke:                                           ; preds = %bb.bc
  %i.ewt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ewu = extractvalue { ptr, i32 } %i.ewt, 1    ; 2 uses
  %i.ewv = extractvalue { ptr, i32 } %i.ewt, 0    ; 2 uses
  %i.eww = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93974), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93975), !dbg !98476
  %i.ewx = load ptr, ptr %i.eww, align 16, !dbg !98477, !alias.scope !93976, !nonnull !2293, !noundef !2293
  %i.ewy = atomicrmw add ptr %i.ewx, i64 -1 release, align 8, !dbg !98478, !noalias !93976
  %i.ewz = icmp eq i64 %i.ewy, 1, !dbg !98479
  br i1 %i.ewz, label %bb.bkf, label %.critedge2488, !dbg !98479

bb.bkf:                                           ; preds = %bb.bke
  fence acquire, !dbg !98480
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eww) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98481

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bb, %bb.bc
  %i.exa = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93977), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93978), !dbg !98482
  %i.exb = load ptr, ptr %i.exa, align 16, !dbg !98483, !alias.scope !93979, !nonnull !2293, !noundef !2293
  %i.exc = atomicrmw add ptr %i.exb, i64 -1 release, align 8, !dbg !98484, !noalias !93979
  %i.exd = icmp eq i64 %i.exc, 1, !dbg !98485
  br i1 %i.exd, label %bb.bkg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98485

bb.bkg:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit
  fence acquire, !dbg !98486
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.exa) #44, !dbg !98487
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98487

bb.bkh:                                           ; preds = %bb.bf
  %i.exe = landingpad { ptr, i32 }
          cleanup
  br label %.body2731

.body2731:                                        ; preds = %bb.be, %bb.bkh
  %eh.lpad-body2732 = phi { ptr, i32 } [ %i.exe, %bb.bkh ], [ %i.aet, %bb.be ] ; 2 uses
  %i.exf = extractvalue { ptr, i32 } %eh.lpad-body2732, 1 ; 2 uses
  %i.exg = extractvalue { ptr, i32 } %eh.lpad-body2732, 0 ; 2 uses
  %i.exh = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93980), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93981), !dbg !98488
  %i.exi = load ptr, ptr %i.exh, align 16, !dbg !98489, !alias.scope !93982, !nonnull !2293, !noundef !2293
  %i.exj = atomicrmw add ptr %i.exi, i64 -1 release, align 8, !dbg !98490, !noalias !93982
  %i.exk = icmp eq i64 %i.exj, 1, !dbg !98491
  br i1 %i.exk, label %bb.bki, label %.critedge2488, !dbg !98491

bb.bki:                                           ; preds = %.body2731
  fence acquire, !dbg !98492
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.exh) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98493

.critedge:                                        ; preds = %bb.bf
  %i.exl = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93983), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93984), !dbg !98494
  %i.exm = load ptr, ptr %i.exl, align 16, !dbg !98495, !alias.scope !93985, !nonnull !2293, !noundef !2293
  %i.exn = atomicrmw add ptr %i.exm, i64 -1 release, align 8, !dbg !98496, !noalias !93985
  %i.exo = icmp eq i64 %i.exn, 1, !dbg !98497
  br i1 %i.exo, label %bb.bkj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98497

bb.bkj:                                           ; preds = %.critedge
  fence acquire, !dbg !98498
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.exl) #44, !dbg !98499
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98499

bb.bkk:                                           ; preds = %bb.bi
  %i.exp = landingpad { ptr, i32 }
          cleanup
  %i.exq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.exq) #43
          to label %.body3252 unwind label %bb.ap, !dbg !94133

bb.bkl:                                           ; preds = %bb.bi, %bb.bh
  %i.exr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.exr)
          to label %bb.bkn unwind label %bb.bkm, !dbg !98500

bb.bkm:                                           ; preds = %bb.bkl
  %i.exs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.exr)
          to label %.body3252 unwind label %bb.bko, !dbg !98501

bb.bkn:                                           ; preds = %bb.bkl
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.exr)
          to label %bb.bkq unwind label %bb.bkp, !dbg !98502

bb.bko:                                           ; preds = %bb.bkm
  %i.ext = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !98500
  unreachable, !dbg !98500

bb.bkp:                                           ; preds = %bb.bkn
  %i.exu = landingpad { ptr, i32 }
          cleanup
  br label %.body3252

bb.bkq:                                           ; preds = %bb.bkn
  %i.exv = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.exv)
          to label %bb.bks unwind label %bb.bkr, !dbg !94133

bb.bkr:                                           ; preds = %bb.bkq
  %i.exw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bkx

bb.bks:                                           ; preds = %bb.bkq
  %i.exx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.exx)
          to label %bb.bku unwind label %bb.bkt, !dbg !94133

bb.bkt:                                           ; preds = %bb.bks
  %i.exy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bky

bb.bku:                                           ; preds = %bb.bks
  %i.exz = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93986), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93987), !dbg !98503
  %i.eya = load ptr, ptr %i.exz, align 8, !dbg !98504, !alias.scope !93988, !nonnull !2293, !noundef !2293
  %i.eyb = atomicrmw add ptr %i.eya, i64 -1 release, align 8, !dbg !98505, !noalias !93988
  %i.eyc = icmp eq i64 %i.eyb, 1, !dbg !98506
  br i1 %i.eyc, label %bb.bkv, label %.noexc3255, !dbg !98506

end_hunk_5
begin_hunk_6_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir11to_alp_impl0B9_:bb.a

bb.bky:                                           ; preds = %bb.bkt, %bb.bkx
  %.pn4569 = phi { ptr, i32 } [ %i.exy, %bb.bkt ], [ %.pn4567, %bb.bkx ] ; 2 uses
  %i.eyh = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93989), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93990), !dbg !98509
  %i.eyi = load ptr, ptr %i.eyh, align 8, !dbg !98510, !alias.scope !93991, !nonnull !2293, !noundef !2293
  %i.eyj = atomicrmw add ptr %i.eyi, i64 -1 release, align 8, !dbg !98511, !noalias !93991
  %i.eyk = icmp eq i64 %i.eyj, 1, !dbg !98512
  br i1 %i.eyk, label %bb.bkz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3258, !dbg !98512

bb.bkz:                                           ; preds = %bb.bky
  fence acquire, !dbg !98513
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eyh) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3258 unwind label %bb.ap, !dbg !98514

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_.exit3258: ; preds = %bb.bky, %bb.bkz, %bb.bkw
  %.pn4571 = phi { ptr, i32 } [ %i.eyd, %bb.bkw ], [ %.pn4569, %bb.bkz ], [ %.pn4569, %bb.bky ] ; 2 uses
  %.sroa.478.131 = extractvalue { ptr, i32 } %.pn4571, 1
  %.sroa.02013.131 = extractvalue { ptr, i32 } %.pn4571, 0
  %i.eyl = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1W_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB22_9datatypes5dtype8DataTypeuEEEEEB18_(ptr noalias noundef align 8 dereferenceable(24) %i.eyl) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

bb.bla:                                           ; preds = %bb.bk
  %i.eym = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eyn = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93992), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93993), !dbg !98515
  %i.eyo = load ptr, ptr %i.eyn, align 8, !dbg !98516, !alias.scope !93994, !nonnull !2293, !noundef !2293
  %i.eyp = atomicrmw add ptr %i.eyo, i64 -1 release, align 8, !dbg !98517, !noalias !93994
  %i.eyq = icmp eq i64 %i.eyp, 1, !dbg !98518
  br i1 %i.eyq, label %bb.blb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3260, !dbg !98518

bb.blb:                                           ; preds = %bb.bla
  fence acquire, !dbg !98519
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eyn) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3260 unwind label %bb.ap, !dbg !98520

bb.blc:                                           ; preds = %bb.bk, %bb.bj
  %i.eyr = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93995), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93996), !dbg !98521
  %i.eys = load ptr, ptr %i.eyr, align 8, !dbg !98522, !alias.scope !93997, !nonnull !2293, !noundef !2293
  %i.eyt = atomicrmw add ptr %i.eys, i64 -1 release, align 8, !dbg !98523, !noalias !93997
  %i.eyu = icmp eq i64 %i.eyt, 1, !dbg !98524
  br i1 %i.eyu, label %bb.bld, label %.noexc3261, !dbg !98524

bb.bld:                                           ; preds = %bb.blc
  fence acquire, !dbg !98525
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eyr) #44
          to label %.noexc3261 unwind label %bb.ble, !dbg !98526

bb.ble:                                           ; preds = %bb.bld
  %i.eyv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3260

.noexc3261:                                       ; preds = %bb.bld, %bb.blc
  %i.eyw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.eyw)
          to label %bb.blg unwind label %bb.blf, !dbg !94133

bb.blf:                                           ; preds = %.noexc3261
  %i.eyx = landingpad { ptr, i32 }
          cleanup
  br label %bb.blm

bb.blg:                                           ; preds = %.noexc3261
  %i.eyy = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.eyy)
          to label %bb.bli unwind label %bb.blh, !dbg !94133

bb.blh:                                           ; preds = %bb.blg
  %i.eyz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bln

bb.bli:                                           ; preds = %bb.blg
  %i.eza = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.eza)
          to label %bb.blk unwind label %bb.blj, !dbg !94133

bb.blj:                                           ; preds = %bb.bli
  %i.ezb = landingpad { ptr, i32 }
          cleanup
  br label %bb.blo

bb.blk:                                           ; preds = %bb.bli
  %i.ezc = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93998), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !93999), !dbg !98527
  %i.ezd = load ptr, ptr %i.ezc, align 16, !dbg !98528, !alias.scope !94000, !nonnull !2293, !noundef !2293
  %i.eze = atomicrmw add ptr %i.ezd, i64 -1 release, align 8, !dbg !98529, !noalias !94000
  %i.ezf = icmp eq i64 %i.eze, 1, !dbg !98530
  br i1 %i.ezf, label %bb.bll, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98530

bb.bll:                                           ; preds = %bb.blk
  fence acquire, !dbg !98531
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ezc) #44, !dbg !98532
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98532

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3260: ; preds = %bb.bla, %bb.blb, %bb.ble
  %.pn2448 = phi { ptr, i32 } [ %i.eyv, %bb.ble ], [ %i.eym, %bb.blb ], [ %i.eym, %bb.bla ]
  %i.ezg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ezg) #43
          to label %bb.blm unwind label %bb.ap, !dbg !94133

bb.blm:                                           ; preds = %bb.blf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3260
  %.pn4561 = phi { ptr, i32 } [ %i.eyx, %bb.blf ], [ %.pn2448, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit3260 ]
  %i.ezh = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ezh) #43
          to label %bb.bln unwind label %bb.ap, !dbg !94133

bb.bln:                                           ; preds = %bb.blh, %bb.blm
  %.pn4563 = phi { ptr, i32 } [ %i.eyz, %bb.blh ], [ %.pn4561, %bb.blm ]
  %i.ezi = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.ezi) #43
          to label %bb.blo unwind label %bb.ap, !dbg !94133

bb.blo:                                           ; preds = %bb.blj, %bb.bln
  %.pn4565 = phi { ptr, i32 } [ %i.ezb, %bb.blj ], [ %.pn4563, %bb.bln ] ; 2 uses
  %.sroa.478.135 = extractvalue { ptr, i32 } %.pn4565, 1 ; 2 uses
  %.sroa.02013.135 = extractvalue { ptr, i32 } %.pn4565, 0 ; 2 uses
  %i.ezj = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94001), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94002), !dbg !98533
  %i.ezk = load ptr, ptr %i.ezj, align 16, !dbg !98534, !alias.scope !94003, !nonnull !2293, !noundef !2293
  %i.ezl = atomicrmw add ptr %i.ezk, i64 -1 release, align 8, !dbg !98535, !noalias !94003
  %i.ezm = icmp eq i64 %i.ezl, 1, !dbg !98536
  br i1 %i.ezm, label %bb.blp, label %.critedge2488, !dbg !98536

bb.blp:                                           ; preds = %bb.blo
  fence acquire, !dbg !98537
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ezj) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98538

bb.blq:                                           ; preds = %bb.bm
  %i.ezn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ezo = extractvalue { ptr, i32 } %i.ezn, 1    ; 2 uses
  %i.ezp = extractvalue { ptr, i32 } %i.ezn, 0    ; 2 uses
  %i.ezq = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94004), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94005), !dbg !98539
  %i.ezr = load ptr, ptr %i.ezq, align 16, !dbg !98540, !alias.scope !94006, !nonnull !2293, !noundef !2293
  %i.ezs = atomicrmw add ptr %i.ezr, i64 -1 release, align 8, !dbg !98541, !noalias !94006
  %i.ezt = icmp eq i64 %i.ezs, 1, !dbg !98542
  br i1 %i.ezt, label %bb.blr, label %.critedge2488, !dbg !98542

bb.blr:                                           ; preds = %bb.blq
  fence acquire, !dbg !98543
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ezq) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98544

.critedge2462:                                    ; preds = %bb.bl, %bb.bm
  %i.ezu = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94007), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94008), !dbg !98545
  %i.ezv = load ptr, ptr %i.ezu, align 16, !dbg !98546, !alias.scope !94009, !nonnull !2293, !noundef !2293
  %i.ezw = atomicrmw add ptr %i.ezv, i64 -1 release, align 8, !dbg !98547, !noalias !94009
  %i.ezx = icmp eq i64 %i.ezw, 1, !dbg !98548
  br i1 %i.ezx, label %bb.bls, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98548

bb.bls:                                           ; preds = %.critedge2462
  fence acquire, !dbg !98549
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ezu) #44, !dbg !98550
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98550

bb.blt:                                           ; preds = %bb.bo
  %i.ezy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ezz = extractvalue { ptr, i32 } %i.ezy, 1
  %i.faa = extractvalue { ptr, i32 } %i.ezy, 0
  %i.fab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.fab) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

.critedge2464:                                    ; preds = %bb.bn, %bb.bo
  %i.fac = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fac)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_.exit3269 unwind label %bb.blu, !dbg !98551

bb.blu:                                           ; preds = %.critedge2464
  %i.fad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fac)
          to label %common.resume unwind label %bb.blv, !dbg !98552

bb.blv:                                           ; preds = %bb.blu
  %i.fae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !98551
  unreachable, !dbg !98551

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_.exit3269: ; preds = %.critedge2464
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fac), !dbg !98553
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.blw:                                           ; preds = %bb.bq
  %12 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.faf = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94010), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94011), !dbg !98554
  %i.fag = load ptr, ptr %i.faf, align 16, !dbg !98555, !alias.scope !94012, !nonnull !2293, !noundef !2293
  %i.fah = atomicrmw add ptr %i.fag, i64 -1 release, align 8, !dbg !98556, !noalias !94012
  %i.fai = icmp eq i64 %i.fah, 1, !dbg !98557
  br i1 %i.fai, label %bb.blx, label %bb.bmb, !dbg !98557

bb.blx:                                           ; preds = %bb.blw
  fence acquire, !dbg !98558
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.faf) #44
          to label %bb.bmb unwind label %bb.ap, !dbg !98559

.noexc3270:                                       ; preds = %bb.bq, %bb.bp
  %i.faj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94013), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94014), !dbg !98560
  %i.fak = load ptr, ptr %i.faj, align 16, !dbg !98561, !alias.scope !94015, !nonnull !2293, !noundef !2293
  %i.fal = atomicrmw add ptr %i.fak, i64 -1 release, align 8, !dbg !98562, !noalias !94015
  %i.fam = icmp eq i64 %i.fal, 1, !dbg !98563
  br i1 %i.fam, label %bb.bly, label %bb.blz, !dbg !98563

bb.bly:                                           ; preds = %.noexc3270
  fence acquire, !dbg !98564
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.faj) #44
          to label %bb.blz unwind label %13, !dbg !98565

13:                                               ; preds = %bb.bly
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmb

bb.blz:                                           ; preds = %bb.bly, %.noexc3270
  %i.fan = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94016), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94017), !dbg !98566
  %i.fao = load ptr, ptr %i.fan, align 8, !dbg !98567, !alias.scope !94018, !nonnull !2293, !noundef !2293
  %i.fap = atomicrmw add ptr %i.fao, i64 -1 release, align 8, !dbg !98568, !noalias !94018
  %i.faq = icmp eq i64 %i.fap, 1, !dbg !98569
  br i1 %i.faq, label %bb.bma, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98569

bb.bma:                                           ; preds = %bb.blz
  fence acquire, !dbg !98570
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fan) #44, !dbg !98571
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98571

bb.bmb:                                           ; preds = %13, %bb.blx, %bb.blw
  %.pn2446 = phi { ptr, i32 } [ %14, %13 ], [ %12, %bb.blx ], [ %12, %bb.blw ] ; 2 uses
  %.sroa.478.136 = extractvalue { ptr, i32 } %.pn2446, 1 ; 2 uses
  %.sroa.02013.136 = extractvalue { ptr, i32 } %.pn2446, 0 ; 2 uses
  %i.far = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94019), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94020), !dbg !98572
  %i.fas = load ptr, ptr %i.far, align 8, !dbg !98573, !alias.scope !94021, !nonnull !2293, !noundef !2293
  %i.fat = atomicrmw add ptr %i.fas, i64 -1 release, align 8, !dbg !98574, !noalias !94021
  %i.fau = icmp eq i64 %i.fat, 1, !dbg !98575
  br i1 %i.fau, label %bb.bmc, label %.critedge2488, !dbg !98575

bb.bmc:                                           ; preds = %bb.bmb
  fence acquire, !dbg !98576
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.far) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98577

15:                                               ; preds = %bb.bs
  %16 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %17 = extractvalue { ptr, i32 } %16, 1
  %18 = extractvalue { ptr, i32 } %16, 0
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtBL_3dsl4plan7DslPlanEIB1B_INtNtB1F_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEB27_EEBL_(ptr noalias noundef align 8 dereferenceable(16) %19) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

bb.bmd:                                           ; preds = %bb.bs, %bb.br
  %i.fav = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94133
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtBL_3dsl4plan7DslPlanEIB1B_INtNtB1F_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEB27_EEBL_(ptr noalias noundef align 8 dereferenceable(16) %i.fav), !dbg !94133
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bme:                                           ; preds = %bb.bu
  %i.faw = landingpad { ptr, i32 }
          cleanup
  %i.fax = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fax) #43
          to label %bb.bmr unwind label %bb.ap, !dbg !94133

bb.bmf:                                           ; preds = %bb.bu, %bb.bt
  %i.fay = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fay)
          to label %bb.bmh unwind label %bb.bmg, !dbg !94133

bb.bmg:                                           ; preds = %bb.bmf
  %i.faz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmr

bb.bmh:                                           ; preds = %bb.bmf
  %i.fba = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94022), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94023), !dbg !98578
  %i.fbb = load ptr, ptr %i.fba, align 16, !dbg !98579, !alias.scope !94024, !nonnull !2293, !noundef !2293
  %i.fbc = atomicrmw add ptr %i.fbb, i64 -1 release, align 8, !dbg !98580, !noalias !94024
  %i.fbd = icmp eq i64 %i.fbc, 1, !dbg !98581
  br i1 %i.fbd, label %bb.bmi, label %.noexc3277, !dbg !98581

bb.bmi:                                           ; preds = %bb.bmh
  fence acquire, !dbg !98582
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fba) #44
          to label %.noexc3277 unwind label %bb.bmj, !dbg !98583

bb.bmj:                                           ; preds = %bb.bmi
  %i.fbe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3281

.noexc3277:                                       ; preds = %bb.bmi, %bb.bmh
  %i.fbf = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fbf)
          to label %bb.bml unwind label %bb.bmk, !dbg !94133

bb.bmk:                                           ; preds = %.noexc3277
  %i.fbg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmt

bb.bml:                                           ; preds = %.noexc3277
  %i.fbh = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fbh)
          to label %bb.bmn unwind label %bb.bmm, !dbg !94133

bb.bmm:                                           ; preds = %bb.bml
  %i.fbi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmu

bb.bmn:                                           ; preds = %bb.bml
  %i.fbj = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.fbj)
          to label %bb.bmp unwind label %bb.bmo, !dbg !94133

bb.bmo:                                           ; preds = %bb.bmn
  %i.fbk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmv

bb.bmp:                                           ; preds = %bb.bmn
  %i.fbl = getelementptr inbounds nuw i8, ptr %1, i64 279, !dbg !98584
  %i.fbm = load i8, ptr %i.fbl, align 1, !dbg !98584, !range !2567, !alias.scope !94025, !noundef !2293
  %i.fbn = icmp eq i8 %i.fbm, -40, !dbg !98585
  br i1 %i.fbn, label %bb.bmq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98585, !prof !2300

bb.bmq:                                           ; preds = %bb.bmp
  %i.fbo = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !94133
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fbo), !dbg !98586
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98586

bb.bmr:                                           ; preds = %bb.bmg, %bb.bme
  %.pn2436 = phi { ptr, i32 } [ %i.faz, %bb.bmg ], [ %i.faw, %bb.bme ] ; 2 uses
  %i.fbp = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94026), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94027), !dbg !98587
  %i.fbq = load ptr, ptr %i.fbp, align 16, !dbg !98588, !alias.scope !94028, !nonnull !2293, !noundef !2293
  %i.fbr = atomicrmw add ptr %i.fbq, i64 -1 release, align 8, !dbg !98589, !noalias !94028
  %i.fbs = icmp eq i64 %i.fbr, 1, !dbg !98590
  br i1 %i.fbs, label %bb.bms, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3281, !dbg !98590

bb.bms:                                           ; preds = %bb.bmr
  fence acquire, !dbg !98591
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fbp) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3281 unwind label %bb.ap, !dbg !98592

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3281: ; preds = %bb.bmr, %bb.bms, %bb.bmj
  %.pn2438 = phi { ptr, i32 } [ %i.fbe, %bb.bmj ], [ %.pn2436, %bb.bms ], [ %.pn2436, %bb.bmr ]
  %i.fbt = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fbt) #43
          to label %bb.bmt unwind label %bb.ap, !dbg !94133

bb.bmt:                                           ; preds = %bb.bmk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3281
  %.pn2440 = phi { ptr, i32 } [ %i.fbg, %bb.bmk ], [ %.pn2438, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit3281 ]
  %i.fbu = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fbu) #43
          to label %bb.bmu unwind label %bb.ap, !dbg !94133

bb.bmu:                                           ; preds = %bb.bmm, %bb.bmt
  %.pn2442 = phi { ptr, i32 } [ %i.fbi, %bb.bmm ], [ %.pn2440, %bb.bmt ]
  %i.fbv = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.fbv) #43
          to label %bb.bmv unwind label %bb.ap, !dbg !94133

bb.bmv:                                           ; preds = %bb.bmo, %bb.bmu
  %.pn2444 = phi { ptr, i32 } [ %i.fbk, %bb.bmo ], [ %.pn2442, %bb.bmu ] ; 2 uses
  %.sroa.478.141 = extractvalue { ptr, i32 } %.pn2444, 1 ; 2 uses
  %.sroa.02013.141 = extractvalue { ptr, i32 } %.pn2444, 0 ; 2 uses
  %i.fbw = getelementptr inbounds nuw i8, ptr %1, i64 279, !dbg !98593
  %i.fbx = load i8, ptr %i.fbw, align 1, !dbg !98593, !range !2567, !alias.scope !94029, !noundef !2293
  %i.fby = icmp eq i8 %i.fbx, -40, !dbg !98594
  br i1 %i.fby, label %bb.bmw, label %.critedge2488, !dbg !98594, !prof !2300

bb.bmw:                                           ; preds = %bb.bmv
  %i.fbz = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !94133
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fbz)
          to label %.critedge2488 unwind label %bb.ap, !dbg !98595

20:                                               ; preds = %bb.bw
  %21 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %22 = extractvalue { ptr, i32 } %21, 1
  %23 = extractvalue { ptr, i32 } %21, 0
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18DistinctOptionsDSLEBM_(ptr noalias noundef align 8 dereferenceable(32) %24) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

bb.bmx:                                           ; preds = %bb.bw, %bb.bv
  %i.fca = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18DistinctOptionsDSLEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fca), !dbg !94133
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bmy:                                           ; preds = %bb.by
  %i.fcb = landingpad { ptr, i32 }
          cleanup
  %i.fcc = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.fcc) #43
          to label %bb.bnf unwind label %bb.ap, !dbg !94133

bb.bmz:                                           ; preds = %bb.by, %bb.bx
  %i.fcd = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fcd)
          to label %bb.bnb unwind label %bb.bna, !dbg !98596

bb.bna:                                           ; preds = %bb.bmz
  %i.fce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fcd)
          to label %bb.bnf unwind label %bb.bnc, !dbg !98597

bb.bnb:                                           ; preds = %bb.bmz
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fcd)
          to label %bb.bne unwind label %bb.bnd, !dbg !98598

bb.bnc:                                           ; preds = %bb.bna
  %i.fcf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !98596
  unreachable, !dbg !98596

bb.bnd:                                           ; preds = %bb.bnb
  %i.fcg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bnf

bb.bne:                                           ; preds = %bb.bnb
  %i.fch = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !94133
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options19SortMultipleOptionsECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.fch), !dbg !94133
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bnf:                                           ; preds = %bb.bnd, %bb.bna, %bb.bmy
  %.pn2434 = phi { ptr, i32 } [ %i.fcb, %bb.bmy ], [ %i.fcg, %bb.bnd ], [ %i.fce, %bb.bna ] ; 2 uses
  %.sroa.478.142 = extractvalue { ptr, i32 } %.pn2434, 1
  %.sroa.02013.142 = extractvalue { ptr, i32 } %.pn2434, 0
  %i.fci = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options19SortMultipleOptionsECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.fci) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

bb.bng:                                           ; preds = %bb.cc
  %i.fcj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fck = extractvalue { ptr, i32 } %i.fcj, 1
  %i.fcl = extractvalue { ptr, i32 } %i.fcj, 0
  %i.fcm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %i.fcm) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

.critedge2475:                                    ; preds = %bb.cb, %bb.cc
  %i.fcn = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %i.fcn), !dbg !94133
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bnh:                                           ; preds = %bb.ck
  %i.fco = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fcp = extractvalue { ptr, i32 } %i.fco, 1
  %i.fcq = extractvalue { ptr, i32 } %i.fco, 0
  %i.fcr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.fcr) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

.critedge2481:                                    ; preds = %bb.cj, %bb.ck
  %i.fcs = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fcs)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit3290 unwind label %bb.bni, !dbg !98599

bb.bni:                                           ; preds = %.critedge2481
  %i.fct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fcs)
          to label %common.resume unwind label %bb.bnj, !dbg !98600

bb.bnj:                                           ; preds = %bb.bni
  %i.fcu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !98599
  unreachable, !dbg !98599

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1j_.exit3290: ; preds = %.critedge2481
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fcs), !dbg !98601
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bnk:                                           ; preds = %bb.cm
  %i.fcv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fcw = extractvalue { ptr, i32 } %i.fcv, 1
  %i.fcx = extractvalue { ptr, i32 } %i.fcv, 0
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink8SinkTypeEBO_(ptr noalias noundef align 8 dereferenceable(360) %1) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

.critedge2486:                                    ; preds = %bb.cl, %bb.cm
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink8SinkTypeEBO_(ptr noalias noundef align 8 dereferenceable(360) %1), !dbg !94133
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !94133

bb.bnl:                                           ; preds = %bb.cr
  %25 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fcy = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94030), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94031), !dbg !98602
  %i.fcz = load ptr, ptr %i.fcy, align 16, !dbg !98603, !alias.scope !94032, !nonnull !2293, !noundef !2293
  %i.fda = atomicrmw add ptr %i.fcz, i64 -1 release, align 8, !dbg !98604, !noalias !94032
  %i.fdb = icmp eq i64 %i.fda, 1, !dbg !98605
  br i1 %i.fdb, label %bb.bnm, label %bb.bnq, !dbg !98605

bb.bnm:                                           ; preds = %bb.bnl
  fence acquire, !dbg !98606
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fcy) #44
          to label %bb.bnq unwind label %bb.ap, !dbg !98607

.noexc3291:                                       ; preds = %bb.cr, %bb.cq
  %i.fdc = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94033), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94034), !dbg !98608
  %i.fdd = load ptr, ptr %i.fdc, align 16, !dbg !98609, !alias.scope !94035, !nonnull !2293, !noundef !2293
  %i.fde = atomicrmw add ptr %i.fdd, i64 -1 release, align 8, !dbg !98610, !noalias !94035
  %i.fdf = icmp eq i64 %i.fde, 1, !dbg !98611
  br i1 %i.fdf, label %bb.bnn, label %bb.bno, !dbg !98611

bb.bnn:                                           ; preds = %.noexc3291
  fence acquire, !dbg !98612
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fdc) #44
          to label %bb.bno unwind label %26, !dbg !98613

26:                                               ; preds = %bb.bnn
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bnq

bb.bno:                                           ; preds = %bb.bnn, %.noexc3291
  %i.fdg = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94036), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94037), !dbg !98614
  %i.fdh = load ptr, ptr %i.fdg, align 8, !dbg !98615, !alias.scope !94038, !nonnull !2293, !noundef !2293
  %i.fdi = atomicrmw add ptr %i.fdh, i64 -1 release, align 8, !dbg !98616, !noalias !94038
  %i.fdj = icmp eq i64 %i.fdi, 1, !dbg !98617
  br i1 %i.fdj, label %bb.bnp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98617

bb.bnp:                                           ; preds = %bb.bno
  fence acquire, !dbg !98618
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fdg) #44, !dbg !98619
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_.exit2725, !dbg !98619

bb.bnq:                                           ; preds = %26, %bb.bnm, %bb.bnl
  %.pn2432 = phi { ptr, i32 } [ %27, %26 ], [ %25, %bb.bnm ], [ %25, %bb.bnl ] ; 2 uses
  %.sroa.478.143 = extractvalue { ptr, i32 } %.pn2432, 1 ; 2 uses
  %.sroa.02013.143 = extractvalue { ptr, i32 } %.pn2432, 0 ; 2 uses
  %i.fdk = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94039), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94040), !dbg !98620
  %i.fdl = load ptr, ptr %i.fdk, align 8, !dbg !98621, !alias.scope !94041, !nonnull !2293, !noundef !2293
  %i.fdm = atomicrmw add ptr %i.fdl, i64 -1 release, align 8, !dbg !98622, !noalias !94041
  %i.fdn = icmp eq i64 %i.fdm, 1, !dbg !98623
  br i1 %i.fdn, label %bb.bnr, label %.critedge2488, !dbg !98623

bb.bnr:                                           ; preds = %bb.bnq
  fence acquire, !dbg !98624
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fdk) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98625

bb.bns:                                           ; preds = %bb.e
  %i.fdo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fdp = extractvalue { ptr, i32 } %i.fdo, 0
  %i.fdq = extractvalue { ptr, i32 } %i.fdo, 1
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0EBQ_(ptr noundef nonnull align 8 %i.ub) #43
          to label %.critedge2460 unwind label %bb.ap, !dbg !94154

bb.bnt:                                           ; preds = %.critedge2460
  br i1 %.sroa.01155.0, label %bb.bqp, label %.critedge2488, !dbg !94133

bb.bnu:                                           ; preds = %.critedge2460
  br i1 %.sroa.01015.0, label %bb.bor, label %.critedge2488, !dbg !94133

bb.bnv:                                           ; preds = %.critedge2460
  br i1 %.sroa.01021.0, label %bb.bos, label %.critedge2488, !dbg !94133

bb.bnw:                                           ; preds = %.critedge2460
  br i1 %.sroa.01046.0, label %bb.bou, label %.critedge2488, !dbg !94133

bb.bnx:                                           ; preds = %.critedge2460
  %i.fdr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.fdr) #43
          to label %bb.bov unwind label %bb.ap, !dbg !94133

bb.bny:                                           ; preds = %.critedge2460
  br i1 %.sroa.01028.0, label %bb.bpa, label %.critedge2488, !dbg !94133

bb.bnz:                                           ; preds = %.critedge2460
  br i1 %.sroa.01033.0, label %bb.bpd, label %.critedge2488, !dbg !94133

bb.boa:                                           ; preds = %.critedge2460
  br i1 %.sroa.01048.0, label %bb.bpf, label %.critedge2488, !dbg !94133

bb.bob:                                           ; preds = %.critedge2460
  br i1 %.sroa.01065.0, label %bb.bpi, label %.critedge2488, !dbg !94133

bb.boc:                                           ; preds = %.critedge2460
  br i1 %.sroa.01082.0, label %bb.bpm, label %.critedge2488, !dbg !94133

bb.bod:                                           ; preds = %.critedge2460
  br i1 %.sroa.01087.0, label %bb.bpo, label %.critedge2488, !dbg !94133

bb.boe:                                           ; preds = %.critedge2460
  br i1 %.sroa.01092.0, label %bb.bpq, label %.critedge2488, !dbg !94133

bb.bof:                                           ; preds = %.critedge2460
  br i1 %.sroa.01100.0, label %bb.bpu, label %.critedge2488, !dbg !94133

bb.bog:                                           ; preds = %.critedge2460
  br i1 %.sroa.01105.0, label %bb.bpw, label %.critedge2488, !dbg !94133

bb.boh:                                           ; preds = %.critedge2460
  br i1 %.sroa.01125.0, label %bb.bqa, label %.critedge2488, !dbg !94133

bb.boi:                                           ; preds = %.critedge2460
  br i1 %.sroa.01038.0, label %bb.bqc, label %.critedge2488, !dbg !94133

bb.boj:                                           ; preds = %.critedge2460
  br i1 %.sroa.01026.0, label %bb.bqe, label %.critedge2488, !dbg !94133

bb.bok:                                           ; preds = %.critedge2460
  br i1 %.sroa.01130.0, label %bb.bqf, label %.critedge2488, !dbg !94133

bb.bol:                                           ; preds = %.critedge2460
  br i1 %.sroa.01017.0, label %.invoke5115, label %.critedge2488, !dbg !94133

bb.bom:                                           ; preds = %.critedge2460
  br i1 %.sroa.01019.0, label %.invoke5115, label %.critedge2488, !dbg !94133

bb.bon:                                           ; preds = %.critedge2460
  br i1 %.sroa.01135.0, label %bb.bqh, label %.critedge2488, !dbg !94133

bb.boo:                                           ; preds = %.critedge2460
  br i1 %.sroa.01140.0, label %bb.bqj, label %.critedge2488, !dbg !94133

bb.bop:                                           ; preds = %.critedge2460
  br i1 %.sroa.01145.0, label %.invoke5115, label %.critedge2488, !dbg !94133

bb.boq:                                           ; preds = %.critedge2460
  br i1 %.sroa.01147.0, label %bb.bql, label %.critedge2488, !dbg !94133

bb.bor:                                           ; preds = %bb.bnu
  %i.fds = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl6source16PythonOptionsDslEBO_(ptr noalias noundef align 8 dereferenceable(24) %i.fds) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

bb.bos:                                           ; preds = %bb.bnv
  %i.fdt = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94042), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94043), !dbg !98626
  %i.fdu = load ptr, ptr %i.fdt, align 16, !dbg !98627, !alias.scope !94044, !nonnull !2293, !noundef !2293
  %i.fdv = atomicrmw add ptr %i.fdu, i64 -1 release, align 8, !dbg !98628, !noalias !94044
  %i.fdw = icmp eq i64 %i.fdv, 1, !dbg !98629
  br i1 %i.fdw, label %bb.bot, label %.noexc3298, !dbg !98629

bb.bot:                                           ; preds = %bb.bos
  fence acquire, !dbg !98630
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fdt) #44
          to label %.noexc3298 unwind label %bb.ap, !dbg !98631

.noexc3298:                                       ; preds = %bb.bot, %bb.bos
  %i.fdx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.fdx) #43
          to label %.critedge2488 unwind label %bb.ap, !dbg !94133

bb.bou:                                           ; preds = %bb.bnw
  %i.fdy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94045), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94046), !dbg !98632
  %i.fdz = load ptr, ptr %i.fdy, align 8, !dbg !98633, !alias.scope !94047, !nonnull !2293, !noundef !2293
  %i.fea = atomicrmw add ptr %i.fdz, i64 -1 release, align 8, !dbg !98634, !noalias !94047
  %i.feb = icmp eq i64 %i.fea, 1, !dbg !98635
  br i1 %i.feb, label %.invoke5113, label %.critedge2488, !dbg !98635

bb.bov:                                           ; preds = %bb.bnx
  %i.fec = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !94133
  %.val2616 = load ptr, ptr %i.fec, align 8, !dbg !94133, !nonnull !2293, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr %.val2616) #43
          to label %bb.bow unwind label %bb.ap, !dbg !94133

bb.bow:                                           ; preds = %bb.bov
  %i.fed = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !94133
  %.val2621 = load ptr, ptr %i.fed, align 16, !dbg !94133, !nonnull !2293, !noundef !2293
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr nonnull %.val2621) #43
          to label %bb.box unwind label %bb.ap, !dbg !94133

bb.box:                                           ; preds = %bb.bow
  br i1 %.sroa.01012.0, label %bb.boy, label %.critedge2488, !dbg !94133

bb.boy:                                           ; preds = %bb.box
  %i.fee = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94048), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94049), !dbg !98636
  %i.fef = load ptr, ptr %i.fee, align 8, !dbg !98637, !alias.scope !94050, !nonnull !2293, !noundef !2293
  %i.feg = atomicrmw add ptr %i.fef, i64 -1 release, align 8, !dbg !98638, !noalias !94050
  %i.feh = icmp eq i64 %i.feg, 1, !dbg !98639
  br i1 %i.feh, label %bb.boz, label %.critedge2488, !dbg !98639

bb.boz:                                           ; preds = %bb.boy
  fence acquire, !dbg !98640
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEE9drop_slowB2d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fee) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98641

bb.bpa:                                           ; preds = %bb.bny
  %i.fei = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94051), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94052), !dbg !98642
  %i.fej = load ptr, ptr %i.fei, align 8, !dbg !98643, !alias.scope !94053, !nonnull !2293, !noundef !2293
  %i.fek = atomicrmw add ptr %i.fej, i64 -1 release, align 8, !dbg !98644, !noalias !94053
  %i.fel = icmp eq i64 %i.fek, 1, !dbg !98645
  br i1 %i.fel, label %bb.bpb, label %.noexc3304, !dbg !98645

bb.bpb:                                           ; preds = %bb.bpa
  fence acquire, !dbg !98646
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fei) #44
          to label %.noexc3304 unwind label %bb.ap, !dbg !98647

.noexc3304:                                       ; preds = %bb.bpb, %bb.bpa
  %i.fem = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94054), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94055), !dbg !98648
  %i.fen = load ptr, ptr %i.fem, align 16, !dbg !98649, !alias.scope !94056, !nonnull !2293, !noundef !2293
  %i.feo = atomicrmw add ptr %i.fen, i64 -1 release, align 8, !dbg !98650, !noalias !94056
  %i.fep = icmp eq i64 %i.feo, 1, !dbg !98651
  br i1 %i.fep, label %bb.bpc, label %.critedge2488, !dbg !98651

bb.bpc:                                           ; preds = %.noexc3304
  fence acquire, !dbg !98652
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fem) #44
          to label %.critedge2488 unwind label %bb.ap, !dbg !98653

bb.bpd:                                           ; preds = %bb.bnz
  %i.feq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !94133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.feq) #43
          to label %bb.bpe unwind label %bb.ap, !dbg !94133

bb.bpe:                                           ; preds = %bb.bpd
  %i.fer = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !94133 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94057), !dbg !94133
  call void @llvm.experimental.noalias.scope.decl(metadata !94058), !dbg !98654
  %i.fes = load ptr, ptr %i.fer, align 16, !dbg !98655, !alias.scope !94059, !nonnull !2293, !noundef !2293
  %i.fet = atomicrmw add ptr %i.fes, i64 -1 release, align 8, !dbg !98656, !noalias !94059
  %i.feu = icmp eq i64 %i.fet, 1, !dbg !98657
  br i1 %i.feu, label %.invoke5113, label %.critedge2488, !dbg !98657
end_hunk_6
begin_hunk_7_@llvm.umin.i16
!89854 = distinct !{!89854, !89853, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!89855 = distinct !DILocation(line: 1615, column: 9, scope: !85933)
!89856 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89855)
!89857 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !89856)
!89858 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !89857)
!89859 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !89856)
!89860 = distinct !DILexicalBlock(scope: !86405, file: !2324, line: 1622, column: 13)
!89861 = distinct !{!89861, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!89862 = distinct !{!89862, !89861, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!89863 = distinct !{!89863, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!89864 = distinct !{!89864, !89863, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!89865 = distinct !DILocation(line: 1615, column: 9, scope: !85933)
!89866 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89865)
!89867 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !89866)
!89868 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !89867)
!89869 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !89866)
!89870 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !89869)
!89871 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !89866)
!89872 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89873 = distinct !DILocation(line: 810, column: 1, scope: !396, inlinedAt: !89872)
!89874 = distinct !DILocation(line: 1921, column: 24, scope: !399, inlinedAt: !89873)
!89875 = distinct !DILocation(line: 462, column: 23, scope: !207, inlinedAt: !89874)
!89876 = distinct !DILocation(line: 344, column: 9, scope: !206, inlinedAt: !89875)
!89877 = distinct !DILocation(line: 229, column: 22, scope: !205, inlinedAt: !89876)
!89878 = distinct !DILocation(line: 810, column: 1, scope: !396, inlinedAt: !89872)
!89879 = distinct !DILocation(line: 1921, column: 24, scope: !399, inlinedAt: !89878)
!89880 = distinct !DILocation(line: 462, column: 23, scope: !207, inlinedAt: !89879)
!89881 = distinct !DILocation(line: 344, column: 9, scope: !206, inlinedAt: !89880)
!89882 = distinct !DILocation(line: 229, column: 22, scope: !205, inlinedAt: !89881)
!89883 = distinct !{!89883, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_"}
!89884 = distinct !{!89884, !89883, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_: argument 0"}
!89885 = distinct !{!89885, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_"}
!89886 = distinct !{!89886, !89885, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_: argument 0"}
!89887 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89888 = distinct !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !89887)
!89889 = distinct !DILocation(line: 2814, column: 17, scope: !755, inlinedAt: !89888)
!89890 = distinct !DILocation(line: 2110, column: 27, scope: !754, inlinedAt: !89889)
!89891 = distinct !DILocation(line: 2814, column: 32, scope: !755, inlinedAt: !89888)
!89892 = distinct !DILocation(line: 3193, column: 26, scope: !757, inlinedAt: !89891)
!89893 = distinct !DILocation(line: 64, column: 9, scope: !755, inlinedAt: !89888)
!89894 = distinct !{!89894, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_"}
!89895 = distinct !{!89895, !89894, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_: argument 0"}
!89896 = distinct !{!89896, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_"}
!89897 = distinct !{!89897, !89896, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_: argument 0"}
!89898 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89899 = distinct !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !89898)
!89900 = distinct !DILocation(line: 2814, column: 17, scope: !755, inlinedAt: !89899)
!89901 = distinct !DILocation(line: 2110, column: 27, scope: !754, inlinedAt: !89900)
!89902 = distinct !DILocation(line: 2814, column: 32, scope: !755, inlinedAt: !89899)
!89903 = distinct !DILocation(line: 3193, column: 26, scope: !757, inlinedAt: !89902)
!89904 = distinct !DILocation(line: 64, column: 9, scope: !755, inlinedAt: !89899)
!89905 = distinct !{!89905, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!89906 = distinct !{!89906, !89905, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!89907 = distinct !{!89907, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!89908 = distinct !{!89908, !89907, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!89909 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89910 = distinct !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !89909)
!89911 = distinct !DILocation(line: 2814, column: 17, scope: !14, inlinedAt: !89910)
!89912 = distinct !DILocation(line: 2110, column: 27, scope: !283, inlinedAt: !89911)
!89913 = distinct !DILocation(line: 2814, column: 32, scope: !14, inlinedAt: !89910)
!89914 = distinct !DILocation(line: 3193, column: 26, scope: !13, inlinedAt: !89913)
!89915 = distinct !DILocation(line: 64, column: 9, scope: !14, inlinedAt: !89910)
!89916 = distinct !{!89916, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!89917 = distinct !{!89917, !89916, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!89918 = distinct !{!89918, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!89919 = distinct !{!89919, !89918, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!89920 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89921 = distinct !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !89920)
!89922 = distinct !DILocation(line: 2814, column: 17, scope: !14, inlinedAt: !89921)
!89923 = distinct !DILocation(line: 2110, column: 27, scope: !283, inlinedAt: !89922)
!89924 = distinct !DILocation(line: 2814, column: 32, scope: !14, inlinedAt: !89921)
!89925 = distinct !DILocation(line: 3193, column: 26, scope: !13, inlinedAt: !89924)
!89926 = distinct !DILocation(line: 64, column: 9, scope: !14, inlinedAt: !89921)
!89927 = distinct !{!89927, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!89928 = distinct !{!89928, !89927, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!89929 = distinct !{!89929, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!89930 = distinct !{!89930, !89929, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!89931 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89932 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89931)
!89933 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !89932)
!89934 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !89933)
!89935 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !89932)
!89936 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !89935)
!89937 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !89932)
!89938 = distinct !{!89938, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!89939 = distinct !{!89939, !89938, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!89940 = distinct !{!89940, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!89941 = distinct !{!89941, !89940, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!89942 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89943 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89942)
!89944 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !89943)
!89945 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !89944)
!89946 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !89943)
!89947 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !89946)
!89948 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !89943)
!89949 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89950 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !89949)
!89951 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !89949)
!89952 = distinct !{!89952, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_"}
!89953 = distinct !{!89953, !89952, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_: argument 0"}
!89954 = distinct !{!89954, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!89955 = distinct !{!89955, !89954, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!89956 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89957 = distinct !DILocation(line: 810, column: 1, scope: !400, inlinedAt: !89956)
!89958 = distinct !DILocation(line: 2814, column: 17, scope: !403, inlinedAt: !89957)
!89959 = distinct !DILocation(line: 2110, column: 27, scope: !402, inlinedAt: !89958)
!89960 = distinct !DILocation(line: 2814, column: 32, scope: !403, inlinedAt: !89957)
!89961 = distinct !DILocation(line: 3193, column: 26, scope: !405, inlinedAt: !89960)
!89962 = distinct !DILocation(line: 64, column: 9, scope: !403, inlinedAt: !89957)
!89963 = distinct !{!89963, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_"}
!89964 = distinct !{!89964, !89963, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_: argument 0"}
!89965 = distinct !{!89965, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!89966 = distinct !{!89966, !89965, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!89967 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89968 = distinct !DILocation(line: 810, column: 1, scope: !400, inlinedAt: !89967)
!89969 = distinct !DILocation(line: 2814, column: 17, scope: !403, inlinedAt: !89968)
!89970 = distinct !DILocation(line: 2110, column: 27, scope: !402, inlinedAt: !89969)
!89971 = distinct !DILocation(line: 2814, column: 32, scope: !403, inlinedAt: !89968)
!89972 = distinct !DILocation(line: 3193, column: 26, scope: !405, inlinedAt: !89971)
!89973 = distinct !DILocation(line: 64, column: 9, scope: !403, inlinedAt: !89968)
!89974 = distinct !{!89974, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!89975 = distinct !{!89975, !89974, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!89976 = distinct !{!89976, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!89977 = distinct !{!89977, !89976, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!89978 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89979 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89978)
!89980 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !89979)
!89981 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !89980)
!89982 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !89979)
!89983 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !89982)
!89984 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !89979)
!89985 = distinct !{!89985, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!89986 = distinct !{!89986, !89985, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!89987 = distinct !{!89987, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!89988 = distinct !{!89988, !89987, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!89989 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!89990 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89989)
!89991 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !89990)
!89992 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !89991)
!89993 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !89990)
!89994 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !89993)
!89995 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !89990)
!89996 = distinct !{!89996, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_"}
!89997 = distinct !{!89997, !89996, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_: argument 0"}
!89998 = distinct !{!89998, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!89999 = distinct !{!89999, !89998, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90000 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90001 = distinct !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !90000)
!90002 = distinct !DILocation(line: 2814, column: 17, scope: !409, inlinedAt: !90001)
!90003 = distinct !DILocation(line: 2110, column: 27, scope: !408, inlinedAt: !90002)
!90004 = distinct !DILocation(line: 2814, column: 32, scope: !409, inlinedAt: !90001)
!90005 = distinct !DILocation(line: 3193, column: 26, scope: !411, inlinedAt: !90004)
!90006 = distinct !DILocation(line: 64, column: 9, scope: !409, inlinedAt: !90001)
!90007 = distinct !{!90007, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_"}
!90008 = distinct !{!90008, !90007, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_: argument 0"}
!90009 = distinct !{!90009, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90010 = distinct !{!90010, !90009, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90011 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90012 = distinct !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !90011)
!90013 = distinct !DILocation(line: 2814, column: 17, scope: !409, inlinedAt: !90012)
!90014 = distinct !DILocation(line: 2110, column: 27, scope: !408, inlinedAt: !90013)
!90015 = distinct !DILocation(line: 2814, column: 32, scope: !409, inlinedAt: !90012)
!90016 = distinct !DILocation(line: 3193, column: 26, scope: !411, inlinedAt: !90015)
!90017 = distinct !DILocation(line: 64, column: 9, scope: !409, inlinedAt: !90012)
!90018 = distinct !{!90018, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90019 = distinct !{!90019, !90018, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90020 = distinct !{!90020, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90021 = distinct !{!90021, !90020, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90022 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90023 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90022)
!90024 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90023)
!90025 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90024)
!90026 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90023)
!90027 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90026)
!90028 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90023)
!90029 = distinct !{!90029, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90030 = distinct !{!90030, !90029, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90031 = distinct !{!90031, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90032 = distinct !{!90032, !90031, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90033 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90034 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90033)
!90035 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90034)
!90036 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90035)
!90037 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90034)
!90038 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90037)
!90039 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90034)
!90040 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90041 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !90040)
!90042 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !90040)
!90043 = distinct !{!90043, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!90044 = distinct !{!90044, !90043, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90045 = distinct !{!90045, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90046 = distinct !{!90046, !90045, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90047 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90048 = distinct !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !90047)
!90049 = distinct !DILocation(line: 2814, column: 17, scope: !14, inlinedAt: !90048)
!90050 = distinct !DILocation(line: 2110, column: 27, scope: !283, inlinedAt: !90049)
!90051 = distinct !DILocation(line: 2814, column: 32, scope: !14, inlinedAt: !90048)
!90052 = distinct !DILocation(line: 3193, column: 26, scope: !13, inlinedAt: !90051)
!90053 = distinct !DILocation(line: 64, column: 9, scope: !14, inlinedAt: !90048)
!90054 = distinct !{!90054, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!90055 = distinct !{!90055, !90054, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90056 = distinct !{!90056, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90057 = distinct !{!90057, !90056, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90058 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90059 = distinct !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !90058)
!90060 = distinct !DILocation(line: 2814, column: 17, scope: !14, inlinedAt: !90059)
!90061 = distinct !DILocation(line: 2110, column: 27, scope: !283, inlinedAt: !90060)
!90062 = distinct !DILocation(line: 2814, column: 32, scope: !14, inlinedAt: !90059)
!90063 = distinct !DILocation(line: 3193, column: 26, scope: !13, inlinedAt: !90062)
!90064 = distinct !DILocation(line: 64, column: 9, scope: !14, inlinedAt: !90059)
!90065 = distinct !{!90065, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_"}
!90066 = distinct !{!90066, !90065, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_: argument 0"}
!90067 = distinct !{!90067, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_"}
!90068 = distinct !{!90068, !90067, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_: argument 0"}
!90069 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90070 = distinct !DILocation(line: 810, column: 1, scope: !412, inlinedAt: !90069)
!90071 = distinct !DILocation(line: 2814, column: 17, scope: !415, inlinedAt: !90070)
!90072 = distinct !DILocation(line: 2110, column: 27, scope: !414, inlinedAt: !90071)
!90073 = distinct !DILocation(line: 2814, column: 32, scope: !415, inlinedAt: !90070)
!90074 = distinct !DILocation(line: 3193, column: 26, scope: !417, inlinedAt: !90073)
!90075 = distinct !DILocation(line: 64, column: 9, scope: !415, inlinedAt: !90070)
!90076 = distinct !{!90076, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_"}
!90077 = distinct !{!90077, !90076, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_: argument 0"}
!90078 = distinct !{!90078, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_"}
!90079 = distinct !{!90079, !90078, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_: argument 0"}
!90080 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90081 = distinct !DILocation(line: 810, column: 1, scope: !412, inlinedAt: !90080)
!90082 = distinct !DILocation(line: 2814, column: 17, scope: !415, inlinedAt: !90081)
!90083 = distinct !DILocation(line: 2110, column: 27, scope: !414, inlinedAt: !90082)
!90084 = distinct !DILocation(line: 2814, column: 32, scope: !415, inlinedAt: !90081)
!90085 = distinct !DILocation(line: 3193, column: 26, scope: !417, inlinedAt: !90084)
!90086 = distinct !DILocation(line: 64, column: 9, scope: !415, inlinedAt: !90081)
!90087 = distinct !{!90087, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan"}
!90088 = distinct !{!90088, !90087, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90089 = distinct !{!90089, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90090 = distinct !{!90090, !90089, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90091 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90092 = distinct !DILocation(line: 810, column: 1, scope: !740, inlinedAt: !90091)
!90093 = distinct !DILocation(line: 2814, column: 17, scope: !743, inlinedAt: !90092)
!90094 = distinct !DILocation(line: 2110, column: 27, scope: !742, inlinedAt: !90093)
!90095 = distinct !DILocation(line: 2814, column: 32, scope: !743, inlinedAt: !90092)
!90096 = distinct !DILocation(line: 3193, column: 26, scope: !745, inlinedAt: !90095)
!90097 = distinct !DILocation(line: 64, column: 9, scope: !743, inlinedAt: !90092)
!90098 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90099 = distinct !DILocation(line: 810, column: 1, scope: !225, inlinedAt: !90098)
!90100 = distinct !DILocation(line: 810, column: 1, scope: !224, inlinedAt: !90099)
!90101 = distinct !DILocation(line: 810, column: 1, scope: !223, inlinedAt: !90100)
!90102 = distinct !DILocation(line: 779, column: 17, scope: !222, inlinedAt: !90101)
!90103 = distinct !DILocation(line: 447, column: 30, scope: !221, inlinedAt: !90102)
!90104 = distinct !{!90104, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan"}
!90105 = distinct !{!90105, !90104, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90106 = distinct !{!90106, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfcROwRM8ZtH_11polars_plan"}
!90107 = distinct !{!90107, !90106, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90108 = distinct !{!90108, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfcROwRM8ZtH_11polars_plan"}
!90109 = distinct !{!90109, !90108, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90110 = distinct !{!90110, i1 true, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!90111 = distinct !{!90111, !90110, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!90112 = distinct !{!90112, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan"}
!90113 = distinct !{!90113, !90112, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90114 = distinct !{!90114, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90115 = distinct !{!90115, !90114, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90116 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90117 = distinct !DILocation(line: 810, column: 1, scope: !740, inlinedAt: !90116)
!90118 = distinct !DILocation(line: 2814, column: 17, scope: !743, inlinedAt: !90117)
!90119 = distinct !DILocation(line: 2110, column: 27, scope: !742, inlinedAt: !90118)
!90120 = distinct !DILocation(line: 2814, column: 32, scope: !743, inlinedAt: !90117)
!90121 = distinct !DILocation(line: 3193, column: 26, scope: !745, inlinedAt: !90120)
!90122 = distinct !DILocation(line: 64, column: 9, scope: !743, inlinedAt: !90117)
!90123 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90124 = distinct !DILocation(line: 810, column: 1, scope: !225, inlinedAt: !90123)
!90125 = distinct !DILocation(line: 810, column: 1, scope: !224, inlinedAt: !90124)
!90126 = distinct !DILocation(line: 810, column: 1, scope: !223, inlinedAt: !90125)
!90127 = distinct !DILocation(line: 779, column: 17, scope: !222, inlinedAt: !90126)
!90128 = distinct !DILocation(line: 447, column: 30, scope: !221, inlinedAt: !90127)
!90129 = distinct !{!90129, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan"}
!90130 = distinct !{!90130, !90129, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90131 = distinct !{!90131, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfcROwRM8ZtH_11polars_plan"}
!90132 = distinct !{!90132, !90131, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90133 = distinct !{!90133, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfcROwRM8ZtH_11polars_plan"}
!90134 = distinct !{!90134, !90133, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90135 = distinct !{!90135, i1 true, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!90136 = distinct !{!90136, !90135, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!90137 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90138 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !90137)
!90139 = distinct !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !90137)
!90140 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90141 = distinct !DILocation(line: 810, column: 1, scope: !536, inlinedAt: !90140)
!90142 = distinct !DILocation(line: 810, column: 1, scope: !536, inlinedAt: !90140)
!90143 = distinct !{!90143, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90144 = distinct !{!90144, !90143, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90145 = distinct !{!90145, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90146 = distinct !{!90146, !90145, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90147 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90148 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90147)
!90149 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90148)
!90150 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90149)
!90151 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90148)
!90152 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90151)
!90153 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90148)
!90154 = distinct !{!90154, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90155 = distinct !{!90155, !90154, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90156 = distinct !{!90156, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90157 = distinct !{!90157, !90156, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90158 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90159 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90158)
!90160 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90159)
!90161 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90160)
!90162 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90159)
!90163 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90162)
!90164 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90159)
!90165 = distinct !{!90165, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan"}
!90166 = distinct !{!90166, !90165, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90167 = distinct !{!90167, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90168 = distinct !{!90168, !90167, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90169 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90170 = distinct !DILocation(line: 810, column: 1, scope: !390, inlinedAt: !90169)
!90171 = distinct !DILocation(line: 2814, column: 17, scope: !393, inlinedAt: !90170)
!90172 = distinct !DILocation(line: 2110, column: 27, scope: !392, inlinedAt: !90171)
!90173 = distinct !DILocation(line: 2814, column: 32, scope: !393, inlinedAt: !90170)
!90174 = distinct !DILocation(line: 3193, column: 26, scope: !395, inlinedAt: !90173)
!90175 = distinct !DILocation(line: 64, column: 9, scope: !393, inlinedAt: !90170)
!90176 = distinct !{!90176, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan"}
!90177 = distinct !{!90177, !90176, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90178 = distinct !{!90178, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90179 = distinct !{!90179, !90178, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90180 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90181 = distinct !DILocation(line: 810, column: 1, scope: !390, inlinedAt: !90180)
!90182 = distinct !DILocation(line: 2814, column: 17, scope: !393, inlinedAt: !90181)
!90183 = distinct !DILocation(line: 2110, column: 27, scope: !392, inlinedAt: !90182)
!90184 = distinct !DILocation(line: 2814, column: 32, scope: !393, inlinedAt: !90181)
!90185 = distinct !DILocation(line: 3193, column: 26, scope: !395, inlinedAt: !90184)
!90186 = distinct !DILocation(line: 64, column: 9, scope: !393, inlinedAt: !90181)
!90187 = distinct !{!90187, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90188 = distinct !{!90188, !90187, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90189 = distinct !{!90189, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90190 = distinct !{!90190, !90189, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90191 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90192 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90191)
!90193 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90192)
!90194 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90193)
!90195 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90192)
!90196 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90195)
!90197 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90192)
!90198 = distinct !{!90198, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90199 = distinct !{!90199, !90198, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90200 = distinct !{!90200, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90201 = distinct !{!90201, !90200, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90202 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90203 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90202)
!90204 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90203)
!90205 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90204)
!90206 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90203)
!90207 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90206)
!90208 = distinct !{!90208, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_"}
!90209 = distinct !{!90209, !90208, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEEEB2v_: argument 0"}
!90210 = distinct !{!90210, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_"}
!90211 = distinct !{!90211, !90210, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtNtB1A_3ops4drop4Drop4dropB2d_: argument 0"}
!90212 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90213 = distinct !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !90212)
!90214 = distinct !DILocation(line: 2814, column: 17, scope: !755, inlinedAt: !90213)
!90215 = distinct !DILocation(line: 2110, column: 27, scope: !754, inlinedAt: !90214)
!90216 = distinct !DILocation(line: 2814, column: 32, scope: !755, inlinedAt: !90213)
!90217 = distinct !DILocation(line: 3193, column: 26, scope: !757, inlinedAt: !90216)
!90218 = distinct !DILocation(line: 64, column: 9, scope: !755, inlinedAt: !90213)
!90219 = distinct !{!90219, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan"}
!90220 = distinct !{!90220, !90219, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90221 = distinct !{!90221, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90222 = distinct !{!90222, !90221, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90223 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90224 = distinct !DILocation(line: 810, column: 1, scope: !740, inlinedAt: !90223)
!90225 = distinct !DILocation(line: 2814, column: 17, scope: !743, inlinedAt: !90224)
!90226 = distinct !DILocation(line: 2110, column: 27, scope: !742, inlinedAt: !90225)
!90227 = distinct !DILocation(line: 2814, column: 32, scope: !743, inlinedAt: !90224)
!90228 = distinct !DILocation(line: 3193, column: 26, scope: !745, inlinedAt: !90227)
!90229 = distinct !DILocation(line: 64, column: 9, scope: !743, inlinedAt: !90224)
!90230 = distinct !{!90230, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!90231 = distinct !{!90231, !90230, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90232 = distinct !{!90232, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90233 = distinct !{!90233, !90232, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90234 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90235 = distinct !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !90234)
!90236 = distinct !DILocation(line: 2814, column: 17, scope: !14, inlinedAt: !90235)
!90237 = distinct !DILocation(line: 2110, column: 27, scope: !283, inlinedAt: !90236)
!90238 = distinct !DILocation(line: 2814, column: 32, scope: !14, inlinedAt: !90235)
!90239 = distinct !DILocation(line: 3193, column: 26, scope: !13, inlinedAt: !90238)
!90240 = distinct !DILocation(line: 64, column: 9, scope: !14, inlinedAt: !90235)
!90241 = distinct !{!90241, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90242 = distinct !{!90242, !90241, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90243 = distinct !{!90243, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90244 = distinct !{!90244, !90243, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90245 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90246 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90245)
!90247 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90246)
!90248 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90247)
!90249 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90246)
!90250 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90249)
!90251 = distinct !{!90251, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90252 = distinct !{!90252, !90251, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90253 = distinct !{!90253, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90254 = distinct !{!90254, !90253, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90255 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90256 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90255)
!90257 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90256)
!90258 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90257)
!90259 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90256)
!90260 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90259)
!90261 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90256)
!90262 = distinct !{!90262, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_"}
!90263 = distinct !{!90263, !90262, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsEEB1k_: argument 0"}
!90264 = distinct !{!90264, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90265 = distinct !{!90265, !90264, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90266 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90267 = distinct !DILocation(line: 810, column: 1, scope: !400, inlinedAt: !90266)
!90268 = distinct !DILocation(line: 2814, column: 17, scope: !403, inlinedAt: !90267)
!90269 = distinct !DILocation(line: 2110, column: 27, scope: !402, inlinedAt: !90268)
!90270 = distinct !DILocation(line: 2814, column: 32, scope: !403, inlinedAt: !90267)
!90271 = distinct !DILocation(line: 3193, column: 26, scope: !405, inlinedAt: !90270)
!90272 = distinct !DILocation(line: 64, column: 9, scope: !403, inlinedAt: !90267)
!90273 = distinct !{!90273, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90274 = distinct !{!90274, !90273, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90275 = distinct !{!90275, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90276 = distinct !{!90276, !90275, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90277 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90278 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90277)
!90279 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90278)
!90280 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90279)
!90281 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90278)
!90282 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90281)
!90283 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90278)
!90284 = distinct !{!90284, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90285 = distinct !{!90285, !90284, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90286 = distinct !{!90286, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90287 = distinct !{!90287, !90286, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90288 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90289 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90288)
!90290 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90289)
!90291 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90290)
!90292 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90289)
!90293 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90292)
!90294 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90289)
!90295 = distinct !{!90295, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_"}
!90296 = distinct !{!90296, !90295, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsEEB1k_: argument 0"}
!90297 = distinct !{!90297, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90298 = distinct !{!90298, !90297, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options11JoinOptionsENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90299 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90300 = distinct !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !90299)
!90301 = distinct !DILocation(line: 2814, column: 17, scope: !409, inlinedAt: !90300)
!90302 = distinct !DILocation(line: 2110, column: 27, scope: !408, inlinedAt: !90301)
!90303 = distinct !DILocation(line: 2814, column: 32, scope: !409, inlinedAt: !90300)
!90304 = distinct !DILocation(line: 3193, column: 26, scope: !411, inlinedAt: !90303)
!90305 = distinct !DILocation(line: 64, column: 9, scope: !409, inlinedAt: !90300)
!90306 = distinct !{!90306, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90307 = distinct !{!90307, !90306, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90308 = distinct !{!90308, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90309 = distinct !{!90309, !90308, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90310 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90311 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90310)
!90312 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90311)
!90313 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90312)
!90314 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90311)
!90315 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90314)
!90316 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90311)
!90317 = distinct !{!90317, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90318 = distinct !{!90318, !90317, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90319 = distinct !{!90319, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90320 = distinct !{!90320, !90319, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90321 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90322 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90321)
!90323 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90322)
!90324 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90323)
!90325 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90322)
!90326 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90325)
!90327 = distinct !{!90327, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90328 = distinct !{!90328, !90327, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90329 = distinct !{!90329, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90330 = distinct !{!90330, !90329, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90331 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90332 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90331)
!90333 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90332)
!90334 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90333)
!90335 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90332)
!90336 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90335)
!90337 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90332)
!90338 = distinct !{!90338, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_"}
!90339 = distinct !{!90339, !90338, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1k_: argument 0"}
!90340 = distinct !{!90340, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_"}
!90341 = distinct !{!90341, !90340, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_: argument 0"}
!90342 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90343 = distinct !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90342)
!90344 = distinct !DILocation(line: 2814, column: 17, scope: !734, inlinedAt: !90343)
!90345 = distinct !DILocation(line: 2110, column: 27, scope: !733, inlinedAt: !90344)
!90346 = distinct !DILocation(line: 2814, column: 32, scope: !734, inlinedAt: !90343)
!90347 = distinct !DILocation(line: 3193, column: 26, scope: !736, inlinedAt: !90346)
!90348 = distinct !DILocation(line: 64, column: 9, scope: !734, inlinedAt: !90343)
!90349 = distinct !{!90349, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan"}
!90350 = distinct !{!90350, !90349, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!90351 = distinct !{!90351, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!90352 = distinct !{!90352, !90351, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!90353 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90354 = distinct !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !90353)
!90355 = distinct !DILocation(line: 2814, column: 17, scope: !14, inlinedAt: !90354)
!90356 = distinct !DILocation(line: 2110, column: 27, scope: !283, inlinedAt: !90355)
!90357 = distinct !DILocation(line: 2814, column: 32, scope: !14, inlinedAt: !90354)
!90358 = distinct !DILocation(line: 3193, column: 26, scope: !13, inlinedAt: !90357)
!90359 = distinct !DILocation(line: 64, column: 9, scope: !14, inlinedAt: !90354)
!90360 = distinct !{!90360, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_"}
!90361 = distinct !{!90361, !90360, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEEB1l_: argument 0"}
!90362 = distinct !{!90362, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_"}
!90363 = distinct !{!90363, !90362, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_: argument 0"}
!90364 = distinct !DILocation(line: 156, column: 12, scope: !85932)
!90365 = distinct !DILocation(line: 810, column: 1, scope: !412, inlinedAt: !90364)
!90366 = distinct !DILocation(line: 2814, column: 17, scope: !415, inlinedAt: !90365)
!90367 = distinct !DILocation(line: 2110, column: 27, scope: !414, inlinedAt: !90366)
!90368 = distinct !DILocation(line: 2814, column: 32, scope: !415, inlinedAt: !90365)
!90369 = distinct !DILocation(line: 3193, column: 26, scope: !417, inlinedAt: !90368)
!90370 = distinct !DILocation(line: 64, column: 9, scope: !415, inlinedAt: !90365)
!90371 = distinct !{!90371, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_"}
!90372 = distinct !{!90372, !90371, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEEB1l_: argument 0"}
!90373 = distinct !{!90373, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_"}
!90374 = distinct !{!90374, !90373, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_: argument 0"}
!90375 = distinct !DILocation(line: 156, column: 12, scope: !85932)
end_hunk_7
begin_hunk_8_@llvm.umin.i16
!98360 = !DILocation(line: 3956, column: 24, scope: !12, inlinedAt: !89721)
!98361 = !DILocation(line: 2814, column: 12, scope: !14, inlinedAt: !89717)
!98362 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89722)
!98363 = !DILocation(line: 2857, column: 18, scope: !14, inlinedAt: !89717)
!98364 = !DILocation(line: 614, column: 9, scope: !1251, inlinedAt: !89726)
!98365 = !DILocation(line: 961, column: 18, scope: !1255, inlinedAt: !89727)
!98366 = !DILocation(line: 1045, column: 29, scope: !1256, inlinedAt: !86149)
!98367 = !DILocation(line: 1046, column: 13, scope: !1256, inlinedAt: !86149)
!98368 = !DILocation(line: 1617, column: 5, scope: !86141)
!98369 = !DILocation(line: 810, column: 1, scope: !371, inlinedAt: !89730)
!98370 = !DILocation(line: 810, column: 1, scope: !372, inlinedAt: !89735)
!98371 = !DILocation(line: 444, column: 20, scope: !373, inlinedAt: !89738)
!98372 = !DILocation(line: 3956, column: 24, scope: !376, inlinedAt: !89740)
!98373 = !DILocation(line: 2814, column: 12, scope: !375, inlinedAt: !89736)
!98374 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89741)
!98375 = !DILocation(line: 2857, column: 18, scope: !375, inlinedAt: !89736)
!98376 = !DILocation(line: 810, column: 1, scope: !378, inlinedAt: !89743)
!98377 = !DILocation(line: 810, column: 1, scope: !380, inlinedAt: !89748)
!98378 = !DILocation(line: 444, column: 20, scope: !381, inlinedAt: !89751)
!98379 = !DILocation(line: 3956, column: 24, scope: !384, inlinedAt: !89753)
!98380 = !DILocation(line: 2814, column: 12, scope: !383, inlinedAt: !89749)
!98381 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89754)
!98382 = !DILocation(line: 2857, column: 18, scope: !383, inlinedAt: !89749)
!98383 = !DILocation(line: 810, column: 1, scope: !396, inlinedAt: !89755)
!98384 = !DILocation(line: 128, column: 14, scope: !204, inlinedAt: !89760)
!98385 = !DILocation(line: 128, column: 14, scope: !204, inlinedAt: !89765)
!98386 = !DILocation(line: 968, column: 23, scope: !89659, inlinedAt: !93876)
!98387 = !DILocation(line: 968, column: 32, scope: !89659, inlinedAt: !93876)
!98388 = !DILocation(line: 810, column: 1, scope: !326, inlinedAt: !89768)
!98389 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !89773)
!98390 = !DILocation(line: 444, column: 20, scope: !282, inlinedAt: !89776)
!98391 = !DILocation(line: 3956, column: 24, scope: !12, inlinedAt: !89778)
!98392 = !DILocation(line: 2814, column: 12, scope: !14, inlinedAt: !89774)
!98393 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89779)
!98394 = !DILocation(line: 2857, column: 18, scope: !14, inlinedAt: !89774)
!98395 = !DILocation(line: 810, column: 1, scope: !390, inlinedAt: !89784)
!98396 = !DILocation(line: 444, column: 20, scope: !391, inlinedAt: !89787)
!98397 = !DILocation(line: 3956, column: 24, scope: !394, inlinedAt: !89789)
!98398 = !DILocation(line: 2814, column: 12, scope: !393, inlinedAt: !89785)
!98399 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89794)
!98400 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !89797)
!98401 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !89799)
!98402 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !89795)
!98403 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89800)
!98404 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !89795)
!98405 = !DILocation(line: 810, column: 1, scope: !390, inlinedAt: !89805)
!98406 = !DILocation(line: 444, column: 20, scope: !391, inlinedAt: !89808)
!98407 = !DILocation(line: 3956, column: 24, scope: !394, inlinedAt: !89810)
!98408 = !DILocation(line: 2814, column: 12, scope: !393, inlinedAt: !89806)
!98409 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89811)
!98410 = !DILocation(line: 2857, column: 18, scope: !393, inlinedAt: !89806)
!98411 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89816)
!98412 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !89819)
!98413 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !89821)
!98414 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !89817)
!98415 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89822)
!98416 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !89817)
!98417 = !DILocation(line: 1613, column: 40, scope: !89823)
!98418 = !DILocation(line: 2588, column: 9, scope: !85959, inlinedAt: !93948)
!98419 = !DILocation(line: 3980, column: 17, scope: !1231, inlinedAt: !89828)
!98420 = !DILocation(line: 0, scope: !1231, inlinedAt: !89828)
!98421 = !DILocation(line: 1107, column: 12, scope: !1233, inlinedAt: !89826)
!98422 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89829)
!98423 = !DILocation(line: 1721, column: 9, scope: !1234, inlinedAt: !89830)
!98424 = !DILocation(line: 1118, column: 13, scope: !1237, inlinedAt: !89826)
!98425 = !DILocation(line: 1118, column: 21, scope: !1237, inlinedAt: !89826)
!98426 = !DILocation(line: 810, column: 1, scope: !1238, inlinedAt: !89831)
!98427 = !DILocation(line: 1615, column: 9, scope: !85933)
!98428 = !DILocation(line: 1604, column: 39, scope: !86118)
!98429 = !DILocation(line: 664, column: 24, scope: !89832, inlinedAt: !90597)
!98430 = !DILocation(line: 3, column: 1, scope: !93950, inlinedAt: !89843)
!98431 = !DILocation(line: 3, column: 1, scope: !93956, inlinedAt: !89847)
!98432 = !DILocation(line: 1605, column: 20, scope: !89823)
!98433 = !DILocation(line: 1608, column: 39, scope: !89823)
!98434 = !DILocation(line: 54, column: 9, scope: !87626, inlinedAt: !93959)
!98435 = !DILocation(line: 1608, column: 28, scope: !89823)
!98436 = !DILocation(line: 382, column: 9, scope: !89848, inlinedAt: !93960)
!98437 = !DILocation(line: 451, column: 14, scope: !89849, inlinedAt: !93961)
!98438 = !DILocation(line: 451, column: 9, scope: !89849, inlinedAt: !93961)
!98439 = !DILocation(line: 1609, column: 28, scope: !89823)
!98440 = !DILocation(line: 1611, column: 21, scope: !89850)
!98441 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !89858)
!98442 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !89856)
!98443 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89859)
!98444 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !89856)
!98445 = !DILocation(line: 1121, column: 5, scope: !1237, inlinedAt: !89826)
!98446 = !DILocation(line: 1620, column: 15, scope: !86405, inlinedAt: !93964)
!98447 = !DILocation(line: 1620, column: 9, scope: !86405, inlinedAt: !93964)
!98448 = !DILocation(line: 1622, column: 23, scope: !89860, inlinedAt: !93964)
!98449 = !DILocation(line: 1621, column: 16, scope: !86405, inlinedAt: !93964)
!98450 = !DILocation(line: 1624, column: 5, scope: !86405, inlinedAt: !93964)
!98451 = !DILocation(line: 2588, column: 66, scope: !85959, inlinedAt: !93948)
!98452 = !DILocation(line: 1613, column: 46, scope: !89823)
!98453 = !DILocation(line: 1613, column: 22, scope: !89823)
!98454 = !DILocation(line: 1613, column: 50, scope: !89823)
!98455 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89865)
!98456 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !89868)
!98457 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !89870)
!98458 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !89866)
!98459 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89871)
!98460 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !89866)
!98461 = !DILocation(line: 810, column: 1, scope: !396, inlinedAt: !89872)
!98462 = !DILocation(line: 128, column: 14, scope: !204, inlinedAt: !89877)
!98463 = !DILocation(line: 128, column: 14, scope: !204, inlinedAt: !89882)
!98464 = !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !89887)
!98465 = !DILocation(line: 444, column: 20, scope: !753, inlinedAt: !89890)
!98466 = !DILocation(line: 3956, column: 24, scope: !756, inlinedAt: !89892)
!98467 = !DILocation(line: 2814, column: 12, scope: !755, inlinedAt: !89888)
!98468 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89893)
!98469 = !DILocation(line: 2857, column: 18, scope: !755, inlinedAt: !89888)
!98470 = !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !89898)
!98471 = !DILocation(line: 444, column: 20, scope: !753, inlinedAt: !89901)
!98472 = !DILocation(line: 3956, column: 24, scope: !756, inlinedAt: !89903)
!98473 = !DILocation(line: 2814, column: 12, scope: !755, inlinedAt: !89899)
!98474 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89904)
!98475 = !DILocation(line: 2857, column: 18, scope: !755, inlinedAt: !89899)
!98476 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !89909)
!98477 = !DILocation(line: 444, column: 20, scope: !282, inlinedAt: !89912)
!98478 = !DILocation(line: 3956, column: 24, scope: !12, inlinedAt: !89914)
!98479 = !DILocation(line: 2814, column: 12, scope: !14, inlinedAt: !89910)
!98480 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89915)
!98481 = !DILocation(line: 2857, column: 18, scope: !14, inlinedAt: !89910)
!98482 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !89920)
!98483 = !DILocation(line: 444, column: 20, scope: !282, inlinedAt: !89923)
!98484 = !DILocation(line: 3956, column: 24, scope: !12, inlinedAt: !89925)
!98485 = !DILocation(line: 2814, column: 12, scope: !14, inlinedAt: !89921)
!98486 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89926)
!98487 = !DILocation(line: 2857, column: 18, scope: !14, inlinedAt: !89921)
!98488 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89931)
!98489 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !89934)
!98490 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !89936)
!98491 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !89932)
!98492 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89937)
!98493 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !89932)
!98494 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89942)
!98495 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !89945)
!98496 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !89947)
!98497 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !89943)
!98498 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89948)
!98499 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !89943)
!98500 = !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !89949)
!98501 = !DILocation(line: 810, column: 1, scope: !387, inlinedAt: !89950)
!98502 = !DILocation(line: 810, column: 1, scope: !387, inlinedAt: !89951)
!98503 = !DILocation(line: 810, column: 1, scope: !400, inlinedAt: !89956)
!98504 = !DILocation(line: 444, column: 20, scope: !401, inlinedAt: !89959)
!98505 = !DILocation(line: 3956, column: 24, scope: !404, inlinedAt: !89961)
!98506 = !DILocation(line: 2814, column: 12, scope: !403, inlinedAt: !89957)
!98507 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89962)
!98508 = !DILocation(line: 2857, column: 18, scope: !403, inlinedAt: !89957)
!98509 = !DILocation(line: 810, column: 1, scope: !400, inlinedAt: !89967)
!98510 = !DILocation(line: 444, column: 20, scope: !401, inlinedAt: !89970)
!98511 = !DILocation(line: 3956, column: 24, scope: !404, inlinedAt: !89972)
!98512 = !DILocation(line: 2814, column: 12, scope: !403, inlinedAt: !89968)
!98513 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89973)
!98514 = !DILocation(line: 2857, column: 18, scope: !403, inlinedAt: !89968)
!98515 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89978)
!98516 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !89981)
!98517 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !89983)
!98518 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !89979)
!98519 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89984)
!98520 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !89979)
!98521 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !89989)
!98522 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !89992)
!98523 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !89994)
!98524 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !89990)
!98525 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !89995)
!98526 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !89990)
!98527 = !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !90000)
!98528 = !DILocation(line: 444, column: 20, scope: !407, inlinedAt: !90003)
!98529 = !DILocation(line: 3956, column: 24, scope: !410, inlinedAt: !90005)
!98530 = !DILocation(line: 2814, column: 12, scope: !409, inlinedAt: !90001)
!98531 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90006)
!98532 = !DILocation(line: 2857, column: 18, scope: !409, inlinedAt: !90001)
!98533 = !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !90011)
!98534 = !DILocation(line: 444, column: 20, scope: !407, inlinedAt: !90014)
!98535 = !DILocation(line: 3956, column: 24, scope: !410, inlinedAt: !90016)
!98536 = !DILocation(line: 2814, column: 12, scope: !409, inlinedAt: !90012)
!98537 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90017)
!98538 = !DILocation(line: 2857, column: 18, scope: !409, inlinedAt: !90012)
!98539 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90022)
!98540 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90025)
!98541 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90027)
!98542 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90023)
!98543 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90028)
!98544 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90023)
!98545 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90033)
!98546 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90036)
!98547 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90038)
!98548 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90034)
!98549 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90039)
!98550 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90034)
!98551 = !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !90040)
!98552 = !DILocation(line: 810, column: 1, scope: !387, inlinedAt: !90041)
!98553 = !DILocation(line: 810, column: 1, scope: !387, inlinedAt: !90042)
!98554 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !90047)
!98555 = !DILocation(line: 444, column: 20, scope: !282, inlinedAt: !90050)
!98556 = !DILocation(line: 3956, column: 24, scope: !12, inlinedAt: !90052)
!98557 = !DILocation(line: 2814, column: 12, scope: !14, inlinedAt: !90048)
!98558 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90053)
!98559 = !DILocation(line: 2857, column: 18, scope: !14, inlinedAt: !90048)
!98560 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !90058)
!98561 = !DILocation(line: 444, column: 20, scope: !282, inlinedAt: !90061)
!98562 = !DILocation(line: 3956, column: 24, scope: !12, inlinedAt: !90063)
!98563 = !DILocation(line: 2814, column: 12, scope: !14, inlinedAt: !90059)
!98564 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90064)
!98565 = !DILocation(line: 2857, column: 18, scope: !14, inlinedAt: !90059)
!98566 = !DILocation(line: 810, column: 1, scope: !412, inlinedAt: !90069)
!98567 = !DILocation(line: 444, column: 20, scope: !413, inlinedAt: !90072)
!98568 = !DILocation(line: 3956, column: 24, scope: !416, inlinedAt: !90074)
!98569 = !DILocation(line: 2814, column: 12, scope: !415, inlinedAt: !90070)
!98570 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90075)
!98571 = !DILocation(line: 2857, column: 18, scope: !415, inlinedAt: !90070)
!98572 = !DILocation(line: 810, column: 1, scope: !412, inlinedAt: !90080)
!98573 = !DILocation(line: 444, column: 20, scope: !413, inlinedAt: !90083)
!98574 = !DILocation(line: 3956, column: 24, scope: !416, inlinedAt: !90085)
!98575 = !DILocation(line: 2814, column: 12, scope: !415, inlinedAt: !90081)
!98576 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90086)
!98577 = !DILocation(line: 2857, column: 18, scope: !415, inlinedAt: !90081)
!98578 = !DILocation(line: 810, column: 1, scope: !740, inlinedAt: !90091)
!98579 = !DILocation(line: 444, column: 20, scope: !741, inlinedAt: !90094)
!98580 = !DILocation(line: 3956, column: 24, scope: !744, inlinedAt: !90096)
!98581 = !DILocation(line: 2814, column: 12, scope: !743, inlinedAt: !90092)
!98582 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90097)
!98583 = !DILocation(line: 2857, column: 18, scope: !743, inlinedAt: !90092)
!98584 = !DILocation(line: 612, column: 33, scope: !220, inlinedAt: !90103)
!98585 = !DILocation(line: 779, column: 12, scope: !222, inlinedAt: !90101)
!98586 = !DILocation(line: 780, column: 13, scope: !222, inlinedAt: !90101)
!98587 = !DILocation(line: 810, column: 1, scope: !740, inlinedAt: !90116)
!98588 = !DILocation(line: 444, column: 20, scope: !741, inlinedAt: !90119)
!98589 = !DILocation(line: 3956, column: 24, scope: !744, inlinedAt: !90121)
!98590 = !DILocation(line: 2814, column: 12, scope: !743, inlinedAt: !90117)
!98591 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90122)
!98592 = !DILocation(line: 2857, column: 18, scope: !743, inlinedAt: !90117)
!98593 = !DILocation(line: 612, column: 33, scope: !220, inlinedAt: !90128)
!98594 = !DILocation(line: 779, column: 12, scope: !222, inlinedAt: !90126)
!98595 = !DILocation(line: 780, column: 13, scope: !222, inlinedAt: !90126)
!98596 = !DILocation(line: 810, column: 1, scope: !386, inlinedAt: !90137)
!98597 = !DILocation(line: 810, column: 1, scope: !387, inlinedAt: !90138)
!98598 = !DILocation(line: 810, column: 1, scope: !387, inlinedAt: !90139)
!98599 = !DILocation(line: 810, column: 1, scope: !536, inlinedAt: !90140)
!98600 = !DILocation(line: 810, column: 1, scope: !537, inlinedAt: !90141)
!98601 = !DILocation(line: 810, column: 1, scope: !537, inlinedAt: !90142)
!98602 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90147)
!98603 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90150)
!98604 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90152)
!98605 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90148)
!98606 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90153)
!98607 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90148)
!98608 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90158)
!98609 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90161)
!98610 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90163)
!98611 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90159)
!98612 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90164)
!98613 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90159)
!98614 = !DILocation(line: 810, column: 1, scope: !390, inlinedAt: !90169)
!98615 = !DILocation(line: 444, column: 20, scope: !391, inlinedAt: !90172)
!98616 = !DILocation(line: 3956, column: 24, scope: !394, inlinedAt: !90174)
!98617 = !DILocation(line: 2814, column: 12, scope: !393, inlinedAt: !90170)
!98618 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90175)
!98619 = !DILocation(line: 2857, column: 18, scope: !393, inlinedAt: !90170)
!98620 = !DILocation(line: 810, column: 1, scope: !390, inlinedAt: !90180)
!98621 = !DILocation(line: 444, column: 20, scope: !391, inlinedAt: !90183)
!98622 = !DILocation(line: 3956, column: 24, scope: !394, inlinedAt: !90185)
!98623 = !DILocation(line: 2814, column: 12, scope: !393, inlinedAt: !90181)
!98624 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90186)
!98625 = !DILocation(line: 2857, column: 18, scope: !393, inlinedAt: !90181)
!98626 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90191)
!98627 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90194)
!98628 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90196)
!98629 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90192)
!98630 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90197)
!98631 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90192)
!98632 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90202)
!98633 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90205)
!98634 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90207)
!98635 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90203)
!98636 = !DILocation(line: 810, column: 1, scope: !752, inlinedAt: !90212)
!98637 = !DILocation(line: 444, column: 20, scope: !753, inlinedAt: !90215)
!98638 = !DILocation(line: 3956, column: 24, scope: !756, inlinedAt: !90217)
!98639 = !DILocation(line: 2814, column: 12, scope: !755, inlinedAt: !90213)
!98640 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90218)
!98641 = !DILocation(line: 2857, column: 18, scope: !755, inlinedAt: !90213)
!98642 = !DILocation(line: 810, column: 1, scope: !740, inlinedAt: !90223)
!98643 = !DILocation(line: 444, column: 20, scope: !741, inlinedAt: !90226)
!98644 = !DILocation(line: 3956, column: 24, scope: !744, inlinedAt: !90228)
!98645 = !DILocation(line: 2814, column: 12, scope: !743, inlinedAt: !90224)
!98646 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90229)
!98647 = !DILocation(line: 2857, column: 18, scope: !743, inlinedAt: !90224)
!98648 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !90234)
!98649 = !DILocation(line: 444, column: 20, scope: !282, inlinedAt: !90237)
!98650 = !DILocation(line: 3956, column: 24, scope: !12, inlinedAt: !90239)
!98651 = !DILocation(line: 2814, column: 12, scope: !14, inlinedAt: !90235)
!98652 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90240)
!98653 = !DILocation(line: 2857, column: 18, scope: !14, inlinedAt: !90235)
!98654 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90245)
!98655 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90248)
!98656 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90250)
!98657 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90246)
!98658 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90255)
!98659 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90258)
!98660 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90260)
!98661 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90256)
!98662 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90261)
!98663 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90256)
!98664 = !DILocation(line: 810, column: 1, scope: !400, inlinedAt: !90266)
!98665 = !DILocation(line: 444, column: 20, scope: !401, inlinedAt: !90269)
!98666 = !DILocation(line: 3956, column: 24, scope: !404, inlinedAt: !90271)
!98667 = !DILocation(line: 2814, column: 12, scope: !403, inlinedAt: !90267)
!98668 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90272)
!98669 = !DILocation(line: 2857, column: 18, scope: !403, inlinedAt: !90267)
!98670 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90277)
!98671 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90280)
!98672 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90282)
!98673 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90278)
!98674 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90283)
!98675 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90278)
!98676 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90288)
!98677 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90291)
!98678 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90293)
!98679 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90289)
!98680 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90294)
!98681 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90289)
!98682 = !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !90299)
!98683 = !DILocation(line: 444, column: 20, scope: !407, inlinedAt: !90302)
!98684 = !DILocation(line: 3956, column: 24, scope: !410, inlinedAt: !90304)
!98685 = !DILocation(line: 2814, column: 12, scope: !409, inlinedAt: !90300)
!98686 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90305)
!98687 = !DILocation(line: 2857, column: 18, scope: !409, inlinedAt: !90300)
!98688 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90310)
!98689 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90313)
!98690 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90315)
!98691 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90311)
!98692 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90316)
!98693 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90311)
!98694 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90321)
!98695 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90324)
!98696 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90326)
!98697 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90322)
!98698 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90331)
!98699 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90334)
!98700 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90336)
!98701 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90332)
!98702 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90337)
!98703 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90332)
!98704 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90342)
!98705 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90345)
!98706 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90347)
!98707 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90343)
!98708 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90348)
!98709 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90343)
!98710 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !90353)
!98711 = !DILocation(line: 444, column: 20, scope: !282, inlinedAt: !90356)
!98712 = !DILocation(line: 3956, column: 24, scope: !12, inlinedAt: !90358)
!98713 = !DILocation(line: 2814, column: 12, scope: !14, inlinedAt: !90354)
!98714 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90359)
!98715 = !DILocation(line: 2857, column: 18, scope: !14, inlinedAt: !90354)
!98716 = !DILocation(line: 810, column: 1, scope: !412, inlinedAt: !90364)
!98717 = !DILocation(line: 444, column: 20, scope: !413, inlinedAt: !90367)
!98718 = !DILocation(line: 3956, column: 24, scope: !416, inlinedAt: !90369)
!98719 = !DILocation(line: 2814, column: 12, scope: !415, inlinedAt: !90365)
!98720 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90370)
!98721 = !DILocation(line: 2857, column: 18, scope: !415, inlinedAt: !90365)
!98722 = !DILocation(line: 810, column: 1, scope: !746, inlinedAt: !90375)
!98723 = !DILocation(line: 444, column: 20, scope: !747, inlinedAt: !90378)
!98724 = !DILocation(line: 3956, column: 24, scope: !750, inlinedAt: !90380)
!98725 = !DILocation(line: 2814, column: 12, scope: !749, inlinedAt: !90376)
!98726 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90381)
!98727 = !DILocation(line: 2857, column: 18, scope: !749, inlinedAt: !90376)
!98728 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90386)
!98729 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90389)
!98730 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90391)
!98731 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90387)
!98732 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90392)
!98733 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90387)
!98734 = !DILocation(line: 810, column: 1, scope: !740, inlinedAt: !90397)
!98735 = !DILocation(line: 444, column: 20, scope: !741, inlinedAt: !90400)
!98736 = !DILocation(line: 3956, column: 24, scope: !744, inlinedAt: !90402)
!98737 = !DILocation(line: 2814, column: 12, scope: !743, inlinedAt: !90398)
!98738 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90403)
!98739 = !DILocation(line: 2857, column: 18, scope: !743, inlinedAt: !90398)
!98740 = !DILocation(line: 612, column: 33, scope: !220, inlinedAt: !90409)
!98741 = !DILocation(line: 779, column: 12, scope: !222, inlinedAt: !90407)
!98742 = !DILocation(line: 780, column: 13, scope: !222, inlinedAt: !90407)
!98743 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90422)
!98744 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90425)
!98745 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90427)
!98746 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90423)
!98747 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90428)
!98748 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90423)
!98749 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90433)
!98750 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90436)
!98751 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90438)
!98752 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90434)
!98753 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90439)
!98754 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90434)
!98755 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90444)
!98756 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90447)
!98757 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90449)
!98758 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90445)
!98759 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90454)
!98760 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90457)
!98761 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90459)
!98762 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90455)
!98763 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90460)
!98764 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90455)
!98765 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90465)
!98766 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90468)
!98767 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90470)
!98768 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90466)
!98769 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90471)
!98770 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90466)
!98771 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90476)
!98772 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90479)
!98773 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90481)
!98774 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90477)
!98775 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90482)
!98776 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90477)
!98777 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90487)
!98778 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90490)
!98779 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90492)
!98780 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90488)
!98781 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90493)
!98782 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90488)
!98783 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90498)
!98784 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90501)
!98785 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90503)
!98786 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90499)
!98787 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90504)
!98788 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !90499)
!98789 = !DILocation(line: 810, column: 1, scope: !390, inlinedAt: !90509)
!98790 = !DILocation(line: 444, column: 20, scope: !391, inlinedAt: !90512)
!98791 = !DILocation(line: 3956, column: 24, scope: !394, inlinedAt: !90514)
!98792 = !DILocation(line: 2814, column: 12, scope: !393, inlinedAt: !90510)
!98793 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !90515)
!98794 = !DILocation(line: 2857, column: 18, scope: !393, inlinedAt: !90510)
!98795 = !DILocation(line: 810, column: 1, scope: !731, inlinedAt: !90520)
!98796 = !DILocation(line: 444, column: 20, scope: !732, inlinedAt: !90523)
!98797 = !DILocation(line: 3956, column: 24, scope: !735, inlinedAt: !90525)
!98798 = !DILocation(line: 2814, column: 12, scope: !734, inlinedAt: !90521)
!98799 = !DILocation(line: 4387, column: 24, scope: !16, inlinedAt: !94135)
!98800 = !DILocation(line: 2857, column: 18, scope: !734, inlinedAt: !94134)
!98801 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness13is_sorted_rec0B9_", scope: !3093, file: !3009, line: 189, type: !2294, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98802 = distinct !DILexicalBlock(scope: !98801, file: !3009, line: 200, column: 44)
!98803 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsb_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortednessNtB5_8IRSortedNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !99782, file: !3009, line: 128, type: !2404, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98804 = distinct !DILocation(line: 201, column: 23, scope: !98802)
!98805 = distinct !DILocation(line: 129, column: 21, scope: !98803, inlinedAt: !98804)
!98806 = distinct !DILocation(line: 2394, column: 44, scope: !1931, inlinedAt: !98805)
!98807 = distinct !DILocation(line: 3162, column: 26, scope: !1930, inlinedAt: !98806)
!98808 = distinct !DISubprogram(name: "insert<polars_utils::arena::Node, (), foldhash::quality::RandomState>", linkageName: "_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCsfcROwRM8ZtH_11polars_plan", scope: !2858, file: !2834, line: 450, type: !2294, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98809 = distinct !DISubprogram(name: "insert<polars_utils::arena::Node, foldhash::quality::RandomState>", linkageName: "_RNvMs2_NtCse4dvU5uQ85g_8indexmap3setINtB5_8IndexSetNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCsfcROwRM8ZtH_11polars_plan", scope: !2859, file: !2830, line: 381, type: !2294, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98810 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, polars_plan::plans::ir::IR>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREB17_", scope: !2430, file: !2428, line: 613, type: !2294, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98811 = distinct !DISubprogram(name: "get<polars_plan::plans::ir::IR>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE3getBX_", scope: !3117, file: !3115, line: 106, type: !2294, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98812 = distinct !DISubprogram(name: "deref<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefBL_", scope: !2588, file: !2359, line: 3755, type: !2294, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98813 = distinct !DISubprogram(name: "as_slice<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8as_sliceBK_", scope: !2432, file: !2359, line: 1824, type: !2294, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98814 = distinct !DISubprogram(name: "as_ptr<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE6as_ptrBK_", scope: !2432, file: !2359, line: 1939, type: !2294, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98815 = distinct !DISubprogram(name: "ptr<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE3ptrBS_", scope: !2431, file: !2428, line: 295, type: !2294, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98816 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, polars_plan::plans::ir::IR>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREB12_", scope: !2430, file: !2428, line: 608, type: !2294, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98817 = distinct !DISubprogram(name: "get<polars_plan::plans::ir::IR>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE3getB14_", scope: !2774, file: !2540, line: 218, type: !2294, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98818 = distinct !DISubprogram(name: "get<polars_plan::plans::ir::IR, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IR3getjEBB_", scope: !2370, file: !2369, line: 572, type: !2294, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
!98819 = distinct !DISubprogram(name: "unwrap<&polars_plan::plans::ir::IR>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE6unwrapBO_", scope: !2299, file: !2296, line: 1013, type: !2294, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2293)
end_hunk_8
