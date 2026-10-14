Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/inet_net_pton?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pg_inet_net_pton:bb.a
  switch i8 %i.bk, label %bb.ad [
    i8 120, label %bb.t
    i8 88, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bl = tail call ptr @__ctype_b_loc() #8       ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bo = load i8, ptr %i.bn, align 1             ; 3 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = and i16 %i.br, 4096
  %.not.i17 = icmp eq i16 %i.bs, 0
  br i1 %.not.i17, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = icmp eq i64 %3, 0
  br i1 %i.bt, label %.loopexit.sink.split.i, label %.preheader169.i

.preheader169.i:                                  ; preds = %bb.u
  %.not137203.i = icmp eq i8 %i.bo, 0
  br i1 %.not137203.i, label %.loopexit.sink.split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader169.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.aa
  %i.bv = phi ptr [ %i.cq, %bb.aa ], [ %i.bm, %.lr.ph.i.preheader ] ; 2 uses
  %i.bw = phi i8 [ %i.cs, %bb.aa ], [ %i.bo, %.lr.ph.i.preheader ] ; 5 uses
  %i.bx = phi ptr [ %i.cr, %bb.aa ], [ %i.bu, %.lr.ph.i.preheader ] ; 3 uses
  %.091207.i = phi i32 [ %.192.i, %bb.aa ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.093206.i = phi i32 [ %.194.i, %bb.aa ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.0101205.i = phi i64 [ %.1102.i, %bb.aa ], [ %3, %.lr.ph.i.preheader ] ; 4 uses
  %.0106204.i = phi ptr [ %.1107.i, %bb.aa ], [ %2, %.lr.ph.i.preheader ] ; 4 uses
  %i.by = zext i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 4096
  %.not138.i = icmp eq i16 %i.cb, 0
  br i1 %.not138.i, label %.critedge.i19, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.cc = add i8 %i.bw, -65
  %or.cond.i.i = icmp ult i8 %i.cc, 26
  %i.cd = or disjoint i8 %i.bw, 32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.cd, i8 %i.bw
  %i.ce = zext i8 %spec.select.i.i to i32
  %memchr145.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_cidr_pton_ipv4.xdigits, i32 %i.ce, i64 17)
  %i.cf = ptrtoint ptr %memchr145.i to i64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = sub i32 %i.cg, ptrtoint (ptr @inet_cidr_pton_ipv4.xdigits to i32) ; 3 uses
  %or.cond.i18 = icmp ult i32 %i.ch, 16
  br i1 %or.cond.i18, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 120, ptr noundef nonnull @__PRETTY_FUNCTION__.inet_cidr_pton_ipv4) #9
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ci = icmp eq i32 %.091207.i, 0
  %i.cj = shl i32 %.093206.i, 4
  %i.ck = or disjoint i32 %i.ch, %i.cj            ; 2 uses
  %.194.i = select i1 %i.ci, i32 %i.ch, i32 %i.ck ; 2 uses
  %i.cl = icmp eq i32 %.091207.i, 1
  br i1 %i.cl, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cm = icmp eq i64 %.0101205.i, 0
  br i1 %i.cm, label %.loopexit.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = add i64 %.0101205.i, -1
  %i.co = trunc i32 %i.ck to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0106204.i, i64 1
  store i8 %i.co, ptr %.0106204.i, align 1
  %.pre.i = load ptr, ptr %i.bl, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.cq = phi ptr [ %.pre.i, %bb.z ], [ %i.bv, %bb.x ]
  %.1107.i = phi ptr [ %i.cp, %bb.z ], [ %.0106204.i, %bb.x ] ; 2 uses
  %.1102.i = phi i64 [ %i.cn, %bb.z ], [ %.0101205.i, %bb.x ] ; 2 uses
  %.192.i = phi i32 [ 0, %bb.z ], [ 1, %bb.x ]    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.cs = load i8, ptr %i.bx, align 1             ; 2 uses
  %.not137.i = icmp eq i8 %i.cs, 0
  br i1 %.not137.i, label %.critedge.i19, label %.lr.ph.i, !llvm.loop !9

.critedge.i19:                                    ; preds = %bb.aa, %.lr.ph.i
  %.lcssa202.ph.i = phi i8 [ %i.bw, %.lr.ph.i ], [ 0, %bb.aa ]
  %.0106.lcssa.ph.i = phi ptr [ %.0106204.i, %.lr.ph.i ], [ %.1107.i, %bb.aa ] ; 3 uses
  %.0101.lcssa.ph.i = phi i64 [ %.0101205.i, %.lr.ph.i ], [ %.1102.i, %bb.aa ] ; 3 uses
  %.093.lcssa.ph.i = phi i32 [ %.093206.i, %.lr.ph.i ], [ %.194.i, %bb.aa ]
  %.091.lcssa.ph.i = phi i32 [ %.091207.i, %.lr.ph.i ], [ %.192.i, %bb.aa ]
  %.lcssa191.ph.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.cr, %bb.aa ] ; 2 uses
  %i.ct = sext i8 %.lcssa202.ph.i to i32          ; 2 uses
  %i.cu = icmp eq i32 %.091.lcssa.ph.i, 0
  %i.cv = trunc i32 %.093.lcssa.ph.i to i8
  %i.cw = shl i8 %i.cv, 4
  br i1 %i.cu, label %.loopexit168.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i19
  %i.cx = icmp eq i64 %.0101.lcssa.ph.i, 0
  br i1 %i.cx, label %.loopexit.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = add i64 %.0101.lcssa.ph.i, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %.0106.lcssa.ph.i, i64 1
  store i8 %i.cw, ptr %.0106.lcssa.ph.i, align 1
  br label %.loopexit168.i

