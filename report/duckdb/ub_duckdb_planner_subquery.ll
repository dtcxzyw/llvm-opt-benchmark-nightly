Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_planner_subquery?download=true
inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
  store ptr %i.esv, ptr %i.esu, align 8, !tbaa !86
  %.not.i.i.i.i.i2499 = icmp eq ptr %i.esw, null
  br i1 %.not.i.i.i.i.i2499, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2501, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2500

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2500: ; preds = %bb.ahx
  %i.esx = load ptr, ptr %i.esw, align 8, !tbaa !88
  %i.esy = getelementptr inbounds nuw i8, ptr %i.esx, i64 8
  %i.esz = load ptr, ptr %i.esy, align 8
  call void %i.esz(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.esw) #22, !inline_history !6
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2501

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2501: ; preds = %bb.ahx, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2500
  %i.eta = load ptr, ptr %176, align 8, !tbaa !86 ; 3 uses
  %.not.i2502 = icmp eq ptr %i.eta, null
  br i1 %.not.i2502, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2504, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2503

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2503: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2501
  %i.etb = load ptr, ptr %i.eta, align 8, !tbaa !88
  %i.etc = getelementptr inbounds nuw i8, ptr %i.etb, i64 8
  %i.etd = load ptr, ptr %i.etc, align 8
  call void %i.etd(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.eta) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2504

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2504: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2501, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2503
  %i.ete = load ptr, ptr %177, align 8, !tbaa !86 ; 3 uses
  %.not.i2505 = icmp eq ptr %i.ete, null
  br i1 %.not.i2505, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2507, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2506

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2506: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2504
  %i.etf = load ptr, ptr %i.ete, align 8, !tbaa !88
  %i.etg = getelementptr inbounds nuw i8, ptr %i.etf, i64 8
  %i.eth = load ptr, ptr %i.etg, align 8
  call void %i.eth(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ete) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2507

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2507: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2504, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2506
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #22
  %i.eti = load i64, ptr %2, align 8, !tbaa !86
  store i64 %i.eti, ptr %0, align 8, !tbaa !86
  store ptr null, ptr %2, align 8, !tbaa !86
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit964

bb.ahy:                                           ; preds = %bb.aho, %bb.ahn
  %i.etj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2513

bb.ahz:                                           ; preds = %bb.ahp
  %i.etk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2510

bb.aia:                                           ; preds = %bb.ahr, %bb.ahq
  %i.etl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.etm = load ptr, ptr %174, align 8, !tbaa !86 ; 3 uses
  %.not.i2508 = icmp eq ptr %i.etm, null
  br i1 %.not.i2508, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2510, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2509

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2509: ; preds = %bb.aia
  %i.etn = load ptr, ptr %i.etm, align 8, !tbaa !88
  %i.eto = getelementptr inbounds nuw i8, ptr %i.etn, i64 8
  %i.etp = load ptr, ptr %i.eto, align 8
  call void %i.etp(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.etm) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2510

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2510: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2509, %bb.aia, %bb.ahz
  %.pn576 = phi { ptr, i32 } [ %i.etk, %bb.ahz ], [ %i.etl, %bb.aia ], [ %i.etl, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2509 ] ; 2 uses
  %i.etq = load ptr, ptr %175, align 8, !tbaa !86 ; 3 uses
  %.not.i2511 = icmp eq ptr %i.etq, null
  br i1 %.not.i2511, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2513, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2512

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2512: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2510
  %i.etr = load ptr, ptr %i.etq, align 8, !tbaa !88
  %i.ets = getelementptr inbounds nuw i8, ptr %i.etr, i64 8
  %i.ett = load ptr, ptr %i.ets, align 8
  call void %i.ett(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.etq) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2513

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2513: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2512, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2510, %bb.ahy
  %.pn576.pn = phi { ptr, i32 } [ %i.etj, %bb.ahy ], [ %.pn576, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2510 ], [ %.pn576, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2512 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #22
  br label %.body

bb.aib:                                           ; preds = %bb.aht, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2498
  %i.etu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2519

bb.aic:                                           ; preds = %bb.ahu
  %i.etv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516

bb.aid:                                           ; preds = %bb.ahw, %bb.ahv
  %i.etw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.etx = load ptr, ptr %176, align 8, !tbaa !86 ; 3 uses
  %.not.i2514 = icmp eq ptr %i.etx, null
  br i1 %.not.i2514, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2515

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2515: ; preds = %bb.aid
  %i.ety = load ptr, ptr %i.etx, align 8, !tbaa !88
  %i.etz = getelementptr inbounds nuw i8, ptr %i.ety, i64 8
  %i.eua = load ptr, ptr %i.etz, align 8
  call void %i.eua(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.etx) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2515, %bb.aid, %bb.aic
  %.pn579 = phi { ptr, i32 } [ %i.etv, %bb.aic ], [ %i.etw, %bb.aid ], [ %i.etw, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2515 ] ; 2 uses
  %i.eub = load ptr, ptr %177, align 8, !tbaa !86 ; 3 uses
  %.not.i2517 = icmp eq ptr %i.eub, null
  br i1 %.not.i2517, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2519, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2518

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2518: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516
  %i.euc = load ptr, ptr %i.eub, align 8, !tbaa !88
  %i.eud = getelementptr inbounds nuw i8, ptr %i.euc, i64 8
  %i.eue = load ptr, ptr %i.eud, align 8
  call void %i.eue(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.eub) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2519

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2519: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2518, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516, %bb.aib
  %.pn579.pn = phi { ptr, i32 } [ %i.etu, %bb.aib ], [ %.pn579, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516 ], [ %.pn579, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2518 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #22
  br label %.body

.critedge875:                                     ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit2489, %bb.agz
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #22
  %i.euf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.aie unwind label %bb.ais

bb.aie:                                           ; preds = %.critedge875
  %i.eug = getelementptr inbounds nuw i8, ptr %i.euf, i64 16
  %i.euh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eug, i64 noundef 0)
          to label %bb.aif unwind label %bb.ais   ; 2 uses

bb.aif:                                           ; preds = %bb.aie
  %i.eui = load i64, ptr %i.euh, align 8, !tbaa !86
  store i64 %i.eui, ptr %179, align 8, !tbaa !86
  store ptr null, ptr %i.euh, align 8, !tbaa !86
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %178, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %179, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.aig unwind label %bb.ait

bb.aig:                                           ; preds = %bb.aif
  %i.euj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.aih unwind label %bb.aiu

bb.aih:                                           ; preds = %bb.aig
  %i.euk = getelementptr inbounds nuw i8, ptr %i.euj, i64 16
  %i.eul = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.euk, i64 noundef 0)
          to label %bb.aii unwind label %bb.aiu   ; 2 uses

