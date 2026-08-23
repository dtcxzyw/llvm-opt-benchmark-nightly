Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/umutablecptrie?download=true
inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
bb.dn:                                            ; preds = %bb.dm
  %i.adj = trunc nuw nsw i64 %indvars.iv458.i.i.i to i32
  %i.adk = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zv, i32 noundef %i.adj) ; 2 uses
  %i.adl = icmp sgt i32 %i.adk, -1
  %i.adm = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv458.i.i.i ; 2 uses
  br i1 %i.adl, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.adm, align 1, !tbaa !33
  store i32 %i.adk, ptr %i.zy, align 4, !tbaa !26
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  store i8 2, ptr %i.adm, align 1, !tbaa !33
  %i.adn = add nsw i32 %.0276394.i.i.i, 32
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.ado = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv458.i.i.i
  store i8 3, ptr %i.ado, align 1, !tbaa !33
  %i.adp = add nsw i32 %.0276394.i.i.i, 36
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk
  %.3287.i.i.i = phi i32 [ 0, %bb.dl ], [ %.2286393.i.i.i, %bb.dk ], [ %.2286393.i.i.i, %bb.dq ], [ %.2286393.i.i.i, %bb.dp ], [ %.2286393.i.i.i, %bb.do ]
  %.3279.i.i.i = phi i32 [ %.1277.i.i.i, %bb.dl ], [ %.0276394.i.i.i, %bb.dk ], [ %i.adp, %bb.dq ], [ %i.adn, %bb.dp ], [ %.0276394.i.i.i, %bb.do ] ; 2 uses
  %.2275.i.i.i = phi i1 [ %.1274.i.i.i, %bb.dl ], [ %.0273395.i.i.i, %bb.dk ], [ true, %bb.dq ], [ %.0273395.i.i.i, %bb.dp ], [ %.0273395.i.i.i, %bb.do ] ; 2 uses
  %i.adq = icmp samesign ult i64 %i.acr, %sext.i.i
  br i1 %i.adq, label %.preheader376.i.i.i, label %._crit_edge.i95.i.i, !llvm.loop !100

bb.ds:                                            ; preds = %.noexc115.i.i
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.fq

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
  store i32 %.sink536.i.i.i, ptr %i.zo, align 8, !tbaa !73
  store i32 %.sink.i97.i.i, ptr %i.zp, align 4, !tbaa !75
  %i.adw = load i32, ptr %i.nx, align 8, !tbaa !77
  %i.adx = icmp sgt i32 %.0.i317.i.i.i, %i.adw
  %.pre.i318.i.i.i = load ptr, ptr %6, align 8, !tbaa !76 ; 2 uses
  br i1 %i.adx, label %bb.dx, label %._crit_edge.i319.i.i.i

._crit_edge.i319.i.i.i:                           ; preds = %bb.dw
  %.pre13.i320.i.i.i = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %.pre14.i321.i.i.i = zext nneg i32 %.pre13.i320.i.i.i to i64
  br label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @uprv_free_78(ptr noundef %.pre.i318.i.i.i)
          to label %.noexc116.i.i unwind label %bb.fr

.noexc116.i.i:                                    ; preds = %bb.dx
  %i.ady = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %i.adz = zext nneg i32 %i.ady to i64            ; 2 uses
  %i.aea = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.adz) #14
          to label %.noexc117.i.i unwind label %bb.fr ; 3 uses

.noexc117.i.i:                                    ; preds = %.noexc116.i.i
  store ptr %i.aea, ptr %6, align 8, !tbaa !76
  %i.aeb = icmp eq ptr %i.aea, null
  br i1 %i.aeb, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %.noexc117.i.i
  store i32 %.0.i317.i.i.i, ptr %i.nx, align 8, !tbaa !77
  br label %bb.dz

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i: ; preds = %.noexc117.i.i
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.fq

bb.dz:                                            ; preds = %bb.dy, %._crit_edge.i319.i.i.i
  %.pre-phi15.i322.i.i.i = phi i64 [ %.pre14.i321.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.adz, %bb.dy ]
  %i.aec = phi ptr [ %.pre.i318.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.aea, %bb.dy ]
  store i32 %.0.i317.i.i.i, ptr %i.oc, align 4, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aec, i8 0, i64 %.pre-phi15.i322.i.i.i, i1 false)
  store i32 32, ptr %i.od, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  br i1 %.0273.lcssa.i.i.i, label %bb.ea, label %bb.ej

bb.ea:                                            ; preds = %bb.dz
  %i.aed = icmp slt i32 %i.acy, 4130
  br i1 %i.aed, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aee = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.aee, align 8, !tbaa !73
  %i.aef = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4095, ptr %i.aef, align 4, !tbaa !75
  br label %bb.eh

bb.ec:                                            ; preds = %bb.ea
  %i.aeg = icmp samesign ult i32 %i.acy, 32802
  %i.aeh = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  br i1 %i.aeg, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aei = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 15, ptr %i.aei, align 8, !tbaa !73
  store i32 32767, ptr %i.aeh, align 4, !tbaa !75
  br label %bb.eh

bb.ee:                                            ; preds = %bb.ec
  %i.aej = icmp samesign ult i32 %i.acy, 131106
  %i.aek = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aej, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 17, ptr %i.aek, align 8, !tbaa !73
  store i32 131071, ptr %i.aeh, align 4, !tbaa !75
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  store i32 21, ptr %i.aek, align 8, !tbaa !73
  store i32 2097151, ptr %i.aeh, align 4, !tbaa !75
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
  store ptr %i.aeo, ptr %4, align 8, !tbaa !76
  %i.aep = icmp eq ptr %i.aeo, null
  br i1 %i.aep, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 %.0.i325.i.i.i, ptr %i.ael, align 8, !tbaa !77
  %i.aeq = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.0.i325.i.i.i, ptr %i.aeq, align 4, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aeo, i8 0, i64 %i.aen, i1 false)
  %i.aer = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 36, ptr %i.aer, align 8, !tbaa !79
  br label %bb.ej

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.fn

bb.ei:                                            ; preds = %.noexc.i.i.i, %bb.eh
  %i.aes = landingpad { ptr, i32 }
          cleanup
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i unwind label %bb.fp

bb.ej:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.pre.i.i.i = load i32, ptr %i.yt, align 4, !tbaa !16 ; 3 uses
  br i1 %i.zt, label %.lr.ph413.i.i.i, label %._crit_edge414.i.i.i

.lr.ph413.i.i.i:                                  ; preds = %bb.ej
  %i.aet = zext nneg i32 %i.zq to i64
  %i.aeu = zext nneg i32 %i.zs to i64
  %.pre246.i.i = zext nneg i32 %i.acw to i64
  br label %bb.ek

._crit_edge414.loopexit.i.i.i:                    ; preds = %bb.fc
  %i.aev = trunc nuw nsw i64 %indvars.iv.next488.i.i.i to i32
  br label %._crit_edge414.i.i.i

._crit_edge414.i.i.i:                             ; preds = %._crit_edge414.loopexit.i.i.i, %bb.ej
  %i.aew = phi i32 [ %.pre.i.i.i, %bb.ej ], [ %i.asr, %._crit_edge414.loopexit.i.i.i ]
  %.0255.lcssa.i.i.i = phi i32 [ 0, %bb.ej ], [ %i.aev, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %.0250.lcssa.i.i.i = phi i32 [ %i.acw, %bb.ej ], [ %.6.i107.i.i, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %i.aex = icmp slt i32 %i.aew, 0
  br i1 %i.aex, label %bb.fd, label %bb.fe

bb.ek:                                            ; preds = %bb.fc, %.lr.ph413.i.i.i
  %i.aey = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %i.asr, %bb.fc ]
  %indvars.iv487.i.i.i = phi i64 [ 0, %.lr.ph413.i.i.i ], [ %indvars.iv.next488.i.i.i, %bb.fc ] ; 2 uses
  %indvars.iv460.i.i.i = phi i64 [ %i.aet, %.lr.ph413.i.i.i ], [ %indvars.iv.next461.i.i.i, %bb.fc ] ; 7 uses
  %.0250408.i.i.i = phi i32 [ %i.acw, %.lr.ph413.i.i.i ], [ %.6.i107.i.i, %bb.fc ] ; 18 uses
  %.4288406.i.i.i = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %.5289360.i.i.i, %bb.fc ] ; 5 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv460.i.i.i
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !33 ; 2 uses
  %i.afb = icmp eq i8 %i.afa, 0
  %i.afc = icmp slt i32 %.4288406.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.afb, i1 %i.afc, i1 false
  br i1 %or.cond.i.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.afd = load i32, ptr %i.yn, align 8, !tbaa !17
  %i.afe = icmp slt i32 %i.afd, 65536
  br i1 %i.afe, label %.thread362.i.i.i, label %.thread.i108.i.i

