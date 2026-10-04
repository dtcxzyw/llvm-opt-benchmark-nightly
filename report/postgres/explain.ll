Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/explain?download=true
inline.NumInlined: 187
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ExplainNode:bb.a
  %i.dc = load ptr, ptr @explain_get_index_name_hook, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dc, null
  br i1 %.not.i, label %.thread.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.dd = tail call ptr %i.dc(i32 noundef %i.db) #6, !inline_history !1 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.thread.i, label %explain_get_index_name.exit

.thread.i:                                        ; preds = %bb.co, %bb.cn
  %i.df = tail call ptr @get_rel_name(i32 noundef %i.db) #6 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.cp, label %explain_get_index_name.exit

bb.cp:                                            ; preds = %.thread.i
  %i.dh = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.di = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.220, i32 noundef %i.db) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 4241, ptr noundef nonnull @__func__.explain_get_index_name) #6
  unreachable

explain_get_index_name.exit:                      ; preds = %bb.co, %.thread.i
  %.1.i = phi ptr [ %i.df, %.thread.i ], [ %i.dd, %bb.co ] ; 2 uses
  %i.dj = load i32, ptr %i.bi, align 8
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %explain_get_index_name.exit
  %i.dl = load ptr, ptr %4, align 8
  %i.dm = tail call ptr @quote_identifier(ptr noundef nonnull %.1.i) #6
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.dl, ptr noundef nonnull @.str.57, ptr noundef %i.dm) #6
  br label %bb.dk

bb.cr:                                            ; preds = %explain_get_index_name.exit
  tail call void @ExplainPropertyText(ptr noundef nonnull @.str.144, ptr noundef nonnull %.1.i, ptr noundef nonnull %4) #6
  br label %bb.dk

bb.cs:                                            ; preds = %bb.ch
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.do = load i32, ptr %i.dn, align 8
  tail call fastcc void @ExplainTargetRel(ptr noundef nonnull readonly %i.n, i32 noundef %i.do, ptr noundef nonnull %4)
  br label %bb.dk

bb.ct:                                            ; preds = %bb.ch, %bb.ch, %bb.ch
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.dq = load i32, ptr %i.dp, align 8            ; 2 uses
  switch i32 %i.dq, label %bb.da [
    i32 0, label %.thread
    i32 1, label %bb.db
    i32 2, label %bb.cu
    i32 3, label %bb.cv
    i32 4, label %bb.cw
    i32 5, label %bb.cx
    i32 6, label %bb.cy
    i32 7, label %bb.cz
  ]

bb.cu:                                            ; preds = %bb.ct
  br label %bb.db

bb.cv:                                            ; preds = %bb.ct
  br label %bb.db

bb.cw:                                            ; preds = %bb.ct
  br label %bb.db

bb.cx:                                            ; preds = %bb.ct
  br label %bb.db

bb.cy:                                            ; preds = %bb.ct
  br label %bb.db

bb.cz:                                            ; preds = %bb.ct
  br label %bb.db

bb.da:                                            ; preds = %bb.ct
  br label %bb.db

bb.db:                                            ; preds = %bb.ct, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %.0691 = phi ptr [ @.str.71, %bb.da ], [ @.str.152, %bb.cz ], [ @.str.151, %bb.cy ], [ @.str.147, %bb.cu ], [ @.str.148, %bb.cv ], [ @.str.149, %bb.cw ], [ @.str.150, %bb.cx ], [ @.str.146, %bb.ct ] ; 2 uses
  %i.dr = load i32, ptr %i.bi, align 8
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.dc, label %bb.df

.thread:                                          ; preds = %bb.ct
  %i.dt = load i32, ptr %i.bi, align 8
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.thread1063, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %.not726 = icmp eq i32 %i.dq, 0
  br i1 %.not726, label %.thread1063, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.dv = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.dv, ptr noundef nonnull @.str.153, ptr noundef nonnull %.0691) #6
  br label %bb.dk

.thread1063:                                      ; preds = %.thread, %bb.dc
  %i.dw = icmp eq i32 %i.cj, 374
  br i1 %i.dw, label %bb.dk, label %bb.de

bb.de:                                            ; preds = %.thread1063
  %i.dx = load ptr, ptr %4, align 8
  tail call void @appendStringInfoString(ptr noundef %i.dx, ptr noundef nonnull @.str.154) #6
  br label %bb.dk

bb.df:                                            ; preds = %.thread, %bb.db
  %.06911062 = phi ptr [ @.str.145, %.thread ], [ %.0691, %bb.db ]
  tail call void @ExplainPropertyText(ptr noundef nonnull @.str.155, ptr noundef nonnull %.06911062, ptr noundef nonnull %4) #6
  br label %bb.dk

bb.dg:                                            ; preds = %bb.ch
  %i.dy = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.dz = load i32, ptr %i.dy, align 8            ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 4
  br i1 %i.ea, label %switch.lookup1488, label %bb.dh

