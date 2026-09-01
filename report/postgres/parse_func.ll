Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/parse_func?download=true
inline.NumInlined: 39
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ParseFuncOrColumn:bb.a
  %i.nb = trunc nsw i64 %indvars.iv.next665 to i32
  br label %.critedge553

.critedge553:                                     ; preds = %.critedge553.loopexit, %.lr.ph634, %bb.ci
  %.0477.lcssa = phi i32 [ %.0478.lcssa709, %bb.ci ], [ %.0478.lcssa709, %.lr.ph634 ], [ %i.nb, %.critedge553.loopexit ]
  %i.nc = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nd = load i32, ptr %i.a, align 4
  %i.ne = call i32 @enforce_generic_type_consistency(ptr noundef nonnull %i.c, ptr noundef %i.nc, i32 noundef %.0477.lcssa, i32 noundef %i.nd, i1 noundef zeroext false) #8
  store i32 %i.ne, ptr %i.a, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %.0486.lcssa707, i64 4 ; 2 uses
  br i1 %.not513714, label %make_fn_arguments.exit, label %.lr.ph.i568

.lr.ph.i568:                                      ; preds = %.critedge553
  %i.ng = getelementptr inbounds nuw i8, ptr %.0486.lcssa707, i64 16
  %i.nh = load i32, ptr %i.nf, align 4
  %i.ni = icmp sgt i32 %i.nh, 0
  br i1 %i.ni, label %.lr.ph39.i, label %make_fn_arguments.exit

.lr.ph39.i:                                       ; preds = %.lr.ph.i568, %bb.cm
  %indvars.iv.i569 = phi i64 [ %indvars.iv.next.i570, %bb.cm ], [ 0, %.lr.ph.i568 ] ; 4 uses
  %i.nj = load ptr, ptr %i.ng, align 8
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv.i569 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i569
  %i.nm = load i32, ptr %i.nl, align 4            ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i569
  %i.no = load i32, ptr %i.nn, align 4            ; 3 uses
  %.not33.i = icmp eq i32 %i.nm, %i.no
  br i1 %.not33.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph39.i
  %i.np = load ptr, ptr %i.nk, align 8            ; 3 uses
  %i.nq = load i32, ptr %i.np, align 4
  %i.nr = icmp eq i32 %i.nq, 16
  br i1 %i.nr, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = call ptr @coerce_type(ptr noundef %0, ptr noundef %i.nt, i32 noundef %i.nm, i32 noundef %i.no, i32 noundef -1, i32 noundef 0, i32 noundef 2, i32 noundef -1) #8
  store ptr %i.nu, ptr %i.ns, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.nv = call ptr @coerce_type(ptr noundef %0, ptr noundef nonnull %i.np, i32 noundef %i.nm, i32 noundef %i.no, i32 noundef -1, i32 noundef 0, i32 noundef 2, i32 noundef -1) #8
  store ptr %i.nv, ptr %i.nk, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.lr.ph39.i
  %indvars.iv.next.i570 = add nuw nsw i64 %indvars.iv.i569, 1 ; 2 uses
  %i.nw = load i32, ptr %i.nf, align 4
  %i.nx = sext i32 %i.nw to i64
  %i.ny = icmp slt i64 %indvars.iv.next.i570, %i.nx
  br i1 %i.ny, label %.lr.ph39.i, label %make_fn_arguments.exit

make_fn_arguments.exit:                           ; preds = %bb.cm, %.critedge553, %.lr.ph.i568
  %i.nz = load i32, ptr %i.h, align 4             ; 3 uses
  %.not539 = icmp ne i32 %i.nz, 0
  %.0483 = and i1 %i.dl, %.not539
  %i.oa = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ob = icmp sgt i32 %i.oa, 0
  %i.oc = icmp ne i32 %i.nz, 2276
  %or.cond39 = select i1 %i.ob, i1 %i.oc, i1 false
  br i1 %or.cond39, label %bb.co, label %bb.cr