bb.em:                                            ; preds = %bb.ek
  switch i8 %i.afa, label %.thread.i108.i.i [
    i8 0, label %bb.fa
    i8 1, label %bb.en
    i8 2, label %.thread362.i.i.i
  ]

bb.en:                                            ; preds = %bb.em
  %i.aff = load ptr, ptr %0, align 8, !tbaa !10
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv460.i.i.i
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !26
  br label %bb.fa

.thread362.i.i.i:                                 ; preds = %bb.em, %bb.el
  %.5289365.i.i.i = phi i32 [ %.4288406.i.i.i, %bb.em ], [ 0, %bb.el ] ; 3 uses
  %i.afi = load ptr, ptr %i.add, align 8, !tbaa !23 ; 6 uses
  %i.afj = load ptr, ptr %0, align 8, !tbaa !10   ; 3 uses
  %i.afk = trunc nuw nsw i64 %indvars.iv460.i.i.i to i32
  %i.afl = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.afi, ptr noundef %i.afj, i32 noundef %i.afk) ; 2 uses
  %i.afm = icmp sgt i32 %i.afl, -1
  br i1 %i.afm, label %bb.fa, label %bb.eo

bb.eo:                                            ; preds = %.thread362.i.i.i
  %i.afn = icmp eq i32 %.0250408.i.i.i, %i.acw
  br i1 %i.afn, label %.lr.ph403.preheader.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv460.i.i.i ; 2 uses
  %i.afp = sext i32 %.0250408.i.i.i to i64        ; 4 uses
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1, %bb.ep
  %indvars.iv.i.i101.i.i = phi i64 [ 31, %bb.ep ], [ %indvars.iv.next.i.i106.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1 ] ; 6 uses
  %i.afq = sub nsw i64 %i.afp, %indvars.iv.i.i101.i.i
  %i.afr = getelementptr inbounds [2 x i8], ptr %i.afi, i64 %i.afq
  %i.afs = trunc nuw nsw i64 %indvars.iv.i.i101.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i102.i.i

.lr.ph.i.i.i102.i.i:                              ; preds = %bb.er, %bb.eq
  %.010.i.i.i103.i.i = phi i32 [ %i.afz, %bb.er ], [ %i.afs, %bb.eq ] ; 2 uses
  %.069.i.i.i104.i.i = phi ptr [ %i.afy, %bb.er ], [ %i.afo, %bb.eq ] ; 2 uses
  %.078.i.i.i105.i.i = phi ptr [ %i.afx, %bb.er ], [ %i.afr, %bb.eq ] ; 2 uses
  %i.aft = load i16, ptr %.078.i.i.i105.i.i, align 2, !tbaa !35
  %i.afu = zext i16 %i.aft to i32
  %i.afv = load i32, ptr %.069.i.i.i104.i.i, align 4, !tbaa !26
  %i.afw = icmp eq i32 %i.afv, %i.afu
  br i1 %i.afw, label %bb.er, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i

bb.er:                                            ; preds = %.lr.ph.i.i.i102.i.i
  %i.afx = getelementptr inbounds nuw i8, ptr %.078.i.i.i105.i.i, i64 2
  %i.afy = getelementptr inbounds nuw i8, ptr %.069.i.i.i104.i.i, i64 4
  %i.afz = add nsw i32 %.010.i.i.i103.i.i, -1
  %i.aga = icmp sgt i32 %.010.i.i.i103.i.i, 1
  br i1 %i.aga, label %.lr.ph.i.i.i102.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !101

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i102.i.i
  %indvars.iv.next.i.i106.i.i = add nsw i64 %indvars.iv.i.i101.i.i, -1 ; 3 uses
  %i.agb = icmp samesign ugt i64 %indvars.iv.i.i101.i.i, 1
  br i1 %i.agb, label %bb.es, label %.lr.ph403.preheader.i.i.i

bb.es:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i
  %i.agc = sub nsw i64 %i.afp, %indvars.iv.next.i.i106.i.i
  %i.agd = getelementptr inbounds [2 x i8], ptr %i.afi, i64 %i.agc
  %i.age = trunc nuw nsw i64 %indvars.iv.next.i.i106.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i102.i.i.1

.lr.ph.i.i.i102.i.i.1:                            ; preds = %bb.et, %bb.es
  %.010.i.i.i103.i.i.1 = phi i32 [ %i.agl, %bb.et ], [ %i.age, %bb.es ] ; 2 uses
  %.069.i.i.i104.i.i.1 = phi ptr [ %i.agk, %bb.et ], [ %i.afo, %bb.es ] ; 2 uses
  %.078.i.i.i105.i.i.1 = phi ptr [ %i.agj, %bb.et ], [ %i.agd, %bb.es ] ; 2 uses
  %i.agf = load i16, ptr %.078.i.i.i105.i.i.1, align 2, !tbaa !35
  %i.agg = zext i16 %i.agf to i32
  %i.agh = load i32, ptr %.069.i.i.i104.i.i.1, align 4, !tbaa !26
  %i.agi = icmp eq i32 %i.agh, %i.agg
  br i1 %i.agi, label %bb.et, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i102.i.i.1
  %indvars.iv.next.i.i106.i.i.1 = add nsw i64 %indvars.iv.i.i101.i.i, -2
  br label %bb.eq

bb.et:                                            ; preds = %.lr.ph.i.i.i102.i.i.1
  %i.agj = getelementptr inbounds nuw i8, ptr %.078.i.i.i105.i.i.1, i64 2
  %i.agk = getelementptr inbounds nuw i8, ptr %.069.i.i.i104.i.i.1, i64 4
  %i.agl = add nsw i32 %.010.i.i.i103.i.i.1, -1
  %i.agm = icmp sgt i32 %.010.i.i.i103.i.i.1, 1
  br i1 %i.agm, label %.lr.ph.i.i.i102.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !101

_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.er, %bb.et
  %indvars.iv.i.i101.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i106.i.i, %bb.et ], [ %indvars.iv.i.i101.i.i, %bb.er ]
  %.lcssa339 = phi i32 [ %i.age, %bb.et ], [ %i.afs, %bb.er ]
  %i.agn = sub nsw i32 %.0250408.i.i.i, %.lcssa339
  br label %.lr.ph403.preheader.i.i.i

