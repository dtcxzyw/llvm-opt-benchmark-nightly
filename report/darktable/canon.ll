Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/canon?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN6LibRaw20parseCanonMakernotesEjjjj:bb.a

bb.x:                                             ; preds = %_ZN6LibRaw21_CanonConvertApertureEt.exit546, %bb.u
  %i.cv = phi float [ %.0.i543, %_ZN6LibRaw21_CanonConvertApertureEt.exit546 ], [ %i.cj, %bb.u ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 192696 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !136
  %i.cy = fcmp reassoc nsz arcp contract afn une float %i.cx, 0.000000e+00
  br i1 %i.cy, label %.thread595, label %bb.y

bb.y:                                             ; preds = %bb.x
  store float %i.cv, ptr %i.cw, align 8, !tbaa !136
  br label %.thread595

bb.z:                                             ; preds = %bb.a
  %i.cz = icmp eq i32 %1, 7
  %i.da = icmp eq i32 %4, 0                       ; 7 uses
  %or.cond = and i1 %i.cz, %i.da
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !88 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 153520
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !90
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call noundef ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %i.dd, i32 noundef 64), !call_target !141 ; 0 uses
  br label %.thread595

bb.ab:                                            ; preds = %bb.z
  %i.di = icmp eq i32 %1, 8
  %or.cond3 = and i1 %i.di, %i.da
  br i1 %or.cond3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dj = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 192712
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !132
  br label %.thread595

bb.ad:                                            ; preds = %bb.ab
  %i.dl = icmp eq i32 %1, 9
  %or.cond5 = and i1 %i.dl, %i.da
  br i1 %or.cond5, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !88 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 193404
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !90
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef i32 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.do, i64 noundef 64, i64 noundef 1), !call_target !148 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 193467
  store i8 0, ptr %i.dt, align 1, !tbaa !75
  br label %.thread595

bb.af:                                            ; preds = %bb.ad
  %i.du = add i32 %1, -12                         ; 2 uses
  %i.dv = tail call i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 31)
  switch i32 %i.dv, label %bb.ao [
    i32 0, label %bb.ag
    i32 24, label %bb.ah
    i32 13, label %bb.ah
    i32 3, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dw = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 5110
  %i.dy = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dx, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dw) #12 ; 0 uses
  br label %.thread595

bb.ah:                                            ; preds = %bb.af, %bb.af, %bb.af
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !149
  %.not526 = icmp eq i32 %i.ea, 0
  br i1 %.not526, label %bb.ai, label %.thread595

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 5 uses
  store i32 %1, ptr %i.eb, align 8, !tbaa !151
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !152
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4996
  store i16 %i.ee, ptr %i.ef, align 4, !tbaa !153
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 5004
  store i32 %3, ptr %i.eg, align 4, !tbaa !154
  %i.eh = tail call noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef %2)
  %.not527 = icmp eq i32 %i.eh, 0
  br i1 %.not527, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = tail call noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef %2)
  %i.ej = load i32, ptr %i.dz, align 8, !tbaa !149
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [24 x i8], ptr %i.eb, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !154
  %i.eo = mul i32 %i.en, %i.ei
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !154
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  switch i32 %1, label %..thread_crit_edge [
    i32 60, label %bb.al
    i32 38, label %bb.al
  ]

..thread_crit_edge:                               ; preds = %bb.ak
  %.pre709 = load i32, ptr %i.dz, align 8, !tbaa !149
  br label %.thread

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !88 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !90
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef i64 %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !call_target !157
  %i.eu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ev = load ptr, ptr %i.ec, align 8, !tbaa !88 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !90
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i64 noundef %i.et, i32 noundef 0), !call_target !99 ; 0 uses
  %.not528 = icmp eq i16 %i.eu, 0
  %.pre710 = load i32, ptr %i.dz, align 8, !tbaa !149 ; 3 uses
  br i1 %.not528, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = zext i16 %i.eu to i32
  %i.fb = sext i32 %.pre710 to i64
  %i.fc = getelementptr inbounds [24 x i8], ptr %i.eb, i64 %i.fb ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !154
  %i.ff = icmp eq i32 %i.fe, %i.fa
  br i1 %i.ff, label %.thread, label %bb.an

.thread:                                          ; preds = %..thread_crit_edge, %bb.am, %bb.al
  %i.fg = phi i32 [ %.pre709, %..thread_crit_edge ], [ %.pre710, %bb.am ], [ %.pre710, %bb.al ]
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [24 x i8], ptr %i.eb, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !154
  %i.fl = add i32 %i.fk, 1
  %i.fm = zext i32 %i.fl to i64
  %i.fn = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.fm, i64 noundef 1) ; 2 uses
  %i.fo = load i32, ptr %i.dz, align 8, !tbaa !149
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [24 x i8], ptr %i.eb, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store ptr %i.fn, ptr %i.fr, align 8, !tbaa !158
  %i.fs = load ptr, ptr %i.ec, align 8, !tbaa !88 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !154
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !90
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = tail call noundef i32 %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef %i.fn, i64 noundef %i.fv, i64 noundef 1), !call_target !148 ; 0 uses
  store i32 1, ptr %i.dz, align 8, !tbaa !149
  br label %.thread595

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fc, align 8, !tbaa !151
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i16 0, ptr %i.ga, align 4, !tbaa !153
  store i32 0, ptr %i.fd, align 4, !tbaa !154
  br label %.thread595

bb.ao:                                            ; preds = %bb.af
  %i.gb = icmp eq i32 %1, 41
  %or.cond13 = and i1 %i.gb, %i.da
  br i1 %or.cond13, label %bb.ap, label %bb.bn

bb.ap:                                            ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !88 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !90
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = tail call noundef i32 %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, i64 8), align 8, !tbaa !160
  %.not687 = icmp eq i32 %i.gi, 0
  br i1 %.not687, label %.preheader, label %_ZNK21libraw_static_table_tixEj.exit.lr.ph

_ZNK21libraw_static_table_tixEj.exit.lr.ph:       ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 8 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 2036
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 153252 ; 4 uses
  br label %_ZNK21libraw_static_table_tixEj.exit

._crit_edge:                                      ; preds = %.loopexit
  %i.gm = icmp eq i32 %.1489, 0
  br i1 %i.gm, label %.preheader, label %.thread595

.preheader:                                       ; preds = %bb.ap, %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.gp = load <4 x i32>, ptr %i.gn, align 8, !tbaa !102
  %i.gq = sitofp <4 x i32> %i.gp to <4 x float>
  store <4 x float> %i.gq, ptr %i.go, align 4, !tbaa !101
  br label %.thread595

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %_ZNK21libraw_static_table_tixEj.exit.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %_ZNK21libraw_static_table_tixEj.exit.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 13 uses
  %.0488682 = phi i32 [ 0, %_ZNK21libraw_static_table_tixEj.exit.lr.ph ], [ %.1489, %.loopexit ] ; 3 uses
  %i.gr = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !102
  %.not525 = icmp eq i32 %i.gt, 0
  br i1 %.not525, label %.loopexit, label %.preheader602

.preheader602:                                    ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.gu = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, i64 8), align 8, !tbaa !160 ; 2 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp samesign ult i64 %indvars.iv, %i.gw
  br i1 %i.gx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.preheader602
  %i.gy = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit551

bb.ar:                                            ; preds = %.preheader602
  %.not.i548 = icmp eq i32 %i.gv, 0
  br i1 %.not.i548, label %_ZNK21libraw_static_table_tixEj.exit551, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hb = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161 ; 2 uses
  %.not6.i549 = icmp eq ptr %i.hb, null
  br i1 %.not6.i549, label %_ZNK21libraw_static_table_tixEj.exit551, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit551

_ZNK21libraw_static_table_tixEj.exit551:          ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at
  %.0.i550 = phi i32 [ %i.ha, %bb.aq ], [ %i.hc, %bb.at ], [ 0, %bb.as ], [ 0, %bb.ar ]
  %i.hd = sext i32 %.0.i550 to i64
  %i.he = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 %i.gu, ptr %i.hf, align 4, !tbaa !102
  %i.hg = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, i64 8), align 8, !tbaa !160 ; 2 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = icmp samesign ult i64 %indvars.iv, %i.hi
  br i1 %i.hj, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551
  %.not.i548.1 = icmp eq i32 %i.hh, 0
  br i1 %.not.i548.1, label %_ZNK21libraw_static_table_tixEj.exit551.1, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hk = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161 ; 2 uses
  %.not6.i549.1 = icmp eq ptr %i.hk, null
  br i1 %.not6.i549.1, label %_ZNK21libraw_static_table_tixEj.exit551.1, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit551.1

bb.ax:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551
  %i.hm = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit551.1

