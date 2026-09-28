Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/umutablecptrie?download=true
inline.NumInlined: 129
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
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
  br i1 %i.adn, label %.preheader351.i.i.i, label %._crit_edge.i86.i.i, !llvm.loop !58

bb.do:                                            ; preds = %._crit_edge.i86.i.i
  store i32 7, ptr %3, align 4
  br label %bb.fc

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
  br label %bb.fc

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
  br label %bb.fb

bb.ee:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.pre476.i.i.i = load i32, ptr %i.ym, align 4   ; 3 uses
  br i1 %i.zq, label %.lr.ph387.i.i.i, label %._crit_edge388.i.i.i

.lr.ph387.i.i.i:                                  ; preds = %bb.ee
  %i.aeo = zext nneg i32 %i.zn to i64
  %i.aep = zext nneg i32 %i.zp to i64
  %.pre229.i.i = zext nneg i32 %i.act to i64
  br label %bb.ef

._crit_edge388.loopexit.i.i.i:                    ; preds = %bb.eq
  %i.aeq = trunc nuw nsw i64 %indvars.iv.next461.i.i.i to i32
  br label %._crit_edge388.i.i.i

._crit_edge388.i.i.i:                             ; preds = %._crit_edge388.loopexit.i.i.i, %bb.ee
  %i.aer = phi i32 [ %.pre476.i.i.i, %bb.ee ], [ %i.avm, %._crit_edge388.loopexit.i.i.i ]
  %.0253.lcssa.i.i.i = phi i32 [ 0, %bb.ee ], [ %i.aeq, %._crit_edge388.loopexit.i.i.i ] ; 3 uses
  %.0248.lcssa.i.i.i = phi i32 [ %i.act, %bb.ee ], [ %.6.i98.i.i, %._crit_edge388.loopexit.i.i.i ] ; 3 uses
  %i.aes = icmp slt i32 %i.aer, 0
  br i1 %i.aes, label %bb.er, label %bb.es

bb.ef:                                            ; preds = %bb.eq, %.lr.ph387.i.i.i
  %i.aet = phi i32 [ %.pre476.i.i.i, %.lr.ph387.i.i.i ], [ %i.avm, %bb.eq ]
  %indvars.iv460.i.i.i.a = phi i64 [ 0, %.lr.ph387.i.i.i ], [ %indvars.iv.next461.i.i.i, %bb.eq ] ; 2 uses
  %indvars.iv434.i.i.i = phi i64 [ %i.aeo, %.lr.ph387.i.i.i ], [ %indvars.iv.next435.i.i.i, %bb.eq ] ; 17 uses
  %.0248382.i.i.i = phi i32 [ %i.act, %.lr.ph387.i.i.i ], [ %.6.i98.i.i, %bb.eq ] ; 18 uses
  %.4274380.i.i.i = phi i32 [ %.pre476.i.i.i, %.lr.ph387.i.i.i ], [ %.5275335.i.i.i, %bb.eq ] ; 5 uses
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
    i8 0, label %bb.eo
    i8 1, label %7
    i8 2, label %.thread337.i.i.i
  ]

7:                                                ; preds = %bb.eh
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv434.i.i.i
  %10 = load i32, ptr %9, align 4
  br label %bb.eo

.thread337.i.i.i:                                 ; preds = %bb.eh, %bb.eg
  %.5275340.i.i.i = phi i32 [ %.4274380.i.i.i, %bb.eh ], [ 0, %bb.eg ] ; 3 uses
  %11 = load ptr, ptr %i.ada, align 8             ; 3 uses
  %12 = load ptr, ptr %0, align 8                 ; 2 uses
  %13 = trunc nuw nsw i64 %indvars.iv434.i.i.i to i32
  %14 = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %11, ptr noundef %12, i32 noundef %13) ; 2 uses
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %bb.eo, label %16

16:                                               ; preds = %.thread337.i.i.i
  %17 = icmp eq i32 %.0248382.i.i.i, %i.act
  br i1 %17, label %.lr.ph377.preheader.i.i.i, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv434.i.i.i ; 2 uses
  %20 = sext i32 %.0248382.i.i.i to i64           ; 4 uses
  br label %21

21:                                               ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1, %18
  %indvars.iv.i.i92.i.i = phi i64 [ 31, %18 ], [ %indvars.iv.next.i.i97.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1 ] ; 6 uses
  %22 = sub nsw i64 %20, %indvars.iv.i.i92.i.i
  %23 = getelementptr inbounds [2 x i8], ptr %11, i64 %22
  %24 = trunc nuw nsw i64 %indvars.iv.i.i92.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i93.i.i

.lr.ph.i.i.i93.i.i:                               ; preds = %29, %21
  %.010.i.i.i94.i.i = phi i32 [ %32, %29 ], [ %24, %21 ] ; 2 uses
  %.069.i.i.i95.i.i = phi ptr [ %31, %29 ], [ %19, %21 ] ; 2 uses
  %.078.i.i.i96.i.i = phi ptr [ %30, %29 ], [ %23, %21 ] ; 2 uses
  %25 = load i16, ptr %.078.i.i.i96.i.i, align 2
  %26 = zext i16 %25 to i32
  %27 = load i32, ptr %.069.i.i.i95.i.i, align 4
  %28 = icmp eq i32 %27, %26
  br i1 %28, label %29, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i

29:                                               ; preds = %.lr.ph.i.i.i93.i.i
  %30 = getelementptr inbounds nuw i8, ptr %.078.i.i.i96.i.i, i64 2
  %31 = getelementptr inbounds nuw i8, ptr %.069.i.i.i95.i.i, i64 4
  %32 = add nsw i32 %.010.i.i.i94.i.i, -1
  %33 = icmp sgt i32 %.010.i.i.i94.i.i, 1
  br i1 %33, label %.lr.ph.i.i.i93.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !4

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i93.i.i
  %indvars.iv.next.i.i97.i.i = add nsw i64 %indvars.iv.i.i92.i.i, -1 ; 3 uses
  %34 = icmp samesign ugt i64 %indvars.iv.i.i92.i.i, 1
  br i1 %34, label %35, label %.lr.ph377.preheader.i.i.i

35:                                               ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i
  %36 = sub nsw i64 %20, %indvars.iv.next.i.i97.i.i
  %37 = getelementptr inbounds [2 x i8], ptr %11, i64 %36
  %38 = trunc nuw nsw i64 %indvars.iv.next.i.i97.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i93.i.i.1

.lr.ph.i.i.i93.i.i.1:                             ; preds = %43, %35
  %.010.i.i.i94.i.i.1 = phi i32 [ %46, %43 ], [ %38, %35 ] ; 2 uses
  %.069.i.i.i95.i.i.1 = phi ptr [ %45, %43 ], [ %19, %35 ] ; 2 uses
  %.078.i.i.i96.i.i.1 = phi ptr [ %44, %43 ], [ %37, %35 ] ; 2 uses
  %39 = load i16, ptr %.078.i.i.i96.i.i.1, align 2
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr %.069.i.i.i95.i.i.1, align 4
  %42 = icmp eq i32 %41, %40
  br i1 %42, label %43, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i93.i.i.1
  %indvars.iv.next.i.i97.i.i.1 = add nsw i64 %indvars.iv.i.i92.i.i, -2
  br label %21

43:                                               ; preds = %.lr.ph.i.i.i93.i.i.1
  %44 = getelementptr inbounds nuw i8, ptr %.078.i.i.i96.i.i.1, i64 2
  %45 = getelementptr inbounds nuw i8, ptr %.069.i.i.i95.i.i.1, i64 4
  %46 = add nsw i32 %.010.i.i.i94.i.i.1, -1
  %47 = icmp sgt i32 %.010.i.i.i94.i.i.1, 1
  br i1 %47, label %.lr.ph.i.i.i93.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !4

_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %29, %43
  %indvars.iv.i.i92.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i97.i.i, %43 ], [ %indvars.iv.i.i92.i.i, %29 ]
  %.lcssa296 = phi i32 [ %38, %43 ], [ %24, %29 ]
  %48 = sub nsw i32 %.0248382.i.i.i, %.lcssa296
  br label %.lr.ph377.preheader.i.i.i

