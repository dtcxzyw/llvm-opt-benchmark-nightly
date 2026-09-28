Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/umutablecptrie?download=true
inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
bb.dp:                                            ; preds = %bb.dn
  store i8 2, ptr %i.adm, align 1, !tbaa !40
  %i.adn = add nsw i32 %.0276394.i.i.i, 32
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.ado = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv458.i.i.i
  store i8 3, ptr %i.ado, align 1, !tbaa !40
  %i.adp = add nsw i32 %.0276394.i.i.i, 36
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk
  %.3287.i.i.i = phi i32 [ 0, %bb.dl ], [ %.2286393.i.i.i, %bb.dk ], [ %.2286393.i.i.i, %bb.dq ], [ %.2286393.i.i.i, %bb.dp ], [ %.2286393.i.i.i, %bb.do ]
  %.3279.i.i.i = phi i32 [ %.1277.i.i.i, %bb.dl ], [ %.0276394.i.i.i, %bb.dk ], [ %i.adp, %bb.dq ], [ %i.adn, %bb.dp ], [ %.0276394.i.i.i, %bb.do ] ; 2 uses
  %.2275.i.i.i = phi i1 [ %.1274.i.i.i, %bb.dl ], [ %.0273395.i.i.i, %bb.dk ], [ true, %bb.dq ], [ %.0273395.i.i.i, %bb.dp ], [ %.0273395.i.i.i, %bb.do ] ; 2 uses
  %i.adq = icmp samesign ult i64 %i.acr, %sext.i.i
  br i1 %i.adq, label %.preheader376.i.i.i, label %._crit_edge.i95.i.i, !llvm.loop !97

bb.ds:                                            ; preds = %.noexc115.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fi

bb.dt:                                            ; preds = %.noexc115.i.i
  %i.adr = lshr exact i32 %i.cn, 5
  %i.ads = zext nneg i32 %i.adr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.adc, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ads, i1 false)
  %i.adt = icmp slt i32 %i.acy, 4126
  br i1 %i.adt, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.adu = icmp samesign ult i32 %i.acy, 32798
  br i1 %i.adu, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.adv = icmp samesign ult i32 %i.acy, 131102   ; 3 uses
  %..i96.i.i = select i1 %i.adv, i32 17, i32 21
  %.537.i.i.i = select i1 %i.adv, i32 131071, i32 2097151
  %.538.i.i.i = select i1 %i.adv, i32 200003, i32 1500007
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.sink536.i.i.i = phi i32 [ 15, %bb.du ], [ %..i96.i.i, %bb.dv ], [ 12, %bb.dt ]
  %.sink.i97.i.i = phi i32 [ 32767, %bb.du ], [ %.537.i.i.i, %bb.dv ], [ 4095, %bb.dt ]
  %.0.i317.i.i.i = phi i32 [ 50021, %bb.du ], [ %.538.i.i.i, %bb.dv ], [ 6007, %bb.dt ] ; 5 uses
  store i32 %.sink536.i.i.i, ptr %i.zo, align 8, !tbaa !46
  store i32 %.sink.i97.i.i, ptr %i.zp, align 4, !tbaa !47
  %i.adw = load i32, ptr %i.nx, align 8, !tbaa !122
  %i.adx = icmp sgt i32 %.0.i317.i.i.i, %i.adw
  %.pre.i318.i.i.i = load ptr, ptr %6, align 8, !tbaa !48 ; 2 uses
  br i1 %i.adx, label %bb.dx, label %._crit_edge.i319.i.i.i

._crit_edge.i319.i.i.i:                           ; preds = %bb.dw
  %.pre13.i320.i.i.i = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %.pre14.i321.i.i.i = zext nneg i32 %.pre13.i320.i.i.i to i64
  br label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @uprv_free_78(ptr noundef %.pre.i318.i.i.i)
          to label %.noexc116.i.i unwind label %bb.fj

.noexc116.i.i:                                    ; preds = %bb.dx
  %i.ady = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %i.adz = zext nneg i32 %i.ady to i64            ; 2 uses
  %i.aea = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.adz) #14
          to label %.noexc117.i.i unwind label %bb.fj ; 3 uses

.noexc117.i.i:                                    ; preds = %.noexc116.i.i
  store ptr %i.aea, ptr %6, align 8, !tbaa !48
  %i.aeb = icmp eq ptr %i.aea, null
  br i1 %i.aeb, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %.noexc117.i.i
  store i32 %.0.i317.i.i.i, ptr %i.nx, align 8, !tbaa !122
  br label %bb.dz

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i: ; preds = %.noexc117.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fi

bb.dz:                                            ; preds = %bb.dy, %._crit_edge.i319.i.i.i
  %.pre-phi15.i322.i.i.i = phi i64 [ %.pre14.i321.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.adz, %bb.dy ]
  %i.aec = phi ptr [ %.pre.i318.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.aea, %bb.dy ]
  store i32 %.0.i317.i.i.i, ptr %i.oc, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aec, i8 0, i64 %.pre-phi15.i322.i.i.i, i1 false)
  store i32 32, ptr %i.od, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  br i1 %.0273.lcssa.i.i.i, label %bb.ea, label %bb.ej

bb.ea:                                            ; preds = %bb.dz
  %i.aed = icmp slt i32 %i.acy, 4130
  br i1 %i.aed, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aee = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.aee, align 8, !tbaa !46
  %i.aef = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4095, ptr %i.aef, align 4, !tbaa !47
  br label %bb.eh

bb.ec:                                            ; preds = %bb.ea
  %i.aeg = icmp samesign ult i32 %i.acy, 32802
  %i.aeh = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  br i1 %i.aeg, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aei = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 15, ptr %i.aei, align 8, !tbaa !46
  store i32 32767, ptr %i.aeh, align 4, !tbaa !47
  br label %bb.eh

bb.ee:                                            ; preds = %bb.ec
  %i.aej = icmp samesign ult i32 %i.acy, 131106
  %i.aek = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aej, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 17, ptr %i.aek, align 8, !tbaa !46
  store i32 131071, ptr %i.aeh, align 4, !tbaa !47
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  store i32 21, ptr %i.aek, align 8, !tbaa !46
  store i32 2097151, ptr %i.aeh, align 4, !tbaa !47
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ed, %bb.eb
  %.0.i325.i.i.i = phi i32 [ 6007, %bb.eb ], [ 50021, %bb.ed ], [ 200003, %bb.ef ], [ 1500007, %bb.eg ] ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @uprv_free_78(ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.ei

.noexc.i.i.i:                                     ; preds = %bb.eh
  %i.aem = shl nuw nsw i32 %.0.i325.i.i.i, 2
  %i.aen = zext nneg i32 %i.aem to i64            ; 2 uses
  %i.aeo = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aen) #14
          to label %.noexc332.i.i.i unwind label %bb.ei ; 3 uses

.noexc332.i.i.i:                                  ; preds = %.noexc.i.i.i
  store ptr %i.aeo, ptr %4, align 8, !tbaa !48
  %i.aep = icmp eq ptr %i.aeo, null
  br i1 %i.aep, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 %.0.i325.i.i.i, ptr %i.ael, align 8, !tbaa !122
  %i.aeq = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.0.i325.i.i.i, ptr %i.aeq, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aeo, i8 0, i64 %i.aen, i1 false)
  %i.aer = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 36, ptr %i.aer, align 8, !tbaa !50
  br label %bb.ej

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.ff

bb.ei:                                            ; preds = %.noexc.i.i.i, %bb.eh
  %i.aes = landingpad { ptr, i32 }
          cleanup
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i unwind label %bb.fh

bb.ej:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.pre.i.i.i = load i32, ptr %i.yt, align 4, !tbaa !24 ; 3 uses
  br i1 %i.zt, label %.lr.ph413.i.i.i, label %._crit_edge414.i.i.i

.lr.ph413.i.i.i:                                  ; preds = %bb.ej
  %i.aet = zext nneg i32 %i.zq to i64
  %i.aeu = zext nneg i32 %i.zs to i64
  %.pre246.i.i = zext nneg i32 %i.acw to i64
  br label %bb.ek

._crit_edge414.loopexit.i.i.i:                    ; preds = %bb.eu
  %i.aev = trunc nuw nsw i64 %indvars.iv.next488.i.i.i to i32
  br label %._crit_edge414.i.i.i

