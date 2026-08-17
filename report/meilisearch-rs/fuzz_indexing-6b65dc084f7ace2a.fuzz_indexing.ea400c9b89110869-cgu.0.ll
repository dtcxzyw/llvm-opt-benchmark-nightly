inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN13fuzz_indexing4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1e5e80819bd844c2E":bb.a

bb.df:                                            ; preds = %bb.de
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.body125

.body125:                                         ; preds = %bb.em, %.body.i.i.i.i, %bb.ek, %bb.df
  %.sroa.010.0.lpad-body = phi i1 [ false, %.body.i.i.i.i ], [ true, %bb.df ], [ false, %bb.ek ], [ false, %bb.em ]
  %eh.lpad-body126 = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.ma, %bb.df ], [ %.pn.i.i.i.i, %bb.ek ], [ %i.oe, %bb.em ] ; 2 uses
  call fastcc void @"_ZN4core3ptr79drop_in_place$LT$milli..search..new..matches..matching_words..MatchingWords$GT$17h6e8d5825b6724d48E"(ptr noalias noundef align 8 dereferenceable(160) %i.ao) #67
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE"(ptr noalias noundef align 8 dereferenceable(24) %i.fx) #67
  br i1 %.sroa.010.0.lpad-body, label %bb.gm, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17hb491892aeede4076E.exit"

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %.sroa.0549.0.copyload = load i64, ptr %i.fn, align 8 ; 7 uses
  %.sroa.4550.0.copyload = load ptr, ptr %.sroa.4550.0..sroa_idx, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %.sroa.5551.0.copyload = load i64, ptr %.sroa.5551.0..sroa_idx, align 8 ; 3 uses
  %i.mb = icmp ult i64 %.sroa.5551.0.copyload, 2305843009213693952
  call void @llvm.assume(i1 %i.mb)
  %.idx = shl nuw nsw i64 %.sroa.5551.0.copyload, 2
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.4550.0.copyload, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14625
  store i64 97, ptr %i.x, align 8, !noalias !14625
  call void @llvm.experimental.noalias.scope.decl(metadata !14640), !noalias !14643
  %.not33.i.i.i.i304 = icmp eq i64 %.sroa.5551.0.copyload, 0
  br i1 %.not33.i.i.i.i304, label %.loopexit705, label %.lr.ph.i.i.i.i305

.lr.ph.i.i.i.i305:                                ; preds = %bb.dg, %bb.do
  %i.md = phi ptr [ %i.mf, %bb.do ], [ %.sroa.4550.0.copyload, %bb.dg ] ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !noalias !14659, !noundef !27 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14671
  %.val.i.i.i.i.i.i317 = load i64, ptr %i.fo, align 8, !noalias !14671, !noundef !27
  %.val66.i.i.i.i.i.i318 = load i32, ptr %i.fp, align 8, !noalias !14671
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h9061af0c8659c789E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, i64 %.val.i.i.i.i.i.i317, i32 %.val66.i.i.i.i.i.i318, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce, i32 %i.me)
          to label %.noexc362 unwind label %.loopexit699

.noexc362:                                        ; preds = %.lr.ph.i.i.i.i305
  %i.mg = load i32, ptr %i.e, align 8, !range !10872, !noalias !14671, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i.i319 = icmp eq i32 %i.mg, 5
  br i1 %.not.i.i.i.i.i.i319, label %bb.dh, label %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.i.i.i.i.i320"

bb.dh:                                            ; preds = %.noexc362
  %i.mh = load ptr, ptr %.sroa.643.0..sroa_idx.i.i.i.i.i.i307, align 8, !noalias !14671, !align !242, !noundef !27 ; 2 uses
  %i.mi = load i64, ptr %.sroa.744.0..sroa_idx.i.i.i.i.i.i308, align 8, !noalias !14671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14671
  store i32 %i.me, ptr %i.fr, align 8, !noalias !14671
  store i64 64, ptr %i.d, align 8, !noalias !14671
  %.not65.i.i.i.i.i.i352 = icmp eq ptr %i.mh, null
  br i1 %.not65.i.i.i.i.i.i352, label %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i355", label %.thread.i.i.i.i.i353

.thread.i.i.i.i.i353:                             ; preds = %bb.dh
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h084a53795b6f807bE"(ptr noalias noundef align 8 dereferenceable(320) %i.d)
          to label %.noexc363 unwind label %.loopexit.split-lp700

.noexc363:                                        ; preds = %.thread.i.i.i.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14671
  store i32 %i.me, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i312, align 8, !noalias !14676
  %.sroa.4.0.copyload3.i.i.i.i.i354 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i312, align 8, !noalias !14676
  br label %.loopexit704