bb.aii:                                           ; preds = %bb.aih
  %i.eum = load ptr, ptr %178, align 8, !tbaa !86
  store ptr null, ptr %178, align 8, !tbaa !86
  %i.eun = load ptr, ptr %i.eul, align 8, !tbaa !86 ; 3 uses
  store ptr %i.eum, ptr %i.eul, align 8, !tbaa !86
  %.not.i.i.i.i.i2520 = icmp eq ptr %i.eun, null
  br i1 %.not.i.i.i.i.i2520, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2521

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2521: ; preds = %bb.aii
  %i.euo = load ptr, ptr %i.eun, align 8, !tbaa !88
  %i.eup = getelementptr inbounds nuw i8, ptr %i.euo, i64 8
  %i.euq = load ptr, ptr %i.eup, align 8
  call void %i.euq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.eun) #22, !inline_history !6
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522: ; preds = %bb.aii, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2521
  %i.eur = load ptr, ptr %178, align 8, !tbaa !86 ; 3 uses
  %.not.i2523 = icmp eq ptr %i.eur, null
  br i1 %.not.i2523, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2524

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2524: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522
  %i.eus = load ptr, ptr %i.eur, align 8, !tbaa !88
  %i.eut = getelementptr inbounds nuw i8, ptr %i.eus, i64 8
  %i.euu = load ptr, ptr %i.eut, align 8
  call void %i.euu(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.eur) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2524
  %i.euv = load ptr, ptr %179, align 8, !tbaa !86 ; 3 uses
  %.not.i2526 = icmp eq ptr %i.euv, null
  br i1 %.not.i2526, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2527

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2527: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525
  %i.euw = load ptr, ptr %i.euv, align 8, !tbaa !88
  %i.eux = getelementptr inbounds nuw i8, ptr %i.euw, i64 8
  %i.euy = load ptr, ptr %i.eux, align 8
  call void %i.euy(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.euv) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2527
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #22
  %i.euz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.aij unwind label %.loopexit.split-lp3137 ; 5 uses

bb.aij:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528
  %i.eva = getelementptr inbounds nuw i8, ptr %i.euz, i64 136 ; 5 uses
  %i.evb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.evc = getelementptr inbounds nuw i8, ptr %i.euz, i64 144 ; 2 uses
  %i.evd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.eve = load <2 x i64>, ptr %i.eva, align 8, !tbaa !69
  %i.evf = load i64, ptr %i.eva, align 8, !tbaa !262
  store <2 x i64> %i.eve, ptr %i.evb, align 8, !tbaa !69
  %i.evg = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  %i.evh = load ptr, ptr %i.evg, align 8, !tbaa !72, !nonnull !73, !align !74 ; 2 uses
  %i.evi = getelementptr inbounds nuw i8, ptr %i.euz, i64 152
  %i.evj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.evi, ptr noundef nonnull align 8 dereferenceable(32) %i.evh)
          to label %bb.aik unwind label %.loopexit.split-lp3137 ; 0 uses

