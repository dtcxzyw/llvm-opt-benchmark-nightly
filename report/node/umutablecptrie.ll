inline.NumInlined: 129
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
  %i.adb = icmp eq ptr %i.acz, null
  br i1 %i.adb, label %bb.do, label %bb.dp

bb.dg:                                            ; preds = %.preheader351.i.i.i
  %i.adc = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv432.i.i.i
  store i8 0, ptr %i.adc, align 1
  %i.add = icmp slt i32 %.2272367.i.i.i, 0
  br i1 %i.add, label %bb.dh, label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.ade = icmp ugt i32 %i.ach, 65535             ; 2 uses
  %.1263.v.i.i.i = select i1 %i.ade, i32 36, i32 32
  %.1263.i.i.i = add nsw i32 %.1263.v.i.i.i, %.0262368.i.i.i
  %.1260.i.i.i = select i1 %i.ade, i1 true, i1 %.0259369.i.i.i
  br label %bb.dn

bb.di:                                            ; preds = %.preheader351.i.i.i
  %i.adf = icmp ult i32 %i.ach, 65536
  br i1 %i.adf, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.adg = trunc nuw nsw i64 %indvars.iv432.i.i.i to i32
  %i.adh = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zt, i32 noundef %i.adg) ; 2 uses
  %i.adi = icmp sgt i32 %i.adh, -1
  %i.adj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv432.i.i.i ; 2 uses
  br i1 %i.adi, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i8 1, ptr %i.adj, align 1
  store i32 %i.adh, ptr %i.zv, align 4
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  store i8 2, ptr %i.adj, align 1
  %i.adk = add nsw i32 %.0262368.i.i.i, 32
  br label %bb.dn

bb.dm:                                            ; preds = %bb.di
  %i.adl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv432.i.i.i
  store i8 3, ptr %i.adl, align 1
  %i.adm = add nsw i32 %.0262368.i.i.i, 36
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dh, %bb.dg
  %.3273.i.i.i = phi i32 [ 0, %bb.dh ], [ %.2272367.i.i.i, %bb.dg ], [ %.2272367.i.i.i, %bb.dm ], [ %.2272367.i.i.i, %bb.dl ], [ %.2272367.i.i.i, %bb.dk ]
  %.3265.i.i.i = phi i32 [ %.1263.i.i.i, %bb.dh ], [ %.0262368.i.i.i, %bb.dg ], [ %i.adm, %bb.dm ], [ %i.adk, %bb.dl ], [ %.0262368.i.i.i, %bb.dk ] ; 2 uses
  %.2261.i.i.i = phi i1 [ %.1260.i.i.i, %bb.dh ], [ %.0259369.i.i.i, %bb.dg ], [ true, %bb.dm ], [ %.0259369.i.i.i, %bb.dl ], [ %.0259369.i.i.i, %bb.dk ] ; 2 uses
  %i.adn = icmp samesign ult i64 %i.aco, %sext.i.i
  br i1 %i.adn, label %.preheader351.i.i.i, label %._crit_edge.i86.i.i, !llvm.loop !55

bb.do:                                            ; preds = %._crit_edge.i86.i.i
  store i32 7, ptr %3, align 4
  br label %bb.fk

bb.dp:                                            ; preds = %._crit_edge.i86.i.i
  %i.ado = lshr exact i32 %i.cr, 5
  %i.adp = zext nneg i32 %i.ado to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.acz, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.adp, i1 false)
  %i.adq = icmp slt i32 %i.acv, 4126
  br i1 %i.adq, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.adr = icmp samesign ult i32 %i.acv, 32798
  br i1 %i.adr, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ads = icmp samesign ult i32 %i.acv, 131102   ; 3 uses
  %..i87.i.i = select i1 %i.ads, i32 17, i32 21
  %.510.i.i.i = select i1 %i.ads, i32 131071, i32 2097151
  %.511.i.i.i = select i1 %i.ads, i32 200003, i32 1500007
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp
  %.sink509.i.i.i = phi i32 [ 15, %bb.dq ], [ %..i87.i.i, %bb.dr ], [ 12, %bb.dp ]
  %.sink.i88.i.i = phi i32 [ 32767, %bb.dq ], [ %.510.i.i.i, %bb.dr ], [ 4095, %bb.dp ]
  %.0.i294.i.i.i = phi i32 [ 50021, %bb.dq ], [ %.511.i.i.i, %bb.dr ], [ 6007, %bb.dp ] ; 5 uses
  store i32 %.sink509.i.i.i, ptr %i.nl, align 8
  store i32 %.sink.i88.i.i, ptr %i.zm, align 4
  %i.adt = icmp sgt i32 %.0.i294.i.i.i, %.promoted167.i.i5
  br i1 %i.adt, label %bb.dt, label %._crit_edge.i296.i.i.i

._crit_edge.i296.i.i.i:                           ; preds = %bb.ds
  %.pre13.i297.i.i.i = shl nuw nsw i32 %.0.i294.i.i.i, 2
  %.pre14.i298.i.i.i = zext nneg i32 %.pre13.i297.i.i.i to i64
  br label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  tail call void @uprv_free_78(ptr noundef nonnull %.pre.i.i84.ph.i.i) #10
  %i.adu = shl nuw nsw i32 %.0.i294.i.i.i, 2
  %i.adv = zext nneg i32 %i.adu to i64            ; 2 uses
  %i.adw = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.adv) #11 ; 3 uses
  store ptr %i.adw, ptr %6, align 8
  %i.adx = icmp eq ptr %i.adw, null
  br i1 %i.adx, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i32 %.0.i294.i.i.i, ptr %i.nk, align 8
  br label %bb.dv

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i: ; preds = %bb.dt
  store i32 7, ptr %3, align 4
  br label %bb.fk

bb.dv:                                            ; preds = %bb.du, %._crit_edge.i296.i.i.i
  %i.ady = phi ptr [ %.pre.i.i84.ph.i.i, %._crit_edge.i296.i.i.i ], [ %i.adw, %bb.du ] ; 2 uses
  %.pre-phi15.i299.i.i.i = phi i64 [ %.pre14.i298.i.i.i, %._crit_edge.i296.i.i.i ], [ %i.adv, %bb.du ]
  store i32 %.0.i294.i.i.i, ptr %i.nx, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ady, i8 0, i64 %.pre-phi15.i299.i.i.i, i1 false)
  store i32 32, ptr %i.ny, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  br i1 %.0259.lcssa.i.i.i, label %bb.dw, label %bb.ee

bb.dw:                                            ; preds = %bb.dv
  %i.adz = icmp slt i32 %i.acv, 4130
  br i1 %i.adz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aea = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.aea, align 8
  %i.aeb = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4095, ptr %i.aeb, align 4
  br label %bb.ed

bb.dy:                                            ; preds = %bb.dw
  %i.aec = icmp samesign ult i32 %i.acv, 32802
  %i.aed = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  br i1 %i.aec, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aee = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 15, ptr %i.aee, align 8
  store i32 32767, ptr %i.aed, align 4
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  %i.aef = icmp samesign ult i32 %i.acv, 131106
  %i.aeg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aef, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 17, ptr %i.aeg, align 8
  store i32 131071, ptr %i.aed, align 4
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  store i32 21, ptr %i.aeg, align 8
  store i32 2097151, ptr %i.aed, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.dz, %bb.dx
  %.0.i302.i.i.i = phi i32 [ 6007, %bb.dx ], [ 50021, %bb.dz ], [ 200003, %bb.eb ], [ 1500007, %bb.ec ] ; 3 uses
  tail call void @uprv_free_78(ptr noundef null) #10
  %i.aeh = shl nuw nsw i32 %.0.i302.i.i.i, 2
  %i.aei = zext nneg i32 %i.aeh to i64            ; 2 uses
  %i.aej = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.aei) #11 ; 3 uses
  store ptr %i.aej, ptr %4, align 8
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i: ; preds = %bb.ed
  %i.ael = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.0.i302.i.i.i, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.0.i302.i.i.i, ptr %i.aem, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aej, i8 0, i64 %i.aei, i1 false)
  %i.aen = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 36, ptr %i.aen, align 8
  br label %bb.ee

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i: ; preds = %bb.ed
  store i32 7, ptr %3, align 4
  br label %bb.fj

bb.ee:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.pre476.i.i.i = load i32, ptr %i.ym, align 4   ; 3 uses
  br i1 %i.zq, label %.lr.ph387.i.i.i, label %._crit_edge388.i.i.i

.lr.ph387.i.i.i:                                  ; preds = %bb.ee
  %i.aeo = zext nneg i32 %i.zn to i64
  %i.aep = zext nneg i32 %i.zp to i64
  %.pre229.i.i = zext nneg i32 %i.act to i64
  br label %bb.ef

._crit_edge388.loopexit.i.i.i:                    ; preds = %bb.ey
  %i.aeq = trunc nuw nsw i64 %indvars.iv.next461.i.i.i to i32
  br label %._crit_edge388.i.i.i

._crit_edge388.i.i.i:                             ; preds = %._crit_edge388.loopexit.i.i.i, %bb.ee
  %i.aer = phi i32 [ %.pre476.i.i.i, %bb.ee ], [ %i.axd, %._crit_edge388.loopexit.i.i.i ]
  %.0253.lcssa.i.i.i = phi i32 [ 0, %bb.ee ], [ %i.aeq, %._crit_edge388.loopexit.i.i.i ] ; 3 uses
  %.0248.lcssa.i.i.i = phi i32 [ %i.act, %bb.ee ], [ %.6.i98.i.i, %._crit_edge388.loopexit.i.i.i ] ; 3 uses
  %i.aes = icmp slt i32 %i.aer, 0
  br i1 %i.aes, label %bb.ez, label %bb.fa