"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i355": ; preds = %bb.dh
  %.sroa.446.0.copyload.i.i.i.i.i.i356 = load ptr, ptr %i.fr, align 8, !noalias !14671
  %.sroa.547.0.copyload.i.i.i.i.i.i358 = load i64, ptr %.sroa.547.0..sroa_idx.i.i.i.i.i.i357, align 8, !noalias !14671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14671
  %.sroa.4.0.copyload16.cast.i.i.i.i.i359 = ptrtoint ptr %.sroa.446.0.copyload.i.i.i.i.i.i356 to i64
  %.sroa.6.0.copyload18.cast.i.i.i.i.i360 = inttoptr i64 %.sroa.547.0.copyload.i.i.i.i.i.i358 to ptr
  %.sroa.8.0.copyload20.i.i.i.i.i361 = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i314, align 8, !noalias !14676
  br label %.loopexit23.i.i.i.i329

"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.i.i.i.i.i320": ; preds = %.noexc362
  %.sroa.542.0.copyload.i.i.i.i.i.i321 = load i32, ptr %.sroa.542.0..sroa_idx.i.i.i.i.i.i306, align 4, !noalias !14671
  %.sroa.643.0.copyload.i.i.i.i.i.i322 = load ptr, ptr %.sroa.643.0..sroa_idx.i.i.i.i.i.i307, align 8, !noalias !14671
  %.sroa.744.0.copyload.i.i.i.i.i.i323 = load i64, ptr %.sroa.744.0..sroa_idx.i.i.i.i.i.i308, align 8, !noalias !14671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14671
  store i32 %i.mg, ptr %i.c, align 8, !noalias !14671
  store i32 %.sroa.542.0.copyload.i.i.i.i.i.i321, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i309, align 4, !noalias !14671
  store ptr %.sroa.643.0.copyload.i.i.i.i.i.i322, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i310, align 8, !noalias !14671
  store i64 %.sroa.744.0.copyload.i.i.i.i.i.i323, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i311, align 8, !noalias !14671
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc364 unwind label %.loopexit699

.noexc364:                                        ; preds = %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.i.i.i.i.i320"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14671
  %.sroa.0.0.copyload.pr.i.i.i.i.i324 = load i64, ptr %i.f, align 8, !noalias !14676 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i325 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i312, align 8, !noalias !14676 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i.i326 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i313, align 8, !noalias !14676 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i327 = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i314, align 8, !noalias !14676 ; 2 uses
  %.not.i.i.i.i.i.i.i328 = icmp eq i64 %.sroa.0.0.copyload.pr.i.i.i.i.i324, 97
  br i1 %.not.i.i.i.i.i.i.i328, label %bb.dm, label %.loopexit23.i.i.i.i329