_ZNK21libraw_static_table_tixEj.exit551.1:        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %.0.i550.1 = phi i32 [ %i.ho, %bb.ax ], [ %i.hl, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.au ]
  %i.hp = sext i32 %.0.i550.1 to i64
  %i.hq = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %i.hp
  store i32 %i.hg, ptr %i.hq, align 8, !tbaa !102
  %i.hr = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, i64 8), align 8, !tbaa !160 ; 2 uses
  %i.ht = zext i32 %i.hs to i64
  %i.hu = icmp samesign ult i64 %indvars.iv, %i.ht
  br i1 %i.hu, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551.1
  %.not.i548.2 = icmp eq i32 %i.hs, 0
  br i1 %.not.i548.2, label %_ZNK21libraw_static_table_tixEj.exit551.2, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hv = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161 ; 2 uses
  %.not6.i549.2 = icmp eq ptr %i.hv, null
  br i1 %.not6.i549.2, label %_ZNK21libraw_static_table_tixEj.exit551.2, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit551.2

bb.bb:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551.1
  %i.hx = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit551.2

_ZNK21libraw_static_table_tixEj.exit551.2:        ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.0.i550.2 = phi i32 [ %i.hz, %bb.bb ], [ %i.hw, %bb.ba ], [ 0, %bb.az ], [ 0, %bb.ay ]
  %i.ia = sext i32 %.0.i550.2 to i64
  %i.ib = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i32 %i.hr, ptr %i.ic, align 8, !tbaa !102
  %i.id = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ie = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, i64 8), align 8, !tbaa !160 ; 2 uses
  %i.if = zext i32 %i.ie to i64
  %i.ig = icmp samesign ult i64 %indvars.iv, %i.if
  br i1 %i.ig, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551.2
  %.not.i548.3 = icmp eq i32 %i.ie, 0
  br i1 %.not.i548.3, label %_ZNK21libraw_static_table_tixEj.exit551.3, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ih = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161 ; 2 uses
  %.not6.i549.3 = icmp eq ptr %i.ih, null
  br i1 %.not6.i549.3, label %_ZNK21libraw_static_table_tixEj.exit551.3, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit551.3

bb.bf:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551.2
  %i.ij = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit551.3

_ZNK21libraw_static_table_tixEj.exit551.3:        ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc
  %.0.i550.3 = phi i32 [ %i.il, %bb.bf ], [ %i.ii, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %i.im = sext i32 %.0.i550.3 to i64
  %i.in = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 %i.id, ptr %i.io, align 4, !tbaa !102
  %i.ip = load i32, ptr %i.gk, align 4, !tbaa !131 ; 2 uses
  %i.iq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Canon_wbi2stdE, i64 8), align 8, !tbaa !160 ; 2 uses
  %i.ir = icmp ult i32 %i.ip, %i.iq
  br i1 %i.ir, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551.3
  %i.is = load ptr, ptr @_ZN6LibRaw13Canon_wbi2stdE, align 8, !tbaa !161
  %i.it = zext i32 %i.ip to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit555

bb.bh:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551.3
  %.not.i552 = icmp eq i32 %i.iq, 0
  br i1 %.not.i552, label %_ZNK21libraw_static_table_tixEj.exit555, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iw = load ptr, ptr @_ZN6LibRaw13Canon_wbi2stdE, align 8, !tbaa !161 ; 2 uses
  %.not6.i553 = icmp eq ptr %i.iw, null
  br i1 %.not6.i553, label %_ZNK21libraw_static_table_tixEj.exit555, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit555

_ZNK21libraw_static_table_tixEj.exit555:          ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.0.i554 = phi i32 [ %i.iv, %bb.bg ], [ %i.ix, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.bh ] ; 2 uses
  %i.iy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, i64 8), align 8, !tbaa !160 ; 3 uses
  %i.iz = zext i32 %i.iy to i64
  %i.ja = icmp samesign ult i64 %indvars.iv, %i.iz
  br i1 %i.ja, label %_ZNK21libraw_static_table_tixEj.exit559.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit555
  %.not.i556 = icmp eq i32 %i.iy, 0
  br i1 %.not.i556, label %_ZNK21libraw_static_table_tixEj.exit559, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jb = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161 ; 2 uses
  %.not6.i557 = icmp eq ptr %i.jb, null
  br i1 %.not6.i557, label %_ZNK21libraw_static_table_tixEj.exit559, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !102
  br label %_ZNK21libraw_static_table_tixEj.exit559

_ZNK21libraw_static_table_tixEj.exit559:          ; preds = %bb.bk, %bb.bl, %bb.bm
  %.0.i558 = phi i32 [ 0, %bb.bk ], [ %i.jc, %bb.bm ], [ 0, %bb.bl ]
  %i.jd = icmp eq i32 %.0.i554, %.0.i558
  br i1 %i.jd, label %.preheader601, label %.loopexit

_ZNK21libraw_static_table_tixEj.exit559.thread:   ; preds = %_ZNK21libraw_static_table_tixEj.exit555
  %i.je = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8, !tbaa !161
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !102
  %i.jh = icmp eq i32 %.0.i554, %i.jg
  br i1 %i.jh, label %.preheader601.split.us, label %.loopexit

.preheader601:                                    ; preds = %_ZNK21libraw_static_table_tixEj.exit559
  %i.ji = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8 ; 2 uses
  %.not.i560 = icmp eq i32 %i.iy, 0
  br i1 %.not.i560, label %_ZNK21libraw_static_table_tixEj.exit563.us677.preheader, label %.preheader601.split.split

.preheader601.split.us:                           ; preds = %_ZNK21libraw_static_table_tixEj.exit559.thread
  %i.jj = load ptr, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, align 8
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !102
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %i.jm
  %i.jo = load <4 x i32>, ptr %i.jn, align 8, !tbaa !102
  %i.jp = sitofp <4 x i32> %i.jo to <4 x float>
  store <4 x float> %i.jp, ptr %i.gl, align 4, !tbaa !101
  br label %.loopexit

_ZNK21libraw_static_table_tixEj.exit563.us677.preheader: ; preds = %.preheader601
  %i.jq = load <4 x i32>, ptr %i.gj, align 8, !tbaa !102
  %i.jr = sitofp <4 x i32> %i.jq to <4 x float>
  store <4 x float> %i.jr, ptr %i.gl, align 4, !tbaa !101
  br label %.loopexit

.preheader601.split.split:                        ; preds = %.preheader601
  %.not6.i561 = icmp eq ptr %i.ji, null
  br i1 %.not6.i561, label %_ZNK21libraw_static_table_tixEj.exit563.us680.preheader, label %.preheader601.split.split.split

_ZNK21libraw_static_table_tixEj.exit563.us680.preheader: ; preds = %.preheader601.split.split
  %i.js = load <4 x i32>, ptr %i.gj, align 8, !tbaa !102
  %i.jt = sitofp <4 x i32> %i.js to <4 x float>
  store <4 x float> %i.jt, ptr %i.gl, align 4, !tbaa !101
  br label %.loopexit

.preheader601.split.split.split:                  ; preds = %.preheader601.split.split
  %i.ju = load i32, ptr %i.ji, align 4, !tbaa !102
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %i.jv
  %i.jx = load <4 x i32>, ptr %i.jw, align 8, !tbaa !102
  %i.jy = sitofp <4 x i32> %i.jx to <4 x float>
  store <4 x float> %i.jy, ptr %i.gl, align 4, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK21libraw_static_table_tixEj.exit559.thread, %.preheader601.split.split.split, %_ZNK21libraw_static_table_tixEj.exit563.us680.preheader, %_ZNK21libraw_static_table_tixEj.exit563.us677.preheader, %.preheader601.split.us, %_ZNK21libraw_static_table_tixEj.exit559, %_ZNK21libraw_static_table_tixEj.exit
  %.1489 = phi i32 [ %.0488682, %_ZNK21libraw_static_table_tixEj.exit ], [ %.0488682, %_ZNK21libraw_static_table_tixEj.exit559 ], [ 1, %.preheader601.split.us ], [ 1, %_ZNK21libraw_static_table_tixEj.exit563.us680.preheader ], [ 1, %_ZNK21libraw_static_table_tixEj.exit563.us677.preheader ], [ 1, %.preheader601.split.split.split ], [ %.0488682, %_ZNK21libraw_static_table_tixEj.exit559.thread ] ; 2 uses
  %i.jz = load ptr, ptr %i.gc, align 8, !tbaa !88 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !90
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = tail call noundef i32 %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, i64 noundef 16, i32 noundef 1), !call_target !99 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw26Canon_G9_linenums_2_StdWBiE, i64 8), align 8, !tbaa !160
  %i.kf = zext i32 %i.ke to i64
  %i.kg = icmp samesign ult i64 %indvars.iv.next, %i.kf
  br i1 %i.kg, label %_ZNK21libraw_static_table_tixEj.exit, label %._crit_edge, !llvm.loop !127

