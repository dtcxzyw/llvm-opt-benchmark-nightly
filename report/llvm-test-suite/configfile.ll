inline.NumInlined: 14
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Configure:bb.a
  br label %.sink.split.i.i

bb.ab:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !17
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !18 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !32 ; 2 uses
  %i.dt = fcmp olt double %i.dq, %i.ds
  %.phi.trans.insert55.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %.pre56.i.i = load double, ptr %.phi.trans.insert55.i.i, align 8, !tbaa !33 ; 2 uses
  %i.du = fcmp ogt double %i.dq, %.pre56.i.i
  %or.cond72.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond72.i.i, label %._crit_edge54.i.i, label %bb.aj

._crit_edge54.i.i:                                ; preds = %bb.ab
  %i.dv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.312, ptr noundef nonnull %i.cz, double noundef %i.ds, double noundef %.pre56.i.i) #21 ; 0 uses
  br label %.sink.split.i.i

bb.ac:                                            ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !15
  switch i32 %i.dx, label %bb.aj [
    i32 0, label %bb.ad
    i32 2, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !17
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !32
  %i.ed = fptosi double %i.ec to i32              ; 2 uses
  %i.ee = icmp slt i32 %i.ea, %i.ed
  br i1 %i.ee, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ef = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.313, ptr noundef nonnull %i.cz, i32 noundef %i.ed) #21 ; 0 uses
  br label %.sink.split.i.i

bb.af:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !17
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !32 ; 2 uses
  %i.el = fcmp olt double %i.ei, %i.ek
  br i1 %i.el, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.em = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.314, ptr noundef nonnull %i.cz, double noundef %i.ek) #21 ; 0 uses
  br label %.sink.split.i.i

bb.ah:                                            ; preds = %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !15
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !17
  %i.es = load i32, ptr %i.er, align 4, !tbaa !4  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.eu = load double, ptr %i.et, align 8, !tbaa !32
  %i.ev = fsub double %i.eu, %i.cy
  %i.ew = fptosi double %i.ev to i32              ; 2 uses
  %i.ex = icmp slt i32 %i.es, %i.ew
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !33
  %.pre61.i.i = fptosi double %.pre.i.i to i32    ; 2 uses
  %i.ey = icmp sgt i32 %i.es, %.pre61.i.i
  %or.cond73.i.i = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %or.cond73.i.i, label %._crit_edge53.i.i, label %bb.aj

._crit_edge53.i.i:                                ; preds = %bb.ai
  %i.ez = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.311, ptr noundef nonnull %i.cz, i32 noundef %i.ew, i32 noundef %.pre61.i.i) #21 ; 0 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge53.i.i, %bb.ag, %bb.ae, %._crit_edge54.i.i, %._crit_edge57.i.i
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #21
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [56 x i8], ptr @Map, i64 %indvars.iv.next.i.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %TestEncoderParams.exit.loopexit.i, label %bb.y, !llvm.loop !34

TestEncoderParams.exit.loopexit.i:                ; preds = %bb.aj
  %.pre.i = load ptr, ptr @input, align 8, !tbaa !27
  br label %TestEncoderParams.exit.i

TestEncoderParams.exit.i:                         ; preds = %TestEncoderParams.exit.loopexit.i, %._crit_edge117
  %i.fc = phi ptr [ %.pre.i, %TestEncoderParams.exit.loopexit.i ], [ %.pre172.i, %._crit_edge117 ] ; 23 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4080 ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !35
  %i.ff = fcmp oeq double %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.ak, label %.preheader.i

