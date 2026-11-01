Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0B15_:bb.a

bb.mt:                                            ; preds = %bb.mr
  br i1 %i.axa, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !10731
  br label %bb.sv

bb.mv:                                            ; preds = %bb.mt
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 1298
  %i.axd = load i8, ptr %i.axc, align 2, !range !51, !noundef !23
  switch i8 %i.axd, label %._crit_edge.i.i [
    i8 0, label %bb.mw
    i8 3, label %bb.my
  ]

bb.mw:                                            ; preds = %bb.mv
  %i.axe = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10758)
  call void @llvm.experimental.noalias.scope.decl(metadata !10759)
  %i.axf = load ptr, ptr %i.axe, align 8, !alias.scope !10760, !nonnull !23, !noundef !23
  %i.axg = atomicrmw add ptr %i.axf, i64 -1 release, align 8, !noalias !10760
  %i.axh = icmp eq i64 %i.axg, 1
  br i1 %i.axh, label %bb.mx, label %._crit_edge.i.i

bb.mx:                                            ; preds = %bb.mw
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.axe)
  br label %._crit_edge.i.i

bb.my:                                            ; preds = %bb.mv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtBG_15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1K_4moka14MokaCacheEntryE6notify0EB1M_(ptr noundef nonnull align 8 %i.awz)
          to label %bb.na unwind label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.axi = landingpad { ptr, i32 }
          cleanup
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i8 0, ptr %i.axj, align 8
  br label %.body650

bb.na:                                            ; preds = %bb.my
  %i.axk = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i8 0, ptr %i.axk, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.na, %bb.mx, %bb.mw, %bb.mv
  %.phi.trans.insert529.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %.pre530.i.i = load ptr, ptr %.phi.trans.insert529.i.i, align 8, !noalias !10731
  br label %bb.nb

bb.nb:                                            ; preds = %bb.pt, %._crit_edge.i.i
  %i.axl = phi ptr [ %i.bcg, %bb.pt ], [ %i.awu, %._crit_edge.i.i ] ; 2 uses
  %i.axm = phi ptr [ %i.bch, %bb.pt ], [ %i.awv, %._crit_edge.i.i ] ; 2 uses
  %i.axn = phi ptr [ %i.bci, %bb.pt ], [ %i.aww, %._crit_edge.i.i ] ; 2 uses
  %i.axo = phi ptr [ %i.bcj, %bb.pt ], [ %i.awx, %._crit_edge.i.i ] ; 2 uses
  %i.axp = phi ptr [ %i.bia, %bb.pt ], [ %.pre530.i.i, %._crit_edge.i.i ]
  %i.axq = phi ptr [ %i.bgz, %bb.pt ], [ %i.awy, %._crit_edge.i.i ] ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axp, i64 16 ; 2 uses
  %i.axt = load i64, ptr %i.axs, align 8, !alias.scope !10761, !noundef !23
  %i.axu = call i64 @llvm.uadd.sat.i64(i64 %i.axt, i64 1)
  store i64 %i.axu, ptr %i.axs, align 8, !alias.scope !10761
  %i.axv = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.axw = load ptr, ptr %i.axv, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.axy = load ptr, ptr %i.axx, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %0, i64 1178 ; 2 uses
  store i8 0, ptr %i.axz, align 2, !noalias !10731
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ayb = load ptr, ptr %i.aya, align 8, !noalias !10731, !nonnull !23, !noundef !23
  %i.ayc = load ptr, ptr %i.axr, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23
  %.val142.i.i = load ptr, ptr %i.axy, align 8
  %i.ayd = getelementptr i8, ptr %i.axy, i64 8
  %.val143.i.i = load i64, ptr %i.ayd, align 8
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13handle_removeB13_(ptr noalias noundef align 8 dereferenceable(192) %i.axw, ptr %.val142.i.i, i64 %.val143.i.i, ptr noundef nonnull %i.ayb, i16 noundef 0, i16 undef, ptr noalias noundef align 8 dereferenceable(24) %i.ayc)
          to label %bb.nc unwind label %bb.ps

bb.nc:                                            ; preds = %bb.nb
  store i8 0, ptr %i.axz, align 2, !noalias !10731
  %i.aye = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.ayf = load i8, ptr %i.aye, align 8, !range !29, !noalias !10731, !noundef !23
  %i.ayg = trunc nuw i8 %i.ayf to i1
  br i1 %i.ayg, label %bb.nd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i: ; preds = %bb.ne, %bb.nd, %bb.nc
  store i8 0, ptr %i.aye, align 8, !noalias !10731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !10731
  br label %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEE18move_front_to_backB1u_.exit.i.i

bb.nd:                                            ; preds = %bb.nc
  %i.ayh = atomicrmw add ptr %i.axq, i64 -1 release, align 8, !noalias !10762
  %i.ayi = icmp eq i64 %i.ayh, 1
  br i1 %i.ayi, label %bb.ne, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i

bb.ne:                                            ; preds = %bb.nd
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bh)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit208.i.i: ; preds = %bb.qo, %bb.qn, %bb.ql
  store i8 0, ptr %i.bjy, align 8, !noalias !10731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !10731
  br label %bb.qi

_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEE18move_front_to_backB1u_.exit.i.i: ; preds = %bb.qf, %bb.qd, %bb.qc, %bb.px, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.thread.i.i, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.i.i, %bb.pv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i
  %i.ayj = phi ptr [ %i.bcg, %bb.qf ], [ %i.bcg, %bb.qd ], [ %i.bcg, %bb.qc ], [ %i.bcg, %bb.px ], [ %i.bcg, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.thread.i.i ], [ %i.bcg, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.i.i ], [ %i.bcg, %bb.pv ], [ %i.axl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i ] ; 3 uses
  %i.ayk = phi ptr [ %i.bch, %bb.qf ], [ %i.bch, %bb.qd ], [ %i.bch, %bb.qc ], [ %i.bch, %bb.px ], [ %i.bch, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.thread.i.i ], [ %i.bch, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.i.i ], [ %i.bch, %bb.pv ], [ %i.axm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i ] ; 3 uses
  %i.ayl = phi ptr [ %i.bci, %bb.qf ], [ %i.bci, %bb.qd ], [ %i.bci, %bb.qc ], [ %i.bci, %bb.px ], [ %i.bci, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.thread.i.i ], [ %i.bci, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.i.i ], [ %i.bci, %bb.pv ], [ %i.axn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i ] ; 3 uses
  %i.aym = phi ptr [ %i.bcj, %bb.qf ], [ %i.bcj, %bb.qd ], [ %i.bcj, %bb.qc ], [ %i.bcj, %bb.px ], [ %i.bcj, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.thread.i.i ], [ %i.bcj, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtB7_9PartialEq2eqB1h_.exit.i.i ], [ %i.bcj, %bb.pv ], [ %i.axo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit.i.i ] ; 3 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %.val108.i.i = load ptr, ptr %i.ayn, align 8, !noalias !10731, !align !50, !noundef !23
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val108.i.i)
          to label %bb.nh unwind label %bb.ng

bb.nf:                                            ; preds = %bb.qi, %bb.ng
  %i.ayo = phi ptr [ %i.ayj, %bb.ng ], [ %i.bjh, %bb.qi ]
  %i.ayp = phi ptr [ %i.ayk, %bb.ng ], [ %i.bji, %bb.qi ]
  %i.ayq = phi ptr [ %i.ayl, %bb.ng ], [ %i.bjj, %bb.qi ]
  %i.ayr = phi ptr [ %i.aym, %bb.ng ], [ %i.bjk, %bb.qi ]
  %.pn43.i.i = phi { ptr, i32 } [ %i.ayt, %bb.ng ], [ %.pn40.pn.i.i, %bb.qi ]
  %i.ays = getelementptr inbounds nuw i8, ptr %0, i64 672
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future8key_lock7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEEB1R_(ptr noalias noundef align 8 dereferenceable(32) %i.ays) #69
          to label %bb.ni unwind label %bb.ly

bb.ng:                                            ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEE18move_front_to_backB1u_.exit.i.i
  %i.ayt = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

bb.nh:                                            ; preds = %_RNvMs1_NtNtCskTBvlRM5ILY_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEE18move_front_to_backB1u_.exit.i.i
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 672
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future8key_lock7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEEB1R_(ptr noalias noundef align 8 dereferenceable(32) %i.ayu)
          to label %bb.nk unwind label %bb.nj

bb.ni:                                            ; preds = %bb.nj, %bb.nf
  %i.ayv = phi ptr [ %i.ayj, %bb.nj ], [ %i.ayo, %bb.nf ] ; 2 uses
  %i.ayw = phi ptr [ %i.ayk, %bb.nj ], [ %i.ayp, %bb.nf ] ; 2 uses
  %i.ayx = phi ptr [ %i.ayl, %bb.nj ], [ %i.ayq, %bb.nf ] ; 2 uses
  %i.ayy = phi ptr [ %i.aym, %bb.nj ], [ %i.ayr, %bb.nf ] ; 2 uses
  %.pn45.i.i = phi { ptr, i32 } [ %i.azd, %bb.nj ], [ %.pn43.i.i, %bb.nf ] ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10763)
  call void @llvm.experimental.noalias.scope.decl(metadata !10764)
  %i.aza = load ptr, ptr %i.ayz, align 8, !alias.scope !10765, !noalias !10731, !nonnull !23, !noundef !23
  %i.azb = atomicrmw add ptr %i.aza, i64 -1 release, align 8, !noalias !10765
  %i.azc = icmp eq i64 %i.azb, 1
  br i1 %i.azc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.sink.split.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.i.i

