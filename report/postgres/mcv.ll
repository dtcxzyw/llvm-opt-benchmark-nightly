Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/mcv?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mcv_get_match_bitmap:bb.a
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
  %i.cx = load i8, ptr %i.g, align 1, !range !10, !noundef !11
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
  %i.dd = load i8, ptr %i.dc, align 8, !range !10, !noundef !11
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
  %i.do = load i8, ptr %i.j, align 1, !range !10, !noundef !11
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
  %.023641 = phi i32 [ 0, %.lr.ph43 ], [ %i.gd, %bb.an ] ; 2 uses
  %i.dx = load i8, ptr %i.du, align 4, !range !10, !noundef !11 ; 2 uses
  %i.dy = xor i8 %i.dx, 1                         ; 2 uses
  %i.dz = sext i32 %.023641 to i64                ; 6 uses
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.dv
  %i.ee = load i8, ptr %i.ed, align 1, !range !10, !noundef !11
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr %i.f, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load i8, ptr %i.eh, align 8, !range !10, !noundef !11
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %4, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.el = load i8, ptr %i.ek, align 1, !range !10, !noundef !11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.em = phi i8 [ %i.el, %bb.ac ], [ 0, %bb.ab ]
  %i.en = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  store i8 %i.em, ptr %i.en, align 1
  br label %bb.an