.lr.ph403.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, %bb.eo
  %.pre-phi.i.i = phi i64 [ %.pre246.i.i, %bb.eo ], [ %i.afp, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.afp, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 4 uses
  %i.ago = phi i32 [ %i.acw, %bb.eo ], [ %i.agn, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %.0250408.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 2 uses
  %.0243521.i.i.i = phi i64 [ 0, %bb.eo ], [ %indvars.iv.i.i101.i.i.lcssa, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ] ; 7 uses
  %invariant.gep534.i.i.i = getelementptr [4 x i8], ptr %i.afj, i64 %indvars.iv460.i.i.i ; 2 uses
  %i.agp = add i64 %.0243521.i.i.i, 1
  %i.agq = and i64 %i.agp, 4294967295
  %i.agr = sub nsw i64 33, %i.agq                 ; 3 uses
  %min.iters.check256 = icmp ult i64 %i.agr, 12
  br i1 %min.iters.check256, label %.lr.ph403.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph403.preheader.i.i.i
  %i.ags = trunc i64 %.0243521.i.i.i to i32
  %i.agt = add i64 %.0243521.i.i.i, 1
  %i.agu = and i64 %i.agt, 4294967295
  %i.agv = sub nsw i64 32, %i.agu                 ; 2 uses
  %i.agw = trunc i64 %i.agv to i32
  %i.agx = sub i32 -2, %i.ags
  %i.agy = icmp ult i32 %i.agx, %i.agw
  %i.agz = icmp ugt i64 %i.agv, 4294967295
  %i.aha = or i1 %i.agy, %i.agz
  br i1 %i.aha, label %.lr.ph403.i.i.i.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %vector.scevcheck
  %n.vec258 = and i64 %i.agr, -8                  ; 4 uses
  %i.ahb = add nsw i64 %.pre-phi.i.i, %n.vec258   ; 2 uses
  %i.ahc = add i64 %.0243521.i.i.i, %n.vec258
  %i.ahd = getelementptr [4 x i8], ptr %invariant.gep534.i.i.i, i64 %.0243521.i.i.i
  %i.ahe = getelementptr [2 x i8], ptr %i.afi, i64 %.pre-phi.i.i
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next263, %vector.body259 ] ; 3 uses
  %i.ahf = getelementptr [4 x i8], ptr %i.ahd, i64 %index260 ; 2 uses
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 16
  %wide.load261 = load <4 x i32>, ptr %i.ahf, align 4, !tbaa !26
  %wide.load262 = load <4 x i32>, ptr %i.ahg, align 4, !tbaa !26
  %i.ahh = trunc <4 x i32> %wide.load261 to <4 x i16>
  %i.ahi = trunc <4 x i32> %wide.load262 to <4 x i16>
  %i.ahj = getelementptr [2 x i8], ptr %i.ahe, i64 %index260 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  store <4 x i16> %i.ahh, ptr %i.ahj, align 2, !tbaa !35
  store <4 x i16> %i.ahi, ptr %i.ahk, align 2, !tbaa !35
  %index.next263 = add nuw i64 %index260, 8       ; 2 uses
  %i.ahl = icmp eq i64 %index.next263, %n.vec258
  br i1 %i.ahl, label %middle.block264, label %vector.body259, !llvm.loop !102

middle.block264:                                  ; preds = %vector.body259
  %cmp.n265 = icmp eq i64 %i.agr, %n.vec258
  br i1 %cmp.n265, label %._crit_edge404.i.i.i, label %.lr.ph403.i.i.i.preheader

.lr.ph403.i.i.i.preheader:                        ; preds = %vector.scevcheck, %.lr.ph403.preheader.i.i.i, %middle.block264
  %indvars.iv481.i.i.i.ph = phi i64 [ %.pre-phi.i.i, %vector.scevcheck ], [ %.pre-phi.i.i, %.lr.ph403.preheader.i.i.i ], [ %i.ahb, %middle.block264 ]
  %indvars.iv479.i.i.i.ph = phi i64 [ %.0243521.i.i.i, %vector.scevcheck ], [ %.0243521.i.i.i, %.lr.ph403.preheader.i.i.i ], [ %i.ahc, %middle.block264 ]
  br label %.lr.ph403.i.i.i

.lr.ph403.i.i.i:                                  ; preds = %.lr.ph403.i.i.i.preheader, %.lr.ph403.i.i.i
  %indvars.iv481.i.i.i = phi i64 [ %indvars.iv.next482.i.i.i, %.lr.ph403.i.i.i ], [ %indvars.iv481.i.i.i.ph, %.lr.ph403.i.i.i.preheader ] ; 2 uses
  %indvars.iv479.i.i.i = phi i64 [ %indvars.iv.next480.i.i.i, %.lr.ph403.i.i.i ], [ %indvars.iv479.i.i.i.ph, %.lr.ph403.i.i.i.preheader ] ; 2 uses
  %indvars.iv.next480.i.i.i = add nsw i64 %indvars.iv479.i.i.i, 1 ; 2 uses
  %gep535.i.i.i = getelementptr [4 x i8], ptr %invariant.gep534.i.i.i, i64 %indvars.iv479.i.i.i
  %i.ahm = load i32, ptr %gep535.i.i.i, align 4, !tbaa !26
  %i.ahn = trunc i32 %i.ahm to i16
  %indvars.iv.next482.i.i.i = add nsw i64 %indvars.iv481.i.i.i, 1 ; 2 uses
  %i.aho = getelementptr inbounds [2 x i8], ptr %i.afi, i64 %indvars.iv481.i.i.i
  store i16 %i.ahn, ptr %i.aho, align 2, !tbaa !35
  %i.ahp = and i64 %indvars.iv.next480.i.i.i, 4294967295
  %exitcond486.not.i.i.i = icmp eq i64 %i.ahp, 32
  br i1 %exitcond486.not.i.i.i, label %._crit_edge404.i.i.i, label %.lr.ph403.i.i.i, !llvm.loop !103

._crit_edge404.i.i.i:                             ; preds = %.lr.ph403.i.i.i, %middle.block264
  %indvars.iv.next482.i.i.i.lcssa = phi i64 [ %i.ahb, %middle.block264 ], [ %indvars.iv.next482.i.i.i, %.lr.ph403.i.i.i ]
  %7 = trunc nsw i64 %indvars.iv.next482.i.i.i.lcssa to i32 ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.afi, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %7)
  br i1 %.0273.lcssa.i.i.i, label %bb.eu, label %bb.fa

bb.eu:                                            ; preds = %._crit_edge404.i.i.i
  %i.ahq = load ptr, ptr %i.add, align 8, !tbaa !23
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ahq, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %7)
  br label %bb.fa