.lr.ph377.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, %16
  %.pre-phi230.i.i = phi i64 [ %.pre229.i.i, %16 ], [ %20, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %20, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ]
  %49 = phi i32 [ %i.act, %16 ], [ %48, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %.0248382.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 2 uses
  %.0241496.i.i.i = phi i64 [ 0, %16 ], [ %indvars.iv.i.i92.i.i.lcssa, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ]
  br label %.lr.ph377.i.i.i

.lr.ph377.i.i.i:                                  ; preds = %.lr.ph377.i.i.i, %.lr.ph377.preheader.i.i.i
  %indvars.iv454.i.i.i = phi i64 [ %.pre-phi230.i.i, %.lr.ph377.preheader.i.i.i ], [ %indvars.iv.next455.i.i.i, %.lr.ph377.i.i.i ] ; 2 uses
  %indvars.iv452.i.i.i = phi i64 [ %.0241496.i.i.i, %.lr.ph377.preheader.i.i.i ], [ %indvars.iv.next453.i.i.i, %.lr.ph377.i.i.i ] ; 2 uses
  %50 = load ptr, ptr %0, align 8
  %indvars.iv.next453.i.i.i = add nsw i64 %indvars.iv452.i.i.i, 1 ; 2 uses
  %51 = getelementptr [4 x i8], ptr %50, i64 %indvars.iv452.i.i.i
  %52 = getelementptr [4 x i8], ptr %51, i64 %indvars.iv434.i.i.i
  %53 = load i32, ptr %52, align 4
  %54 = trunc i32 %53 to i16
  %55 = load ptr, ptr %i.ada, align 8
  %indvars.iv.next455.i.i.i = add nsw i64 %indvars.iv454.i.i.i, 1 ; 2 uses
  %56 = getelementptr inbounds [2 x i8], ptr %55, i64 %indvars.iv454.i.i.i
  store i16 %54, ptr %56, align 2
  %57 = and i64 %indvars.iv.next453.i.i.i, 4294967295
  %exitcond459.not.i.i.i = icmp eq i64 %57, 32
  br i1 %exitcond459.not.i.i.i, label %._crit_edge378.loopexit.i.i.i, label %.lr.ph377.i.i.i, !llvm.loop !59

._crit_edge378.loopexit.i.i.i:                    ; preds = %.lr.ph377.i.i.i
  %58 = trunc nsw i64 %indvars.iv.next455.i.i.i to i32 ; 4 uses
  %.pre475.i.i.i = load ptr, ptr %i.ada, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %.pre475.i.i.i, i32 noundef %i.act, i32 noundef %.0248382.i.i.i, i32 noundef %58)
  br i1 %.0259.lcssa.i.i.i, label %59, label %bb.eo

59:                                               ; preds = %._crit_edge378.loopexit.i.i.i
  %60 = load ptr, ptr %i.ada, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %60, i32 noundef %i.act, i32 noundef %.0248382.i.i.i, i32 noundef %58)
  br label %bb.eo