bb.ae:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.ep = load i8, ptr %i.eo, align 1, !range !10, !noundef !11
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
  %i.ev = phi i32 [ %i.es, %.lr.ph36 ], [ %i.fr, %bb.am ]
  %i.ew = phi i8 [ %i.dx, %.lr.ph36 ], [ %i.fs, %bb.am ] ; 2 uses
  %i.ex = phi ptr [ %.pre69, %.lr.ph36 ], [ %i.ft, %bb.am ] ; 2 uses
  %i.ey = phi ptr [ %.pre67, %.lr.ph36 ], [ %i.fu, %bb.am ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next, %bb.am ] ; 3 uses
  %.023434 = phi i8 [ %i.dy, %.lr.ph36 ], [ %.1, %bb.am ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv
  %i.fc = load i8, ptr %i.fb, align 1, !range !10, !noundef !11
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = trunc nuw i8 %i.ew to i1                ; 3 uses
  br i1 %i.fd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ff = select i1 %i.fe, i8 %.023434, i8 0
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.fg = trunc nuw i8 %.023434 to i1             ; 2 uses
  br i1 %i.fe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.fg, label %.thread11, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.fg, label %bb.al, label %.thread11

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi = xor i1 %i.fe, true                  ; 2 uses
  %i.fh = load ptr, ptr %i.eu, align 8
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.dv
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = call i64 @FunctionCall2Coll(ptr noundef nonnull %6, i32 noundef %i.dw, i64 noundef %i.fj, i64 noundef %i.fa) #13
  %i.fl = icmp ne i64 %i.fk, 0                    ; 2 uses
  %i.fm = load i8, ptr %i.du, align 4, !range !10, !noundef !11 ; 2 uses
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = select i1 %.pre-phi, i1 true, i1 %i.fl
  %i.fp = select i1 %.pre-phi, i1 %i.fl, i1 false
  %.in247 = select i1 %i.fn, i1 %i.fo, i1 %i.fp
  %i.fq = zext i1 %.in247 to i8
  %.pre = load ptr, ptr %i.m, align 8
  %.pre68 = load ptr, ptr %i.n, align 8
  %.pre70 = load i32, ptr %i.l, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.al
  %i.fr = phi i32 [ %i.ev, %bb.ah ], [ %.pre70, %bb.al ] ; 2 uses
  %i.fs = phi i8 [ %i.ew, %bb.ah ], [ %i.fm, %bb.al ]
  %i.ft = phi ptr [ %i.ex, %bb.ah ], [ %.pre68, %bb.al ]
  %i.fu = phi ptr [ %i.ey, %bb.ah ], [ %.pre, %bb.al ]
  %.1 = phi i8 [ %i.ff, %bb.ah ], [ %i.fq, %bb.al ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fv = sext i32 %i.fr to i64
  %i.fw = icmp slt i64 %indvars.iv.next, %i.fv
  br i1 %i.fw, label %bb.ag, label %.thread11, !llvm.loop !45

.thread11:                                        ; preds = %bb.am, %bb.ak, %bb.aj, %bb.af
  %.0234.lcssa = phi i8 [ %i.dy, %bb.af ], [ 1, %bb.aj ], [ 0, %bb.ak ], [ %.1, %bb.am ]
  %i.fx = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.fy = load i8, ptr %i.fx, align 1, !range !10, !noundef !11
  %i.fz = trunc nuw i8 %i.fy to i1                ; 2 uses
  %7 = zext nneg i8 %.0234.lcssa to i32           ; 2 uses
  %8 = select i1 %i.fz, i32 1, i32 %7
  %9 = select i1 %i.fz, i32 %7, i32 0
  %10 = select i1 %4, i32 %8, i32 %9
  %i.ga = icmp ne i32 %10, 0
  %i.gb = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.gc = zext i1 %i.ga to i8
  store i8 %i.gc, ptr %i.gb, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.ae, %.thread11, %bb.ad
  %i.gd = add nuw i32 %.023641, 1                 ; 2 uses
  %i.ge = load i32, ptr %i.o, align 8
  %i.gf = icmp ult i32 %i.gd, %i.ge
  br i1 %i.gf, label %bb.z, label %._crit_edge44, !llvm.loop !46

bb.ao:                                            ; preds = %is_opclause.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call fastcc i32 @mcv_match_expression(ptr noundef %i.gh, ptr noundef %1, ptr noundef %2, ptr noundef null)
  %i.gj = load i32, ptr %i.o, align 8
  %.not58 = icmp eq i32 %i.gj, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %.02393, i64 16
  %i.gl = sext i32 %i.gi to i64                   ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph32, %bb.as
  %.023330 = phi i32 [ 0, %.lr.ph32 ], [ %i.hf, %bb.as ] ; 2 uses
  %i.gm = sext i32 %.023330 to i64                ; 3 uses
  %i.gn = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gk, align 8
  switch i32 %i.go, label %bb.as [
    i32 0, label %bb.aq
    i32 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gl
  %i.gs = load i8, ptr %i.gr, align 1, !range !10, !noundef !11
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.gl
  %i.gw = load i8, ptr %i.gv, align 1, !range !10, !noundef !11
  %i.gx = xor i8 %i.gw, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0232 = phi i8 [ 0, %bb.ap ], [ %i.gs, %bb.aq ], [ %i.gx, %bb.ar ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.r, i64 %i.gm
  %i.gz = load i8, ptr %i.gy, align 1, !range !10, !noundef !11 ; 2 uses
  %i.ha = or i8 %i.gz, %.0232
  %i.hb = and i8 %i.gz, %.0232
  %.in246 = select i1 %4, i8 %i.ha, i8 %i.hb
  %i.hc = icmp ne i8 %.in246, 0
  %i.hd = getelementptr inbounds i8, ptr %i.r, i64 %i.gm
  %i.he = zext i1 %i.hc to i8
  store i8 %i.he, ptr %i.hd, align 1
  %i.hf = add nuw i32 %.023330, 1                 ; 2 uses
  %i.hg = load i32, ptr %i.o, align 8
  %i.hh = icmp ult i32 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ap, label %.loopexit, !llvm.loop !47

is_orclause.exit:                                 ; preds = %is_opclause.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %.02393, i64 4
  %i.hj = load i32, ptr %i.hi, align 4            ; 3 uses
  %i.hk = icmp ult i32 %i.hj, 2
  br i1 %i.hk, label %is_orclause.exit252, label %is_notclause.exit

is_orclause.exit252:                              ; preds = %is_orclause.exit
  %i.hl = icmp eq i32 %i.hj, 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = call fastcc ptr @mcv_get_match_bitmap(ptr noundef %i.hn, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %i.hl) ; 2 uses
  %i.hp = load i32, ptr %i.o, align 8
  %.not57 = icmp eq i32 %i.hp, 0
  br i1 %.not57, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %is_orclause.exit252, %bb.av
  %.023127 = phi i32 [ %i.hx, %bb.av ], [ 0, %is_orclause.exit252 ] ; 2 uses
  %i.hq = sext i32 %.023127 to i64                ; 3 uses
  %i.hr = getelementptr inbounds i8, ptr %i.r, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !range !10, !noundef !11
  %i.ht = trunc nuw i8 %i.hs to i1                ; 2 uses
  br i1 %4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph28
  br i1 %i.ht, label %bb.av, label %.sink.split

bb.au:                                            ; preds = %.lr.ph28
  br i1 %i.ht, label %.sink.split, label %bb.av

.sink.split:                                      ; preds = %bb.au, %bb.at
  %i.hu = getelementptr inbounds i8, ptr %i.ho, i64 %i.hq
  %i.hv = load i8, ptr %i.hu, align 1, !range !10, !noundef !11
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.au, %bb.at
  %.shrunk21 = phi i8 [ 0, %bb.au ], [ 1, %bb.at ], [ %i.hv, %.sink.split ]
  %i.hw = getelementptr inbounds i8, ptr %i.r, i64 %i.hq
  store i8 %.shrunk21, ptr %i.hw, align 1
  %i.hx = add nuw i32 %.023127, 1                 ; 2 uses
  %i.hy = load i32, ptr %i.o, align 8
  %i.hz = icmp ult i32 %i.hx, %i.hy
  br i1 %i.hz, label %.lr.ph28, label %._crit_edge29, !llvm.loop !48

._crit_edge29:                                    ; preds = %bb.av, %is_orclause.exit252
  call void @pfree(ptr noundef %i.ho) #13
  br label %.loopexit

is_notclause.exit:                                ; preds = %is_orclause.exit
  %i.ia = icmp eq i32 %i.hj, 2
  br i1 %i.ia, label %bb.aw, label %.thread20

bb.aw:                                            ; preds = %is_notclause.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call fastcc ptr @mcv_get_match_bitmap(ptr noundef %i.ic, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) ; 2 uses
  %i.ie = load i32, ptr %i.o, align 8
  %.not56 = icmp eq i32 %i.ie, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.aw, %bb.az
  %.023025 = phi i32 [ %i.in, %bb.az ], [ 0, %bb.aw ] ; 2 uses
  %i.if = sext i32 %.023025 to i64                ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %i.r, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !range !10, !noundef !11
  %i.ii = trunc nuw i8 %i.ih to i1                ; 2 uses
  br i1 %4, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph26
  br i1 %i.ii, label %bb.az, label %.sink.split88

bb.ay:                                            ; preds = %.lr.ph26
  br i1 %i.ii, label %.sink.split88, label %bb.az

.sink.split88:                                    ; preds = %bb.ay, %bb.ax
  %i.ij = getelementptr inbounds i8, ptr %i.id, i64 %i.if
  %i.ik = load i8, ptr %i.ij, align 1, !range !10, !noundef !11
  %i.il = xor i8 %i.ik, 1
  br label %bb.az

bb.az:                                            ; preds = %.sink.split88, %bb.ay, %bb.ax
  %.shrunk = phi i8 [ 0, %bb.ay ], [ 1, %bb.ax ], [ %i.il, %.sink.split88 ]
  %i.im = getelementptr inbounds i8, ptr %i.r, i64 %i.if
  store i8 %.shrunk, ptr %i.im, align 1
  %i.in = add nuw i32 %.023025, 1                 ; 2 uses
  %i.io = load i32, ptr %i.o, align 8
  %i.ip = icmp ult i32 %i.in, %i.io
  br i1 %i.ip, label %.lr.ph26, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.az, %bb.aw
  call void @pfree(ptr noundef %i.id) #13
  br label %.loopexit

bb.ba:                                            ; preds = %is_opclause.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.ir = load i16, ptr %i.iq, align 8
  %i.is = sext i16 %i.ir to i32
  %i.it = call i32 @bms_member_index(ptr noundef %1, i32 noundef %i.is) #13
  %i.iu = load i32, ptr %i.o, align 8
  %.not55 = icmp eq i32 %i.iu, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba
  %i.iv = sext i32 %i.it to i64                   ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.bd
  %.022924 = phi i32 [ 0, %.lr.ph ], [ %i.jp, %bb.bd ] ; 2 uses
  %i.iw = sext i32 %.022924 to i64                ; 3 uses
  %i.ix = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.iv
  %i.jb = load i8, ptr %i.ja, align 1, !range !10, !noundef !11
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.iv
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = icmp ne i64 %i.jg, 0
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0228 = phi i1 [ false, %bb.bb ], [ %i.jh, %bb.bc ] ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.r, i64 %i.iw
  %i.jj = load i8, ptr %i.ji, align 1, !range !10, !noundef !11
  %i.jk = trunc nuw i8 %i.jj to i1                ; 2 uses
  %i.jl = or i1 %.0228, %i.jk
  %i.jm = and i1 %.0228, %i.jk
  %.in245 = select i1 %4, i1 %i.jl, i1 %i.jm
  %i.jn = getelementptr inbounds i8, ptr %i.r, i64 %i.iw
  %i.jo = zext i1 %.in245 to i8
  store i8 %i.jo, ptr %i.jn, align 1
end_hunk_0