._crit_edge414.i.i.i:                             ; preds = %._crit_edge414.loopexit.i.i.i, %bb.ej
  %i.aew = phi i32 [ %.pre.i.i.i, %bb.ej ], [ %i.aqg, %._crit_edge414.loopexit.i.i.i ]
  %.0255.lcssa.i.i.i = phi i32 [ 0, %bb.ej ], [ %i.aev, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %.0250.lcssa.i.i.i = phi i32 [ %i.acw, %bb.ej ], [ %.6.i107.i.i, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %i.aex = icmp slt i32 %i.aew, 0
  br i1 %i.aex, label %bb.ev, label %bb.ew

bb.ek:                                            ; preds = %bb.eu, %.lr.ph413.i.i.i
  %i.aey = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %i.aqg, %bb.eu ]
  %indvars.iv487.i.i.i = phi i64 [ 0, %.lr.ph413.i.i.i ], [ %indvars.iv.next488.i.i.i, %bb.eu ] ; 2 uses
  %indvars.iv460.i.i.i = phi i64 [ %i.aet, %.lr.ph413.i.i.i ], [ %indvars.iv.next461.i.i.i, %bb.eu ] ; 7 uses
  %.0250408.i.i.i = phi i32 [ %i.acw, %.lr.ph413.i.i.i ], [ %.6.i107.i.i, %bb.eu ] ; 18 uses
  %.4288406.i.i.i = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %.5289360.i.i.i, %bb.eu ] ; 5 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv460.i.i.i
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !40 ; 2 uses
  %i.afb = icmp eq i8 %i.afa, 0
  %i.afc = icmp slt i32 %.4288406.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.afb, i1 %i.afc, i1 false
  br i1 %or.cond.i.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.afd = load i32, ptr %i.yn, align 8, !tbaa !25
  %i.afe = icmp slt i32 %i.afd, 65536
  br i1 %i.afe, label %.thread362.i.i.i, label %.thread.i108.i.i

bb.em:                                            ; preds = %bb.ek
  switch i8 %i.afa, label %.thread.i108.i.i [
    i8 0, label %bb.es
    i8 1, label %7
    i8 2, label %.thread362.i.i.i
  ]

7:                                                ; preds = %bb.em
  %8 = load ptr, ptr %0, align 8, !tbaa !22
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv460.i.i.i
  %10 = load i32, ptr %9, align 4, !tbaa !34
  br label %bb.es

.thread362.i.i.i:                                 ; preds = %bb.em, %bb.el
  %.5289365.i.i.i = phi i32 [ %.4288406.i.i.i, %bb.em ], [ 0, %bb.el ] ; 3 uses
  %11 = load ptr, ptr %i.add, align 8, !tbaa !31  ; 6 uses
  %12 = load ptr, ptr %0, align 8, !tbaa !22      ; 3 uses
  %13 = trunc nuw nsw i64 %indvars.iv460.i.i.i to i32
  %14 = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %11, ptr noundef %12, i32 noundef %13) ; 2 uses
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %bb.es, label %16

16:                                               ; preds = %.thread362.i.i.i
  %17 = icmp eq i32 %.0250408.i.i.i, %i.acw
  br i1 %17, label %.lr.ph403.preheader.i.i.i, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv460.i.i.i ; 2 uses
  %20 = sext i32 %.0250408.i.i.i to i64           ; 4 uses
  br label %21

21:                                               ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1, %18
  %indvars.iv.i.i101.i.i = phi i64 [ 31, %18 ], [ %indvars.iv.next.i.i106.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1 ] ; 6 uses
  %22 = sub nsw i64 %20, %indvars.iv.i.i101.i.i
  %23 = getelementptr inbounds [2 x i8], ptr %11, i64 %22
  %24 = trunc nuw nsw i64 %indvars.iv.i.i101.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i102.i.i

.lr.ph.i.i.i102.i.i:                              ; preds = %29, %21
  %.010.i.i.i103.i.i = phi i32 [ %32, %29 ], [ %24, %21 ] ; 2 uses
  %.069.i.i.i104.i.i = phi ptr [ %31, %29 ], [ %19, %21 ] ; 2 uses
  %.078.i.i.i105.i.i = phi ptr [ %30, %29 ], [ %23, %21 ] ; 2 uses
  %25 = load i16, ptr %.078.i.i.i105.i.i, align 2, !tbaa !42
  %26 = zext i16 %25 to i32
  %27 = load i32, ptr %.069.i.i.i104.i.i, align 4, !tbaa !34
  %28 = icmp eq i32 %27, %26
  br i1 %28, label %29, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i

29:                                               ; preds = %.lr.ph.i.i.i102.i.i
  %30 = getelementptr inbounds nuw i8, ptr %.078.i.i.i105.i.i, i64 2
  %31 = getelementptr inbounds nuw i8, ptr %.069.i.i.i104.i.i, i64 4
  %32 = add nsw i32 %.010.i.i.i103.i.i, -1
  %33 = icmp sgt i32 %.010.i.i.i103.i.i, 1
  br i1 %33, label %.lr.ph.i.i.i102.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !4

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i102.i.i
  %indvars.iv.next.i.i106.i.i = add nsw i64 %indvars.iv.i.i101.i.i, -1 ; 3 uses
  %34 = icmp samesign ugt i64 %indvars.iv.i.i101.i.i, 1
  br i1 %34, label %35, label %.lr.ph403.preheader.i.i.i

35:                                               ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i
  %36 = sub nsw i64 %20, %indvars.iv.next.i.i106.i.i
  %37 = getelementptr inbounds [2 x i8], ptr %11, i64 %36
  %38 = trunc nuw nsw i64 %indvars.iv.next.i.i106.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i102.i.i.1

.lr.ph.i.i.i102.i.i.1:                            ; preds = %43, %35
  %.010.i.i.i103.i.i.1 = phi i32 [ %46, %43 ], [ %38, %35 ] ; 2 uses
  %.069.i.i.i104.i.i.1 = phi ptr [ %45, %43 ], [ %19, %35 ] ; 2 uses
  %.078.i.i.i105.i.i.1 = phi ptr [ %44, %43 ], [ %37, %35 ] ; 2 uses
  %39 = load i16, ptr %.078.i.i.i105.i.i.1, align 2, !tbaa !42
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr %.069.i.i.i104.i.i.1, align 4, !tbaa !34
  %42 = icmp eq i32 %41, %40
  br i1 %42, label %43, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i102.i.i.1
  %indvars.iv.next.i.i106.i.i.1 = add nsw i64 %indvars.iv.i.i101.i.i, -2
  br label %21

43:                                               ; preds = %.lr.ph.i.i.i102.i.i.1
  %44 = getelementptr inbounds nuw i8, ptr %.078.i.i.i105.i.i.1, i64 2
  %45 = getelementptr inbounds nuw i8, ptr %.069.i.i.i104.i.i.1, i64 4
  %46 = add nsw i32 %.010.i.i.i103.i.i.1, -1
  %47 = icmp sgt i32 %.010.i.i.i103.i.i.1, 1
  br i1 %47, label %.lr.ph.i.i.i102.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !4

_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %29, %43
  %indvars.iv.i.i101.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i106.i.i, %43 ], [ %indvars.iv.i.i101.i.i, %29 ]
  %.lcssa339 = phi i32 [ %38, %43 ], [ %24, %29 ]
  %48 = sub nsw i32 %.0250408.i.i.i, %.lcssa339
  br label %.lr.ph403.preheader.i.i.i