bb.ef:                                            ; preds = %bb.ey, %.lr.ph387.i.i.i
  %i.aet = phi i32 [ %.pre476.i.i.i, %.lr.ph387.i.i.i ], [ %i.axd, %bb.ey ]
  %indvars.iv460.i.i.i = phi i64 [ 0, %.lr.ph387.i.i.i ], [ %indvars.iv.next461.i.i.i, %bb.ey ] ; 2 uses
  %indvars.iv434.i.i.i = phi i64 [ %i.aeo, %.lr.ph387.i.i.i ], [ %indvars.iv.next435.i.i.i, %bb.ey ] ; 17 uses
  %.0248382.i.i.i = phi i32 [ %i.act, %.lr.ph387.i.i.i ], [ %.6.i98.i.i, %bb.ey ] ; 18 uses
  %.4274380.i.i.i = phi i32 [ %.pre476.i.i.i, %.lr.ph387.i.i.i ], [ %.5275335.i.i.i, %bb.ey ] ; 5 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv434.i.i.i
  %i.aev = load i8, ptr %i.aeu, align 1           ; 2 uses
  %i.aew = icmp eq i8 %i.aev, 0
  %i.aex = icmp slt i32 %.4274380.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.aew, i1 %i.aex, i1 false
  br i1 %or.cond.i.i.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.aey = load i32, ptr %i.yh, align 8
  %i.aez = icmp slt i32 %i.aey, 65536
  br i1 %i.aez, label %.thread337.i.i.i, label %.thread.i99.i.i

bb.eh:                                            ; preds = %bb.ef
  switch i8 %i.aev, label %.thread.i99.i.i [
    i8 0, label %bb.ew
    i8 1, label %bb.ei
    i8 2, label %.thread337.i.i.i
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.afa = load ptr, ptr %0, align 8
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv434.i.i.i
  %i.afc = load i32, ptr %i.afb, align 4
  br label %bb.ew

.thread337.i.i.i:                                 ; preds = %bb.eh, %bb.eg
  %.5275340.i.i.i = phi i32 [ %.4274380.i.i.i, %bb.eh ], [ 0, %bb.eg ] ; 3 uses
  %i.afd = load ptr, ptr %i.ada, align 8          ; 3 uses
  %i.afe = load ptr, ptr %0, align 8              ; 2 uses
  %i.aff = trunc nuw nsw i64 %indvars.iv434.i.i.i to i32
  %i.afg = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.afd, ptr noundef %i.afe, i32 noundef %i.aff) ; 2 uses
  %i.afh = icmp sgt i32 %i.afg, -1
  br i1 %i.afh, label %bb.ew, label %bb.ej

bb.ej:                                            ; preds = %.thread337.i.i.i
  %i.afi = icmp eq i32 %.0248382.i.i.i, %i.act
  br i1 %i.afi, label %.lr.ph377.preheader.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %indvars.iv434.i.i.i ; 2 uses
  %i.afk = sext i32 %.0248382.i.i.i to i64        ; 4 uses
  br label %bb.el

bb.el:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1, %bb.ek
  %indvars.iv.i.i92.i.i = phi i64 [ 31, %bb.ek ], [ %indvars.iv.next.i.i97.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1 ] ; 6 uses
  %i.afl = sub nsw i64 %i.afk, %indvars.iv.i.i92.i.i
  %i.afm = getelementptr inbounds [2 x i8], ptr %i.afd, i64 %i.afl
  %i.afn = trunc nuw nsw i64 %indvars.iv.i.i92.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i93.i.i

.lr.ph.i.i.i93.i.i:                               ; preds = %bb.em, %bb.el
  %.010.i.i.i94.i.i = phi i32 [ %i.afu, %bb.em ], [ %i.afn, %bb.el ] ; 2 uses
  %.069.i.i.i95.i.i = phi ptr [ %i.aft, %bb.em ], [ %i.afj, %bb.el ] ; 2 uses
  %.078.i.i.i96.i.i = phi ptr [ %i.afs, %bb.em ], [ %i.afm, %bb.el ] ; 2 uses
  %i.afo = load i16, ptr %.078.i.i.i96.i.i, align 2
  %i.afp = zext i16 %i.afo to i32
  %i.afq = load i32, ptr %.069.i.i.i95.i.i, align 4
  %i.afr = icmp eq i32 %i.afq, %i.afp
  br i1 %i.afr, label %bb.em, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i

bb.em:                                            ; preds = %.lr.ph.i.i.i93.i.i
  %i.afs = getelementptr inbounds nuw i8, ptr %.078.i.i.i96.i.i, i64 2
  %i.aft = getelementptr inbounds nuw i8, ptr %.069.i.i.i95.i.i, i64 4
  %i.afu = add nsw i32 %.010.i.i.i94.i.i, -1
  %i.afv = icmp sgt i32 %.010.i.i.i94.i.i, 1
  br i1 %i.afv, label %.lr.ph.i.i.i93.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !56

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i93.i.i
  %indvars.iv.next.i.i97.i.i = add nsw i64 %indvars.iv.i.i92.i.i, -1 ; 3 uses
  %i.afw = icmp samesign ugt i64 %indvars.iv.i.i92.i.i, 1
  br i1 %i.afw, label %bb.en, label %.lr.ph377.preheader.i.i.i

bb.en:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i
  %i.afx = sub nsw i64 %i.afk, %indvars.iv.next.i.i97.i.i
  %i.afy = getelementptr inbounds [2 x i8], ptr %i.afd, i64 %i.afx
  %i.afz = trunc nuw nsw i64 %indvars.iv.next.i.i97.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i93.i.i.1

.lr.ph.i.i.i93.i.i.1:                             ; preds = %bb.eo, %bb.en
  %.010.i.i.i94.i.i.1 = phi i32 [ %i.agg, %bb.eo ], [ %i.afz, %bb.en ] ; 2 uses
  %.069.i.i.i95.i.i.1 = phi ptr [ %i.agf, %bb.eo ], [ %i.afj, %bb.en ] ; 2 uses
  %.078.i.i.i96.i.i.1 = phi ptr [ %i.age, %bb.eo ], [ %i.afy, %bb.en ] ; 2 uses
  %i.aga = load i16, ptr %.078.i.i.i96.i.i.1, align 2
  %i.agb = zext i16 %i.aga to i32
  %i.agc = load i32, ptr %.069.i.i.i95.i.i.1, align 4
  %i.agd = icmp eq i32 %i.agc, %i.agb
  br i1 %i.agd, label %bb.eo, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i93.i.i.1
  %indvars.iv.next.i.i97.i.i.1 = add nsw i64 %indvars.iv.i.i92.i.i, -2
  br label %bb.el

bb.eo:                                            ; preds = %.lr.ph.i.i.i93.i.i.1
  %i.age = getelementptr inbounds nuw i8, ptr %.078.i.i.i96.i.i.1, i64 2
  %i.agf = getelementptr inbounds nuw i8, ptr %.069.i.i.i95.i.i.1, i64 4
  %i.agg = add nsw i32 %.010.i.i.i94.i.i.1, -1
  %i.agh = icmp sgt i32 %.010.i.i.i94.i.i.1, 1
  br i1 %i.agh, label %.lr.ph.i.i.i93.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !56

_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.em, %bb.eo
  %indvars.iv.i.i92.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i97.i.i, %bb.eo ], [ %indvars.iv.i.i92.i.i, %bb.em ]
  %.lcssa296 = phi i32 [ %i.afz, %bb.eo ], [ %i.afn, %bb.em ]
  %i.agi = sub nsw i32 %.0248382.i.i.i, %.lcssa296
  br label %.lr.ph377.preheader.i.i.i

.lr.ph377.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, %bb.ej
  %.pre-phi230.i.i = phi i64 [ %.pre229.i.i, %bb.ej ], [ %i.afk, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.afk, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ]
  %i.agj = phi i32 [ %i.act, %bb.ej ], [ %i.agi, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %.0248382.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 2 uses
  %.0241496.i.i.i = phi i64 [ 0, %bb.ej ], [ %indvars.iv.i.i92.i.i.lcssa, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ]
  br label %.lr.ph377.i.i.i

.lr.ph377.i.i.i:                                  ; preds = %.lr.ph377.i.i.i, %.lr.ph377.preheader.i.i.i
  %indvars.iv454.i.i.i = phi i64 [ %.pre-phi230.i.i, %.lr.ph377.preheader.i.i.i ], [ %indvars.iv.next455.i.i.i, %.lr.ph377.i.i.i ] ; 2 uses
  %indvars.iv452.i.i.i = phi i64 [ %.0241496.i.i.i, %.lr.ph377.preheader.i.i.i ], [ %indvars.iv.next453.i.i.i, %.lr.ph377.i.i.i ] ; 2 uses
  %i.agk = load ptr, ptr %0, align 8
  %indvars.iv.next453.i.i.i = add nsw i64 %indvars.iv452.i.i.i, 1 ; 2 uses
  %i.agl = getelementptr [4 x i8], ptr %i.agk, i64 %indvars.iv452.i.i.i
  %i.agm = getelementptr [4 x i8], ptr %i.agl, i64 %indvars.iv434.i.i.i
  %i.agn = load i32, ptr %i.agm, align 4
  %i.ago = trunc i32 %i.agn to i16
  %i.agp = load ptr, ptr %i.ada, align 8
  %indvars.iv.next455.i.i.i = add nsw i64 %indvars.iv454.i.i.i, 1 ; 2 uses
  %i.agq = getelementptr inbounds [2 x i8], ptr %i.agp, i64 %indvars.iv454.i.i.i
  store i16 %i.ago, ptr %i.agq, align 2
  %i.agr = and i64 %indvars.iv.next453.i.i.i, 4294967295
  %exitcond459.not.i.i.i = icmp eq i64 %i.agr, 32
  br i1 %exitcond459.not.i.i.i, label %._crit_edge378.i.i.i, label %.lr.ph377.i.i.i, !llvm.loop !57

._crit_edge378.i.i.i:                             ; preds = %.lr.ph377.i.i.i
  %7 = trunc nsw i64 %indvars.iv.next455.i.i.i to i32 ; 4 uses
  %.pre475.i.i.i = load ptr, ptr %i.ada, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %.pre475.i.i.i, i32 noundef %i.act, i32 noundef %.0248382.i.i.i, i32 noundef %7)
  br i1 %.0259.lcssa.i.i.i, label %bb.ep, label %bb.ew