bb.nj:                                            ; preds = %bb.nh
  %i.azd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ni

bb.nk:                                            ; preds = %bb.nh
  %i.aze = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10766)
  call void @llvm.experimental.noalias.scope.decl(metadata !10767)
  %i.azf = load ptr, ptr %i.aze, align 8, !alias.scope !10768, !noalias !10731, !nonnull !23, !noundef !23
  %i.azg = atomicrmw add ptr %i.azf, i64 -1 release, align 8, !noalias !10768
  %i.azh = icmp eq i64 %i.azg, 1
  br i1 %i.azh, label %bb.nl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit178.i.i

bb.nl:                                            ; preds = %bb.nk
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aze)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit178.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit178.i.i: ; preds = %bb.nl, %bb.nk
  %.phi.trans.insert523.i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.pre524.i.i = load i64, ptr %.phi.trans.insert523.i.i, align 8, !alias.scope !10742, !noalias !10731
  %.phi.trans.insert525.i.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.pre526.i.i = load i64, ptr %.phi.trans.insert525.i.i, align 8, !alias.scope !10742, !noalias !10731
  br label %bb.kp

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.sink.split.i.i: ; preds = %bb.qk, %bb.pp, %bb.ni
  %i.azi = phi ptr [ %i.bhk, %bb.pp ], [ %i.bcg, %bb.qk ], [ %i.ayv, %bb.ni ]
  %i.azj = phi ptr [ %i.bhl, %bb.pp ], [ %i.bch, %bb.qk ], [ %i.ayw, %bb.ni ]
  %i.azk = phi ptr [ %i.bhm, %bb.pp ], [ %i.bci, %bb.qk ], [ %i.ayx, %bb.ni ]
  %i.azl = phi ptr [ %i.bhn, %bb.pp ], [ %i.bcj, %bb.qk ], [ %i.ayy, %bb.ni ]
  %.sink643.i.i = phi ptr [ %i.bho, %bb.pp ], [ %i.bco, %bb.qk ], [ %i.ayz, %bb.ni ]
  %.pn47.ph.i.i = phi { ptr, i32 } [ %.pn23.pn.i.i, %bb.pp ], [ %eh.lpad-body202.i.i, %bb.qk ], [ %.pn45.i.i, %bb.ni ]
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sink643.i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.i.i: ; preds = %bb.qk, %bb.pp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.sink.split.i.i, %bb.ni
  %i.azm = phi ptr [ %i.ayv, %bb.ni ], [ %i.bhk, %bb.pp ], [ %i.bcg, %bb.qk ], [ %i.azi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.sink.split.i.i ]
  %i.azn = phi ptr [ %i.ayw, %bb.ni ], [ %i.bhl, %bb.pp ], [ %i.bch, %bb.qk ], [ %i.azj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.sink.split.i.i ]
  %i.azo = phi ptr [ %i.ayx, %bb.ni ], [ %i.bhm, %bb.pp ], [ %i.bci, %bb.qk ], [ %i.azk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.sink.split.i.i ]
  %i.azp = phi ptr [ %i.ayy, %bb.ni ], [ %i.bhn, %bb.pp ], [ %i.bcj, %bb.qk ], [ %i.azl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.sink.split.i.i ]
  %.pn47.i.i = phi { ptr, i32 } [ %.pn45.i.i, %bb.ni ], [ %.pn23.pn.i.i, %bb.pp ], [ %eh.lpad-body202.i.i, %bb.qk ], [ %.pn47.ph.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit177.sink.split.i.i ]
  %i.azq = getelementptr inbounds nuw i8, ptr %0, i64 352
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCsfnXyRYRFu3h_8smallvec8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtB4_6option6OptionNtNtNtB1h_4time7instant7InstantEEj8_EEB29_(ptr noalias noundef align 8 dereferenceable(288) %i.azq) #69
  br label %bb.km

_RNvXsH_CsfnXyRYRFu3h_8smallvecINtB5_8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtNtB2E_4iter6traits8iterator8Iterator4nextB1G_.exit.i.i: ; preds = %bb.ks, %bb.kr
  %.sink12.i.i.i.i = phi ptr [ %i.aqt, %bb.kr ], [ %i.aqu, %bb.ks ]
  %i.azr = getelementptr inbounds nuw [32 x i8], ptr %.sink12.i.i.i.i, i64 %i.aqj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aql, ptr noundef nonnull align 8 dereferenceable(32) %i.azr, i64 32, i1 false)
  %.phi.trans.insert527.i.i = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %.pre528.i.i = load i64, ptr %.phi.trans.insert527.i.i, align 8, !range !40, !noalias !10731
  %.not.i.i212 = icmp eq i64 %.pre528.i.i, -1
  br i1 %.not.i.i212, label %bb.no, label %bb.nm

bb.nm:                                            ; preds = %_RNvXsH_CsfnXyRYRFu3h_8smallvecINtB5_8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtNtB2E_4iter6traits8iterator8Iterator4nextB1G_.exit.i.i
  %i.azs = load ptr, ptr %i.aql, align 8, !noalias !10731, !nonnull !23, !noundef !23 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.azu = load i64, ptr %i.azt, align 8, !noalias !10731, !noundef !23
  %i.azv = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %2 = load <2 x i64>, ptr %.phi.trans.insert527.i.i, align 8, !noalias !10731
  store <2 x i64> %2, ptr %i.azv, align 8, !noalias !10731
  %i.azw = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr %i.azs, ptr %i.azw, align 8, !noalias !10731
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i64 %i.azu, ptr %i.azx, align 8, !noalias !10731
  %i.azy = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.azz = load ptr, ptr %i.azy, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10769)
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azz, i64 584 ; 2 uses
  %i.bac = load ptr, ptr %i.bab, align 8, !noalias !10769, !noundef !23
  %.not.i179.i.i = icmp eq ptr %i.bac, null
  br i1 %.not.i179.i.i, label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockB13_.exit181.thread.i.i, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  invoke fastcc void @_RNvMs0_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB5_10KeyLockMapNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE8key_lockB16_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.baa, ptr noundef nonnull align 8 %i.bab, ptr nonnull %i.azs)
          to label %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockB13_.exit181.i.i unwind label %bb.nu

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockB13_.exit181.thread.i.i: ; preds = %bb.nm
  store ptr null, ptr %i.baa, align 8, !alias.scope !10769, !noalias !10731
  br label %bb.nv

bb.no:                                            ; preds = %_RNvXsH_CsfnXyRYRFu3h_8smallvecINtB5_8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtNtB2E_4iter6traits8iterator8Iterator4nextB1G_.exit.i.i, %_RNvXsH_CsfnXyRYRFu3h_8smallvecINtB5_8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_ENtNtNtNtB2E_4iter6traits8iterator8Iterator4nextB1G_.exit.thread.i.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCsfnXyRYRFu3h_8smallvec8IntoIterATINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KeyHashNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtB4_6option6OptionNtNtNtB1h_4time7instant7InstantEEj8_EEB29_(ptr noalias noundef align 8 dereferenceable(288) %i.aqk)
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bae = load ptr, ptr %i.bad, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bah = load i32, ptr %i.bag, align 8, !noalias !10731, !noundef !23
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.baj = load ptr, ptr %i.bai, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23
  %i.bak = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bal = load ptr, ptr %i.bak, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23
  %i.bam = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ban = load ptr, ptr %i.bam, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23
  invoke fastcc void @_RNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12handle_admitB13_(ptr noundef nonnull align 8 %i.bae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.baf, i32 noundef %i.bah, ptr noalias noundef align 8 dereferenceable(192) %i.baj, ptr noalias noundef align 8 dereferenceable(32) %i.bal, ptr noalias noundef align 8 dereferenceable(24) %i.ban)
          to label %bb.np unwind label %bb.sr

bb.np:                                            ; preds = %bb.no
  %.val112.i.i = load ptr, ptr %i.baf, align 8, !noalias !10731, !nonnull !23, !noundef !23
  %i.bao = getelementptr inbounds nuw i8, ptr %.val112.i.i, i64 32
  %.val128.i.i = load ptr, ptr %i.bao, align 8, !nonnull !23, !noundef !23
  %i.bap = getelementptr inbounds nuw i8, ptr %0, i64 1174
  %i.baq = load i16, ptr %i.bap, align 2, !noalias !10731, !noundef !23 ; 3 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %.val128.i.i, i64 54 ; 2 uses
  br label %bb.nq