.loopexit23.i.i.i.i329:                           ; preds = %.noexc364, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i355"
  %.sroa.8.0.copyload26.i.i.i.i.i330 = phi i64 [ %.sroa.8.0.copyload20.i.i.i.i.i361, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i355" ], [ %.sroa.8.0.copyload.i.i.i.i.i327, %.noexc364 ] ; 2 uses
  %.sroa.6.0.copyload25.i.i.i.i.i331 = phi ptr [ %.sroa.6.0.copyload18.cast.i.i.i.i.i360, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i355" ], [ %.sroa.6.0.copyload.i.i.i.i.i326, %.noexc364 ] ; 2 uses
  %.sroa.4.0.copyload24.i.i.i.i.i332 = phi i64 [ %.sroa.4.0.copyload16.cast.i.i.i.i.i359, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i355" ], [ %.sroa.4.0.copyload.i.i.i.i.i325, %.noexc364 ] ; 2 uses
  %.sroa.0.0.copyload23.i.i.i.i.i333 = phi i64 [ 64, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i355" ], [ %.sroa.0.0.copyload.pr.i.i.i.i.i324, %.noexc364 ] ; 2 uses
  %i.mj = load i64, ptr %i.x, align 8, !range !4698, !alias.scope !14677, !noalias !14680, !noundef !27 ; 3 uses
  %i.mk = icmp eq i64 %i.mj, 97
  br i1 %i.mk, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i338", label %bb.di

bb.di:                                            ; preds = %.loopexit23.i.i.i.i329
  %i.ml = add nsw i64 %i.mj, -95
  %i.mm = icmp samesign ugt i64 %i.mj, 94
  %i.mn = select i1 %i.mm, i64 %i.ml, i64 2
  switch i64 %i.mn, label %bb.dj [
    i64 0, label %bb.dk
    i64 1, label %bb.dl
  ]

bb.dj:                                            ; preds = %bb.di
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h084a53795b6f807bE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.x)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i338" unwind label %bb.dn, !noalias !14680

bb.dk:                                            ; preds = %bb.di
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$milli..error..InternalError$GT$17h575c0a4ef19d4e01E"(ptr noalias noundef align 8 dereferenceable(72) %i.fu)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i338" unwind label %bb.dn, !noalias !14680

bb.dl:                                            ; preds = %bb.di
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h90e9c3833ce89d63E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i338" unwind label %bb.dn, !noalias !14680

bb.dm:                                            ; preds = %.noexc364
  %.not.i6.i.i.i.i.i.i344 = icmp eq ptr %.sroa.6.0.copyload.i.i.i.i.i326, null
  br i1 %.not.i6.i.i.i.i.i.i344, label %bb.do, label %.loopexit704

bb.dn:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %i.mo = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload23.i.i.i.i.i333, ptr %i.x, align 8, !alias.scope !14640, !noalias !14680
  store i64 %.sroa.4.0.copyload24.i.i.i.i.i332, ptr %i.fu, align 8, !alias.scope !14640, !noalias !14680
  store ptr %.sroa.6.0.copyload25.i.i.i.i.i331, ptr %.sroa.6.0..8.val.sroa_idx30.i.i.i.i.i.i, align 8, !alias.scope !14640, !noalias !14680
  store i64 %.sroa.8.0.copyload26.i.i.i.i.i330, ptr %.sroa.7.0..8.val.sroa_idx32.i.i.i.i.i.i, align 8, !alias.scope !14640, !noalias !14680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.834.0..8.val.sroa_idx35.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.fq, i64 288, i1 false), !noalias !14684
  br label %.body365

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14659
  %.not.i.i.i.i351 = icmp eq ptr %i.mf, %i.mc
  br i1 %.not.i.i.i.i351, label %.loopexit705, label %.lr.ph.i.i.i.i305

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i338": ; preds = %bb.dl, %bb.dk, %bb.dj, %.loopexit23.i.i.i.i329
  store i64 %.sroa.0.0.copyload23.i.i.i.i.i333, ptr %i.x, align 8, !alias.scope !14640, !noalias !14680
  store i64 %.sroa.4.0.copyload24.i.i.i.i.i332, ptr %i.fu, align 8, !alias.scope !14640, !noalias !14680
  store ptr %.sroa.6.0.copyload25.i.i.i.i.i331, ptr %.sroa.6.0..8.val.sroa_idx30.i.i.i.i.i.i, align 8, !alias.scope !14640, !noalias !14680
  store i64 %.sroa.8.0.copyload26.i.i.i.i.i330, ptr %.sroa.7.0..8.val.sroa_idx32.i.i.i.i.i.i, align 8, !alias.scope !14640, !noalias !14680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.834.0..8.val.sroa_idx35.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.fq, i64 288, i1 false), !noalias !14684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14659
  br label %.loopexit705

.loopexit699:                                     ; preds = %.lr.ph.i.i.i.i305, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.i.i.i.i.i320"
  %lpad.loopexit701 = landingpad { ptr, i32 }
          cleanup
  br label %.body365

.loopexit.split-lp700:                            ; preds = %.thread.i.i.i.i.i353
  %lpad.loopexit.split-lp702 = landingpad { ptr, i32 }
          cleanup
  br label %.body365

.loopexit705:                                     ; preds = %bb.do, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i338", %bb.dg
  %i.mp = icmp eq i64 %.sroa.0549.0.copyload, 0
  br i1 %i.mp, label %bb.eg, label %.sink.split

bb.dp:                                            ; preds = %bb.dq
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %.body365

.loopexit704:                                     ; preds = %bb.dm, %.noexc363
  %.sroa.8.1.ph.i.i.i.ph.i346 = phi i64 [ %i.mi, %.noexc363 ], [ %.sroa.8.0.copyload.i.i.i.i.i327, %bb.dm ]
  %.sroa.6.1.ph.i.i.i.ph.i347 = phi ptr [ %i.mh, %.noexc363 ], [ %.sroa.6.0.copyload.i.i.i.i.i326, %bb.dm ]
  %.sroa.4.1.ph.i.i.i.ph.i348 = phi i64 [ %.sroa.4.0.copyload3.i.i.i.i.i354, %.noexc363 ], [ %.sroa.4.0.copyload.i.i.i.i.i325, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14659
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !14685
  %i.mr = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #65, !noalias !14685 ; 7 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.loopexit704
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #66
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.dp, !noalias !14693

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.dq
  unreachable

bb.dr:                                            ; preds = %.loopexit704
  store i64 %.sroa.4.1.ph.i.i.i.ph.i348, ptr %i.mr, align 8, !noalias !14693
  %.sroa.4565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store ptr %.sroa.6.1.ph.i.i.i.ph.i347, ptr %.sroa.4565.0..sroa_idx, align 8, !noalias !14693
  %.sroa.7566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store i64 %.sroa.8.1.ph.i.i.i.ph.i346, ptr %.sroa.7566.0..sroa_idx, align 8, !noalias !14693
  %.not33.i.i.i.i1143 = icmp eq ptr %i.mf, %i.mc
  br i1 %.not33.i.i.i.i1143, label %.loopexit693, label %.lr.ph.i.i.i.i294

.lr.ph.i.i.i.i294:                                ; preds = %bb.dr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.10.0.copyload15.i.i.i.i1147 = phi i64 [ %1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.dr ] ; 9 uses
  %i.mt = phi ptr [ %i.nl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mr, %bb.dr ]
  %.sroa.5568.01146 = phi ptr [ %i.mw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mf, %bb.dr ]
  %.sroa.9563.01145 = phi ptr [ %.sroa.9563.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mr, %bb.dr ] ; 6 uses
  %.sroa.0559.01144 = phi i64 [ %.sroa.0559.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 4, %bb.dr ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14694), !noalias !14697
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ea, %.lr.ph.i.i.i.i294
  %i.mu = phi ptr [ %.sroa.5568.01146, %.lr.ph.i.i.i.i294 ], [ %i.mw, %bb.ea ] ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !noalias !14702, !noundef !27 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14714
  %.val.i.i.i.i.i.i = load i64, ptr %i.fo, align 8, !noalias !14714, !noundef !27
  %.val66.i.i.i.i.i.i = load i32, ptr %i.fp, align 8, !noalias !14714
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h9061af0c8659c789E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, i64 %.val.i.i.i.i.i.i, i32 %.val66.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce, i32 %i.mv)
          to label %.noexc298 unwind label %.loopexit688

.noexc298:                                        ; preds = %bb.ds
  %i.mx = load i32, ptr %i.i, align 8, !range !10872, !noalias !14714, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.mx, 5
  br i1 %.not.i.i.i.i.i.i, label %bb.dt, label %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.i.i.i.i.i"

bb.dt:                                            ; preds = %.noexc298
  %i.my = load ptr, ptr %.sroa.643.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14714, !align !242, !noundef !27 ; 2 uses
  %i.mz = load i64, ptr %.sroa.744.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14714
  store i32 %i.mv, ptr %i.fs, align 8, !noalias !14714
  store i64 64, ptr %i.h, align 8, !noalias !14714
  %.not65.i.i.i.i.i.i = icmp eq ptr %i.my, null
  br i1 %.not65.i.i.i.i.i.i, label %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i", label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.dt
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h084a53795b6f807bE"(ptr noalias noundef align 8 dereferenceable(320) %i.h)
          to label %.noexc299 unwind label %.loopexit.split-lp689

.noexc299:                                        ; preds = %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14714
  store i32 %i.mv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14719
  %.sroa.4.0.copyload3.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14719
  br label %.loopexit692

"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i": ; preds = %bb.dt
  %.sroa.446.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.fs, align 8, !noalias !14714
  %.sroa.547.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.547.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14714
  %.sroa.4.0.copyload16.cast.i.i.i.i.i = ptrtoint ptr %.sroa.446.0.copyload.i.i.i.i.i.i to i64
  %.sroa.6.0.copyload18.cast.i.i.i.i.i = inttoptr i64 %.sroa.547.0.copyload.i.i.i.i.i.i to ptr
  %.sroa.8.0.copyload20.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14719
  br label %.loopexit23.i.i.i.i

"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.i.i.i.i.i": ; preds = %.noexc298
  %.sroa.542.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.542.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !14714
  %.sroa.643.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.643.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14714
  %.sroa.744.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.744.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14714
  store i32 %i.mx, ptr %i.g, align 8, !noalias !14714
  store i32 %.sroa.542.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !14714
  store ptr %.sroa.643.0.copyload.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14714
  store i64 %.sroa.744.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14714
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc300 unwind label %.loopexit688

.noexc300:                                        ; preds = %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14714
  %.sroa.0.0.copyload.pr.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !14719 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14719 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14719 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14719 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i.i.i.i, 97
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dy, label %.loopexit23.i.i.i.i

.loopexit23.i.i.i.i:                              ; preds = %.noexc300, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i"
  %.sroa.8.0.copyload26.i.i.i.i.i = phi i64 [ %.sroa.8.0.copyload20.i.i.i.i.i, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i" ], [ %.sroa.8.0.copyload.i.i.i.i.i, %.noexc300 ] ; 2 uses
  %.sroa.6.0.copyload25.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload18.cast.i.i.i.i.i, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i" ], [ %.sroa.6.0.copyload.i.i.i.i.i, %.noexc300 ] ; 2 uses
  %.sroa.4.0.copyload24.i.i.i.i.i = phi i64 [ %.sroa.4.0.copyload16.cast.i.i.i.i.i, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i" ], [ %.sroa.4.0.copyload.i.i.i.i.i, %.noexc300 ] ; 2 uses
  %.sroa.0.0.copyload23.i.i.i.i.i = phi i64 [ 64, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.thread13.i.i.i.i.i" ], [ %.sroa.0.0.copyload.pr.i.i.i.i.i, %.noexc300 ] ; 2 uses
  %i.na = load i64, ptr %i.x, align 8, !range !4698, !alias.scope !14720, !noalias !14723, !noundef !27 ; 3 uses
  %i.nb = icmp eq i64 %i.na, 97
  br i1 %i.nb, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i", label %bb.du

bb.du:                                            ; preds = %.loopexit23.i.i.i.i
  %i.nc = add nsw i64 %i.na, -95
  %i.nd = icmp samesign ugt i64 %i.na, 94
  %i.ne = select i1 %i.nd, i64 %i.nc, i64 2
  switch i64 %i.ne, label %bb.dv [
    i64 0, label %bb.dw
    i64 1, label %bb.dx
  ]

bb.dv:                                            ; preds = %bb.du
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h084a53795b6f807bE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.x)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i" unwind label %bb.dz, !noalias !14723

bb.dw:                                            ; preds = %bb.du
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$milli..error..InternalError$GT$17h575c0a4ef19d4e01E"(ptr noalias noundef align 8 dereferenceable(72) %i.fu)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i" unwind label %bb.dz, !noalias !14723

bb.dx:                                            ; preds = %bb.du
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h90e9c3833ce89d63E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i" unwind label %bb.dz, !noalias !14723

bb.dy:                                            ; preds = %.noexc300
  %.not.i6.i.i.i.i.i.i = icmp eq ptr %.sroa.6.0.copyload.i.i.i.i.i, null
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.ea, label %.loopexit692

bb.dz:                                            ; preds = %bb.dx, %bb.dw, %bb.dv
  %i.nf = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload23.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !14694, !noalias !14723
  store i64 %.sroa.4.0.copyload24.i.i.i.i.i, ptr %i.fu, align 8, !alias.scope !14694, !noalias !14723
  store ptr %.sroa.6.0.copyload25.i.i.i.i.i, ptr %.sroa.6.0..8.val.sroa_idx30.i.i.i.i.i.i, align 8, !alias.scope !14694, !noalias !14723
  store i64 %.sroa.8.0.copyload26.i.i.i.i.i, ptr %.sroa.7.0..8.val.sroa_idx32.i.i.i.i.i.i, align 8, !alias.scope !14694, !noalias !14723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.834.0..8.val.sroa_idx35.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.ft, i64 288, i1 false), !noalias !14727
  br label %.body301

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14702
  %.not.i.i.i.i297 = icmp eq ptr %i.mw, %i.mc
  br i1 %.not.i.i.i.i297, label %.loopexit693, label %bb.ds

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i": ; preds = %bb.dx, %bb.dw, %bb.dv, %.loopexit23.i.i.i.i
  store i64 %.sroa.0.0.copyload23.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !14694, !noalias !14723
  store i64 %.sroa.4.0.copyload24.i.i.i.i.i, ptr %i.fu, align 8, !alias.scope !14694, !noalias !14723
  store ptr %.sroa.6.0.copyload25.i.i.i.i.i, ptr %.sroa.6.0..8.val.sroa_idx30.i.i.i.i.i.i, align 8, !alias.scope !14694, !noalias !14723
  store i64 %.sroa.8.0.copyload26.i.i.i.i.i, ptr %.sroa.7.0..8.val.sroa_idx32.i.i.i.i.i.i, align 8, !alias.scope !14694, !noalias !14723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.834.0..8.val.sroa_idx35.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.ft, i64 288, i1 false), !noalias !14727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14702
  br label %.loopexit693

.body301:                                         ; preds = %.loopexit688, %.loopexit.split-lp689, %bb.dz, %bb.ec
  %.sroa.0559.011441399 = phi i64 [ %.sroa.10.0.copyload15.i.i.i.i1147, %bb.ec ], [ %.sroa.0559.01144, %bb.dz ], [ %.sroa.0559.01144, %.loopexit688 ], [ %.sroa.0559.01144, %.loopexit.split-lp689 ] ; 2 uses
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.nn, %bb.ec ], [ %i.nf, %bb.dz ], [ %lpad.loopexit690, %.loopexit688 ], [ %lpad.loopexit.split-lp691, %.loopexit.split-lp689 ] ; 2 uses
  %i.ng = icmp eq i64 %.sroa.0549.0.copyload, 0
  br i1 %i.ng, label %.body.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %.body301
  %i.nh = shl nuw i64 %.sroa.0549.0.copyload, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4550.0.copyload, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 4) #65, !noalias !14728
  br label %.body.i.i.i.i.i.i.i.i.i.i