bb.ep:                                            ; preds = %._crit_edge378.i.i.i
  %i.ags = load ptr, ptr %i.ada, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ags, i32 noundef %i.act, i32 noundef %.0248382.i.i.i, i32 noundef %7)
  br label %bb.ew

.thread.i99.i.i:                                  ; preds = %bb.eh, %bb.eg
  %.5275336.i.i.i = phi i32 [ %.4274380.i.i.i, %bb.eh ], [ 0, %bb.eg ]
  %i.agt = sext i32 %.0248382.i.i.i to i64        ; 22 uses
  %i.agu = load ptr, ptr %0, align 8
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv434.i.i.i
  %i.agw = load i32, ptr %i.agv, align 4          ; 2 uses
  %i.agx = lshr i32 %i.agw, 2
  %i.agy = and i32 %i.agx, 49152
  %i.agz = trunc i32 %i.agw to i16
  %i.aha = load ptr, ptr %i.ada, align 8
  %i.ahb = getelementptr [2 x i8], ptr %i.aha, i64 %i.agt
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 2
  store i16 %i.agz, ptr %i.ahc, align 2
  %i.ahd = load ptr, ptr %0, align 8
  %i.ahe = getelementptr [4 x i8], ptr %i.ahd, i64 %indvars.iv434.i.i.i
  %i.ahf = getelementptr i8, ptr %i.ahe, i64 4
  %i.ahg = load i32, ptr %i.ahf, align 4          ; 2 uses
  %i.ahh = lshr i32 %i.ahg, 4
  %i.ahi = and i32 %i.ahh, 12288
  %i.ahj = or disjoint i32 %i.ahi, %i.agy
  %i.ahk = trunc i32 %i.ahg to i16
  %i.ahl = load ptr, ptr %i.ada, align 8
  %i.ahm = getelementptr [2 x i8], ptr %i.ahl, i64 %i.agt
  %i.ahn = getelementptr i8, ptr %i.ahm, i64 4
  store i16 %i.ahk, ptr %i.ahn, align 2
  %i.aho = load ptr, ptr %0, align 8
  %i.ahp = getelementptr [4 x i8], ptr %i.aho, i64 %indvars.iv434.i.i.i
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 8
  %i.ahr = load i32, ptr %i.ahq, align 4          ; 2 uses
  %i.ahs = lshr i32 %i.ahr, 6
  %i.aht = and i32 %i.ahs, 3072
  %i.ahu = or disjoint i32 %i.ahj, %i.aht
  %i.ahv = trunc i32 %i.ahr to i16
  %i.ahw = load ptr, ptr %i.ada, align 8
  %i.ahx = getelementptr [2 x i8], ptr %i.ahw, i64 %i.agt
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 6
  store i16 %i.ahv, ptr %i.ahy, align 2
  %i.ahz = load ptr, ptr %0, align 8
  %i.aia = getelementptr [4 x i8], ptr %i.ahz, i64 %indvars.iv434.i.i.i
  %i.aib = getelementptr i8, ptr %i.aia, i64 12
  %i.aic = load i32, ptr %i.aib, align 4          ; 2 uses
  %i.aid = lshr i32 %i.aic, 8
  %i.aie = and i32 %i.aid, 768
  %i.aif = or disjoint i32 %i.ahu, %i.aie
  %i.aig = trunc i32 %i.aic to i16
  %i.aih = load ptr, ptr %i.ada, align 8
  %i.aii = getelementptr [2 x i8], ptr %i.aih, i64 %i.agt
  %i.aij = getelementptr i8, ptr %i.aii, i64 8
  store i16 %i.aig, ptr %i.aij, align 2
  %i.aik = load ptr, ptr %0, align 8
  %i.ail = getelementptr [4 x i8], ptr %i.aik, i64 %indvars.iv434.i.i.i
  %i.aim = getelementptr i8, ptr %i.ail, i64 16
  %i.ain = load i32, ptr %i.aim, align 4          ; 2 uses
  %i.aio = lshr i32 %i.ain, 10
  %i.aip = and i32 %i.aio, 192
  %i.aiq = or disjoint i32 %i.aif, %i.aip
  %i.air = trunc i32 %i.ain to i16
  %i.ais = load ptr, ptr %i.ada, align 8
  %i.ait = getelementptr [2 x i8], ptr %i.ais, i64 %i.agt
  %i.aiu = getelementptr i8, ptr %i.ait, i64 10
  store i16 %i.air, ptr %i.aiu, align 2
  %i.aiv = load ptr, ptr %0, align 8
  %i.aiw = getelementptr [4 x i8], ptr %i.aiv, i64 %indvars.iv434.i.i.i
  %i.aix = getelementptr i8, ptr %i.aiw, i64 20
  %i.aiy = load i32, ptr %i.aix, align 4          ; 2 uses
  %i.aiz = lshr i32 %i.aiy, 12
  %i.aja = and i32 %i.aiz, 48
  %i.ajb = or disjoint i32 %i.aiq, %i.aja
  %i.ajc = trunc i32 %i.aiy to i16
  %i.ajd = load ptr, ptr %i.ada, align 8
  %i.aje = getelementptr [2 x i8], ptr %i.ajd, i64 %i.agt
  %i.ajf = getelementptr i8, ptr %i.aje, i64 12
  store i16 %i.ajc, ptr %i.ajf, align 2
  %i.ajg = load ptr, ptr %0, align 8
  %i.ajh = getelementptr [4 x i8], ptr %i.ajg, i64 %indvars.iv434.i.i.i
  %i.aji = getelementptr i8, ptr %i.ajh, i64 24
  %i.ajj = load i32, ptr %i.aji, align 4          ; 2 uses
  %i.ajk = lshr i32 %i.ajj, 14
  %i.ajl = and i32 %i.ajk, 12
  %i.ajm = or i32 %i.ajb, %i.ajl
  %i.ajn = trunc i32 %i.ajj to i16
  %i.ajo = load ptr, ptr %i.ada, align 8
  %i.ajp = getelementptr [2 x i8], ptr %i.ajo, i64 %i.agt
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 14
  store i16 %i.ajn, ptr %i.ajq, align 2
  %i.ajr = load ptr, ptr %0, align 8
  %indvars.iv.next437.i.i.i = or disjoint i64 %indvars.iv434.i.i.i, 8 ; 8 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %indvars.iv434.i.i.i
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 28
  %i.aju = load i32, ptr %i.ajt, align 4          ; 2 uses
  %i.ajv = lshr i32 %i.aju, 16
  %i.ajw = and i32 %i.ajv, 3
  %i.ajx = or i32 %i.ajm, %i.ajw
  %i.ajy = trunc i32 %i.aju to i16
  %i.ajz = load ptr, ptr %i.ada, align 8
  %indvars.iv.next439.i.i.i = add nsw i64 %i.agt, 9 ; 9 uses
  %i.aka = getelementptr [2 x i8], ptr %i.ajz, i64 %i.agt
  %i.akb = getelementptr i8, ptr %i.aka, i64 16
  store i16 %i.ajy, ptr %i.akb, align 2
  %i.akc = trunc nuw i32 %i.ajx to i16
  %i.akd = load ptr, ptr %i.ada, align 8
  %i.ake = getelementptr inbounds [2 x i8], ptr %i.akd, i64 %i.agt
  store i16 %i.akc, ptr %i.ake, align 2
  %i.akf = load ptr, ptr %0, align 8
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akf, i64 %indvars.iv.next437.i.i.i
  %i.akh = load i32, ptr %i.akg, align 4          ; 2 uses
  %i.aki = lshr i32 %i.akh, 2
  %i.akj = and i32 %i.aki, 49152
  %i.akk = trunc i32 %i.akh to i16
  %i.akl = load ptr, ptr %i.ada, align 8
  %i.akm = getelementptr [2 x i8], ptr %i.akl, i64 %indvars.iv.next439.i.i.i
  %i.akn = getelementptr i8, ptr %i.akm, i64 2
  store i16 %i.akk, ptr %i.akn, align 2
  %i.ako = load ptr, ptr %0, align 8
  %i.akp = getelementptr [4 x i8], ptr %i.ako, i64 %indvars.iv.next437.i.i.i
  %i.akq = getelementptr i8, ptr %i.akp, i64 4
  %i.akr = load i32, ptr %i.akq, align 4          ; 2 uses
  %i.aks = lshr i32 %i.akr, 4
  %i.akt = and i32 %i.aks, 12288
  %i.aku = or disjoint i32 %i.akt, %i.akj
  %i.akv = trunc i32 %i.akr to i16
  %i.akw = load ptr, ptr %i.ada, align 8
  %i.akx = getelementptr [2 x i8], ptr %i.akw, i64 %indvars.iv.next439.i.i.i
  %i.aky = getelementptr i8, ptr %i.akx, i64 4
  store i16 %i.akv, ptr %i.aky, align 2
  %i.akz = load ptr, ptr %0, align 8
  %i.ala = getelementptr [4 x i8], ptr %i.akz, i64 %indvars.iv.next437.i.i.i
  %i.alb = getelementptr i8, ptr %i.ala, i64 8
  %i.alc = load i32, ptr %i.alb, align 4          ; 2 uses
  %i.ald = lshr i32 %i.alc, 6
  %i.ale = and i32 %i.ald, 3072
  %i.alf = or disjoint i32 %i.aku, %i.ale
  %i.alg = trunc i32 %i.alc to i16
  %i.alh = load ptr, ptr %i.ada, align 8
  %i.ali = getelementptr [2 x i8], ptr %i.alh, i64 %indvars.iv.next439.i.i.i
  %i.alj = getelementptr i8, ptr %i.ali, i64 6
  store i16 %i.alg, ptr %i.alj, align 2
  %i.alk = load ptr, ptr %0, align 8
  %i.all = getelementptr [4 x i8], ptr %i.alk, i64 %indvars.iv.next437.i.i.i
  %i.alm = getelementptr i8, ptr %i.all, i64 12
  %i.aln = load i32, ptr %i.alm, align 4          ; 2 uses
  %i.alo = lshr i32 %i.aln, 8
  %i.alp = and i32 %i.alo, 768
  %i.alq = or disjoint i32 %i.alf, %i.alp
  %i.alr = trunc i32 %i.aln to i16
  %i.als = load ptr, ptr %i.ada, align 8
  %i.alt = getelementptr [2 x i8], ptr %i.als, i64 %indvars.iv.next439.i.i.i
  %i.alu = getelementptr i8, ptr %i.alt, i64 8
  store i16 %i.alr, ptr %i.alu, align 2
  %i.alv = load ptr, ptr %0, align 8
  %i.alw = getelementptr [4 x i8], ptr %i.alv, i64 %indvars.iv.next437.i.i.i
  %i.alx = getelementptr i8, ptr %i.alw, i64 16
  %i.aly = load i32, ptr %i.alx, align 4          ; 2 uses
  %i.alz = lshr i32 %i.aly, 10
  %i.ama = and i32 %i.alz, 192
  %i.amb = or disjoint i32 %i.alq, %i.ama
  %i.amc = trunc i32 %i.aly to i16
  %i.amd = load ptr, ptr %i.ada, align 8
  %i.ame = getelementptr [2 x i8], ptr %i.amd, i64 %indvars.iv.next439.i.i.i
  %i.amf = getelementptr i8, ptr %i.ame, i64 10
  store i16 %i.amc, ptr %i.amf, align 2
  %i.amg = load ptr, ptr %0, align 8
  %i.amh = getelementptr [4 x i8], ptr %i.amg, i64 %indvars.iv.next437.i.i.i
  %i.ami = getelementptr i8, ptr %i.amh, i64 20
  %i.amj = load i32, ptr %i.ami, align 4          ; 2 uses
  %i.amk = lshr i32 %i.amj, 12
  %i.aml = and i32 %i.amk, 48
  %i.amm = or disjoint i32 %i.amb, %i.aml
  %i.amn = trunc i32 %i.amj to i16
  %i.amo = load ptr, ptr %i.ada, align 8
  %i.amp = getelementptr [2 x i8], ptr %i.amo, i64 %indvars.iv.next439.i.i.i
  %i.amq = getelementptr i8, ptr %i.amp, i64 12
  store i16 %i.amn, ptr %i.amq, align 2
  %i.amr = load ptr, ptr %0, align 8
  %i.ams = getelementptr [4 x i8], ptr %i.amr, i64 %indvars.iv.next437.i.i.i
  %i.amt = getelementptr i8, ptr %i.ams, i64 24
  %i.amu = load i32, ptr %i.amt, align 4          ; 2 uses
  %i.amv = lshr i32 %i.amu, 14
  %i.amw = and i32 %i.amv, 12
  %i.amx = or i32 %i.amm, %i.amw
  %i.amy = trunc i32 %i.amu to i16
  %i.amz = load ptr, ptr %i.ada, align 8
  %i.ana = getelementptr [2 x i8], ptr %i.amz, i64 %indvars.iv.next439.i.i.i
  %i.anb = getelementptr i8, ptr %i.ana, i64 14
  store i16 %i.amy, ptr %i.anb, align 2
  %i.anc = load ptr, ptr %0, align 8
  %indvars.iv.next437.1.i.i.i = or disjoint i64 %indvars.iv434.i.i.i, 16 ; 8 uses
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %indvars.iv.next437.i.i.i
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 28
  %i.anf = load i32, ptr %i.ane, align 4          ; 2 uses
  %i.ang = lshr i32 %i.anf, 16
  %i.anh = and i32 %i.ang, 3
  %i.ani = or i32 %i.amx, %i.anh
  %i.anj = trunc i32 %i.anf to i16
  %i.ank = load ptr, ptr %i.ada, align 8
  %indvars.iv.next439.1.i.i.i = add nsw i64 %i.agt, 18 ; 9 uses
  %i.anl = getelementptr [2 x i8], ptr %i.ank, i64 %indvars.iv.next439.i.i.i
  %i.anm = getelementptr i8, ptr %i.anl, i64 16