bb.bn:                                            ; preds = %bb.ao
  %i.kh = icmp eq i32 %1, 129
  %or.cond15 = and i1 %i.kh, %i.da
  br i1 %or.cond15, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ki = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.kj = zext i32 %i.ki to i64                   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 %i.kj, ptr %i.kl, align 8, !tbaa !162
  %i.km = load ptr, ptr %i.kk, align 8, !tbaa !88 ; 2 uses
  %i.kn = add nuw nsw i64 %i.kj, 41
  %i.ko = load ptr, ptr %i.km, align 8, !tbaa !90
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = tail call noundef i32 %i.kq(ptr noundef nonnull align 8 dereferenceable(8) %i.km, i64 noundef %i.kn, i32 noundef 0), !call_target !99 ; 0 uses
  %i.ks = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.kt = shl i16 %i.ks, 1
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.kt, ptr %i.ku, align 8, !tbaa !163
  %i.kv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !164
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.kx, align 8, !tbaa !165
  br label %.thread595

bb.bp:                                            ; preds = %bb.bn
  switch i32 %1, label %bb.cn [
    i32 147, label %bb.bq
    i32 149, label %bb.bs
    i32 154, label %bb.cg
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 2 uses
  %i.kz = load i16, ptr %i.ky, align 8, !tbaa !166
  %.not523 = icmp eq i16 %i.kz, 0
  br i1 %.not523, label %bb.br, label %.thread595

bb.br:                                            ; preds = %bb.bq
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !88 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !90
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = tail call noundef i32 %i.le(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i64 noundef 122, i32 noundef 1), !call_target !99 ; 0 uses
  %i.lg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.lg, ptr %i.ky, align 8, !tbaa !166
  br label %.thread595

bb.bs:                                            ; preds = %bb.bp
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 17 uses
  %i.li = load i8, ptr %i.lh, align 8, !tbaa !75
  %.not = icmp eq i8 %i.li, 0
  br i1 %.not, label %bb.bt, label %.thread595

bb.bt:                                            ; preds = %bb.bs
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !88 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !90
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = tail call noundef i32 %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, ptr noundef nonnull %i.lh, i64 noundef 64, i64 noundef 1), !call_target !148 ; 0 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1271
  store i8 0, ptr %i.lp, align 1, !tbaa !75
  %i.lq = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lh, ptr noundef nonnull dereferenceable(5) @.str.1, i64 noundef 4) #11
  %.not508 = icmp eq i32 %i.lq, 0
  br i1 %.not508, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.lr, ptr noundef nonnull align 4 dereferenceable(60) %i.ls, i64 60, i1 false)
  store i8 32, ptr %i.ls, align 4, !tbaa !75
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.lu = load i32, ptr %i.lh, align 8
  store i32 %i.lu, ptr %i.lt, align 2
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 4, ptr %i.lv, align 2, !tbaa !86
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 1, ptr %i.lw, align 8, !tbaa !87
  br label %.thread595

bb.bv:                                            ; preds = %bb.bt
  %i.lx = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lh, ptr noundef nonnull dereferenceable(5) @.str.2, i64 noundef 4) #11
  %.not509 = icmp eq i32 %i.lx, 0
  br i1 %.not509, label %bb.bw, label %sub_0

bb.bw:                                            ; preds = %bb.bv
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.ly, ptr noundef nonnull align 4 dereferenceable(60) %i.lz, i64 60, i1 false)
  store i8 32, ptr %i.lz, align 4, !tbaa !75
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.mb = load i32, ptr %i.lh, align 8
  store i32 %i.mb, ptr %i.ma, align 2
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 3, ptr %i.mc, align 2, !tbaa !86
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 1, ptr %i.md, align 8, !tbaa !87
  br label %.thread595

sub_0:                                            ; preds = %bb.bv
  %i.me = load i8, ptr %i.lh, align 8             ; 2 uses
  %.not685 = icmp eq i8 %i.me, 69
  br i1 %.not685, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 1209
  %i.mg = load i8, ptr %i.mf, align 1
  %i.mh = icmp eq i8 %i.mg, 70
  br i1 %i.mh, label %bb.bx, label %.tail.thread

bb.bx:                                            ; preds = %.tail
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1211
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 1210 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.mi, ptr noundef nonnull align 2 dereferenceable(62) %i.mj, i64 62, i1 false)
  store i8 32, ptr %i.mj, align 2, !tbaa !75
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.ml = load i16, ptr %i.lh, align 8
  store i16 %i.ml, ptr %i.mk, align 2
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 5, ptr %i.mm, align 2, !tbaa !86
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.mn, align 8, !tbaa !87
  br label %.thread595

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.mo = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lh, ptr noundef nonnull dereferenceable(5) @.str.4, i64 noundef 4) #11
  %.not511 = icmp eq i32 %i.mo, 0
  br i1 %.not511, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.tail.thread
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.mp, ptr noundef nonnull align 4 dereferenceable(60) %i.mq, i64 60, i1 false)
  store i8 32, ptr %i.mq, align 4, !tbaa !75
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.ms = load i32, ptr %i.lh, align 8
  store i32 %i.ms, ptr %i.mr, align 2
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 5, ptr %i.mt, align 2, !tbaa !86
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.mu, align 8, !tbaa !87
  br label %.thread595

bb.bz:                                            ; preds = %.tail.thread
  %i.mv = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lh, ptr noundef nonnull dereferenceable(5) @.str.5, i64 noundef 4) #11
  %.not512 = icmp eq i32 %i.mv, 0
  br i1 %.not512, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.mw, ptr noundef nonnull align 4 dereferenceable(60) %i.mx, i64 60, i1 false)
  store i8 32, ptr %i.mx, align 4, !tbaa !75
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.mz = load i32, ptr %i.lh, align 8
  store i32 %i.mz, ptr %i.my, align 2
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 5, ptr %i.na, align 2, !tbaa !86
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.nb, align 8, !tbaa !87
  br label %.thread595