switch.lookup1488:                                ; preds = %bb.dg
  %i.eb = zext nneg i32 %i.dz to i64
  %switch.gep1489 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ExplainNode.20, i64 %i.eb
  %switch.load1490 = load ptr, ptr %switch.gep1489, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %switch.lookup1488
  %.0690 = phi ptr [ %switch.load1490, %switch.lookup1488 ], [ @.str.71, %bb.dg ] ; 2 uses
  %i.ec = load i32, ptr %i.bi, align 8
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ee = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.ee, ptr noundef nonnull @.str.160, ptr noundef nonnull %.0690) #6
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  tail call void @ExplainPropertyText(ptr noundef nonnull @.str.161, ptr noundef nonnull %.0690, ptr noundef nonnull %4) #6
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj, %bb.df, %.thread1063, %bb.de, %bb.dd, %bb.cq, %bb.cr, %bb.ch, %bb.cj, %bb.ck, %bb.cs, %bb.cm, %bb.cl, %bb.ci
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 4 uses
  %i.eg = load i8, ptr %i.ef, align 2, !range !7, !noundef !8
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.ei = load i32, ptr %i.bi, align 8
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.ej, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.el = load ptr, ptr %4, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.en = load double, ptr %i.em, align 8
  %i.eo = load double, ptr %i.ek, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.eq = load double, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.es = load i32, ptr %i.er, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.el, ptr noundef nonnull @.str.162, double noundef %i.en, double noundef %i.eo, double noundef %i.eq, i32 noundef %i.es) #6
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.eu = load double, ptr %i.et, align 8
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.163, ptr noundef null, double noundef %i.eu, i32 noundef 2, ptr noundef nonnull %4) #6
  %i.ev = load double, ptr %i.ek, align 8
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.164, ptr noundef null, double noundef %i.ev, i32 noundef 2, ptr noundef nonnull %4) #6
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ex = load double, ptr %i.ew, align 8
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.165, ptr noundef null, double noundef %i.ex, i32 noundef 0, ptr noundef nonnull %4) #6
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ez = load i32, ptr %i.ey, align 8
  %i.fa = sext i32 %i.ez to i64
  tail call void @ExplainPropertyInteger(ptr noundef nonnull @.str.166, ptr noundef null, i64 noundef %i.fa, ptr noundef nonnull %4) #6
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn, %bb.dk
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not728 = icmp eq ptr %i.fc, null
  br i1 %.not728, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @InstrEndLoop(ptr noundef nonnull %i.fc) #6
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 23 uses
  %i.fe = load i8, ptr %i.fd, align 1, !range !7, !noundef !8
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.dr, label %bb.ek

bb.dr:                                            ; preds = %bb.dq
  %i.fg = load ptr, ptr %i.fb, align 8            ; 6 uses
  %.not729 = icmp eq ptr %i.fg, null
  br i1 %.not729, label %bb.ef, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 416
  %i.fi = load double, ptr %i.fh, align 8         ; 5 uses
  %i.fj = fcmp ogt double %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.dt, label %bb.ef

bb.dt:                                            ; preds = %bb.ds
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 392
  %i.fl = load i64, ptr %i.fk, align 8            ; 5 uses
  %i.fm = load i64, ptr @ticks_per_ns_scaled, align 8 ; 5 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %pg_ticks_to_ns.exit.thread, label %bb.du

pg_ticks_to_ns.exit.thread:                       ; preds = %bb.dt
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 184
  %i.fp = load i64, ptr %i.fo, align 8
  br label %pg_ticks_to_ns.exit789

bb.du:                                            ; preds = %bb.dt
  %i.fq = load i64, ptr @max_ticks_no_overflow, align 8 ; 2 uses
  %i.fr = icmp sgt i64 %i.fl, %i.fq
  br i1 %i.fr, label %bb.dv, label %bb.dw, !prof !11

bb.dv:                                            ; preds = %bb.du
  %i.fs = ashr i64 %i.fl, 14
  %i.ft = mul i64 %i.fm, %i.fs
  %i.fu = and i64 %i.fl, 16383
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.011.i = phi i64 [ %i.fu, %bb.dv ], [ %i.fl, %bb.du ]
  %.010.i = phi i64 [ %i.ft, %bb.dv ], [ 0, %bb.du ]
  %i.fv = mul i64 %.011.i, %i.fm
  %i.fw = lshr i64 %i.fv, 14
  %i.fx = add i64 %i.fw, %.010.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 184
  %i.fz = load i64, ptr %i.fy, align 8            ; 4 uses
  %i.ga = icmp sgt i64 %i.fz, %i.fq
  br i1 %i.ga, label %bb.dx, label %bb.dy, !prof !11

bb.dx:                                            ; preds = %bb.dw
  %i.gb = ashr i64 %i.fz, 14
  %i.gc = mul i64 %i.gb, %i.fm
  %i.gd = and i64 %i.fz, 16383
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.011.i786 = phi i64 [ %i.gd, %bb.dx ], [ %i.fz, %bb.dw ]
  %.010.i787 = phi i64 [ %i.gc, %bb.dx ], [ 0, %bb.dw ]
  %i.ge = mul i64 %.011.i786, %i.fm
  %i.gf = lshr i64 %i.ge, 14
  %i.gg = add i64 %i.gf, %.010.i787
  br label %pg_ticks_to_ns.exit789