bb.aik:                                           ; preds = %bb.aij
  %i.evk = getelementptr inbounds nuw i8, ptr %i.evh, i64 24
  %i.evl = load i64, ptr %i.evk, align 8, !tbaa !84
  %i.evm = getelementptr inbounds nuw i8, ptr %i.euz, i64 176
  store i64 %i.evl, ptr %i.evm, align 8, !tbaa !84
  %i.evn = load ptr, ptr %1, align 8, !tbaa !117, !nonnull !73, !align !74 ; 2 uses
  %i.evo = getelementptr inbounds nuw i8, ptr %i.evn, i64 216 ; 2 uses
  %i.evp = load i64, ptr %i.eva, align 8, !tbaa !69 ; 4 uses
  %i.evq = getelementptr inbounds nuw i8, ptr %i.evn, i64 224
  %i.evr = load i64, ptr %i.evq, align 8, !tbaa !255 ; 2 uses
  %i.evs = urem i64 %i.evp, %i.evr                ; 3 uses
  %i.evt = load ptr, ptr %i.evo, align 8, !tbaa !256
  %i.evu = getelementptr inbounds nuw [8 x i8], ptr %i.evt, i64 %i.evs
  %i.evv = load ptr, ptr %i.evu, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i2530 = icmp eq ptr %i.evv, null
  br i1 %.not.i.i.i.i2530, label %.loopexit.i.i, label %bb.ail

bb.ail:                                           ; preds = %bb.aik
  %i.evw = load ptr, ptr %i.evv, align 8, !tbaa !77 ; 3 uses
  %i.evx = getelementptr inbounds nuw i8, ptr %i.evw, i64 8
  %i.evy = load i64, ptr %i.evx, align 8, !tbaa !69
  %i.evz = icmp eq i64 %i.evp, %i.evy
  br i1 %i.evz, label %.loopexit3188, label %.lr.ph.i.i.i.i2531

bb.aim:                                           ; preds = %bb.ain
  %i.ewa = icmp eq i64 %i.evp, %i.ewd
  br i1 %i.ewa, label %.loopexit3188, label %.lr.ph.i.i.i.i2531, !llvm.loop !18

.lr.ph.i.i.i.i2531:                               ; preds = %bb.ail, %bb.aim
  %.020.i.i.i.i2532 = phi ptr [ %i.ewb, %bb.aim ], [ %i.evw, %bb.ail ]
  %i.ewb = load ptr, ptr %.020.i.i.i.i2532, align 8, !tbaa !77 ; 4 uses
  %.not18.i.i.i.i2533 = icmp eq ptr %i.ewb, null
  br i1 %.not18.i.i.i.i2533, label %.loopexit.i.i, label %bb.ain

bb.ain:                                           ; preds = %.lr.ph.i.i.i.i2531
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.ewb, i64 8
  %i.ewd = load i64, ptr %i.ewc, align 8, !tbaa !69 ; 2 uses
  %i.ewe = urem i64 %i.ewd, %i.evr
  %.not19.i.i.i.i2534 = icmp eq i64 %i.ewe, %i.evs
  br i1 %.not19.i.i.i.i2534, label %bb.aim, label %..loopexit_crit_edge21.i.i.i.i2535, !llvm.loop !18

..loopexit_crit_edge21.i.i.i.i2535:               ; preds = %bb.ain
  br label %.loopexit.i.i, !llvm.loop !18

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i2531, %..loopexit_crit_edge21.i.i.i.i2535, %bb.aik
  %i.ewf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %.noexc2536 unwind label %.loopexit.split-lp3137 ; 5 uses

.noexc2536:                                       ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ewf, align 8, !tbaa !77
  %i.ewg = getelementptr inbounds nuw i8, ptr %i.ewf, i64 8
  %i.ewh = load i64, ptr %i.eva, align 8, !tbaa !69
  store i64 %i.ewh, ptr %i.ewg, align 8, !tbaa !258
  %i.ewi = getelementptr inbounds nuw i8, ptr %i.ewf, i64 16
  store ptr null, ptr %i.ewi, align 8, !tbaa !259
  %i.ewj = invoke ptr @_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.evo, i64 noundef %i.evs, i64 noundef %i.evp, ptr noundef nonnull %i.ewf, i64 noundef 1)
          to label %.loopexit3188 unwind label %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc2536
  %i.ewk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ewf) #23
  br label %.body

.loopexit3188:                                    ; preds = %bb.aim, %.noexc2536, %bb.ail
  %.pn.i.i = phi ptr [ %i.ewj, %.noexc2536 ], [ %i.evw, %bb.ail ], [ %i.ewb, %bb.aim ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.euz, ptr %.1.i.i, align 8, !tbaa !86
  %i.ewl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.aio unwind label %.loopexit.split-lp3137

bb.aio:                                           ; preds = %.loopexit3188
  %i.ewm = getelementptr inbounds nuw i8, ptr %i.ewl, i64 8
  %i.ewn = load i8, ptr %i.ewm, align 8, !tbaa !107
  %i.ewo = icmp eq i8 %i.ewn, 78
  br i1 %i.ewo, label %bb.aip, label %.loopexit3174

bb.aip:                                           ; preds = %bb.aio
  %i.ewp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.aiq unwind label %.loopexit.split-lp3137

bb.aiq:                                           ; preds = %bb.aip
  %i.ewq = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZN6duckdb15LogicalOperator4CastINS_19LogicalRecursiveCTEEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.ewp)
          to label %bb.air unwind label %.loopexit.split-lp3137 ; 3 uses