.lr.ph403.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, %16
  %.pre-phi.i.i = phi i64 [ %.pre246.i.i, %16 ], [ %20, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %20, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 4 uses
  %49 = phi i32 [ %i.acw, %16 ], [ %48, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %.0250408.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 2 uses
  %.0243521.i.i.i = phi i64 [ 0, %16 ], [ %indvars.iv.i.i101.i.i.lcssa, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 7 uses
  %invariant.gep534.i.i.i = getelementptr [4 x i8], ptr %12, i64 %indvars.iv460.i.i.i ; 2 uses
  %50 = add i64 %.0243521.i.i.i, 1
  %51 = and i64 %50, 4294967295
  %52 = sub nsw i64 33, %51                       ; 3 uses
  %min.iters.check256 = icmp ult i64 %52, 12
  br i1 %min.iters.check256, label %.lr.ph403.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph403.preheader.i.i.i
  %53 = trunc i64 %.0243521.i.i.i to i32
  %54 = add i64 %.0243521.i.i.i, 1
  %55 = and i64 %54, 4294967295
  %56 = sub nsw i64 32, %55                       ; 2 uses
  %57 = trunc i64 %56 to i32
  %58 = sub i32 -2, %53
  %59 = icmp ult i32 %58, %57
  %60 = icmp ugt i64 %56, 4294967295
  %61 = or i1 %59, %60
  br i1 %61, label %.lr.ph403.i.i.i.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %vector.scevcheck
  %n.vec258 = and i64 %52, -8                     ; 4 uses
  %62 = add nsw i64 %.pre-phi.i.i, %n.vec258      ; 2 uses
  %63 = add i64 %.0243521.i.i.i, %n.vec258
  %64 = getelementptr [4 x i8], ptr %invariant.gep534.i.i.i, i64 %.0243521.i.i.i
  %65 = getelementptr [2 x i8], ptr %11, i64 %.pre-phi.i.i
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next263, %vector.body259 ] ; 3 uses
  %66 = getelementptr [4 x i8], ptr %64, i64 %index260 ; 2 uses
  %67 = getelementptr i8, ptr %66, i64 16
  %wide.load261 = load <4 x i32>, ptr %66, align 4, !tbaa !34
  %wide.load262 = load <4 x i32>, ptr %67, align 4, !tbaa !34
  %68 = trunc <4 x i32> %wide.load261 to <4 x i16>
  %69 = trunc <4 x i32> %wide.load262 to <4 x i16>
  %70 = getelementptr [2 x i8], ptr %65, i64 %index260 ; 2 uses
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store <4 x i16> %68, ptr %70, align 2, !tbaa !42
  store <4 x i16> %69, ptr %71, align 2, !tbaa !42
  %index.next263 = add nuw i64 %index260, 8       ; 2 uses
  %72 = icmp eq i64 %index.next263, %n.vec258
  br i1 %72, label %middle.block264, label %vector.body259, !llvm.loop !98

middle.block264:                                  ; preds = %vector.body259
  %cmp.n265 = icmp eq i64 %52, %n.vec258
  br i1 %cmp.n265, label %._crit_edge404.loopexit.i.i.i, label %.lr.ph403.i.i.i.preheader

.lr.ph403.i.i.i.preheader:                        ; preds = %vector.scevcheck, %.lr.ph403.preheader.i.i.i, %middle.block264
  %indvars.iv481.i.i.i.ph = phi i64 [ %.pre-phi.i.i, %vector.scevcheck ], [ %.pre-phi.i.i, %.lr.ph403.preheader.i.i.i ], [ %62, %middle.block264 ]
  %indvars.iv479.i.i.i.ph = phi i64 [ %.0243521.i.i.i, %vector.scevcheck ], [ %.0243521.i.i.i, %.lr.ph403.preheader.i.i.i ], [ %63, %middle.block264 ]
  br label %.lr.ph403.i.i.i

.lr.ph403.i.i.i:                                  ; preds = %.lr.ph403.i.i.i.preheader, %.lr.ph403.i.i.i
  %indvars.iv481.i.i.i = phi i64 [ %indvars.iv.next482.i.i.i, %.lr.ph403.i.i.i ], [ %indvars.iv481.i.i.i.ph, %.lr.ph403.i.i.i.preheader ] ; 2 uses
  %indvars.iv479.i.i.i = phi i64 [ %indvars.iv.next480.i.i.i, %.lr.ph403.i.i.i ], [ %indvars.iv479.i.i.i.ph, %.lr.ph403.i.i.i.preheader ] ; 2 uses
  %indvars.iv.next480.i.i.i = add nsw i64 %indvars.iv479.i.i.i, 1 ; 2 uses
  %gep535.i.i.i = getelementptr [4 x i8], ptr %invariant.gep534.i.i.i, i64 %indvars.iv479.i.i.i
  %73 = load i32, ptr %gep535.i.i.i, align 4, !tbaa !34
  %74 = trunc i32 %73 to i16
  %indvars.iv.next482.i.i.i = add nsw i64 %indvars.iv481.i.i.i, 1 ; 2 uses
  %75 = getelementptr inbounds [2 x i8], ptr %11, i64 %indvars.iv481.i.i.i
  store i16 %74, ptr %75, align 2, !tbaa !42
  %76 = and i64 %indvars.iv.next480.i.i.i, 4294967295
  %exitcond486.not.i.i.i = icmp eq i64 %76, 32
  br i1 %exitcond486.not.i.i.i, label %._crit_edge404.loopexit.i.i.i, label %.lr.ph403.i.i.i, !llvm.loop !99

._crit_edge404.loopexit.i.i.i:                    ; preds = %.lr.ph403.i.i.i, %middle.block264
  %indvars.iv.next482.i.i.i.lcssa = phi i64 [ %62, %middle.block264 ], [ %indvars.iv.next482.i.i.i, %.lr.ph403.i.i.i ]
  %77 = trunc nsw i64 %indvars.iv.next482.i.i.i.lcssa to i32 ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %11, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %77)
  br i1 %.0273.lcssa.i.i.i, label %78, label %bb.es

78:                                               ; preds = %._crit_edge404.loopexit.i.i.i
  %79 = load ptr, ptr %i.add, align 8, !tbaa !31
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %79, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %77)
  br label %bb.es