.loopexit688:                                     ; preds = %bb.ds, %"_ZN5milli5index5Index14iter_documents28_$u7b$$u7b$closure$u7d$$u7d$17h766335ebf554e4c4E.exit.i.i.i.i.i"
  %lpad.loopexit690 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

.loopexit.split-lp689:                            ; preds = %.thread.i.i.i.i.i
  %lpad.loopexit.split-lp691 = landingpad { ptr, i32 }
          cleanup
  br label %.body301

.loopexit692:                                     ; preds = %bb.dy, %.noexc299
  %.sroa.8.1.ph.i.i.i.ph.i = phi i64 [ %i.mz, %.noexc299 ], [ %.sroa.8.0.copyload.i.i.i.i.i, %bb.dy ]
  %.sroa.6.1.ph.i.i.i.ph.i = phi ptr [ %i.my, %.noexc299 ], [ %.sroa.6.0.copyload.i.i.i.i.i, %bb.dy ]
  %.sroa.4.1.ph.i.i.i.ph.i = phi i64 [ %.sroa.4.0.copyload3.i.i.i.i.i, %.noexc299 ], [ %.sroa.4.0.copyload.i.i.i.i.i, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14702
  %i.ni = icmp samesign ult i64 %.sroa.10.0.copyload15.i.i.i.i1147, 384307168202282326
  call void @llvm.assume(i1 %i.ni)
  %i.nj = icmp eq i64 %.sroa.10.0.copyload15.i.i.i.i1147, %.sroa.0559.01144
  br i1 %i.nj, label %bb.ed, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.loopexit693:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ea, %bb.dr, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i"
  %.sroa.0559.01019 = phi i64 [ %.sroa.0559.01144, %bb.ea ], [ %.sroa.0559.01144, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i" ], [ 4, %bb.dr ], [ %.sroa.0559.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.9563.01009 = phi ptr [ %.sroa.9563.01145, %bb.ea ], [ %.sroa.9563.01145, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he6525e40efea3fadE.exit.i" ], [ %i.mr, %bb.dr ], [ %.sroa.9563.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.nk = icmp eq i64 %.sroa.0549.0.copyload, 0
  br i1 %i.nk, label %bb.eg, label %.sink.split

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit, %.loopexit692
  %.sroa.0559.1 = phi i64 [ %.sroa.0559.01144, %.loopexit692 ], [ %.sroa.0.0.i32.i.i, %_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit ] ; 2 uses
  %.sroa.9563.1 = phi ptr [ %.sroa.9563.01145, %.loopexit692 ], [ %i.ns, %_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit ] ; 2 uses
  %i.nl = phi ptr [ %i.mt, %.loopexit692 ], [ %i.ns, %_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %i.nl, i64 %.sroa.10.0.copyload15.i.i.i.i1147 ; 3 uses
  store i64 %.sroa.4.1.ph.i.i.i.ph.i, ptr %i.nm, align 8, !noalias !14733
  %.sroa.4573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store ptr %.sroa.6.1.ph.i.i.i.ph.i, ptr %.sroa.4573.0..sroa_idx, align 8, !noalias !14733
  %.sroa.7574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store i64 %.sroa.8.1.ph.i.i.i.ph.i, ptr %.sroa.7574.0..sroa_idx, align 8, !noalias !14733
  %1 = add nuw nsw i64 %.sroa.10.0.copyload15.i.i.i.i1147, 1
  %.not33.i.i.i.i = icmp eq ptr %i.mw, %i.mc
  br i1 %.not33.i.i.i.i, label %.loopexit693, label %.lr.ph.i.i.i.i294

bb.ec:                                            ; preds = %.split.loop.exit1136
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body301

bb.ed:                                            ; preds = %.loopexit692
  %i.no = icmp samesign ugt i64 %.sroa.10.0.copyload15.i.i.i.i1147, 192153584101141162
  br i1 %i.no, label %.split.loop.exit1136, label %_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit, !prof !4065

_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit: ; preds = %bb.ed
  %2 = shl nuw nsw i64 %.sroa.10.0.copyload15.i.i.i.i1147, 1
  %.sroa.0.0.i32.i.i = call noundef i64 @llvm.umax.i64(i64 %2, i64 4) ; 3 uses
  %i.np = mul nuw nsw i64 %.sroa.0.0.i32.i.i, 24  ; 2 uses
  %i.nq = mul nuw nsw i64 %.sroa.10.0.copyload15.i.i.i.i1147, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9563.01145) ]
  %i.nr = icmp samesign uge i64 %.sroa.0.0.i32.i.i, %.sroa.10.0.copyload15.i.i.i.i1147
  call void @llvm.assume(i1 %i.nr), !noalias !14734
  %i.ns = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.9563.01145, i64 noundef %i.nq, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef %i.np) #65, !noalias !14739 ; 3 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %.split.loop.exit1136, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0c5c5fde6a7785ccE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.split.loop.exit1136:                             ; preds = %bb.ed, %_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit
  %.sroa.6.0.i.ph.i = phi i64 [ %i.np, %_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit ], [ undef, %bb.ed ]
  %.sroa.04.0.i.ph.i = phi i64 [ 8, %_ZN5alloc7raw_vec11finish_grow17h6451728e2875e0eaE.exit ], [ 0, %bb.ed ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph.i, i64 %.sroa.6.0.i.ph.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @764) #66
          to label %.noexc293 unwind label %bb.ec