end_hunk_0
begin_hunk_1_@umutablecptrie_buildImmutable_78:bb.a
  %i.anp = getelementptr inbounds [2 x i8], ptr %i.ano, i64 %indvars.iv.next439.i.i.i
  store i16 %i.ann, ptr %i.anp, align 2
  %i.anq = load ptr, ptr %0, align 8
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.next437.1.i.i.i
  %i.ans = load i32, ptr %i.anr, align 4          ; 2 uses
  %i.ant = lshr i32 %i.ans, 2
  %i.anu = and i32 %i.ant, 49152
  %i.anv = trunc i32 %i.ans to i16
  %i.anw = load ptr, ptr %i.ada, align 8
  %i.anx = getelementptr [2 x i8], ptr %i.anw, i64 %indvars.iv.next439.1.i.i.i
  %i.any = getelementptr i8, ptr %i.anx, i64 2
  store i16 %i.anv, ptr %i.any, align 2
  %i.anz = load ptr, ptr %0, align 8
  %i.aoa = getelementptr [4 x i8], ptr %i.anz, i64 %indvars.iv.next437.1.i.i.i
  %i.aob = getelementptr i8, ptr %i.aoa, i64 4
  %i.aoc = load i32, ptr %i.aob, align 4          ; 2 uses
  %i.aod = lshr i32 %i.aoc, 4
  %i.aoe = and i32 %i.aod, 12288
  %i.aof = or disjoint i32 %i.aoe, %i.anu
  %i.aog = trunc i32 %i.aoc to i16
  %i.aoh = load ptr, ptr %i.ada, align 8
  %i.aoi = getelementptr [2 x i8], ptr %i.aoh, i64 %indvars.iv.next439.1.i.i.i
  %i.aoj = getelementptr i8, ptr %i.aoi, i64 4
  store i16 %i.aog, ptr %i.aoj, align 2
  %i.aok = load ptr, ptr %0, align 8
  %i.aol = getelementptr [4 x i8], ptr %i.aok, i64 %indvars.iv.next437.1.i.i.i
  %i.aom = getelementptr i8, ptr %i.aol, i64 8
  %i.aon = load i32, ptr %i.aom, align 4          ; 2 uses
  %i.aoo = lshr i32 %i.aon, 6
  %i.aop = and i32 %i.aoo, 3072
  %i.aoq = or disjoint i32 %i.aof, %i.aop
  %i.aor = trunc i32 %i.aon to i16
  %i.aos = load ptr, ptr %i.ada, align 8
  %i.aot = getelementptr [2 x i8], ptr %i.aos, i64 %indvars.iv.next439.1.i.i.i
  %i.aou = getelementptr i8, ptr %i.aot, i64 6
  store i16 %i.aor, ptr %i.aou, align 2
  %i.aov = load ptr, ptr %0, align 8
  %i.aow = getelementptr [4 x i8], ptr %i.aov, i64 %indvars.iv.next437.1.i.i.i
  %i.aox = getelementptr i8, ptr %i.aow, i64 12
  %i.aoy = load i32, ptr %i.aox, align 4          ; 2 uses
  %i.aoz = lshr i32 %i.aoy, 8
  %i.apa = and i32 %i.aoz, 768
  %i.apb = or disjoint i32 %i.aoq, %i.apa
  %i.apc = trunc i32 %i.aoy to i16
  %i.apd = load ptr, ptr %i.ada, align 8
  %i.ape = getelementptr [2 x i8], ptr %i.apd, i64 %indvars.iv.next439.1.i.i.i
  %i.apf = getelementptr i8, ptr %i.ape, i64 8
  store i16 %i.apc, ptr %i.apf, align 2
  %i.apg = load ptr, ptr %0, align 8
  %i.aph = getelementptr [4 x i8], ptr %i.apg, i64 %indvars.iv.next437.1.i.i.i
  %i.api = getelementptr i8, ptr %i.aph, i64 16
  %i.apj = load i32, ptr %i.api, align 4          ; 2 uses
  %i.apk = lshr i32 %i.apj, 10
  %i.apl = and i32 %i.apk, 192
  %i.apm = or disjoint i32 %i.apb, %i.apl
  %i.apn = trunc i32 %i.apj to i16
  %i.apo = load ptr, ptr %i.ada, align 8
  %i.app = getelementptr [2 x i8], ptr %i.apo, i64 %indvars.iv.next439.1.i.i.i
  %i.apq = getelementptr i8, ptr %i.app, i64 10
  store i16 %i.apn, ptr %i.apq, align 2
  %i.apr = load ptr, ptr %0, align 8
  %i.aps = getelementptr [4 x i8], ptr %i.apr, i64 %indvars.iv.next437.1.i.i.i
  %i.apt = getelementptr i8, ptr %i.aps, i64 20
  %i.apu = load i32, ptr %i.apt, align 4          ; 2 uses
  %i.apv = lshr i32 %i.apu, 12
  %i.apw = and i32 %i.apv, 48
  %i.apx = or disjoint i32 %i.apm, %i.apw
  %i.apy = trunc i32 %i.apu to i16
  %i.apz = load ptr, ptr %i.ada, align 8
  %i.aqa = getelementptr [2 x i8], ptr %i.apz, i64 %indvars.iv.next439.1.i.i.i
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 12
  store i16 %i.apy, ptr %i.aqb, align 2
  %i.aqc = load ptr, ptr %0, align 8
  %i.aqd = getelementptr [4 x i8], ptr %i.aqc, i64 %indvars.iv.next437.1.i.i.i
  %i.aqe = getelementptr i8, ptr %i.aqd, i64 24
  %i.aqf = load i32, ptr %i.aqe, align 4          ; 2 uses
  %i.aqg = lshr i32 %i.aqf, 14
  %i.aqh = and i32 %i.aqg, 12
  %i.aqi = or i32 %i.apx, %i.aqh
  %i.aqj = trunc i32 %i.aqf to i16
  %i.aqk = load ptr, ptr %i.ada, align 8
  %i.aql = getelementptr [2 x i8], ptr %i.aqk, i64 %indvars.iv.next439.1.i.i.i
  %i.aqm = getelementptr i8, ptr %i.aql, i64 14
  store i16 %i.aqj, ptr %i.aqm, align 2
  %i.aqn = load ptr, ptr %0, align 8
  %indvars.iv.next437.2.i.i.i = or disjoint i64 %indvars.iv434.i.i.i, 24 ; 8 uses
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %i.aqn, i64 %indvars.iv.next437.1.i.i.i
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 28
  %i.aqq = load i32, ptr %i.aqp, align 4          ; 2 uses
  %i.aqr = lshr i32 %i.aqq, 16
  %i.aqs = and i32 %i.aqr, 3
  %i.aqt = or i32 %i.aqi, %i.aqs
  %i.aqu = trunc i32 %i.aqq to i16
  %i.aqv = load ptr, ptr %i.ada, align 8
  %indvars.iv.next439.2.i.i.i = add nsw i64 %i.agt, 27 ; 9 uses
  %i.aqw = getelementptr [2 x i8], ptr %i.aqv, i64 %indvars.iv.next439.1.i.i.i
  %i.aqx = getelementptr i8, ptr %i.aqw, i64 16
  store i16 %i.aqu, ptr %i.aqx, align 2
  %i.aqy = trunc nuw i32 %i.aqt to i16
  %i.aqz = load ptr, ptr %i.ada, align 8
  %i.ara = getelementptr inbounds [2 x i8], ptr %i.aqz, i64 %indvars.iv.next439.1.i.i.i
  store i16 %i.aqy, ptr %i.ara, align 2
  %i.arb = load ptr, ptr %0, align 8
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.arb, i64 %indvars.iv.next437.2.i.i.i
  %i.ard = load i32, ptr %i.arc, align 4          ; 2 uses
  %i.are = lshr i32 %i.ard, 2
  %i.arf = and i32 %i.are, 49152
  %i.arg = trunc i32 %i.ard to i16
  %i.arh = load ptr, ptr %i.ada, align 8
  %i.ari = getelementptr [2 x i8], ptr %i.arh, i64 %indvars.iv.next439.2.i.i.i
  %i.arj = getelementptr i8, ptr %i.ari, i64 2
  store i16 %i.arg, ptr %i.arj, align 2
  %i.ark = load ptr, ptr %0, align 8
  %i.arl = getelementptr [4 x i8], ptr %i.ark, i64 %indvars.iv.next437.2.i.i.i
  %i.arm = getelementptr i8, ptr %i.arl, i64 4
  %i.arn = load i32, ptr %i.arm, align 4          ; 2 uses
  %i.aro = lshr i32 %i.arn, 4
  %i.arp = and i32 %i.aro, 12288
  %i.arq = or disjoint i32 %i.arp, %i.arf
  %i.arr = trunc i32 %i.arn to i16
  %i.ars = load ptr, ptr %i.ada, align 8
  %i.art = getelementptr [2 x i8], ptr %i.ars, i64 %indvars.iv.next439.2.i.i.i
  %i.aru = getelementptr i8, ptr %i.art, i64 4
  store i16 %i.arr, ptr %i.aru, align 2
  %i.arv = load ptr, ptr %0, align 8
  %i.arw = getelementptr [4 x i8], ptr %i.arv, i64 %indvars.iv.next437.2.i.i.i
  %i.arx = getelementptr i8, ptr %i.arw, i64 8
  %i.ary = load i32, ptr %i.arx, align 4          ; 2 uses
  %i.arz = lshr i32 %i.ary, 6
  %i.asa = and i32 %i.arz, 3072
  %i.asb = or disjoint i32 %i.arq, %i.asa
  %i.asc = trunc i32 %i.ary to i16
  %i.asd = load ptr, ptr %i.ada, align 8
  %i.ase = getelementptr [2 x i8], ptr %i.asd, i64 %indvars.iv.next439.2.i.i.i
  %i.asf = getelementptr i8, ptr %i.ase, i64 6
  store i16 %i.asc, ptr %i.asf, align 2
  %i.asg = load ptr, ptr %0, align 8
  %i.ash = getelementptr [4 x i8], ptr %i.asg, i64 %indvars.iv.next437.2.i.i.i
  %i.asi = getelementptr i8, ptr %i.ash, i64 12
  %i.asj = load i32, ptr %i.asi, align 4          ; 2 uses
  %i.ask = lshr i32 %i.asj, 8
  %i.asl = and i32 %i.ask, 768
  %i.asm = or disjoint i32 %i.asb, %i.asl
  %i.asn = trunc i32 %i.asj to i16
  %i.aso = load ptr, ptr %i.ada, align 8
  %i.asp = getelementptr [2 x i8], ptr %i.aso, i64 %indvars.iv.next439.2.i.i.i
  %i.asq = getelementptr i8, ptr %i.asp, i64 8
  store i16 %i.asn, ptr %i.asq, align 2
  %i.asr = load ptr, ptr %0, align 8
  %i.ass = getelementptr [4 x i8], ptr %i.asr, i64 %indvars.iv.next437.2.i.i.i
  %i.ast = getelementptr i8, ptr %i.ass, i64 16
  %i.asu = load i32, ptr %i.ast, align 4          ; 2 uses
  %i.asv = lshr i32 %i.asu, 10
  %i.asw = and i32 %i.asv, 192
  %i.asx = or disjoint i32 %i.asm, %i.asw
  %i.asy = trunc i32 %i.asu to i16
  %i.asz = load ptr, ptr %i.ada, align 8
  %i.ata = getelementptr [2 x i8], ptr %i.asz, i64 %indvars.iv.next439.2.i.i.i
  %i.atb = getelementptr i8, ptr %i.ata, i64 10
  store i16 %i.asy, ptr %i.atb, align 2
  %i.atc = load ptr, ptr %0, align 8
  %i.atd = getelementptr [4 x i8], ptr %i.atc, i64 %indvars.iv.next437.2.i.i.i
  %i.ate = getelementptr i8, ptr %i.atd, i64 20
  %i.atf = load i32, ptr %i.ate, align 4          ; 2 uses
  %i.atg = lshr i32 %i.atf, 12
  %i.ath = and i32 %i.atg, 48
  %i.ati = or disjoint i32 %i.asx, %i.ath
  %i.atj = trunc i32 %i.atf to i16
  %i.atk = load ptr, ptr %i.ada, align 8
  %i.atl = getelementptr [2 x i8], ptr %i.atk, i64 %indvars.iv.next439.2.i.i.i
  %i.atm = getelementptr i8, ptr %i.atl, i64 12
  store i16 %i.atj, ptr %i.atm, align 2
  %i.atn = load ptr, ptr %0, align 8
  %i.ato = getelementptr [4 x i8], ptr %i.atn, i64 %indvars.iv.next437.2.i.i.i
  %i.atp = getelementptr i8, ptr %i.ato, i64 24
  %i.atq = load i32, ptr %i.atp, align 4          ; 2 uses
  %i.atr = lshr i32 %i.atq, 14
  %i.ats = and i32 %i.atr, 12
  %i.att = or i32 %i.ati, %i.ats
  %i.atu = trunc i32 %i.atq to i16
  %i.atv = load ptr, ptr %i.ada, align 8
  %i.atw = getelementptr [2 x i8], ptr %i.atv, i64 %indvars.iv.next439.2.i.i.i
  %i.atx = getelementptr i8, ptr %i.atw, i64 14
  store i16 %i.atu, ptr %i.atx, align 2
  %i.aty = load ptr, ptr %0, align 8
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.aty, i64 %indvars.iv.next437.2.i.i.i
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 28
  %i.aub = load i32, ptr %i.aua, align 4          ; 2 uses
  %i.auc = lshr i32 %i.aub, 16
  %i.aud = and i32 %i.auc, 3
  %i.aue = or i32 %i.att, %i.aud
  %i.auf = trunc i32 %i.aub to i16
  %i.aug = load ptr, ptr %i.ada, align 8
  %i.auh = getelementptr [2 x i8], ptr %i.aug, i64 %indvars.iv.next439.2.i.i.i
  %i.aui = getelementptr i8, ptr %i.auh, i64 16
  store i16 %i.auf, ptr %i.aui, align 2
  %i.auj = trunc nuw i32 %i.aue to i16
  %i.auk = load ptr, ptr %i.ada, align 8
  %i.aul = getelementptr inbounds [2 x i8], ptr %i.auk, i64 %indvars.iv.next439.2.i.i.i
  store i16 %i.auj, ptr %i.aul, align 2
  %i.aum = load ptr, ptr %i.ada, align 8          ; 6 uses
  %i.aun = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.aum, ptr noundef %i.aum, i32 noundef %.0248382.i.i.i) ; 2 uses
  %i.auo = icmp sgt i32 %i.aun, -1
  br i1 %i.auo, label %bb.ev, label %bb.eq