.thread.i108.i.i:                                 ; preds = %bb.em, %bb.el
  %.5289361.i.i.i.a = phi i32 [ %.4288406.i.i.i, %bb.em ], [ 0, %bb.el ]
  %i.aff = load ptr, ptr %0, align 8, !tbaa !22
  %i.afg = load ptr, ptr %i.add, align 8, !tbaa !31 ; 10 uses
  %i.afh = sext i32 %.0250408.i.i.i to i64        ; 9 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv460.i.i.i ; 32 uses
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !34 ; 2 uses
  %i.afk = lshr i32 %i.afj, 2
  %i.afl = and i32 %i.afk, 49152
  %i.afm = trunc i32 %i.afj to i16
  %i.afn = getelementptr [2 x i8], ptr %i.afg, i64 %i.afh ; 42 uses
  %i.afo = getelementptr i8, ptr %i.afn, i64 2
  store i16 %i.afm, ptr %i.afo, align 2, !tbaa !42
  %i.afp = getelementptr i8, ptr %i.afi, i64 4
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !34 ; 2 uses
  %i.afr = lshr i32 %i.afq, 4
  %i.afs = and i32 %i.afr, 12288
  %i.aft = or disjoint i32 %i.afs, %i.afl
  %i.afu = trunc i32 %i.afq to i16
  %i.afv = getelementptr i8, ptr %i.afn, i64 4
  store i16 %i.afu, ptr %i.afv, align 2, !tbaa !42
  %i.afw = getelementptr i8, ptr %i.afi, i64 8
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !34 ; 2 uses
  %i.afy = lshr i32 %i.afx, 6
  %i.afz = and i32 %i.afy, 3072
  %i.aga = or disjoint i32 %i.aft, %i.afz
  %i.agb = trunc i32 %i.afx to i16
  %i.agc = getelementptr i8, ptr %i.afn, i64 6
  store i16 %i.agb, ptr %i.agc, align 2, !tbaa !42
  %i.agd = getelementptr i8, ptr %i.afi, i64 12
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !34 ; 2 uses
  %i.agf = lshr i32 %i.age, 8
  %i.agg = and i32 %i.agf, 768
  %i.agh = or disjoint i32 %i.aga, %i.agg
  %i.agi = trunc i32 %i.age to i16
  %i.agj = getelementptr i8, ptr %i.afn, i64 8
  store i16 %i.agi, ptr %i.agj, align 2, !tbaa !42
  %i.agk = getelementptr i8, ptr %i.afi, i64 16
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !34 ; 2 uses
  %i.agm = lshr i32 %i.agl, 10
  %i.agn = and i32 %i.agm, 192
  %i.ago = or disjoint i32 %i.agh, %i.agn
  %i.agp = trunc i32 %i.agl to i16
  %i.agq = getelementptr i8, ptr %i.afn, i64 10
  store i16 %i.agp, ptr %i.agq, align 2, !tbaa !42
  %i.agr = getelementptr i8, ptr %i.afi, i64 20
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !34 ; 2 uses
  %i.agt = lshr i32 %i.ags, 12
  %i.agu = and i32 %i.agt, 48
  %i.agv = or disjoint i32 %i.ago, %i.agu
  %i.agw = trunc i32 %i.ags to i16
  %i.agx = getelementptr i8, ptr %i.afn, i64 12
  store i16 %i.agw, ptr %i.agx, align 2, !tbaa !42
  %i.agy = getelementptr i8, ptr %i.afi, i64 24
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !34 ; 2 uses
  %i.aha = lshr i32 %i.agz, 14
  %i.ahb = and i32 %i.aha, 12
  %i.ahc = or i32 %i.agv, %i.ahb
  %i.ahd = trunc i32 %i.agz to i16
  %i.ahe = getelementptr i8, ptr %i.afn, i64 14
  store i16 %i.ahd, ptr %i.ahe, align 2, !tbaa !42
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.afi, i64 28
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !34 ; 2 uses
  %i.ahh = lshr i32 %i.ahg, 16
  %i.ahi = and i32 %i.ahh, 3
  %i.ahj = or i32 %i.ahc, %i.ahi
  %i.ahk = trunc i32 %i.ahg to i16
  %i.ahl = getelementptr i8, ptr %i.afn, i64 16
  store i16 %i.ahk, ptr %i.ahl, align 2, !tbaa !42
  %i.ahm = trunc nuw i32 %i.ahj to i16
  store i16 %i.ahm, ptr %i.afn, align 2, !tbaa !42
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.afi, i64 32
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !34 ; 2 uses
  %i.ahp = lshr i32 %i.aho, 2
  %i.ahq = and i32 %i.ahp, 49152
  %i.ahr = trunc i32 %i.aho to i16
  %i.ahs = getelementptr i8, ptr %i.afn, i64 18
  %i.aht = getelementptr i8, ptr %i.afn, i64 20
  store i16 %i.ahr, ptr %i.aht, align 2, !tbaa !42
  %i.ahu = getelementptr i8, ptr %i.afi, i64 36
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !34 ; 2 uses
  %i.ahw = lshr i32 %i.ahv, 4
  %i.ahx = and i32 %i.ahw, 12288
  %i.ahy = or disjoint i32 %i.ahx, %i.ahq
  %i.ahz = trunc i32 %i.ahv to i16
  %i.aia = getelementptr i8, ptr %i.afn, i64 22
  store i16 %i.ahz, ptr %i.aia, align 2, !tbaa !42
  %i.aib = getelementptr i8, ptr %i.afi, i64 40
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !34 ; 2 uses
  %i.aid = lshr i32 %i.aic, 6
  %i.aie = and i32 %i.aid, 3072
  %i.aif = or disjoint i32 %i.ahy, %i.aie
  %i.aig = trunc i32 %i.aic to i16
  %i.aih = getelementptr i8, ptr %i.afn, i64 24
  store i16 %i.aig, ptr %i.aih, align 2, !tbaa !42
  %i.aii = getelementptr i8, ptr %i.afi, i64 44
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !34 ; 2 uses
  %i.aik = lshr i32 %i.aij, 8
  %i.ail = and i32 %i.aik, 768
  %i.aim = or disjoint i32 %i.aif, %i.ail
  %i.ain = trunc i32 %i.aij to i16
  %i.aio = getelementptr i8, ptr %i.afn, i64 26
  store i16 %i.ain, ptr %i.aio, align 2, !tbaa !42
  %i.aip = getelementptr i8, ptr %i.afi, i64 48
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !34 ; 2 uses
  %i.air = lshr i32 %i.aiq, 10
  %i.ais = and i32 %i.air, 192
  %i.ait = or disjoint i32 %i.aim, %i.ais
  %i.aiu = trunc i32 %i.aiq to i16
  %i.aiv = getelementptr i8, ptr %i.afn, i64 28
  store i16 %i.aiu, ptr %i.aiv, align 2, !tbaa !42
  %i.aiw = getelementptr i8, ptr %i.afi, i64 52
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !34 ; 2 uses
  %i.aiy = lshr i32 %i.aix, 12
  %i.aiz = and i32 %i.aiy, 48
  %i.aja = or disjoint i32 %i.ait, %i.aiz
  %i.ajb = trunc i32 %i.aix to i16
  %i.ajc = getelementptr i8, ptr %i.afn, i64 30
  store i16 %i.ajb, ptr %i.ajc, align 2, !tbaa !42
  %i.ajd = getelementptr i8, ptr %i.afi, i64 56
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !34 ; 2 uses
  %i.ajf = lshr i32 %i.aje, 14
  %i.ajg = and i32 %i.ajf, 12
  %i.ajh = or i32 %i.aja, %i.ajg
  %i.aji = trunc i32 %i.aje to i16
  %i.ajj = getelementptr i8, ptr %i.afn, i64 32
  store i16 %i.aji, ptr %i.ajj, align 2, !tbaa !42
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.afi, i64 60
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !34 ; 2 uses
  %i.ajm = lshr i32 %i.ajl, 16
  %i.ajn = and i32 %i.ajm, 3
  %i.ajo = or i32 %i.ajh, %i.ajn
  %i.ajp = trunc i32 %i.ajl to i16
  %i.ajq = getelementptr i8, ptr %i.afn, i64 34
  store i16 %i.ajp, ptr %i.ajq, align 2, !tbaa !42
  %i.ajr = trunc nuw i32 %i.ajo to i16
  store i16 %i.ajr, ptr %i.ahs, align 2, !tbaa !42
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.afi, i64 64
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !34 ; 2 uses
  %i.aju = lshr i32 %i.ajt, 2
  %i.ajv = and i32 %i.aju, 49152
  %i.ajw = trunc i32 %i.ajt to i16
  %i.ajx = getelementptr i8, ptr %i.afn, i64 36
  %i.ajy = getelementptr i8, ptr %i.afn, i64 38
  store i16 %i.ajw, ptr %i.ajy, align 2, !tbaa !42
  %i.ajz = getelementptr i8, ptr %i.afi, i64 68
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !34 ; 2 uses
  %i.akb = lshr i32 %i.aka, 4
  %i.akc = and i32 %i.akb, 12288
  %i.akd = or disjoint i32 %i.akc, %i.ajv
  %i.ake = trunc i32 %i.aka to i16
  %i.akf = getelementptr i8, ptr %i.afn, i64 40
  store i16 %i.ake, ptr %i.akf, align 2, !tbaa !42
  %i.akg = getelementptr i8, ptr %i.afi, i64 72
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !34 ; 2 uses
  %i.aki = lshr i32 %i.akh, 6
  %i.akj = and i32 %i.aki, 3072
  %i.akk = or disjoint i32 %i.akd, %i.akj
  %i.akl = trunc i32 %i.akh to i16
  %i.akm = getelementptr i8, ptr %i.afn, i64 42
  store i16 %i.akl, ptr %i.akm, align 2, !tbaa !42
  %i.akn = getelementptr i8, ptr %i.afi, i64 76
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !34 ; 2 uses
  %i.akp = lshr i32 %i.ako, 8
  %i.akq = and i32 %i.akp, 768
  %i.akr = or disjoint i32 %i.akk, %i.akq
  %i.aks = trunc i32 %i.ako to i16
  %i.akt = getelementptr i8, ptr %i.afn, i64 44
  store i16 %i.aks, ptr %i.akt, align 2, !tbaa !42
  %i.aku = getelementptr i8, ptr %i.afi, i64 80
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !34 ; 2 uses
  %i.akw = lshr i32 %i.akv, 10
  %i.akx = and i32 %i.akw, 192
  %i.aky = or disjoint i32 %i.akr, %i.akx
  %i.akz = trunc i32 %i.akv to i16
  %i.ala = getelementptr i8, ptr %i.afn, i64 46
  store i16 %i.akz, ptr %i.ala, align 2, !tbaa !42
  %i.alb = getelementptr i8, ptr %i.afi, i64 84
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !34 ; 2 uses
  %i.ald = lshr i32 %i.alc, 12
  %i.ale = and i32 %i.ald, 48
  %i.alf = or disjoint i32 %i.aky, %i.ale
  %i.alg = trunc i32 %i.alc to i16
  %i.alh = getelementptr i8, ptr %i.afn, i64 48
  store i16 %i.alg, ptr %i.alh, align 2, !tbaa !42
  %i.ali = getelementptr i8, ptr %i.afi, i64 88
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !34 ; 2 uses
  %i.alk = lshr i32 %i.alj, 14
  %i.all = and i32 %i.alk, 12
  %i.alm = or i32 %i.alf, %i.all
  %i.aln = trunc i32 %i.alj to i16
  %i.alo = getelementptr i8, ptr %i.afn, i64 50
  store i16 %i.aln, ptr %i.alo, align 2, !tbaa !42
  %i.alp = getelementptr inbounds nuw i8, ptr %i.afi, i64 92
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !34 ; 2 uses
  %i.alr = lshr i32 %i.alq, 16
  %i.als = and i32 %i.alr, 3
  %i.alt = or i32 %i.alm, %i.als
  %i.alu = trunc i32 %i.alq to i16
  %i.alv = getelementptr i8, ptr %i.afn, i64 52
  store i16 %i.alu, ptr %i.alv, align 2, !tbaa !42
  %i.alw = trunc nuw i32 %i.alt to i16
  store i16 %i.alw, ptr %i.ajx, align 2, !tbaa !42
  %i.alx = getelementptr inbounds nuw i8, ptr %i.afi, i64 96
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !34 ; 2 uses
  %i.alz = lshr i32 %i.aly, 2
  %i.ama = and i32 %i.alz, 49152
  %i.amb = trunc i32 %i.aly to i16
  %i.amc = getelementptr i8, ptr %i.afn, i64 54
  %i.amd = getelementptr i8, ptr %i.afn, i64 56
  store i16 %i.amb, ptr %i.amd, align 2, !tbaa !42
  %i.ame = getelementptr i8, ptr %i.afi, i64 100
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !34 ; 2 uses
  %i.amg = lshr i32 %i.amf, 4
  %i.amh = and i32 %i.amg, 12288
  %i.ami = or disjoint i32 %i.amh, %i.ama
  %i.amj = trunc i32 %i.amf to i16
  %i.amk = getelementptr i8, ptr %i.afn, i64 58
  store i16 %i.amj, ptr %i.amk, align 2, !tbaa !42
  %i.aml = getelementptr i8, ptr %i.afi, i64 104
  %i.amm = load i32, ptr %i.aml, align 4, !tbaa !34 ; 2 uses
  %i.amn = lshr i32 %i.amm, 6
  %i.amo = and i32 %i.amn, 3072
  %i.amp = or disjoint i32 %i.ami, %i.amo
  %i.amq = trunc i32 %i.amm to i16
  %i.amr = getelementptr i8, ptr %i.afn, i64 60
  store i16 %i.amq, ptr %i.amr, align 2, !tbaa !42
  %i.ams = getelementptr i8, ptr %i.afi, i64 108
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !34 ; 2 uses
  %i.amu = lshr i32 %i.amt, 8
  %i.amv = and i32 %i.amu, 768
  %i.amw = or disjoint i32 %i.amp, %i.amv
  %i.amx = trunc i32 %i.amt to i16
  %i.amy = getelementptr i8, ptr %i.afn, i64 62
  store i16 %i.amx, ptr %i.amy, align 2, !tbaa !42
  %i.amz = getelementptr i8, ptr %i.afi, i64 112
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !34 ; 2 uses
  %i.anb = lshr i32 %i.ana, 10
  %i.anc = and i32 %i.anb, 192
  %i.and = or disjoint i32 %i.amw, %i.anc
  %i.ane = trunc i32 %i.ana to i16
  %i.anf = getelementptr i8, ptr %i.afn, i64 64
  store i16 %i.ane, ptr %i.anf, align 2, !tbaa !42
  %i.ang = getelementptr i8, ptr %i.afi, i64 116
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !34 ; 2 uses
  %i.ani = lshr i32 %i.anh, 12
  %i.anj = and i32 %i.ani, 48
  %i.ank = or disjoint i32 %i.and, %i.anj
  %i.anl = trunc i32 %i.anh to i16
  %i.anm = getelementptr i8, ptr %i.afn, i64 66
  store i16 %i.anl, ptr %i.anm, align 2, !tbaa !42
  %i.ann = getelementptr i8, ptr %i.afi, i64 120
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !34 ; 2 uses
  %i.anp = lshr i32 %i.ano, 14
  %i.anq = and i32 %i.anp, 12
  %i.anr = or i32 %i.ank, %i.anq
  %i.ans = trunc i32 %i.ano to i16
  %i.ant = getelementptr i8, ptr %i.afn, i64 68
  store i16 %i.ans, ptr %i.ant, align 2, !tbaa !42
  %i.anu = getelementptr inbounds nuw i8, ptr %i.afi, i64 124
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !34 ; 2 uses
  %i.anw = lshr i32 %i.anv, 16
  %i.anx = and i32 %i.anw, 3
  %i.any = or i32 %i.anr, %i.anx
  %i.anz = trunc i32 %i.anv to i16
  %i.aoa = getelementptr i8, ptr %i.afn, i64 70
  store i16 %i.anz, ptr %i.aoa, align 2, !tbaa !42
  %i.aob = trunc nuw i32 %i.any to i16
  store i16 %i.aob, ptr %i.amc, align 2, !tbaa !42
  %i.aoc = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull %i.afg, ptr noundef nonnull %i.afg, i32 noundef %.0250408.i.i.i) ; 2 uses
  %i.aod = icmp sgt i32 %i.aoc, -1
  br i1 %i.aod, label %bb.er, label %bb.en