.noexc293:                                        ; preds = %.split.loop.exit1136
  unreachable

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.eb, %.body301
  %i.nu = icmp eq i64 %.sroa.0559.011441399, 0
  br i1 %i.nu, label %.body.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i
  %i.nv = mul nuw i64 %.sroa.0559.011441399, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9563.01145, i64 noundef %i.nv, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !14693
  br label %.body.i.i.i.i

.body365:                                         ; preds = %.loopexit699, %.loopexit.split-lp700, %bb.dn, %bb.dp
  %.pn.ph.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mq, %bb.dp ], [ %i.mo, %bb.dn ], [ %lpad.loopexit701, %.loopexit699 ], [ %lpad.loopexit.split-lp702, %.loopexit.split-lp700 ] ; 2 uses
  %i.nw = icmp eq i64 %.sroa.0549.0.copyload, 0
  br i1 %i.nw, label %.body.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %.body365
  %i.nx = shl nuw i64 %.sroa.0549.0.copyload, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4550.0.copyload, i64 noundef %i.nx, i64 noundef range(i64 1, -9223372036854775807) 4) #65, !noalias !14743
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ef, %.body365, %bb.ee, %.body.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i.i.i.i.i, %.body365 ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ee ], [ %.pn.ph.i.i.i.i.i.i.i.i.i.i, %bb.ef ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ny = load i64, ptr %i.x, align 8, !range !4698, !noalias !14625, !noundef !27
  %.not.i.i.i.i = icmp eq i64 %i.ny, 97
  br i1 %.not.i.i.i.i, label %.body125, label %bb.ek

.sink.split:                                      ; preds = %.loopexit693, %.loopexit705
  %.sroa.7.0.i.i.i.i.ph = phi ptr [ inttoptr (i64 8 to ptr), %.loopexit705 ], [ %.sroa.9563.01009, %.loopexit693 ]
  %.sroa.010.0.i.i.i.i.ph = phi i64 [ 0, %.loopexit705 ], [ %.sroa.0559.01019, %.loopexit693 ]
  %i.nz = shl nuw i64 %.sroa.0549.0.copyload, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4550.0.copyload, i64 noundef %i.nz, i64 noundef range(i64 1, -9223372036854775807) 4) #65, !noalias !14693
  br label %bb.eg