bb.ad:                                            ; preds = %bb.t, %bb.s, %bb.r
  %i.da = tail call ptr @__ctype_b_loc() #8       ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = zext i8 %i.bi to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = and i16 %i.de, 2048
  %.not132.i = icmp eq i16 %i.df, 0
  br i1 %.not132.i, label %.loopexit.sink.split.i, label %.preheader165.i

.preheader165.i:                                  ; preds = %bb.ad, %bb.ak
  %i.dg = phi ptr [ %i.ea, %bb.ak ], [ %i.db, %bb.ad ]
  %.1112.i = phi ptr [ %i.dy, %bb.ak ], [ %i.bh, %bb.ad ]
  %.2108.i = phi ptr [ %i.dx, %bb.ak ], [ %2, %bb.ad ] ; 2 uses
  %.2103.i = phi i64 [ %i.du, %bb.ak ], [ %3, %bb.ad ] ; 2 uses
  %.096.in.i = phi i8 [ %i.dz, %bb.ak ], [ %i.bi, %bb.ad ]
  %.096.i = sext i8 %.096.in.i to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %.preheader165.i
  %.2113.i = phi ptr [ %.1112.i, %.preheader165.i ], [ %i.dn, %bb.ai ] ; 3 uses
  %.197.i = phi i32 [ %.096.i, %.preheader165.i ], [ %i.dp, %bb.ai ]
  %.295.i = phi i32 [ 0, %.preheader165.i ], [ %i.dl, %bb.ai ]
  %memchr.i14 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_cidr_pton_ipv4.digits, i32 %.197.i, i64 11)
  %i.dh = ptrtoint ptr %memchr.i14 to i64
  %i.di = trunc i64 %i.dh to i32
  %i.dj = sub i32 %i.di, ptrtoint (ptr @inet_cidr_pton_ipv4.digits to i32) ; 2 uses
  %or.cond3.i = icmp ult i32 %i.dj, 10
  br i1 %or.cond3.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__.inet_cidr_pton_ipv4) #9
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dk = mul i32 %.295.i, 10
  %i.dl = add i32 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 255
  br i1 %i.dm, label %.loopexit.sink.split.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %.2113.i, i64 1 ; 4 uses
  %i.do = load i8, ptr %.2113.i, align 1          ; 4 uses
  %i.dp = sext i8 %i.do to i32                    ; 3 uses
  %.not133.i = icmp eq i8 %i.do, 0
  br i1 %.not133.i, label %.critedge5.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dq = zext i8 %i.do to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = and i16 %i.ds, 2048
  %.not134.i = icmp eq i16 %i.dt, 0
  br i1 %.not134.i, label %.critedge5.i, label %bb.ae, !llvm.loop !10