.thread.i99.i.i:                                  ; preds = %bb.eh, %bb.eg
  %.5275336.i.i.i.a = phi i32 [ %.4274380.i.i.i, %bb.eh ], [ 0, %bb.eg ]
  %i.afa = sext i32 %.0248382.i.i.i to i64        ; 22 uses
  %i.afb = load ptr, ptr %0, align 8
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.afb, i64 %indvars.iv434.i.i.i
  %i.afd = load i32, ptr %i.afc, align 4          ; 2 uses
  %i.afe = lshr i32 %i.afd, 2
  %i.aff = and i32 %i.afe, 49152
  %i.afg = trunc i32 %i.afd to i16
  %i.afh = load ptr, ptr %i.ada, align 8
  %i.afi = getelementptr [2 x i8], ptr %i.afh, i64 %i.afa
  %i.afj = getelementptr i8, ptr %i.afi, i64 2
  store i16 %i.afg, ptr %i.afj, align 2
  %i.afk = load ptr, ptr %0, align 8
  %i.afl = getelementptr [4 x i8], ptr %i.afk, i64 %indvars.iv434.i.i.i
  %i.afm = getelementptr i8, ptr %i.afl, i64 4
  %i.afn = load i32, ptr %i.afm, align 4          ; 2 uses
  %i.afo = lshr i32 %i.afn, 4
  %i.afp = and i32 %i.afo, 12288
  %i.afq = or disjoint i32 %i.afp, %i.aff
  %i.afr = trunc i32 %i.afn to i16
  %i.afs = load ptr, ptr %i.ada, align 8
  %i.aft = getelementptr [2 x i8], ptr %i.afs, i64 %i.afa
  %i.afu = getelementptr i8, ptr %i.aft, i64 4
  store i16 %i.afr, ptr %i.afu, align 2
  %i.afv = load ptr, ptr %0, align 8
  %i.afw = getelementptr [4 x i8], ptr %i.afv, i64 %indvars.iv434.i.i.i
  %i.afx = getelementptr i8, ptr %i.afw, i64 8
  %i.afy = load i32, ptr %i.afx, align 4          ; 2 uses
  %i.afz = lshr i32 %i.afy, 6
  %i.aga = and i32 %i.afz, 3072
  %i.agb = or disjoint i32 %i.afq, %i.aga
  %i.agc = trunc i32 %i.afy to i16
  %i.agd = load ptr, ptr %i.ada, align 8
  %i.age = getelementptr [2 x i8], ptr %i.agd, i64 %i.afa
  %i.agf = getelementptr i8, ptr %i.age, i64 6
  store i16 %i.agc, ptr %i.agf, align 2
  %i.agg = load ptr, ptr %0, align 8
  %i.agh = getelementptr [4 x i8], ptr %i.agg, i64 %indvars.iv434.i.i.i
  %i.agi = getelementptr i8, ptr %i.agh, i64 12
  %i.agj = load i32, ptr %i.agi, align 4          ; 2 uses
  %i.agk = lshr i32 %i.agj, 8
  %i.agl = and i32 %i.agk, 768
  %i.agm = or disjoint i32 %i.agb, %i.agl
  %i.agn = trunc i32 %i.agj to i16
  %i.ago = load ptr, ptr %i.ada, align 8
  %i.agp = getelementptr [2 x i8], ptr %i.ago, i64 %i.afa
  %i.agq = getelementptr i8, ptr %i.agp, i64 8
  store i16 %i.agn, ptr %i.agq, align 2
  %i.agr = load ptr, ptr %0, align 8
  %i.ags = getelementptr [4 x i8], ptr %i.agr, i64 %indvars.iv434.i.i.i
  %i.agt = getelementptr i8, ptr %i.ags, i64 16
  %i.agu = load i32, ptr %i.agt, align 4          ; 2 uses
  %i.agv = lshr i32 %i.agu, 10
  %i.agw = and i32 %i.agv, 192
  %i.agx = or disjoint i32 %i.agm, %i.agw
  %i.agy = trunc i32 %i.agu to i16
  %i.agz = load ptr, ptr %i.ada, align 8
  %i.aha = getelementptr [2 x i8], ptr %i.agz, i64 %i.afa
  %i.ahb = getelementptr i8, ptr %i.aha, i64 10
  store i16 %i.agy, ptr %i.ahb, align 2
  %i.ahc = load ptr, ptr %0, align 8
  %i.ahd = getelementptr [4 x i8], ptr %i.ahc, i64 %indvars.iv434.i.i.i
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 20
  %i.ahf = load i32, ptr %i.ahe, align 4          ; 2 uses
  %i.ahg = lshr i32 %i.ahf, 12
  %i.ahh = and i32 %i.ahg, 48
  %i.ahi = or disjoint i32 %i.agx, %i.ahh
  %i.ahj = trunc i32 %i.ahf to i16
  %i.ahk = load ptr, ptr %i.ada, align 8
  %i.ahl = getelementptr [2 x i8], ptr %i.ahk, i64 %i.afa
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 12
  store i16 %i.ahj, ptr %i.ahm, align 2
  %i.ahn = load ptr, ptr %0, align 8
  %i.aho = getelementptr [4 x i8], ptr %i.ahn, i64 %indvars.iv434.i.i.i
  %i.ahp = getelementptr i8, ptr %i.aho, i64 24
  %i.ahq = load i32, ptr %i.ahp, align 4          ; 2 uses
  %i.ahr = lshr i32 %i.ahq, 14
  %i.ahs = and i32 %i.ahr, 12
  %i.aht = or i32 %i.ahi, %i.ahs
  %i.ahu = trunc i32 %i.ahq to i16
  %i.ahv = load ptr, ptr %i.ada, align 8
  %i.ahw = getelementptr [2 x i8], ptr %i.ahv, i64 %i.afa
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 14
  store i16 %i.ahu, ptr %i.ahx, align 2
  %i.ahy = load ptr, ptr %0, align 8
  %indvars.iv.next437.i.i.i = or disjoint i64 %indvars.iv434.i.i.i, 8 ; 8 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %indvars.iv434.i.i.i
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 28
  %i.aib = load i32, ptr %i.aia, align 4          ; 2 uses
  %i.aic = lshr i32 %i.aib, 16
  %i.aid = and i32 %i.aic, 3
  %i.aie = or i32 %i.aht, %i.aid
  %i.aif = trunc i32 %i.aib to i16
  %i.aig = load ptr, ptr %i.ada, align 8
  %indvars.iv.next439.i.i.i = add nsw i64 %i.afa, 9 ; 9 uses
  %i.aih = getelementptr [2 x i8], ptr %i.aig, i64 %i.afa
  %i.aii = getelementptr i8, ptr %i.aih, i64 16
  store i16 %i.aif, ptr %i.aii, align 2
  %i.aij = trunc nuw i32 %i.aie to i16
  %i.aik = load ptr, ptr %i.ada, align 8
  %i.ail = getelementptr inbounds [2 x i8], ptr %i.aik, i64 %i.afa
  store i16 %i.aij, ptr %i.ail, align 2
  %i.aim = load ptr, ptr %0, align 8
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %indvars.iv.next437.i.i.i
  %i.aio = load i32, ptr %i.ain, align 4          ; 2 uses
  %i.aip = lshr i32 %i.aio, 2
  %i.aiq = and i32 %i.aip, 49152
  %i.air = trunc i32 %i.aio to i16
  %i.ais = load ptr, ptr %i.ada, align 8
  %i.ait = getelementptr [2 x i8], ptr %i.ais, i64 %indvars.iv.next439.i.i.i
  %i.aiu = getelementptr i8, ptr %i.ait, i64 2
  store i16 %i.air, ptr %i.aiu, align 2
  %i.aiv = load ptr, ptr %0, align 8
  %i.aiw = getelementptr [4 x i8], ptr %i.aiv, i64 %indvars.iv.next437.i.i.i
  %i.aix = getelementptr i8, ptr %i.aiw, i64 4
  %i.aiy = load i32, ptr %i.aix, align 4          ; 2 uses
  %i.aiz = lshr i32 %i.aiy, 4
  %i.aja = and i32 %i.aiz, 12288
  %i.ajb = or disjoint i32 %i.aja, %i.aiq
  %i.ajc = trunc i32 %i.aiy to i16
  %i.ajd = load ptr, ptr %i.ada, align 8
  %i.aje = getelementptr [2 x i8], ptr %i.ajd, i64 %indvars.iv.next439.i.i.i
  %i.ajf = getelementptr i8, ptr %i.aje, i64 4
  store i16 %i.ajc, ptr %i.ajf, align 2
  %i.ajg = load ptr, ptr %0, align 8
  %i.ajh = getelementptr [4 x i8], ptr %i.ajg, i64 %indvars.iv.next437.i.i.i
  %i.aji = getelementptr i8, ptr %i.ajh, i64 8
  %i.ajj = load i32, ptr %i.aji, align 4          ; 2 uses
  %i.ajk = lshr i32 %i.ajj, 6
  %i.ajl = and i32 %i.ajk, 3072
  %i.ajm = or disjoint i32 %i.ajb, %i.ajl
  %i.ajn = trunc i32 %i.ajj to i16
  %i.ajo = load ptr, ptr %i.ada, align 8
  %i.ajp = getelementptr [2 x i8], ptr %i.ajo, i64 %indvars.iv.next439.i.i.i
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 6
  store i16 %i.ajn, ptr %i.ajq, align 2
  %i.ajr = load ptr, ptr %0, align 8
  %i.ajs = getelementptr [4 x i8], ptr %i.ajr, i64 %indvars.iv.next437.i.i.i
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 12
  %i.aju = load i32, ptr %i.ajt, align 4          ; 2 uses
  %i.ajv = lshr i32 %i.aju, 8
  %i.ajw = and i32 %i.ajv, 768
  %i.ajx = or disjoint i32 %i.ajm, %i.ajw
  %i.ajy = trunc i32 %i.aju to i16
  %i.ajz = load ptr, ptr %i.ada, align 8
  %i.aka = getelementptr [2 x i8], ptr %i.ajz, i64 %indvars.iv.next439.i.i.i
  %i.akb = getelementptr i8, ptr %i.aka, i64 8
  store i16 %i.ajy, ptr %i.akb, align 2
  %i.akc = load ptr, ptr %0, align 8
  %i.akd = getelementptr [4 x i8], ptr %i.akc, i64 %indvars.iv.next437.i.i.i
  %i.ake = getelementptr i8, ptr %i.akd, i64 16
  %i.akf = load i32, ptr %i.ake, align 4          ; 2 uses
  %i.akg = lshr i32 %i.akf, 10
  %i.akh = and i32 %i.akg, 192
  %i.aki = or disjoint i32 %i.ajx, %i.akh
  %i.akj = trunc i32 %i.akf to i16
  %i.akk = load ptr, ptr %i.ada, align 8
  %i.akl = getelementptr [2 x i8], ptr %i.akk, i64 %indvars.iv.next439.i.i.i
  %i.akm = getelementptr i8, ptr %i.akl, i64 10
  store i16 %i.akj, ptr %i.akm, align 2
  %i.akn = load ptr, ptr %0, align 8
  %i.ako = getelementptr [4 x i8], ptr %i.akn, i64 %indvars.iv.next437.i.i.i
  %i.akp = getelementptr i8, ptr %i.ako, i64 20
  %i.akq = load i32, ptr %i.akp, align 4          ; 2 uses
  %i.akr = lshr i32 %i.akq, 12
  %i.aks = and i32 %i.akr, 48
  %i.akt = or disjoint i32 %i.aki, %i.aks
  %i.aku = trunc i32 %i.akq to i16
  %i.akv = load ptr, ptr %i.ada, align 8
  %i.akw = getelementptr [2 x i8], ptr %i.akv, i64 %indvars.iv.next439.i.i.i
  %i.akx = getelementptr i8, ptr %i.akw, i64 12
  store i16 %i.aku, ptr %i.akx, align 2
  %i.aky = load ptr, ptr %0, align 8
  %i.akz = getelementptr [4 x i8], ptr %i.aky, i64 %indvars.iv.next437.i.i.i
  %i.ala = getelementptr i8, ptr %i.akz, i64 24
  %i.alb = load i32, ptr %i.ala, align 4          ; 2 uses
  %i.alc = lshr i32 %i.alb, 14
  %i.ald = and i32 %i.alc, 12
  %i.ale = or i32 %i.akt, %i.ald
  %i.alf = trunc i32 %i.alb to i16
  %i.alg = load ptr, ptr %i.ada, align 8
  %i.alh = getelementptr [2 x i8], ptr %i.alg, i64 %indvars.iv.next439.i.i.i
  %i.ali = getelementptr i8, ptr %i.alh, i64 14
  store i16 %i.alf, ptr %i.ali, align 2
  %i.alj = load ptr, ptr %0, align 8
  %indvars.iv.next437.1.i.i.i = or disjoint i64 %indvars.iv434.i.i.i, 16 ; 8 uses
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %indvars.iv.next437.i.i.i
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 28
  %i.alm = load i32, ptr %i.all, align 4          ; 2 uses
  %i.aln = lshr i32 %i.alm, 16
  %i.alo = and i32 %i.aln, 3
  %i.alp = or i32 %i.ale, %i.alo
  %i.alq = trunc i32 %i.alm to i16
  %i.alr = load ptr, ptr %i.ada, align 8
  %indvars.iv.next439.1.i.i.i = add nsw i64 %i.afa, 18 ; 9 uses
  %i.als = getelementptr [2 x i8], ptr %i.alr, i64 %indvars.iv.next439.i.i.i
  %i.alt = getelementptr i8, ptr %i.als, i64 16
  store i16 %i.alq, ptr %i.alt, align 2
  %i.alu = trunc nuw i32 %i.alp to i16