bb.air:                                           ; preds = %bb.aiq
  %i.ewr = getelementptr inbounds nuw i8, ptr %i.ewq, i64 192 ; 3 uses
  %i.ews = load ptr, ptr %i.ewr, align 8, !tbaa !218
  %i.ewt = getelementptr inbounds nuw i8, ptr %i.ewq, i64 200 ; 4 uses
  %i.ewu = load ptr, ptr %i.ewt, align 8, !tbaa !218
  %i.ewv = icmp eq ptr %i.ews, %i.ewu
  br i1 %i.ewv, label %.loopexit3174, label %.preheader3173

.preheader3173:                                   ; preds = %bb.air
  %i.eww = load ptr, ptr %i.evg, align 8, !tbaa !72, !nonnull !73, !align !74 ; 3 uses
  %i.ewx = getelementptr inbounds nuw i8, ptr %i.eww, i64 8 ; 2 uses
  %i.ewy = load ptr, ptr %i.ewx, align 8, !tbaa !67
  %i.ewz = load ptr, ptr %i.eww, align 8, !tbaa !68
  %.not3578 = icmp eq ptr %i.ewy, %i.ewz
  br i1 %.not3578, label %.loopexit3174, label %.lr.ph3487

.lr.ph3487:                                       ; preds = %.preheader3173
  %i.exa = getelementptr inbounds nuw i8, ptr %180, i64 16 ; 3 uses
  %i.exb = getelementptr inbounds nuw i8, ptr %180, i64 40 ; 5 uses
  %i.exc = getelementptr inbounds nuw i8, ptr %180, i64 56 ; 4 uses
  %i.exd = getelementptr inbounds nuw i8, ptr %180, i64 48
  %i.exe = getelementptr inbounds nuw i8, ptr %180, i64 72
  %i.exf = getelementptr inbounds nuw i8, ptr %i.ewq, i64 208 ; 2 uses
  br label %bb.aiv

bb.ais:                                           ; preds = %bb.aie, %.critedge875
  %i.exg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2544

bb.ait:                                           ; preds = %bb.aif
  %i.exh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541

bb.aiu:                                           ; preds = %bb.aih, %bb.aig
  %i.exi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.exj = load ptr, ptr %178, align 8, !tbaa !86 ; 3 uses
  %.not.i2539 = icmp eq ptr %i.exj, null
  br i1 %.not.i2539, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2540

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2540: ; preds = %bb.aiu
  %i.exk = load ptr, ptr %i.exj, align 8, !tbaa !88
  %i.exl = getelementptr inbounds nuw i8, ptr %i.exk, i64 8
  %i.exm = load ptr, ptr %i.exl, align 8
  call void %i.exm(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.exj) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2540, %bb.aiu, %bb.ait
  %.pn584 = phi { ptr, i32 } [ %i.exh, %bb.ait ], [ %i.exi, %bb.aiu ], [ %i.exi, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2540 ] ; 2 uses
  %i.exn = load ptr, ptr %179, align 8, !tbaa !86 ; 3 uses
  %.not.i2542 = icmp eq ptr %i.exn, null
  br i1 %.not.i2542, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2544, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2543

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2543: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541
  %i.exo = load ptr, ptr %i.exn, align 8, !tbaa !88
  %i.exp = getelementptr inbounds nuw i8, ptr %i.exo, i64 8
  %i.exq = load ptr, ptr %i.exp, align 8
  call void %i.exq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.exn) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2544

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2544: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2543, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541, %bb.ais
  %.pn584.pn = phi { ptr, i32 } [ %i.exg, %bb.ais ], [ %.pn584, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541 ], [ %.pn584, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2543 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #22
  br label %.body

bb.aiv:                                           ; preds = %.lr.ph3487, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit
  %i.exr = phi ptr [ %i.ewx, %.lr.ph3487 ], [ %i.fax, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit ]
  %i.exs = phi ptr [ %i.eww, %.lr.ph3487 ], [ %i.faw, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit ]
  %storemerge5873486 = phi i64 [ 0, %.lr.ph3487 ], [ %i.fav, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #22
  %i.ext = load ptr, ptr %i.exr, align 8, !tbaa !67
  %i.exu = load ptr, ptr %i.exs, align 8, !tbaa !68 ; 2 uses
  %i.exv = ptrtoint ptr %i.ext to i64
  %i.exw = ptrtoint ptr %i.exu to i64
  %i.exx = sub i64 %i.exv, %i.exw
  %i.exy = sdiv exact i64 %i.exx, 80              ; 2 uses
  %.not.i.i.i2545 = icmp ult i64 %storemerge5873486, %i.exy
  br i1 %.not.i.i.i2545, label %bb.aix, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge5873486, i64 noundef %i.exy) #24
          to label %.noexc2546 unwind label %.loopexit.split-lp3176.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2546:                                       ; preds = %bb.aiw
  unreachable

bb.aix:                                           ; preds = %bb.aiv
  %i.exz = getelementptr inbounds nuw [80 x i8], ptr %i.exu, i64 %storemerge5873486 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %180, ptr noundef nonnull align 8 dereferenceable(80) %i.exz, i64 16, i1 false), !tbaa.struct !217
  %i.eya = getelementptr inbounds nuw i8, ptr %i.exz, i64 16
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.exa, ptr noundef nonnull align 8 dereferenceable(24) %i.eya)
          to label %.noexc2549 unwind label %.loopexit.split-lp3176.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2549:                                       ; preds = %bb.aix
  %i.eyb = getelementptr inbounds nuw i8, ptr %i.exz, i64 40
  store ptr %i.exc, ptr %i.exb, align 8, !tbaa !198
  %i.eyc = load ptr, ptr %i.eyb, align 8, !tbaa !92 ; 2 uses
  %i.eyd = getelementptr inbounds nuw i8, ptr %i.exz, i64 48
  %i.eye = load i64, ptr %i.eyd, align 8, !tbaa !199 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.eye, ptr %i.a, align 8, !tbaa !69
  %i.eyf = icmp ugt i64 %i.eye, 15
  br i1 %i.eyf, label %.noexc.i.i, label %._crit_edge.i.i.i2548