.critedge5.i:                                     ; preds = %bb.ai, %bb.ah
  %i.du = add i64 %.2103.i, -1                    ; 3 uses
  %i.dv = icmp eq i64 %.2103.i, 0
  br i1 %i.dv, label %.loopexit.sink.split.i, label %bb.aj

bb.aj:                                            ; preds = %.critedge5.i
  %i.dw = trunc i32 %i.dl to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %.2108.i, i64 1 ; 3 uses
  store i8 %i.dw, ptr %.2108.i, align 1
  switch i8 %i.do, label %.loopexit.sink.split.i [
    i8 47, label %.loopexit168.i
    i8 0, label %.loopexit168.i
    i8 46, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %.2113.i, i64 2
  %i.dz = load i8, ptr %i.dn, align 1             ; 2 uses
  %i.ea = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.eb = zext i8 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = and i16 %i.ed, 2048
  %.not136.i = icmp eq i16 %i.ee, 0
  br i1 %.not136.i, label %.loopexit.sink.split.i, label %.preheader165.i

.loopexit168.i:                                   ; preds = %bb.aj, %bb.aj, %bb.ac, %.critedge.i19
  %.3114.i = phi ptr [ %.lcssa191.ph.i, %bb.ac ], [ %.lcssa191.ph.i, %.critedge.i19 ], [ %i.dn, %bb.aj ], [ %i.dn, %bb.aj ] ; 2 uses
  %.3109.i = phi ptr [ %i.cz, %bb.ac ], [ %.0106.lcssa.ph.i, %.critedge.i19 ], [ %i.dx, %bb.aj ], [ %i.dx, %bb.aj ] ; 8 uses
  %.3104.i = phi i64 [ %i.cy, %bb.ac ], [ %.0101.lcssa.ph.i, %.critedge.i19 ], [ %i.du, %bb.aj ], [ %i.du, %bb.aj ] ; 3 uses
  %.298.i = phi i32 [ %i.ct, %bb.ac ], [ %i.ct, %.critedge.i19 ], [ %i.dp, %bb.aj ], [ %i.dp, %bb.aj ] ; 2 uses
  %.3109.i143 = ptrtoaddr ptr %.3109.i to i64     ; 2 uses
  %i.ef = icmp eq i32 %.298.i, 47
  br i1 %i.ef, label %bb.al, label %.thread154.i

bb.al:                                            ; preds = %.loopexit168.i
  %i.eg = tail call ptr @__ctype_b_loc() #8
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = load i8, ptr %.3114.i, align 1          ; 2 uses
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = and i16 %i.el, 2048
  %.not140.i = icmp ne i16 %i.em, 0
  %i.en = icmp ugt ptr %.3109.i, %2
  %or.cond146.i = select i1 %.not140.i, i1 %i.en, i1 false
  br i1 %or.cond146.i, label %.preheader.i15, label %.loopexit.sink.split.i

.preheader.i15:                                   ; preds = %bb.al, %bb.ao
  %.3114.pn.i = phi ptr [ %.4115.i, %bb.ao ], [ %.3114.i, %bb.al ]
  %.399.in.i = phi i8 [ %i.et, %bb.ao ], [ %i.ei, %bb.al ]
  %.0.i16 = phi i32 [ %i.es, %bb.ao ], [ 0, %bb.al ]
  %.399.i = sext i8 %.399.in.i to i32
  %.4115.i = getelementptr inbounds nuw i8, ptr %.3114.pn.i, i64 1 ; 2 uses
  %memchr141.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_cidr_pton_ipv4.digits, i32 %.399.i, i64 11)
  %i.eo = ptrtoint ptr %memchr141.i to i64
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = sub i32 %i.ep, ptrtoint (ptr @inet_cidr_pton_ipv4.digits to i32) ; 2 uses
  %or.cond9.i = icmp ult i32 %i.eq, 10
  br i1 %or.cond9.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader.i15
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 180, ptr noundef nonnull @__PRETTY_FUNCTION__.inet_cidr_pton_ipv4) #9
  unreachable