.thread.i108.i.i:                                 ; preds = %bb.em, %bb.el
  %.5289361.i.i.i = phi i32 [ %.4288406.i.i.i, %bb.em ], [ 0, %bb.el ]
  %i.ahr = load ptr, ptr %0, align 8, !tbaa !10
  %i.ahs = load ptr, ptr %i.add, align 8, !tbaa !23 ; 10 uses
  %i.aht = sext i32 %.0250408.i.i.i to i64        ; 9 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %indvars.iv460.i.i.i ; 32 uses
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !26 ; 2 uses
  %i.ahw = lshr i32 %i.ahv, 2
  %i.ahx = and i32 %i.ahw, 49152
  %i.ahy = trunc i32 %i.ahv to i16
  %i.ahz = getelementptr [2 x i8], ptr %i.ahs, i64 %i.aht ; 42 uses
  %i.aia = getelementptr i8, ptr %i.ahz, i64 2
  store i16 %i.ahy, ptr %i.aia, align 2, !tbaa !35
  %i.aib = getelementptr i8, ptr %i.ahu, i64 4
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !26 ; 2 uses
  %i.aid = lshr i32 %i.aic, 4
  %i.aie = and i32 %i.aid, 12288
  %i.aif = or disjoint i32 %i.aie, %i.ahx
  %i.aig = trunc i32 %i.aic to i16
  %i.aih = getelementptr i8, ptr %i.ahz, i64 4
  store i16 %i.aig, ptr %i.aih, align 2, !tbaa !35
  %i.aii = getelementptr i8, ptr %i.ahu, i64 8
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !26 ; 2 uses
  %i.aik = lshr i32 %i.aij, 6
  %i.ail = and i32 %i.aik, 3072
  %i.aim = or disjoint i32 %i.aif, %i.ail
  %i.ain = trunc i32 %i.aij to i16
  %i.aio = getelementptr i8, ptr %i.ahz, i64 6
  store i16 %i.ain, ptr %i.aio, align 2, !tbaa !35
  %i.aip = getelementptr i8, ptr %i.ahu, i64 12
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !26 ; 2 uses
  %i.air = lshr i32 %i.aiq, 8
  %i.ais = and i32 %i.air, 768
  %i.ait = or disjoint i32 %i.aim, %i.ais
  %i.aiu = trunc i32 %i.aiq to i16
  %i.aiv = getelementptr i8, ptr %i.ahz, i64 8
  store i16 %i.aiu, ptr %i.aiv, align 2, !tbaa !35
  %i.aiw = getelementptr i8, ptr %i.ahu, i64 16
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !26 ; 2 uses
  %i.aiy = lshr i32 %i.aix, 10
  %i.aiz = and i32 %i.aiy, 192
  %i.aja = or disjoint i32 %i.ait, %i.aiz
  %i.ajb = trunc i32 %i.aix to i16
  %i.ajc = getelementptr i8, ptr %i.ahz, i64 10
  store i16 %i.ajb, ptr %i.ajc, align 2, !tbaa !35
  %i.ajd = getelementptr i8, ptr %i.ahu, i64 20
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !26 ; 2 uses
  %i.ajf = lshr i32 %i.aje, 12
  %i.ajg = and i32 %i.ajf, 48
  %i.ajh = or disjoint i32 %i.aja, %i.ajg
  %i.aji = trunc i32 %i.aje to i16
  %i.ajj = getelementptr i8, ptr %i.ahz, i64 12
  store i16 %i.aji, ptr %i.ajj, align 2, !tbaa !35
  %i.ajk = getelementptr i8, ptr %i.ahu, i64 24
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !26 ; 2 uses
  %i.ajm = lshr i32 %i.ajl, 14
  %i.ajn = and i32 %i.ajm, 12
  %i.ajo = or i32 %i.ajh, %i.ajn
  %i.ajp = trunc i32 %i.ajl to i16
  %i.ajq = getelementptr i8, ptr %i.ahz, i64 14
  store i16 %i.ajp, ptr %i.ajq, align 2, !tbaa !35
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ahu, i64 28
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !26 ; 2 uses
  %i.ajt = lshr i32 %i.ajs, 16
  %i.aju = and i32 %i.ajt, 3
  %i.ajv = or i32 %i.ajo, %i.aju
  %i.ajw = trunc i32 %i.ajs to i16
  %i.ajx = getelementptr i8, ptr %i.ahz, i64 16
  store i16 %i.ajw, ptr %i.ajx, align 2, !tbaa !35
  %i.ajy = trunc nuw i32 %i.ajv to i16
  store i16 %i.ajy, ptr %i.ahz, align 2, !tbaa !35
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ahu, i64 32
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !26 ; 2 uses
  %i.akb = lshr i32 %i.aka, 2
  %i.akc = and i32 %i.akb, 49152
  %i.akd = trunc i32 %i.aka to i16
  %i.ake = getelementptr i8, ptr %i.ahz, i64 18
  %i.akf = getelementptr i8, ptr %i.ahz, i64 20
  store i16 %i.akd, ptr %i.akf, align 2, !tbaa !35
  %i.akg = getelementptr i8, ptr %i.ahu, i64 36
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !26 ; 2 uses
  %i.aki = lshr i32 %i.akh, 4
  %i.akj = and i32 %i.aki, 12288
  %i.akk = or disjoint i32 %i.akj, %i.akc
  %i.akl = trunc i32 %i.akh to i16
  %i.akm = getelementptr i8, ptr %i.ahz, i64 22
  store i16 %i.akl, ptr %i.akm, align 2, !tbaa !35
  %i.akn = getelementptr i8, ptr %i.ahu, i64 40
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !26 ; 2 uses
  %i.akp = lshr i32 %i.ako, 6
  %i.akq = and i32 %i.akp, 3072
  %i.akr = or disjoint i32 %i.akk, %i.akq
  %i.aks = trunc i32 %i.ako to i16
  %i.akt = getelementptr i8, ptr %i.ahz, i64 24
  store i16 %i.aks, ptr %i.akt, align 2, !tbaa !35
  %i.aku = getelementptr i8, ptr %i.ahu, i64 44
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !26 ; 2 uses
  %i.akw = lshr i32 %i.akv, 8
  %i.akx = and i32 %i.akw, 768
  %i.aky = or disjoint i32 %i.akr, %i.akx
  %i.akz = trunc i32 %i.akv to i16
  %i.ala = getelementptr i8, ptr %i.ahz, i64 26
  store i16 %i.akz, ptr %i.ala, align 2, !tbaa !35
  %i.alb = getelementptr i8, ptr %i.ahu, i64 48
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !26 ; 2 uses
  %i.ald = lshr i32 %i.alc, 10
  %i.ale = and i32 %i.ald, 192
  %i.alf = or disjoint i32 %i.aky, %i.ale
  %i.alg = trunc i32 %i.alc to i16
  %i.alh = getelementptr i8, ptr %i.ahz, i64 28
  store i16 %i.alg, ptr %i.alh, align 2, !tbaa !35
  %i.ali = getelementptr i8, ptr %i.ahu, i64 52
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !26 ; 2 uses
  %i.alk = lshr i32 %i.alj, 12
  %i.all = and i32 %i.alk, 48
  %i.alm = or disjoint i32 %i.alf, %i.all
  %i.aln = trunc i32 %i.alj to i16
  %i.alo = getelementptr i8, ptr %i.ahz, i64 30
  store i16 %i.aln, ptr %i.alo, align 2, !tbaa !35
  %i.alp = getelementptr i8, ptr %i.ahu, i64 56
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !26 ; 2 uses
  %i.alr = lshr i32 %i.alq, 14
  %i.als = and i32 %i.alr, 12
  %i.alt = or i32 %i.alm, %i.als
  %i.alu = trunc i32 %i.alq to i16
  %i.alv = getelementptr i8, ptr %i.ahz, i64 32
  store i16 %i.alu, ptr %i.alv, align 2, !tbaa !35
  %i.alw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 60
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !26 ; 2 uses
  %i.aly = lshr i32 %i.alx, 16
  %i.alz = and i32 %i.aly, 3
  %i.ama = or i32 %i.alt, %i.alz
  %i.amb = trunc i32 %i.alx to i16
  %i.amc = getelementptr i8, ptr %i.ahz, i64 34
  store i16 %i.amb, ptr %i.amc, align 2, !tbaa !35
  %i.amd = trunc nuw i32 %i.ama to i16
  store i16 %i.amd, ptr %i.ake, align 2, !tbaa !35
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ahu, i64 64
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !26 ; 2 uses
  %i.amg = lshr i32 %i.amf, 2
  %i.amh = and i32 %i.amg, 49152
  %i.ami = trunc i32 %i.amf to i16
  %i.amj = getelementptr i8, ptr %i.ahz, i64 36
  %i.amk = getelementptr i8, ptr %i.ahz, i64 38
  store i16 %i.ami, ptr %i.amk, align 2, !tbaa !35
  %i.aml = getelementptr i8, ptr %i.ahu, i64 68
  %i.amm = load i32, ptr %i.aml, align 4, !tbaa !26 ; 2 uses
  %i.amn = lshr i32 %i.amm, 4
  %i.amo = and i32 %i.amn, 12288
  %i.amp = or disjoint i32 %i.amo, %i.amh
  %i.amq = trunc i32 %i.amm to i16
  %i.amr = getelementptr i8, ptr %i.ahz, i64 40
  store i16 %i.amq, ptr %i.amr, align 2, !tbaa !35
  %i.ams = getelementptr i8, ptr %i.ahu, i64 72
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !26 ; 2 uses
  %i.amu = lshr i32 %i.amt, 6
  %i.amv = and i32 %i.amu, 3072
  %i.amw = or disjoint i32 %i.amp, %i.amv
  %i.amx = trunc i32 %i.amt to i16
  %i.amy = getelementptr i8, ptr %i.ahz, i64 42
  store i16 %i.amx, ptr %i.amy, align 2, !tbaa !35
  %i.amz = getelementptr i8, ptr %i.ahu, i64 76
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !26 ; 2 uses
  %i.anb = lshr i32 %i.ana, 8
  %i.anc = and i32 %i.anb, 768
  %i.and = or disjoint i32 %i.amw, %i.anc
  %i.ane = trunc i32 %i.ana to i16
  %i.anf = getelementptr i8, ptr %i.ahz, i64 44
  store i16 %i.ane, ptr %i.anf, align 2, !tbaa !35
  %i.ang = getelementptr i8, ptr %i.ahu, i64 80
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !26 ; 2 uses
  %i.ani = lshr i32 %i.anh, 10
  %i.anj = and i32 %i.ani, 192
  %i.ank = or disjoint i32 %i.and, %i.anj
  %i.anl = trunc i32 %i.anh to i16
  %i.anm = getelementptr i8, ptr %i.ahz, i64 46
  store i16 %i.anl, ptr %i.anm, align 2, !tbaa !35
  %i.ann = getelementptr i8, ptr %i.ahu, i64 84
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !26 ; 2 uses
  %i.anp = lshr i32 %i.ano, 12
  %i.anq = and i32 %i.anp, 48
  %i.anr = or disjoint i32 %i.ank, %i.anq
  %i.ans = trunc i32 %i.ano to i16
  %i.ant = getelementptr i8, ptr %i.ahz, i64 48
  store i16 %i.ans, ptr %i.ant, align 2, !tbaa !35
  %i.anu = getelementptr i8, ptr %i.ahu, i64 88
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !26 ; 2 uses
  %i.anw = lshr i32 %i.anv, 14
  %i.anx = and i32 %i.anw, 12
  %i.any = or i32 %i.anr, %i.anx
  %i.anz = trunc i32 %i.anv to i16
  %i.aoa = getelementptr i8, ptr %i.ahz, i64 50
  store i16 %i.anz, ptr %i.aoa, align 2, !tbaa !35
  %i.aob = getelementptr inbounds nuw i8, ptr %i.ahu, i64 92
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !26 ; 2 uses
  %i.aod = lshr i32 %i.aoc, 16
  %i.aoe = and i32 %i.aod, 3
  %i.aof = or i32 %i.any, %i.aoe
  %i.aog = trunc i32 %i.aoc to i16
  %i.aoh = getelementptr i8, ptr %i.ahz, i64 52
  store i16 %i.aog, ptr %i.aoh, align 2, !tbaa !35
  %i.aoi = trunc nuw i32 %i.aof to i16
  store i16 %i.aoi, ptr %i.amj, align 2, !tbaa !35
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ahu, i64 96
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !26 ; 2 uses
  %i.aol = lshr i32 %i.aok, 2
  %i.aom = and i32 %i.aol, 49152
  %i.aon = trunc i32 %i.aok to i16
  %i.aoo = getelementptr i8, ptr %i.ahz, i64 54
  %i.aop = getelementptr i8, ptr %i.ahz, i64 56
  store i16 %i.aon, ptr %i.aop, align 2, !tbaa !35
  %i.aoq = getelementptr i8, ptr %i.ahu, i64 100
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !26 ; 2 uses
  %i.aos = lshr i32 %i.aor, 4
  %i.aot = and i32 %i.aos, 12288
  %i.aou = or disjoint i32 %i.aot, %i.aom
  %i.aov = trunc i32 %i.aor to i16
  %i.aow = getelementptr i8, ptr %i.ahz, i64 58
  store i16 %i.aov, ptr %i.aow, align 2, !tbaa !35
  %i.aox = getelementptr i8, ptr %i.ahu, i64 104
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !26 ; 2 uses
  %i.aoz = lshr i32 %i.aoy, 6
  %i.apa = and i32 %i.aoz, 3072
  %i.apb = or disjoint i32 %i.aou, %i.apa
  %i.apc = trunc i32 %i.aoy to i16
  %i.apd = getelementptr i8, ptr %i.ahz, i64 60
  store i16 %i.apc, ptr %i.apd, align 2, !tbaa !35
  %i.ape = getelementptr i8, ptr %i.ahu, i64 108
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !26 ; 2 uses
  %i.apg = lshr i32 %i.apf, 8
  %i.aph = and i32 %i.apg, 768
  %i.api = or disjoint i32 %i.apb, %i.aph
  %i.apj = trunc i32 %i.apf to i16
  %i.apk = getelementptr i8, ptr %i.ahz, i64 62
  store i16 %i.apj, ptr %i.apk, align 2, !tbaa !35
  %i.apl = getelementptr i8, ptr %i.ahu, i64 112
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !26 ; 2 uses
  %i.apn = lshr i32 %i.apm, 10
  %i.apo = and i32 %i.apn, 192
  %i.app = or disjoint i32 %i.api, %i.apo
  %i.apq = trunc i32 %i.apm to i16
  %i.apr = getelementptr i8, ptr %i.ahz, i64 64
  store i16 %i.apq, ptr %i.apr, align 2, !tbaa !35
  %i.aps = getelementptr i8, ptr %i.ahu, i64 116
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !26 ; 2 uses
  %i.apu = lshr i32 %i.apt, 12
  %i.apv = and i32 %i.apu, 48
  %i.apw = or disjoint i32 %i.app, %i.apv
  %i.apx = trunc i32 %i.apt to i16
  %i.apy = getelementptr i8, ptr %i.ahz, i64 66
  store i16 %i.apx, ptr %i.apy, align 2, !tbaa !35
  %i.apz = getelementptr i8, ptr %i.ahu, i64 120
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !26 ; 2 uses
  %i.aqb = lshr i32 %i.aqa, 14
  %i.aqc = and i32 %i.aqb, 12
  %i.aqd = or i32 %i.apw, %i.aqc
  %i.aqe = trunc i32 %i.aqa to i16
  %i.aqf = getelementptr i8, ptr %i.ahz, i64 68
  store i16 %i.aqe, ptr %i.aqf, align 2, !tbaa !35
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.ahu, i64 124
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !26 ; 2 uses
  %i.aqi = lshr i32 %i.aqh, 16
  %i.aqj = and i32 %i.aqi, 3
  %i.aqk = or i32 %i.aqd, %i.aqj
  %i.aql = trunc i32 %i.aqh to i16
  %i.aqm = getelementptr i8, ptr %i.ahz, i64 70
  store i16 %i.aql, ptr %i.aqm, align 2, !tbaa !35
  %i.aqn = trunc nuw i32 %i.aqk to i16
  store i16 %i.aqn, ptr %i.aoo, align 2, !tbaa !35
  %i.aqo = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull %i.ahs, ptr noundef nonnull %i.ahs, i32 noundef %.0250408.i.i.i) ; 2 uses
  %i.aqp = icmp sgt i32 %i.aqo, -1
  br i1 %i.aqp, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %.thread.i108.i.i
  %i.aqq = icmp eq i32 %.0250408.i.i.i, %i.acw
  br i1 %i.aqq, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i, label %.lr.ph.i.i109.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i335.i.i.i
  %i.aqr = icmp samesign ugt i64 %indvars.iv.in.i.i110.i.i, 2
  br i1 %i.aqr, label %.lr.ph.i.i109.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.lr.ph.i.i109.i.i.1:                              ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i
  %indvars.iv.i334.i.i.i.1 = add nsw i64 %indvars.iv.in.i.i110.i.i, -2 ; 3 uses
  %i.aqs = sub nsw i64 %i.aht, %indvars.iv.i334.i.i.i.1
  %i.aqt = getelementptr inbounds [2 x i8], ptr %i.ahs, i64 %i.aqs
  %i.aqu = trunc nuw nsw i64 %indvars.iv.i334.i.i.i.1 to i32 ; 2 uses
  br label %.lr.ph.i.i335.i.i.i.1