bb.eq:                                            ; preds = %.thread.i99.i.i
  %i.aup = icmp eq i32 %.0248382.i.i.i, %i.act
  br i1 %i.aup, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.auq = getelementptr inbounds [2 x i8], ptr %i.aum, i64 %i.agt ; 2 uses
  br label %.lr.ph.i.i100.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i311.i.i.i
  %i.aur = icmp samesign ugt i64 %indvars.iv.in.i.i101.i.i, 2
  br i1 %i.aur, label %.lr.ph.i.i100.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.lr.ph.i.i100.i.i.1:                              ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i
  %indvars.iv.i310.i.i.i.1 = add nsw i64 %indvars.iv.in.i.i101.i.i, -2 ; 3 uses
  %i.aus = sub nsw i64 %i.agt, %indvars.iv.i310.i.i.i.1
  %i.aut = getelementptr inbounds [2 x i8], ptr %i.aum, i64 %i.aus
  %i.auu = trunc nuw nsw i64 %indvars.iv.i310.i.i.i.1 to i32 ; 2 uses
  br label %.lr.ph.i.i311.i.i.i.1

.lr.ph.i.i311.i.i.i.1:                            ; preds = %bb.es, %.lr.ph.i.i100.i.i.1
  %.010.i.i312.i.i.i.1 = phi i32 [ %i.ava, %bb.es ], [ %i.auu, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %.069.i.i313.i.i.i.1 = phi ptr [ %i.auz, %bb.es ], [ %i.auq, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %.078.i.i314.i.i.i.1 = phi ptr [ %i.auy, %bb.es ], [ %i.aut, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %i.auv = load i16, ptr %.078.i.i314.i.i.i.1, align 2
  %i.auw = load i16, ptr %.069.i.i313.i.i.i.1, align 2
  %i.aux = icmp eq i16 %i.auv, %i.auw
  br i1 %i.aux, label %bb.es, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1: ; preds = %.lr.ph.i.i311.i.i.i.1
  %indvars.iv.next442.i.i.i.1 = add nsw i64 %indvars.iv441.i.i.i, -2
  br label %.lr.ph.i.i100.i.i

bb.es:                                            ; preds = %.lr.ph.i.i311.i.i.i.1
  %i.auy = getelementptr inbounds nuw i8, ptr %.078.i.i314.i.i.i.1, i64 2
  %i.auz = getelementptr inbounds nuw i8, ptr %.069.i.i313.i.i.i.1, i64 2
  %i.ava = add nsw i32 %.010.i.i312.i.i.i.1, -1
  %i.avb = icmp sgt i32 %.010.i.i312.i.i.i.1, 1
  br i1 %i.avb, label %.lr.ph.i.i311.i.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit, !llvm.loop !58

.lr.ph.i.i100.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1, %bb.er
  %indvars.iv441.i.i.i = phi i64 [ 35, %bb.er ], [ %indvars.iv.next442.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ] ; 3 uses
  %indvars.iv.in.i.i101.i.i = phi i64 [ 36, %bb.er ], [ %indvars.iv.i310.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ] ; 4 uses
  %indvars.iv.i310.i.i.i = add nsw i64 %indvars.iv.in.i.i101.i.i, -1 ; 3 uses
  %i.avc = sub nsw i64 %i.agt, %indvars.iv.i310.i.i.i
  %i.avd = getelementptr inbounds [2 x i8], ptr %i.aum, i64 %i.avc
  %i.ave = trunc nuw nsw i64 %indvars.iv.i310.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i311.i.i.i

.lr.ph.i.i311.i.i.i:                              ; preds = %bb.et, %.lr.ph.i.i100.i.i
  %.010.i.i312.i.i.i = phi i32 [ %i.avk, %bb.et ], [ %i.ave, %.lr.ph.i.i100.i.i ] ; 2 uses
  %.069.i.i313.i.i.i = phi ptr [ %i.avj, %bb.et ], [ %i.auq, %.lr.ph.i.i100.i.i ] ; 2 uses
  %.078.i.i314.i.i.i = phi ptr [ %i.avi, %bb.et ], [ %i.avd, %.lr.ph.i.i100.i.i ] ; 2 uses
  %i.avf = load i16, ptr %.078.i.i314.i.i.i, align 2
  %i.avg = load i16, ptr %.069.i.i313.i.i.i, align 2
  %i.avh = icmp eq i16 %i.avf, %i.avg
  br i1 %i.avh, label %bb.et, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.et:                                            ; preds = %.lr.ph.i.i311.i.i.i
  %i.avi = getelementptr inbounds nuw i8, ptr %.078.i.i314.i.i.i, i64 2
  %i.avj = getelementptr inbounds nuw i8, ptr %.069.i.i313.i.i.i, i64 2
  %i.avk = add nsw i32 %.010.i.i312.i.i.i, -1
  %i.avl = icmp sgt i32 %.010.i.i312.i.i.i, 1
  br i1 %i.avl, label %.lr.ph.i.i311.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !58

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit: ; preds = %bb.es
  %indvars.iv.next442.i.i.i.le = add nsw i64 %indvars.iv441.i.i.i, -1
  br label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.et, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit
  %indvars.iv441.i.i.i.lcssa = phi i64 [ %indvars.iv.next442.i.i.i.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv441.i.i.i, %bb.et ] ; 4 uses
  %indvars.iv.in.i.i101.i.i.lcssa = phi i64 [ %indvars.iv.i310.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv.in.i.i101.i.i, %bb.et ]
  %.lcssa292 = phi i32 [ %i.auu, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %i.ave, %bb.et ]
  %i.avm = sub nsw i32 %.0248382.i.i.i, %.lcssa292 ; 2 uses
  %i.avn = icmp sgt i64 %indvars.iv.in.i.i101.i.i.lcssa, 1
  br i1 %i.avn, label %.lr.ph.i102.i.i.preheader, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.lr.ph.i102.i.i.preheader:                        ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i
  %i.avo = sub i64 0, %indvars.iv441.i.i.i.lcssa
  %xtraiter383 = and i64 %i.avo, 3                ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.lr.ph.i102.i.i.prol.loopexit, label %.lr.ph.i102.i.i.prol

.lr.ph.i102.i.i.prol:                             ; preds = %.lr.ph.i102.i.i.preheader, %.lr.ph.i102.i.i.prol
  %indvars.iv446.i.i.i.prol = phi i64 [ %indvars.iv.next447.i.i.i.prol, %.lr.ph.i102.i.i.prol ], [ %i.agt, %.lr.ph.i102.i.i.preheader ] ; 2 uses
  %indvars.iv444.i.i.i.prol = phi i64 [ %indvars.iv.next445.i.i.i.prol, %.lr.ph.i102.i.i.prol ], [ %indvars.iv441.i.i.i.lcssa, %.lr.ph.i102.i.i.preheader ] ; 2 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %.lr.ph.i102.i.i.prol ], [ 0, %.lr.ph.i102.i.i.preheader ]
  %i.avp = load ptr, ptr %i.ada, align 8          ; 2 uses
  %indvars.iv.next445.i.i.i.prol = add nuw nsw i64 %indvars.iv444.i.i.i.prol, 1 ; 2 uses
  %i.avq = getelementptr [2 x i8], ptr %i.avp, i64 %indvars.iv444.i.i.i.prol
  %i.avr = getelementptr [2 x i8], ptr %i.avq, i64 %i.agt
  %i.avs = load i16, ptr %i.avr, align 2
  %indvars.iv.next447.i.i.i.prol = add nsw i64 %indvars.iv446.i.i.i.prol, 1 ; 3 uses
  %i.avt = getelementptr inbounds [2 x i8], ptr %i.avp, i64 %indvars.iv446.i.i.i.prol
  store i16 %i.avs, ptr %i.avt, align 2
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %.lr.ph.i102.i.i.prol.loopexit, label %.lr.ph.i102.i.i.prol, !llvm.loop !59

.lr.ph.i102.i.i.prol.loopexit:                    ; preds = %.lr.ph.i102.i.i.prol, %.lr.ph.i102.i.i.preheader
  %indvars.iv.next447.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next447.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %indvars.iv446.i.i.i.unr = phi i64 [ %i.agt, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next447.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %indvars.iv444.i.i.i.unr = phi i64 [ %indvars.iv441.i.i.i.lcssa, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next445.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %i.avu = add i64 %indvars.iv441.i.i.i.lcssa, -33
  %i.avv = icmp ult i64 %i.avu, 3
  br i1 %i.avv, label %.loopexit350.loopexit.i.i.i, label %.lr.ph.i102.i.i

.lr.ph.i102.i.i:                                  ; preds = %.lr.ph.i102.i.i.prol.loopexit, %.lr.ph.i102.i.i
  %indvars.iv446.i.i.i = phi i64 [ %indvars.iv.next447.i.i.i.3, %.lr.ph.i102.i.i ], [ %indvars.iv446.i.i.i.unr, %.lr.ph.i102.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv444.i.i.i = phi i64 [ %indvars.iv.next445.i.i.i.3, %.lr.ph.i102.i.i ], [ %indvars.iv444.i.i.i.unr, %.lr.ph.i102.i.i.prol.loopexit ] ; 5 uses
  %i.avw = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.avx = getelementptr [2 x i8], ptr %i.avw, i64 %indvars.iv444.i.i.i
  %i.avy = getelementptr [2 x i8], ptr %i.avx, i64 %i.agt
  %i.avz = load i16, ptr %i.avy, align 2
  %i.awa = getelementptr inbounds [2 x i8], ptr %i.avw, i64 %indvars.iv446.i.i.i
  store i16 %i.avz, ptr %i.awa, align 2
  %i.awb = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.awc = getelementptr [2 x i8], ptr %i.awb, i64 %indvars.iv444.i.i.i
  %i.awd = getelementptr i8, ptr %i.awc, i64 2
  %i.awe = getelementptr [2 x i8], ptr %i.awd, i64 %i.agt
  %i.awf = load i16, ptr %i.awe, align 2
  %i.awg = getelementptr [2 x i8], ptr %i.awb, i64 %indvars.iv446.i.i.i
  %i.awh = getelementptr i8, ptr %i.awg, i64 2
  store i16 %i.awf, ptr %i.awh, align 2
  %i.awi = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.awj = getelementptr [2 x i8], ptr %i.awi, i64 %indvars.iv444.i.i.i
  %i.awk = getelementptr i8, ptr %i.awj, i64 4
  %i.awl = getelementptr [2 x i8], ptr %i.awk, i64 %i.agt
  %i.awm = load i16, ptr %i.awl, align 2
  %i.awn = getelementptr [2 x i8], ptr %i.awi, i64 %indvars.iv446.i.i.i
  %i.awo = getelementptr i8, ptr %i.awn, i64 4
  store i16 %i.awm, ptr %i.awo, align 2
  %i.awp = load ptr, ptr %i.ada, align 8          ; 2 uses
  %indvars.iv.next445.i.i.i.3 = add nuw nsw i64 %indvars.iv444.i.i.i, 4 ; 2 uses
  %i.awq = getelementptr [2 x i8], ptr %i.awp, i64 %indvars.iv444.i.i.i
  %i.awr = getelementptr i8, ptr %i.awq, i64 6
  %i.aws = getelementptr [2 x i8], ptr %i.awr, i64 %i.agt
  %i.awt = load i16, ptr %i.aws, align 2
  %indvars.iv.next447.i.i.i.3 = add nsw i64 %indvars.iv446.i.i.i, 4 ; 2 uses
  %i.awu = getelementptr [2 x i8], ptr %i.awp, i64 %indvars.iv446.i.i.i
  %i.awv = getelementptr i8, ptr %i.awu, i64 6
  store i16 %i.awt, ptr %i.awv, align 2
  %exitcond451.not.i.i.i.3 = icmp eq i64 %indvars.iv.next445.i.i.i.3, 36
  br i1 %exitcond451.not.i.i.i.3, label %.loopexit350.loopexit.i.i.i, label %.lr.ph.i102.i.i, !llvm.loop !60

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, %bb.eq
  %i.aww = phi i32 [ %i.avm, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.act, %bb.eq ], [ %.0248382.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ]
  %i.awx = add nsw i32 %.0248382.i.i.i, 36
  br label %.loopexit350.i.i.i

.loopexit350.loopexit.i.i.i:                      ; preds = %.lr.ph.i102.i.i, %.lr.ph.i102.i.i.prol.loopexit
  %indvars.iv.next447.i.i.i.lcssa = phi i64 [ %indvars.iv.next447.i.i.i.lcssa.unr, %.lr.ph.i102.i.i.prol.loopexit ], [ %indvars.iv.next447.i.i.i.3, %.lr.ph.i102.i.i ]
  %i.awy = trunc nsw i64 %indvars.iv.next447.i.i.i.lcssa to i32
  %.pre.i.i.i = load ptr, ptr %i.ada, align 8
  br label %.loopexit350.i.i.i

.loopexit350.i.i.i:                               ; preds = %.loopexit350.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i
  %8 = phi ptr [ %i.aum, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %.pre.i.i.i, %.loopexit350.loopexit.i.i.i ]
  %9 = phi i32 [ %i.aww, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.avm, %.loopexit350.loopexit.i.i.i ] ; 2 uses
  %.4252.i.i.i = phi i32 [ %i.awx, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.awy, %.loopexit350.loopexit.i.i.i ] ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %8, i32 noundef %i.act, i32 noundef %.0248382.i.i.i, i32 noundef %.4252.i.i.i)
  br i1 %.0259.lcssa.i.i.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %.loopexit350.i.i.i
  %i.awz = load ptr, ptr %i.ada, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.awz, i32 noundef %i.act, i32 noundef %.0248382.i.i.i, i32 noundef %.4252.i.i.i)
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %.loopexit350.i.i.i, %.thread.i99.i.i
  %.5.i.i.i = phi i32 [ %.0248382.i.i.i, %.thread.i99.i.i ], [ %.4252.i.i.i, %bb.eu ], [ %.4252.i.i.i, %.loopexit350.i.i.i ]
  %.1245.in.i.i.i = phi i32 [ %i.aun, %.thread.i99.i.i ], [ %9, %bb.eu ], [ %9, %.loopexit350.i.i.i ]
  %.1245.i.i.i = or i32 %.1245.in.i.i.i, 32768
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.ep, %._crit_edge378.i.i.i, %.thread337.i.i.i, %bb.ei, %bb.eh
  %.5275335.i.i.i = phi i32 [ %.5275340.i.i.i, %._crit_edge378.i.i.i ], [ %.4274380.i.i.i, %bb.ei ], [ %.5275336.i.i.i, %bb.ev ], [ %.5275340.i.i.i, %.thread337.i.i.i ], [ %.5275340.i.i.i, %bb.ep ], [ %.4274380.i.i.i, %bb.eh ] ; 2 uses
  %.6.i98.i.i = phi i32 [ %7, %._crit_edge378.i.i.i ], [ %.0248382.i.i.i, %bb.ei ], [ %.5.i.i.i, %bb.ev ], [ %.0248382.i.i.i, %.thread337.i.i.i ], [ %7, %bb.ep ], [ %.0248382.i.i.i, %bb.eh ] ; 2 uses
  %.2246.i.i.i = phi i32 [ %i.agj, %._crit_edge378.i.i.i ], [ %i.afc, %bb.ei ], [ %.1245.i.i.i, %bb.ev ], [ %i.afg, %.thread337.i.i.i ], [ %i.agj, %bb.ep ], [ %i.aet, %bb.eh ] ; 3 uses
  %i.axa = load i32, ptr %i.ym, align 4           ; 2 uses
  %i.axb = icmp slt i32 %i.axa, 0
  %i.axc = icmp sgt i32 %.5275335.i.i.i, -1
  %or.cond3.i.i.i = select i1 %i.axb, i1 %i.axc, i1 false
  br i1 %or.cond3.i.i.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 %.2246.i.i.i, ptr %i.ym, align 4
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.axd = phi i32 [ %.2246.i.i.i, %bb.ex ], [ %i.axa, %bb.ew ] ; 2 uses
  %i.axe = trunc i32 %.2246.i.i.i to i16
  %indvars.iv.next461.i.i.i = add nuw nsw i64 %indvars.iv460.i.i.i, 1 ; 2 uses
  %i.axf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv460.i.i.i
  store i16 %i.axe, ptr %i.axf, align 2
  %indvars.iv.next435.i.i.i = add nuw nsw i64 %indvars.iv434.i.i.i, 32 ; 2 uses
  %i.axg = icmp samesign ult i64 %indvars.iv.next435.i.i.i, %i.aep
  br i1 %i.axg, label %bb.ef, label %._crit_edge388.loopexit.i.i.i, !llvm.loop !61

bb.ez:                                            ; preds = %._crit_edge388.i.i.i
  store i32 32767, ptr %i.ym, align 4
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %._crit_edge388.i.i.i
  %i.axh = icmp sgt i32 %.0248.lcssa.i.i.i, 32798
  br i1 %i.axh, label %bb.fb, label %.preheader.i89.i.i

.preheader.i89.i.i:                               ; preds = %bb.fa
  %i.axi = icmp sgt i32 %.0253.lcssa.i.i.i, 0
  br i1 %i.axi, label %.lr.ph401.i.i.i, label %.loopexit.i.i.i

.lr.ph401.i.i.i:                                  ; preds = %.preheader.i89.i.i
  %i.axj = sext i32 %i.act to i64
  %i.axk = zext nneg i32 %i.yi to i64
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 8, ptr %3, align 4
  br label %.loopexit.i.i.i

bb.fc:                                            ; preds = %bb.fi, %.lr.ph401.i.i.i
  %indvars.iv472.i.i.i = phi i64 [ %i.axk, %.lr.ph401.i.i.i ], [ %indvars.iv.next473.i.i.i, %bb.fi ] ; 2 uses
  %.0230399.i.i.i = phi i32 [ 0, %.lr.ph401.i.i.i ], [ %i.bad, %bb.fi ] ; 6 uses
  %.0232397.i.i.i = phi i32 [ 32, %.lr.ph401.i.i.i ], [ %.1233346.i.i.i, %bb.fi ] ; 2 uses
  %.7396.i.i.i = phi i32 [ %.0248.lcssa.i.i.i, %.lr.ph401.i.i.i ], [ %.9.i.i.i, %bb.fi ] ; 9 uses
  %i.axl = sub nsw i32 %.0253.lcssa.i.i.i, %.0230399.i.i.i ; 6 uses
  %.not290.i.i.i = icmp slt i32 %i.axl, %.0232397.i.i.i
  %i.axm = load ptr, ptr %i.ada, align 8          ; 5 uses
  br i1 %.not290.i.i.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.axn = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.axm, ptr noundef nonnull %i.b, i32 noundef %.0230399.i.i.i)
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

bb.fe:                                            ; preds = %bb.fc
  %i.axo = sub i32 %.7396.i.i.i, %i.axl           ; 2 uses
  %i.axp = sext i32 %.0230399.i.i.i to i64
  %i.axq = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.axp
  %.not18.i.i.i.i = icmp sgt i32 %i.act, %i.axo
  br i1 %.not18.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i316.i.i.i

.lr.ph.i316.i.i.i:                                ; preds = %bb.fe
  %i.axr = add i32 %i.axo, 1
  br label %.lr.ph.i.preheader.us.i.i.i.i

.lr.ph.i.preheader.us.i.i.i.i:                    ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %.lr.ph.i316.i.i.i
  %indvars.iv.i318.i.i.i = phi i64 [ %i.axj, %.lr.ph.i316.i.i.i ], [ %indvars.iv.next.i319.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 3 uses
  %i.axs = getelementptr inbounds [2 x i8], ptr %i.axm, i64 %indvars.iv.i318.i.i.i
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.ff, %.lr.ph.i.preheader.us.i.i.i.i
  %.010.i.us.i.i.i.i = phi i32 [ %i.axy, %bb.ff ], [ %i.axl, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i = phi ptr [ %i.axx, %bb.ff ], [ %i.axq, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i = phi ptr [ %i.axw, %bb.ff ], [ %i.axs, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %i.axt = load i16, ptr %.078.i.us.i.i.i.i, align 2
  %i.axu = load i16, ptr %.069.i.us.i.i.i.i, align 2
  %i.axv = icmp eq i16 %i.axt, %i.axu
  br i1 %i.axv, label %bb.ff, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i

bb.ff:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.axw = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i, i64 2
  %i.axx = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i, i64 2
  %i.axy = add nsw i32 %.010.i.us.i.i.i.i, -1
  %i.axz = icmp sgt i32 %.010.i.us.i.i.i.i, 1
  br i1 %i.axz, label %.lr.ph.i.us.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, !llvm.loop !58

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  %indvars.iv.next.i319.i.i.i = add nsw i64 %indvars.iv.i318.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i319.i.i.i to i32
  %exitcond.not.i.i91.i.i = icmp eq i32 %i.axr, %lftr.wideiv.i.i.i.i
  br i1 %exitcond.not.i.i91.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i.preheader.us.i.i.i.i, !llvm.loop !62

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i: ; preds = %bb.ff
  %i.aya = trunc nsw i64 %indvars.iv.i318.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, %bb.fd
  %.1233.i.i.i = phi i32 [ %.0232397.i.i.i, %bb.fd ], [ %i.axl, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %.0229.i.i.i = phi i32 [ %i.axn, %bb.fd ], [ %i.aya, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.ayb = icmp sgt i32 %.0229.i.i.i, -1
  br i1 %i.ayb, label %bb.fi, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i, %bb.fe
  %.1233345.i.i.i = phi i32 [ %.1233.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.axl, %bb.fe ], [ %i.axl, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 6 uses
  %i.ayc = icmp eq i32 %.7396.i.i.i, %i.act
  br i1 %i.ayc, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %i.ayd = sext i32 %.0230399.i.i.i to i64        ; 2 uses
  %i.aye = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.ayd
  %i.ayf = icmp sgt i32 %.1233345.i.i.i, 1
  br i1 %i.ayf, label %.lr.ph.preheader.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i: ; preds = %bb.fg
  %.014.i.i.i.i = add nsw i32 %.1233345.i.i.i, -1 ; 2 uses
  %i.ayg = sub nsw i32 %.7396.i.i.i, %.014.i.i.i.i
  br label %.lr.ph393.preheader.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fg
  %i.ayh = zext nneg i32 %.1233345.i.i.i to i64
  %i.ayi = sext i32 %.7396.i.i.i to i64
  br label %.lr.ph.i321.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i: ; preds = %.lr.ph.i.i324.i.i.i
  %i.ayj = icmp sgt i64 %indvars.iv.in.i322.i.i.i, 2
  br i1 %i.ayj, label %.lr.ph.i321.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, !llvm.loop !63

.lr.ph.i321.i.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.in.i322.i.i.i = phi i64 [ %i.ayh, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.i323.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i ] ; 2 uses
  %indvars.iv.i323.i.i.i = add nsw i64 %indvars.iv.in.i322.i.i.i, -1 ; 3 uses
  %i.ayk = sub nsw i64 %i.ayi, %indvars.iv.i323.i.i.i
  %i.ayl = getelementptr inbounds [2 x i8], ptr %i.axm, i64 %i.ayk
  %i.aym = trunc nuw nsw i64 %indvars.iv.i323.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i324.i.i.i

.lr.ph.i.i324.i.i.i:                              ; preds = %bb.fh, %.lr.ph.i321.i.i.i
  %.010.i.i325.i.i.i = phi i32 [ %i.ays, %bb.fh ], [ %i.aym, %.lr.ph.i321.i.i.i ] ; 2 uses
  %.069.i.i326.i.i.i = phi ptr [ %i.ayr, %bb.fh ], [ %i.aye, %.lr.ph.i321.i.i.i ] ; 2 uses
  %.078.i.i327.i.i.i = phi ptr [ %i.ayq, %bb.fh ], [ %i.ayl, %.lr.ph.i321.i.i.i ] ; 2 uses
  %i.ayn = load i16, ptr %.078.i.i327.i.i.i, align 2
  %i.ayo = load i16, ptr %.069.i.i326.i.i.i, align 2
  %i.ayp = icmp eq i16 %i.ayn, %i.ayo
  br i1 %i.ayp, label %bb.fh, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i

bb.fh:                                            ; preds = %.lr.ph.i.i324.i.i.i
  %i.ayq = getelementptr inbounds nuw i8, ptr %.078.i.i327.i.i.i, i64 2
  %i.ayr = getelementptr inbounds nuw i8, ptr %.069.i.i326.i.i.i, i64 2
  %i.ays = add nsw i32 %.010.i.i325.i.i.i, -1
  %i.ayt = icmp sgt i32 %.010.i.i325.i.i.i, 1
  br i1 %i.ayt, label %.lr.ph.i.i324.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, !llvm.loop !58

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i, %bb.fh, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %.1.i90.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i ], [ %i.aym, %bb.fh ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i ] ; 3 uses
  %i.ayu = sub nsw i32 %.7396.i.i.i, %.1.i90.i.i  ; 2 uses
  %i.ayv = icmp slt i32 %.1.i90.i.i, %.1233345.i.i.i
  br i1 %i.ayv, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i, label %._crit_edge394.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i
  %.pre228.i.i = sext i32 %.0230399.i.i.i to i64
  br label %.lr.ph393.preheader.i.i.i

.lr.ph393.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre228.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i ], [ %i.ayd, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %i.ayw = phi i32 [ %i.ayu, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i ], [ %i.ayg, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %.1498.i.i.i = phi i32 [ %.1.i90.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i ], [ %.014.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %i.ayx = sext i32 %.1498.i.i.i to i64           ; 4 uses
  %i.ayy = sext i32 %.7396.i.i.i to i64           ; 2 uses
  %wide.trip.count470.i.i.i = sext i32 %.1233345.i.i.i to i64 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %i.b, i64 %.pre-phi.i.i ; 5 uses
  %i.ayz = sub nsw i64 %wide.trip.count470.i.i.i, %i.ayx
  %xtraiter389 = and i64 %i.ayz, 3                ; 2 uses
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph393.i.i.i.prol.loopexit, label %.lr.ph393.i.i.i.prol

.lr.ph393.i.i.i.prol:                             ; preds = %.lr.ph393.preheader.i.i.i, %.lr.ph393.i.i.i.prol
  %indvars.iv465.i.i.i.prol = phi i64 [ %indvars.iv.next466.i.i.i.prol, %.lr.ph393.i.i.i.prol ], [ %i.ayy, %.lr.ph393.preheader.i.i.i ] ; 2 uses
  %indvars.iv463.i.i.i.prol = phi i64 [ %indvars.iv.next464.i.i.i.prol, %.lr.ph393.i.i.i.prol ], [ %i.ayx, %.lr.ph393.preheader.i.i.i ] ; 2 uses
  %prol.iter391 = phi i64 [ %prol.iter391.next, %.lr.ph393.i.i.i.prol ], [ 0, %.lr.ph393.preheader.i.i.i ]
  %indvars.iv.next464.i.i.i.prol = add nsw i64 %indvars.iv463.i.i.i.prol, 1 ; 2 uses
  %gep.i.i.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv463.i.i.i.prol
  %i.aza = load i16, ptr %gep.i.i.i.prol, align 2
  %i.azb = load ptr, ptr %i.ada, align 8
  %indvars.iv.next466.i.i.i.prol = add nsw i64 %indvars.iv465.i.i.i.prol, 1 ; 3 uses
  %i.azc = getelementptr inbounds [2 x i8], ptr %i.azb, i64 %indvars.iv465.i.i.i.prol
  store i16 %i.aza, ptr %i.azc, align 2
  %prol.iter391.next = add i64 %prol.iter391, 1   ; 2 uses
  %prol.iter391.cmp.not = icmp eq i64 %prol.iter391.next, %xtraiter389
  br i1 %prol.iter391.cmp.not, label %.lr.ph393.i.i.i.prol.loopexit, label %.lr.ph393.i.i.i.prol, !llvm.loop !64

.lr.ph393.i.i.i.prol.loopexit:                    ; preds = %.lr.ph393.i.i.i.prol, %.lr.ph393.preheader.i.i.i
  %indvars.iv.next466.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph393.preheader.i.i.i ], [ %indvars.iv.next466.i.i.i.prol, %.lr.ph393.i.i.i.prol ]
  %indvars.iv465.i.i.i.unr = phi i64 [ %i.ayy, %.lr.ph393.preheader.i.i.i ], [ %indvars.iv.next466.i.i.i.prol, %.lr.ph393.i.i.i.prol ]
  %indvars.iv463.i.i.i.unr = phi i64 [ %i.ayx, %.lr.ph393.preheader.i.i.i ], [ %indvars.iv.next464.i.i.i.prol, %.lr.ph393.i.i.i.prol ]
  %i.azd = sub nsw i64 %i.ayx, %wide.trip.count470.i.i.i
  %i.aze = icmp ugt i64 %i.azd, -4
  br i1 %i.aze, label %._crit_edge394.loopexit.i.i.i, label %.lr.ph393.i.i.i

.lr.ph393.i.i.i:                                  ; preds = %.lr.ph393.i.i.i.prol.loopexit, %.lr.ph393.i.i.i
  %indvars.iv465.i.i.i = phi i64 [ %indvars.iv.next466.i.i.i.3, %.lr.ph393.i.i.i ], [ %indvars.iv465.i.i.i.unr, %.lr.ph393.i.i.i.prol.loopexit ] ; 5 uses
end_hunk_1