.split640:                                        ; preds = %.lr.ph644, %.lr.ph644.preheader
  %i.od = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.oe = call i32 @errcode(i32 noundef 50856197) #8 ; 0 uses
  %i.of = call i32 (ptr, ptr, i64, ...) @errmsg_plural(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 100, i32 noundef 100) #8 ; 0 uses
  %i.og = call i32 @parser_errposition(ptr noundef %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 679, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.cn:                                            ; preds = %.lr.ph734, %.lr.ph644
  %indvars.iv664733 = phi i64 [ %i.na, %.lr.ph734 ], [ %indvars.iv.next665, %.lr.ph644 ] ; 2 uses
  %indvars.iv666732 = phi i64 [ 0, %.lr.ph734 ], [ %indvars.iv.next667, %.lr.ph644 ] ; 2 uses
  %i.oh = load ptr, ptr %i.mw, align 8
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv666732
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = call i32 @exprType(ptr noundef %i.oj) #8
  %indvars.iv.next665 = add nsw i64 %indvars.iv664733, 1 ; 2 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv664733
  store i32 %i.ok, ptr %i.ol, align 4
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666732, 1 ; 3 uses
  %i.om = load i32, ptr %i.mv, align 4
  %i.on = sext i32 %i.om to i64
  %i.oo = icmp slt i64 %indvars.iv.next667, %i.on
  br i1 %i.oo, label %.lr.ph644, label %.critedge553.loopexit

bb.co:                                            ; preds = %make_fn_arguments.exit
  %i.op = call noundef ptr @palloc0(i64 noundef 40) #8 ; 7 uses
  store i32 35, ptr %i.op, align 4
  %i.oq = sub i32 %.0478.lcssa709, %i.oa          ; 2 uses
  %i.or = call ptr @list_copy_tail(ptr noundef %.0486.lcssa707, i32 noundef %i.oq) #8 ; 4 uses
  %i.os = call ptr @list_truncate(ptr noundef %.0486.lcssa707, i32 noundef %i.oq) #8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store ptr %i.or, ptr %i.ot, align 8
  %i.ou = getelementptr i8, ptr %i.or, i64 16
  %.val = load ptr, ptr %i.ou, align 8
  %i.ov = load ptr, ptr %.val, align 8
  %i.ow = call i32 @exprType(ptr noundef %i.ov) #8 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.op, i64 12 ; 2 uses
  store i32 %i.ow, ptr %i.ox, align 4
  %i.oy = call i32 @get_array_type(i32 noundef %i.ow) #8 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  store i32 %i.oy, ptr %i.oz, align 4
  %.not540 = icmp eq i32 %i.oy, 0
  br i1 %.not540, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.pa = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.pb = call i32 @errcode(i32 noundef 67137668) #8 ; 0 uses
  %i.pc = load i32, ptr %i.ox, align 4
  %i.pd = call ptr @format_type_be(i32 noundef %i.pc) #8
  %i.pe = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.39, ptr noundef %i.pd) #8 ; 0 uses
  %i.pf = call i32 @exprLocation(ptr noundef nonnull %i.or) #8
  %i.pg = call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.pf) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 732, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.ph = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  store i8 0, ptr %i.ph, align 8
  %i.pi = call i32 @exprLocation(ptr noundef nonnull %i.or) #8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.op, i64 36
  store i32 %i.pi, ptr %i.pj, align 4
  %i.pk = call ptr @lappend(ptr noundef %i.os, ptr noundef nonnull %i.op) #8
  %.pre = load i32, ptr %i.h, align 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %make_fn_arguments.exit
  %i.pl = phi i32 [ %.pre, %bb.cq ], [ %i.nz, %make_fn_arguments.exit ]
  %.2488 = phi ptr [ %i.pk, %bb.cq ], [ %.0486.lcssa707, %make_fn_arguments.exit ] ; 7 uses
  %.1484 = phi i1 [ true, %bb.cq ], [ %.0483, %make_fn_arguments.exit ] ; 3 uses
  %i.pm = icmp sgt i32 %.0478.lcssa709, 0
  %i.pn = icmp eq i32 %i.pl, 2276
  %or.cond41 = select i1 %i.pm, i1 %i.pn, i1 false
  %or.cond43 = and i1 %.1484, %or.cond41
  br i1 %or.cond43, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.po = zext nneg i32 %.0478.lcssa709 to i64
  %i.pp = getelementptr [4 x i8], ptr %i.c, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 -4
  %i.pr = load i32, ptr %i.pq, align 4
  %i.ps = call i32 @get_base_element_type(i32 noundef %i.pr) #8
  %.not541 = icmp eq i32 %i.ps, 0
  br i1 %.not541, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.pt = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.pu = call i32 @errcode(i32 noundef 67141764) #8 ; 0 uses
  %i.pv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.40) #8 ; 0 uses
  %i.pw = getelementptr i8, ptr %.2488, i64 4
  %.2488.val = load i32, ptr %i.pw, align 4
  %i.px = getelementptr i8, ptr %.2488, i64 16
  %.2488.val559 = load ptr, ptr %i.px, align 8
  %i.py = add i32 %.2488.val, -1
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [8 x i8], ptr %.2488.val559, i64 %i.pz
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = call i32 @exprLocation(ptr noundef %i.qb) #8
  %i.qd = call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.qc) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 758, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.cu:                                            ; preds = %bb.cs, %bb.cr
  %i.qe = load i8, ptr %i.f, align 1, !range !4, !noundef !5 ; 3 uses
  %i.qf = trunc nuw i8 %i.qe to i1                ; 3 uses
  br i1 %i.qf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @check_srf_call_placement(ptr noundef %0, ptr noundef %3, i32 noundef %6)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  br i1 %or.cond31, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.qg = call noundef ptr @palloc0(i64 noundef 48) #8 ; 9 uses
  store i32 15, ptr %i.qg, align 4
  %i.qh = load i32, ptr %i.b, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  store i32 %i.qh, ptr %i.qi, align 4
  %i.qj = load i32, ptr %i.a, align 4
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store i32 %i.qj, ptr %i.qk, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 12
  store i8 %i.qe, ptr %i.ql, align 4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qg, i64 13
  %i.qn = zext i1 %.1484 to i8
  store i8 %i.qn, ptr %i.qm, align 1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  store i32 %i.aa, ptr %i.qo, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  store ptr %.2488, ptr %i.qp, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qg, i64 40
  store i32 %6, ptr %i.qq, align 8
  br label %bb.ds