bb.an:                                            ; preds = %.preheader.i15
  %i.er = mul i32 %.0.i16, 10
  %i.es = add i32 %i.eq, %i.er                    ; 4 uses
  %i.et = load i8, ptr %.4115.i, align 1          ; 3 uses
  %.not142.i = icmp eq i8 %i.et, 0
  br i1 %.not142.i, label %.critedge147.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = and i16 %i.ew, 2048
  %.not143.i = icmp eq i16 %i.ex, 0
  br i1 %.not143.i, label %.loopexit.sink.split.i, label %.preheader.i15, !llvm.loop !11

.critedge147.i:                                   ; preds = %bb.an
  %i.ey = icmp sgt i32 %i.es, 32
  br i1 %i.ey, label %.loopexit.sink.split.i, label %bb.ap

.thread154.i:                                     ; preds = %.loopexit168.i
  %.not144157.i = icmp ne i32 %.298.i, 0
  %i.ez = icmp eq ptr %.3109.i, %2
  %or.cond148158.i = select i1 %.not144157.i, i1 true, i1 %i.ez
  br i1 %or.cond148158.i, label %.loopexit.sink.split.i, label %.thread160.i

bb.ap:                                            ; preds = %.critedge147.i
  %i.fa = icmp eq i32 %i.es, -1
  br i1 %i.fa, label %.thread160.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ap
  %.pre245.i = ptrtoint ptr %2 to i64             ; 2 uses
  %.pre246.i = ptrtoint ptr %.3109.i to i64
  %.pre248.i = sub i64 %.pre246.i, %.pre245.i
  %.pre250.i = shl i64 %.pre248.i, 3
  br label %bb.av

.thread160.i:                                     ; preds = %bb.ap, %.thread154.i
  %i.fb = load i8, ptr %2, align 1                ; 5 uses
  %i.fc = icmp ugt i8 %i.fb, -17
  br i1 %i.fc, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.thread160.i
  %i.fd = icmp ugt i8 %i.fb, -33
  br i1 %i.fd, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fe = icmp ugt i8 %i.fb, -65
  br i1 %i.fe, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = icmp slt i8 %i.fb, 0
  %i.fg = select i1 %i.ff, i64 16, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %.thread160.i
  %.2.i = phi i64 [ 24, %bb.ar ], [ 32, %.thread160.i ], [ 8, %bb.aq ], [ %i.fg, %bb.as ]
  %i.fh = ptrtoint ptr %.3109.i to i64
  %i.fi = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = shl i64 %i.fj, 3                        ; 3 uses
  %spec.select162.i = tail call i64 @llvm.smax.i64(i64 %i.fk, i64 %.2.i)
  %spec.select.i = trunc i64 %spec.select162.i to i32 ; 2 uses
  %i.fl = icmp eq i32 %spec.select.i, 8
  br i1 %i.fl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fm = icmp eq i8 %i.fb, -32
  %spec.select149.i = select i1 %i.fm, i32 4, i32 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i
  %.pre-phi251.i = phi i64 [ %.pre250.i, %._crit_edge.i ], [ %i.fk, %bb.au ], [ %i.fk, %bb.at ]
  %.pre-phi.i = phi i64 [ %.pre245.i, %._crit_edge.i ], [ %i.fi, %bb.au ], [ %i.fi, %bb.at ] ; 3 uses
  %.4.i = phi i32 [ %i.es, %._crit_edge.i ], [ %spec.select149.i, %bb.au ], [ %spec.select.i, %bb.at ] ; 3 uses
  %i.fn = sext i32 %.4.i to i64                   ; 3 uses
  %i.fo = icmp slt i64 %.pre-phi251.i, %i.fn
  br i1 %i.fo, label %.lr.ph222.i.preheader, label %inet_net_pton_ipv4.exit