end_hunk_0
begin_hunk_1_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %181, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %182)
          to label %bb.ajr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593.thread

bb.ajr:                                           ; preds = %bb.ajq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fbq, ptr noundef nonnull align 8 dereferenceable(32) %181)
          to label %bb.ajs unwind label %bb.ajt

bb.ajs:                                           ; preds = %bb.ajr
  invoke void @__cxa_throw(ptr nonnull %i.fbq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.amc unwind label %bb.ajt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593.thread: ; preds = %bb.ajq
  %i.fbr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #22
  br label %bb.aju

bb.ajt:                                           ; preds = %bb.ajs, %bb.ajr
  %.0518 = phi i1 [ false, %bb.ajs ], [ true, %bb.ajr ] ; 2 uses
  %i.fbs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fbt = load ptr, ptr %181, align 8, !tbaa !92 ; 2 uses
  %i.fbu = getelementptr inbounds nuw i8, ptr %181, i64 16
  %i.fbv = icmp eq ptr %i.fbt, %i.fbu
  br i1 %i.fbv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2591: ; preds = %bb.ajt
  call void @_ZdlPv(ptr noundef %i.fbt) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #22
  br i1 %.0518, label %bb.aju, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593: ; preds = %bb.ajt
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #22
  br i1 %.0518, label %bb.aju, label %.body

bb.aju:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2591, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593
  %.pn5923002 = phi { ptr, i32 } [ %i.fbr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593.thread ], [ %i.fbs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593 ], [ %i.fbs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2591 ]
  call void @__cxa_free_exception(ptr %i.fbq) #22
  br label %.body

bb.ajv:                                           ; preds = %bb.ajp, %bb.ajn
  %.0520 = phi i32 [ 2, %bb.ajn ], [ 1, %bb.ajp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #22
  %i.fbw = load ptr, ptr %i.evg, align 8, !tbaa !72, !nonnull !73, !align !74
  invoke void @_ZN6duckdb14RewriteCTEScanC1EmRKNS_17CorrelatedColumnsENS_18CTEScanRewriteModeE(ptr noundef nonnull align 8 dereferenceable(28) %183, i64 noundef %i.evf, ptr noundef nonnull align 8 dereferenceable(32) %i.fbw, i32 noundef %.0520)
          to label %bb.ajw unwind label %bb.aku

bb.ajw:                                           ; preds = %bb.ajv
  %i.fbx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ajx unwind label %bb.aku

bb.ajx:                                           ; preds = %bb.ajw
  %i.fby = getelementptr inbounds nuw i8, ptr %i.fbx, i64 16
  %i.fbz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fby, i64 noundef 1)
          to label %bb.ajy unwind label %bb.aku

bb.ajy:                                           ; preds = %bb.ajx
  %i.fca = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fbz)
          to label %bb.ajz unwind label %bb.aku

bb.ajz:                                           ; preds = %bb.ajy
  invoke void @_ZN6duckdb14RewriteCTEScan13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(28) %183, ptr noundef nonnull align 8 dereferenceable(97) %i.fca)
          to label %bb.aka unwind label %bb.aku

bb.aka:                                           ; preds = %bb.ajz
  store i8 0, ptr %3, align 1, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #22
  %i.fcb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.akb unwind label %bb.akv

bb.akb:                                           ; preds = %bb.aka
  %i.fcc = getelementptr inbounds nuw i8, ptr %i.fcb, i64 16
  %i.fcd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fcc, i64 noundef 1)
          to label %bb.akc unwind label %bb.akv   ; 2 uses