pg_ticks_to_ns.exit789:                           ; preds = %pg_ticks_to_ns.exit.thread, %bb.dy
  %.pn.in.in = phi i64 [ %i.fx, %bb.dy ], [ %i.fl, %pg_ticks_to_ns.exit.thread ]
  %.0.i788 = phi i64 [ %i.gg, %bb.dy ], [ %i.fp, %pg_ticks_to_ns.exit.thread ]
  %.pn.in = sitofp i64 %.pn.in.in to double
  %i.gh = sitofp i64 %.0.i788 to double
  %i.gi = insertelement <2 x double> poison, double %.pn.in, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gh, i64 1
  %i.gk = fdiv <2 x double> %i.gj, splat (double 1.000000e+06)
  %9 = insertelement <2 x double> poison, double %i.fi, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fdiv <2 x double> %i.gk, %10              ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fg, i64 400
  %i.gm = load double, ptr %i.gl, align 8
  %i.gn = fdiv double %i.gm, %i.fi                ; 2 uses
  %i.go = load i32, ptr %i.bi, align 8
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %pg_ticks_to_ns.exit789
  %i.gq = load ptr, ptr %4, align 8
  tail call void @appendStringInfoString(ptr noundef %i.gq, ptr noundef nonnull @.str.167) #6
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.gs = load i8, ptr %i.gr, align 1, !range !7, !noundef !8
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.gu = load ptr, ptr %4, align 8
  %12 = extractelement <2 x double> %11, i64 0
  %13 = extractelement <2 x double> %11, i64 1
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.gu, ptr noundef nonnull @.str.168, double noundef %12, double noundef %13) #6
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.gv = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.gv, ptr noundef nonnull @.str.169, double noundef %i.gn, double noundef %i.fi) #6
  br label %bb.ek

bb.ec:                                            ; preds = %pg_ticks_to_ns.exit789
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.gx = load i8, ptr %i.gw, align 1, !range !7, !noundef !8
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %14 = extractelement <2 x double> %11, i64 0
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.18, double noundef %14, i32 noundef 3, ptr noundef nonnull %4) #6
  %15 = extractelement <2 x double> %11, i64 1
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.18, double noundef %15, i32 noundef 3, ptr noundef nonnull %4) #6
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.172, ptr noundef null, double noundef %i.gn, i32 noundef 2, ptr noundef nonnull %4) #6
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.173, ptr noundef null, double noundef %i.fi, i32 noundef 0, ptr noundef nonnull %4) #6
  br label %bb.ek

bb.ef:                                            ; preds = %bb.ds, %bb.dr
  %i.gz = load i32, ptr %i.bi, align 8
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.hb = load ptr, ptr %4, align 8
  tail call void @appendStringInfoString(ptr noundef %i.hb, ptr noundef nonnull @.str.174) #6
  br label %bb.ek

bb.eh:                                            ; preds = %bb.ef
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.hd = load i8, ptr %i.hc, align 1, !range !7, !noundef !8
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.18, double noundef 0.000000e+00, i32 noundef 3, ptr noundef nonnull %4) #6
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.18, double noundef 0.000000e+00, i32 noundef 3, ptr noundef nonnull %4) #6
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.172, ptr noundef null, double noundef 0.000000e+00, i32 noundef 0, ptr noundef nonnull %4) #6
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.173, ptr noundef null, double noundef 0.000000e+00, i32 noundef 0, ptr noundef nonnull %4) #6
  br label %bb.ek

bb.ek:                                            ; preds = %bb.dq, %bb.eb, %bb.ee, %bb.ej, %bb.eg
  %i.hf = load i32, ptr %i.bi, align 8
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.hh = load ptr, ptr %4, align 8
  tail call void @appendStringInfoChar(ptr noundef %i.hh, i8 noundef signext 10) #6
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.hi = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.hj = load i32, ptr %i.hi, align 4            ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %plan_is_disabled.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.hl = load i32, ptr %i.n, align 4
  switch i32 %i.hl, label %bb.ev [
    i32 352, label %bb.eo
    i32 353, label %bb.eq
    i32 365, label %bb.es
    i32 373, label %bb.et
  ]

bb.eo:                                            ; preds = %bb.en
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.hn = load ptr, ptr %i.hm, align 8            ; 3 uses
  %.not63.i = icmp eq ptr %i.hn, null
  br i1 %.not63.i, label %.critedge.i, label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %bb.eo
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hp = load i32, ptr %i.ho, align 4            ; 3 uses
  %i.hq = icmp sgt i32 %i.hp, 0
  br i1 %i.hq, label %.lr.ph101.i, label %.critedge.i

.lr.ph101.i:                                      ; preds = %.lr.ph93.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8            ; 5 uses
  %wide.trip.count116.i = zext nneg i32 %i.hp to i64 ; 2 uses
  %xtraiter1561 = and i64 %wide.trip.count116.i, 3 ; 3 uses
  %i.ht = icmp ult i32 %i.hp, 4
  br i1 %i.ht, label %.epil.preheader1560, label %.lr.ph101.i.new