bb.eg:                                            ; preds = %.sink.split, %.loopexit693, %.loopexit705
  %.sroa.7.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %.loopexit705 ], [ %.sroa.9563.01009, %.loopexit693 ], [ %.sroa.7.0.i.i.i.i.ph, %.sink.split ] ; 4 uses
  %.sroa.010.0.i.i.i.i = phi i64 [ 0, %.loopexit705 ], [ %.sroa.0559.01019, %.loopexit693 ], [ %.sroa.010.0.i.i.i.i.ph, %.sink.split ] ; 4 uses
  %i.oa = load i64, ptr %i.x, align 8, !range !4698, !noalias !14625, !noundef !27 ; 2 uses
  %.not.not.i.i.i.i = icmp eq i64 %i.oa, 97
  br i1 %.not.not.i.i.i.i, label %bb.ep, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.sroa.6.0.copyload540 = load i64, ptr %i.fu, align 8, !noalias !14746
  %.sroa.8.0.copyload543 = load ptr, ptr %.sroa.6.0..8.val.sroa_idx30.i.i.i.i.i.i, align 8, !noalias !14746
  %.sroa.10.0.copyload546 = load i64, ptr %.sroa.7.0..8.val.sroa_idx32.i.i.i.i.i.i, align 8, !noalias !14746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.834.0..8.val.sroa_idx35.i.i.i.i.i.i, i64 288, i1 false), !noalias !14746
  %i.ob = icmp eq i64 %.sroa.010.0.i.i.i.i, 0
  br i1 %i.ob, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.oc = mul nuw i64 %.sroa.010.0.i.i.i.i, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i.i, i64 noundef %i.oc, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !14747
  br label %bb.el