bb.cy:                                            ; preds = %bb.cw
  %i.qr = icmp ne i32 %i.ec, 4
  %or.cond47 = select i1 %i.qr, i1 true, i1 %i.dk
  br i1 %or.cond47, label %bb.dg, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qs = call noundef ptr @palloc0(i64 noundef 96) #8 ; 15 uses
  store i32 9, ptr %i.qs, align 4
  %i.qt = load i32, ptr %i.b, align 4
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store i32 %i.qt, ptr %i.qu, align 4
  %i.qv = load i32, ptr %i.a, align 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store i32 %i.qv, ptr %i.qw, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 20
  store i32 0, ptr %i.qx, align 4
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qs, i64 64
  store ptr %.0485, ptr %i.qy, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qs, i64 72
  store i8 %i.ab, ptr %i.qz, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qs, i64 73
  %i.rb = zext i1 %.1484 to i8
  store i8 %i.rb, ptr %i.ra, align 1
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qs, i64 74
  store i8 %.0474, ptr %i.rc, align 2
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qs, i64 75
  store i8 0, ptr %i.rd, align 1
  %i.re = getelementptr inbounds nuw i8, ptr %i.qs, i64 80
  store i32 0, ptr %i.re, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qs, i64 84
  store i32 -1, ptr %i.rf, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qs, i64 88
  store i32 -1, ptr %i.rg, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qs, i64 92
  store i32 %6, ptr %i.rh, align 4
  %i.ri = icmp ne ptr %.2488, null
  %i.rj = extractelement <4 x i1> %i.af, i64 0
  %i.rk = or i1 %i.rj, %i.ri
  %or.cond51 = or i1 %i.di, %i.rk
  br i1 %or.cond51, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.rm = call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.rn = call ptr @NameListToString(ptr noundef %1) #8
  %i.ro = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef %i.rn) #8 ; 0 uses
  %i.rp = call i32 @parser_errposition(ptr noundef %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 813, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.db:                                            ; preds = %bb.cz
  br i1 %i.qf, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.rq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.rr = call i32 @errcode(i32 noundef 50724996) #8 ; 0 uses
  %i.rs = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42) #8 ; 0 uses
  %i.rt = call i32 @parser_errposition(ptr noundef %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 819, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.dd:                                            ; preds = %bb.db
  %.not542 = icmp eq ptr %.0476597, null
  br i1 %.not542, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ru = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.rv = call i32 @errcode(i32 noundef 1088) #8  ; 0 uses
  %i.rw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #8 ; 0 uses
  %i.rx = call i32 @parser_errposition(ptr noundef %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 834, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.df:                                            ; preds = %bb.dd
  call void @transformAggregateCall(ptr noundef %0, ptr noundef nonnull %i.qs, ptr noundef %.2488, ptr noundef %i.ad, i1 noundef zeroext %i.dj) #8
  %.pre673 = load i8, ptr %i.f, align 1, !range !4
  br label %bb.ds

bb.dg:                                            ; preds = %bb.cy
  %i.ry = call noundef ptr @palloc0(i64 noundef 64) #8 ; 12 uses
  store i32 11, ptr %i.ry, align 4
  %i.rz = load i32, ptr %i.b, align 4
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  store i32 %i.rz, ptr %i.sa, align 4
  %i.sb = load i32, ptr %i.a, align 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i32 %i.sb, ptr %i.sc, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  store ptr %.2488, ptr %i.sd, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.ry, i64 52
  store i8 %i.ab, ptr %i.se, align 4
  %i.sf = icmp eq i32 %i.ec, 4                    ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 53
  %i.sh = zext i1 %i.sf to i8
  store i8 %i.sh, ptr %i.sg, align 1
  %i.si = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  store ptr %.0485, ptr %i.si, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ry, i64 56
  store i32 %i.ae, ptr %i.sj, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ry, i64 40
  store ptr null, ptr %i.sk, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ry, i64 60
  store i32 %6, ptr %i.sl, align 4
  br i1 %i.dj, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.sm = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.sn = call i32 @errcode(i32 noundef 1088) #8  ; 0 uses
  %i.so = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.44) #8 ; 0 uses
  %i.sp = call i32 @parser_errposition(ptr noundef %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 868, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.sq = icmp ne ptr %.2488, null
  %not. = xor i1 %i.sf, true
  %or.cond53 = select i1 %not., i1 true, i1 %i.sq
  %or.cond55 = or i1 %i.di, %or.cond53
  br i1 %or.cond55, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sr = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ss = call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.st = call ptr @NameListToString(ptr noundef %1) #8
  %i.su = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef %i.st) #8 ; 0 uses
  %i.sv = call i32 @parser_errposition(ptr noundef %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 879, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.dk:                                            ; preds = %bb.di
  %.not543 = icmp eq ptr %i.ad, null
  br i1 %.not543, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.sx = call i32 @errcode(i32 noundef 1088) #8  ; 0 uses
  %i.sy = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.45) #8 ; 0 uses
  %i.sz = call i32 @parser_errposition(ptr noundef %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 888, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.dm:                                            ; preds = %bb.dk
  %i.ta = icmp eq ptr %.0485, null
  %or.cond57.not = select i1 %i.sf, i1 true, i1 %i.ta
  br i1 %or.cond57.not, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.tb = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.tc = call i32 @errcode(i32 noundef 1088) #8  ; 0 uses
  %i.td = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #8 ; 0 uses
  %i.te = call i32 @parser_errposition(ptr noundef %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 897, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8
  %.not = icmp eq ptr %i.tg, %3
  br i1 %.not, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.th = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ti = call i32 @errcode(i32 noundef 1088) #8  ; 0 uses
  %i.tj = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.47) #8 ; 0 uses
  %i.tk = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.48) #8 ; 0 uses
  %i.tl = load ptr, ptr %i.tf, align 8
  %i.tm = call i32 @exprLocation(ptr noundef %i.tl) #8
  %i.tn = call i32 @parser_errposition(ptr noundef nonnull %0, i32 noundef %i.tm) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 908, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

bb.dq:                                            ; preds = %bb.do
  br i1 %i.qf, label %bb.dr, label %.thread

bb.dr:                                            ; preds = %bb.dq
  %i.to = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.tp = call i32 @errcode(i32 noundef 50724996) #8 ; 0 uses
  %i.tq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.49) #8 ; 0 uses
  %i.tr = call i32 @parser_errposition(ptr noundef nonnull %0, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 914, ptr noundef nonnull @__func__.ParseFuncOrColumn) #8
  unreachable