.lr.ph101.i.new:                                  ; preds = %.lr.ph101.i
  %unroll_iter1566 = and i64 %wide.trip.count116.i, 2147483644
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %.lr.ph101.i.new
  %indvars.iv113.i = phi i64 [ 0, %.lr.ph101.i.new ], [ %indvars.iv.next114.i.3, %bb.ep ] ; 5 uses
  %.0499299.i = phi i32 [ 0, %.lr.ph101.i.new ], [ %i.iq, %bb.ep ]
  %niter1567 = phi i64 [ 0, %.lr.ph101.i.new ], [ %niter1567.next.3, %bb.ep ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv113.i
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = add i32 %i.hx, %.0499299.i
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv113.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = add i32 %i.id, %i.hy
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv113.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = add i32 %i.ij, %i.ie
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv113.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = add i32 %i.ip, %i.ik                    ; 3 uses
  %indvars.iv.next114.i.3 = add nuw nsw i64 %indvars.iv113.i, 4 ; 2 uses
  %niter1567.next.3 = add i64 %niter1567, 4       ; 2 uses
  %niter1567.ncmp.3 = icmp eq i64 %niter1567.next.3, %unroll_iter1566
  br i1 %niter1567.ncmp.3, label %.critedge.i.loopexit.unr-lcssa, label %bb.ep

bb.eq:                                            ; preds = %bb.en
  %i.ir = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.is = load ptr, ptr %i.ir, align 8            ; 3 uses
  %.not61.i = icmp eq ptr %i.is, null
  br i1 %.not61.i, label %.critedge.i, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %bb.eq
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iu = load i32, ptr %i.it, align 4            ; 3 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph89.i, label %.critedge.i

.lr.ph89.i:                                       ; preds = %.lr.ph81.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8            ; 5 uses
  %wide.trip.count111.i = zext nneg i32 %i.iu to i64 ; 2 uses
  %xtraiter1553 = and i64 %wide.trip.count111.i, 3 ; 3 uses
  %i.iy = icmp ult i32 %i.iu, 4
  br i1 %i.iy, label %.epil.preheader1552, label %.lr.ph89.i.new

.lr.ph89.i.new:                                   ; preds = %.lr.ph89.i
  %unroll_iter1558 = and i64 %wide.trip.count111.i, 2147483644
  br label %bb.er

bb.er:                                            ; preds = %bb.er, %.lr.ph89.i.new
  %indvars.iv108.i = phi i64 [ 0, %.lr.ph89.i.new ], [ %indvars.iv.next109.i.3, %bb.er ] ; 5 uses
  %.18087.i = phi i32 [ 0, %.lr.ph89.i.new ], [ %i.jv, %bb.er ]
  %niter1559 = phi i64 [ 0, %.lr.ph89.i.new ], [ %niter1559.next.3, %bb.er ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv108.i
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = add i32 %i.jc, %.18087.i
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv108.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = add i32 %i.ji, %i.jd
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv108.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = add i32 %i.jo, %i.jj
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv108.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = add i32 %i.ju, %i.jp                    ; 3 uses
  %indvars.iv.next109.i.3 = add nuw nsw i64 %indvars.iv108.i, 4 ; 2 uses
  %niter1559.next.3 = add i64 %niter1559, 4       ; 2 uses
  %niter1559.ncmp.3 = icmp eq i64 %niter1559.next.3, %unroll_iter1558
  br i1 %niter1559.ncmp.3, label %.critedge.i.loopexit1546.unr-lcssa, label %bb.er

bb.es:                                            ; preds = %bb.en
  %i.jw = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.jz = load i32, ptr %i.jy, align 4
  br label %.critedge.i

bb.et:                                            ; preds = %bb.en
  %i.ka = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.kb = load ptr, ptr %i.ka, align 8            ; 3 uses
  %.not59.i = icmp eq ptr %i.kb, null
  br i1 %.not59.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.et
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kd = load i32, ptr %i.kc, align 4            ; 3 uses
  %i.ke = icmp sgt i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph78.i, label %.critedge.i

.lr.ph78.i:                                       ; preds = %.lr.ph.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8            ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.kd to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.kh = icmp ult i32 %i.kd, 4
  br i1 %i.kh, label %.epil.preheader, label %.lr.ph78.i.new

.lr.ph78.i.new:                                   ; preds = %.lr.ph78.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %.lr.ph78.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph78.i.new ], [ %indvars.iv.next.i.3, %bb.eu ] ; 5 uses
  %.27177.i = phi i32 [ 0, %.lr.ph78.i.new ], [ %i.le, %bb.eu ]
  %niter = phi i64 [ 0, %.lr.ph78.i.new ], [ %niter.next.3, %bb.eu ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = add i32 %i.kl, %.27177.i
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = add i32 %i.kr, %i.km
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = add i32 %i.kx, %i.ks
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = load i32, ptr %i.lc, align 4
  %i.le = add i32 %i.ld, %i.ky                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.i.loopexit1548.unr-lcssa, label %bb.eu

bb.ev:                                            ; preds = %bb.en
  %i.lf = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  %.not.i791 = icmp eq ptr %i.lg, null
  br i1 %.not.i791, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load i32, ptr %i.lh, align 4
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.3.i = phi i32 [ %i.li, %bb.ew ], [ 0, %bb.ev ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.lk = load ptr, ptr %i.lj, align 8            ; 2 uses
  %.not58.i = icmp eq ptr %i.lk, null
  br i1 %.not58.i, label %.critedge.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = add i32 %i.lm, %.3.i
  br label %.critedge.i

.critedge.i.loopexit.unr-lcssa:                   ; preds = %bb.ep
  %lcmp.mod1563.not = icmp eq i64 %xtraiter1561, 0
  br i1 %lcmp.mod1563.not, label %.critedge.i, label %.epil.preheader1560

.epil.preheader1560:                              ; preds = %.critedge.i.loopexit.unr-lcssa, %.lr.ph101.i
  %indvars.iv113.i.epil.init = phi i64 [ 0, %.lr.ph101.i ], [ %indvars.iv.next114.i.3, %.critedge.i.loopexit.unr-lcssa ]
  %.0499299.i.epil.init = phi i32 [ 0, %.lr.ph101.i ], [ %i.iq, %.critedge.i.loopexit.unr-lcssa ]
  %lcmp.mod1565 = icmp ne i64 %xtraiter1561, 0
  tail call void @llvm.assume(i1 %lcmp.mod1565)
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ez, %.epil.preheader1560
  %indvars.iv113.i.epil = phi i64 [ %indvars.iv113.i.epil.init, %.epil.preheader1560 ], [ %indvars.iv.next114.i.epil, %bb.ez ] ; 2 uses
  %.0499299.i.epil = phi i32 [ %.0499299.i.epil.init, %.epil.preheader1560 ], [ %i.ls, %bb.ez ]
  %epil.iter1562 = phi i64 [ 0, %.epil.preheader1560 ], [ %epil.iter1562.next, %bb.ez ]
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv113.i.epil
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load i32, ptr %i.lq, align 4
  %i.ls = add i32 %i.lr, %.0499299.i.epil         ; 2 uses
  %indvars.iv.next114.i.epil = add nuw nsw i64 %indvars.iv113.i.epil, 1
  %epil.iter1562.next = add i64 %epil.iter1562, 1 ; 2 uses
  %epil.iter1562.cmp.not = icmp eq i64 %epil.iter1562.next, %xtraiter1561
  br i1 %epil.iter1562.cmp.not, label %.critedge.i, label %bb.ez, !llvm.loop !16

.critedge.i.loopexit1546.unr-lcssa:               ; preds = %bb.er
  %lcmp.mod1555.not = icmp eq i64 %xtraiter1553, 0
  br i1 %lcmp.mod1555.not, label %.critedge.i, label %.epil.preheader1552

.epil.preheader1552:                              ; preds = %.critedge.i.loopexit1546.unr-lcssa, %.lr.ph89.i
  %indvars.iv108.i.epil.init = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next109.i.3, %.critedge.i.loopexit1546.unr-lcssa ]
  %.18087.i.epil.init = phi i32 [ 0, %.lr.ph89.i ], [ %i.jv, %.critedge.i.loopexit1546.unr-lcssa ]
  %lcmp.mod1557 = icmp ne i64 %xtraiter1553, 0
  tail call void @llvm.assume(i1 %lcmp.mod1557)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fa, %.epil.preheader1552
  %indvars.iv108.i.epil = phi i64 [ %indvars.iv108.i.epil.init, %.epil.preheader1552 ], [ %indvars.iv.next109.i.epil, %bb.fa ] ; 2 uses
  %.18087.i.epil = phi i32 [ %.18087.i.epil.init, %.epil.preheader1552 ], [ %i.lx, %bb.fa ]
  %epil.iter1554 = phi i64 [ 0, %.epil.preheader1552 ], [ %epil.iter1554.next, %bb.fa ]
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv108.i.epil
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = load i32, ptr %i.lv, align 4
  %i.lx = add i32 %i.lw, %.18087.i.epil           ; 2 uses
  %indvars.iv.next109.i.epil = add nuw nsw i64 %indvars.iv108.i.epil, 1
  %epil.iter1554.next = add i64 %epil.iter1554, 1 ; 2 uses
  %epil.iter1554.cmp.not = icmp eq i64 %epil.iter1554.next, %xtraiter1553
  br i1 %epil.iter1554.cmp.not, label %.critedge.i, label %bb.fa, !llvm.loop !17

.critedge.i.loopexit1548.unr-lcssa:               ; preds = %bb.eu
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.i.loopexit1548.unr-lcssa, %.lr.ph78.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph78.i ], [ %indvars.iv.next.i.3, %.critedge.i.loopexit1548.unr-lcssa ]
  %.27177.i.epil.init = phi i32 [ 0, %.lr.ph78.i ], [ %i.le, %.critedge.i.loopexit1548.unr-lcssa ]
  %lcmp.mod1551 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1551)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fb, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.fb ] ; 2 uses
  %.27177.i.epil = phi i32 [ %.27177.i.epil.init, %.epil.preheader ], [ %i.mc, %bb.fb ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.fb ]
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i.epil
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = add i32 %i.mb, %.27177.i.epil           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.i, label %bb.fb, !llvm.loop !18

