Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/parse_utilcmd?download=true
inline.NumInlined: 167
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@transformIndexConstraints:bb.a
  %i.cq = tail call i32 @get_relname_relid(ptr noundef nonnull %i.cb, i32 noundef %i.cp) #8 ; 4 uses
  %.not433.i = icmp eq i32 %i.cq, 0
  br i1 %.not433.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.cs = tail call i32 @errcode(i32 noundef 67137668) #8 ; 0 uses
  %i.ct = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.103, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %i.cu = load ptr, ptr %0, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = tail call i32 @parser_errposition(ptr noundef %i.cu, i32 noundef %i.cw) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2435, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cy = tail call ptr @index_open(i32 noundef %i.cq, i32 noundef 1) #8 ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 328
  %i.da = load ptr, ptr %i.cz, align 8            ; 7 uses
  %i.db = tail call i32 @get_index_constraint(i32 noundef %i.cq) #8
  %.not434.i = icmp eq i32 %i.db, 0
  br i1 %.not434.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dd = tail call i32 @errcode(i32 noundef 325) #8 ; 0 uses
  %i.de = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.104, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %i.df = load ptr, ptr %0, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = tail call i32 @parser_errposition(ptr noundef %i.df, i32 noundef %i.dh) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2447, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.dm = load i32, ptr %i.dl, align 8
  %.not435.i = icmp eq i32 %i.dk, %i.dm
  br i1 %.not435.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.do = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dp = tail call i32 @errcode(i32 noundef 325) #8 ; 0 uses
  %i.dq = load ptr, ptr %i.dn, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.105, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.dr) #8 ; 0 uses
  %i.dt = load ptr, ptr %0, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = tail call i32 @parser_errposition(ptr noundef %i.dt, i32 noundef %i.dv) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2455, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 18
  %i.dy = load i8, ptr %i.dx, align 2, !range !5, !noundef !6
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ea = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.eb = tail call i32 @errcode(i32 noundef 325) #8 ; 0 uses
  %i.ec = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.106, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %i.ed = load ptr, ptr %0, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = tail call i32 @parser_errposition(ptr noundef %i.ed, i32 noundef %i.ef) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2461, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.ei = load i8, ptr %i.eh, align 4, !range !5, !noundef !6
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.el = tail call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.em = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.107, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %i.en = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.108) #8 ; 0 uses
  %i.eo = load ptr, ptr %0, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = tail call i32 @parser_errposition(ptr noundef %i.eo, i32 noundef %i.eq) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2473, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.es = tail call ptr @RelationGetIndexExpressions(ptr noundef nonnull %i.cy) #8
  %.not436.i = icmp eq ptr %i.es, null
  br i1 %.not436.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.eu = tail call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.ev = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.109, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %i.ew = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.108) #8 ; 0 uses
  %i.ex = load ptr, ptr %0, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = tail call i32 @parser_errposition(ptr noundef %i.ex, i32 noundef %i.ez) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2480, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.fb = tail call ptr @RelationGetIndexPredicate(ptr noundef nonnull %i.cy) #8
  %.not437.i = icmp eq ptr %i.fb, null
  br i1 %.not437.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.fd = tail call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.fe = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.110, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %i.ff = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.108) #8 ; 0 uses
  %i.fg = load ptr, ptr %0, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = tail call i32 @parser_errposition(ptr noundef %i.fg, i32 noundef %i.fi) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2487, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.fk = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.fl = load i8, ptr %i.fk, align 4, !range !5, !noundef !6
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = load i8, ptr %i.as, align 8, !range !5, !noundef !6
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.fq = tail call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.fr = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.111, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %i.fs = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.112) #8 ; 0 uses
  %i.ft = load ptr, ptr %0, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = tail call i32 @parser_errposition(ptr noundef %i.ft, i32 noundef %i.fv) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2499, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cy, i64 56 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 84
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = tail call i32 @get_index_am_oid(ptr noundef nonnull @.str.101, i1 noundef zeroext false) #8
  %.not438.i = icmp eq i32 %i.ga, %i.gb
  br i1 %.not438.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.gd = tail call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.ge = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.113, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %i.gf = load ptr, ptr %0, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = tail call i32 @parser_errposition(ptr noundef %i.gf, i32 noundef %i.gh) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2511, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cy, i64 336
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = tail call i64 @SysCacheGetAttrNotNull(i32 noundef 34, ptr noundef %i.gk, i16 noundef signext 18) #8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 4
  %i.go = icmp sgt i16 %i.gn, 0
  br i1 %i.go, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.gp = inttoptr i64 %i.gl to ptr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.da, i64 10
  %i.gt = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cy, i64 440
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cy, i64 392
  %i.gy = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ap, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.pre-phi.i, %bb.ap ] ; 7 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.gq, i64 %indvars.iv.i
  %i.ha = load i16, ptr %i.gz, align 2            ; 3 uses
  %i.hb = icmp sgt i16 %i.ha, 0
  br i1 %i.hb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hc = zext nneg i16 %i.ha to i64
  %i.hd = load ptr, ptr %i.gr, align 8            ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8
  %i.hf = sext i32 %i.he to i64
  %i.hg = shl nsw i64 %i.hf, 3
  %i.hh = getelementptr i8, ptr %i.hd, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -68
  %i.hj = getelementptr [100 x i8], ptr %i.hi, i64 %i.hc
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.hk = tail call ptr @SystemAttributeDefinition(i16 noundef signext %i.ha) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0411.i = phi ptr [ %i.hj, %bb.ae ], [ %i.hk, %bb.af ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0411.i, i64 4
  %i.hm = tail call ptr @pstrdup(ptr noundef nonnull %i.hl) #8 ; 3 uses
  %i.hn = load i16, ptr %i.gs, align 2
  %i.ho = sext i16 %i.hn to i64
  %i.hp = icmp slt i64 %indvars.iv.i, %i.ho
  br i1 %i.hp, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.hq = load i32, ptr %i.gu, align 8
  %i.hr = add nuw nsw i64 %indvars.iv.i, 1        ; 3 uses
  %i.hs = trunc i64 %i.hr to i16
  %i.ht = tail call i64 @get_attoptions(i32 noundef %i.hq, i16 noundef signext %i.hs) #8
  %i.hu = getelementptr inbounds nuw i8, ptr %.0411.i, i64 68
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = load ptr, ptr %i.fx, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 84
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = tail call i32 @GetDefaultOpClass(i32 noundef %i.hv, i32 noundef %i.hy) #8
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i
  %i.ib = load i32, ptr %i.ia, align 4
  %.not470.i = icmp eq i32 %i.ib, %i.hz
  br i1 %.not470.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ic = getelementptr inbounds nuw i8, ptr %.0411.i, i64 96
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = load ptr, ptr %i.gw, align 8
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = icmp ne i32 %i.id, %i.ig
  %i.ii = icmp ne i64 %i.ht, 0
  %or.cond.i = select i1 %i.ih, i1 true, i1 %i.ii
  br i1 %or.cond.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ij = load ptr, ptr %i.gx, align 8
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %indvars.iv.i
  %i.il = load i16, ptr %i.ik, align 2
  %.not471.i = icmp eq i16 %i.il, 0
  br i1 %.not471.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.im = trunc nuw nsw i64 %i.hr to i32
  %i.in = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.io = tail call i32 @errcode(i32 noundef 151027844) #8 ; 0 uses
  %i.ip = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.114, ptr noundef nonnull %i.cb, i32 noundef %i.im) #8 ; 0 uses
  %i.iq = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.108) #8 ; 0 uses
  %i.ir = load ptr, ptr %0, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = tail call i32 @parser_errposition(ptr noundef %i.ir, i32 noundef %i.it) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2563, ptr noundef nonnull @__func__.transformIndexConstraint) #8
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.iv = load i32, ptr %i.r, align 4
  %i.iw = icmp eq i32 %i.iv, 6
  br i1 %i.iw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ix = load ptr, ptr %i.i, align 8
  %i.iy = tail call ptr @makeString(ptr noundef %i.hm) #8
  %i.iz = tail call ptr @makeNotNullConstraint(ptr noundef %i.iy) #8
  %i.ja = tail call ptr @lappend(ptr noundef %i.ix, ptr noundef %i.iz) #8
  store ptr %i.ja, ptr %i.i, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jb = load ptr, ptr %i.gy, align 8
  %i.jc = tail call ptr @makeString(ptr noundef %i.hm) #8
  %i.jd = tail call ptr @lappend(ptr noundef %i.jb, ptr noundef %i.jc) #8
  store ptr %i.jd, ptr %i.gy, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ag
  %i.je = load ptr, ptr %i.gt, align 8
  %i.jf = tail call ptr @makeString(ptr noundef %i.hm) #8
  %i.jg = tail call ptr @lappend(ptr noundef %i.je, ptr noundef %i.jf) #8
  store ptr %i.jg, ptr %i.gt, align 8
  %.pre.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre.i, %bb.ao ], [ %i.hr, %bb.an ] ; 2 uses
  %i.jh = load i16, ptr %i.gm, align 4
  %i.ji = sext i16 %i.jh to i64
  %i.jj = icmp slt i64 %indvars.iv.next.pre-phi.i, %i.ji
  br i1 %i.jj, label %bb.ad, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.ap, %bb.ac
  tail call void @index_close(ptr noundef nonnull %i.cy, i32 noundef 0) #8
  store i32 %i.cq, ptr %i.bt, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i, %bb.g
  %i.jk = load i32, ptr %i.r, align 4
  %i.jl = icmp eq i32 %i.jk, 8
  br i1 %i.jl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jm = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.jn = load ptr, ptr %i.jm, align 8            ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4 ; 2 uses
  %.not457.i = icmp eq ptr %i.jn, null
  br i1 %.not457.i, label %.critedge473.i, label %.lr.ph612.i

