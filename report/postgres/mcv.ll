Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/mcv?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mcv_get_match_bitmap:bb.a
  %i.bo = xor i1 %4, %i.bn
  br i1 %i.bo, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.bp = load i8, ptr %i.c, align 1, !range !6, !noundef !7
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.au
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = call i64 @FunctionCall2Coll(ptr noundef nonnull %5, i32 noundef %i.av, i64 noundef %i.bu, i64 noundef %i.bw) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.au
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = call i64 @FunctionCall2Coll(ptr noundef nonnull %5, i32 noundef %i.av, i64 noundef %i.bz, i64 noundef %i.cd) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0237.in.in = phi i64 [ %i.bx, %bb.l ], [ %i.ce, %bb.m ]
  %.0237.in = icmp ne i64 %.0237.in.in, 0         ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.r, i64 %i.aw
  %i.cg = load i8, ptr %i.cf, align 1, !range !6, !noundef !7
  %i.ch = trunc nuw i8 %i.cg to i1                ; 2 uses
  br i1 %4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ci = select i1 %i.ch, i1 true, i1 %.0237.in
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cj = select i1 %i.ch, i1 %.0237.in, i1 false
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.in249 = phi i1 [ %i.ci, %bb.o ], [ %i.cj, %bb.p ]
  %i.ck = getelementptr inbounds i8, ptr %i.r, i64 %i.aw
  %i.cl = zext i1 %.in249 to i8
  store i8 %i.cl, ptr %i.ck, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.q, %bb.i
  %i.cm = add nuw i32 %.023847, 1                 ; 2 uses
  %i.cn = load i32, ptr %i.o, align 8
  %i.co = icmp ult i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.e, label %._crit_edge50, !llvm.loop !45

bb.s:                                             ; preds = %is_opclause.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  %i.cp = getelementptr inbounds nuw i8, ptr %.02393, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = call i32 @get_opcode(i32 noundef %i.cq) #13
  call void @fmgr_info(i32 noundef %i.cr, ptr noundef nonnull %6) #13
  %i.cs = getelementptr inbounds nuw i8, ptr %.02393, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call zeroext i1 @examine_opclause_args(ptr noundef %i.ct, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #13
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.cw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.20) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1733, ptr noundef nonnull @__func__.mcv_get_match_bitmap) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cx = load i8, ptr %i.g, align 1, !range !6, !noundef !7
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.da = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.20) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1737, ptr noundef nonnull @__func__.mcv_get_match_bitmap) #13
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.db = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i8, ptr %i.dc, align 8, !range !6, !noundef !7
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = call ptr @pg_detoast_datum(ptr noundef %i.dh) #13 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  call void @get_typlenbyvalalign(i32 noundef %i.dk, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #13
  %i.dl = load i32, ptr %i.dj, align 4
  %i.dm = load i16, ptr %i.i, align 2
  %i.dn = sext i16 %i.dm to i32
  %i.do = load i8, ptr %i.j, align 1, !range !6, !noundef !7
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = load i8, ptr %i.k, align 1
  call void @deconstruct_array(ptr noundef %i.di, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext %i.dp, i8 noundef signext %i.dq, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.l) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dr = load ptr, ptr %i.e, align 8
  %i.ds = call fastcc i32 @mcv_match_expression(ptr noundef %i.dr, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.h)
  %i.dt = load i32, ptr %i.o, align 8
  %.not59 = icmp eq i32 %i.dt, 0
  br i1 %.not59, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %.02393, i64 20 ; 2 uses
  %i.dv = sext i32 %i.ds to i64                   ; 2 uses
  %i.dw = load i32, ptr %i.h, align 4
  br label %bb.z

._crit_edge44:                                    ; preds = %bb.an, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.loopexit

bb.z:                                             ; preds = %.lr.ph43, %bb.an
  %.023641 = phi i32 [ 0, %.lr.ph43 ], [ %i.gc, %bb.an ] ; 2 uses
  %i.dx = load i8, ptr %i.du, align 4, !range !6, !noundef !7 ; 2 uses
  %i.dy = xor i8 %i.dx, 1                         ; 2 uses
  %i.dz = sext i32 %.023641 to i64                ; 6 uses
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.dv
  %i.ee = load i8, ptr %i.ed, align 1, !range !6, !noundef !7
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr %i.f, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load i8, ptr %i.eh, align 8, !range !6, !noundef !7
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %4, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.el = load i8, ptr %i.ek, align 1, !range !6, !noundef !7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.em = phi i8 [ %i.el, %bb.ac ], [ 0, %bb.ab ]
  %i.en = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  store i8 %i.em, ptr %i.en, align 1
  br label %bb.an