.lr.ph.i.i335.i.i.i.1:                            ; preds = %bb.ew, %.lr.ph.i.i109.i.i.1
  %.010.i.i336.i.i.i.1 = phi i32 [ %i.ara, %bb.ew ], [ %i.aqu, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %.069.i.i337.i.i.i.1 = phi ptr [ %i.aqz, %bb.ew ], [ %i.ahz, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %.078.i.i338.i.i.i.1 = phi ptr [ %i.aqy, %bb.ew ], [ %i.aqt, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %i.aqv = load i16, ptr %.078.i.i338.i.i.i.1, align 2, !tbaa !35
  %i.aqw = load i16, ptr %.069.i.i337.i.i.i.1, align 2, !tbaa !35
  %i.aqx = icmp eq i16 %i.aqv, %i.aqw
  br i1 %i.aqx, label %bb.ew, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1: ; preds = %.lr.ph.i.i335.i.i.i.1
  %indvars.iv.next469.i.i.i.1 = add nsw i64 %indvars.iv468.i.i.i, -2
  %indvar.next.1 = add nuw nsw i64 %indvar, 2
  br label %.lr.ph.i.i109.i.i

bb.ew:                                            ; preds = %.lr.ph.i.i335.i.i.i.1
  %i.aqy = getelementptr inbounds nuw i8, ptr %.078.i.i338.i.i.i.1, i64 2
  %i.aqz = getelementptr inbounds nuw i8, ptr %.069.i.i337.i.i.i.1, i64 2
  %i.ara = add nsw i32 %.010.i.i336.i.i.i.1, -1
  %i.arb = icmp sgt i32 %.010.i.i336.i.i.i.1, 1
  br i1 %i.arb, label %.lr.ph.i.i335.i.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit, !llvm.loop !104

.lr.ph.i.i109.i.i:                                ; preds = %bb.ev, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1
  %indvar = phi i64 [ %indvar.next.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 0, %bb.ev ] ; 3 uses
  %indvars.iv468.i.i.i = phi i64 [ %indvars.iv.next469.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 35, %bb.ev ] ; 3 uses
  %indvars.iv.in.i.i110.i.i = phi i64 [ %indvars.iv.i334.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 36, %bb.ev ] ; 4 uses
  %indvars.iv.i334.i.i.i = add nsw i64 %indvars.iv.in.i.i110.i.i, -1 ; 3 uses
  %i.arc = sub nsw i64 %i.aht, %indvars.iv.i334.i.i.i
  %i.ard = getelementptr inbounds [2 x i8], ptr %i.ahs, i64 %i.arc
  %i.are = trunc nuw nsw i64 %indvars.iv.i334.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i335.i.i.i

.lr.ph.i.i335.i.i.i:                              ; preds = %bb.ex, %.lr.ph.i.i109.i.i
  %.010.i.i336.i.i.i = phi i32 [ %i.ark, %bb.ex ], [ %i.are, %.lr.ph.i.i109.i.i ] ; 2 uses
  %.069.i.i337.i.i.i = phi ptr [ %i.arj, %bb.ex ], [ %i.ahz, %.lr.ph.i.i109.i.i ] ; 2 uses
  %.078.i.i338.i.i.i = phi ptr [ %i.ari, %bb.ex ], [ %i.ard, %.lr.ph.i.i109.i.i ] ; 2 uses
  %i.arf = load i16, ptr %.078.i.i338.i.i.i, align 2, !tbaa !35
  %i.arg = load i16, ptr %.069.i.i337.i.i.i, align 2, !tbaa !35
  %i.arh = icmp eq i16 %i.arf, %i.arg
  br i1 %i.arh, label %bb.ex, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.ex:                                            ; preds = %.lr.ph.i.i335.i.i.i
  %i.ari = getelementptr inbounds nuw i8, ptr %.078.i.i338.i.i.i, i64 2
  %i.arj = getelementptr inbounds nuw i8, ptr %.069.i.i337.i.i.i, i64 2
  %i.ark = add nsw i32 %.010.i.i336.i.i.i, -1
  %i.arl = icmp sgt i32 %.010.i.i336.i.i.i, 1
  br i1 %i.arl, label %.lr.ph.i.i335.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !104

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit: ; preds = %bb.ew
  %indvars.iv.next469.i.i.i.le = add nsw i64 %indvars.iv468.i.i.i, -1
  %indvar.next.le = or disjoint i64 %indvar, 1
  br label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.ex, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit
  %indvar.lcssa = phi i64 [ %indvar.next.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvar, %bb.ex ]
  %indvars.iv468.i.i.i.lcssa = phi i64 [ %indvars.iv.next469.i.i.i.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv468.i.i.i, %bb.ex ] ; 6 uses
  %indvars.iv.in.i.i110.i.i.lcssa = phi i64 [ %indvars.iv.i334.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv.in.i.i110.i.i, %bb.ex ]
  %.lcssa333 = phi i32 [ %i.aqu, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %i.are, %bb.ex ]
  %i.arm = sub nsw i32 %.0250408.i.i.i, %.lcssa333 ; 2 uses
  %i.arn = icmp sgt i64 %indvars.iv.in.i.i110.i.i.lcssa, 1
  br i1 %i.arn, label %iter.check, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

iter.check:                                       ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i
  %i.aro = add i64 %indvar.lcssa, 1               ; 7 uses
  %min.iters.check269 = icmp ult i64 %i.aro, 4
  br i1 %min.iters.check269, label %.lr.ph.i112.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check270 = icmp ult i64 %i.aro, 16
  br i1 %min.iters.check270, label %vec.epilog.ph, label %vector.ph271

vector.ph271:                                     ; preds = %vector.main.loop.iter.check
  %i.arp = and i64 %i.aro, 12
  %n.vec272 = and i64 %i.aro, -16                 ; 5 uses
  %i.arq = add i64 %n.vec272, %i.aht              ; 2 uses
  %i.arr = add i64 %indvars.iv468.i.i.i.lcssa, %n.vec272
  %i.ars = getelementptr [2 x i8], ptr %i.ahz, i64 %indvars.iv468.i.i.i.lcssa ; 2 uses
  %i.art = getelementptr i8, ptr %i.ars, i64 16
  %wide.load275 = load <8 x i16>, ptr %i.ars, align 2, !tbaa !35
  %wide.load276 = load <8 x i16>, ptr %i.art, align 2, !tbaa !35
  %i.aru = getelementptr [2 x i8], ptr %i.ahs, i64 %i.aht ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  store <8 x i16> %wide.load275, ptr %i.aru, align 2, !tbaa !35
  store <8 x i16> %wide.load276, ptr %i.arv, align 2, !tbaa !35
  %i.arw = icmp eq i64 %n.vec272, 16
  br i1 %i.arw, label %middle.block278, label %vector.body273.1

vector.body273.1:                                 ; preds = %vector.ph271
  %i.arx = getelementptr [2 x i8], ptr %i.ahz, i64 %indvars.iv468.i.i.i.lcssa ; 2 uses
  %i.ary = getelementptr i8, ptr %i.arx, i64 32
  %i.arz = getelementptr i8, ptr %i.arx, i64 48
  %wide.load275.1 = load <8 x i16>, ptr %i.ary, align 2, !tbaa !35
  %wide.load276.1 = load <8 x i16>, ptr %i.arz, align 2, !tbaa !35
  %i.asa = getelementptr i8, ptr %i.ahs, i64 32
  %i.asb = getelementptr [2 x i8], ptr %i.asa, i64 %i.aht ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 16
  store <8 x i16> %wide.load275.1, ptr %i.asb, align 2, !tbaa !35
  store <8 x i16> %wide.load276.1, ptr %i.asc, align 2, !tbaa !35
  br label %middle.block278

middle.block278:                                  ; preds = %vector.body273.1, %vector.ph271
  %cmp.n279 = icmp eq i64 %i.aro, %n.vec272
  br i1 %cmp.n279, label %.loopexit375.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block278
  %min.epilog.iters.check = icmp eq i64 %i.arp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i112.i.i.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec272, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec282 = and i64 %i.aro, -4                  ; 4 uses
  %i.asd = add i64 %n.vec282, %i.aht              ; 2 uses
  %i.ase = add i64 %indvars.iv468.i.i.i.lcssa, %n.vec282
  %i.asf = getelementptr [2 x i8], ptr %i.ahz, i64 %indvars.iv468.i.i.i.lcssa
  %invariant.gep504 = getelementptr [2 x i8], ptr %i.ahs, i64 %i.aht
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index283 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next285, %vec.epilog.vector.body ] ; 3 uses
  %i.asg = getelementptr [2 x i8], ptr %i.asf, i64 %index283
  %wide.load284 = load <4 x i16>, ptr %i.asg, align 2, !tbaa !35
  %gep505 = getelementptr [2 x i8], ptr %invariant.gep504, i64 %index283
  store <4 x i16> %wide.load284, ptr %gep505, align 2, !tbaa !35
  %index.next285 = add nuw i64 %index283, 4       ; 2 uses
  %i.ash = icmp eq i64 %index.next285, %n.vec282
  br i1 %i.ash, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n286 = icmp eq i64 %i.aro, %n.vec282
  br i1 %cmp.n286, label %.loopexit375.loopexit.i.i.i, label %.lr.ph.i112.i.i.preheader

.lr.ph.i112.i.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv473.i.i.i.ph = phi i64 [ %i.aht, %iter.check ], [ %i.arq, %vec.epilog.iter.check ], [ %i.asd, %vec.epilog.middle.block ]
  %indvars.iv471.i.i.i.ph = phi i64 [ %indvars.iv468.i.i.i.lcssa, %iter.check ], [ %i.arr, %vec.epilog.iter.check ], [ %i.ase, %vec.epilog.middle.block ]
  br label %.lr.ph.i112.i.i

.lr.ph.i112.i.i:                                  ; preds = %.lr.ph.i112.i.i.preheader, %.lr.ph.i112.i.i
  %indvars.iv473.i.i.i = phi i64 [ %indvars.iv.next474.i.i.i, %.lr.ph.i112.i.i ], [ %indvars.iv473.i.i.i.ph, %.lr.ph.i112.i.i.preheader ] ; 2 uses
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i, %.lr.ph.i112.i.i ], [ %indvars.iv471.i.i.i.ph, %.lr.ph.i112.i.i.preheader ] ; 2 uses
  %indvars.iv.next472.i.i.i = add nuw nsw i64 %indvars.iv471.i.i.i, 1 ; 2 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %i.ahz, i64 %indvars.iv471.i.i.i
  %i.asi = load i16, ptr %gep.i.i.i, align 2, !tbaa !35
  %indvars.iv.next474.i.i.i = add nsw i64 %indvars.iv473.i.i.i, 1 ; 2 uses
  %i.asj = getelementptr inbounds [2 x i8], ptr %i.ahs, i64 %indvars.iv473.i.i.i
  store i16 %i.asi, ptr %i.asj, align 2, !tbaa !35
  %exitcond478.not.i.i.i = icmp eq i64 %indvars.iv.next472.i.i.i, 36
  br i1 %exitcond478.not.i.i.i, label %.loopexit375.loopexit.i.i.i, label %.lr.ph.i112.i.i, !llvm.loop !107

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, %bb.ev
  %i.ask = phi i32 [ %i.arm, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.acw, %bb.ev ], [ %.0250408.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ]
  %i.asl = add nsw i32 %.0250408.i.i.i, 36
  br label %.loopexit375.i.i.i

.loopexit375.loopexit.i.i.i:                      ; preds = %.lr.ph.i112.i.i, %vec.epilog.middle.block, %middle.block278
  %indvars.iv.next474.i.i.i.lcssa = phi i64 [ %i.asd, %vec.epilog.middle.block ], [ %i.arq, %middle.block278 ], [ %indvars.iv.next474.i.i.i, %.lr.ph.i112.i.i ]
  %i.asm = trunc nsw i64 %indvars.iv.next474.i.i.i.lcssa to i32
  br label %.loopexit375.i.i.i

.loopexit375.i.i.i:                               ; preds = %.loopexit375.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i
  %8 = phi i32 [ %i.ask, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.arm, %.loopexit375.loopexit.i.i.i ] ; 2 uses
  %.4254.i.i.i = phi i32 [ %i.asl, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.asm, %.loopexit375.loopexit.i.i.i ] ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.ahs, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %.4254.i.i.i)
  br i1 %.0273.lcssa.i.i.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.loopexit375.i.i.i
  %i.asn = load ptr, ptr %i.add, align 8, !tbaa !23
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.asn, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %.4254.i.i.i)
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.loopexit375.i.i.i, %.thread.i108.i.i
  %.5.i.i.i = phi i32 [ %.0250408.i.i.i, %.thread.i108.i.i ], [ %.4254.i.i.i, %bb.ey ], [ %.4254.i.i.i, %.loopexit375.i.i.i ]
  %.1247.in.i.i.i = phi i32 [ %i.aqo, %.thread.i108.i.i ], [ %8, %bb.ey ], [ %8, %.loopexit375.i.i.i ]
  %.1247.i.i.i = or i32 %.1247.in.i.i.i, 32768
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.eu, %._crit_edge404.i.i.i, %.thread362.i.i.i, %bb.en, %bb.em
  %.5289360.i.i.i = phi i32 [ %.5289365.i.i.i, %._crit_edge404.i.i.i ], [ %.4288406.i.i.i, %bb.en ], [ %.5289361.i.i.i, %bb.ez ], [ %.5289365.i.i.i, %.thread362.i.i.i ], [ %.5289365.i.i.i, %bb.eu ], [ %.4288406.i.i.i, %bb.em ] ; 2 uses
  %.6.i107.i.i = phi i32 [ %7, %._crit_edge404.i.i.i ], [ %.0250408.i.i.i, %bb.en ], [ %.5.i.i.i, %bb.ez ], [ %.0250408.i.i.i, %.thread362.i.i.i ], [ %7, %bb.eu ], [ %.0250408.i.i.i, %bb.em ] ; 2 uses
  %.2248.i.i.i = phi i32 [ %i.ago, %._crit_edge404.i.i.i ], [ %i.afh, %bb.en ], [ %.1247.i.i.i, %bb.ez ], [ %i.afl, %.thread362.i.i.i ], [ %i.ago, %bb.eu ], [ %i.aey, %bb.em ] ; 3 uses
  %i.aso = load i32, ptr %i.yt, align 4, !tbaa !16 ; 2 uses
  %i.asp = icmp slt i32 %i.aso, 0
  %i.asq = icmp sgt i32 %.5289360.i.i.i, -1
  %or.cond3.i.i.i = select i1 %i.asp, i1 %i.asq, i1 false
  br i1 %or.cond3.i.i.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 %.2248.i.i.i, ptr %i.yt, align 4, !tbaa !16
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.asr = phi i32 [ %.2248.i.i.i, %bb.fb ], [ %i.aso, %bb.fa ] ; 2 uses
  %i.ass = trunc i32 %.2248.i.i.i to i16
  %indvars.iv.next488.i.i.i = add nuw nsw i64 %indvars.iv487.i.i.i, 1 ; 2 uses
  %i.ast = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv487.i.i.i
  store i16 %i.ass, ptr %i.ast, align 2, !tbaa !35
  %indvars.iv.next461.i.i.i = add nuw nsw i64 %indvars.iv460.i.i.i, 32 ; 2 uses
  %i.asu = icmp samesign ult i64 %indvars.iv.next461.i.i.i, %i.aeu
  br i1 %i.asu, label %bb.ek, label %._crit_edge414.loopexit.i.i.i, !llvm.loop !108