bb.ej:                                            ; preds = %bb.ek
  %i.od = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !14747
  unreachable

bb.ek:                                            ; preds = %.body.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$milli..error..Error$GT$$GT$17hbe82c20b23019ef1E"(ptr noalias noundef align 8 dereferenceable(320) %i.x) #67
          to label %.body125 unwind label %bb.ej, !noalias !14747

bb.el:                                            ; preds = %bb.eh, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14748
  store i64 %i.oa, ptr %i.ac, align 8, !noalias !14752
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.6.0.copyload540, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !14752
  %.sroa.8.0..sroa_idx541 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %.sroa.8.0.copyload543, ptr %.sroa.8.0..sroa_idx541, align 8, !noalias !14752
  %.sroa.10.0..sroa_idx544 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %.sroa.10.0.copyload546, ptr %.sroa.10.0..sroa_idx544, align 8, !noalias !14752
  %.sroa.12.0..sroa_idx547 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.12.0..sroa_idx547, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.12, i64 288, i1 false), !noalias !14752
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 43, ptr noundef nonnull align 1 %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @459, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #66
          to label %bb.en unwind label %bb.em, !noalias !14748

bb.em:                                            ; preds = %bb.el
  %i.oe = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$milli..error..Error$GT$17h0f9a966a2c20178aE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.ac) #67
          to label %.body125 unwind label %bb.eo, !noalias !14748

bb.en:                                            ; preds = %bb.el
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !14748
  unreachable

bb.ep:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14625
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.og = icmp eq i64 %.sroa.010.0.i.i.i.i, 0
  br i1 %i.og, label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$RF$obkv..KvReader$LT$u16$GT$$RP$$GT$$GT$17h51d1eb0a5af2535fE.exit", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.oh = mul nuw i64 %.sroa.010.0.i.i.i.i, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i.i, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$RF$obkv..KvReader$LT$u16$GT$$RP$$GT$$GT$17h51d1eb0a5af2535fE.exit"