.lr.ph222.i.preheader:                            ; preds = %bb.av
  %i.fp = add i64 %.3109.i143, 1
  %i.fq = sub i64 %i.fp, %.pre-phi.i
  %i.fr = shl i64 %i.fq, 3
  %i.fs = tail call i64 @llvm.smax.i64(i64 %i.fr, i64 %i.fn)
  %i.ft = shl i64 %.pre-phi.i, 3
  %i.fu = shl i64 %.3109.i143, 3
  %i.fv = add i64 %i.fs, %i.ft
  %i.fw = xor i64 %i.fu, -1
  %i.fx = add i64 %i.fv, %i.fw
  %.fr = freeze i64 %i.fx
  %i.fy = lshr i64 %.fr, 3
  %i.fz = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 %.3104.i) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.fz, 32
  br i1 %min.iters.check, label %.lr.ph222.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph222.i.preheader
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %i.gb = and i64 %i.ga, 31                       ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = select i1 %i.gc, i64 32, i64 %i.gb
  %n.vec = sub nsw i64 %i.ga, %i.gd               ; 3 uses
  %i.ge = sub i64 %.3104.i, %n.vec
  %i.gf = getelementptr i8, ptr %.3109.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.3109.i, i64 %index ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> zeroinitializer, ptr %next.gep, align 1
  store <16 x i8> zeroinitializer, ptr %i.gg, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %.lr.ph222.i.preheader152, label %vector.body, !llvm.loop !12

.lr.ph222.i.preheader152:                         ; preds = %vector.body, %.lr.ph222.i.preheader
  %.4105221.i.ph = phi i64 [ %.3104.i, %.lr.ph222.i.preheader ], [ %i.ge, %vector.body ]
  %.4110220.i.ph = phi ptr [ %.3109.i, %.lr.ph222.i.preheader ], [ %i.gf, %vector.body ]
  br label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %.lr.ph222.i.preheader152, %bb.aw
  %.4105221.i = phi i64 [ %i.gj, %bb.aw ], [ %.4105221.i.ph, %.lr.ph222.i.preheader152 ] ; 2 uses
  %.4110220.i = phi ptr [ %i.gk, %bb.aw ], [ %.4110220.i.ph, %.lr.ph222.i.preheader152 ] ; 2 uses
  %i.gi = icmp eq i64 %.4105221.i, 0
  br i1 %i.gi, label %.loopexit.sink.split.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph222.i
  %i.gj = add i64 %.4105221.i, -1
  %i.gk = getelementptr inbounds nuw i8, ptr %.4110220.i, i64 1 ; 2 uses
  store i8 0, ptr %.4110220.i, align 1
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.gl, %.pre-phi.i
  %i.gn = shl i64 %i.gm, 3
  %i.go = icmp slt i64 %i.gn, %i.fn
  br i1 %i.go, label %.lr.ph222.i, label %inet_net_pton_ipv4.exit, !llvm.loop !13