bb.fd:                                            ; preds = %._crit_edge414.i.i.i
  store i32 32767, ptr %i.yt, align 4, !tbaa !16
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %._crit_edge414.i.i.i
  %i.asv = icmp sgt i32 %.0250.lcssa.i.i.i, 32798
  br i1 %i.asv, label %bb.ff, label %.preheader.i98.i.i

.preheader.i98.i.i:                               ; preds = %bb.fe
  %i.asw = icmp sgt i32 %.0255.lcssa.i.i.i, 0
  br i1 %i.asw, label %.lr.ph427.i.i.i, label %.loopexit.i.i.i

.lr.ph427.i.i.i:                                  ; preds = %.preheader.i98.i.i
  %i.asx = sext i32 %i.acw to i64
  %i.asy = zext nneg i32 %i.yo to i64
  %.pre.i.i = load ptr, ptr %i.add, align 8, !tbaa !23
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 8, ptr %3, align 4, !tbaa !8
  br label %.loopexit.i.i.i

bb.fg:                                            ; preds = %bb.fm, %.lr.ph427.i.i.i
  %i.asz = phi ptr [ %.pre.i.i, %.lr.ph427.i.i.i ], [ %i.auy, %bb.fm ] ; 6 uses
  %indvars.iv500.i.i.i = phi i64 [ %i.asy, %.lr.ph427.i.i.i ], [ %indvars.iv.next501.i.i.i, %bb.fm ] ; 2 uses
  %.0232425.i.i.i = phi i32 [ 0, %.lr.ph427.i.i.i ], [ %i.avb, %bb.fm ] ; 6 uses
  %.0234423.i.i.i = phi i32 [ 32, %.lr.ph427.i.i.i ], [ %.1235371.i.i.i, %bb.fm ] ; 2 uses
  %.7422.i.i.i = phi i32 [ %.0250.lcssa.i.i.i, %.lr.ph427.i.i.i ], [ %.9.i.i.i, %bb.fm ] ; 10 uses
  %i.ata = sub nsw i32 %.0255.lcssa.i.i.i, %.0232425.i.i.i ; 6 uses
  %.not304.i.i.i = icmp slt i32 %i.ata, %.0234423.i.i.i
  br i1 %.not304.i.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.atb = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.asz, ptr noundef nonnull %i.b, i32 noundef %.0232425.i.i.i)
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