.critedge.i:                                      ; preds = %.critedge.i.loopexit1548.unr-lcssa, %bb.fb, %.critedge.i.loopexit1546.unr-lcssa, %bb.fa, %.critedge.i.loopexit.unr-lcssa, %bb.ez, %bb.ey, %bb.ex, %.lr.ph.i, %bb.et, %bb.es, %.lr.ph81.i, %bb.eq, %.lr.ph93.i, %bb.eo
  %.4.i = phi i32 [ %.3.i, %bb.ex ], [ %i.ls, %bb.ez ], [ %i.jz, %bb.es ], [ %i.lx, %bb.fa ], [ %i.ln, %bb.ey ], [ 0, %bb.eo ], [ 0, %.lr.ph93.i ], [ 0, %bb.eq ], [ 0, %.lr.ph81.i ], [ 0, %bb.et ], [ 0, %.lr.ph.i ], [ %i.iq, %.critedge.i.loopexit.unr-lcssa ], [ %i.jv, %.critedge.i.loopexit1546.unr-lcssa ], [ %i.le, %.critedge.i.loopexit1548.unr-lcssa ], [ %i.mc, %bb.fb ]
  %i.md = icmp sgt i32 %i.hj, %.4.i
  br label %plan_is_disabled.exit

plan_is_disabled.exit:                            ; preds = %bb.em, %.critedge.i
  %.0.i790 = phi i1 [ false, %bb.em ], [ %i.md, %.critedge.i ] ; 2 uses
  %i.me = load i32, ptr %i.bi, align 8
  %i.mf = icmp ne i32 %i.me, 0
  %or.cond = select i1 %i.mf, i1 true, i1 %.0.i790
  br i1 %or.cond, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %plan_is_disabled.exit
  tail call void @ExplainPropertyBool(ptr noundef nonnull @.str.175, i1 noundef zeroext %.0.i790, ptr noundef nonnull %4) #6
  br label %bb.fd