"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$RF$obkv..KvReader$LT$u16$GT$$RP$$GT$$GT$17h51d1eb0a5af2535fE.exit": ; preds = %bb.eq, %bb.ep
  %i.oi = atomicrmw add ptr %i.fw, i64 1 monotonic, align 8 ; 0 uses
  call fastcc void @"_ZN4core3ptr79drop_in_place$LT$milli..search..new..matches..matching_words..MatchingWords$GT$17h6e8d5825b6724d48E"(ptr noalias noundef align 8 dereferenceable(160) %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !14753)
  call void @llvm.experimental.noalias.scope.decl(metadata !14756)
  %.val.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !14759, !nonnull !27, !noundef !27 ; 2 uses
  %.val1.i.i = load i64, ptr %i.fz, align 8, !alias.scope !14759, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14760)
  %i.oj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.oj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$RF$obkv..KvReader$LT$u16$GT$$RP$$GT$$GT$17h51d1eb0a5af2535fE.exit", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.ol, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$RF$obkv..KvReader$LT$u16$GT$$RP$$GT$$GT$17h51d1eb0a5af2535fE.exit" ] ; 2 uses
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.ol = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.ok, align 8, !range !8078, !alias.scope !14760, !noalias !14759, !noundef !27 ; 2 uses
  %i.om = getelementptr i8, ptr %i.ok, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.om, align 8, !alias.scope !14760, !noalias !14759 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.er [
    i64 -9223372036854775808, label %bb.es
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i"
  ]

bb.er:                                            ; preds = %.lr.ph.i.i.i.i
  %i.on = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.on, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !14763
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i"

bb.es:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !14763
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i": ; preds = %bb.es, %bb.er, %.lr.ph.i.i.i.i
  %i.oo = icmp eq i64 %i.ol, %.val1.i.i
  br i1 %i.oo, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i", %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$RF$obkv..KvReader$LT$u16$GT$$RP$$GT$$GT$17h51d1eb0a5af2535fE.exit"
  %.val2.i.i = load i64, ptr %i.fx, align 8, !range !28, !alias.scope !14759, !noundef !27 ; 2 uses
  %i.op = icmp eq i64 %.val2.i.i, 0
  br i1 %i.op, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit", label %bb.et

bb.et:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i"
  %i.oq = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.oq, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !14759
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit": ; preds = %bb.et, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !14764)
  %.val.i = load ptr, ptr %i.gb, align 8, !alias.scope !14764, !nonnull !27, !noundef !27 ; 4 uses
  %.val1.i = load i64, ptr %i.gc, align 8, !alias.scope !14764, !noundef !27 ; 4 uses
  %i.or = icmp eq i64 %.val1.i, 0
  br i1 %i.or, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc43a29400599b83eE.exit.i", label %.lr.ph1150

.lr.ph1150:                                       ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit", %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$milli..score_details..ScoreDetails$GT$$GT$17h7e6807965122710aE.exit"
  %.sroa.0.0.i.i.i1149 = phi i64 [ %i.ot, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$milli..score_details..ScoreDetails$GT$$GT$17h7e6807965122710aE.exit" ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit" ] ; 2 uses
  %i.os = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i1149 ; 4 uses
  %i.ot = add nuw i64 %.sroa.0.0.i.i.i1149, 1     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14767)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %.val.i368 = load ptr, ptr %i.ou, align 8, !alias.scope !14767, !noalias !14764, !nonnull !27, !noundef !27 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %.val1.i369 = load i64, ptr %i.ov, align 8, !alias.scope !14767, !noalias !14764, !noundef !27 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14770), !noalias !14764
  %i.ow = icmp eq i64 %.val1.i369, 0
  br i1 %i.ow, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4212a504378beba2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph1150, %"_ZN4core3ptr55drop_in_place$LT$milli..score_details..ScoreDetails$GT$17h5be1ff678cea4386E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.oy, %"_ZN4core3ptr55drop_in_place$LT$milli..score_details..ScoreDetails$GT$17h5be1ff678cea4386E.exit.i.i.i" ], [ 0, %.lr.ph1150 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [104 x i8], ptr %.val.i368, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.oy = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14773), !noalias !14764
  %i.oz = load i64, ptr %i.ox, align 8, !range !14776, !alias.scope !14777, !noalias !14778, !noundef !27 ; 4 uses
  %i.pa = icmp ne i64 %i.oz, -9223372036854775801
  call void @llvm.assume(i1 %i.pa), !noalias !14764
  %i.pb = icmp sgt i64 %i.oz, -1
  br i1 %i.pb, label %bb.eu, label %"_ZN4core3ptr55drop_in_place$LT$milli..score_details..ScoreDetails$GT$17h5be1ff678cea4386E.exit.i.i.i"
end_hunk_0