bb.nq:                                            ; preds = %bb.nr, %bb.np
  %i.bas = load atomic i16, ptr %i.bar acquire, align 2 ; 3 uses
  %i.bat = icmp uge i16 %i.bas, %i.baq
  %i.bau = sub i16 %i.baq, %i.bas
  %i.bav = icmp slt i16 %i.bau, 0
  %or.cond.i182.i.i = or i1 %i.bat, %i.bav
  br i1 %or.cond.i182.i.i, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE14set_policy_genB1i_.exit183.i.i, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.baw = cmpxchg weak ptr %i.bar, i16 %i.bas, i16 %i.baq acq_rel acquire, align 2
  %i.bax = extractvalue { i16, i1 } %i.baw, 1
  br i1 %i.bax, label %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE14set_policy_genB1i_.exit183.i.i, label %bb.nq

_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE14set_policy_genB1i_.exit183.i.i: ; preds = %bb.nr, %bb.nq, %bb.sq
  %i.bay = phi ptr [ %i.bos, %bb.sq ], [ %i.aqe, %bb.nq ], [ %i.aqe, %bb.nr ] ; 3 uses
  %i.baz = phi ptr [ %i.bot, %bb.sq ], [ %i.aqf, %bb.nq ], [ %i.aqf, %bb.nr ] ; 3 uses
  %i.bba = phi ptr [ %i.bou, %bb.sq ], [ %i.aqg, %bb.nq ], [ %i.aqg, %bb.nr ] ; 3 uses
  %i.bbb = phi ptr [ %i.bov, %bb.sq ], [ %i.aqh, %bb.nq ], [ %i.aqh, %bb.nr ] ; 3 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val97.i.i = load ptr, ptr %i.bbc, align 8, !noalias !10731, !nonnull !23, !noundef !23 ; 4 uses
  %i.bbd = atomicrmw add ptr %.val97.i.i, i32 -1 release, align 4
  %i.bbe = icmp eq i32 %i.bbd, 1
  br i1 %i.bbe, label %bb.ns, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1U_4moka14MokaCacheEntryEEEB1W_.exit187.i.i

bb.ns:                                            ; preds = %_RNvMNtNtNtCskTBvlRM5ILY_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE14set_policy_genB1i_.exit183.i.i
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1U_4moka14MokaCacheEntryEEEB1W_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val97.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2u_4moka14MokaCacheEntryEEEEB2w_.exit.i.i184.i.i unwind label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bbf = landingpad { ptr, i32 }
          cleanup
  br label %.body162.sink.split.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2u_4moka14MokaCacheEntryEEEEB2w_.exit.i.i184.i.i: ; preds = %bb.ns
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val97.i.i, i64 noundef 48, i64 noundef 8) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtBG_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1U_4moka14MokaCacheEntryEEEB1W_.exit187.i.i

bb.nu:                                            ; preds = %bb.nn
  %i.bbg = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockB13_.exit181.i.i: ; preds = %bb.nn
  %.pr358.i.i = load ptr, ptr %i.baa, align 8, !noalias !10731
  %.not20.i.i = icmp eq ptr %.pr358.i.i, null
  br i1 %.not20.i.i, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockB13_.exit181.i.i, %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockB13_.exit181.thread.i.i
  %i.bbh = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store ptr null, ptr %i.bbh, align 8, !noalias !10731
  br label %bb.og

bb.nw:                                            ; preds = %_RNvMsa_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_5InnerNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE14maybe_key_lockB13_.exit181.i.i
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store ptr %i.baa, ptr %i.bbi, align 8, !noalias !10731
  %.sroa.8311.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i8 0, ptr %.sroa.8311.0..sroa_idx.i.i, align 8, !noalias !10731
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.iy
  %i.bbj = phi ptr [ %i.aif, %bb.iy ], [ %i.aqe, %bb.nw ] ; 3 uses
  %i.bbk = phi ptr [ %i.aie, %bb.iy ], [ %i.aqf, %bb.nw ] ; 2 uses
  %i.bbl = phi ptr [ %.phi.trans.insert328.i, %bb.iy ], [ %i.aqg, %bb.nw ] ; 3 uses
  %i.bbm = phi ptr [ %i.ake, %bb.iy ], [ %i.aqh, %bb.nw ] ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 3 uses
  %.val122.i.i = load ptr, ptr %1, align 8, !alias.scope !10731
  %i.bbo = invoke fastcc noundef align 8 ptr @_RNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtB6_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0B13_(ptr noundef nonnull align 8 %i.bbn, ptr %.val122.i.i)
          to label %bb.nz unwind label %bb.ny     ; 2 uses

bb.ny:                                            ; preds = %bb.nx
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_(ptr noundef nonnull align 8 %i.bbn) #69
          to label %.body194.i.i unwind label %bb.ly

bb.nz:                                            ; preds = %bb.nx
  %i.bbq = icmp eq ptr %i.bbo, null
  br i1 %i.bbq, label %bb.sv, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bbr = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bbs = load i8, ptr %i.bbr, align 8, !range !51, !noalias !10731, !noundef !23
  %cond.i188.i.i = icmp eq i8 %i.bbs, 3
  br i1 %cond.i188.i.i, label %bb.ob, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i

bb.ob:                                            ; preds = %bb.oa
  %i.bbt = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.bbu = load i32, ptr %i.bbt, align 8, !range !54, !noalias !10731, !noundef !23
  %i.bbv = icmp eq i32 %i.bbu, -2
  br i1 %i.bbv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bbw = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.bby = load ptr, ptr %i.bbw, align 8, !noalias !10731, !align !50, !noundef !23 ; 2 uses
  store ptr null, ptr %i.bbw, align 8, !noalias !10731
  %i.bbz = load i8, ptr %i.bbx, align 8, !range !29, !noalias !10731, !noundef !23
  %i.bca = trunc nuw i8 %i.bbz to i1
  %.not.i.i.i.i.i.i.i.i189.i.i = icmp ne ptr %i.bby, null
  %or.cond.not.i.i.i.i.i.i.i.i190.i.i = and i1 %.not.i.i.i.i.i.i.i.i189.i.i, %i.bca
  br i1 %or.cond.not.i.i.i.i.i.i.i.i190.i.i, label %bb.od, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i191.i.i

bb.od:                                            ; preds = %bb.oc
  %i.bcb = atomicrmw add ptr %i.bby, i64 -2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i191.i.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i191.i.i: ; preds = %bb.od, %bb.oc
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.val.i.i.i.i.i.i192.i.i = load ptr, ptr %i.bcc, align 8, !noalias !10731, !align !50, !noundef !23 ; 4 uses
  %i.bcd = icmp eq ptr %.val.i.i.i.i.i.i192.i.i, null
  br i1 %i.bcd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i, label %bb.oe

bb.oe:                                            ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i191.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECs63DIHKhvmTb_10lance_core(ptr noundef nonnull align 8 %.val.i.i.i.i.i.i192.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i193.i.i unwind label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.bce = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i192.i.i, i64 noundef 56, i64 noundef 8) #65
  br label %.body194.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i193.i.i: ; preds = %bb.oe
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i192.i.i, i64 noundef 56, i64 noundef 8) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i

.body194.i.i:                                     ; preds = %bb.of, %bb.ny
  %.pn23.i.i = phi { ptr, i32 } [ %i.bce, %bb.of ], [ %i.bbp, %bb.ny ]
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 672
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future8key_lock7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEEB1R_(ptr noalias noundef align 8 dereferenceable(32) %i.bcf) #69
          to label %bb.pp unwind label %bb.ly

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i193.i.i, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexuEuENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i191.i.i, %bb.ob, %bb.oa
  store ptr %i.bbo, ptr %i.bbn, align 8, !noalias !10731
  br label %bb.og

bb.og:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i, %bb.nv
  %i.bcg = phi ptr [ %i.bbj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i ], [ %i.aqe, %bb.nv ] ; 12 uses
  %i.bch = phi ptr [ %i.bbk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i ], [ %i.aqf, %bb.nv ] ; 12 uses
  %i.bci = phi ptr [ %i.bbl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i ], [ %i.aqg, %bb.nv ] ; 12 uses
  %i.bcj = phi ptr [ %i.bbm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs_NtNtCskTBvlRM5ILY_4moka6future8key_lockINtBI_7KeyLockNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4lock0EB1F_.exit196.i.i ], [ %i.aqh, %bb.nv ] ; 12 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bcl = load ptr, ptr %i.bck, align 8, !noalias !10731, !nonnull !23, !align !50, !noundef !23 ; 5 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.bcn = load i64, ptr %i.bcm, align 8, !noalias !10731, !noundef !23 ; 3 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 4 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bcq = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %.val144.i.i = load ptr, ptr %i.bco, align 8, !noalias !10731 ; 3 uses
  %.val145.i.i = load i64, ptr %i.bcp, align 8, !noalias !10731
  %i.bcr = getelementptr i8, ptr %0, i64 1032
  %.val146.i.i = load i64, ptr %i.bcr, align 8, !noalias !10731
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcl, i64 176
end_hunk_0
begin_hunk_1_@_RNCNvXs2_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB7_16MokaCacheBackendNtNtB9_7backend12CacheBackend10size_bytes0Bb_:bb.a
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.k, %bb.f
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.k ], [ %i.f, %bb.f ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn6

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #68
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #68
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtBJ_5CacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryE17run_pending_tasks0EB1B_(ptr noundef nonnull align 8 %i.g) #69
          to label %bb.c unwind label %bb.n

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = invoke fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtB7_5CacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtBX_4moka14MokaCacheEntryE17run_pending_tasks0BZ_(ptr noundef nonnull align 8 %i.g, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  br i1 %i.h, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB4_16MokaCacheBackend19weighted_size_bytes.exit, %bb.i
  %common.ret.op = phi { i64, i64 } [ { i64 1, i64 undef }, %bb.i ], [ %i.u, %_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB4_16MokaCacheBackend19weighted_size_bytes.exit ]
  ret { i64, i64 } %common.ret.op

bb.i:                                             ; preds = %bb.h
  store i8 3, ptr %i.a, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtBJ_5CacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryE17run_pending_tasks0EB1B_(ptr noundef nonnull align 8 %i.g)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11433)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11433, !nonnull !23, !noundef !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = load atomic i64, ptr %i.n acquire, align 8, !noalias !11433
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !11433, !noundef !23
  %i.r = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.o, i64 %i.q) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 0
  %i.t = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.t, label %bb.m, label %_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB4_16MokaCacheBackend19weighted_size_bytes.exit, !prof !26