.loopexit.sink.split.i:                           ; preds = %bb.y, %bb.ak, %bb.aj, %.critedge5.i, %bb.ag, %bb.ao, %.lr.ph222.i, %.thread154.i, %.critedge147.i, %bb.al, %bb.ad, %bb.ab, %.preheader169.i, %bb.u
  %.sink.i = phi i32 [ 2, %bb.ad ], [ 90, %.critedge147.i ], [ 90, %bb.ab ], [ 90, %.lr.ph222.i ], [ 2, %bb.aj ], [ 2, %.preheader169.i ], [ 2, %bb.al ], [ 2, %.thread154.i ], [ 2, %bb.ag ], [ 2, %bb.ao ], [ 90, %bb.u ], [ 90, %.critedge5.i ], [ 2, %bb.ak ], [ 90, %bb.y ]
  %i.gp = tail call ptr @__errno_location() #8
  store i32 %.sink.i, ptr %i.gp, align 4
  br label %inet_net_pton_ipv4.exit

bb.ax:                                            ; preds = %bb.a
  %i.gq = icmp eq i64 %3, -1
  br i1 %i.gq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gr = tail call fastcc range(i32 -2147483648, 129) i32 @inet_cidr_pton_ipv6(ptr noundef readonly %1, ptr noundef %2, i64 noundef 16)
  br label %inet_net_pton_ipv4.exit