bb.ak:                                            ; preds = %TestEncoderParams.exit.i
  store double 3.000000e+01, ptr %i.fd, align 8, !tbaa !35
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak, %TestEncoderParams.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 136
  store <4 x i32> splat (i32 4), ptr %i.fg, align 8, !tbaa !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 152
  store <4 x i32> <i32 4, i32 2, i32 2, i32 4>, ptr %i.fh, align 8, !tbaa !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 168
  store <4 x i32> <i32 2, i32 2, i32 2, i32 1>, ptr %i.fi, align 8, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 184
  store <4 x i32> <i32 1, i32 2, i32 1, i32 1>, ptr %i.fj, align 8, !tbaa !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 200
  store i32 7, ptr %i.fk, align 8, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 204
  store i32 6, ptr %i.fl, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 216
  store i32 5, ptr %i.fm, align 8, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 220
  store i32 4, ptr %i.fn, align 4, !tbaa !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 228
  store i32 3, ptr %i.fo, align 4, !tbaa !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 252
  store i32 2, ptr %i.fp, align 4, !tbaa !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 260
  store i32 1, ptr %i.fq, align 4, !tbaa !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  store <4 x i32> splat (i32 16), ptr %i.fr, align 8, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  store <4 x i32> <i32 16, i32 8, i32 8, i32 16>, ptr %i.fs, align 8, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  store <4 x i32> <i32 8, i32 8, i32 8, i32 4>, ptr %i.ft, align 8, !tbaa !4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fc, i64 120
  store <4 x i32> <i32 4, i32 8, i32 4, i32 4>, ptr %i.fu, align 8, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fc, i64 2964
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !36
  %.not.i77 = icmp eq i32 %i.fw, 0
  br i1 %.not.i77, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.preheader.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fc, i64 2096
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !37
  %i.fz = add nsw i32 %i.fy, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader.i
  %i.ga = phi i32 [ %i.fz, %bb.al ], [ 1, %.preheader.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !38 ; 3 uses
  %i.gd = icmp eq i32 %i.gc, -1
  br i1 %i.gd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !39
  %i.gg = mul nsw i32 %i.gf, %i.ga
  %i.gh = add i32 %i.gg, -1
  %i.gi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gh, i1 false)
  %i.gj = sub nsw i32 28, %i.gi
  %i.gk = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.gj, i32 0)
  %i.gl = tail call noundef range(i32 0, 13) i32 @llvm.umin.i32(i32 %i.gk, i32 12)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %storemerge.i = phi i32 [ %i.gl, %bb.an ], [ %i.gc, %bb.am ] ; 2 uses
  store i32 %storemerge.i, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.gm = icmp eq i32 %storemerge.i, 0
  br i1 %i.gm, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !40
  %i.gp = icmp eq i32 %i.go, 16
  br i1 %i.gp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.255, i32 noundef 16, i32 noundef %i.gc) #21 ; 0 uses
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #21
  %.pre173.i = load ptr, ptr @input, align 8, !tbaa !27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.gr = phi ptr [ %.pre173.i, %bb.aq ], [ %i.fc, %bb.ap ], [ %i.fc, %bb.ao ] ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 52
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !41 ; 3 uses
  %i.gu = icmp eq i32 %i.gt, -1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 20 ; 2 uses
  br i1 %i.gu, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !39
  %i.gy = shl nsw i32 %i.gx, 1
  %i.gz = load i32, ptr %i.gv, align 4, !tbaa !42 ; 2 uses
  %i.ha = add nsw i32 %i.gz, 1
  %i.hb = mul nsw i32 %i.gy, %i.ha
  %i.hc = add i32 %i.hb, -1
  %i.hd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hc, i1 true)
  %i.he = sub nsw i32 28, %i.hd
  %i.hf = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.he, i32 0)
  %i.hg = tail call noundef range(i32 0, 13) i32 @llvm.umin.i32(i32 %i.hf, i32 12)
  store i32 %i.hg, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !4
  br label %bb.at

.thread.i:                                        ; preds = %bb.ar
  store i32 %i.gt, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !4
  %i.hh = add i32 %i.gt, 3
  %i.hi = shl nuw i32 1, %i.hh
  %i.hj = load i32, ptr %i.gv, align 4, !tbaa !42 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 2
  %i.hl = icmp slt i32 %i.hi, %i.hk
  br i1 %i.hl, label %.thread150.i, label %bb.at

.thread150.i:                                     ; preds = %.thread.i
  tail call void @error(ptr noundef nonnull @.str.256, i32 noundef 400) #21
  %.pre174.i = load ptr, ptr @input, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre174.i, i64 20
  %.pre175.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !42
  br label %bb.at

bb.at:                                            ; preds = %.thread150.i, %.thread.i, %bb.as
  %i.hm = phi i32 [ %i.gz, %bb.as ], [ %i.hj, %.thread.i ], [ %.pre175.i, %.thread150.i ]
  %i.hn = phi ptr [ %i.gr, %bb.as ], [ %i.gr, %.thread.i ], [ %.pre174.i, %.thread150.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2096
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !37 ; 3 uses
  %i.hq = icmp sgt i32 %i.hp, %i.hm
  br i1 %i.hq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hr = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.257, i32 noundef %i.hp) #21 ; 0 uses
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #21
  %.pre176.i = load ptr, ptr @input, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert177.i = getelementptr inbounds nuw i8, ptr %.pre176.i, i64 2096
  %.pre178.i = load i32, ptr %.phi.trans.insert177.i, align 8, !tbaa !37
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hs = phi i32 [ %.pre178.i, %bb.au ], [ %i.hp, %bb.at ]
  %i.ht = phi ptr [ %.pre176.i, %bb.au ], [ %i.hn, %bb.at ] ; 3 uses
  %.not61.i = icmp eq i32 %i.hs, 0
  br i1 %.not61.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2112
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !43 ; 2 uses
  %switch.i = icmp ult i32 %i.hv, 2
  br i1 %switch.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hw = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.258, i32 noundef %i.hv) #21 ; 0 uses
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #21
  %.pre179.i = load ptr, ptr @input, align 8, !tbaa !27
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.hx = phi ptr [ %i.ht, %bb.aw ], [ %.pre179.i, %bb.ax ], [ %i.ht, %bb.av ] ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4704
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !44 ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 4708
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !45
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %bb.ba, label %.thread281.i

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 2116
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !46
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ih = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.259) ; 0 uses
  %.pre180.i = load ptr, ptr @input, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert181.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre180.i, i64 4704
  %.pre182.pre.i = load i32, ptr %.phi.trans.insert181.phi.trans.insert.i, align 8, !tbaa !44
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pre182.i = phi i32 [ %.pre182.pre.i, %bb.bb ], [ %i.hz, %bb.ba ]
  %i.ii = phi ptr [ %.pre180.i, %bb.bb ], [ %i.hx, %bb.ba ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 2116
  store i32 1, ptr %i.ij, align 4, !tbaa !46
  %i.ik = icmp sgt i32 %.pre182.i, 0
  br i1 %i.ik, label %bb.bd, label %.thread281.i

bb.bd:                                            ; preds = %bb.bc
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 4712
  %i.im = load i32, ptr %i.il, align 8, !tbaa !47 ; 2 uses
  %switch141.i = icmp ult i32 %i.im, 2
  br i1 %switch141.i, label %.thread281.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.in = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.260, i32 noundef %i.im) #21 ; 0 uses
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #21
  %.pre183.i = load ptr, ptr @input, align 8, !tbaa !27
  br label %.thread281.i