end_hunk_0
begin_hunk_1_@umutablecptrie_buildImmutable_78:bb.a
  %i.ama = lshr i32 %i.alz, 2
  %i.amb = and i32 %i.ama, 49152
  %i.amc = trunc i32 %i.alz to i16
  %i.amd = load ptr, ptr %i.ada, align 8
  %i.ame = getelementptr [2 x i8], ptr %i.amd, i64 %indvars.iv.next439.1.i.i.i
  %i.amf = getelementptr i8, ptr %i.ame, i64 2
  store i16 %i.amc, ptr %i.amf, align 2
  %i.amg = load ptr, ptr %0, align 8
  %i.amh = getelementptr [4 x i8], ptr %i.amg, i64 %indvars.iv.next437.1.i.i.i
  %i.ami = getelementptr i8, ptr %i.amh, i64 4
  %i.amj = load i32, ptr %i.ami, align 4          ; 2 uses
  %i.amk = lshr i32 %i.amj, 4
  %i.aml = and i32 %i.amk, 12288
  %i.amm = or disjoint i32 %i.aml, %i.amb
  %i.amn = trunc i32 %i.amj to i16
  %i.amo = load ptr, ptr %i.ada, align 8
  %i.amp = getelementptr [2 x i8], ptr %i.amo, i64 %indvars.iv.next439.1.i.i.i
  %i.amq = getelementptr i8, ptr %i.amp, i64 4
  store i16 %i.amn, ptr %i.amq, align 2
  %i.amr = load ptr, ptr %0, align 8
  %i.ams = getelementptr [4 x i8], ptr %i.amr, i64 %indvars.iv.next437.1.i.i.i
  %i.amt = getelementptr i8, ptr %i.ams, i64 8
  %i.amu = load i32, ptr %i.amt, align 4          ; 2 uses
  %i.amv = lshr i32 %i.amu, 6
  %i.amw = and i32 %i.amv, 3072
  %i.amx = or disjoint i32 %i.amm, %i.amw
  %i.amy = trunc i32 %i.amu to i16
  %i.amz = load ptr, ptr %i.ada, align 8
  %i.ana = getelementptr [2 x i8], ptr %i.amz, i64 %indvars.iv.next439.1.i.i.i
  %i.anb = getelementptr i8, ptr %i.ana, i64 6
  store i16 %i.amy, ptr %i.anb, align 2
  %i.anc = load ptr, ptr %0, align 8
  %i.and = getelementptr [4 x i8], ptr %i.anc, i64 %indvars.iv.next437.1.i.i.i
  %i.ane = getelementptr i8, ptr %i.and, i64 12
  %i.anf = load i32, ptr %i.ane, align 4          ; 2 uses
  %i.ang = lshr i32 %i.anf, 8
  %i.anh = and i32 %i.ang, 768
  %i.ani = or disjoint i32 %i.amx, %i.anh
  %i.anj = trunc i32 %i.anf to i16
  %i.ank = load ptr, ptr %i.ada, align 8
  %i.anl = getelementptr [2 x i8], ptr %i.ank, i64 %indvars.iv.next439.1.i.i.i
  %i.anm = getelementptr i8, ptr %i.anl, i64 8
  store i16 %i.anj, ptr %i.anm, align 2
  %i.ann = load ptr, ptr %0, align 8
  %i.ano = getelementptr [4 x i8], ptr %i.ann, i64 %indvars.iv.next437.1.i.i.i
  %i.anp = getelementptr i8, ptr %i.ano, i64 16
  %i.anq = load i32, ptr %i.anp, align 4          ; 2 uses
  %i.anr = lshr i32 %i.anq, 10
  %i.ans = and i32 %i.anr, 192
  %i.ant = or disjoint i32 %i.ani, %i.ans
  %i.anu = trunc i32 %i.anq to i16
  %i.anv = load ptr, ptr %i.ada, align 8
  %i.anw = getelementptr [2 x i8], ptr %i.anv, i64 %indvars.iv.next439.1.i.i.i
  %i.anx = getelementptr i8, ptr %i.anw, i64 10
  store i16 %i.anu, ptr %i.anx, align 2
  %i.any = load ptr, ptr %0, align 8
  %i.anz = getelementptr [4 x i8], ptr %i.any, i64 %indvars.iv.next437.1.i.i.i
  %i.aoa = getelementptr i8, ptr %i.anz, i64 20
  %i.aob = load i32, ptr %i.aoa, align 4          ; 2 uses
  %i.aoc = lshr i32 %i.aob, 12
  %i.aod = and i32 %i.aoc, 48
  %i.aoe = or disjoint i32 %i.ant, %i.aod
  %i.aof = trunc i32 %i.aob to i16
  %i.aog = load ptr, ptr %i.ada, align 8
  %i.aoh = getelementptr [2 x i8], ptr %i.aog, i64 %indvars.iv.next439.1.i.i.i
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 12
  store i16 %i.aof, ptr %i.aoi, align 2
  %i.aoj = load ptr, ptr %0, align 8
  %i.aok = getelementptr [4 x i8], ptr %i.aoj, i64 %indvars.iv.next437.1.i.i.i
  %i.aol = getelementptr i8, ptr %i.aok, i64 24
  %i.aom = load i32, ptr %i.aol, align 4          ; 2 uses
  %i.aon = lshr i32 %i.aom, 14
  %i.aoo = and i32 %i.aon, 12
  %i.aop = or i32 %i.aoe, %i.aoo
  %i.aoq = trunc i32 %i.aom to i16
  %i.aor = load ptr, ptr %i.ada, align 8
  %i.aos = getelementptr [2 x i8], ptr %i.aor, i64 %indvars.iv.next439.1.i.i.i
  %i.aot = getelementptr i8, ptr %i.aos, i64 14
  store i16 %i.aoq, ptr %i.aot, align 2
  %i.aou = load ptr, ptr %0, align 8
  %indvars.iv.next437.2.i.i.i = or disjoint i64 %indvars.iv434.i.i.i, 24 ; 8 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %indvars.iv.next437.1.i.i.i
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 28
  %i.aox = load i32, ptr %i.aow, align 4          ; 2 uses
  %i.aoy = lshr i32 %i.aox, 16
  %i.aoz = and i32 %i.aoy, 3
  %i.apa = or i32 %i.aop, %i.aoz
  %i.apb = trunc i32 %i.aox to i16
  %i.apc = load ptr, ptr %i.ada, align 8
  %indvars.iv.next439.2.i.i.i = add nsw i64 %i.afa, 27 ; 9 uses
  %i.apd = getelementptr [2 x i8], ptr %i.apc, i64 %indvars.iv.next439.1.i.i.i
  %i.ape = getelementptr i8, ptr %i.apd, i64 16
  store i16 %i.apb, ptr %i.ape, align 2
  %i.apf = trunc nuw i32 %i.apa to i16
  %i.apg = load ptr, ptr %i.ada, align 8
  %i.aph = getelementptr inbounds [2 x i8], ptr %i.apg, i64 %indvars.iv.next439.1.i.i.i
  store i16 %i.apf, ptr %i.aph, align 2
  %i.api = load ptr, ptr %0, align 8
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.api, i64 %indvars.iv.next437.2.i.i.i
  %i.apk = load i32, ptr %i.apj, align 4          ; 2 uses
  %i.apl = lshr i32 %i.apk, 2
  %i.apm = and i32 %i.apl, 49152
  %i.apn = trunc i32 %i.apk to i16
  %i.apo = load ptr, ptr %i.ada, align 8
  %i.app = getelementptr [2 x i8], ptr %i.apo, i64 %indvars.iv.next439.2.i.i.i
  %i.apq = getelementptr i8, ptr %i.app, i64 2
  store i16 %i.apn, ptr %i.apq, align 2
  %i.apr = load ptr, ptr %0, align 8
  %i.aps = getelementptr [4 x i8], ptr %i.apr, i64 %indvars.iv.next437.2.i.i.i
  %i.apt = getelementptr i8, ptr %i.aps, i64 4
  %i.apu = load i32, ptr %i.apt, align 4          ; 2 uses
  %i.apv = lshr i32 %i.apu, 4
  %i.apw = and i32 %i.apv, 12288
  %i.apx = or disjoint i32 %i.apw, %i.apm
  %i.apy = trunc i32 %i.apu to i16
  %i.apz = load ptr, ptr %i.ada, align 8
  %i.aqa = getelementptr [2 x i8], ptr %i.apz, i64 %indvars.iv.next439.2.i.i.i
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 4
  store i16 %i.apy, ptr %i.aqb, align 2
  %i.aqc = load ptr, ptr %0, align 8
  %i.aqd = getelementptr [4 x i8], ptr %i.aqc, i64 %indvars.iv.next437.2.i.i.i
  %i.aqe = getelementptr i8, ptr %i.aqd, i64 8
  %i.aqf = load i32, ptr %i.aqe, align 4          ; 2 uses
  %i.aqg = lshr i32 %i.aqf, 6
  %i.aqh = and i32 %i.aqg, 3072
  %i.aqi = or disjoint i32 %i.apx, %i.aqh
  %i.aqj = trunc i32 %i.aqf to i16
  %i.aqk = load ptr, ptr %i.ada, align 8
  %i.aql = getelementptr [2 x i8], ptr %i.aqk, i64 %indvars.iv.next439.2.i.i.i
  %i.aqm = getelementptr i8, ptr %i.aql, i64 6
  store i16 %i.aqj, ptr %i.aqm, align 2
  %i.aqn = load ptr, ptr %0, align 8
  %i.aqo = getelementptr [4 x i8], ptr %i.aqn, i64 %indvars.iv.next437.2.i.i.i
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 12
  %i.aqq = load i32, ptr %i.aqp, align 4          ; 2 uses
  %i.aqr = lshr i32 %i.aqq, 8
  %i.aqs = and i32 %i.aqr, 768
  %i.aqt = or disjoint i32 %i.aqi, %i.aqs
  %i.aqu = trunc i32 %i.aqq to i16
  %i.aqv = load ptr, ptr %i.ada, align 8
  %i.aqw = getelementptr [2 x i8], ptr %i.aqv, i64 %indvars.iv.next439.2.i.i.i
  %i.aqx = getelementptr i8, ptr %i.aqw, i64 8
  store i16 %i.aqu, ptr %i.aqx, align 2
  %i.aqy = load ptr, ptr %0, align 8
  %i.aqz = getelementptr [4 x i8], ptr %i.aqy, i64 %indvars.iv.next437.2.i.i.i
  %i.ara = getelementptr i8, ptr %i.aqz, i64 16
  %i.arb = load i32, ptr %i.ara, align 4          ; 2 uses
  %i.arc = lshr i32 %i.arb, 10
  %i.ard = and i32 %i.arc, 192
  %i.are = or disjoint i32 %i.aqt, %i.ard
  %i.arf = trunc i32 %i.arb to i16
  %i.arg = load ptr, ptr %i.ada, align 8
  %i.arh = getelementptr [2 x i8], ptr %i.arg, i64 %indvars.iv.next439.2.i.i.i
  %i.ari = getelementptr i8, ptr %i.arh, i64 10
  store i16 %i.arf, ptr %i.ari, align 2
  %i.arj = load ptr, ptr %0, align 8
  %i.ark = getelementptr [4 x i8], ptr %i.arj, i64 %indvars.iv.next437.2.i.i.i
  %i.arl = getelementptr i8, ptr %i.ark, i64 20
  %i.arm = load i32, ptr %i.arl, align 4          ; 2 uses
  %i.arn = lshr i32 %i.arm, 12
  %i.aro = and i32 %i.arn, 48
  %i.arp = or disjoint i32 %i.are, %i.aro
  %i.arq = trunc i32 %i.arm to i16
  %i.arr = load ptr, ptr %i.ada, align 8
  %i.ars = getelementptr [2 x i8], ptr %i.arr, i64 %indvars.iv.next439.2.i.i.i
  %i.art = getelementptr i8, ptr %i.ars, i64 12
  store i16 %i.arq, ptr %i.art, align 2
  %i.aru = load ptr, ptr %0, align 8
  %i.arv = getelementptr [4 x i8], ptr %i.aru, i64 %indvars.iv.next437.2.i.i.i
  %i.arw = getelementptr i8, ptr %i.arv, i64 24
  %i.arx = load i32, ptr %i.arw, align 4          ; 2 uses
  %i.ary = lshr i32 %i.arx, 14
  %i.arz = and i32 %i.ary, 12
  %i.asa = or i32 %i.arp, %i.arz
  %i.asb = trunc i32 %i.arx to i16
  %i.asc = load ptr, ptr %i.ada, align 8
  %i.asd = getelementptr [2 x i8], ptr %i.asc, i64 %indvars.iv.next439.2.i.i.i
  %i.ase = getelementptr i8, ptr %i.asd, i64 14
  store i16 %i.asb, ptr %i.ase, align 2
  %i.asf = load ptr, ptr %0, align 8
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %indvars.iv.next437.2.i.i.i
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 28
  %i.asi = load i32, ptr %i.ash, align 4          ; 2 uses
  %i.asj = lshr i32 %i.asi, 16
  %i.ask = and i32 %i.asj, 3
  %i.asl = or i32 %i.asa, %i.ask
  %i.asm = trunc i32 %i.asi to i16
  %i.asn = load ptr, ptr %i.ada, align 8
  %i.aso = getelementptr [2 x i8], ptr %i.asn, i64 %indvars.iv.next439.2.i.i.i
  %i.asp = getelementptr i8, ptr %i.aso, i64 16
  store i16 %i.asm, ptr %i.asp, align 2
  %i.asq = trunc nuw i32 %i.asl to i16
  %i.asr = load ptr, ptr %i.ada, align 8
  %i.ass = getelementptr inbounds [2 x i8], ptr %i.asr, i64 %indvars.iv.next439.2.i.i.i
  store i16 %i.asq, ptr %i.ass, align 2
  %i.ast = load ptr, ptr %i.ada, align 8          ; 6 uses
  %i.asu = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ast, ptr noundef %i.ast, i32 noundef %.0248382.i.i.i) ; 2 uses
  %i.asv = icmp sgt i32 %i.asu, -1
  br i1 %i.asv, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %.thread.i99.i.i
  %i.asw = icmp eq i32 %.0248382.i.i.i, %i.act
  br i1 %i.asw, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.asx = getelementptr inbounds [2 x i8], ptr %i.ast, i64 %i.afa ; 2 uses
  br label %.lr.ph.i.i100.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i311.i.i.i
  %i.asy = icmp samesign ugt i64 %indvars.iv.in.i.i101.i.i, 2
  br i1 %i.asy, label %.lr.ph.i.i100.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.lr.ph.i.i100.i.i.1:                              ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i
  %indvars.iv.i310.i.i.i.1 = add nsw i64 %indvars.iv.in.i.i101.i.i, -2 ; 3 uses
  %i.asz = sub nsw i64 %i.afa, %indvars.iv.i310.i.i.i.1
  %i.ata = getelementptr inbounds [2 x i8], ptr %i.ast, i64 %i.asz
  %i.atb = trunc nuw nsw i64 %indvars.iv.i310.i.i.i.1 to i32 ; 2 uses
  br label %.lr.ph.i.i311.i.i.i.1