.lr.ph612.i:                                      ; preds = %bb.ar
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jq = load i32, ptr %i.jo, align 4
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph615.i, label %.critedge473.i

.lr.ph615.i:                                      ; preds = %.lr.ph612.i, %.lr.ph615.i
  %indvars.iv689.i = phi i64 [ %indvars.iv.next690.i, %.lr.ph615.i ], [ 0, %.lr.ph612.i ] ; 2 uses
  %i.js = load ptr, ptr %i.jp, align 8
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv689.i
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  %.val488.i = load ptr, ptr %i.jv, align 8       ; 2 uses
  %i.jw = load ptr, ptr %.val488.i, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %.val488.i, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = load ptr, ptr %i.bq, align 8
  %i.ka = tail call ptr @lappend(ptr noundef %i.jz, ptr noundef %i.jw) #8
  store ptr %i.ka, ptr %i.bq, align 8
  %i.kb = load ptr, ptr %i.bs, align 8
  %i.kc = tail call ptr @lappend(ptr noundef %i.kb, ptr noundef %i.jy) #8
  store ptr %i.kc, ptr %i.bs, align 8
  %indvars.iv.next690.i = add nuw nsw i64 %indvars.iv689.i, 1 ; 2 uses
  %i.kd = load i32, ptr %i.jo, align 4
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp slt i64 %indvars.iv.next690.i, %i.ke
  br i1 %i.kf, label %.lr.ph615.i, label %.critedge473.i