bb.akc:                                           ; preds = %bb.akb
  %i.fce = load i64, ptr %i.fcd, align 8, !tbaa !86
  store i64 %i.fce, ptr %185, align 8, !tbaa !86
  store ptr null, ptr %i.fcd, align 8, !tbaa !86
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %184, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %185, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.akd unwind label %bb.akw

bb.akd:                                           ; preds = %bb.akc
  %i.fcf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ake unwind label %bb.akx

bb.ake:                                           ; preds = %bb.akd
  %i.fcg = getelementptr inbounds nuw i8, ptr %i.fcf, i64 16
  %i.fch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fcg, i64 noundef 1)
          to label %bb.akf unwind label %bb.akx   ; 2 uses

bb.akf:                                           ; preds = %bb.ake
  %i.fci = load ptr, ptr %184, align 8, !tbaa !86
  store ptr null, ptr %184, align 8, !tbaa !86
  %i.fcj = load ptr, ptr %i.fch, align 8, !tbaa !86 ; 3 uses
  store ptr %i.fci, ptr %i.fch, align 8, !tbaa !86
  %.not.i.i.i.i.i2594 = icmp eq ptr %i.fcj, null
  br i1 %.not.i.i.i.i.i2594, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2595

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2595: ; preds = %bb.akf
  %i.fck = load ptr, ptr %i.fcj, align 8, !tbaa !88
  %i.fcl = getelementptr inbounds nuw i8, ptr %i.fck, i64 8
  %i.fcm = load ptr, ptr %i.fcl, align 8
  call void %i.fcm(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fcj) #22, !inline_history !6
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596: ; preds = %bb.akf, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2595
  %i.fcn = load ptr, ptr %184, align 8, !tbaa !86 ; 3 uses
  %.not.i2597 = icmp eq ptr %i.fcn, null
  br i1 %.not.i2597, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2599, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2598

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2598: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596
  %i.fco = load ptr, ptr %i.fcn, align 8, !tbaa !88
  %i.fcp = getelementptr inbounds nuw i8, ptr %i.fco, i64 8
  %i.fcq = load ptr, ptr %i.fcp, align 8
  call void %i.fcq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fcn) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2599

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2599: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2598
  %i.fcr = load ptr, ptr %185, align 8, !tbaa !86 ; 3 uses
  %.not.i2600 = icmp eq ptr %i.fcr, null
  br i1 %.not.i2600, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2602, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2601

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2601: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2599
  %i.fcs = load ptr, ptr %i.fcr, align 8, !tbaa !88
  %i.fct = getelementptr inbounds nuw i8, ptr %i.fcs, i64 8
  %i.fcu = load ptr, ptr %i.fct, align 8
  call void %i.fcu(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fcr) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2602

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2602: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2599, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2601
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #22
  %.sroa.014.0.copyload = load i64, ptr %i.evb, align 8, !tbaa !69
  %.sroa.215.0.copyload = load i64, ptr %i.evd, align 8, !tbaa !69
  %i.fcv = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressionsC1ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEEmb(ptr noundef nonnull align 8 dereferenceable(41) %186, i64 %.sroa.014.0.copyload, i64 %.sroa.215.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %i.fcv, i64 noundef %4, i1 noundef zeroext false)
          to label %bb.akg unwind label %bb.aky

bb.akg:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2602
  %i.fcw = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.akh unwind label %bb.aky

bb.akh:                                           ; preds = %bb.akg
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(41) %186, ptr noundef nonnull align 8 dereferenceable(97) %i.fcw)
          to label %bb.aki unwind label %bb.aky

bb.aki:                                           ; preds = %bb.akh
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #22
  %.sroa.0.0.copyload = load i64, ptr %i.evb, align 8, !tbaa !69
  %.sroa.2.0.copyload = load i64, ptr %i.evd, align 8, !tbaa !69
  %i.fcx = add i64 %4, 1
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressionsC1ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEEmb(ptr noundef nonnull align 8 dereferenceable(41) %187, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %i.fcv, i64 noundef %i.fcx, i1 noundef zeroext true)
          to label %bb.akj unwind label %bb.akz

bb.akj:                                           ; preds = %bb.aki
  %i.fcy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.akk unwind label %bb.akz

bb.akk:                                           ; preds = %bb.akj
  %i.fcz = getelementptr inbounds nuw i8, ptr %i.fcy, i64 16
  %i.fda = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fcz, i64 noundef 0)
          to label %bb.akl unwind label %bb.akz

bb.akl:                                           ; preds = %bb.akk
  %i.fdb = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fda)
          to label %bb.akm unwind label %bb.akz

bb.akm:                                           ; preds = %bb.akl
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(41) %187, ptr noundef nonnull align 8 dereferenceable(97) %i.fdb)
          to label %bb.akn unwind label %bb.akz

bb.akn:                                           ; preds = %bb.akm
  %i.fdc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ako unwind label %bb.akz

bb.ako:                                           ; preds = %bb.akn
  %i.fdd = getelementptr inbounds nuw i8, ptr %i.fdc, i64 16
  %i.fde = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fdd, i64 noundef 1)
          to label %bb.akp unwind label %bb.akz