bb.m:                                             ; preds = %bb.l
  br label %_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB4_16MokaCacheBackend19weighted_size_bytes.exit

_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB4_16MokaCacheBackend19weighted_size_bytes.exit: ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i64 [ -1, %bb.m ], [ %i.s, %bb.l ]
  store i8 1, ptr %i.a, align 8
  %i.u = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %.sroa.0.0.i, 1
  br label %common.ret

bb.n:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_RNCNvXs2_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB7_16MokaCacheBackendNtNtB9_7backend12CacheBackend11num_entries0Bb_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !51, !noundef !23
  switch i8 %i.b, label %default.unreachable12 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.g
  ]

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.k, %bb.f
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.k ], [ %i.f, %bb.f ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn6

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #68
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #68
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtBJ_5CacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryE17run_pending_tasks0EB1B_(ptr noundef nonnull align 8 %i.g) #69
          to label %bb.c unwind label %bb.m

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = invoke fastcc noundef zeroext i1 @_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtB7_5CacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtBX_4moka14MokaCacheEntryE17run_pending_tasks0BZ_(ptr noundef nonnull align 8 %i.g, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  br i1 %i.h, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.l, %bb.i
  %common.ret.op = phi { i64, i64 } [ { i64 1, i64 undef }, %bb.i ], [ %i.p, %bb.l ]
  ret { i64, i64 } %common.ret.op

bb.i:                                             ; preds = %bb.h
  store i8 3, ptr %i.a, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtBJ_5CacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryE17run_pending_tasks0EB1B_(ptr noundef nonnull align 8 %i.g)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !align !50, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11436)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11436, !nonnull !23, !noundef !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.o = load atomic i64, ptr %i.n acquire, align 8, !noalias !11436
  store i8 1, ptr %i.a, align 8
  %i.p = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %i.o, 1
  br label %common.ret

bb.m:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs2_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB7_16MokaCacheBackendNtNtB9_7backend12CacheBackend13get_or_insert0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.6.i = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.8.i = alloca [40 x i8], align 8          ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.1033.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.10.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.9.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 13 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.01.i.i.i.i.i.i.i.i = alloca [33 x i8], align 8 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.378.i.i.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.3.i.i.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.15.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.v = alloca [40 x i8], align 8                ; 10 uses
  %i.w = alloca [8 x i8], align 8                 ; 7 uses
  %i.x = alloca [16 x i8], align 16               ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [80 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [72 x i8], align 16              ; 13 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [56 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [56 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [56 x i8], align 8               ; 5 uses
  %i.al = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.14275.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [56 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.0261.i.i.i.i = alloca [33 x i8], align 8 ; 7 uses
  %.sroa.11263.i.i.i.i = alloca [6 x i8], align 2 ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.49.i.i = alloca [6 x i8], align 2        ; 6 uses
  %.sroa.3.i.i = alloca [6 x i8], align 2         ; 6 uses
  %i.ax = alloca [40 x i8], align 8               ; 12 uses
  %i.ay = alloca [40 x i8], align 8               ; 12 uses
  %i.az = alloca [16 x i8], align 1               ; 5 uses
  %i.ba = alloca [56 x i8], align 8               ; 15 uses
  %.sroa.3.sroa.0 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.3.sroa.5 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1682 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 2, !range !51, !noundef !23
  switch i8 %i.bc, label %default.unreachable277 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.k
  ]

default.unreachable277:                           ; preds = %bb.nc, %bb.kh, %bb.ff, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjMQ83FLvXnF_10async_lock6rwlock7futures4ReadINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2B_.exit.i.i.i.i, %bb.aq, %bb.ah, %bb.s, %bb.k, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1681
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1664
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !23, !align !50, !noundef !23
  store i8 0, ptr %i.be, align 1
  store i8 1, ptr %i.bd, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !23, !noundef !23 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !23, !align !50, !noundef !23 ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !11828
  %i.bl = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !11828 ; 7 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.c, label %bb.d, !prof !39

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc unwind label %bb.pm

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1656
  store ptr %i.bl, ptr %i.bn, align 8
  %i.bo = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.d
  store i8 0, ptr %i.bd, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !23, !noundef !23
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(16) %i.br, i64 16, i1 false)
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bi, ptr %.sroa.767.0..sroa_idx, align 8
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bk, ptr %.sroa.868.0..sroa_idx, align 8
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bl, ptr %.sroa.969.0..sroa_idx, align 8
  %.sroa.1171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %.sroa.1171.0..sroa_idx, align 1
  %.sroa.1474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1584
  store ptr %i.bg, ptr %.sroa.1474.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1593
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1593
  br label %bb.l

bb.f:                                             ; preds = %.body46, %.body
  %.sroa.0.079362 = phi ptr [ %.sroa.0.079340, %.body46 ], [ %.sroa.0.079363, %.body ] ; 2 uses
  %.sroa.8.0302 = phi ptr [ %.sroa.8.0280, %.body46 ], [ %.sroa.8.0303, %.body ] ; 2 uses
  %.pn28 = phi { ptr, i32 } [ %eh.lpad-body47, %.body46 ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1656 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11829)
  call void @llvm.experimental.noalias.scope.decl(metadata !11830)
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !11831, !nonnull !23, !noundef !23
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !11831
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCscI6d9CVNmLh_4core4sync6atomic6AtomicbEE9drop_slowCskdrbuxGeJhQ_10hyper_util(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit unwind label %bb.pj

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.f, %bb.g, %bb.pm
  %.sroa.8.1 = phi ptr [ %.sroa.8.2, %bb.pm ], [ %.sroa.8.0302, %bb.g ], [ %.sroa.8.0302, %bb.f ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %bb.pm ], [ %.sroa.0.079362, %bb.g ], [ %.sroa.0.079362, %bb.f ]
  %.pn31 = phi { ptr, i32 } [ %i.bbi, %bb.pm ], [ %.pn28, %bb.g ], [ %.pn28, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !range !29, !noundef !23
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.po, label %bb.pn

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #68
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #68
  unreachable

bb.j:                                             ; preds = %bb.r, %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.j
  %.sroa.0.079363 = phi ptr [ undef, %bb.j ], [ %.sroa.0.079364, %bb.p ]
  %.sroa.8.0303 = phi ptr [ undef, %bb.j ], [ %.sroa.8.0304, %bb.p ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.j ], [ %.pn6.pn.i, %bb.p ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs4_NtNtCskTBvlRM5ILY_4moka6future5cacheINtBK_5CacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1A_4moka14MokaCacheEntryE12try_get_withNCNCNvXs2_B2w_NtB2w_16MokaCacheBackendNtNtB1A_7backend12CacheBackend13get_or_insert00NtNtB1C_5error14CloneableErrorE0EB1C_(ptr noundef nonnull align 8 %1) #69
          to label %bb.f unwind label %bb.pj

bb.k:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1593
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !51, !noalias !11832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11833)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1593 ; 17 uses
  switch i8 %.pre, label %default.unreachable277 [
    i8 0, label %bb.l
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
  ]

bb.l:                                             ; preds = %.thread, %bb.k
  %i.cc = phi ptr [ %i.bs, %.thread ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.0.079361 = phi ptr [ %i.bi, %.thread ], [ undef, %bb.k ] ; 2 uses
  %.sroa.8.0301 = phi ptr [ %i.bk, %.thread ], [ undef, %bb.k ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 1592 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !11832, !nonnull !23, !align !50, !noundef !23 ; 3 uses
  store i8 1, ptr %i.cd, align 8, !noalias !11832
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !11832
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %i.ch, i64 48, i1 false), !noalias !11832
  %i.cj = getelementptr i8, ptr %i.cf, i64 64
  %.val.i = load ptr, ptr %i.cj, align 8, !noalias !11834, !nonnull !23, !noundef !23 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i, i64 216
  %.val.i.i = load i64, ptr %i.ck, align 8, !noalias !11835, !noundef !23
  %i.cl = getelementptr i8, ptr %.val.i, i64 224
  %.val1.i.i = load i64, ptr %i.cl, align 8, !noalias !11835, !noundef !23
  %i.cm = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEB1L_(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.cg), !noalias !11834 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 0, ptr %i.cd, align 8, !noalias !11832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !11832
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !11836
  %i.cn = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !11836 ; 6 uses
  %i.co = icmp eq ptr %i.cn, null
end_hunk_1
begin_hunk_2_@_RNCNvXs2_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB7_16MokaCacheBackendNtNtB9_7backend12CacheBackend13get_or_insert0Bb_:bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBK_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEB3a_(ptr nonnull %.val105.i.i.i.i)
          to label %bb.cf unwind label %bb.ce, !noalias !11855

bb.cd:                                            ; preds = %bb.fe, %.body154.i.i.i.i, %bb.ce, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i, %.body142.i.i.i.i
  %i.nv = phi ptr [ %i.ll, %bb.ce ], [ %i.ll, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %i.ll, %.body142.i.i.i.i ], [ %i.vr, %bb.fe ], [ %i.ot, %.body154.i.i.i.i ] ; 2 uses
  %.sroa.0.079378 = phi ptr [ %.sroa.0.079355, %bb.ce ], [ %.sroa.0.079355, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %.sroa.0.079355, %.body142.i.i.i.i ], [ %.sroa.0.079385, %bb.fe ], [ %.sroa.0.079354, %.body154.i.i.i.i ] ; 2 uses
  %.sroa.8.0318 = phi ptr [ %.sroa.8.0295, %bb.ce ], [ %.sroa.8.0295, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %.sroa.8.0295, %.body142.i.i.i.i ], [ %.sroa.8.0325, %bb.fe ], [ %.sroa.8.0294, %.body154.i.i.i.i ] ; 2 uses
  %i.nw = phi ptr [ %i.lm, %bb.ce ], [ %i.lm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %i.lm, %.body142.i.i.i.i ], [ %i.vs, %bb.fe ], [ %i.ou, %.body154.i.i.i.i ] ; 2 uses
  %i.nx = phi ptr [ %i.ln, %bb.ce ], [ %i.ln, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %i.ln, %.body142.i.i.i.i ], [ %i.vt, %bb.fe ], [ %i.ov, %.body154.i.i.i.i ] ; 2 uses
  %i.ny = phi ptr [ %i.lo, %bb.ce ], [ %i.lo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %i.lo, %.body142.i.i.i.i ], [ %i.vu, %bb.fe ], [ %i.ow, %.body154.i.i.i.i ] ; 2 uses
  %i.nz = phi ptr [ %i.lp, %bb.ce ], [ %i.lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %i.lp, %.body142.i.i.i.i ], [ %i.vv, %bb.fe ], [ %i.ox, %.body154.i.i.i.i ] ; 2 uses
  %i.oa = phi ptr [ %i.lq, %bb.ce ], [ %i.lq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %i.lq, %.body142.i.i.i.i ], [ %i.vw, %bb.fe ], [ %i.oy, %.body154.i.i.i.i ] ; 2 uses
  %i.ob = phi ptr [ %i.lr, %bb.ce ], [ %i.lr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %i.lr, %.body142.i.i.i.i ], [ %i.vx, %bb.fe ], [ %i.oz, %.body154.i.i.i.i ] ; 2 uses
  %.pn88.i.i.i.i = phi { ptr, i32 } [ %i.of, %bb.ce ], [ %.pn86.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit146.i.i.i.i ], [ %.pn79.i.i.i.i, %.body142.i.i.i.i ], [ %.pn71.pn.i.i.i.i, %bb.fe ], [ %eh.lpad-body155.i.i.i.i, %.body154.i.i.i.i ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.od = load i8, ptr %i.oc, align 8, !range !29, !noalias !11852, !noundef !23
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.ke, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock16RwLockWriteGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2E_.exit177.i.i.i.i

bb.ce:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cf:                                            ; preds = %bb.jv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i
  %i.og = phi ptr [ %i.anf, %bb.jv ], [ %i.ll, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.079345 = phi ptr [ %.sroa.0.079346, %bb.jv ], [ %.sroa.0.079355, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %.sroa.8.0285 = phi ptr [ %.sroa.8.0286, %bb.jv ], [ %.sroa.8.0295, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %i.oh = phi ptr [ %i.ang, %bb.jv ], [ %i.lm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %i.oi = phi ptr [ %i.anh, %bb.jv ], [ %i.ln, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %i.oj = phi ptr [ %i.ani, %bb.jv ], [ %i.lo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %i.ok = phi ptr [ %i.anj, %bb.jv ], [ %i.lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %i.ol = phi ptr [ %i.ank, %bb.jv ], [ %i.lq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %i.om = phi ptr [ %i.anl, %bb.jv ], [ %i.lr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ] ; 3 uses
  %.sroa.11.sroa.0.1.i.i.i.i = phi ptr [ %i.anv, %bb.jv ], [ %.sroa.11.sroa.0.0.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ]
  %.sroa.11.sroa.4.1.i.i.i.i = phi i64 [ %i.anz, %bb.jv ], [ %.sroa.11.sroa.4.0.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ]
  %.sroa.619.1.i.i.i.i = phi ptr [ %.sroa.0239.0.copyload240.i.i.i.i, %bb.jv ], [ %.sroa.619.0.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ]
  %.sroa.018.1.i.i.i.i = phi i64 [ 1, %bb.jv ], [ %.sroa.018.0.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit.i.i.i.i ]
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.oo = load i8, ptr %i.on, align 8, !range !29, !noalias !11852, !noundef !23
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.jw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock16RwLockWriteGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2E_.exit.i.i.i.i

bb.cg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjMQ83FLvXnF_10async_lock6rwlock7futures4ReadINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2B_.exit.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjMQ83FLvXnF_10async_lock6rwlock7futures4ReadINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2B_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !11852
  store ptr %i.ly, ptr %i.ar, align 8, !noalias !11852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !11852
  store ptr %i.ar, ptr %i.aq, align 8, !noalias !11852
  %.sroa.5238.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryENtB6_5Debug3fmtB1F_, ptr %.sroa.5238.0..sroa_idx.i.i.i.i, align 8, !noalias !11852
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #68
          to label %bb.ci unwind label %bb.ch, !noalias !11855

bb.ch:                                            ; preds = %bb.cg
  %i.oq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !11852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !11852
  br label %.body98.i.i.i.i

bb.ci:                                            ; preds = %bb.lz, %bb.cg
  unreachable

bb.cj:                                            ; preds = %bb.bm, %bb.bl
  invoke void @_RNvMNtNtCsjMQ83FLvXnF_10async_lock6rwlock3rawNtB2_9RawRwLock11read_unlock(ptr noundef nonnull align 8 %i.lw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i unwind label %bb.cc, !noalias !11855

bb.ck:                                            ; preds = %bb.bm, %bb.bl
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i: ; preds = %bb.cj
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 528
  %.val104.i.i.i.i = load ptr, ptr %i.os, align 8, !noalias !11852, !nonnull !23, !noundef !23
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBK_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEB3a_(ptr nonnull %.val104.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjMQ83FLvXnF_10async_lock6rwlock7futures5WriteINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2C_.exit138.i.i.i.i unwind label %bb.ce, !noalias !11855

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjMQ83FLvXnF_10async_lock6rwlock7futures5WriteINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2C_.exit138.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i, %bb.bd
  %i.ot = phi ptr [ %i.ll, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %i.kk, %bb.bd ] ; 3 uses
  %.sroa.0.079354 = phi ptr [ %.sroa.0.079355, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %.sroa.0.079356, %bb.bd ] ; 3 uses
  %.sroa.8.0294 = phi ptr [ %.sroa.8.0295, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %.sroa.8.0296, %bb.bd ] ; 3 uses
  %i.ou = phi ptr [ %i.lm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %i.kl, %bb.bd ] ; 3 uses
  %i.ov = phi ptr [ %i.ln, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %i.km, %bb.bd ] ; 3 uses
  %i.ow = phi ptr [ %i.lo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %i.kn, %bb.bd ] ; 3 uses
  %i.ox = phi ptr [ %i.lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %i.ko, %bb.bd ] ; 3 uses
  %i.oy = phi ptr [ %i.lq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %i.kp, %bb.bd ] ; 3 uses
  %i.oz = phi ptr [ %i.lr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock15RwLockReadGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2D_.exit151.i.i.i.i ], [ %i.kq, %bb.bd ] ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !noalias !11852, !nonnull !23, !align !50, !noundef !23
  %.val118.i.i.i.i = load ptr, ptr %i.pb, align 8, !noalias !11855, !nonnull !23, !noundef !23 ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.val118.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !11852
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11882)
  call void @llvm.experimental.noalias.scope.decl(metadata !11883)
  %.val.i152.i.i.i.i = load ptr, ptr %i.pd, align 8, !alias.scope !11883, !noalias !11852, !nonnull !23, !noundef !23 ; 4 uses
  %i.pe = atomicrmw add ptr %.val.i152.i.i.i.i, i64 1 monotonic, align 8, !noalias !11884
  %i.pf = icmp slt i64 %i.pe, 0
  br i1 %i.pf, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjMQ83FLvXnF_10async_lock6rwlock7futures5WriteINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2C_.exit138.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.cm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjMQ83FLvXnF_10async_lock6rwlock7futures5WriteINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2C_.exit138.i.i.i.i
  store ptr %.val.i152.i.i.i.i, ptr %i.as, align 8, !alias.scope !11882, !noalias !11852
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ph = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ph, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.pg, i64 16, i1 false), !alias.scope !11885, !noalias !11852
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !11852, !noundef !23 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val133.i.i.i.i = load ptr, ptr %i.pk, align 8, !noalias !11852, !nonnull !23, !noundef !23 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11886)
  %i.pl = atomicrmw add ptr %.val133.i.i.i.i, i32 1 monotonic, align 4, !noalias !11887
  %i.pm = icmp slt i32 %i.pl, 0
  br i1 %i.pm, label %bb.cn, label %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB2H_.exit.i.i.i.i.i, !prof !26

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #68
          to label %.noexc.i153.i.i.i.i unwind label %bb.fb, !noalias !11887

.noexc.i153.i.i.i.i:                              ; preds = %bb.cn
  unreachable

_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB2H_.exit.i.i.i.i.i: ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !11888)
  %i.pn = getelementptr inbounds nuw i8, ptr %.val118.i.i.i.i, i64 48
  %i.po = load i32, ptr %i.pn, align 8, !noalias !11889, !noundef !23 ; 2 uses
  %i.pp = icmp eq i32 %i.po, 64
  %i.pq = and i32 %i.po, 63
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = lshr i64 %i.pj, %i.pr
  %.sroa.02.0.i.i.i.i.i.i = select i1 %i.pp, i64 0, i64 %i.ps ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.val118.i.i.i.i, i64 16
  %i.pu = load i64, ptr %i.pt, align 8, !noalias !11889, !noundef !23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %.sroa.02.0.i.i.i.i.i.i, %i.pu
  br i1 %.not.i.i.i.i.i.i, label %bb.co, label %bb.ew

bb.co:                                            ; preds = %_RNvXs3_NtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB2H_.exit.i.i.i.i.i
  %i.pv = load ptr, ptr %i.pc, align 8, !noalias !11889, !nonnull !23, !noundef !23
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %.sroa.02.0.i.i.i.i.i.i ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.val118.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11890)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11891
  %i.pz = invoke fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs63DIHKhvmTb_10lance_core()
          to label %bb.cq unwind label %bb.cp, !noalias !11892 ; 11 uses

bb.cp:                                            ; preds = %bb.eo, %bb.co
  %.sroa.015.0.i.i.i.i.i.i.i = phi i8 [ 0, %bb.eo ], [ 1, %bb.co ]
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.co
  store ptr %i.pz, ptr %i.w, align 8, !noalias !11891
  %i.qb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtB1S_4moka14MokaCacheEntryEEENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getB1U_(ptr nonnull %i.pw)
          to label %bb.cv unwind label %bb.cu, !noalias !11892 ; 2 uses

.body.thread.thread.i.i.i.i.i.i.i:                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.es, %bb.er, %.body.thread.thread78.i.i.i.i.i.i.i, %bb.dy, %.body42.i.i.i.i.i.i.i, %bb.dl, %bb.dk, %bb.cu
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp568, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.thr_comm76.i.i.i.i.i.i.i, %.body.thread.thread78.i.i.i.i.i.i.i ], [ %i.ql, %bb.cu ], [ %i.rr, %bb.dk ], [ %i.rr, %bb.dl ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body42.i.i.i.i.i.i.i ], [ %i.sy, %bb.dy ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i, %bb.es ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i, %bb.er ] ; 4 uses
  %.sroa.015.1.i.i.i.i.i.i.i = phi i8 [ 0, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 0, %.body.thread.thread78.i.i.i.i.i.i.i ], [ 1, %bb.cu ], [ 0, %bb.dk ], [ 0, %bb.dl ], [ 0, %.body42.i.i.i.i.i.i.i ], [ 0, %bb.dy ], [ 0, %bb.es ], [ 0, %bb.er ] ; 4 uses
  %i.qc = icmp eq ptr %i.pz, null
  br i1 %i.qc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.body.thread.thread.i.i.i.i.i.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 2072 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !noalias !11892, !noundef !23 ; 2 uses
  %i.qf = add i64 %i.qe, -1
  store i64 %i.qf, ptr %i.qd, align 8, !noalias !11892
  %i.qg = icmp eq i64 %i.qe, 1
  br i1 %i.qg, label %bb.cs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit.i.i.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 2176
  store atomic i64 0, ptr %i.qh release, align 8, !noalias !11892
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pz, i64 2080
  %i.qj = load i64, ptr %i.qi, align 8, !noalias !11892, !noundef !23
  %i.qk = icmp eq i64 %i.qj, 0
  br i1 %i.qk, label %bb.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit.i.i.i.i, !prof !26

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.pz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit.i.i.i.i unwind label %bb.et, !noalias !11855

bb.cu:                                            ; preds = %bb.cq
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11891
  %i.qm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qm, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !11893
  %i.qn = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %.val133.i.i.i.i, ptr %i.qn, align 8, !noalias !11891
  store i64 0, ptr %i.v, align 8, !noalias !11891
  %i.qo = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %.sroa.729.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.7.8..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.729.8..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %.backedge.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i.i.backedge, %bb.cv
  %.sroa.06.0.i.i.i.i.i.i.i = phi ptr [ %i.qb, %bb.cv ], [ %.sroa.06.0.i.i.i.i.i.i.i.be, %.backedge.i.i.i.i.i.i.i.backedge ] ; 8 uses
  %i.qp = getelementptr i8, ptr %.sroa.06.0.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.06.0.val.i.i.i.i.i.i.i = load i64, ptr %i.qp, align 8, !noalias !11892, !noundef !23 ; 2 uses
  %i.qq = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.06.0.val.i.i.i.i.i.i.i)
  %i.qr = icmp eq i64 %i.qq, 1
  br i1 %i.qr, label %bb.cx, label %bb.cw, !prof !28

bb.cw:                                            ; preds = %.backedge.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @590, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @591) #68
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11892

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %.backedge.i.i.i.i.i.i.i
  %i.qs = lshr i64 %.sroa.06.0.val.i.i.i.i.i.i.i, 1
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i.i, i64 40
  %i.qu = invoke noundef i8 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp3new(i64 noundef %i.qs, ptr noundef nonnull align 8 %i.qt, ptr noundef nonnull align 8 %i.px)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11892 ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.qv = icmp eq i8 %i.qu, 3
  br i1 %i.qv, label %bb.cz, label %bb.ea

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !noalias !11891
  call void @llvm.experimental.noalias.scope.decl(metadata !11894)
  call void @llvm.experimental.noalias.scope.decl(metadata !11895)
  %i.qw = load i64, ptr %i.qp, align 8, !noalias !11896, !noundef !23 ; 2 uses
  %i.qx = add i64 %i.qw, -1                       ; 3 uses
  %i.qy = and i64 %i.qx, %i.pj                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.qw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qz = load ptr, ptr %.sroa.06.0.i.i.i.i.i.i.i, align 8, !noalias !11896, !nonnull !23, !noundef !23 ; 2 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.qy
  br label %.backedge.i.i.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.cz
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.qy, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #68
          to label %bb.dc unwind label %bb.dy, !noalias !11896

bb.dc:                                            ; preds = %bb.db
  unreachable

.backedge.i.i.i.i.i.i.i.i:                        ; preds = %.backedge.i.i.i.i.i.i.i.i.backedge, %bb.da
  %.sroa.21.0.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.da ], [ %.sroa.21.0.i.i.i.i.i.i.i.i.be, %.backedge.i.i.i.i.i.i.i.i.backedge ]
  %.sroa.18.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.da ], [ %.sroa.18.1.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.12.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ra, %bb.da ], [ %.sroa.12.1.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.backedge ]
  br i1 %.sroa.21.0.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.backedge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.18.0.i.i.i.i.i.i.i.i, %i.qx
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.de, label %._RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit_crit_edge.i.i.i.i.i.i.i

._RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.dd
  %.sroa.045.0.copyload46.pre.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !11897, !noalias !11891
  br label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.de, %.backedge.i.i.i.i.i.i.i.i
  %.sroa.18.1.i.i.i.i.i.i.i.i = phi i64 [ %i.re, %bb.de ], [ %.sroa.18.0.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i ]
  %.sroa.12.1.i.i.i.i.i.i.i.i = phi ptr [ %i.rh, %bb.de ], [ %.sroa.12.0.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.rb = load atomic i64, ptr %.sroa.12.1.i.i.i.i.i.i.i.i acquire, align 8, !noalias !11898 ; 5 uses
  %i.rc = and i64 %i.rb, 1
  %i.rd = icmp eq i64 %i.rc, 0
  %.sroa.045.0.copyload46.pre167.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !11897, !noalias !11891 ; 3 uses
  br i1 %i.rd, label %bb.df, label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.i.i.i.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.re = add nuw i64 %.sroa.18.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.rf = add i64 %i.re, %i.qy
  %i.rg = and i64 %i.rf, %i.qx
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.rg
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.df:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ri = and i64 %i.rb, -8                       ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i64 %i.ri, 0  ; 2 uses
  %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.qo, align 8, !alias.scope !11895, !noalias !11891 ; 8 uses
  br i1 %.not13.i.i.i.i.i.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rj = inttoptr i64 %i.ri to ptr               ; 2 uses
  %i.rk = icmp eq i64 %.sroa.045.0.copyload46.pre167.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.rl = and i64 %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i, -8
  %i.rm = inttoptr i64 %i.rl to ptr               ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = select i1 %i.rk, ptr %i.qo, ptr %i.rm
  %.val16.i.i.i.i.i.i.i.i = load ptr, ptr %i.rj, align 8, !noalias !11896, !nonnull !23, !noundef !23 ; 2 uses
  %i.rn = getelementptr i8, ptr %i.rj, i64 8
  %.val17.i.i.i.i.i.i.i.i = load i128, ptr %i.rn, align 8, !noalias !11896 ; 2 uses
  %.sroa.02.0.val.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.02.0.i.i.i.i.i.i.i.i, align 8, !noalias !11899, !nonnull !23, !noundef !23 ; 2 uses
  %.sroa.gep53.i.i.i.i.i.i.i = getelementptr i8, ptr %i.rm, i64 8
  %.sroa.02.0.i.sroa.sel.i.i.i.i.i.i.i = select i1 %i.rk, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr %.sroa.gep53.i.i.i.i.i.i.i
  %.sroa.02.0.val18.i.i.i.i.i.i.i.i = load i128, ptr %.sroa.02.0.i.sroa.sel.i.i.i.i.i.i.i, align 8, !noalias !11899 ; 2 uses
  %i.ro = icmp eq ptr %.val16.i.i.i.i.i.i.i.i, %.sroa.02.0.val.i.i.i.i.i.i.i.i
  br i1 %i.ro, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i.i.i.i.i.i.i.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.dv, %bb.df
  switch i64 %.sroa.045.0.copyload46.pre167.i.i.i.i.i.i.i, label %default.unreachable19.i.i.i.i.i.i.i.i.i [
    i64 0, label %bb.di
    i64 1, label %_RNvMs5_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB5_19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtB1N_4moka14MokaCacheEntryEEENCNvMs_NtB9_7segmentINtB67_7HashMapB1a_B3h_E21insert_if_not_present0E18into_insert_bucketB1P_.exit.i.i.i.i.i.i.i.i
    i64 2, label %bb.dm
  ]

default.unreachable19.i.i.i.i.i.i.i.i.i:          ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dh
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !11895, !noalias !11891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11900
  store i64 %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !noalias !11901
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.7.8..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11901
  %3 = load <2 x ptr>, ptr %.sroa.729.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !11895, !noalias !11891
  store <2 x ptr> %3, ptr %.sroa.729.8..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11901
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !11902
  %i.rp = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !11902 ; 3 uses
  %i.rq = icmp eq ptr %i.rp, null
  br i1 %i.rq, label %bb.dj, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtB4_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBN_6future17value_initializer11WaiterValueNtNtB1O_4moka14MokaCacheEntryEEEEE3newB1Q_.exit.i.i.i.i.i.i.i.i.i, !prof !39

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #68
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.dk, !noalias !11903

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.dj
  %i.rr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rs = inttoptr i64 %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i to ptr
  %i.rt = atomicrmw add ptr %i.rs, i64 -1 release, align 8, !noalias !11904
  %i.ru = icmp eq i64 %i.rt, 1
  br i1 %i.ru, label %bb.dl, label %.body.thread.thread.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.t), !noalias !11903
  br label %.body.thread.thread.i.i.i.i.i.i.i

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtB4_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBN_6future17value_initializer11WaiterValueNtNtB1O_4moka14MokaCacheEntryEEEEE3newB1Q_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rp, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !11903
  %i.rv = ptrtoint ptr %i.rp to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11900
  br label %_RNvMs5_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB5_19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtB1N_4moka14MokaCacheEntryEEENCNvMs_NtB9_7segmentINtB67_7HashMapB1a_B3h_E21insert_if_not_present0E18into_insert_bucketB1P_.exit.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dh
  %.sroa.729.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.729.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !11895, !noalias !11891, !nonnull !23, !noundef !23
  %i.rw = and i64 %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i, -8
  %i.rx = inttoptr i64 %i.rw to ptr
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 24 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !noalias !11903, !nonnull !23, !noundef !23 ; 8 uses
  store ptr %.sroa.729.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ry, align 8, !noalias !11903
  %i.sa = atomicrmw add ptr %i.rz, i32 -1 release, align 4, !noalias !11903
  %i.sb = icmp eq i32 %i.sa, 1
  br i1 %i.sb, label %bb.dn, label %_RNvMs5_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB5_19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtB1N_4moka14MokaCacheEntryEEENCNvMs_NtB9_7segmentINtB67_7HashMapB1a_B3h_E21insert_if_not_present0E18into_insert_bucketB1P_.exit.i.i.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  fence acquire, !noalias !11905
  call void @llvm.experimental.noalias.scope.decl(metadata !11906), !noalias !11905
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11907), !noalias !11905
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjMQ83FLvXnF_10async_lock6rwlock3raw9RawRwLockECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.sc)
          to label %bb.dp unwind label %bb.do, !noalias !11903

bb.do:                                            ; preds = %bb.dn
  %i.sd = landingpad { ptr, i32 }
          cleanup
  %i.se = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB29_(ptr noalias noundef align 8 dereferenceable(32) %i.se) #69
          to label %.body42.i.i.i.i.i.i.i unwind label %bb.dt, !noalias !11903

bb.dp:                                            ; preds = %bb.dn
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !11908), !noalias !11905
  call void @llvm.experimental.noalias.scope.decl(metadata !11909), !noalias !11905
  %i.sg = load i64, ptr %i.sf, align 8, !range !53, !alias.scope !11910, !noalias !11903, !noundef !23
  %i.sh = icmp eq i64 %i.sg, 1
  br i1 %i.sh, label %bb.dq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEEB3K_.exit.i.i.i.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.si = getelementptr inbounds nuw i8, ptr %i.rz, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11911), !noalias !11905
  %i.sj = load ptr, ptr %i.si, align 8, !alias.scope !11912, !noalias !11903, !noundef !23 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.sj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sk = atomicrmw add ptr %i.sj, i64 -1 release, align 8, !noalias !11913
  %i.sl = icmp eq i64 %i.sk, 1
  br i1 %i.sl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEEB3K_.exit.i.i.i.i.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rz, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11914), !noalias !11905
  call void @llvm.experimental.noalias.scope.decl(metadata !11915), !noalias !11905
  %i.sn = load ptr, ptr %i.sm, align 8, !alias.scope !11916, !noalias !11903, !nonnull !23, !noundef !23
  %i.so = atomicrmw add ptr %i.sn, i64 -1 release, align 8, !noalias !11917
  %i.sp = icmp eq i64 %i.so, 1
  br i1 %i.sp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEEB3K_.exit.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ds, %bb.dr
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.si, %bb.dr ], [ %i.sm, %bb.ds ]
  fence acquire, !noalias !11905
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEEB3K_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.du, !noalias !11903

bb.dt:                                            ; preds = %bb.do
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !11903
  unreachable

bb.du:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %.body42.i.i.i.i.i.i.i

.body42.i.i.i.i.i.i.i:                            ; preds = %bb.du, %bb.do
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.sr, %bb.du ], [ %i.sd, %bb.do ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rz, i64 noundef 80, i64 noundef 8) #65, !noalias !11903
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2P_4moka14MokaCacheEntryEEEEEEB2R_(i64 %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i) #69, !noalias !11903
  br label %.body.thread.thread.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEEB3K_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ds, %bb.dr, %bb.dp
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rz, i64 noundef 80, i64 noundef 8) #65, !noalias !11903
  br label %_RNvMs5_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB5_19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtB1N_4moka14MokaCacheEntryEEENCNvMs_NtB9_7segmentINtB67_7HashMapB1a_B3h_E21insert_if_not_present0E18into_insert_bucketB1P_.exit.i.i.i.i.i.i.i.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dg
  %i.ss = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.02.0.val.i.i.i.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ss, align 1, !noalias !11896, !noundef !23
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.st, align 1, !noalias !11896, !noundef !23
  %.not.i19.i.i.i.i.i.i.i.i = icmp ne i128 %.val.i.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i
  %i.su = icmp ne i128 %.val17.i.i.i.i.i.i.i.i, %.sroa.02.0.val18.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i19.i.i.i.i.i.i.i.i, i1 true, i1 %i.su
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i.i.backedge, label %bb.dv

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dg
  %.old.not.i.i.i.i.i.i.i.i = icmp eq i128 %.val17.i.i.i.i.i.i.i.i, %.sroa.02.0.val18.i.i.i.i.i.i.i.i
  br i1 %.old.not.i.i.i.i.i.i.i.i, label %bb.dv, label %.backedge.i.i.i.i.i.i.i.i.backedge