bb.en:                                            ; preds = %.thread.i108.i.i
  %i.aoe = icmp eq i32 %.0250408.i.i.i, %i.acw
  br i1 %i.aoe, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i, label %.lr.ph.i.i109.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i335.i.i.i
  %i.aof = icmp samesign ugt i64 %indvars.iv.in.i.i110.i.i, 2
  br i1 %i.aof, label %.lr.ph.i.i109.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.lr.ph.i.i109.i.i.1:                              ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i
  %indvars.iv.i334.i.i.i.1 = add nsw i64 %indvars.iv.in.i.i110.i.i, -2 ; 3 uses
  %i.aog = sub nsw i64 %i.afh, %indvars.iv.i334.i.i.i.1
  %i.aoh = getelementptr inbounds [2 x i8], ptr %i.afg, i64 %i.aog
  %i.aoi = trunc nuw nsw i64 %indvars.iv.i334.i.i.i.1 to i32 ; 2 uses
  br label %.lr.ph.i.i335.i.i.i.1

.lr.ph.i.i335.i.i.i.1:                            ; preds = %bb.eo, %.lr.ph.i.i109.i.i.1
  %.010.i.i336.i.i.i.1 = phi i32 [ %i.aoo, %bb.eo ], [ %i.aoi, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %.069.i.i337.i.i.i.1 = phi ptr [ %i.aon, %bb.eo ], [ %i.afn, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %.078.i.i338.i.i.i.1 = phi ptr [ %i.aom, %bb.eo ], [ %i.aoh, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %i.aoj = load i16, ptr %.078.i.i338.i.i.i.1, align 2, !tbaa !42
  %i.aok = load i16, ptr %.069.i.i337.i.i.i.1, align 2, !tbaa !42
  %i.aol = icmp eq i16 %i.aoj, %i.aok
  br i1 %i.aol, label %bb.eo, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1: ; preds = %.lr.ph.i.i335.i.i.i.1
  %indvars.iv.next469.i.i.i.1 = add nsw i64 %indvars.iv468.i.i.i.a, -2
  %indvar.next.1 = add nuw nsw i64 %indvar, 2
  br label %.lr.ph.i.i109.i.i

bb.eo:                                            ; preds = %.lr.ph.i.i335.i.i.i.1
  %i.aom = getelementptr inbounds nuw i8, ptr %.078.i.i338.i.i.i.1, i64 2
  %i.aon = getelementptr inbounds nuw i8, ptr %.069.i.i337.i.i.i.1, i64 2
  %i.aoo = add nsw i32 %.010.i.i336.i.i.i.1, -1
  %i.aop = icmp sgt i32 %.010.i.i336.i.i.i.1, 1
  br i1 %i.aop, label %.lr.ph.i.i335.i.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit, !llvm.loop !5

.lr.ph.i.i109.i.i:                                ; preds = %bb.en, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1
  %indvar = phi i64 [ %indvar.next.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 0, %bb.en ] ; 3 uses
  %indvars.iv468.i.i.i.a = phi i64 [ %indvars.iv.next469.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 35, %bb.en ] ; 3 uses
  %indvars.iv.in.i.i110.i.i = phi i64 [ %indvars.iv.i334.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 36, %bb.en ] ; 4 uses
  %indvars.iv.i334.i.i.i = add nsw i64 %indvars.iv.in.i.i110.i.i, -1 ; 3 uses
  %i.aoq = sub nsw i64 %i.afh, %indvars.iv.i334.i.i.i
  %i.aor = getelementptr inbounds [2 x i8], ptr %i.afg, i64 %i.aoq
  %i.aos = trunc nuw nsw i64 %indvars.iv.i334.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i335.i.i.i

.lr.ph.i.i335.i.i.i:                              ; preds = %bb.ep, %.lr.ph.i.i109.i.i
  %.010.i.i336.i.i.i = phi i32 [ %i.aoy, %bb.ep ], [ %i.aos, %.lr.ph.i.i109.i.i ] ; 2 uses
  %.069.i.i337.i.i.i = phi ptr [ %i.aox, %bb.ep ], [ %i.afn, %.lr.ph.i.i109.i.i ] ; 2 uses
  %.078.i.i338.i.i.i = phi ptr [ %i.aow, %bb.ep ], [ %i.aor, %.lr.ph.i.i109.i.i ] ; 2 uses
  %i.aot = load i16, ptr %.078.i.i338.i.i.i, align 2, !tbaa !42
  %i.aou = load i16, ptr %.069.i.i337.i.i.i, align 2, !tbaa !42
  %i.aov = icmp eq i16 %i.aot, %i.aou
  br i1 %i.aov, label %bb.ep, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.ep:                                            ; preds = %.lr.ph.i.i335.i.i.i
  %i.aow = getelementptr inbounds nuw i8, ptr %.078.i.i338.i.i.i, i64 2
  %i.aox = getelementptr inbounds nuw i8, ptr %.069.i.i337.i.i.i, i64 2
  %i.aoy = add nsw i32 %.010.i.i336.i.i.i, -1
  %i.aoz = icmp sgt i32 %.010.i.i336.i.i.i, 1
  br i1 %i.aoz, label %.lr.ph.i.i335.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit: ; preds = %bb.eo
  %indvars.iv.next469.i.i.i.le = add nsw i64 %indvars.iv468.i.i.i.a, -1
  %indvar.next.le = or disjoint i64 %indvar, 1
  br label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.ep, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit
  %indvar.lcssa = phi i64 [ %indvar.next.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvar, %bb.ep ]
  %indvars.iv468.i.i.i.lcssa = phi i64 [ %indvars.iv.next469.i.i.i.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv468.i.i.i.a, %bb.ep ] ; 6 uses
  %indvars.iv.in.i.i110.i.i.lcssa = phi i64 [ %indvars.iv.i334.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv.in.i.i110.i.i, %bb.ep ]
  %.lcssa333 = phi i32 [ %i.aoi, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %i.aos, %bb.ep ]
  %i.apa = sub nsw i32 %.0250408.i.i.i, %.lcssa333 ; 2 uses
  %i.apb = icmp sgt i64 %indvars.iv.in.i.i110.i.i.lcssa, 1
  br i1 %i.apb, label %iter.check, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

iter.check:                                       ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i
  %i.apc = add i64 %indvar.lcssa, 1               ; 7 uses
  %min.iters.check269 = icmp ult i64 %i.apc, 4
  br i1 %min.iters.check269, label %.lr.ph.i112.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check270 = icmp ult i64 %i.apc, 16
  br i1 %min.iters.check270, label %vec.epilog.ph, label %vector.ph271

vector.ph271:                                     ; preds = %vector.main.loop.iter.check
  %i.apd = and i64 %i.apc, 12
  %n.vec272 = and i64 %i.apc, -16                 ; 5 uses
  %i.ape = add i64 %n.vec272, %i.afh              ; 2 uses
  %i.apf = add i64 %indvars.iv468.i.i.i.lcssa, %n.vec272
  %i.apg = getelementptr [2 x i8], ptr %i.afn, i64 %indvars.iv468.i.i.i.lcssa ; 2 uses
  %i.aph = getelementptr i8, ptr %i.apg, i64 16
  %wide.load275 = load <8 x i16>, ptr %i.apg, align 2, !tbaa !42
  %wide.load276 = load <8 x i16>, ptr %i.aph, align 2, !tbaa !42
  %i.api = getelementptr [2 x i8], ptr %i.afg, i64 %i.afh ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 16
  store <8 x i16> %wide.load275, ptr %i.api, align 2, !tbaa !42
  store <8 x i16> %wide.load276, ptr %i.apj, align 2, !tbaa !42
  %i.apk = icmp eq i64 %n.vec272, 16
  br i1 %i.apk, label %middle.block278, label %vector.body273.1

vector.body273.1:                                 ; preds = %vector.ph271
  %i.apl = getelementptr [2 x i8], ptr %i.afn, i64 %indvars.iv468.i.i.i.lcssa ; 2 uses
  %i.apm = getelementptr i8, ptr %i.apl, i64 32
  %i.apn = getelementptr i8, ptr %i.apl, i64 48
  %wide.load275.1 = load <8 x i16>, ptr %i.apm, align 2, !tbaa !42
  %wide.load276.1 = load <8 x i16>, ptr %i.apn, align 2, !tbaa !42
  %i.apo = getelementptr i8, ptr %i.afg, i64 32
  %i.app = getelementptr [2 x i8], ptr %i.apo, i64 %i.afh ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  store <8 x i16> %wide.load275.1, ptr %i.app, align 2, !tbaa !42
  store <8 x i16> %wide.load276.1, ptr %i.apq, align 2, !tbaa !42
  br label %middle.block278

middle.block278:                                  ; preds = %vector.body273.1, %vector.ph271
  %cmp.n279 = icmp eq i64 %i.apc, %n.vec272
  br i1 %cmp.n279, label %.loopexit375.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block278
  %min.epilog.iters.check = icmp eq i64 %i.apd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i112.i.i.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec272, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec282 = and i64 %i.apc, -4                  ; 4 uses
  %i.apr = add i64 %n.vec282, %i.afh              ; 2 uses
  %i.aps = add i64 %indvars.iv468.i.i.i.lcssa, %n.vec282
  %i.apt = getelementptr [2 x i8], ptr %i.afn, i64 %indvars.iv468.i.i.i.lcssa
  %invariant.gep504 = getelementptr [2 x i8], ptr %i.afg, i64 %i.afh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index283 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next285, %vec.epilog.vector.body ] ; 3 uses
  %i.apu = getelementptr [2 x i8], ptr %i.apt, i64 %index283
  %wide.load284 = load <4 x i16>, ptr %i.apu, align 2, !tbaa !42
  %gep505 = getelementptr [2 x i8], ptr %invariant.gep504, i64 %index283
  store <4 x i16> %wide.load284, ptr %gep505, align 2, !tbaa !42
  %index.next285 = add nuw i64 %index283, 4       ; 2 uses
  %i.apv = icmp eq i64 %index.next285, %n.vec282
  br i1 %i.apv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n286 = icmp eq i64 %i.apc, %n.vec282
  br i1 %cmp.n286, label %.loopexit375.loopexit.i.i.i, label %.lr.ph.i112.i.i.preheader

.lr.ph.i112.i.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv473.i.i.i.ph = phi i64 [ %i.afh, %iter.check ], [ %i.ape, %vec.epilog.iter.check ], [ %i.apr, %vec.epilog.middle.block ]
  %indvars.iv471.i.i.i.ph = phi i64 [ %indvars.iv468.i.i.i.lcssa, %iter.check ], [ %i.apf, %vec.epilog.iter.check ], [ %i.aps, %vec.epilog.middle.block ]
  br label %.lr.ph.i112.i.i

.lr.ph.i112.i.i:                                  ; preds = %.lr.ph.i112.i.i.preheader, %.lr.ph.i112.i.i
  %indvars.iv473.i.i.i = phi i64 [ %indvars.iv.next474.i.i.i, %.lr.ph.i112.i.i ], [ %indvars.iv473.i.i.i.ph, %.lr.ph.i112.i.i.preheader ] ; 2 uses
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i, %.lr.ph.i112.i.i ], [ %indvars.iv471.i.i.i.ph, %.lr.ph.i112.i.i.preheader ] ; 2 uses
  %indvars.iv.next472.i.i.i = add nuw nsw i64 %indvars.iv471.i.i.i, 1 ; 2 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %i.afn, i64 %indvars.iv471.i.i.i
  %i.apw = load i16, ptr %gep.i.i.i, align 2, !tbaa !42
  %indvars.iv.next474.i.i.i = add nsw i64 %indvars.iv473.i.i.i, 1 ; 2 uses
  %i.apx = getelementptr inbounds [2 x i8], ptr %i.afg, i64 %indvars.iv473.i.i.i
  store i16 %i.apw, ptr %i.apx, align 2, !tbaa !42
  %exitcond478.not.i.i.i = icmp eq i64 %indvars.iv.next472.i.i.i, 36
  br i1 %exitcond478.not.i.i.i, label %.loopexit375.loopexit.i.i.i, label %.lr.ph.i112.i.i, !llvm.loop !101

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, %bb.en
  %i.apy = phi i32 [ %i.apa, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.acw, %bb.en ], [ %.0250408.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ]
  %i.apz = add nsw i32 %.0250408.i.i.i, 36
  br label %.loopexit375.i.i.i

.loopexit375.loopexit.i.i.i:                      ; preds = %.lr.ph.i112.i.i, %vec.epilog.middle.block, %middle.block278
  %indvars.iv.next474.i.i.i.lcssa = phi i64 [ %i.apr, %vec.epilog.middle.block ], [ %i.ape, %middle.block278 ], [ %indvars.iv.next474.i.i.i, %.lr.ph.i112.i.i ]
  %i.aqa = trunc nsw i64 %indvars.iv.next474.i.i.i.lcssa to i32
  br label %.loopexit375.i.i.i

.loopexit375.i.i.i:                               ; preds = %.loopexit375.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i
  %i.aqb = phi i32 [ %i.apy, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.apa, %.loopexit375.loopexit.i.i.i ] ; 2 uses
  %.4254.i.i.i = phi i32 [ %i.apz, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.aqa, %.loopexit375.loopexit.i.i.i ] ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.afg, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %.4254.i.i.i)
  br i1 %.0273.lcssa.i.i.i, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.loopexit375.i.i.i
  %i.aqc = load ptr, ptr %i.add, align 8, !tbaa !31
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.aqc, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %.4254.i.i.i)
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.loopexit375.i.i.i, %.thread.i108.i.i
  %.5.i.i.i = phi i32 [ %.0250408.i.i.i, %.thread.i108.i.i ], [ %.4254.i.i.i, %bb.eq ], [ %.4254.i.i.i, %.loopexit375.i.i.i ]
  %.1247.in.i.i.i = phi i32 [ %i.aoc, %.thread.i108.i.i ], [ %i.aqb, %bb.eq ], [ %i.aqb, %.loopexit375.i.i.i ]
  %.1247.i.i.i = or i32 %.1247.in.i.i.i, 32768
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %78, %._crit_edge404.loopexit.i.i.i, %.thread362.i.i.i, %7, %bb.em
  %.5289360.i.i.i = phi i32 [ %.5289365.i.i.i, %._crit_edge404.loopexit.i.i.i ], [ %.4288406.i.i.i, %7 ], [ %.5289361.i.i.i.a, %bb.er ], [ %.5289365.i.i.i, %.thread362.i.i.i ], [ %.5289365.i.i.i, %78 ], [ %.4288406.i.i.i, %bb.em ] ; 2 uses
  %.6.i107.i.i = phi i32 [ %77, %._crit_edge404.loopexit.i.i.i ], [ %.0250408.i.i.i, %7 ], [ %.5.i.i.i, %bb.er ], [ %.0250408.i.i.i, %.thread362.i.i.i ], [ %77, %78 ], [ %.0250408.i.i.i, %bb.em ] ; 2 uses
  %.2248.i.i.i = phi i32 [ %49, %._crit_edge404.loopexit.i.i.i ], [ %10, %7 ], [ %.1247.i.i.i, %bb.er ], [ %14, %.thread362.i.i.i ], [ %49, %78 ], [ %i.aey, %bb.em ] ; 3 uses
  %i.aqd = load i32, ptr %i.yt, align 4, !tbaa !24 ; 2 uses
  %i.aqe = icmp slt i32 %i.aqd, 0
  %i.aqf = icmp sgt i32 %.5289360.i.i.i, -1
  %or.cond3.i.i.i = select i1 %i.aqe, i1 %i.aqf, i1 false
  br i1 %or.cond3.i.i.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 %.2248.i.i.i, ptr %i.yt, align 4, !tbaa !24
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.aqg = phi i32 [ %.2248.i.i.i, %bb.et ], [ %i.aqd, %bb.es ] ; 2 uses
  %i.aqh = trunc i32 %.2248.i.i.i to i16
  %indvars.iv.next488.i.i.i = add nuw nsw i64 %indvars.iv487.i.i.i, 1 ; 2 uses
  %i.aqi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv487.i.i.i
  store i16 %i.aqh, ptr %i.aqi, align 2, !tbaa !42
  %indvars.iv.next461.i.i.i = add nuw nsw i64 %indvars.iv460.i.i.i, 32 ; 2 uses
  %i.aqj = icmp samesign ult i64 %indvars.iv.next461.i.i.i, %i.aeu
  br i1 %i.aqj, label %bb.ek, label %._crit_edge414.loopexit.i.i.i, !llvm.loop !102