bb.akp:                                           ; preds = %bb.ako
  %i.fdf = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fde)
          to label %bb.akq unwind label %bb.akz

bb.akq:                                           ; preds = %bb.akp
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(41) %187, ptr noundef nonnull align 8 dereferenceable(97) %i.fdf)
          to label %bb.akr unwind label %bb.akz

bb.akr:                                           ; preds = %bb.akq
  %i.fdg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.aks unwind label %bb.akz

bb.aks:                                           ; preds = %bb.akr
  %i.fdh = getelementptr inbounds nuw i8, ptr %i.fdg, i64 8
  %i.fdi = load i8, ptr %i.fdh, align 8, !tbaa !107
  %i.fdj = icmp eq i8 %i.fdi, 78
  %.pre3972 = load i64, ptr %i.evc, align 8, !tbaa !873 ; 2 uses
  br i1 %i.fdj, label %bb.akt, label %bb.ala

bb.akt:                                           ; preds = %bb.aks
  %197 = load i64, ptr %i.eva, align 8, !tbaa !262
  store i64 %197, ptr %i.evb, align 8, !tbaa !690
  store i64 %.pre3972, ptr %i.evd, align 8, !tbaa !691
  br label %bb.ala

bb.aku:                                           ; preds = %bb.ajv, %bb.ajz, %bb.ajy, %bb.ajx, %bb.ajw
  %i.fdk = landingpad { ptr, i32 }
          cleanup
  br label %bb.alc

bb.akv:                                           ; preds = %bb.akb, %bb.aka
  %i.fdl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2608

bb.akw:                                           ; preds = %bb.akc
  %i.fdm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2605

bb.akx:                                           ; preds = %bb.ake, %bb.akd
  %i.fdn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fdo = load ptr, ptr %184, align 8, !tbaa !86 ; 3 uses
  %.not.i2603 = icmp eq ptr %i.fdo, null
  br i1 %.not.i2603, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2605, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2604

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2604: ; preds = %bb.akx
  %i.fdp = load ptr, ptr %i.fdo, align 8, !tbaa !88
  %i.fdq = getelementptr inbounds nuw i8, ptr %i.fdp, i64 8
  %i.fdr = load ptr, ptr %i.fdq, align 8
  call void %i.fdr(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fdo) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2605

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2605: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2604, %bb.akx, %bb.akw
  %.pn594 = phi { ptr, i32 } [ %i.fdm, %bb.akw ], [ %i.fdn, %bb.akx ], [ %i.fdn, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2604 ] ; 2 uses
  %i.fds = load ptr, ptr %185, align 8, !tbaa !86 ; 3 uses
  %.not.i2606 = icmp eq ptr %i.fds, null
  br i1 %.not.i2606, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2608, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2607

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2607: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2605
  %i.fdt = load ptr, ptr %i.fds, align 8, !tbaa !88
  %i.fdu = getelementptr inbounds nuw i8, ptr %i.fdt, i64 8
  %i.fdv = load ptr, ptr %i.fdu, align 8
  call void %i.fdv(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fds) #22, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2608

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2608: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2607, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2605, %bb.akv
  %.pn594.pn = phi { ptr, i32 } [ %i.fdl, %bb.akv ], [ %.pn594, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2605 ], [ %.pn594, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2607 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #22
  br label %bb.alc

bb.aky:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2602, %bb.akh, %bb.akg
  %i.fdw = landingpad { ptr, i32 }
          cleanup
  br label %bb.alb

bb.akz:                                           ; preds = %bb.aki, %bb.akr, %bb.akq, %bb.akp, %bb.ako, %bb.akn, %bb.akm, %bb.akl, %bb.akk, %bb.akj
  %i.fdx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #22
  br label %bb.alb

bb.ala:                                           ; preds = %bb.akt, %bb.aks
  %i.fdy = load ptr, ptr %i.evg, align 8, !tbaa !72, !nonnull !73, !align !74 ; 2 uses
  %i.fdz = getelementptr inbounds nuw i8, ptr %i.fdy, i64 8
  %i.fea = load ptr, ptr %i.fdz, align 8, !tbaa !67
  %i.feb = load ptr, ptr %i.fdy, align 8, !tbaa !68
  %i.fec = ptrtoint ptr %i.fea to i64
  %i.fed = ptrtoint ptr %i.feb to i64
  %i.fee = sub i64 %i.fec, %i.fed
  %i.fef = sdiv exact i64 %i.fee, 80
  %i.feg = add i64 %i.fef, %.pre3972
  store i64 %i.feg, ptr %i.evc, align 8, !tbaa !873
  %i.feh = load i64, ptr %2, align 8, !tbaa !86
  store i64 %i.feh, ptr %0, align 8, !tbaa !86
  store ptr null, ptr %2, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #22
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit964

bb.alb:                                           ; preds = %bb.aky, %bb.akz
  %.pn597.pn.pn = phi { ptr, i32 } [ %i.fdw, %bb.aky ], [ %i.fdx, %bb.akz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #22
  br label %bb.alc

bb.alc:                                           ; preds = %bb.aku, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2608, %bb.alb
  %.pn597.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fdk, %bb.aku ], [ %.pn597.pn.pn, %bb.alb ], [ %.pn594.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2608 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #22
  br label %.body

bb.ald:                                           ; preds = %bb.bm
  %i.fei = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ale unwind label %.loopexit.split-lp3137

bb.ale:                                           ; preds = %bb.ald
  %i.fej = invoke noundef nonnull align 8 dereferenceable(177) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalCTERefEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.fei)
          to label %bb.alf unwind label %.loopexit.split-lp3137 ; 4 uses

bb.alf:                                           ; preds = %bb.ale
  %i.fek = getelementptr inbounds nuw i8, ptr %i.fej, i64 128
  %i.fel = load i64, ptr %i.fek, align 8, !tbaa !688
  %i.fem = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.fel, ptr %i.fem, align 8, !tbaa !690
  %i.fen = getelementptr inbounds nuw i8, ptr %i.fej, i64 144
  %i.feo = getelementptr inbounds nuw i8, ptr %i.fej, i64 152
  %i.fep = load ptr, ptr %i.feo, align 8, !tbaa !70
  %i.feq = load ptr, ptr %i.fen, align 8, !tbaa !216
  %i.fer = ptrtoint ptr %i.fep to i64
  %i.fes = ptrtoint ptr %i.feq to i64
  %i.fet = sub i64 %i.fer, %i.fes
  %i.feu = sdiv exact i64 %i.fet, 24
  %i.fev = getelementptr inbounds nuw i8, ptr %i.fej, i64 168
  %i.few = load i64, ptr %i.fev, align 8, !tbaa !273
  %i.fex = sub i64 %i.feu, %i.few
  %i.fey = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.fex, ptr %i.fey, align 8, !tbaa !691
  %i.fez = load i64, ptr %2, align 8, !tbaa !86
  store i64 %i.fez, ptr %0, align 8, !tbaa !86
  store ptr null, ptr %2, align 8, !tbaa !86
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit964

bb.alg:                                           ; preds = %bb.bm
  %i.ffa = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %188, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %189)
          to label %bb.alh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2611.thread