bb.dv:                                            ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i.i.i.i.i.i.i.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i.i.i.i.i.i.i.i
  %i.sv = and i64 %i.rb, 2
  %i.sw = icmp eq i64 %i.sv, 0
  br i1 %i.sw, label %bb.dw, label %bb.dh

bb.dw:                                            ; preds = %bb.dv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBK_6future17value_initializer11WaiterValueNtNtB2g_4moka14MokaCacheEntryEEENCNvMs_NtBI_7segmentINtB6k_7HashMapB1D_B3u_E21insert_if_not_present0EEB2i_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.thread.i.i.i.i.i.i.i unwind label %.body.thread.thread78.i.i.i.i.i.i.i, !noalias !11892

_RNvMs5_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB5_19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtB1N_4moka14MokaCacheEntryEEENCNvMs_NtB9_7segmentINtB67_7HashMapB1a_B3h_E21insert_if_not_present0E18into_insert_bucketB1P_.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEEB3K_.exit.i.i.i.i.i.i.i.i.i, %bb.dm, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtB4_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBN_6future17value_initializer11WaiterValueNtNtB1O_4moka14MokaCacheEntryEEEEE3newB1Q_.exit.i.i.i.i.i.i.i.i.i, %bb.dh
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rv, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtB4_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBN_6future17value_initializer11WaiterValueNtNtB1O_4moka14MokaCacheEntryEEEEE3newB1Q_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i, %bb.dh ], [ %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i, %bb.dm ], [ %.sroa.4.0.copyload.pre.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEEEB3K_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sx = cmpxchg weak ptr %.sroa.12.1.i.i.i.i.i.i.i.i, i64 %i.rb, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i acq_rel monotonic, align 8, !noalias !11918
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.sx, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB2q_.exit.i.i.i.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %_RNvMs5_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB5_19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtB1N_4moka14MokaCacheEntryEEENCNvMs_NtB9_7segmentINtB67_7HashMapB1a_B3h_E21insert_if_not_present0E18into_insert_bucketB1P_.exit.i.i.i.i.i.i.i.i
  store i64 1, ptr %i.u, align 8, !alias.scope !11895, !noalias !11891
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.qo, align 8, !alias.scope !11895, !noalias !11891
  br label %.backedge.i.i.i.i.i.i.i.i.backedge

.backedge.i.i.i.i.i.i.i.i.backedge:               ; preds = %bb.dx, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i.i.i.i.i.i.i.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.21.0.i.i.i.i.i.i.i.i.be = phi i1 [ true, %bb.dx ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i.i.i.i.i.i.i.i ], [ false, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i.i.i.i.i.i.i.i ]
  br label %.backedge.i.i.i.i.i.i.i.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB2q_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB5_19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtB1N_4moka14MokaCacheEntryEEENCNvMs_NtB9_7segmentINtB67_7HashMapB1a_B3h_E21insert_if_not_present0E18into_insert_bucketB1P_.exit.i.i.i.i.i.i.i.i
  %spec.select81.i.i.i.i.i.i.i = select i1 %.not13.i.i.i.i.i.i.i.i, i64 1, i64 2
  br label %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.thread.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.db
  %i.sy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket19InsertOrModifyStateTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBK_6future17value_initializer11WaiterValueNtNtB2g_4moka14MokaCacheEntryEEENCNvMs_NtBI_7segmentINtB6k_7HashMapB1D_B3u_E21insert_if_not_present0EEB2i_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v) #69
          to label %.body.thread.thread.i.i.i.i.i.i.i unwind label %bb.dz, !noalias !11892