bb.ev:                                            ; preds = %._crit_edge414.i.i.i
  store i32 32767, ptr %i.yt, align 4, !tbaa !24
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %._crit_edge414.i.i.i
  %i.aqk = icmp sgt i32 %.0250.lcssa.i.i.i, 32798
  br i1 %i.aqk, label %bb.ex, label %.preheader.i98.i.i

.preheader.i98.i.i:                               ; preds = %bb.ew
  %i.aql = icmp sgt i32 %.0255.lcssa.i.i.i, 0
  br i1 %i.aql, label %.lr.ph427.i.i.i, label %.loopexit.i.i.i

.lr.ph427.i.i.i:                                  ; preds = %.preheader.i98.i.i
  %i.aqm = sext i32 %i.acw to i64
  %i.aqn = zext nneg i32 %i.yo to i64
  %.pre.i.i = load ptr, ptr %i.add, align 8, !tbaa !31
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 8, ptr %3, align 4, !tbaa !17
  br label %.loopexit.i.i.i

bb.ey:                                            ; preds = %bb.fe, %.lr.ph427.i.i.i
  %i.aqo = phi ptr [ %.pre.i.i, %.lr.ph427.i.i.i ], [ %i.asn, %bb.fe ] ; 6 uses
  %indvars.iv500.i.i.i = phi i64 [ %i.aqn, %.lr.ph427.i.i.i ], [ %indvars.iv.next501.i.i.i, %bb.fe ] ; 2 uses
  %.0232425.i.i.i = phi i32 [ 0, %.lr.ph427.i.i.i ], [ %i.asq, %bb.fe ] ; 6 uses
  %.0234423.i.i.i = phi i32 [ 32, %.lr.ph427.i.i.i ], [ %.1235371.i.i.i, %bb.fe ] ; 2 uses
  %.7422.i.i.i = phi i32 [ %.0250.lcssa.i.i.i, %.lr.ph427.i.i.i ], [ %.9.i.i.i, %bb.fe ] ; 10 uses
  %i.aqp = sub nsw i32 %.0255.lcssa.i.i.i, %.0232425.i.i.i ; 6 uses
  %.not304.i.i.i = icmp slt i32 %i.aqp, %.0234423.i.i.i
  br i1 %.not304.i.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aqq = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.aqo, ptr noundef nonnull %i.b, i32 noundef %.0232425.i.i.i)
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.aqr = sub i32 %.7422.i.i.i, %i.aqp           ; 2 uses
  %i.aqs = sext i32 %.0232425.i.i.i to i64
  %i.aqt = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.aqs
  %.not18.i.i.i.i = icmp sgt i32 %i.acw, %i.aqr
  br i1 %.not18.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i340.i.i.i