.thread281.i:                                     ; preds = %bb.be, %bb.bd, %bb.bc, %bb.az
  %i.io = phi ptr [ %i.ii, %bb.bd ], [ %.pre183.i, %bb.be ], [ %i.ii, %bb.bc ], [ %i.hx, %bb.az ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4008
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !48 ; 2 uses
  %switch142.i = icmp ult i32 %i.iq, 2
  br i1 %switch142.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.thread281.i
  %i.ir = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.261, i32 noundef %i.iq) #21 ; 0 uses
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #21
  %.pre184.i = load ptr, ptr @input, align 8, !tbaa !27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread281.i
  %i.is = phi ptr [ %i.io, %.thread281.i ], [ %.pre184.i, %bb.bf ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 280
  %i.iu = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.it, i32 noundef 0) #21 ; 2 uses
  store i32 %i.iu, ptr @p_in, align 4, !tbaa !4
  %i.iv = icmp eq i32 %i.iu, -1
  br i1 %i.iv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.iw = load ptr, ptr @input, align 8, !tbaa !27
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 280
  %i.iy = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.ix) #21 ; 0 uses
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.iz = load ptr, ptr @input, align 8, !tbaa !27 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 792 ; 2 uses
  %char0.i = load i8, ptr %i.ja, align 1
  %.not68.i = icmp eq i8 %char0.i, 0
  br i1 %.not68.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jb = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.ja, i32 noundef 577, i32 noundef 384) #21 ; 2 uses
  store i32 %i.jb, ptr @p_dec, align 4, !tbaa !4
  %i.jc = icmp eq i32 %i.jb, -1
  %.pre186.i = load ptr, ptr @input, align 8, !tbaa !27 ; 2 uses
  br i1 %i.jc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jd = getelementptr inbounds nuw i8, ptr %.pre186.i, i64 792
  %i.je = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.263, ptr noundef nonnull %i.jd) #21 ; 0 uses
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #21
  %.pre185.i = load ptr, ptr @input, align 8, !tbaa !27
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.jf = phi ptr [ %.pre185.i, %bb.bk ], [ %.pre186.i, %bb.bj ], [ %i.iz, %bb.bi ] ; 8 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !49
  %i.ji = srem i32 %i.jh, 16                      ; 2 uses
  %.not69.i = icmp eq i32 %i.ji, 0
  %i.jj = sub nsw i32 16, %i.ji
  %.sink.i = select i1 %.not69.i, i32 0, i32 %i.jj ; 3 uses
  %i.jk = load ptr, ptr @img, align 8, !tbaa !27  ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 15584
  store i32 %.sink.i, ptr %i.jl, align 8, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 4704
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !44
  %.not70.i = icmp eq i32 %i.jn, 0
  br i1 %.not70.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 4708
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !45
  %.not71.i = icmp eq i32 %i.jp, 0
  br i1 %.not71.i, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 60
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !67 ; 2 uses
  %i.js = and i32 %i.jr, 1
  %.not73.i = icmp eq i32 %i.js, 0
  br i1 %.not73.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @error(ptr noundef nonnull @.str.264, i32 noundef 500) #21
  %.pre187.i = load ptr, ptr @input, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert188.i = getelementptr inbounds nuw i8, ptr %.pre187.i, i64 60
  %.pre189.i = load i32, ptr %.phi.trans.insert188.i, align 4, !tbaa !67
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jt = phi i32 [ %.pre189.i, %bb.bo ], [ %i.jr, %bb.bn ] ; 3 uses
  %i.ju = phi ptr [ %.pre187.i, %bb.bo ], [ %i.jf, %bb.bn ] ; 2 uses
  %i.jv = srem i32 %i.jt, 32                      ; 2 uses
  %.not74.i = icmp eq i32 %i.jv, 0
  br i1 %.not74.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jw = sub nsw i32 32, %i.jv
  %i.jx = load ptr, ptr @img, align 8, !tbaa !27  ; 2 uses
  %.phi.trans.insert191.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.jx, i64 15584
  %.pre192.i.pre = load i32, ptr %.phi.trans.insert191.i.phi.trans.insert, align 8, !tbaa !50
  br label %._crit_edge190.i
end_hunk_0