bb.dz:                                            ; preds = %bb.dy
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !11896
  unreachable

bb.ea:                                            ; preds = %bb.cy
  %i.ta = invoke fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1I_(ptr noundef nonnull align 8 %.sroa.06.0.i.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.py, i8 noundef %i.qu)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11892 ; 2 uses

_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB2q_.exit.i.i.i.i.i.i.i.i, %bb.dw
  %.sroa.8.0.ph.i.i.i.i.i.i.i = phi i64 [ %spec.select81.i.i.i.i.i.i.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB2q_.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11891
  br label %.loopexit82.i.i.i.i.i.i.i

_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %._RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit_crit_edge.i.i.i.i.i.i.i
  %.sroa.045.0.copyload46.i.i.i.i.i.i.i = phi i64 [ %.sroa.045.0.copyload46.pre.i.i.i.i.i.i.i, %._RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit_crit_edge.i.i.i.i.i.i.i ], [ %.sroa.045.0.copyload46.pre167.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.tb = load <2 x i64>, ptr %i.qo, align 8, !alias.scope !11897, !noalias !11891 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.729.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !11897, !noalias !11891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11891
  %.not24.i.i.i.i.i.i.i = icmp eq i64 %.sroa.045.0.copyload46.i.i.i.i.i.i.i, -1
  br i1 %.not24.i.i.i.i.i.i.i, label %.loopexit82.i.i.i.i.i.i.i.loopexit, label %bb.eb

bb.eb:                                            ; preds = %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !11891
  store i64 %.sroa.045.0.copyload46.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !11891
  store <2 x i64> %i.tb, ptr %i.qm, align 8, !noalias !11891
  %i.tc = invoke fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1I_(ptr noundef nonnull align 8 %.sroa.06.0.i.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.py, i8 noundef 0)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11892 ; 2 uses

.loopexit82.i.i.i.i.i.i.i.loopexit:               ; preds = %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.i.i.i.i.i.i.i
  %i.td = extractelement <2 x i64> %i.tb, i64 1
  %i.te = extractelement <2 x i64> %i.tb, i64 0
  br label %.loopexit82.i.i.i.i.i.i.i

.loopexit82.i.i.i.i.i.i.i:                        ; preds = %.loopexit82.i.i.i.i.i.i.i.loopexit, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.thread.i.i.i.i.i.i.i
  %.sroa.8.072.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.ph.i.i.i.i.i.i.i, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.thread.i.i.i.i.i.i.i ], [ %i.te, %.loopexit82.i.i.i.i.i.i.i.loopexit ]
  %.sroa.11.171.i.i.i.i.i.i.i = phi i64 [ %i.rb, %_RINvMs0_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB6o_7HashMapB13_B3a_E21insert_if_not_present0EB1I_.exit.thread.i.i.i.i.i.i.i ], [ %i.td, %.loopexit82.i.i.i.i.i.i.i.loopexit ] ; 4 uses
  switch i64 %.sroa.8.072.i.i.i.i.i.i.i, label %default.unreachable.i.i.i.i.i.i.i [
    i64 0, label %bb.ee
    i64 1, label %bb.ec
    i64 2, label %bb.ed
  ]

default.unreachable.i.i.i.i.i.i.i:                ; preds = %.loopexit82.i.i.i.i.i.i.i
  unreachable

bb.ec:                                            ; preds = %.loopexit82.i.i.i.i.i.i.i
  %i.tf = atomicrmw add ptr %i.px, i64 1 monotonic, align 8, !noalias !11892 ; 0 uses
  br label %_RNCNvMs_NtNtCskTBvlRM5ILY_4moka3cht7segmentINtB6_7HashMapTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtB1w_4moka14MokaCacheEntryEEEE21insert_if_not_presents_0B1y_.exit.i.i.i.i.i.i.i

bb.ed:                                            ; preds = %.loopexit82.i.i.i.i.i.i.i
  %i.tg = and i64 %.sroa.11.171.i.i.i.i.i.i.i, 2
  %i.th = icmp eq i64 %i.tg, 0
  br i1 %i.th, label %.invoke.i.i.i.i.i.i.i, label %bb.ek, !prof !26

bb.ee:                                            ; preds = %.loopexit82.i.i.i.i.i.i.i
  %i.ti = and i64 %.sroa.11.171.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.tj = inttoptr i64 %i.ti to ptr
  %.not25.i.i.i.i.i.i.i = icmp eq i64 %i.ti, 0
  br i1 %.not25.i.i.i.i.i.i.i, label %bb.eg, label %bb.ef, !prof !26

bb.ef:                                            ; preds = %bb.ee
  %i.tk = and i64 %.sroa.11.171.i.i.i.i.i.i.i, 2
  %i.tl = icmp eq i64 %i.tk, 0
  br i1 %i.tl, label %bb.ei, label %.invoke.i.i.i.i.i.i.i, !prof !28

bb.eg:                                            ; preds = %bb.ee
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #68
          to label %bb.eh unwind label %.body.thread.thread78.i.i.i.i.i.i.i, !noalias !11892

bb.eh:                                            ; preds = %bb.eg
end_hunk_2