bb.ae:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.ep = load i8, ptr %i.eo, align 1, !range !6, !noundef !7
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = xor i1 %4, %i.eq
  br i1 %i.er, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.es = load i32, ptr %i.l, align 4             ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph36, label %.thread11

.lr.ph36:                                         ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %.pre67 = load ptr, ptr %i.m, align 8
  %.pre69 = load ptr, ptr %i.n, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph36, %bb.am
  %i.ev = phi i32 [ %i.es, %.lr.ph36 ], [ %i.fp, %bb.am ]
  %i.ew = phi i8 [ %i.dx, %.lr.ph36 ], [ %i.fq, %bb.am ] ; 3 uses
  %i.ex = phi ptr [ %.pre69, %.lr.ph36 ], [ %i.fr, %bb.am ] ; 2 uses
  %i.ey = phi ptr [ %.pre67, %.lr.ph36 ], [ %i.fs, %bb.am ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next, %bb.am ] ; 3 uses
  %.023434 = phi i8 [ %i.dy, %.lr.ph36 ], [ %.1, %bb.am ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv
  %i.fc = load i8, ptr %i.fb, align 1, !range !6, !noundef !7
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %7 = and i8 %i.ew, %.023434
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %8 = trunc nuw i8 %i.ew to i1                   ; 2 uses
  %i.fe = trunc nuw i8 %.023434 to i1             ; 2 uses
  br i1 %8, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.fe, label %.thread11, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.fe, label %bb.al, label %.thread11

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi = xor i1 %8, true                     ; 2 uses
  %i.ff = load ptr, ptr %i.eu, align 8
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.dv
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = call i64 @FunctionCall2Coll(ptr noundef nonnull %6, i32 noundef %i.dw, i64 noundef %i.fh, i64 noundef %i.fa) #13
  %i.fj = icmp ne i64 %i.fi, 0                    ; 2 uses
  %i.fk = load i8, ptr %i.du, align 4, !range !6, !noundef !7 ; 2 uses
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = select i1 %.pre-phi, i1 true, i1 %i.fj
  %i.fn = select i1 %.pre-phi, i1 %i.fj, i1 false
  %.in247 = select i1 %i.fl, i1 %i.fm, i1 %i.fn
  %i.fo = zext i1 %.in247 to i8
  %.pre = load ptr, ptr %i.m, align 8
  %.pre68 = load ptr, ptr %i.n, align 8
  %.pre70 = load i32, ptr %i.l, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.al
  %i.fp = phi i32 [ %i.ev, %bb.ah ], [ %.pre70, %bb.al ] ; 2 uses
  %i.fq = phi i8 [ %i.ew, %bb.ah ], [ %i.fk, %bb.al ]
  %i.fr = phi ptr [ %i.ex, %bb.ah ], [ %.pre68, %bb.al ]
  %i.fs = phi ptr [ %i.ey, %bb.ah ], [ %.pre, %bb.al ]
  %.1 = phi i8 [ %7, %bb.ah ], [ %i.fo, %bb.al ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ft = sext i32 %i.fp to i64
  %i.fu = icmp slt i64 %indvars.iv.next, %i.ft
  br i1 %i.fu, label %bb.ag, label %.thread11, !llvm.loop !46

.thread11:                                        ; preds = %bb.am, %bb.ak, %bb.aj, %bb.af
  %.0234.lcssa = phi i8 [ %i.dy, %bb.af ], [ 1, %bb.aj ], [ 0, %bb.ak ], [ %.1, %bb.am ] ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.fw = load i8, ptr %i.fv, align 1, !range !6, !noundef !7 ; 2 uses
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = select i1 %i.fx, i8 1, i8 %.0234.lcssa
  %9 = and i8 %i.fw, %.0234.lcssa
  %.in248 = select i1 %4, i8 %i.fy, i8 %9
  %i.fz = icmp ne i8 %.in248, 0
  %i.ga = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.gb = zext i1 %i.fz to i8
  store i8 %i.gb, ptr %i.ga, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.ae, %.thread11, %bb.ad
  %i.gc = add nuw i32 %.023641, 1                 ; 2 uses
  %i.gd = load i32, ptr %i.o, align 8
  %i.ge = icmp ult i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.z, label %._crit_edge44, !llvm.loop !47

bb.ao:                                            ; preds = %is_opclause.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call fastcc i32 @mcv_match_expression(ptr noundef %i.gg, ptr noundef %1, ptr noundef %2, ptr noundef null)
  %i.gi = load i32, ptr %i.o, align 8
  %.not58 = icmp eq i32 %i.gi, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %.02393, i64 16
  %i.gk = sext i32 %i.gh to i64                   ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph32, %bb.as
  %.023330 = phi i32 [ 0, %.lr.ph32 ], [ %i.he, %bb.as ] ; 2 uses
  %i.gl = sext i32 %.023330 to i64                ; 3 uses
  %i.gm = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gj, align 8
  switch i32 %i.gn, label %bb.as [
    i32 0, label %bb.aq
    i32 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 %i.gk
  %i.gr = load i8, ptr %i.gq, align 1, !range !6, !noundef !7
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gk
  %i.gv = load i8, ptr %i.gu, align 1, !range !6, !noundef !7
  %i.gw = xor i8 %i.gv, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0232 = phi i8 [ 0, %bb.ap ], [ %i.gr, %bb.aq ], [ %i.gw, %bb.ar ] ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.r, i64 %i.gl
  %i.gy = load i8, ptr %i.gx, align 1, !range !6, !noundef !7 ; 2 uses
  %i.gz = or i8 %i.gy, %.0232
  %i.ha = and i8 %i.gy, %.0232
  %.in246 = select i1 %4, i8 %i.gz, i8 %i.ha
  %i.hb = icmp ne i8 %.in246, 0
  %i.hc = getelementptr inbounds i8, ptr %i.r, i64 %i.gl
  %i.hd = zext i1 %i.hb to i8
  store i8 %i.hd, ptr %i.hc, align 1
  %i.he = add nuw i32 %.023330, 1                 ; 2 uses
  %i.hf = load i32, ptr %i.o, align 8
  %i.hg = icmp ult i32 %i.he, %i.hf
  br i1 %i.hg, label %bb.ap, label %.loopexit, !llvm.loop !48

is_orclause.exit:                                 ; preds = %is_opclause.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %.02393, i64 4
  %i.hi = load i32, ptr %i.hh, align 4            ; 3 uses
  %i.hj = icmp ult i32 %i.hi, 2
  br i1 %i.hj, label %is_orclause.exit253, label %is_notclause.exit

is_orclause.exit253:                              ; preds = %is_orclause.exit
  %i.hk = icmp eq i32 %i.hi, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call fastcc ptr @mcv_get_match_bitmap(ptr noundef %i.hm, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %i.hk) ; 2 uses
  %i.ho = load i32, ptr %i.o, align 8
  %.not57 = icmp eq i32 %i.ho, 0
  br i1 %.not57, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %is_orclause.exit253, %bb.av
  %.023127 = phi i32 [ %i.hw, %bb.av ], [ 0, %is_orclause.exit253 ] ; 2 uses
  %i.hp = sext i32 %.023127 to i64                ; 3 uses
  %i.hq = getelementptr inbounds i8, ptr %i.r, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !range !6, !noundef !7
  %i.hs = trunc nuw i8 %i.hr to i1                ; 2 uses
  br i1 %4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph28
  br i1 %i.hs, label %bb.av, label %.sink.split

bb.au:                                            ; preds = %.lr.ph28
  br i1 %i.hs, label %.sink.split, label %bb.av

.sink.split:                                      ; preds = %bb.au, %bb.at
  %i.ht = getelementptr inbounds i8, ptr %i.hn, i64 %i.hp
  %i.hu = load i8, ptr %i.ht, align 1, !range !6, !noundef !7
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.au, %bb.at
  %.shrunk21 = phi i8 [ 0, %bb.au ], [ 1, %bb.at ], [ %i.hu, %.sink.split ]
  %i.hv = getelementptr inbounds i8, ptr %i.r, i64 %i.hp
  store i8 %.shrunk21, ptr %i.hv, align 1
  %i.hw = add nuw i32 %.023127, 1                 ; 2 uses
  %i.hx = load i32, ptr %i.o, align 8
  %i.hy = icmp ult i32 %i.hw, %i.hx
  br i1 %i.hy, label %.lr.ph28, label %._crit_edge29, !llvm.loop !49

._crit_edge29:                                    ; preds = %bb.av, %is_orclause.exit253
  call void @pfree(ptr noundef %i.hn) #13
  br label %.loopexit

is_notclause.exit:                                ; preds = %is_orclause.exit
  %i.hz = icmp eq i32 %i.hi, 2
  br i1 %i.hz, label %bb.aw, label %.thread20

bb.aw:                                            ; preds = %is_notclause.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = call fastcc ptr @mcv_get_match_bitmap(ptr noundef %i.ib, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) ; 2 uses
  %i.id = load i32, ptr %i.o, align 8
  %.not56 = icmp eq i32 %i.id, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.aw, %bb.az
  %.023025 = phi i32 [ %i.im, %bb.az ], [ 0, %bb.aw ] ; 2 uses
  %i.ie = sext i32 %.023025 to i64                ; 3 uses
  %i.if = getelementptr inbounds i8, ptr %i.r, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !range !6, !noundef !7
  %i.ih = trunc nuw i8 %i.ig to i1                ; 2 uses
  br i1 %4, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph26
  br i1 %i.ih, label %bb.az, label %.sink.split88

bb.ay:                                            ; preds = %.lr.ph26
  br i1 %i.ih, label %.sink.split88, label %bb.az

.sink.split88:                                    ; preds = %bb.ay, %bb.ax
  %i.ii = getelementptr inbounds i8, ptr %i.ic, i64 %i.ie
  %i.ij = load i8, ptr %i.ii, align 1, !range !6, !noundef !7
  %i.ik = xor i8 %i.ij, 1
  br label %bb.az

bb.az:                                            ; preds = %.sink.split88, %bb.ay, %bb.ax
  %.shrunk = phi i8 [ 0, %bb.ay ], [ 1, %bb.ax ], [ %i.ik, %.sink.split88 ]
  %i.il = getelementptr inbounds i8, ptr %i.r, i64 %i.ie
  store i8 %.shrunk, ptr %i.il, align 1
  %i.im = add nuw i32 %.023025, 1                 ; 2 uses
  %i.in = load i32, ptr %i.o, align 8
  %i.io = icmp ult i32 %i.im, %i.in
  br i1 %i.io, label %.lr.ph26, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.az, %bb.aw
  call void @pfree(ptr noundef %i.ic) #13
  br label %.loopexit

bb.ba:                                            ; preds = %is_opclause.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.iq = load i16, ptr %i.ip, align 8
  %i.ir = sext i16 %i.iq to i32
  %i.is = call i32 @bms_member_index(ptr noundef %1, i32 noundef %i.ir) #13
  %i.it = load i32, ptr %i.o, align 8
  %.not55 = icmp eq i32 %i.it, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba
  %i.iu = sext i32 %i.is to i64                   ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.bd
  %.022924 = phi i32 [ 0, %.lr.ph ], [ %i.jo, %bb.bd ] ; 2 uses
  %i.iv = sext i32 %.022924 to i64                ; 3 uses
  %i.iw = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 %i.iu
  %i.ja = load i8, ptr %i.iz, align 1, !range !6, !noundef !7
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.iu
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = icmp ne i64 %i.jf, 0
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0228 = phi i1 [ false, %bb.bb ], [ %i.jg, %bb.bc ] ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %i.r, i64 %i.iv
  %i.ji = load i8, ptr %i.jh, align 1, !range !6, !noundef !7
  %i.jj = trunc nuw i8 %i.ji to i1                ; 2 uses
  %i.jk = or i1 %.0228, %i.jj
  %i.jl = and i1 %.0228, %i.jj
  %.in245 = select i1 %4, i1 %i.jk, i1 %i.jl
  %i.jm = getelementptr inbounds i8, ptr %i.r, i64 %i.iv
end_hunk_0