.thread:                                          ; preds = %bb.dq
  call void @transformWindowFuncCall(ptr noundef nonnull %0, ptr noundef nonnull %i.ry, ptr noundef %i.ac) #8
  br label %bb.du

bb.ds:                                            ; preds = %bb.df, %bb.cx
  %i.ts = phi i8 [ %i.qe, %bb.cx ], [ %.pre673, %bb.df ]
  %.0475 = phi ptr [ %i.qg, %bb.cx ], [ %i.qs, %bb.df ] ; 3 uses
  %i.tt = trunc nuw i8 %i.ts to i1
  br i1 %i.tt, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.0475, ptr %i.tu, align 8
  br label %bb.du

bb.du:                                            ; preds = %.thread, %bb.ds, %bb.dt, %bb.cd, %bb.cb, %bb.bx, %bb.r, %bb.bv
  %.0 = phi ptr [ null, %bb.cb ], [ %i.lz, %bb.cd ], [ %i.li, %bb.bv ], [ %i.dz, %bb.r ], [ null, %bb.bx ], [ %.0475, %bb.dt ], [ %.0475, %bb.ds ], [ %i.ry, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @transformWhereClause(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg_plural(ptr noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #2

declare i32 @parser_errposition(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare ptr @list_delete_nth_cell(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @exprLocation(ptr noundef) local_unnamed_addr #2

declare i32 @typeOrDomainTypeRelid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ParseComplexProjection(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp eq i32 %i.a, 6
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @GetNSItemByVar(ptr noundef %0, ptr noundef nonnull %2) #8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call ptr @scanNSItemForColumn(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.h, ptr noundef %1, i32 noundef %3) #8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 2249
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @expandRecordVariable(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.d
  %i.n = tail call ptr @get_expr_result_tupdesc(ptr noundef nonnull %2, i1 noundef zeroext true) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.036 = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ] ; 3 uses
  %.not = icmp eq ptr %.036, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.o = load i32, ptr %.036, align 8             ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr i8, ptr %.036, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.u = getelementptr inbounds nuw [100 x i8], ptr %i.t, i64 %indvars.iv ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.v) #10
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 91
  %i.z = load i8, ptr %i.y, align 1, !range !4, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call noundef ptr @palloc0(i64 noundef 32) #8 ; 7 uses
  store i32 25, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %2, ptr %i.ac, align 8
  %i.ad = trunc i64 %indvars.iv to i16
end_hunk_0