.lr.ph.i340.i.i.i:                                ; preds = %bb.fa
  %i.aqu = add i32 %i.aqr, 1
  br label %.lr.ph.i.preheader.us.i.i.i.i

.lr.ph.i.preheader.us.i.i.i.i:                    ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %.lr.ph.i340.i.i.i
  %indvars.iv.i342.i.i.i = phi i64 [ %i.aqm, %.lr.ph.i340.i.i.i ], [ %indvars.iv.next.i343.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 3 uses
  %i.aqv = getelementptr inbounds [2 x i8], ptr %i.aqo, i64 %indvars.iv.i342.i.i.i
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.fb, %.lr.ph.i.preheader.us.i.i.i.i
  %.010.i.us.i.i.i.i = phi i32 [ %i.arb, %bb.fb ], [ %i.aqp, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i = phi ptr [ %i.ara, %bb.fb ], [ %i.aqt, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i = phi ptr [ %i.aqz, %bb.fb ], [ %i.aqv, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %i.aqw = load i16, ptr %.078.i.us.i.i.i.i, align 2, !tbaa !42
  %i.aqx = load i16, ptr %.069.i.us.i.i.i.i, align 2, !tbaa !42
  %i.aqy = icmp eq i16 %i.aqw, %i.aqx
  br i1 %i.aqy, label %bb.fb, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.aqz = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i, i64 2
  %i.ara = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i, i64 2
  %i.arb = add nsw i32 %.010.i.us.i.i.i.i, -1
  %i.arc = icmp sgt i32 %.010.i.us.i.i.i.i, 1
  br i1 %i.arc, label %.lr.ph.i.us.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  %indvars.iv.next.i343.i.i.i = add nsw i64 %indvars.iv.i342.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i343.i.i.i to i32
  %exitcond.not.i.i100.i.i = icmp eq i32 %i.aqu, %lftr.wideiv.i.i.i.i
  br i1 %exitcond.not.i.i100.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i.preheader.us.i.i.i.i, !llvm.loop !103

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i: ; preds = %bb.fb
  %i.ard = trunc nsw i64 %indvars.iv.i342.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, %bb.ez
  %.1235.i.i.i = phi i32 [ %.0234423.i.i.i, %bb.ez ], [ %i.aqp, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.aqq, %bb.ez ], [ %i.ard, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.are = icmp sgt i32 %.0231.i.i.i, -1
  br i1 %i.are, label %bb.fe, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i, %bb.fa
  %.1235370.i.i.i = phi i32 [ %.1235.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.aqp, %bb.fa ], [ %i.aqp, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 7 uses
  %i.arf = icmp eq i32 %.7422.i.i.i, %i.acw
  br i1 %i.arf, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %i.arg = sext i32 %.0232425.i.i.i to i64
  %i.arh = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.arg
  %i.ari = icmp sgt i32 %.1235370.i.i.i, 1
  br i1 %i.ari, label %.lr.ph.preheader.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i: ; preds = %bb.fc
  %.014.i.i.i.i = add nsw i32 %.1235370.i.i.i, -1 ; 2 uses
  %i.arj = sub nsw i32 %.7422.i.i.i, %.014.i.i.i.i
  br label %.lr.ph419.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fc
  %i.ark = zext nneg i32 %.1235370.i.i.i to i64
  %i.arl = sext i32 %.7422.i.i.i to i64
  br label %.lr.ph.i345.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i: ; preds = %.lr.ph.i.i348.i.i.i
  %i.arm = icmp sgt i64 %indvars.iv.in.i346.i.i.i, 2
  br i1 %i.arm, label %.lr.ph.i345.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, !llvm.loop !104

.lr.ph.i345.i.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.in.i346.i.i.i = phi i64 [ %i.ark, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.i347.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i ] ; 2 uses
  %indvars.iv.i347.i.i.i = add nsw i64 %indvars.iv.in.i346.i.i.i, -1 ; 3 uses
  %i.arn = sub nsw i64 %i.arl, %indvars.iv.i347.i.i.i
  %i.aro = getelementptr inbounds [2 x i8], ptr %i.aqo, i64 %i.arn
  %i.arp = trunc nuw nsw i64 %indvars.iv.i347.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i348.i.i.i

.lr.ph.i.i348.i.i.i:                              ; preds = %bb.fd, %.lr.ph.i345.i.i.i
  %.010.i.i349.i.i.i = phi i32 [ %i.arv, %bb.fd ], [ %i.arp, %.lr.ph.i345.i.i.i ] ; 2 uses
  %.069.i.i350.i.i.i = phi ptr [ %i.aru, %bb.fd ], [ %i.arh, %.lr.ph.i345.i.i.i ] ; 2 uses
  %.078.i.i351.i.i.i = phi ptr [ %i.art, %bb.fd ], [ %i.aro, %.lr.ph.i345.i.i.i ] ; 2 uses
  %i.arq = load i16, ptr %.078.i.i351.i.i.i, align 2, !tbaa !42
  %i.arr = load i16, ptr %.069.i.i350.i.i.i, align 2, !tbaa !42
  %i.ars = icmp eq i16 %i.arq, %i.arr
  br i1 %i.ars, label %bb.fd, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i

bb.fd:                                            ; preds = %.lr.ph.i.i348.i.i.i
  %i.art = getelementptr inbounds nuw i8, ptr %.078.i.i351.i.i.i, i64 2
  %i.aru = getelementptr inbounds nuw i8, ptr %.069.i.i350.i.i.i, i64 2
  %i.arv = add nsw i32 %.010.i.i349.i.i.i, -1
  %i.arw = icmp sgt i32 %.010.i.i349.i.i.i, 1
  br i1 %i.arw, label %.lr.ph.i.i348.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i, %bb.fd, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %.1.i99.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i ], [ %i.arp, %bb.fd ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i ] ; 3 uses
  %i.arx = sub nsw i32 %.7422.i.i.i, %.1.i99.i.i  ; 2 uses
  %i.ary = icmp slt i32 %.1.i99.i.i, %.1235370.i.i.i
  br i1 %i.ary, label %.lr.ph419.i.i.i, label %._crit_edge420.i.i.i

.lr.ph419.i.i.i:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i
  %i.arz = phi i32 [ %i.arj, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i ], [ %i.arx, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ]
  %.1523.i.i.i = phi i32 [ %.014.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i ], [ %.1.i99.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ] ; 3 uses
  %i.asa = sext i32 %.7422.i.i.i to i64
  %i.asb = shl nsw i64 %i.asa, 1
  %scevgep.i.i.i = getelementptr i8, ptr %i.aqo, i64 %i.asb
  %i.asc = add i32 %.1523.i.i.i, %.0232425.i.i.i
  %i.asd = sext i32 %i.asc to i64
  %i.ase = shl nsw i64 %i.asd, 1
  %scevgep490.i.i.i = getelementptr i8, ptr %i.b, i64 %i.ase
  %i.asf = xor i32 %.1523.i.i.i, -1
  %i.asg = add i32 %.1235370.i.i.i, %i.asf
  %i.ash = zext i32 %i.asg to i64
  %i.asi = shl nuw nsw i64 %i.ash, 1
  %i.asj = add nuw nsw i64 %i.asi, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 2 dereferenceable(1) %scevgep490.i.i.i, i64 %i.asj, i1 false), !tbaa !42
  %i.ask = add i32 %.1235370.i.i.i, %.7422.i.i.i
  %i.asl = sub i32 %i.ask, %.1523.i.i.i
  br label %._crit_edge420.i.i.i

._crit_edge420.i.i.i:                             ; preds = %.lr.ph419.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i
  %i.asm = phi i32 [ %i.arx, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ], [ %i.arz, %.lr.ph419.i.i.i ]
  %.8.lcssa.i.i.i = phi i32 [ %.7422.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ], [ %i.asl, %.lr.ph419.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.aqo, i32 noundef %i.acw, i32 noundef %.7422.i.i.i, i32 noundef %.8.lcssa.i.i.i)
  %.pre503.i.i.i = load ptr, ptr %i.add, align 8, !tbaa !31
  br label %bb.fe

bb.fe:                                            ; preds = %._crit_edge420.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i
  %i.asn = phi ptr [ %i.aqo, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.pre503.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.1235371.i.i.i = phi i32 [ %.1235.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.1235370.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.9.i.i.i = phi i32 [ %.7422.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.8.lcssa.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.0231.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.asm, %._crit_edge420.i.i.i ]
  %i.aso = trunc i32 %.0.i.i.i to i16
  %indvars.iv.next501.i.i.i = add nuw nsw i64 %indvars.iv500.i.i.i, 1
  %i.asp = getelementptr inbounds nuw [2 x i8], ptr %i.asn, i64 %indvars.iv500.i.i.i
  store i16 %i.aso, ptr %i.asp, align 2, !tbaa !42
  %i.asq = add nsw i32 %.1235371.i.i.i, %.0232425.i.i.i ; 2 uses
  %i.asr = icmp slt i32 %i.asq, %.0255.lcssa.i.i.i
  br i1 %i.asr, label %bb.ey, label %.loopexit.i.i.i, !llvm.loop !105

.loopexit.i.i.i:                                  ; preds = %bb.fe, %bb.ex, %.preheader.i98.i.i
end_hunk_0