bb.fd:                                            ; preds = %plan_is_disabled.exit, %bb.fc
  %i.mg = load ptr, ptr %i.o, align 8
  %.not730 = icmp eq ptr %i.mg, null
  br i1 %.not730, label %.loopexit1088, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mi = load i8, ptr %i.mh, align 8, !range !7, !noundef !8
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.ff, label %.loopexit1088

bb.ff:                                            ; preds = %bb.fe
  %i.mk = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.ml = load i32, ptr %i.mk, align 8            ; 2 uses
  %i.mm = icmp sgt i32 %i.ml, 0
  br i1 %i.mm, label %.lr.ph, label %.loopexit1088

.lr.ph:                                           ; preds = %bb.ff
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  br label %bb.fg

bb.fg:                                            ; preds = %.lr.ph, %bb.fv
  %i.mp = phi i32 [ %i.ml, %.lr.ph ], [ %i.pl, %bb.fv ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fv ] ; 4 uses
  %i.mq = getelementptr inbounds nuw [440 x i8], ptr %i.mn, i64 %indvars.iv ; 5 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 416
  %i.ms = load double, ptr %i.mr, align 8         ; 5 uses
  %i.mt = fcmp ugt double %i.ms, 0.000000e+00
  br i1 %i.mt, label %bb.fh, label %bb.fv

bb.fh:                                            ; preds = %bb.fg
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 392
  %i.mv = load i64, ptr %i.mu, align 8            ; 5 uses
  %i.mw = load i64, ptr @ticks_per_ns_scaled, align 8 ; 5 uses
  %i.mx = icmp eq i64 %i.mw, 0
  br i1 %i.mx, label %pg_ticks_to_ns.exit795.thread, label %bb.fi

pg_ticks_to_ns.exit795.thread:                    ; preds = %bb.fh
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 184
  %i.mz = load i64, ptr %i.my, align 8
  br label %pg_ticks_to_ns.exit799

bb.fi:                                            ; preds = %bb.fh
  %i.na = load i64, ptr @max_ticks_no_overflow, align 8 ; 2 uses
  %i.nb = icmp sgt i64 %i.mv, %i.na
  br i1 %i.nb, label %bb.fj, label %bb.fk, !prof !11

bb.fj:                                            ; preds = %bb.fi
  %i.nc = ashr i64 %i.mv, 14
  %i.nd = mul i64 %i.mw, %i.nc
  %i.ne = and i64 %i.mv, 16383
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.011.i792 = phi i64 [ %i.ne, %bb.fj ], [ %i.mv, %bb.fi ]
  %.010.i793 = phi i64 [ %i.nd, %bb.fj ], [ 0, %bb.fi ]
  %i.nf = mul i64 %.011.i792, %i.mw
  %i.ng = lshr i64 %i.nf, 14
  %i.nh = add i64 %i.ng, %.010.i793
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mq, i64 184
  %i.nj = load i64, ptr %i.ni, align 8            ; 4 uses
  %i.nk = icmp sgt i64 %i.nj, %i.na
  br i1 %i.nk, label %bb.fl, label %bb.fm, !prof !11

bb.fl:                                            ; preds = %bb.fk
  %i.nl = ashr i64 %i.nj, 14
  %i.nm = mul i64 %i.nl, %i.mw
  %i.nn = and i64 %i.nj, 16383
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.011.i796 = phi i64 [ %i.nn, %bb.fl ], [ %i.nj, %bb.fk ]
  %.010.i797 = phi i64 [ %i.nm, %bb.fl ], [ 0, %bb.fk ]
  %i.no = mul i64 %.011.i796, %i.mw
  %i.np = lshr i64 %i.no, 14
  %i.nq = add i64 %i.np, %.010.i797
  br label %pg_ticks_to_ns.exit799

pg_ticks_to_ns.exit799:                           ; preds = %pg_ticks_to_ns.exit795.thread, %bb.fm
  %.pn1079.in.in = phi i64 [ %i.nh, %bb.fm ], [ %i.mv, %pg_ticks_to_ns.exit795.thread ]
  %.0.i798 = phi i64 [ %i.nq, %bb.fm ], [ %i.mz, %pg_ticks_to_ns.exit795.thread ]
  %.pn1079.in = sitofp i64 %.pn1079.in.in to double
  %i.nr = sitofp i64 %.0.i798 to double
  %i.ns = insertelement <2 x double> poison, double %.pn1079.in, i64 0
  %i.nt = insertelement <2 x double> %i.ns, double %i.nr, i64 1
  %i.nu = fdiv <2 x double> %i.nt, splat (double 1.000000e+06)
  %16 = insertelement <2 x double> poison, double %i.ms, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fdiv <2 x double> %i.nu, %17              ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mq, i64 400
  %i.nw = load double, ptr %i.nv, align 8
  %i.nx = fdiv double %i.nw, %i.ms                ; 2 uses
  %i.ny = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @ExplainOpenWorker(i32 noundef %i.ny, ptr noundef %4)
  %i.nz = load i32, ptr %i.bi, align 8
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %pg_ticks_to_ns.exit799
  tail call void @ExplainIndentText(ptr noundef nonnull %4) #6
  %i.ob = load ptr, ptr %4, align 8
  tail call void @appendStringInfoString(ptr noundef %i.ob, ptr noundef nonnull @.str.176) #6
  %i.oc = load i8, ptr %i.mo, align 1, !range !7, !noundef !8
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.oe = load ptr, ptr %4, align 8
  %19 = extractelement <2 x double> %18, i64 0
  %20 = extractelement <2 x double> %18, i64 1
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.oe, ptr noundef nonnull @.str.168, double noundef %19, double noundef %20) #6
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.of = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %i.of, ptr noundef nonnull @.str.177, double noundef %i.nx, double noundef %i.ms) #6
  br label %bb.ft