bb.cb:                                            ; preds = %bb.bz
  %i.nc = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lh, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 4) #11
  %.not513 = icmp eq i32 %i.nc, 0
  br i1 %.not513, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.nd, ptr noundef nonnull align 4 dereferenceable(60) %i.ne, i64 60, i1 false)
  store i8 32, ptr %i.ne, align 4, !tbaa !75
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.ng = load i32, ptr %i.lh, align 8
  store i32 %i.ng, ptr %i.nf, align 2
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 5, ptr %i.nh, align 2, !tbaa !86
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.ni, align 8, !tbaa !87
end_hunk_0
begin_hunk_1_@_ZN6LibRaw20parseCanonMakernotesEjjjj:bb.a
  store i32 %i.aah, ptr %i.aai, align 4, !tbaa !102
  %i.aaj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aak = zext i16 %i.aaj to i32
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.aak, ptr %i.aal, align 8, !tbaa !102
  %i.aam = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aan = add nsw i64 %i.rh, 226
  %i.aao = load ptr, ptr %i.aam, align 8, !tbaa !90
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 32
  %i.aaq = load ptr, ptr %i.aap, align 8
  %i.aar = tail call noundef i32 %i.aaq(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, i64 noundef %i.aan, i32 noundef 0), !call_target !99 ; 0 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 188664
  %i.aat = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aau = zext i16 %i.aat to i32
  store i32 %i.aau, ptr %i.aas, align 8, !tbaa !102
  %i.aav = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 188668
  store i32 %i.aaw, ptr %i.aax, align 4, !tbaa !102
  %i.aay = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aaz = zext i16 %i.aay to i32
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 188676
  store i32 %i.aaz, ptr %i.aba, align 4, !tbaa !102
  %i.abb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abc = zext i16 %i.abb to i32
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 188672
  store i32 %i.abc, ptr %i.abd, align 8, !tbaa !102
  %i.abe = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.abf = add nsw i64 %i.rh, 236
  %i.abg = load ptr, ptr %i.abe, align 8, !tbaa !90
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abi = load ptr, ptr %i.abh, align 8
  %i.abj = tail call noundef i32 %i.abi(ptr noundef nonnull align 8 dereferenceable(8) %i.abe, i64 noundef %i.abf, i32 noundef 0), !call_target !99 ; 0 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 188680
  %i.abl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abm = zext i16 %i.abl to i32
  store i32 %i.abm, ptr %i.abk, align 8, !tbaa !102
  %i.abn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abo = zext i16 %i.abn to i32
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 188684
  store i32 %i.abo, ptr %i.abp, align 4, !tbaa !102
  %i.abq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abr = zext i16 %i.abq to i32
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 188692
  store i32 %i.abr, ptr %i.abs, align 4, !tbaa !102
  %i.abt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.abu = zext i16 %i.abt to i32
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 188688
  store i32 %i.abu, ptr %i.abv, align 8, !tbaa !102
  %i.abw = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.abx = add nsw i64 %i.rh, 246
  %i.aby = load ptr, ptr %i.abw, align 8, !tbaa !90
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.aca = load ptr, ptr %i.abz, align 8
  %i.acb = tail call noundef i32 %i.aca(ptr noundef nonnull align 8 dereferenceable(8) %i.abw, i64 noundef %i.abx, i32 noundef 0), !call_target !99 ; 0 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 188696
  %i.acd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ace = zext i16 %i.acd to i32
  store i32 %i.ace, ptr %i.acc, align 8, !tbaa !102
  %i.acf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acg = zext i16 %i.acf to i32
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 188700
  store i32 %i.acg, ptr %i.ach, align 4, !tbaa !102
  %i.aci = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acj = zext i16 %i.aci to i32
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 188708
  store i32 %i.acj, ptr %i.ack, align 4, !tbaa !102
  %i.acl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acm = zext i16 %i.acl to i32
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 188704
  store i32 %i.acm, ptr %i.acn, align 8, !tbaa !102
  %i.aco = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.acp = add nsw i64 %i.rh, 256
  %i.acq = load ptr, ptr %i.aco, align 8, !tbaa !90
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 32
  %i.acs = load ptr, ptr %i.acr, align 8
  %i.act = tail call noundef i32 %i.acs(ptr noundef nonnull align 8 dereferenceable(8) %i.aco, i64 noundef %i.acp, i32 noundef 0), !call_target !99 ; 0 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 188552
  %i.acv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acw = zext i16 %i.acv to i32
  store i32 %i.acw, ptr %i.acu, align 8, !tbaa !102
  %i.acx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.acy = zext i16 %i.acx to i32
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 188556
  store i32 %i.acy, ptr %i.acz, align 4, !tbaa !102
  %i.ada = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adb = zext i16 %i.ada to i32
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 188564
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !102
  %i.add = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ade = zext i16 %i.add to i32
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 188560
  store i32 %i.ade, ptr %i.adf, align 8, !tbaa !102
  %i.adg = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.adh = add nsw i64 %i.rh, 156
  %i.adi = load ptr, ptr %i.adg, align 8, !tbaa !90
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 32
  %i.adk = load ptr, ptr %i.adj, align 8
  %i.adl = tail call noundef i32 %i.adk(ptr noundef nonnull align 8 dereferenceable(8) %i.adg, i64 noundef %i.adh, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.adm = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.adn = add nsw i64 %i.rh, 266
  %i.ado = load ptr, ptr %i.adm, align 8, !tbaa !90
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 32
  %i.adq = load ptr, ptr %i.adp, align 8
  %i.adr = tail call noundef i32 %i.adq(ptr noundef nonnull align 8 dereferenceable(8) %i.adm, i64 noundef %i.adn, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.ads = add nsw i64 %i.rh, 392
  br label %bb.du

bb.da:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 4, ptr %i.adt, align 8, !tbaa !176
  %i.adu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.adv = zext i16 %i.adu to i32
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !103
  %i.adx = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ady = add nsw i64 %i.rh, 126
  %i.adz = load ptr, ptr %i.adx, align 8, !tbaa !90
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  %i.aeb = load ptr, ptr %i.aea, align 8
  %i.aec = tail call noundef i32 %i.aeb(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, i64 noundef %i.ady, i32 noundef 0), !call_target !99 ; 0 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.aee = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aef = uitofp reassoc nsz arcp contract afn i16 %i.aee to float
  store float %i.aef, ptr %i.aed, align 4, !tbaa !101
  %i.aeg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeh = uitofp reassoc nsz arcp contract afn i16 %i.aeg to float
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aeh, ptr %i.aei, align 8, !tbaa !101
  %i.aej = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aek = uitofp reassoc nsz arcp contract afn i16 %i.aej to float
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aek, ptr %i.ael, align 8, !tbaa !101
  %i.aem = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aen = uitofp reassoc nsz arcp contract afn i16 %i.aem to float
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aen, ptr %i.aeo, align 4, !tbaa !101
  %i.aep = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aer = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aes = zext i16 %i.aer to i32
  store i32 %i.aes, ptr %i.aeq, align 8, !tbaa !102
  %i.aet = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aeu = zext i16 %i.aet to i32
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aeu, ptr %i.aev, align 4, !tbaa !102
  %i.aew = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aex = zext i16 %i.aew to i32
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aex, ptr %i.aey, align 4, !tbaa !102
  %i.aez = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afa = zext i16 %i.aez to i32
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.afa, ptr %i.afb, align 8, !tbaa !102
  %i.afc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.afe = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aff = zext i16 %i.afe to i32
  store i32 %i.aff, ptr %i.afd, align 8, !tbaa !102
  %i.afg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afh = zext i16 %i.afg to i32
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.afh, ptr %i.afi, align 4, !tbaa !102
  %i.afj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afk = zext i16 %i.afj to i32
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.afk, ptr %i.afl, align 4, !tbaa !102
  %i.afm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.afn = zext i16 %i.afm to i32
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.afn, ptr %i.afo, align 8, !tbaa !102
  %i.afp = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.afq = add nsw i64 %i.rh, 156
  %i.afr = load ptr, ptr %i.afp, align 8, !tbaa !90
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  %i.aft = load ptr, ptr %i.afs, align 8
  %i.afu = tail call noundef i32 %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afp, i64 noundef %i.afq, i32 noundef 0), !call_target !99 ; 0 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.afw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.afw, ptr %i.afv, align 2, !tbaa !74
  %i.afx = uitofp reassoc nsz arcp contract afn i16 %i.afw to float ; 2 uses
  %i.afy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.afy, ptr %i.afz, align 4, !tbaa !74
  %i.aga = uitofp reassoc nsz arcp contract afn i16 %i.afy to float ; 2 uses
  %i.agb = fcmp reassoc nsz arcp contract afn olt float %i.afx, %i.aga
  %spec.select.1 = select nsz i1 %i.agb, float %i.aga, float %i.afx ; 2 uses
  %i.agc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.agc, ptr %i.agd, align 8, !tbaa !74
  %i.age = uitofp reassoc nsz arcp contract afn i16 %i.agc to float ; 2 uses
  %i.agf = fcmp reassoc nsz arcp contract afn olt float %spec.select.1, %i.age
  %spec.select.2 = select nsz i1 %i.agf, float %i.age, float %spec.select.1 ; 2 uses
  %i.agg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.agh = load i16, ptr %i.agd, align 8, !tbaa !74
  %i.agi = load <4 x i16>, ptr %i.afv, align 2
  %i.agj = insertelement <4 x i16> %i.agi, i16 %i.agg, i64 2
  %i.agk = insertelement <4 x i16> %i.agj, i16 %i.agh, i64 3
  %i.agl = uitofp <4 x i16> %i.agk to <4 x float> ; 2 uses
  %i.agm = extractelement <4 x float> %i.agl, i64 2 ; 2 uses
  %i.agn = fcmp reassoc nsz arcp contract afn olt float %spec.select.2, %i.agm
  %spec.select.3 = select nsz i1 %i.agn, float %i.agm, float %spec.select.2
  %i.ago = fmul reassoc nnan nsz arcp contract afn float %spec.select.3, f0x3A800000
  %i.agp = insertelement <4 x float> poison, float %i.ago, i64 0
  %i.agq = shufflevector <4 x float> %i.agp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agr = fmul reassoc nsz arcp contract afn <4 x float> %i.agq, %i.agl
  %i.ags = fptoui <4 x float> %i.agr to <4 x i16>
  store <4 x i16> %i.ags, ptr %i.afv, align 2, !tbaa !74
  %i.agt = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.agu = add nsw i64 %i.rh, 166
  %i.agv = load ptr, ptr %i.agt, align 8, !tbaa !90
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 32
  %i.agx = load ptr, ptr %i.agw, align 8
  %i.agy = tail call noundef i32 %i.agx(ptr noundef nonnull align 8 dereferenceable(8) %i.agt, i64 noundef %i.agu, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.agz = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aha = add nsw i64 %i.rh, 336
  %i.ahb = load ptr, ptr %i.agz, align 8, !tbaa !90
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 32
  %i.ahd = load ptr, ptr %i.ahc, align 8
  %i.ahe = tail call noundef i32 %i.ahd(ptr noundef nonnull align 8 dereferenceable(8) %i.agz, i64 noundef %i.aha, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.ahf = load i32, ptr %i.adw, align 4, !tbaa !103
  switch i32 %i.ahf, label %bb.de [
    i32 4, label %bb.db
    i32 5, label %bb.db
    i32 6, label %bb.dc
    i32 7, label %bb.dc
    i32 9, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da, %bb.da
  %i.ahg = add nsw i64 %i.rh, 1384
  %i.ahh = add nsw i64 %i.rh, 1392
  br label %bb.du

bb.dc:                                            ; preds = %bb.da, %bb.da
  %i.ahi = add nsw i64 %i.rh, 1430
  %i.ahj = add nsw i64 %i.rh, 1438
  br label %bb.du

bb.dd:                                            ; preds = %bb.da
  %i.ahk = add nsw i64 %i.rh, 1438
  %i.ahl = add nsw i64 %i.rh, 1446
  br label %bb.du

bb.de:                                            ; preds = %bb.da
  %i.ahm = add nsw i64 %i.rh, 462
  br label %bb.du

bb.df:                                            ; preds = %bb.cw
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 5, ptr %i.ahn, align 8, !tbaa !176
  %i.aho = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahp = zext i16 %i.aho to i32
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.ahp, ptr %i.ahq, align 4, !tbaa !103
  %i.ahr = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ahs = add nsw i64 %i.rh, 142
  %i.aht = load ptr, ptr %i.ahr, align 8, !tbaa !90
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 32
  %i.ahv = load ptr, ptr %i.ahu, align 8
  %i.ahw = tail call noundef i32 %i.ahv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahr, i64 noundef %i.ahs, i32 noundef 0), !call_target !99 ; 0 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ahy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahz = uitofp reassoc nsz arcp contract afn i16 %i.ahy to float
  store float %i.ahz, ptr %i.ahx, align 4, !tbaa !101
  %i.aia = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aib = uitofp reassoc nsz arcp contract afn i16 %i.aia to float
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aib, ptr %i.aic, align 8, !tbaa !101
  %i.aid = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aie = uitofp reassoc nsz arcp contract afn i16 %i.aid to float
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aie, ptr %i.aif, align 8, !tbaa !101
  %i.aig = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aih = uitofp reassoc nsz arcp contract afn i16 %i.aig to float
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aih, ptr %i.aii, align 4, !tbaa !101
  %i.aij = load i32, ptr %i.ahq, align 4, !tbaa !103
  switch i32 %i.aij, label %.thread587 [
    i32 65532, label %bb.dg
    i32 65533, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.aik = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ail = add nsw i64 %i.rh, 158
  %i.aim = load ptr, ptr %i.aik, align 8, !tbaa !90
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 32
  %i.aio = load ptr, ptr %i.ain, align 8
  %i.aip = tail call noundef i32 %i.aio(ptr noundef nonnull align 8 dereferenceable(8) %i.aik, i64 noundef %i.ail, i32 noundef 0), !call_target !99 ; 0 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.air = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ais = zext i16 %i.air to i32
  store i32 %i.ais, ptr %i.aiq, align 8, !tbaa !102
  %i.ait = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aiu = zext i16 %i.ait to i32
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aiu, ptr %i.aiv, align 4, !tbaa !102
  %i.aiw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aix = zext i16 %i.aiw to i32
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aix, ptr %i.aiy, align 4, !tbaa !102
  %i.aiz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aja = zext i16 %i.aiz to i32
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.aja, ptr %i.ajb, align 8, !tbaa !102
  %i.ajc = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !90
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 32
  %i.ajf = load ptr, ptr %i.aje, align 8
  %i.ajg = tail call noundef i32 %i.ajf(ptr noundef nonnull align 8 dereferenceable(8) %i.ajc, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.aji = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajj = zext i16 %i.aji to i32
  store i32 %i.ajj, ptr %i.ajh, align 8, !tbaa !102
  %i.ajk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajl = zext i16 %i.ajk to i32
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.ajl, ptr %i.ajm, align 4, !tbaa !102
  %i.ajn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajo = zext i16 %i.ajn to i32
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ajo, ptr %i.ajp, align 4, !tbaa !102
  %i.ajq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ajr = zext i16 %i.ajq to i32
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.ajr, ptr %i.ajs, align 8, !tbaa !102
  %i.ajt = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !90
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 32
  %i.ajw = load ptr, ptr %i.ajv, align 8
  %i.ajx = tail call noundef i32 %i.ajw(ptr noundef nonnull align 8 dereferenceable(8) %i.ajt, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 191304
  %i.ajz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aka = zext i16 %i.ajz to i32
  store i32 %i.aka, ptr %i.ajy, align 8, !tbaa !102
  %i.akb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akc = zext i16 %i.akb to i32
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 191308
  store i32 %i.akc, ptr %i.akd, align 4, !tbaa !102
  %i.ake = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akf = zext i16 %i.ake to i32
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 191316
  store i32 %i.akf, ptr %i.akg, align 4, !tbaa !102
  %i.akh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aki = zext i16 %i.akh to i32
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 191312
  store i32 %i.aki, ptr %i.akj, align 8, !tbaa !102
  %i.akk = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !90
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 32
  %i.akn = load ptr, ptr %i.akm, align 8
  %i.ako = tail call noundef i32 %i.akn(ptr noundef nonnull align 8 dereferenceable(8) %i.akk, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8, i32 noundef 24)
  %i.akp = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !90
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 32
  %i.aks = load ptr, ptr %i.akr, align 8
  %i.akt = tail call noundef i32 %i.aks(ptr noundef nonnull align 8 dereferenceable(8) %i.akp, i64 noundef 168, i32 noundef 1), !call_target !99 ; 0 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 187464
  %i.akv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akw = zext i16 %i.akv to i32
  store i32 %i.akw, ptr %i.aku, align 8, !tbaa !102
  %i.akx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aky = zext i16 %i.akx to i32
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 187468
  store i32 %i.aky, ptr %i.akz, align 4, !tbaa !102
  %i.ala = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alb = zext i16 %i.ala to i32
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 187476
  store i32 %i.alb, ptr %i.alc, align 4, !tbaa !102
  %i.ald = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ale = zext i16 %i.ald to i32
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 187472
  store i32 %i.ale, ptr %i.alf, align 8, !tbaa !102
  %i.alg = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !90
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 32
  %i.alj = load ptr, ptr %i.ali, align 8
  %i.alk = tail call noundef i32 %i.alj(ptr noundef nonnull align 8 dereferenceable(8) %i.alg, i64 noundef 24, i32 noundef 1), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 2)
  %i.all = add nsw i64 %i.rh, 666
  %i.alm = add nsw i64 %i.rh, 2770
  br label %bb.du

bb.dh:                                            ; preds = %bb.df
  %i.aln = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.alo = add nsw i64 %i.rh, 152
  %i.alp = load ptr, ptr %i.aln, align 8, !tbaa !90
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 32
  %i.alr = load ptr, ptr %i.alq, align 8
  %i.als = tail call noundef i32 %i.alr(ptr noundef nonnull align 8 dereferenceable(8) %i.aln, i64 noundef %i.alo, i32 noundef 0), !call_target !99 ; 0 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.alu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alv = zext i16 %i.alu to i32
  store i32 %i.alv, ptr %i.alt, align 8, !tbaa !102
  %i.alw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.alx = zext i16 %i.alw to i32
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.alx, ptr %i.aly, align 4, !tbaa !102
  %i.alz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ama = zext i16 %i.alz to i32
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.ama, ptr %i.amb, align 4, !tbaa !102
  %i.amc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amd = zext i16 %i.amc to i32
  %i.ame = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.amd, ptr %i.ame, align 8, !tbaa !102
  %i.amf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.amh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ami = zext i16 %i.amh to i32
  store i32 %i.ami, ptr %i.amg, align 8, !tbaa !102
  %i.amj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amk = zext i16 %i.amj to i32
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.amk, ptr %i.aml, align 4, !tbaa !102
  %i.amm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amn = zext i16 %i.amm to i32
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.amn, ptr %i.amo, align 4, !tbaa !102
  %i.amp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amq = zext i16 %i.amp to i32
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.amq, ptr %i.amr, align 8, !tbaa !102
  %i.ams = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 191304
  %i.amu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amv = zext i16 %i.amu to i32
  store i32 %i.amv, ptr %i.amt, align 8, !tbaa !102
  %i.amw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.amx = zext i16 %i.amw to i32
  %i.amy = getelementptr inbounds nuw i8, ptr %0, i64 191308
  store i32 %i.amx, ptr %i.amy, align 4, !tbaa !102
  %i.amz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ana = zext i16 %i.amz to i32
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 191316
  store i32 %i.ana, ptr %i.anb, align 4, !tbaa !102
  %i.anc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.and = zext i16 %i.anc to i32
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 191312
  store i32 %i.and, ptr %i.ane, align 8, !tbaa !102
  %i.anf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.ang = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.anh = add nsw i64 %i.rh, 372
  %i.ani = load ptr, ptr %i.ang, align 8, !tbaa !90
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 32
  %i.ank = load ptr, ptr %i.anj, align 8
  %i.anl = tail call noundef i32 %i.ank(ptr noundef nonnull align 8 dereferenceable(8) %i.ang, i64 noundef %i.anh, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 2)
  %i.anm = add nsw i64 %i.rh, 528
  br label %bb.du

bb.di:                                            ; preds = %bb.cw, %bb.cw
  %i.ann = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 6, ptr %i.ann, align 8, !tbaa !176
  %i.ano = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anp = zext i16 %i.ano to i32
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.anp, ptr %i.anq, align 4, !tbaa !103
  %i.anr = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ans = add nsw i64 %i.rh, 126
  %i.ant = load ptr, ptr %i.anr, align 8, !tbaa !90
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 32
  %i.anv = load ptr, ptr %i.anu, align 8
  %i.anw = tail call noundef i32 %i.anv(ptr noundef nonnull align 8 dereferenceable(8) %i.anr, i64 noundef %i.ans, i32 noundef 0), !call_target !99 ; 0 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.any = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.anz = uitofp reassoc nsz arcp contract afn i16 %i.any to float
  store float %i.anz, ptr %i.anx, align 4, !tbaa !101
  %i.aoa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aob = uitofp reassoc nsz arcp contract afn i16 %i.aoa to float
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.aob, ptr %i.aoc, align 8, !tbaa !101
  %i.aod = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoe = uitofp reassoc nsz arcp contract afn i16 %i.aod to float
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.aoe, ptr %i.aof, align 8, !tbaa !101
  %i.aog = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoh = uitofp reassoc nsz arcp contract afn i16 %i.aog to float
  %i.aoi = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aoh, ptr %i.aoi, align 4, !tbaa !101
  %i.aoj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.aol = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aom = zext i16 %i.aol to i32
  store i32 %i.aom, ptr %i.aok, align 8, !tbaa !102
  %i.aon = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoo = zext i16 %i.aon to i32
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.aoo, ptr %i.aop, align 4, !tbaa !102
  %i.aoq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aor = zext i16 %i.aoq to i32
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.aor, ptr %i.aos, align 4, !tbaa !102
  %i.aot = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aou = zext i16 %i.aot to i32
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.aou, ptr %i.aov, align 8, !tbaa !102
  %i.aow = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.aoy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aoz = zext i16 %i.aoy to i32
  store i32 %i.aoz, ptr %i.aox, align 8, !tbaa !102
  %i.apa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.apb = zext i16 %i.apa to i32
  %i.apc = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.apb, ptr %i.apc, align 4, !tbaa !102
  %i.apd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ape = zext i16 %i.apd to i32
  %i.apf = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ape, ptr %i.apf, align 4, !tbaa !102
  %i.apg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aph = zext i16 %i.apg to i32
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.aph, ptr %i.api, align 8, !tbaa !102
  %i.apj = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.apk = add nsw i64 %i.rh, 196
  %i.apl = load ptr, ptr %i.apj, align 8, !tbaa !90
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 32
  %i.apn = load ptr, ptr %i.apm, align 8
  %i.apo = tail call noundef i32 %i.apn(ptr noundef nonnull align 8 dereferenceable(8) %i.apj, i64 noundef %i.apk, i32 noundef 0), !call_target !99 ; 0 uses
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.apq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.apq, ptr %i.app, align 2, !tbaa !74
  %i.apr = uitofp reassoc nsz arcp contract afn i16 %i.apq to float ; 2 uses
  %i.aps = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.aps, ptr %i.apt, align 4, !tbaa !74
  %i.apu = uitofp reassoc nsz arcp contract afn i16 %i.aps to float ; 2 uses
  %i.apv = fcmp reassoc nsz arcp contract afn olt float %i.apr, %i.apu
  %spec.select535.1 = select nsz i1 %i.apv, float %i.apu, float %i.apr ; 2 uses
  %i.apw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.apw, ptr %i.apx, align 8, !tbaa !74
  %i.apy = uitofp reassoc nsz arcp contract afn i16 %i.apw to float ; 2 uses
  %i.apz = fcmp reassoc nsz arcp contract afn olt float %spec.select535.1, %i.apy
  %spec.select535.2 = select nsz i1 %i.apz, float %i.apy, float %spec.select535.1 ; 2 uses
  %i.aqa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aqb = load i16, ptr %i.apx, align 8, !tbaa !74
  %i.aqc = load <4 x i16>, ptr %i.app, align 2
  %i.aqd = insertelement <4 x i16> %i.aqc, i16 %i.aqa, i64 2
  %i.aqe = insertelement <4 x i16> %i.aqd, i16 %i.aqb, i64 3
  %i.aqf = uitofp <4 x i16> %i.aqe to <4 x float> ; 2 uses
  %i.aqg = extractelement <4 x float> %i.aqf, i64 2 ; 2 uses
  %i.aqh = fcmp reassoc nsz arcp contract afn olt float %spec.select535.2, %i.aqg
  %spec.select535.3 = select nsz i1 %i.aqh, float %i.aqg, float %spec.select535.2
  %i.aqi = fmul reassoc nnan nsz arcp contract afn float %spec.select535.3, f0x3A800000
  %i.aqj = insertelement <4 x float> poison, float %i.aqi, i64 0
  %i.aqk = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aql = fmul reassoc nsz arcp contract afn <4 x float> %i.aqk, %i.aqf
  %i.aqm = fptoui <4 x float> %i.aql to <4 x i16>
  store <4 x i16> %i.aqm, ptr %i.app, align 2, !tbaa !74
  %i.aqn = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aqo = add nsw i64 %i.rh, 206
  %i.aqp = load ptr, ptr %i.aqn, align 8, !tbaa !90
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 32
  %i.aqr = load ptr, ptr %i.aqq, align 8
  %i.aqs = tail call noundef i32 %i.aqr(ptr noundef nonnull align 8 dereferenceable(8) %i.aqn, i64 noundef %i.aqo, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.aqt = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aqu = add nsw i64 %i.rh, 376
  %i.aqv = load ptr, ptr %i.aqt, align 8, !tbaa !90
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 32
  %i.aqx = load ptr, ptr %i.aqw, align 8
  %i.aqy = tail call noundef i32 %i.aqx(ptr noundef nonnull align 8 dereferenceable(8) %i.aqt, i64 noundef %i.aqu, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aqz = add nsw i64 %i.rh, 958
  %i.ara = add nsw i64 %i.rh, 966
  br label %bb.du

bb.dj:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 7, ptr %i.arb, align 8, !tbaa !176
  %i.arc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ard = zext i16 %i.arc to i32
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.ard, ptr %i.are, align 4, !tbaa !103
  %i.arf = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.arg = add nsw i64 %i.rh, 126
  %i.arh = load ptr, ptr %i.arf, align 8, !tbaa !90
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 32
  %i.arj = load ptr, ptr %i.ari, align 8
  %i.ark = tail call noundef i32 %i.arj(ptr noundef nonnull align 8 dereferenceable(8) %i.arf, i64 noundef %i.arg, i32 noundef 0), !call_target !99 ; 0 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.arm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arn = uitofp reassoc nsz arcp contract afn i16 %i.arm to float
  store float %i.arn, ptr %i.arl, align 4, !tbaa !101
  %i.aro = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arp = uitofp reassoc nsz arcp contract afn i16 %i.aro to float
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.arp, ptr %i.arq, align 8, !tbaa !101
  %i.arr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ars = uitofp reassoc nsz arcp contract afn i16 %i.arr to float
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.ars, ptr %i.art, align 8, !tbaa !101
  %i.aru = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.arv = uitofp reassoc nsz arcp contract afn i16 %i.aru to float
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.arv, ptr %i.arw, align 4, !tbaa !101
  %i.arx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.arz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asa = zext i16 %i.arz to i32
  store i32 %i.asa, ptr %i.ary, align 8, !tbaa !102
  %i.asb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asc = zext i16 %i.asb to i32
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.asc, ptr %i.asd, align 4, !tbaa !102
  %i.ase = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asf = zext i16 %i.ase to i32
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.asf, ptr %i.asg, align 4, !tbaa !102
  %i.ash = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asi = zext i16 %i.ash to i32
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.asi, ptr %i.asj, align 8, !tbaa !102
  %i.ask = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.asm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asn = zext i16 %i.asm to i32
  store i32 %i.asn, ptr %i.asl, align 8, !tbaa !102
  %i.aso = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asp = zext i16 %i.aso to i32
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.asp, ptr %i.asq, align 4, !tbaa !102
  %i.asr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ass = zext i16 %i.asr to i32
  %i.ast = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.ass, ptr %i.ast, align 4, !tbaa !102
  %i.asu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.asv = zext i16 %i.asu to i32
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.asv, ptr %i.asw, align 8, !tbaa !102
  %i.asx = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.asy = add nsw i64 %i.rh, 246
  %i.asz = load ptr, ptr %i.asx, align 8, !tbaa !90
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 32
  %i.atb = load ptr, ptr %i.ata, align 8
  %i.atc = tail call noundef i32 %i.atb(ptr noundef nonnull align 8 dereferenceable(8) %i.asx, i64 noundef %i.asy, i32 noundef 0), !call_target !99 ; 0 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.ate = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.ate, ptr %i.atd, align 2, !tbaa !74
  %i.atf = uitofp reassoc nsz arcp contract afn i16 %i.ate to float ; 2 uses
  %i.atg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.atg, ptr %i.ath, align 4, !tbaa !74
  %i.ati = uitofp reassoc nsz arcp contract afn i16 %i.atg to float ; 2 uses
  %i.atj = fcmp reassoc nsz arcp contract afn olt float %i.atf, %i.ati
  %spec.select536.1 = select nsz i1 %i.atj, float %i.ati, float %i.atf ; 2 uses
  %i.atk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.atk, ptr %i.atl, align 8, !tbaa !74
  %i.atm = uitofp reassoc nsz arcp contract afn i16 %i.atk to float ; 2 uses
  %i.atn = fcmp reassoc nsz arcp contract afn olt float %spec.select536.1, %i.atm
  %spec.select536.2 = select nsz i1 %i.atn, float %i.atm, float %spec.select536.1 ; 2 uses
  %i.ato = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.atp = load i16, ptr %i.atl, align 8, !tbaa !74
  %i.atq = load <4 x i16>, ptr %i.atd, align 2
  %i.atr = insertelement <4 x i16> %i.atq, i16 %i.ato, i64 2
  %i.ats = insertelement <4 x i16> %i.atr, i16 %i.atp, i64 3
  %i.att = uitofp <4 x i16> %i.ats to <4 x float> ; 2 uses
  %i.atu = extractelement <4 x float> %i.att, i64 2 ; 2 uses
  %i.atv = fcmp reassoc nsz arcp contract afn olt float %spec.select536.2, %i.atu
  %spec.select536.3 = select nsz i1 %i.atv, float %i.atu, float %spec.select536.2
  %i.atw = fmul reassoc nnan nsz arcp contract afn float %spec.select536.3, f0x3A800000
  %i.atx = insertelement <4 x float> poison, float %i.atw, i64 0
  %i.aty = shufflevector <4 x float> %i.atx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atz = fmul reassoc nsz arcp contract afn <4 x float> %i.aty, %i.att
  %i.aua = fptoui <4 x float> %i.atz to <4 x i16>
  store <4 x i16> %i.aua, ptr %i.atd, align 2, !tbaa !74
  %i.aub = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.auc = add nsw i64 %i.rh, 256
  %i.aud = load ptr, ptr %i.aub, align 8, !tbaa !90
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 32
  %i.auf = load ptr, ptr %i.aue, align 8
  %i.aug = tail call noundef i32 %i.auf(ptr noundef nonnull align 8 dereferenceable(8) %i.aub, i64 noundef %i.auc, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.auh = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aui = add nsw i64 %i.rh, 426
  %i.auj = load ptr, ptr %i.auh, align 8, !tbaa !90
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 32
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = tail call noundef i32 %i.aul(ptr noundef nonnull align 8 dereferenceable(8) %i.auh, i64 noundef %i.aui, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aun = load i32, ptr %i.are, align 4, !tbaa !103
  switch i32 %i.aun, label %.thread587 [
    i32 10, label %bb.dk
    i32 11, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.auo = add nsw i64 %i.rh, 1008
  %i.aup = add nsw i64 %i.rh, 1016
  br label %bb.du

bb.dl:                                            ; preds = %bb.dj
  %i.auq = add nsw i64 %i.rh, 1456
  %i.aur = add nsw i64 %i.rh, 1464
  br label %bb.du

bb.dm:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 8, ptr %i.aus, align 8, !tbaa !176
  %i.aut = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.auu = zext i16 %i.aut to i32
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 1940 ; 2 uses
  store i32 %i.auu, ptr %i.auv, align 4, !tbaa !103
  %i.auw = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.aux = add nsw i64 %i.rh, 126
  %i.auy = load ptr, ptr %i.auw, align 8, !tbaa !90
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 32
  %i.ava = load ptr, ptr %i.auz, align 8
  %i.avb = tail call noundef i32 %i.ava(ptr noundef nonnull align 8 dereferenceable(8) %i.auw, i64 noundef %i.aux, i32 noundef 0), !call_target !99 ; 0 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.avd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ave = uitofp reassoc nsz arcp contract afn i16 %i.avd to float
  store float %i.ave, ptr %i.avc, align 4, !tbaa !101
  %i.avf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avg = uitofp reassoc nsz arcp contract afn i16 %i.avf to float
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.avg, ptr %i.avh, align 8, !tbaa !101
  %i.avi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avj = uitofp reassoc nsz arcp contract afn i16 %i.avi to float
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.avj, ptr %i.avk, align 8, !tbaa !101
  %i.avl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avm = uitofp reassoc nsz arcp contract afn i16 %i.avl to float
  %i.avn = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.avm, ptr %i.avn, align 4, !tbaa !101
  %i.avo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.avq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avr = zext i16 %i.avq to i32
  store i32 %i.avr, ptr %i.avp, align 8, !tbaa !102
  %i.avs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avt = zext i16 %i.avs to i32
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.avt, ptr %i.avu, align 4, !tbaa !102
  %i.avv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avw = zext i16 %i.avv to i32
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.avw, ptr %i.avx, align 4, !tbaa !102
  %i.avy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avz = zext i16 %i.avy to i32
  %i.awa = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.avz, ptr %i.awa, align 8, !tbaa !102
  %i.awb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.awd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awe = zext i16 %i.awd to i32
  store i32 %i.awe, ptr %i.awc, align 8, !tbaa !102
  %i.awf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awg = zext i16 %i.awf to i32
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.awg, ptr %i.awh, align 4, !tbaa !102
  %i.awi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awj = zext i16 %i.awi to i32
  %i.awk = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.awj, ptr %i.awk, align 4, !tbaa !102
  %i.awl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awm = zext i16 %i.awl to i32
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.awm, ptr %i.awn, align 8, !tbaa !102
  %i.awo = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.awp = add nsw i64 %i.rh, 256
  %i.awq = load ptr, ptr %i.awo, align 8, !tbaa !90
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 32
  %i.aws = load ptr, ptr %i.awr, align 8
  %i.awt = tail call noundef i32 %i.aws(ptr noundef nonnull align 8 dereferenceable(8) %i.awo, i64 noundef %i.awp, i32 noundef 0), !call_target !99 ; 0 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %0, i64 381730 ; 3 uses
  %i.awv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.awv, ptr %i.awu, align 2, !tbaa !74
  %i.aww = uitofp reassoc nsz arcp contract afn i16 %i.awv to float ; 2 uses
  %i.awx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %0, i64 381732
  store i16 %i.awx, ptr %i.awy, align 4, !tbaa !74
  %i.awz = uitofp reassoc nsz arcp contract afn i16 %i.awx to float ; 2 uses
  %i.axa = fcmp reassoc nsz arcp contract afn olt float %i.aww, %i.awz
  %spec.select537.1 = select nsz i1 %i.axa, float %i.awz, float %i.aww ; 2 uses
  %i.axb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 381736 ; 2 uses
  store i16 %i.axb, ptr %i.axc, align 8, !tbaa !74
  %i.axd = uitofp reassoc nsz arcp contract afn i16 %i.axb to float ; 2 uses
  %i.axe = fcmp reassoc nsz arcp contract afn olt float %spec.select537.1, %i.axd
  %spec.select537.2 = select nsz i1 %i.axe, float %i.axd, float %spec.select537.1 ; 2 uses
  %i.axf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axg = load i16, ptr %i.axc, align 8, !tbaa !74
  %i.axh = load <4 x i16>, ptr %i.awu, align 2
  %i.axi = insertelement <4 x i16> %i.axh, i16 %i.axf, i64 2
  %i.axj = insertelement <4 x i16> %i.axi, i16 %i.axg, i64 3
  %i.axk = uitofp <4 x i16> %i.axj to <4 x float> ; 2 uses
  %i.axl = extractelement <4 x float> %i.axk, i64 2 ; 2 uses
  %i.axm = fcmp reassoc nsz arcp contract afn olt float %spec.select537.2, %i.axl
  %spec.select537.3 = select nsz i1 %i.axm, float %i.axl, float %spec.select537.2
  %i.axn = fmul reassoc nnan nsz arcp contract afn float %spec.select537.3, f0x3A800000
  %i.axo = insertelement <4 x float> poison, float %i.axn, i64 0
  %i.axp = shufflevector <4 x float> %i.axo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axq = fmul reassoc nsz arcp contract afn <4 x float> %i.axp, %i.axk
  %i.axr = fptoui <4 x float> %i.axq to <4 x i16>
  store <4 x i16> %i.axr, ptr %i.awu, align 2, !tbaa !74
  %i.axs = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.axt = add nsw i64 %i.rh, 266
  %i.axu = load ptr, ptr %i.axs, align 8, !tbaa !90
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 32
  %i.axw = load ptr, ptr %i.axv, align 8
  %i.axx = tail call noundef i32 %i.axw(ptr noundef nonnull align 8 dereferenceable(8) %i.axs, i64 noundef %i.axt, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.axy = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.axz = add nsw i64 %i.rh, 526
  %i.aya = load ptr, ptr %i.axy, align 8, !tbaa !90
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 32
  %i.ayc = load ptr, ptr %i.ayb, align 8
  %i.ayd = tail call noundef i32 %i.ayc(ptr noundef nonnull align 8 dereferenceable(8) %i.axy, i64 noundef %i.axz, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.aye = load i32, ptr %i.auv, align 4, !tbaa !103
  %i.ayf = icmp eq i32 %i.aye, 14
  br i1 %i.ayf, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ayg = add nsw i64 %i.rh, 1112
  %i.ayh = add nsw i64 %i.rh, 1120
  br label %bb.du

bb.do:                                            ; preds = %bb.dm
  %i.ayi = add nsw i64 %i.rh, 1556
  %i.ayj = add nsw i64 %i.rh, 1564
  br label %bb.du

bb.dp:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 9, ptr %i.ayk, align 8, !tbaa !176
  %i.ayl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aym = zext i16 %i.ayl to i32
  %i.ayn = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.aym, ptr %i.ayn, align 4, !tbaa !103
  %i.ayo = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ayp = add nsw i64 %i.rh, 142
  %i.ayq = load ptr, ptr %i.ayo, align 8, !tbaa !90
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 32
  %i.ays = load ptr, ptr %i.ayr, align 8
  %i.ayt = tail call noundef i32 %i.ays(ptr noundef nonnull align 8 dereferenceable(8) %i.ayo, i64 noundef %i.ayp, i32 noundef 0), !call_target !99 ; 0 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.ayv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayw = uitofp reassoc nsz arcp contract afn i16 %i.ayv to float
  store float %i.ayw, ptr %i.ayu, align 4, !tbaa !101
  %i.ayx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ayy = uitofp reassoc nsz arcp contract afn i16 %i.ayx to float
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.ayy, ptr %i.ayz, align 8, !tbaa !101
  %i.aza = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azb = uitofp reassoc nsz arcp contract afn i16 %i.aza to float
  %i.azc = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.azb, ptr %i.azc, align 8, !tbaa !101
  %i.azd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aze = uitofp reassoc nsz arcp contract afn i16 %i.azd to float
  %i.azf = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aze, ptr %i.azf, align 4, !tbaa !101
  %i.azg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.azi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azj = zext i16 %i.azi to i32
  store i32 %i.azj, ptr %i.azh, align 8, !tbaa !102
  %i.azk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azl = zext i16 %i.azk to i32
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.azl, ptr %i.azm, align 4, !tbaa !102
  %i.azn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azo = zext i16 %i.azn to i32
  %i.azp = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.azo, ptr %i.azp, align 4, !tbaa !102
  %i.azq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azr = zext i16 %i.azq to i32
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.azr, ptr %i.azs, align 8, !tbaa !102
  %i.azt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.azv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azw = zext i16 %i.azv to i32
  store i32 %i.azw, ptr %i.azu, align 8, !tbaa !102
  %i.azx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.azy = zext i16 %i.azx to i32
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.azy, ptr %i.azz, align 4, !tbaa !102
  %i.baa = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bab = zext i16 %i.baa to i32
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.bab, ptr %i.bac, align 4, !tbaa !102
  %i.bad = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bae = zext i16 %i.bad to i32
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.bae, ptr %i.baf, align 8, !tbaa !102
  %i.bag = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bah = add nsw i64 %i.rh, 272
  %i.bai = load ptr, ptr %i.bag, align 8, !tbaa !90
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 32
  %i.bak = load ptr, ptr %i.baj, align 8
  %i.bal = tail call noundef i32 %i.bak(ptr noundef nonnull align 8 dereferenceable(8) %i.bag, i64 noundef %i.bah, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.bam = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.ban = add nsw i64 %i.rh, 532
  %i.bao = load ptr, ptr %i.bam, align 8, !tbaa !90
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 32
  %i.baq = load ptr, ptr %i.bap, align 8
  %i.bar = tail call noundef i32 %i.baq(ptr noundef nonnull align 8 dereferenceable(8) %i.bam, i64 noundef %i.ban, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.bas = add nsw i64 %i.rh, 658
  %i.bat = add nsw i64 %i.rh, 1584
  %i.bau = add nsw i64 %i.rh, 1592
  br label %bb.du

bb.dq:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i32 10, ptr %i.bav, align 8, !tbaa !176
  %i.baw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bax = zext i16 %i.baw to i32
  %i.bay = getelementptr inbounds nuw i8, ptr %0, i64 1940
  store i32 %i.bax, ptr %i.bay, align 4, !tbaa !103
  %i.baz = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bba = add nsw i64 %i.rh, 170
  %i.bbb = load ptr, ptr %i.baz, align 8, !tbaa !90
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 32
  %i.bbd = load ptr, ptr %i.bbc, align 8
  %i.bbe = tail call noundef i32 %i.bbd(ptr noundef nonnull align 8 dereferenceable(8) %i.baz, i64 noundef %i.bba, i32 noundef 0), !call_target !99 ; 0 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.bbg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbh = uitofp reassoc nsz arcp contract afn i16 %i.bbg to float
  store float %i.bbh, ptr %i.bbf, align 4, !tbaa !101
  %i.bbi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbj = uitofp reassoc nsz arcp contract afn i16 %i.bbi to float
  %i.bbk = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.bbj, ptr %i.bbk, align 8, !tbaa !101
  %i.bbl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbm = uitofp reassoc nsz arcp contract afn i16 %i.bbl to float
  %i.bbn = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.bbm, ptr %i.bbn, align 8, !tbaa !101
  %i.bbo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbp = uitofp reassoc nsz arcp contract afn i16 %i.bbo to float
  %i.bbq = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.bbp, ptr %i.bbq, align 4, !tbaa !101
  %i.bbr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %0, i64 188536
  %i.bbt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbu = zext i16 %i.bbt to i32
  store i32 %i.bbu, ptr %i.bbs, align 8, !tbaa !102
  %i.bbv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbw = zext i16 %i.bbv to i32
  %i.bbx = getelementptr inbounds nuw i8, ptr %0, i64 188540
  store i32 %i.bbw, ptr %i.bbx, align 4, !tbaa !102
  %i.bby = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bbz = zext i16 %i.bby to i32
  %i.bca = getelementptr inbounds nuw i8, ptr %0, i64 188548
  store i32 %i.bbz, ptr %i.bca, align 4, !tbaa !102
  %i.bcb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcc = zext i16 %i.bcb to i32
  %i.bcd = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.bcc, ptr %i.bcd, align 8, !tbaa !102
  %i.bce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 188984
  %i.bcg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bch = zext i16 %i.bcg to i32
  store i32 %i.bch, ptr %i.bcf, align 8, !tbaa !102
  %i.bci = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcj = zext i16 %i.bci to i32
  %i.bck = getelementptr inbounds nuw i8, ptr %0, i64 188988
  store i32 %i.bcj, ptr %i.bck, align 4, !tbaa !102
  %i.bcl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcm = zext i16 %i.bcl to i32
  %i.bcn = getelementptr inbounds nuw i8, ptr %0, i64 188996
  store i32 %i.bcm, ptr %i.bcn, align 4, !tbaa !102
  %i.bco = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bcp = zext i16 %i.bco to i32
  %i.bcq = getelementptr inbounds nuw i8, ptr %0, i64 188992
  store i32 %i.bcp, ptr %i.bcq, align 8, !tbaa !102
  %i.bcr = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bcs = add nsw i64 %i.rh, 300
  %i.bct = load ptr, ptr %i.bcr, align 8, !tbaa !90
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 32
  %i.bcv = load ptr, ptr %i.bcu, align 8
  %i.bcw = tail call noundef i32 %i.bcv(ptr noundef nonnull align 8 dereferenceable(8) %i.bcr, i64 noundef %i.bcs, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, i32 noundef 12)
  %i.bcx = load ptr, ptr %i.rc, align 8, !tbaa !88 ; 2 uses
  %i.bcy = add nsw i64 %i.rh, 560
  %i.bcz = load ptr, ptr %i.bcx, align 8, !tbaa !90
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 32
  %i.bdb = load ptr, ptr %i.bda, align 8
  %i.bdc = tail call noundef i32 %i.bdb(ptr noundef nonnull align 8 dereferenceable(8) %i.bcx, i64 noundef %i.bcy, i32 noundef 0), !call_target !99 ; 0 uses
  tail call void @_ZN6LibRaw17Canon_WBCTpresetsEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext 0)
  %i.bdd = add nsw i64 %i.rh, 686
  %i.bde = add nsw i64 %i.rh, 1612
  %i.bdf = add nsw i64 %i.rh, 1620
  br label %bb.du
end_hunk_1