bb.fi:                                            ; preds = %bb.fg
  %i.atc = sub i32 %.7422.i.i.i, %i.ata           ; 2 uses
  %i.atd = sext i32 %.0232425.i.i.i to i64
  %i.ate = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.atd
  %.not18.i.i.i.i = icmp sgt i32 %i.acw, %i.atc
  br i1 %.not18.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i340.i.i.i

.lr.ph.i340.i.i.i:                                ; preds = %bb.fi
  %i.atf = add i32 %i.atc, 1
  br label %.lr.ph.i.preheader.us.i.i.i.i

.lr.ph.i.preheader.us.i.i.i.i:                    ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %.lr.ph.i340.i.i.i
  %indvars.iv.i342.i.i.i = phi i64 [ %i.asx, %.lr.ph.i340.i.i.i ], [ %indvars.iv.next.i343.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 3 uses
  %i.atg = getelementptr inbounds [2 x i8], ptr %i.asz, i64 %indvars.iv.i342.i.i.i
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.fj, %.lr.ph.i.preheader.us.i.i.i.i
  %.010.i.us.i.i.i.i = phi i32 [ %i.atm, %bb.fj ], [ %i.ata, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i = phi ptr [ %i.atl, %bb.fj ], [ %i.ate, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i = phi ptr [ %i.atk, %bb.fj ], [ %i.atg, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %i.ath = load i16, ptr %.078.i.us.i.i.i.i, align 2, !tbaa !35
  %i.ati = load i16, ptr %.069.i.us.i.i.i.i, align 2, !tbaa !35
  %i.atj = icmp eq i16 %i.ath, %i.ati
  br i1 %i.atj, label %bb.fj, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i

bb.fj:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.atk = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i, i64 2
  %i.atl = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i, i64 2
  %i.atm = add nsw i32 %.010.i.us.i.i.i.i, -1
  %i.atn = icmp sgt i32 %.010.i.us.i.i.i.i, 1
  br i1 %i.atn, label %.lr.ph.i.us.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, !llvm.loop !104

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  %indvars.iv.next.i343.i.i.i = add nsw i64 %indvars.iv.i342.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i343.i.i.i to i32
  %exitcond.not.i.i100.i.i = icmp eq i32 %i.atf, %lftr.wideiv.i.i.i.i
  br i1 %exitcond.not.i.i100.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i.preheader.us.i.i.i.i, !llvm.loop !109

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i: ; preds = %bb.fj
  %i.ato = trunc nsw i64 %indvars.iv.i342.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, %bb.fh
  %.1235.i.i.i = phi i32 [ %.0234423.i.i.i, %bb.fh ], [ %i.ata, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.atb, %bb.fh ], [ %i.ato, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.atp = icmp sgt i32 %.0231.i.i.i, -1
  br i1 %i.atp, label %bb.fm, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i, %bb.fi
  %.1235370.i.i.i = phi i32 [ %.1235.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.ata, %bb.fi ], [ %i.ata, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 7 uses
  %i.atq = icmp eq i32 %.7422.i.i.i, %i.acw
  br i1 %i.atq, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %i.atr = sext i32 %.0232425.i.i.i to i64
  %i.ats = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.atr
  %i.att = icmp sgt i32 %.1235370.i.i.i, 1
  br i1 %i.att, label %.lr.ph.preheader.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i: ; preds = %bb.fk
  %.014.i.i.i.i = add nsw i32 %.1235370.i.i.i, -1 ; 2 uses
  %i.atu = sub nsw i32 %.7422.i.i.i, %.014.i.i.i.i
  br label %.lr.ph419.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fk
  %i.atv = zext nneg i32 %.1235370.i.i.i to i64
  %i.atw = sext i32 %.7422.i.i.i to i64
  br label %.lr.ph.i345.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i: ; preds = %.lr.ph.i.i348.i.i.i
  %i.atx = icmp sgt i64 %indvars.iv.in.i346.i.i.i, 2
  br i1 %i.atx, label %.lr.ph.i345.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, !llvm.loop !110

.lr.ph.i345.i.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.in.i346.i.i.i = phi i64 [ %i.atv, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.i347.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i ] ; 2 uses
  %indvars.iv.i347.i.i.i = add nsw i64 %indvars.iv.in.i346.i.i.i, -1 ; 3 uses
  %i.aty = sub nsw i64 %i.atw, %indvars.iv.i347.i.i.i
  %i.atz = getelementptr inbounds [2 x i8], ptr %i.asz, i64 %i.aty
  %i.aua = trunc nuw nsw i64 %indvars.iv.i347.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i348.i.i.i

.lr.ph.i.i348.i.i.i:                              ; preds = %bb.fl, %.lr.ph.i345.i.i.i
  %.010.i.i349.i.i.i = phi i32 [ %i.aug, %bb.fl ], [ %i.aua, %.lr.ph.i345.i.i.i ] ; 2 uses
  %.069.i.i350.i.i.i = phi ptr [ %i.auf, %bb.fl ], [ %i.ats, %.lr.ph.i345.i.i.i ] ; 2 uses
  %.078.i.i351.i.i.i = phi ptr [ %i.aue, %bb.fl ], [ %i.atz, %.lr.ph.i345.i.i.i ] ; 2 uses
  %i.aub = load i16, ptr %.078.i.i351.i.i.i, align 2, !tbaa !35
  %i.auc = load i16, ptr %.069.i.i350.i.i.i, align 2, !tbaa !35
  %i.aud = icmp eq i16 %i.aub, %i.auc
  br i1 %i.aud, label %bb.fl, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i.i348.i.i.i
  %i.aue = getelementptr inbounds nuw i8, ptr %.078.i.i351.i.i.i, i64 2
  %i.auf = getelementptr inbounds nuw i8, ptr %.069.i.i350.i.i.i, i64 2
  %i.aug = add nsw i32 %.010.i.i349.i.i.i, -1
  %i.auh = icmp sgt i32 %.010.i.i349.i.i.i, 1
  br i1 %i.auh, label %.lr.ph.i.i348.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, !llvm.loop !104

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i, %bb.fl, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %.1.i99.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i ], [ %i.aua, %bb.fl ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i ] ; 3 uses
  %i.aui = sub nsw i32 %.7422.i.i.i, %.1.i99.i.i  ; 2 uses
  %i.auj = icmp slt i32 %.1.i99.i.i, %.1235370.i.i.i
  br i1 %i.auj, label %.lr.ph419.i.i.i, label %._crit_edge420.i.i.i

.lr.ph419.i.i.i:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i
  %i.auk = phi i32 [ %i.atu, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i ], [ %i.aui, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ]
  %.1523.i.i.i = phi i32 [ %.014.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i ], [ %.1.i99.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ] ; 3 uses
  %i.aul = sext i32 %.7422.i.i.i to i64
  %i.aum = shl nsw i64 %i.aul, 1
  %scevgep.i.i.i = getelementptr i8, ptr %i.asz, i64 %i.aum
  %i.aun = add i32 %.1523.i.i.i, %.0232425.i.i.i
  %i.auo = sext i32 %i.aun to i64
  %i.aup = shl nsw i64 %i.auo, 1
  %scevgep490.i.i.i = getelementptr i8, ptr %i.b, i64 %i.aup
  %i.auq = xor i32 %.1523.i.i.i, -1
  %i.aur = add i32 %.1235370.i.i.i, %i.auq
  %i.aus = zext i32 %i.aur to i64
  %i.aut = shl nuw nsw i64 %i.aus, 1
  %i.auu = add nuw nsw i64 %i.aut, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 2 dereferenceable(1) %scevgep490.i.i.i, i64 %i.auu, i1 false), !tbaa !35
  %i.auv = add i32 %.1235370.i.i.i, %.7422.i.i.i
  %i.auw = sub i32 %i.auv, %.1523.i.i.i
  br label %._crit_edge420.i.i.i

._crit_edge420.i.i.i:                             ; preds = %.lr.ph419.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i
  %i.aux = phi i32 [ %i.aui, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ], [ %i.auk, %.lr.ph419.i.i.i ]
  %.8.lcssa.i.i.i = phi i32 [ %.7422.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ], [ %i.auw, %.lr.ph419.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.asz, i32 noundef %i.acw, i32 noundef %.7422.i.i.i, i32 noundef %.8.lcssa.i.i.i)
  %.pre503.i.i.i = load ptr, ptr %i.add, align 8, !tbaa !23
  br label %bb.fm

bb.fm:                                            ; preds = %._crit_edge420.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i
  %i.auy = phi ptr [ %i.asz, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.pre503.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.1235371.i.i.i = phi i32 [ %.1235.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.1235370.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.9.i.i.i = phi i32 [ %.7422.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.8.lcssa.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.0231.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.aux, %._crit_edge420.i.i.i ]
  %i.auz = trunc i32 %.0.i.i.i to i16
  %indvars.iv.next501.i.i.i = add nuw nsw i64 %indvars.iv500.i.i.i, 1
  %i.ava = getelementptr inbounds nuw [2 x i8], ptr %i.auy, i64 %indvars.iv500.i.i.i
  store i16 %i.auz, ptr %i.ava, align 2, !tbaa !35
  %i.avb = add nsw i32 %.1235371.i.i.i, %.0232425.i.i.i ; 2 uses
  %i.avc = icmp slt i32 %i.avb, %.0255.lcssa.i.i.i
  br i1 %i.avc, label %bb.fg, label %.loopexit.i.i.i, !llvm.loop !111

.loopexit.i.i.i:                                  ; preds = %bb.fm, %bb.ff, %.preheader.i98.i.i
end_hunk_0