bb.fq:                                            ; preds = %pg_ticks_to_ns.exit799
  %i.og = load i8, ptr %i.mo, align 1, !range !7, !noundef !8
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %21 = extractelement <2 x double> %18, i64 0
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.18, double noundef %21, i32 noundef 3, ptr noundef nonnull %4) #6
  %22 = extractelement <2 x double> %18, i64 1
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.18, double noundef %22, i32 noundef 3, ptr noundef nonnull %4) #6
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.172, ptr noundef null, double noundef %i.nx, i32 noundef 2, ptr noundef nonnull %4) #6
  tail call void @ExplainPropertyFloat(ptr noundef nonnull @.str.173, ptr noundef null, double noundef %i.ms, i32 noundef 0, ptr noundef nonnull %4) #6
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fp
  %i.oi = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv
  tail call void @ExplainSaveGroup(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %i.ol) #6
  %i.om = load i32, ptr %i.bi, align 8
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %.preheader.i, label %ExplainCloseWorker.exit

.preheader.i:                                     ; preds = %bb.ft
  %i.oo = load ptr, ptr %4, align 8               ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 8            ; 2 uses
  %i.or = icmp sgt i32 %i.oq, 0
  br i1 %i.or, label %.lr.ph.i801, label %.critedge.i800

.lr.ph.i801:                                      ; preds = %.preheader.i, %bb.fu
  %i.os = phi i32 [ %i.pf, %bb.fu ], [ %i.oq, %.preheader.i ] ; 2 uses
  %i.ot = phi ptr [ %i.pe, %bb.fu ], [ %i.op, %.preheader.i ]
  %i.ou = phi ptr [ %i.pd, %bb.fu ], [ %i.oo, %.preheader.i ]
  %i.ov = load ptr, ptr %i.ou, align 8            ; 2 uses
  %i.ow = zext nneg i32 %i.os to i64
  %i.ox = getelementptr i8, ptr %i.ov, i64 %i.ow
  %i.oy = getelementptr i8, ptr %i.ox, i64 -1
  %i.oz = load i8, ptr %i.oy, align 1
  %.not.i802 = icmp eq i8 %i.oz, 10
  br i1 %.not.i802, label %.critedge.i800, label %bb.fu

bb.fu:                                            ; preds = %.lr.ph.i801
  %i.pa = add nsw i32 %i.os, -1                   ; 2 uses
  store i32 %i.pa, ptr %i.ot, align 8
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.pb
  store i8 0, ptr %i.pc, align 1
  %i.pd = load ptr, ptr %4, align 8               ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 8            ; 2 uses
  %i.pg = icmp sgt i32 %i.pf, 0
  br i1 %i.pg, label %.lr.ph.i801, label %.critedge.i800, !llvm.loop !2

.critedge.i800:                                   ; preds = %bb.fu, %.lr.ph.i801, %.preheader.i
  %i.ph = load i32, ptr %i.q, align 4
  %i.pi = add i32 %i.ph, -1
  store i32 %i.pi, ptr %i.q, align 4
  br label %ExplainCloseWorker.exit