bb.as:                                            ; preds = %bb.aq
  %i.kg = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8            ; 3 uses
  %.not439.i = icmp eq ptr %i.kh, null
  br i1 %.not439.i, label %._crit_edge608.i, label %.lr.ph607.i

.lr.ph607.i:                                      ; preds = %bb.as
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kk = load i32, ptr %i.ki, align 4
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph, label %._crit_edge608.i

._crit_edge608.i:                                 ; preds = %.loopexit.i, %.lr.ph607.i, %bb.as
  %i.km = load i8, ptr %i.ap, align 8, !range !5, !noundef !6
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.cc, label %.critedge473.i

.lr.ph:                                           ; preds = %.lr.ph607.i, %.loopexit.i
  %indvars.iv686.i203 = phi i64 [ %indvars.iv.next687.i, %.loopexit.i ], [ 0, %.lr.ph607.i ] ; 2 uses
  %i.ko = load ptr, ptr %i.kj, align 8
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv686.i203 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8            ; 13 uses
  %i.kt = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not441.i = icmp eq ptr %i.kt, null
  br i1 %.not441.i, label %._crit_edge574.split.us.i, label %.lr.ph573.i

.lr.ph573.i:                                      ; preds = %.lr.ph
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = load i32, ptr %i.ku, align 4            ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph577.i, label %._crit_edge574.split.us.i

.lr.ph577.i:                                      ; preds = %.lr.ph573.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8
  %wide.trip.count.i = zext nneg i32 %i.kv to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.au
  %indvars.iv.next661.i = add nuw nsw i64 %indvars.iv660.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next661.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge574.split.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph577.i
  %indvars.iv660.i = phi i64 [ 0, %.lr.ph577.i ], [ %indvars.iv.next661.i, %bb.at ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv660.i
  %i.la = load ptr, ptr %i.kz, align 8            ; 9 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lc, ptr noundef nonnull dereferenceable(1) %i.ks) #10
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %.split.i, label %bb.at

.split.i:                                         ; preds = %bb.au
  %i.lf = load i32, ptr %i.r, align 4
end_hunk_0