bb.az:                                            ; preds = %bb.ax
  %i.gs = tail call fastcc i32 @inet_cidr_pton_ipv6(ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %inet_net_pton_ipv4.exit

bb.ba:                                            ; preds = %bb.a
  %i.gt = tail call ptr @__errno_location() #8
  store i32 97, ptr %i.gt, align 4
  br label %inet_net_pton_ipv4.exit

inet_net_pton_ipv4.exit:                          ; preds = %bb.aw, %.loopexit.sink.split.i, %bb.av, %.loopexit100.i, %.critedge7.i, %.lr.ph.preheader.i, %.preheader.i, %bb.ay, %bb.az, %bb.ba
  %.0 = phi i32 [ -1, %bb.ba ], [ %.254.i, %.lr.ph.preheader.i ], [ %i.gs, %bb.az ], [ %i.gr, %bb.ay ], [ -1, %.critedge7.i ], [ -1, %.loopexit100.i ], [ %.254.i, %.preheader.i ], [ %.4.i, %bb.av ], [ -1, %.loopexit.sink.split.i ], [ %.4.i, %bb.aw ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 129) i32 @inet_cidr_pton_ipv6(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp ult i64 %2, 16
  br i1 %i.b, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.c = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.c, label %.lr.ph.preheader [
    i8 58, label %bb.c
    i8 0, label %getv4.exit.thread125
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.e, 58
  br i1 %.not, label %.lr.ph.preheader, label %getv4.exit.thread125

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.ph = phi i8 [ 58, %bb.c ], [ %i.c, %bb.b ]
  %.072210.ph = phi ptr [ %i.d, %bb.c ], [ %0, %bb.b ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %getv4.exit
  %i.f = phi i8 [ %i.bw, %getv4.exit ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %.pn = phi ptr [ %i.g, %getv4.exit ], [ %.072210.ph, %.lr.ph.preheader ]
  %.078.ptr.ptr214 = phi ptr [ %.078.ptr.ptr, %getv4.exit ], [ %i.a, %.lr.ph.preheader ] ; 5 uses
  %.065213 = phi i32 [ %.166, %getv4.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.067212 = phi i32 [ %.168, %getv4.exit ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.069211 = phi i32 [ %.170, %getv4.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.072210 = phi ptr [ %.173, %getv4.exit ], [ %.072210.ph, %.lr.ph.preheader ] ; 2 uses
  %.075209 = phi ptr [ %.176, %getv4.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.078.idx208 = phi i64 [ %.179.idx, %getv4.exit ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 6 uses
  %i.h = sext i8 %i.f to i32                      ; 2 uses
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_cidr_pton_ipv6.xdigits_l, i32 %i.h, i64 17) ; 2 uses
  %i.i = icmp eq ptr %memchr, null
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %memchr92 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_cidr_pton_ipv6.xdigits_u, i32 %i.h, i64 17) ; 2 uses
  %.not93 = icmp eq ptr %memchr92, null
  br i1 %.not93, label %bb.e, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d
  %.064117 = phi ptr [ %memchr92, %bb.d ], [ %memchr, %.lr.ph ]
  %.074116 = phi ptr [ @inet_cidr_pton_ipv6.xdigits_u, %bb.d ], [ @inet_cidr_pton_ipv6.xdigits_l, %.lr.ph ]
  %i.j = shl i32 %.067212, 4
  %i.k = ptrtoint ptr %.064117 to i64
  %i.l = ptrtoint ptr %.074116 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = or i32 %i.j, %i.n
  %i.p = add i32 %.065213, 1                      ; 2 uses
  %i.q = icmp sgt i32 %i.p, 4
  br i1 %i.q, label %getv4.exit.thread125, label %getv4.exit

bb.e:                                             ; preds = %bb.d
  switch i8 %i.f, label %getv4.exit.thread125 [
    i8 58, label %bb.f
    i8 46, label %bb.j
    i8 47, label %.loopexit159
  ]

bb.f:                                             ; preds = %bb.e
  %.not98 = icmp eq i32 %.069211, 0
  br i1 %.not98, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not99 = icmp eq ptr %.075209, null
  br i1 %.not99, label %getv4.exit, label %getv4.exit.thread125, !llvm.loop !14

bb.h:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.g, align 1
  %i.s = icmp eq i8 %i.r, 0
  %i.t = icmp ugt i64 %.078.idx208, 14
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %getv4.exit.thread125, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = lshr i32 %.067212, 8
  %i.v = trunc i32 %i.u to i8
  %.ptr96 = getelementptr inbounds nuw i8, ptr %.078.ptr.ptr214, i64 1
  store i8 %i.v, ptr %.078.ptr.ptr214, align 1
  %i.w = trunc i32 %.067212 to i8
  %.add = add nuw nsw i64 %.078.idx208, 2
  store i8 %i.w, ptr %.ptr96, align 1
  br label %getv4.exit, !llvm.loop !14

bb.j:                                             ; preds = %bb.e
  %.078.add = add nuw nsw i64 %.078.idx208, 4     ; 2 uses
  %.not94 = icmp sgt i64 %.078.idx208, 12
  br i1 %.not94, label %getv4.exit.thread125, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = ptrtoint ptr %.078.ptr.ptr214 to i64     ; 2 uses
  br label %getbits.exit.outer.i

getbits.exit.outer.i:                             ; preds = %bb.o, %bb.k
  %.036.ph.i = phi ptr [ %i.y, %bb.o ], [ %.072210, %bb.k ]
  %.034.ph.i = phi ptr [ %i.aq, %bb.o ], [ %.078.ptr.ptr214, %bb.k ] ; 5 uses
  br label %getbits.exit.i

getbits.exit.i:                                   ; preds = %.split.i, %getbits.exit.outer.i
  %.036.i = phi ptr [ %i.y, %.split.i ], [ %.036.ph.i, %getbits.exit.outer.i ] ; 2 uses
  %.030.i = phi i32 [ %i.ad, %.split.i ], [ 0, %getbits.exit.outer.i ] ; 3 uses
  %.029.i = phi i32 [ %i.ai, %.split.i ], [ 0, %getbits.exit.outer.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.036.i, i64 1 ; 3 uses
  %i.z = load i8, ptr %.036.i, align 1            ; 4 uses
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %getbits.exit.i
  %i.aa = sext i8 %i.z to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @getv4.digits, i32 %i.aa, i64 11) ; 2 uses
  %.not41.i = icmp eq ptr %memchr.i, null
  br i1 %.not41.i, label %bb.n, label %bb.m
end_hunk_0