ExplainCloseWorker.exit:                          ; preds = %bb.ft, %.critedge.i800
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  %i.pk = load ptr, ptr %i.pj, align 8
  store ptr %i.pk, ptr %4, align 8
  %.pre = load i32, ptr %i.mk, align 8
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fg, %ExplainCloseWorker.exit
  %i.pl = phi i32 [ %i.mp, %bb.fg ], [ %.pre, %ExplainCloseWorker.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = icmp slt i64 %indvars.iv.next, %i.pm
  br i1 %i.pn, label %bb.fg, label %.loopexit1088, !llvm.loop !19

.loopexit1088:                                    ; preds = %bb.fv, %bb.ff, %bb.fe, %bb.fd
  %i.po = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 46 uses
  %i.pp = load i8, ptr %i.po, align 8, !range !7, !noundef !8
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %bb.fw, label %show_plan_tlist.exit

bb.fw:                                            ; preds = %.loopexit1088
  %.val = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %show_plan_tlist.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.pu = load i32, ptr %.val, align 8
  switch i32 %i.pu, label %bb.fz [
    i32 352, label %show_plan_tlist.exit
    i32 353, label %show_plan_tlist.exit
    i32 354, label %show_plan_tlist.exit
    i32 372, label %bb.fy
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.pv = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.pw = load i32, ptr %i.pv, align 8
  %.not.i803 = icmp eq i32 %i.pw, 1
  br i1 %.not.i803, label %bb.fz, label %show_plan_tlist.exit

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.py = load ptr, ptr %i.px, align 8
  %i.pz = tail call ptr @set_deparse_context_plan(ptr noundef %i.py, ptr noundef nonnull %.val, ptr noundef %1) #6
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.qb = load i32, ptr %i.qa, align 4
  %i.qc = icmp sgt i32 %i.qb, 1
  %i.qd = load ptr, ptr %i.pr, align 8            ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 4 ; 2 uses
  %.not25.i = icmp eq ptr %i.qd, null
  br i1 %.not25.i, label %.critedge.i805, label %.lr.ph.i804

.lr.ph.i804:                                      ; preds = %bb.fz
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qg = load i32, ptr %i.qe, align 4
  %i.qh = icmp sgt i32 %i.qg, 0
  br i1 %i.qh, label %.lr.ph8.i, label %.critedge.i805

.lr.ph8.i:                                        ; preds = %.lr.ph.i804, %.lr.ph8.i
  %indvars.iv.i806 = phi i64 [ %indvars.iv.next.i807, %.lr.ph8.i ], [ 0, %.lr.ph.i804 ] ; 2 uses
  %.02217.i = phi ptr [ %i.qo, %.lr.ph8.i ], [ null, %.lr.ph.i804 ]
  %i.qi = load ptr, ptr %i.qf, align 8
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %indvars.iv.i806
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = tail call ptr @deparse_expression(ptr noundef %i.qm, ptr noundef %i.pz, i1 noundef zeroext %i.qc, i1 noundef zeroext false) #6
  %i.qo = tail call ptr @lappend(ptr noundef %.02217.i, ptr noundef %i.qn) #6 ; 2 uses
  %indvars.iv.next.i807 = add nuw nsw i64 %indvars.iv.i806, 1 ; 2 uses
  %i.qp = load i32, ptr %i.qe, align 4
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next.i807, %i.qq
  br i1 %i.qr, label %.lr.ph8.i, label %.critedge.i805

.critedge.i805:                                   ; preds = %.lr.ph8.i, %.lr.ph.i804, %bb.fz
  %.022.lcssa.i = phi ptr [ null, %bb.fz ], [ null, %.lr.ph.i804 ], [ %i.qo, %.lr.ph8.i ]
  tail call void @ExplainPropertyList(ptr noundef nonnull @.str.224, ptr noundef %.022.lcssa.i, ptr noundef nonnull %4) #6
  br label %show_plan_tlist.exit

show_plan_tlist.exit:                             ; preds = %.critedge.i805, %bb.fy, %bb.fx, %bb.fx, %bb.fx, %bb.fw, %.loopexit1088
  %i.qs = load i32, ptr %i.n, align 4             ; 4 uses
  switch i32 %i.qs, label %thread-pre-split1069 [
    i32 374, label %bb.ga
    i32 376, label %bb.ga
    i32 377, label %bb.ga
  ]

bb.ga:                                            ; preds = %show_plan_tlist.exit, %show_plan_tlist.exit, %show_plan_tlist.exit
  %i.qt = load i32, ptr %i.bi, align 8
  %.not731 = icmp eq i32 %i.qt, 0
  br i1 %.not731, label %bb.gb, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ga
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 108
  %.pre1182 = load i8, ptr %.phi.trans.insert, align 4, !range !7
  %i.qu = trunc nuw i8 %.pre1182 to i1
  br label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.qv = load i8, ptr %i.po, align 8, !range !7, !noundef !8
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.gc, label %thread-pre-split1069

bb.gc:                                            ; preds = %bb.gb
  %i.qx = getelementptr inbounds nuw i8, ptr %i.n, i64 108
  %i.qy = load i8, ptr %i.qx, align 4, !range !7, !noundef !8
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.gd, label %thread-pre-split1069

bb.gd:                                            ; preds = %._crit_edge, %bb.gc
  %i.ra = phi i1 [ %i.qu, %._crit_edge ], [ true, %bb.gc ]
  tail call void @ExplainPropertyBool(ptr noundef nonnull @.str.178, i1 noundef zeroext %i.ra, ptr noundef nonnull %4) #6
  %.pr1070.pre = load i32, ptr %i.n, align 4
  br label %thread-pre-split1069

thread-pre-split1069:                             ; preds = %bb.gb, %bb.gc, %bb.gd, %show_plan_tlist.exit
  %i.rb = phi i32 [ %i.qs, %show_plan_tlist.exit ], [ %.pr1070.pre, %bb.gd ], [ %i.qs, %bb.gc ], [ %i.qs, %bb.gb ]
  switch i32 %i.rb, label %show_indexsearches_info.exit [
    i32 359, label %bb.ge
    i32 360, label %bb.gp
    i32 361, label %bb.hd
    i32 362, label %bb.hi
    i32 358, label %bb.in
    i32 357, label %show_tablesample.exit
    i32 367, label %show_tablesample.exit
    i32 369, label %show_tablesample.exit
    i32 370, label %show_tablesample.exit
    i32 371, label %show_tablesample.exit
    i32 365, label %show_tablesample.exit
    i32 386, label %bb.jh
    i32 387, label %bb.jp
    i32 366, label %bb.ju
    i32 368, label %bb.ka
    i32 363, label %bb.kj
    i32 364, label %bb.kr
    i32 372, label %bb.kz
    i32 373, label %bb.lf
    i32 374, label %bb.lk
    i32 376, label %bb.lr
    i32 377, label %bb.mb
    i32 383, label %bb.ml
    i32 384, label %bb.ob
    i32 382, label %bb.ow
    i32 380, label %bb.pa
end_hunk_0