bb.alh:                                           ; preds = %bb.alg
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ffa, ptr noundef nonnull align 8 dereferenceable(32) %188)
          to label %bb.ali unwind label %bb.alj

bb.ali:                                           ; preds = %bb.alh
  invoke void @__cxa_throw(ptr nonnull %i.ffa, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.amc unwind label %bb.alj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2611.thread: ; preds = %bb.alg
  %i.ffb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #22
  br label %bb.alk

bb.alj:                                           ; preds = %bb.ali, %bb.alh
  %.0299 = phi i1 [ false, %bb.ali ], [ true, %bb.alh ] ; 2 uses
  %i.ffc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ffd = load ptr, ptr %188, align 8, !tbaa !92 ; 2 uses
  %i.ffe = getelementptr inbounds nuw i8, ptr %188, i64 16
  %i.fff = icmp eq ptr %i.ffd, %i.ffe
  br i1 %i.fff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2611, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2609

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2609: ; preds = %bb.alj
  call void @_ZdlPv(ptr noundef %i.ffd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #22
  br i1 %.0299, label %bb.alk, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2611: ; preds = %bb.alj
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #22
  br i1 %.0299, label %bb.alk, label %.body

bb.alk:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2609, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2611.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2611
  %.pn5743005 = phi { ptr, i32 } [ %i.ffb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2611.thread ], [ %i.ffc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2611 ], [ %i.ffc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2609 ]
  call void @__cxa_free_exception(ptr %i.ffa) #22
  br label %.body

bb.all:                                           ; preds = %bb.bm
  %i.ffg = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %190) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %190, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %191)
          to label %bb.alm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2614.thread

bb.alm:                                           ; preds = %bb.all
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ffg, ptr noundef nonnull align 8 dereferenceable(32) %190)
          to label %bb.aln unwind label %bb.alo

bb.aln:                                           ; preds = %bb.alm
  invoke void @__cxa_throw(ptr nonnull %i.ffg, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.amc unwind label %bb.alo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2614.thread: ; preds = %bb.all
  %i.ffh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #22
  br label %bb.alp

bb.alo:                                           ; preds = %bb.aln, %bb.alm
  %.0297 = phi i1 [ false, %bb.aln ], [ true, %bb.alm ] ; 2 uses
  %i.ffi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ffj = load ptr, ptr %190, align 8, !tbaa !92 ; 2 uses
  %i.ffk = getelementptr inbounds nuw i8, ptr %190, i64 16
  %i.ffl = icmp eq ptr %i.ffj, %i.ffk
  br i1 %i.ffl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2612: ; preds = %bb.alo
  call void @_ZdlPv(ptr noundef %i.ffj) #23
end_hunk_1