.lr.ph.i.i311.i.i.i.1:                            ; preds = %bb.ek, %.lr.ph.i.i100.i.i.1
  %.010.i.i312.i.i.i.1 = phi i32 [ %i.ath, %bb.ek ], [ %i.atb, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %.069.i.i313.i.i.i.1 = phi ptr [ %i.atg, %bb.ek ], [ %i.asx, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %.078.i.i314.i.i.i.1 = phi ptr [ %i.atf, %bb.ek ], [ %i.ata, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %i.atc = load i16, ptr %.078.i.i314.i.i.i.1, align 2
  %i.atd = load i16, ptr %.069.i.i313.i.i.i.1, align 2
  %i.ate = icmp eq i16 %i.atc, %i.atd
  br i1 %i.ate, label %bb.ek, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1: ; preds = %.lr.ph.i.i311.i.i.i.1
  %indvars.iv.next442.i.i.i.1 = add nsw i64 %indvars.iv441.i.i.i.a, -2
  br label %.lr.ph.i.i100.i.i

bb.ek:                                            ; preds = %.lr.ph.i.i311.i.i.i.1
  %i.atf = getelementptr inbounds nuw i8, ptr %.078.i.i314.i.i.i.1, i64 2
  %i.atg = getelementptr inbounds nuw i8, ptr %.069.i.i313.i.i.i.1, i64 2
  %i.ath = add nsw i32 %.010.i.i312.i.i.i.1, -1
  %i.ati = icmp sgt i32 %.010.i.i312.i.i.i.1, 1
  br i1 %i.ati, label %.lr.ph.i.i311.i.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit, !llvm.loop !5

.lr.ph.i.i100.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1, %bb.ej
  %indvars.iv441.i.i.i.a = phi i64 [ 35, %bb.ej ], [ %indvars.iv.next442.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ] ; 3 uses
  %indvars.iv.in.i.i101.i.i = phi i64 [ 36, %bb.ej ], [ %indvars.iv.i310.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ] ; 4 uses
  %indvars.iv.i310.i.i.i = add nsw i64 %indvars.iv.in.i.i101.i.i, -1 ; 3 uses
  %i.atj = sub nsw i64 %i.afa, %indvars.iv.i310.i.i.i
  %i.atk = getelementptr inbounds [2 x i8], ptr %i.ast, i64 %i.atj
  %i.atl = trunc nuw nsw i64 %indvars.iv.i310.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i311.i.i.i

.lr.ph.i.i311.i.i.i:                              ; preds = %bb.el, %.lr.ph.i.i100.i.i
  %.010.i.i312.i.i.i = phi i32 [ %i.atr, %bb.el ], [ %i.atl, %.lr.ph.i.i100.i.i ] ; 2 uses
  %.069.i.i313.i.i.i = phi ptr [ %i.atq, %bb.el ], [ %i.asx, %.lr.ph.i.i100.i.i ] ; 2 uses
  %.078.i.i314.i.i.i = phi ptr [ %i.atp, %bb.el ], [ %i.atk, %.lr.ph.i.i100.i.i ] ; 2 uses
  %i.atm = load i16, ptr %.078.i.i314.i.i.i, align 2
  %i.atn = load i16, ptr %.069.i.i313.i.i.i, align 2
  %i.ato = icmp eq i16 %i.atm, %i.atn
  br i1 %i.ato, label %bb.el, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.el:                                            ; preds = %.lr.ph.i.i311.i.i.i
  %i.atp = getelementptr inbounds nuw i8, ptr %.078.i.i314.i.i.i, i64 2
  %i.atq = getelementptr inbounds nuw i8, ptr %.069.i.i313.i.i.i, i64 2
  %i.atr = add nsw i32 %.010.i.i312.i.i.i, -1
  %i.ats = icmp sgt i32 %.010.i.i312.i.i.i, 1
  br i1 %i.ats, label %.lr.ph.i.i311.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit: ; preds = %bb.ek
  %indvars.iv.next442.i.i.i.le = add nsw i64 %indvars.iv441.i.i.i.a, -1
  br label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.el, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit
  %indvars.iv441.i.i.i.lcssa = phi i64 [ %indvars.iv.next442.i.i.i.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv441.i.i.i.a, %bb.el ] ; 4 uses
  %indvars.iv.in.i.i101.i.i.lcssa = phi i64 [ %indvars.iv.i310.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv.in.i.i101.i.i, %bb.el ]
  %.lcssa292 = phi i32 [ %i.atb, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %i.atl, %bb.el ]
  %i.att = sub nsw i32 %.0248382.i.i.i, %.lcssa292 ; 2 uses
  %i.atu = icmp sgt i64 %indvars.iv.in.i.i101.i.i.lcssa, 1
  br i1 %i.atu, label %.lr.ph.i102.i.i.preheader, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.lr.ph.i102.i.i.preheader:                        ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i
  %i.atv = sub i64 0, %indvars.iv441.i.i.i.lcssa
  %xtraiter383 = and i64 %i.atv, 3                ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.lr.ph.i102.i.i.prol.loopexit, label %.lr.ph.i102.i.i.prol

.lr.ph.i102.i.i.prol:                             ; preds = %.lr.ph.i102.i.i.preheader, %.lr.ph.i102.i.i.prol
  %indvars.iv446.i.i.i.prol = phi i64 [ %indvars.iv.next447.i.i.i.prol, %.lr.ph.i102.i.i.prol ], [ %i.afa, %.lr.ph.i102.i.i.preheader ] ; 2 uses
  %indvars.iv444.i.i.i.prol = phi i64 [ %indvars.iv.next445.i.i.i.prol, %.lr.ph.i102.i.i.prol ], [ %indvars.iv441.i.i.i.lcssa, %.lr.ph.i102.i.i.preheader ] ; 2 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %.lr.ph.i102.i.i.prol ], [ 0, %.lr.ph.i102.i.i.preheader ]
  %i.atw = load ptr, ptr %i.ada, align 8          ; 2 uses
  %indvars.iv.next445.i.i.i.prol = add nuw nsw i64 %indvars.iv444.i.i.i.prol, 1 ; 2 uses
  %i.atx = getelementptr [2 x i8], ptr %i.atw, i64 %indvars.iv444.i.i.i.prol
  %i.aty = getelementptr [2 x i8], ptr %i.atx, i64 %i.afa
  %i.atz = load i16, ptr %i.aty, align 2
  %indvars.iv.next447.i.i.i.prol = add nsw i64 %indvars.iv446.i.i.i.prol, 1 ; 3 uses
  %i.aua = getelementptr inbounds [2 x i8], ptr %i.atw, i64 %indvars.iv446.i.i.i.prol
  store i16 %i.atz, ptr %i.aua, align 2
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %.lr.ph.i102.i.i.prol.loopexit, label %.lr.ph.i102.i.i.prol, !llvm.loop !60

.lr.ph.i102.i.i.prol.loopexit:                    ; preds = %.lr.ph.i102.i.i.prol, %.lr.ph.i102.i.i.preheader
  %indvars.iv.next447.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next447.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %indvars.iv446.i.i.i.unr = phi i64 [ %i.afa, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next447.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %indvars.iv444.i.i.i.unr = phi i64 [ %indvars.iv441.i.i.i.lcssa, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next445.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %i.aub = add i64 %indvars.iv441.i.i.i.lcssa, -33
  %i.auc = icmp ult i64 %i.aub, 3
  br i1 %i.auc, label %.loopexit350.loopexit.i.i.i, label %.lr.ph.i102.i.i

.lr.ph.i102.i.i:                                  ; preds = %.lr.ph.i102.i.i.prol.loopexit, %.lr.ph.i102.i.i
  %indvars.iv446.i.i.i = phi i64 [ %indvars.iv.next447.i.i.i.3, %.lr.ph.i102.i.i ], [ %indvars.iv446.i.i.i.unr, %.lr.ph.i102.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv444.i.i.i = phi i64 [ %indvars.iv.next445.i.i.i.3, %.lr.ph.i102.i.i ], [ %indvars.iv444.i.i.i.unr, %.lr.ph.i102.i.i.prol.loopexit ] ; 5 uses
  %i.aud = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.aue = getelementptr [2 x i8], ptr %i.aud, i64 %indvars.iv444.i.i.i
  %i.auf = getelementptr [2 x i8], ptr %i.aue, i64 %i.afa
  %i.aug = load i16, ptr %i.auf, align 2
  %i.auh = getelementptr inbounds [2 x i8], ptr %i.aud, i64 %indvars.iv446.i.i.i
  store i16 %i.aug, ptr %i.auh, align 2
  %i.aui = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.auj = getelementptr [2 x i8], ptr %i.aui, i64 %indvars.iv444.i.i.i
  %i.auk = getelementptr i8, ptr %i.auj, i64 2
  %i.aul = getelementptr [2 x i8], ptr %i.auk, i64 %i.afa
  %i.aum = load i16, ptr %i.aul, align 2
  %i.aun = getelementptr [2 x i8], ptr %i.aui, i64 %indvars.iv446.i.i.i
  %i.auo = getelementptr i8, ptr %i.aun, i64 2
  store i16 %i.aum, ptr %i.auo, align 2
  %i.aup = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.auq = getelementptr [2 x i8], ptr %i.aup, i64 %indvars.iv444.i.i.i
  %i.aur = getelementptr i8, ptr %i.auq, i64 4
  %i.aus = getelementptr [2 x i8], ptr %i.aur, i64 %i.afa
  %i.aut = load i16, ptr %i.aus, align 2
  %i.auu = getelementptr [2 x i8], ptr %i.aup, i64 %indvars.iv446.i.i.i
  %i.auv = getelementptr i8, ptr %i.auu, i64 4
  store i16 %i.aut, ptr %i.auv, align 2
  %i.auw = load ptr, ptr %i.ada, align 8          ; 2 uses
  %indvars.iv.next445.i.i.i.3 = add nuw nsw i64 %indvars.iv444.i.i.i, 4 ; 2 uses
  %i.aux = getelementptr [2 x i8], ptr %i.auw, i64 %indvars.iv444.i.i.i
  %i.auy = getelementptr i8, ptr %i.aux, i64 6
  %i.auz = getelementptr [2 x i8], ptr %i.auy, i64 %i.afa
  %i.ava = load i16, ptr %i.auz, align 2
  %indvars.iv.next447.i.i.i.3 = add nsw i64 %indvars.iv446.i.i.i, 4 ; 2 uses
  %i.avb = getelementptr [2 x i8], ptr %i.auw, i64 %indvars.iv446.i.i.i
  %i.avc = getelementptr i8, ptr %i.avb, i64 6
  store i16 %i.ava, ptr %i.avc, align 2
  %exitcond451.not.i.i.i.3 = icmp eq i64 %indvars.iv.next445.i.i.i.3, 36
  br i1 %exitcond451.not.i.i.i.3, label %.loopexit350.loopexit.i.i.i, label %.lr.ph.i102.i.i, !llvm.loop !61

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, %bb.ei
  %i.avd = phi i32 [ %i.att, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.act, %bb.ei ], [ %.0248382.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ]
  %i.ave = add nsw i32 %.0248382.i.i.i, 36
  br label %.loopexit350.i.i.i

.loopexit350.loopexit.i.i.i:                      ; preds = %.lr.ph.i102.i.i, %.lr.ph.i102.i.i.prol.loopexit
  %indvars.iv.next447.i.i.i.lcssa = phi i64 [ %indvars.iv.next447.i.i.i.lcssa.unr, %.lr.ph.i102.i.i.prol.loopexit ], [ %indvars.iv.next447.i.i.i.3, %.lr.ph.i102.i.i ]
  %i.avf = trunc nsw i64 %indvars.iv.next447.i.i.i.lcssa to i32
  %.pre.i.i.i = load ptr, ptr %i.ada, align 8
  br label %.loopexit350.i.i.i

.loopexit350.i.i.i:                               ; preds = %.loopexit350.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i
  %i.avg = phi ptr [ %i.ast, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %.pre.i.i.i, %.loopexit350.loopexit.i.i.i ]
  %i.avh = phi i32 [ %i.avd, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.att, %.loopexit350.loopexit.i.i.i ] ; 2 uses
  %.4252.i.i.i = phi i32 [ %i.ave, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.avf, %.loopexit350.loopexit.i.i.i ] ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.avg, i32 noundef %i.act, i32 noundef %.0248382.i.i.i, i32 noundef %.4252.i.i.i)
  br i1 %.0259.lcssa.i.i.i, label %bb.em, label %bb.en

bb.em:                                            ; preds = %.loopexit350.i.i.i
  %i.avi = load ptr, ptr %i.ada, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.avi, i32 noundef %i.act, i32 noundef %.0248382.i.i.i, i32 noundef %.4252.i.i.i)
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.loopexit350.i.i.i, %.thread.i99.i.i
  %.5.i.i.i = phi i32 [ %.0248382.i.i.i, %.thread.i99.i.i ], [ %.4252.i.i.i, %bb.em ], [ %.4252.i.i.i, %.loopexit350.i.i.i ]
  %.1245.in.i.i.i = phi i32 [ %i.asu, %.thread.i99.i.i ], [ %i.avh, %bb.em ], [ %i.avh, %.loopexit350.i.i.i ]
  %.1245.i.i.i = or i32 %.1245.in.i.i.i, 32768
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %59, %._crit_edge378.loopexit.i.i.i, %.thread337.i.i.i, %7, %bb.eh
  %.5275335.i.i.i = phi i32 [ %.5275340.i.i.i, %._crit_edge378.loopexit.i.i.i ], [ %.4274380.i.i.i, %7 ], [ %.5275336.i.i.i.a, %bb.en ], [ %.5275340.i.i.i, %.thread337.i.i.i ], [ %.5275340.i.i.i, %59 ], [ %.4274380.i.i.i, %bb.eh ] ; 2 uses
  %.6.i98.i.i = phi i32 [ %58, %._crit_edge378.loopexit.i.i.i ], [ %.0248382.i.i.i, %7 ], [ %.5.i.i.i, %bb.en ], [ %.0248382.i.i.i, %.thread337.i.i.i ], [ %58, %59 ], [ %.0248382.i.i.i, %bb.eh ] ; 2 uses
  %.2246.i.i.i = phi i32 [ %49, %._crit_edge378.loopexit.i.i.i ], [ %10, %7 ], [ %.1245.i.i.i, %bb.en ], [ %14, %.thread337.i.i.i ], [ %49, %59 ], [ %i.aet, %bb.eh ] ; 3 uses
  %i.avj = load i32, ptr %i.ym, align 4           ; 2 uses
  %i.avk = icmp slt i32 %i.avj, 0
  %i.avl = icmp sgt i32 %.5275335.i.i.i, -1
  %or.cond3.i.i.i = select i1 %i.avk, i1 %i.avl, i1 false
  br i1 %or.cond3.i.i.i, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 %.2246.i.i.i, ptr %i.ym, align 4
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.avm = phi i32 [ %.2246.i.i.i, %bb.ep ], [ %i.avj, %bb.eo ] ; 2 uses
  %i.avn = trunc i32 %.2246.i.i.i to i16
  %indvars.iv.next461.i.i.i = add nuw nsw i64 %indvars.iv460.i.i.i.a, 1 ; 2 uses
  %i.avo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv460.i.i.i.a
  store i16 %i.avn, ptr %i.avo, align 2
  %indvars.iv.next435.i.i.i = add nuw nsw i64 %indvars.iv434.i.i.i, 32 ; 2 uses
  %i.avp = icmp samesign ult i64 %indvars.iv.next435.i.i.i, %i.aep
  br i1 %i.avp, label %bb.ef, label %._crit_edge388.loopexit.i.i.i, !llvm.loop !62

bb.er:                                            ; preds = %._crit_edge388.i.i.i
  store i32 32767, ptr %i.ym, align 4
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge388.i.i.i
  %i.avq = icmp sgt i32 %.0248.lcssa.i.i.i, 32798
  br i1 %i.avq, label %bb.et, label %.preheader.i89.i.i

.preheader.i89.i.i:                               ; preds = %bb.es
  %i.avr = icmp sgt i32 %.0253.lcssa.i.i.i, 0
  br i1 %i.avr, label %.lr.ph401.i.i.i, label %.loopexit.i.i.i

.lr.ph401.i.i.i:                                  ; preds = %.preheader.i89.i.i
  %i.avs = sext i32 %i.act to i64
  %i.avt = zext nneg i32 %i.yi to i64
  br label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 8, ptr %3, align 4
  br label %.loopexit.i.i.i

bb.eu:                                            ; preds = %bb.fa, %.lr.ph401.i.i.i
  %indvars.iv472.i.i.i = phi i64 [ %i.avt, %.lr.ph401.i.i.i ], [ %indvars.iv.next473.i.i.i, %bb.fa ] ; 2 uses
  %.0230399.i.i.i = phi i32 [ 0, %.lr.ph401.i.i.i ], [ %i.aym, %bb.fa ] ; 6 uses
  %.0232397.i.i.i = phi i32 [ 32, %.lr.ph401.i.i.i ], [ %.1233346.i.i.i, %bb.fa ] ; 2 uses
  %.7396.i.i.i = phi i32 [ %.0248.lcssa.i.i.i, %.lr.ph401.i.i.i ], [ %.9.i.i.i, %bb.fa ] ; 9 uses
  %i.avu = sub nsw i32 %.0253.lcssa.i.i.i, %.0230399.i.i.i ; 6 uses
  %.not290.i.i.i = icmp slt i32 %i.avu, %.0232397.i.i.i
  %i.avv = load ptr, ptr %i.ada, align 8          ; 5 uses
  br i1 %.not290.i.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.avw = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.avv, ptr noundef nonnull %i.b, i32 noundef %.0230399.i.i.i)
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

bb.ew:                                            ; preds = %bb.eu
  %i.avx = sub i32 %.7396.i.i.i, %i.avu           ; 2 uses
  %i.avy = sext i32 %.0230399.i.i.i to i64
  %i.avz = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.avy
  %.not18.i.i.i.i = icmp sgt i32 %i.act, %i.avx
  br i1 %.not18.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i316.i.i.i

.lr.ph.i316.i.i.i:                                ; preds = %bb.ew
  %i.awa = add i32 %i.avx, 1
  br label %.lr.ph.i.preheader.us.i.i.i.i

.lr.ph.i.preheader.us.i.i.i.i:                    ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %.lr.ph.i316.i.i.i
  %indvars.iv.i318.i.i.i = phi i64 [ %i.avs, %.lr.ph.i316.i.i.i ], [ %indvars.iv.next.i319.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 3 uses
  %i.awb = getelementptr inbounds [2 x i8], ptr %i.avv, i64 %indvars.iv.i318.i.i.i
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.ex, %.lr.ph.i.preheader.us.i.i.i.i
  %.010.i.us.i.i.i.i = phi i32 [ %i.awh, %bb.ex ], [ %i.avu, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i = phi ptr [ %i.awg, %bb.ex ], [ %i.avz, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i = phi ptr [ %i.awf, %bb.ex ], [ %i.awb, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %i.awc = load i16, ptr %.078.i.us.i.i.i.i, align 2
  %i.awd = load i16, ptr %.069.i.us.i.i.i.i, align 2
  %i.awe = icmp eq i16 %i.awc, %i.awd
  br i1 %i.awe, label %bb.ex, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i

bb.ex:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.awf = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i, i64 2
  %i.awg = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i, i64 2
  %i.awh = add nsw i32 %.010.i.us.i.i.i.i, -1
  %i.awi = icmp sgt i32 %.010.i.us.i.i.i.i, 1
  br i1 %i.awi, label %.lr.ph.i.us.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  %indvars.iv.next.i319.i.i.i = add nsw i64 %indvars.iv.i318.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i319.i.i.i to i32
  %exitcond.not.i.i91.i.i = icmp eq i32 %i.awa, %lftr.wideiv.i.i.i.i
  br i1 %exitcond.not.i.i91.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i.preheader.us.i.i.i.i, !llvm.loop !63

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i: ; preds = %bb.ex
  %i.awj = trunc nsw i64 %indvars.iv.i318.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, %bb.ev
  %.1233.i.i.i = phi i32 [ %.0232397.i.i.i, %bb.ev ], [ %i.avu, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %.0229.i.i.i = phi i32 [ %i.avw, %bb.ev ], [ %i.awj, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.awk = icmp sgt i32 %.0229.i.i.i, -1
  br i1 %i.awk, label %bb.fa, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i, %bb.ew
  %.1233345.i.i.i = phi i32 [ %.1233.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.avu, %bb.ew ], [ %i.avu, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 6 uses
  %i.awl = icmp eq i32 %.7396.i.i.i, %i.act
  br i1 %i.awl, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %i.awm = sext i32 %.0230399.i.i.i to i64        ; 2 uses
  %i.awn = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.awm
  %i.awo = icmp sgt i32 %.1233345.i.i.i, 1
  br i1 %i.awo, label %.lr.ph.preheader.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i: ; preds = %bb.ey
  %.014.i.i.i.i = add nsw i32 %.1233345.i.i.i, -1 ; 2 uses
  %i.awp = sub nsw i32 %.7396.i.i.i, %.014.i.i.i.i
  br label %.lr.ph393.preheader.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ey
  %i.awq = zext nneg i32 %.1233345.i.i.i to i64
  %i.awr = sext i32 %.7396.i.i.i to i64
  br label %.lr.ph.i321.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i: ; preds = %.lr.ph.i.i324.i.i.i
  %i.aws = icmp sgt i64 %indvars.iv.in.i322.i.i.i, 2
  br i1 %i.aws, label %.lr.ph.i321.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, !llvm.loop !64

.lr.ph.i321.i.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.in.i322.i.i.i = phi i64 [ %i.awq, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.i323.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i ] ; 2 uses
  %indvars.iv.i323.i.i.i = add nsw i64 %indvars.iv.in.i322.i.i.i, -1 ; 3 uses
  %i.awt = sub nsw i64 %i.awr, %indvars.iv.i323.i.i.i
  %i.awu = getelementptr inbounds [2 x i8], ptr %i.avv, i64 %i.awt
  %i.awv = trunc nuw nsw i64 %indvars.iv.i323.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i324.i.i.i

.lr.ph.i.i324.i.i.i:                              ; preds = %bb.ez, %.lr.ph.i321.i.i.i
  %.010.i.i325.i.i.i = phi i32 [ %i.axb, %bb.ez ], [ %i.awv, %.lr.ph.i321.i.i.i ] ; 2 uses
  %.069.i.i326.i.i.i = phi ptr [ %i.axa, %bb.ez ], [ %i.awn, %.lr.ph.i321.i.i.i ] ; 2 uses
  %.078.i.i327.i.i.i = phi ptr [ %i.awz, %bb.ez ], [ %i.awu, %.lr.ph.i321.i.i.i ] ; 2 uses
  %i.aww = load i16, ptr %.078.i.i327.i.i.i, align 2
  %i.awx = load i16, ptr %.069.i.i326.i.i.i, align 2
  %i.awy = icmp eq i16 %i.aww, %i.awx
  br i1 %i.awy, label %bb.ez, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i

bb.ez:                                            ; preds = %.lr.ph.i.i324.i.i.i
  %i.awz = getelementptr inbounds nuw i8, ptr %.078.i.i327.i.i.i, i64 2
  %i.axa = getelementptr inbounds nuw i8, ptr %.069.i.i326.i.i.i, i64 2
  %i.axb = add nsw i32 %.010.i.i325.i.i.i, -1
  %i.axc = icmp sgt i32 %.010.i.i325.i.i.i, 1
  br i1 %i.axc, label %.lr.ph.i.i324.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i, %bb.ez, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %.1.i90.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i ], [ %i.awv, %bb.ez ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i ] ; 3 uses
  %i.axd = sub nsw i32 %.7396.i.i.i, %.1.i90.i.i  ; 2 uses
  %i.axe = icmp slt i32 %.1.i90.i.i, %.1233345.i.i.i
  br i1 %i.axe, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i, label %._crit_edge394.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i
  %.pre228.i.i = sext i32 %.0230399.i.i.i to i64
  br label %.lr.ph393.preheader.i.i.i

.lr.ph393.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre228.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i ], [ %i.awm, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %i.axf = phi i32 [ %i.axd, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i ], [ %i.awp, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %.1498.i.i.i = phi i32 [ %.1.i90.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph393.preheader.i_crit_edge.i.i ], [ %.014.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %i.axg = sext i32 %.1498.i.i.i to i64           ; 4 uses
  %i.axh = sext i32 %.7396.i.i.i to i64           ; 2 uses
  %wide.trip.count470.i.i.i = sext i32 %.1233345.i.i.i to i64 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %i.b, i64 %.pre-phi.i.i ; 5 uses
  %i.axi = sub nsw i64 %wide.trip.count470.i.i.i, %i.axg
  %xtraiter389 = and i64 %i.axi, 3                ; 2 uses
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph393.i.i.i.prol.loopexit, label %.lr.ph393.i.i.i.prol

.lr.ph393.i.i.i.prol:                             ; preds = %.lr.ph393.preheader.i.i.i, %.lr.ph393.i.i.i.prol
  %indvars.iv465.i.i.i.prol = phi i64 [ %indvars.iv.next466.i.i.i.prol, %.lr.ph393.i.i.i.prol ], [ %i.axh, %.lr.ph393.preheader.i.i.i ] ; 2 uses
  %indvars.iv463.i.i.i.prol = phi i64 [ %indvars.iv.next464.i.i.i.prol, %.lr.ph393.i.i.i.prol ], [ %i.axg, %.lr.ph393.preheader.i.i.i ] ; 2 uses
  %prol.iter391 = phi i64 [ %prol.iter391.next, %.lr.ph393.i.i.i.prol ], [ 0, %.lr.ph393.preheader.i.i.i ]
  %indvars.iv.next464.i.i.i.prol = add nsw i64 %indvars.iv463.i.i.i.prol, 1 ; 2 uses
  %gep.i.i.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv463.i.i.i.prol
  %i.axj = load i16, ptr %gep.i.i.i.prol, align 2
  %i.axk = load ptr, ptr %i.ada, align 8
  %indvars.iv.next466.i.i.i.prol = add nsw i64 %indvars.iv465.i.i.i.prol, 1 ; 3 uses
  %i.axl = getelementptr inbounds [2 x i8], ptr %i.axk, i64 %indvars.iv465.i.i.i.prol
  store i16 %i.axj, ptr %i.axl, align 2
  %prol.iter391.next = add i64 %prol.iter391, 1   ; 2 uses
  %prol.iter391.cmp.not = icmp eq i64 %prol.iter391.next, %xtraiter389
  br i1 %prol.iter391.cmp.not, label %.lr.ph393.i.i.i.prol.loopexit, label %.lr.ph393.i.i.i.prol, !llvm.loop !65

.lr.ph393.i.i.i.prol.loopexit:                    ; preds = %.lr.ph393.i.i.i.prol, %.lr.ph393.preheader.i.i.i
  %indvars.iv.next466.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph393.preheader.i.i.i ], [ %indvars.iv.next466.i.i.i.prol, %.lr.ph393.i.i.i.prol ]
  %indvars.iv465.i.i.i.unr = phi i64 [ %i.axh, %.lr.ph393.preheader.i.i.i ], [ %indvars.iv.next466.i.i.i.prol, %.lr.ph393.i.i.i.prol ]
  %indvars.iv463.i.i.i.unr = phi i64 [ %i.axg, %.lr.ph393.preheader.i.i.i ], [ %indvars.iv.next464.i.i.i.prol, %.lr.ph393.i.i.i.prol ]
  %i.axm = sub nsw i64 %i.axg, %wide.trip.count470.i.i.i
  %i.axn = icmp ugt i64 %i.axm, -4
  br i1 %i.axn, label %._crit_edge394.loopexit.i.i.i, label %.lr.ph393.i.i.i

.lr.ph393.i.i.i:                                  ; preds = %.lr.ph393.i.i.i.prol.loopexit, %.lr.ph393.i.i.i
  %indvars.iv465.i.i.i = phi i64 [ %indvars.iv.next466.i.i.i.3, %.lr.ph393.i.i.i ], [ %indvars.iv465.i.i.i.unr, %.lr.ph393.i.i.i.prol.loopexit ] ; 5 uses
end_hunk_1
