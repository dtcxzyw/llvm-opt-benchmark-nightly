inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
  %i.exa = getelementptr inbounds nuw i8, ptr %i.ewz, i64 8
  %i.exb = load ptr, ptr %i.exa, align 8
  call void %i.exb(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ewy) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2515, %bb.alw, %bb.alv
  %.pn579 = phi { ptr, i32 } [ %i.eww, %bb.alv ], [ %i.ewx, %bb.alw ], [ %i.ewx, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2515 ] ; 2 uses
  %i.exc = load ptr, ptr %177, align 8, !tbaa !65 ; 3 uses
  %.not.i2517 = icmp eq ptr %i.exc, null
  br i1 %.not.i2517, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2519, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2518

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2518: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516
  %i.exd = load ptr, ptr %i.exc, align 8, !tbaa !67
  %i.exe = getelementptr inbounds nuw i8, ptr %i.exd, i64 8
  %i.exf = load ptr, ptr %i.exe, align 8
  call void %i.exf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.exc) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2519

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2519: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2518, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516, %bb.alu
  %.pn579.pn = phi { ptr, i32 } [ %i.ewv, %bb.alu ], [ %.pn579, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2516 ], [ %.pn579, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2518 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #22
  br label %.body

.critedge875:                                     ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit2489, %bb.akq
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #22
  %i.exg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.alx unwind label %bb.aml

bb.alx:                                           ; preds = %.critedge875
  %i.exh = getelementptr inbounds nuw i8, ptr %i.exg, i64 16
  %i.exi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.exh, i64 noundef 0)
          to label %bb.aly unwind label %bb.aml   ; 2 uses

bb.aly:                                           ; preds = %bb.alx
  %i.exj = load i64, ptr %i.exi, align 8, !tbaa !65
  store i64 %i.exj, ptr %179, align 8, !tbaa !65
  store ptr null, ptr %i.exi, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %178, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %179, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.alz unwind label %bb.amm

bb.alz:                                           ; preds = %bb.aly
  %i.exk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ama unwind label %bb.amn

bb.ama:                                           ; preds = %bb.alz
  %i.exl = getelementptr inbounds nuw i8, ptr %i.exk, i64 16
  %i.exm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.exl, i64 noundef 0)
          to label %bb.amb unwind label %bb.amn   ; 2 uses

bb.amb:                                           ; preds = %bb.ama
  %i.exn = load ptr, ptr %178, align 8, !tbaa !65
  store ptr null, ptr %178, align 8, !tbaa !65
  %i.exo = load ptr, ptr %i.exm, align 8, !tbaa !65 ; 3 uses
  store ptr %i.exn, ptr %i.exm, align 8, !tbaa !65
  %.not.i.i.i.i.i2520 = icmp eq ptr %i.exo, null
  br i1 %.not.i.i.i.i.i2520, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2521

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2521: ; preds = %bb.amb
  %i.exp = load ptr, ptr %i.exo, align 8, !tbaa !67
  %i.exq = getelementptr inbounds nuw i8, ptr %i.exp, i64 8
  %i.exr = load ptr, ptr %i.exq, align 8
  call void %i.exr(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.exo) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522: ; preds = %bb.amb, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2521
  %i.exs = load ptr, ptr %178, align 8, !tbaa !65 ; 3 uses
  %.not.i2523 = icmp eq ptr %i.exs, null
  br i1 %.not.i2523, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2524

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2524: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522
  %i.ext = load ptr, ptr %i.exs, align 8, !tbaa !67
  %i.exu = getelementptr inbounds nuw i8, ptr %i.ext, i64 8
  %i.exv = load ptr, ptr %i.exu, align 8
  call void %i.exv(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.exs) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2522, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2524
  %i.exw = load ptr, ptr %179, align 8, !tbaa !65 ; 3 uses
  %.not.i2526 = icmp eq ptr %i.exw, null
  br i1 %.not.i2526, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2527

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2527: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525
  %i.exx = load ptr, ptr %i.exw, align 8, !tbaa !67
  %i.exy = getelementptr inbounds nuw i8, ptr %i.exx, i64 8
  %i.exz = load ptr, ptr %i.exy, align 8
  call void %i.exz(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.exw) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2525, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2527
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #22
  %i.eya = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.amc unwind label %bb.amo   ; 5 uses

bb.amc:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528
  %i.eyb = getelementptr inbounds nuw i8, ptr %i.eya, i64 136 ; 4 uses
  %i.eyc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.eyd = getelementptr inbounds nuw i8, ptr %i.eya, i64 144 ; 2 uses
  %i.eye = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.eyf = load <2 x i64>, ptr %i.eyb, align 8, !tbaa !46
  %i.eyg = load i64, ptr %i.eyb, align 8, !tbaa !377
  store <2 x i64> %i.eyf, ptr %i.eyc, align 8, !tbaa !46
  %i.eyh = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  %i.eyi = load ptr, ptr %i.eyh, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.eyj = getelementptr inbounds nuw i8, ptr %i.eya, i64 152
  %i.eyk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.eyj, ptr noundef nonnull align 8 dereferenceable(32) %i.eyi)
          to label %bb.amd unwind label %bb.amo   ; 0 uses

bb.amd:                                           ; preds = %bb.amc
  %i.eyl = getelementptr inbounds nuw i8, ptr %i.eyi, i64 24
  %i.eym = load i64, ptr %i.eyl, align 8, !tbaa !59
  %i.eyn = getelementptr inbounds nuw i8, ptr %i.eya, i64 176
  store i64 %i.eym, ptr %i.eyn, align 8, !tbaa !59
  %i.eyo = load ptr, ptr %1, align 8, !tbaa !103, !nonnull !50, !align !51 ; 2 uses
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyo, i64 216 ; 2 uses
  %i.eyq = load i64, ptr %i.eyb, align 8, !tbaa !46 ; 5 uses
  %i.eyr = getelementptr inbounds nuw i8, ptr %i.eyo, i64 224
  %i.eys = load i64, ptr %i.eyr, align 8, !tbaa !369 ; 2 uses
  %i.eyt = urem i64 %i.eyq, %i.eys                ; 3 uses
  %i.eyu = load ptr, ptr %i.eyp, align 8, !tbaa !370
  %i.eyv = getelementptr inbounds nuw [8 x i8], ptr %i.eyu, i64 %i.eyt
  %i.eyw = load ptr, ptr %i.eyv, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i2530 = icmp eq ptr %i.eyw, null
  br i1 %.not.i.i.i.i2530, label %.loopexit.i.i, label %bb.ame

bb.ame:                                           ; preds = %bb.amd
  %i.eyx = load ptr, ptr %i.eyw, align 8, !tbaa !55 ; 3 uses
  %i.eyy = getelementptr inbounds nuw i8, ptr %i.eyx, i64 8
  %i.eyz = load i64, ptr %i.eyy, align 8, !tbaa !46
  %i.eza = icmp eq i64 %i.eyq, %i.eyz
  br i1 %i.eza, label %.loopexit3122, label %.lr.ph.i.i.i.i2531

bb.amf:                                           ; preds = %bb.amg
  %i.ezb = icmp eq i64 %i.eyq, %i.eze
  br i1 %i.ezb, label %.loopexit3122, label %.lr.ph.i.i.i.i2531, !llvm.loop !371

.lr.ph.i.i.i.i2531:                               ; preds = %bb.ame, %bb.amf
  %.020.i.i.i.i2532 = phi ptr [ %i.ezc, %bb.amf ], [ %i.eyx, %bb.ame ]
  %i.ezc = load ptr, ptr %.020.i.i.i.i2532, align 8, !tbaa !55 ; 4 uses
  %.not18.i.i.i.i2533 = icmp eq ptr %i.ezc, null
  br i1 %.not18.i.i.i.i2533, label %.loopexit.i.i, label %bb.amg

bb.amg:                                           ; preds = %.lr.ph.i.i.i.i2531
  %i.ezd = getelementptr inbounds nuw i8, ptr %i.ezc, i64 8
  %i.eze = load i64, ptr %i.ezd, align 8, !tbaa !46 ; 2 uses
  %i.ezf = urem i64 %i.eze, %i.eys
  %.not19.i.i.i.i2534 = icmp eq i64 %i.ezf, %i.eyt
  br i1 %.not19.i.i.i.i2534, label %bb.amf, label %..loopexit_crit_edge21.i.i.i.i2535, !llvm.loop !371

..loopexit_crit_edge21.i.i.i.i2535:               ; preds = %bb.amg
  br label %.loopexit.i.i, !llvm.loop !371

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i2531, %..loopexit_crit_edge21.i.i.i.i2535, %bb.amd
  %i.ezg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %.noexc2536 unwind label %bb.amo ; 5 uses

.noexc2536:                                       ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ezg, align 8, !tbaa !55
  %i.ezh = getelementptr inbounds nuw i8, ptr %i.ezg, i64 8
  store i64 %i.eyq, ptr %i.ezh, align 8, !tbaa !372
  %i.ezi = getelementptr inbounds nuw i8, ptr %i.ezg, i64 16
  store ptr null, ptr %i.ezi, align 8, !tbaa !374
  %i.ezj = invoke ptr @_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.eyp, i64 noundef %i.eyt, i64 noundef %i.eyq, ptr noundef nonnull %i.ezg, i64 noundef 1)
          to label %.loopexit3122 unwind label %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc2536
  %i.ezk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ezg) #23
  br label %.body

.loopexit3122:                                    ; preds = %bb.amf, %.noexc2536, %bb.ame
  %.pn.i.i = phi ptr [ %i.ezj, %.noexc2536 ], [ %i.eyx, %bb.ame ], [ %i.ezc, %bb.amf ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.eya, ptr %.1.i.i, align 8, !tbaa !65
  %i.ezl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.amh unwind label %bb.amo

bb.amh:                                           ; preds = %.loopexit3122
  %i.ezm = getelementptr inbounds nuw i8, ptr %i.ezl, i64 8
  %i.ezn = load i8, ptr %i.ezm, align 8, !tbaa !75
  %i.ezo = icmp eq i8 %i.ezn, 78
  br i1 %i.ezo, label %bb.ami, label %.loopexit3113

bb.ami:                                           ; preds = %bb.amh
  %i.ezp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.amj unwind label %bb.amp

bb.amj:                                           ; preds = %bb.ami
  %i.ezq = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZN6duckdb15LogicalOperator4CastINS_19LogicalRecursiveCTEEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.ezp)
          to label %bb.amk unwind label %bb.amp   ; 3 uses

bb.amk:                                           ; preds = %bb.amj
  %i.ezr = getelementptr inbounds nuw i8, ptr %i.ezq, i64 192 ; 3 uses
  %i.ezs = load ptr, ptr %i.ezr, align 8, !tbaa !264
  %i.ezt = getelementptr inbounds nuw i8, ptr %i.ezq, i64 200 ; 4 uses
  %i.ezu = load ptr, ptr %i.ezt, align 8, !tbaa !264
  %i.ezv = icmp eq ptr %i.ezs, %i.ezu
  br i1 %i.ezv, label %.loopexit3113, label %.preheader3112

.preheader3112:                                   ; preds = %bb.amk
  %i.ezw = load ptr, ptr %i.eyh, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.ezx = getelementptr inbounds nuw i8, ptr %i.ezw, i64 8
  %i.ezy = load ptr, ptr %i.ezx, align 8, !tbaa !42 ; 2 uses
  %i.ezz = load ptr, ptr %i.ezw, align 8, !tbaa !45 ; 2 uses
  %.not3542 = icmp eq ptr %i.ezy, %i.ezz
  br i1 %.not3542, label %.loopexit3113, label %.lr.ph3451

.lr.ph3451:                                       ; preds = %.preheader3112
  %i.faa = getelementptr inbounds nuw i8, ptr %180, i64 16 ; 3 uses
  %i.fab = getelementptr inbounds nuw i8, ptr %180, i64 40 ; 5 uses
  %i.fac = getelementptr inbounds nuw i8, ptr %180, i64 56 ; 4 uses
  %i.fad = getelementptr inbounds nuw i8, ptr %180, i64 48
  %i.fae = getelementptr inbounds nuw i8, ptr %180, i64 72
  %i.faf = getelementptr inbounds nuw i8, ptr %i.ezq, i64 208 ; 2 uses
  br label %bb.amq

bb.aml:                                           ; preds = %bb.alx, %.critedge875
  %i.fag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2544

bb.amm:                                           ; preds = %bb.aly
  %i.fah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541

bb.amn:                                           ; preds = %bb.ama, %bb.alz
  %i.fai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.faj = load ptr, ptr %178, align 8, !tbaa !65 ; 3 uses
  %.not.i2539 = icmp eq ptr %i.faj, null
  br i1 %.not.i2539, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2540

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2540: ; preds = %bb.amn
  %i.fak = load ptr, ptr %i.faj, align 8, !tbaa !67
  %i.fal = getelementptr inbounds nuw i8, ptr %i.fak, i64 8
  %i.fam = load ptr, ptr %i.fal, align 8
  call void %i.fam(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.faj) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2540, %bb.amn, %bb.amm
  %.pn584 = phi { ptr, i32 } [ %i.fah, %bb.amm ], [ %i.fai, %bb.amn ], [ %i.fai, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2540 ] ; 2 uses
  %i.fan = load ptr, ptr %179, align 8, !tbaa !65 ; 3 uses
  %.not.i2542 = icmp eq ptr %i.fan, null
  br i1 %.not.i2542, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2544, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2543

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2543: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541
  %i.fao = load ptr, ptr %i.fan, align 8, !tbaa !67
  %i.fap = getelementptr inbounds nuw i8, ptr %i.fao, i64 8
  %i.faq = load ptr, ptr %i.fap, align 8
  call void %i.faq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fan) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2544

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2544: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2543, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541, %bb.aml
  %.pn584.pn = phi { ptr, i32 } [ %i.fag, %bb.aml ], [ %.pn584, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2541 ], [ %.pn584, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2543 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #22
  br label %.body

bb.amo:                                           ; preds = %.loopexit.i.i, %bb.amc, %.loopexit3122, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2528
  %i.far = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.amp:                                           ; preds = %bb.amj, %bb.ami
  %i.fas = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.amq:                                           ; preds = %.lr.ph3451, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit
  %i.fat = phi ptr [ %i.ezz, %.lr.ph3451 ], [ %i.fdy, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit ] ; 2 uses
  %i.fau = phi ptr [ %i.ezy, %.lr.ph3451 ], [ %i.fdx, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit ]
  %storemerge5873450 = phi i64 [ 0, %.lr.ph3451 ], [ %i.fdu, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #22
  %i.fav = ptrtoint ptr %i.fau to i64
  %i.faw = ptrtoint ptr %i.fat to i64
  %i.fax = sub i64 %i.fav, %i.faw
  %i.fay = sdiv exact i64 %i.fax, 80              ; 2 uses
  %.not.i.i.i2545 = icmp ult i64 %storemerge5873450, %i.fay
  br i1 %.not.i.i.i2545, label %bb.ams, label %bb.amr

bb.amr:                                           ; preds = %bb.amq
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge5873450, i64 noundef %i.fay) #24
          to label %.noexc2546 unwind label %.loopexit.split-lp3115

.noexc2546:                                       ; preds = %bb.amr
  unreachable

bb.ams:                                           ; preds = %bb.amq
  %i.faz = getelementptr inbounds nuw [80 x i8], ptr %i.fat, i64 %storemerge5873450 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %180, ptr noundef nonnull align 8 dereferenceable(80) %i.faz, i64 16, i1 false), !tbaa.struct !262
  %i.fba = getelementptr inbounds nuw i8, ptr %i.faz, i64 16
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.faa, ptr noundef nonnull align 8 dereferenceable(24) %i.fba)
          to label %.noexc2549 unwind label %.loopexit3114

.noexc2549:                                       ; preds = %bb.ams
  %i.fbb = getelementptr inbounds nuw i8, ptr %i.faz, i64 40
  store ptr %i.fac, ptr %i.fab, align 8, !tbaa !203
  %i.fbc = load ptr, ptr %i.fbb, align 8, !tbaa !70 ; 2 uses
  %i.fbd = getelementptr inbounds nuw i8, ptr %i.faz, i64 48
  %i.fbe = load i64, ptr %i.fbd, align 8, !tbaa !204 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.fbe, ptr %i.a, align 8, !tbaa !46
  %i.fbf = icmp ugt i64 %i.fbe, 15
  br i1 %i.fbf, label %.noexc.i.i, label %._crit_edge.i.i.i2548

.noexc.i.i:                                       ; preds = %.noexc2549
  %i.fbg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.amv ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.fbg, ptr %i.fab, align 8, !tbaa !70
  %i.fbh = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.fbh, ptr %i.fac, align 8, !tbaa !205
  br label %._crit_edge.i.i.i2548

._crit_edge.i.i.i2548:                            ; preds = %.noexc.i, %.noexc2549
  %i.fbi = phi ptr [ %i.fbg, %.noexc.i ], [ %i.fac, %.noexc2549 ] ; 2 uses
  switch i64 %i.fbe, label %bb.amu [
    i64 1, label %bb.amt
    i64 0, label %bb.amw
  ]

bb.amt:                                           ; preds = %._crit_edge.i.i.i2548
  %i.fbj = load i8, ptr %i.fbc, align 1, !tbaa !205
  store i8 %i.fbj, ptr %i.fbi, align 1, !tbaa !205
  br label %bb.amw

bb.amu:                                           ; preds = %._crit_edge.i.i.i2548
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fbi, ptr align 1 %i.fbc, i64 %i.fbe, i1 false)
  br label %bb.amw

bb.amv:                                           ; preds = %.noexc.i.i
  %i.fbk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.faa) #22
  br label %.body2550

bb.amw:                                           ; preds = %bb.amu, %bb.amt, %._crit_edge.i.i.i2548
  %i.fbl = load i64, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  store i64 %i.fbl, ptr %i.fad, align 8, !tbaa !204
  %i.fbm = load ptr, ptr %i.fab, align 8, !tbaa !70
  %i.fbn = getelementptr inbounds nuw i8, ptr %i.fbm, i64 %i.fbl
  store i8 0, ptr %i.fbn, align 1, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.fbo = getelementptr inbounds nuw i8, ptr %i.faz, i64 72
  %i.fbp = load i64, ptr %i.fbo, align 8, !tbaa !812
  store i64 %i.fbp, ptr %i.fae, align 8, !tbaa !812
  %i.fbq = load ptr, ptr %i.eyh, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.fbr = getelementptr inbounds nuw i8, ptr %i.fbq, i64 8
  %i.fbs = load ptr, ptr %i.fbr, align 8, !tbaa !42
  %i.fbt = load ptr, ptr %i.fbq, align 8, !tbaa !45 ; 2 uses
  %i.fbu = ptrtoint ptr %i.fbs to i64
  %i.fbv = ptrtoint ptr %i.fbt to i64
  %i.fbw = sub i64 %i.fbu, %i.fbv
  %i.fbx = sdiv exact i64 %i.fbw, 80              ; 2 uses
  %.not.i.i.i2552 = icmp ult i64 %storemerge5873450, %i.fbx
  br i1 %.not.i.i.i2552, label %bb.amy, label %bb.amx

bb.amx:                                           ; preds = %bb.amw
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge5873450, i64 noundef %i.fbx) #24
          to label %.noexc2553 unwind label %bb.ani

.noexc2553:                                       ; preds = %bb.amx
  unreachable

bb.amy:                                           ; preds = %bb.amw
  %i.fby = load i64, ptr %i.eyc, align 8, !tbaa !407
  %i.fbz = load i64, ptr %i.eye, align 8, !tbaa !408
  %i.fca = add i64 %i.fbz, %storemerge5873450
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.fcb = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25
          to label %.noexc2559 unwind label %bb.anj ; 6 uses

.noexc2559:                                       ; preds = %bb.amy
  %i.fcc = getelementptr inbounds nuw [80 x i8], ptr %i.fbt, i64 %storemerge5873450
  %i.fcd = getelementptr inbounds nuw i8, ptr %i.fcc, i64 16
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fcd)
          to label %bb.amz unwind label %bb.ana, !noalias !814

bb.amz:                                           ; preds = %.noexc2559
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.fcb, ptr noundef nonnull %5, i64 %i.fby, i64 %i.fca, i64 noundef 0)
          to label %bb.and unwind label %bb.anb, !noalias !814

bb.ana:                                           ; preds = %.noexc2559
  %i.fce = landingpad { ptr, i32 }
          cleanup
  br label %bb.anc

bb.anb:                                           ; preds = %bb.amz
  %i.fcf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22, !noalias !814
  br label %bb.anc

bb.anc:                                           ; preds = %bb.anb, %bb.ana
  %.pn.i2555 = phi { ptr, i32 } [ %i.fcf, %bb.anb ], [ %i.fce, %bb.ana ]
  call void @_ZdlPv(ptr noundef nonnull %i.fcb) #23, !noalias !814
  br label %.body2560

bb.and:                                           ; preds = %bb.amz
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22, !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fcg = load ptr, ptr %i.ezt, align 8, !tbaa !209 ; 6 uses
  %i.fch = load ptr, ptr %i.faf, align 8, !tbaa !210
  %.not.i.i2563 = icmp eq ptr %i.fcg, %i.fch
  br i1 %.not.i.i2563, label %bb.anf, label %bb.ane

bb.ane:                                           ; preds = %bb.and
  %i.fci = ptrtoint ptr %i.fcb to i64
  store i64 %i.fci, ptr %i.fcg, align 8, !tbaa !211
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fcg, i64 8
  store ptr %i.fcj, ptr %i.ezt, align 8, !tbaa !209
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2584

bb.anf:                                           ; preds = %bb.and
  %i.fck = load ptr, ptr %i.ezr, align 8, !tbaa !212 ; 10 uses
  %i.fcl = ptrtoint ptr %i.fcg to i64             ; 3 uses
  %i.fcm = ptrtoint ptr %i.fck to i64             ; 3 uses
  %i.fcn = sub i64 %i.fcl, %i.fcm                 ; 3 uses
  %i.fco = icmp eq i64 %i.fcn, 9223372036854775800
  br i1 %i.fco, label %bb.ang, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i2564

bb.ang:                                           ; preds = %bb.anf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
          to label %.noexc2576 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590.loopexit.split-lp

.noexc2576:                                       ; preds = %bb.ang
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i2564: ; preds = %bb.anf
  %i.fcp = ashr exact i64 %i.fcn, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i2565 = call i64 @llvm.umax.i64(i64 %i.fcp, i64 1)
  %i.fcq = add nsw i64 %.sroa.speculated.i.i.i.i2565, %i.fcp ; 2 uses
  %i.fcr = icmp ult i64 %i.fcq, %i.fcp
  %i.fcs = call i64 @llvm.umin.i64(i64 %i.fcq, i64 1152921504606846975)
  %i.fct = select i1 %i.fcr, i64 1152921504606846975, i64 %i.fcs ; 3 uses
  %.not.i.i.i.i2566 = icmp ne i64 %i.fct, 0
  call void @llvm.assume(i1 %.not.i.i.i.i2566)
  %i.fcu = shl nuw nsw i64 %i.fct, 3
  %i.fcv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fcu) #25
          to label %.noexc2577 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590.loopexit ; 10 uses

.noexc2577:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i2564
  %i.fcw = getelementptr inbounds nuw i8, ptr %i.fcv, i64 %i.fcn
  %i.fcx = ptrtoint ptr %i.fcb to i64
  store i64 %i.fcx, ptr %i.fcw, align 8, !tbaa !211
  %.not10.i.i.i.i.i.i.i2567 = icmp eq ptr %i.fck, %i.fcg
  br i1 %.not10.i.i.i.i.i.i.i2567, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i2572, label %.lr.ph.i.i.i.i.i.i.i2568.preheader

.lr.ph.i.i.i.i.i.i.i2568.preheader:               ; preds = %.noexc2577
  %i.fcy = sub i64 %i.fcl, %i.fcm
  %i.fcz = add i64 %i.fcy, -8                     ; 2 uses
  %i.fda = lshr i64 %i.fcz, 3
  %i.fdb = add nuw nsw i64 %i.fda, 1              ; 2 uses
  %min.iters.check5200 = icmp ult i64 %i.fcz, 56
  br i1 %min.iters.check5200, label %.lr.ph.i.i.i.i.i.i.i2568.preheader5835, label %vector.memcheck5191

vector.memcheck5191:                              ; preds = %.lr.ph.i.i.i.i.i.i.i2568.preheader
  %scevgep5192.a = getelementptr i8, ptr %i.fcv, i64 8
  %i.fdc = add i64 %i.fcl, -8
  %i.fdd = sub i64 %i.fdc, %i.fcm
  %i.fde = and i64 %i.fdd, -8                     ; 2 uses
  %scevgep5193.a = getelementptr i8, ptr %scevgep5192.a, i64 %i.fde
  %scevgep5194 = getelementptr i8, ptr %i.fck, i64 8
  %scevgep5195 = getelementptr i8, ptr %scevgep5194, i64 %i.fde
  %bound05196 = icmp ult ptr %i.fcv, %scevgep5195
  %bound15197 = icmp ult ptr %i.fck, %scevgep5193.a
  %found.conflict5198 = and i1 %bound05196, %bound15197
  br i1 %found.conflict5198, label %.lr.ph.i.i.i.i.i.i.i2568.preheader5835, label %vector.ph5201

vector.ph5201:                                    ; preds = %vector.memcheck5191
  %n.vec5203 = and i64 %i.fdb, 4611686018427387900 ; 3 uses
  %i.fdf = shl i64 %n.vec5203, 3                  ; 2 uses
  %i.fdg = getelementptr i8, ptr %i.fcv, i64 %i.fdf ; 2 uses
  %i.fdh = getelementptr i8, ptr %i.fck, i64 %i.fdf
  br label %vector.body5204

vector.body5204:                                  ; preds = %vector.body5204, %vector.ph5201
  %index5205 = phi i64 [ 0, %vector.ph5201 ], [ %index.next5210, %vector.body5204 ] ; 2 uses
  %i.fdi = shl i64 %index5205, 3                  ; 2 uses
  %next.gep5206 = getelementptr i8, ptr %i.fcv, i64 %i.fdi ; 2 uses
  %next.gep5207 = getelementptr i8, ptr %i.fck, i64 %i.fdi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.fdj = getelementptr i8, ptr %next.gep5207, i64 16
  %wide.load5208 = load <2 x i64>, ptr %next.gep5207, align 8, !tbaa !211, !alias.scope !822, !noalias !817
  %wide.load5209 = load <2 x i64>, ptr %i.fdj, align 8, !tbaa !211, !alias.scope !822, !noalias !817
  %i.fdk = getelementptr i8, ptr %next.gep5206, i64 16
  store <2 x i64> %wide.load5208, ptr %next.gep5206, align 8, !tbaa !211, !alias.scope !825, !noalias !822
  store <2 x i64> %wide.load5209, ptr %i.fdk, align 8, !tbaa !211, !alias.scope !825, !noalias !822
  %i.fdl = getelementptr i8, ptr %next.gep5207, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5207, align 8, !tbaa !211, !alias.scope !822, !noalias !817
  store <2 x ptr> splat (ptr null), ptr %i.fdl, align 8, !tbaa !211, !alias.scope !822, !noalias !817
  %index.next5210 = add nuw i64 %index5205, 4     ; 2 uses
  %i.fdm = icmp eq i64 %index.next5210, %n.vec5203
  br i1 %i.fdm, label %middle.block5211, label %vector.body5204, !llvm.loop !827

middle.block5211:                                 ; preds = %vector.body5204
  %cmp.n5212 = icmp eq i64 %i.fdb, %n.vec5203
  br i1 %cmp.n5212, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i2572, label %.lr.ph.i.i.i.i.i.i.i2568.preheader5835

.lr.ph.i.i.i.i.i.i.i2568.preheader5835:           ; preds = %vector.memcheck5191, %.lr.ph.i.i.i.i.i.i.i2568.preheader, %middle.block5211
  %.012.i.i.i.i.i.i.i2569.ph = phi ptr [ %i.fcv, %vector.memcheck5191 ], [ %i.fcv, %.lr.ph.i.i.i.i.i.i.i2568.preheader ], [ %i.fdg, %middle.block5211 ]
  %.0911.i.i.i.i.i.i.i2570.ph = phi ptr [ %i.fck, %vector.memcheck5191 ], [ %i.fck, %.lr.ph.i.i.i.i.i.i.i2568.preheader ], [ %i.fdh, %middle.block5211 ]
  br label %.lr.ph.i.i.i.i.i.i.i2568

.lr.ph.i.i.i.i.i.i.i2568:                         ; preds = %.lr.ph.i.i.i.i.i.i.i2568.preheader5835, %.lr.ph.i.i.i.i.i.i.i2568
  %.012.i.i.i.i.i.i.i2569 = phi ptr [ %i.fdp, %.lr.ph.i.i.i.i.i.i.i2568 ], [ %.012.i.i.i.i.i.i.i2569.ph, %.lr.ph.i.i.i.i.i.i.i2568.preheader5835 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i2570 = phi ptr [ %i.fdo, %.lr.ph.i.i.i.i.i.i.i2568 ], [ %.0911.i.i.i.i.i.i.i2570.ph, %.lr.ph.i.i.i.i.i.i.i2568.preheader5835 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.fdn = load i64, ptr %.0911.i.i.i.i.i.i.i2570, align 8, !tbaa !211, !alias.scope !820, !noalias !817
  store i64 %i.fdn, ptr %.012.i.i.i.i.i.i.i2569, align 8, !tbaa !211, !alias.scope !817, !noalias !820
  store ptr null, ptr %.0911.i.i.i.i.i.i.i2570, align 8, !tbaa !211, !alias.scope !820, !noalias !817
  %i.fdo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i2570, i64 8 ; 2 uses
  %i.fdp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i2569, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i2571 = icmp eq ptr %i.fdo, %i.fcg
  br i1 %.not.i.i.i.i.i.i.i2571, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i2572, label %.lr.ph.i.i.i.i.i.i.i2568, !llvm.loop !828

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i2572: ; preds = %.lr.ph.i.i.i.i.i.i.i2568, %middle.block5211, %.noexc2577
  %.0.lcssa.i.i.i.i.i.i.i2573 = phi ptr [ %i.fcv, %.noexc2577 ], [ %i.fdg, %middle.block5211 ], [ %i.fdp, %.lr.ph.i.i.i.i.i.i.i2568 ]
  %i.fdq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i2573, i64 8
  %.not.i23.i.i.i2574 = icmp eq ptr %i.fck, null
  br i1 %.not.i23.i.i.i2574, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i2575, label %bb.anh

bb.anh:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i2572
  call void @_ZdlPv(ptr noundef nonnull %i.fck) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i2575

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i2575: ; preds = %bb.anh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i2572
  store ptr %i.fcv, ptr %i.ezr, align 8, !tbaa !212
  store ptr %i.fdq, ptr %i.ezt, align 8, !tbaa !209
  %i.fdr = getelementptr inbounds nuw [8 x i8], ptr %i.fcv, i64 %i.fct
  store ptr %i.fdr, ptr %i.faf, align 8, !tbaa !210
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2584

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2584: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i2575, %bb.ane
  %i.fds = load ptr, ptr %i.fab, align 8, !tbaa !70 ; 2 uses
  %i.fdt = icmp eq ptr %i.fds, %i.fac
  br i1 %i.fdt, label %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2584
  call void @_ZdlPv(ptr noundef %i.fds) #23
  br label %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit

_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit:        ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2584, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.faa) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #22
  %i.fdu = add nuw i64 %storemerge5873450, 1      ; 2 uses
  %i.fdv = load ptr, ptr %i.eyh, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.fdw = getelementptr inbounds nuw i8, ptr %i.fdv, i64 8
  %i.fdx = load ptr, ptr %i.fdw, align 8, !tbaa !42 ; 2 uses
  %i.fdy = load ptr, ptr %i.fdv, align 8, !tbaa !45 ; 2 uses
  %i.fdz = ptrtoint ptr %i.fdx to i64
  %i.fea = ptrtoint ptr %i.fdy to i64
  %i.feb = sub i64 %i.fdz, %i.fea
  %i.fec = sdiv exact i64 %i.feb, 80
  %i.fed = icmp ult i64 %i.fdu, %i.fec
  br i1 %i.fed, label %bb.amq, label %.loopexit3113, !llvm.loop !829

.loopexit3114:                                    ; preds = %bb.ams
  %lpad.loopexit3116 = landingpad { ptr, i32 }
          cleanup
  br label %.body2550

.loopexit.split-lp3115:                           ; preds = %bb.amr
  %lpad.loopexit.split-lp3117 = landingpad { ptr, i32 }
          cleanup
  br label %.body2550

bb.ani:                                           ; preds = %bb.amx
  %i.fee = landingpad { ptr, i32 }
          cleanup
  br label %.body2560

bb.anj:                                           ; preds = %bb.amy
  %i.fef = landingpad { ptr, i32 }
          cleanup
  br label %.body2560

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i2564
  %lpad.loopexit3119 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590.loopexit.split-lp: ; preds = %bb.ang
  %lpad.loopexit.split-lp3120 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590.loopexit
  %lpad.phi3121 = phi { ptr, i32 } [ %lpad.loopexit3119, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590.loopexit ], [ %lpad.loopexit.split-lp3120, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590.loopexit.split-lp ]
  %i.feg = load ptr, ptr %i.fcb, align 8, !tbaa !67
  %i.feh = getelementptr inbounds nuw i8, ptr %i.feg, i64 8
  %i.fei = load ptr, ptr %i.feh, align 8
  call void %i.fei(ptr noundef nonnull align 8 dereferenceable(88) %i.fcb) #22, !inline_history !229
  br label %.body2560

.body2560:                                        ; preds = %bb.anj, %bb.anc, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590, %bb.ani
  %.pn588 = phi { ptr, i32 } [ %lpad.phi3121, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit2590 ], [ %i.fee, %bb.ani ], [ %i.fef, %bb.anj ], [ %.pn.i2555, %bb.anc ]
  call void @_ZN6duckdb20CorrelatedColumnInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %180) #22
  br label %.body2550

.body2550:                                        ; preds = %.loopexit3114, %.loopexit.split-lp3115, %bb.amv, %.body2560
  %.pn588.pn = phi { ptr, i32 } [ %.pn588, %.body2560 ], [ %i.fbk, %bb.amv ], [ %lpad.loopexit3116, %.loopexit3114 ], [ %lpad.loopexit.split-lp3117, %.loopexit.split-lp3115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #22
  br label %.body

.loopexit3113:                                    ; preds = %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit, %.preheader3112, %bb.amk, %bb.amh
  %i.fej = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ank unwind label %bb.anl

bb.ank:                                           ; preds = %.loopexit3113
  %i.fek = getelementptr inbounds nuw i8, ptr %i.fej, i64 8
  %i.fel = load i8, ptr %i.fek, align 8, !tbaa !75
  %i.fem = icmp eq i8 %i.fel, 78
  br i1 %i.fem, label %bb.ant, label %bb.anm

bb.anl:                                           ; preds = %bb.anm, %.loopexit3113
  %i.fen = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.anm:                                           ; preds = %bb.ank
  %i.feo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ann unwind label %bb.anl

bb.ann:                                           ; preds = %bb.anm
  %i.fep = getelementptr inbounds nuw i8, ptr %i.feo, i64 8
  %i.feq = load i8, ptr %i.fep, align 8, !tbaa !75
  %i.fer = icmp eq i8 %i.feq, 79
  br i1 %i.fer, label %bb.ant, label %bb.ano

bb.ano:                                           ; preds = %bb.ann
  %i.fes = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %181, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %182)
          to label %bb.anp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593.thread

bb.anp:                                           ; preds = %bb.ano
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fes, ptr noundef nonnull align 8 dereferenceable(32) %181)
          to label %bb.anq unwind label %bb.anr

bb.anq:                                           ; preds = %bb.anp
  invoke void @__cxa_throw(ptr nonnull %i.fes, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.aqf unwind label %bb.anr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593.thread: ; preds = %bb.ano
  %i.fet = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #22
  br label %bb.ans

bb.anr:                                           ; preds = %bb.anq, %bb.anp
  %.0521 = phi i1 [ false, %bb.anq ], [ true, %bb.anp ] ; 2 uses
  %i.feu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fev = load ptr, ptr %181, align 8, !tbaa !70 ; 2 uses
  %i.few = getelementptr inbounds nuw i8, ptr %181, i64 16
  %i.fex = icmp eq ptr %i.fev, %i.few
  br i1 %i.fex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2591: ; preds = %bb.anr
  call void @_ZdlPv(ptr noundef %i.fev) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #22
  br i1 %.0521, label %bb.ans, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593: ; preds = %bb.anr
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #22
  br i1 %.0521, label %bb.ans, label %.body

bb.ans:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2591, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593
  %.pn5922999 = phi { ptr, i32 } [ %i.fet, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593.thread ], [ %i.feu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2593 ], [ %i.feu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2591 ]
  call void @__cxa_free_exception(ptr %i.fes) #22
  br label %.body

bb.ant:                                           ; preds = %bb.ann, %bb.ank
  %.0523 = phi i32 [ 2, %bb.ank ], [ 1, %bb.ann ]
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #22
  %i.fey = load ptr, ptr %i.eyh, align 8, !tbaa !49, !nonnull !50, !align !51
  invoke void @_ZN6duckdb14RewriteCTEScanC1EmRKNS_17CorrelatedColumnsENS_18CTEScanRewriteModeE(ptr noundef nonnull align 8 dereferenceable(28) %183, i64 noundef %i.eyg, ptr noundef nonnull align 8 dereferenceable(32) %i.fey, i32 noundef %.0523)
          to label %bb.anu unwind label %bb.aos

bb.anu:                                           ; preds = %bb.ant
  %i.fez = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.anv unwind label %bb.aot

bb.anv:                                           ; preds = %bb.anu
  %i.ffa = getelementptr inbounds nuw i8, ptr %i.fez, i64 16
  %i.ffb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ffa, i64 noundef 1)
          to label %bb.anw unwind label %bb.aot

bb.anw:                                           ; preds = %bb.anv
  %i.ffc = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ffb)
          to label %bb.anx unwind label %bb.aot

bb.anx:                                           ; preds = %bb.anw
  invoke void @_ZN6duckdb14RewriteCTEScan13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(28) %183, ptr noundef nonnull align 8 dereferenceable(97) %i.ffc)
          to label %bb.any unwind label %bb.aot

bb.any:                                           ; preds = %bb.anx
  store i8 0, ptr %3, align 1, !tbaa !340
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #22
  %i.ffd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.anz unwind label %bb.aou

bb.anz:                                           ; preds = %bb.any
  %i.ffe = getelementptr inbounds nuw i8, ptr %i.ffd, i64 16
  %i.fff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ffe, i64 noundef 1)
          to label %bb.aoa unwind label %bb.aou   ; 2 uses

bb.aoa:                                           ; preds = %bb.anz
  %i.ffg = load i64, ptr %i.fff, align 8, !tbaa !65
  store i64 %i.ffg, ptr %185, align 8, !tbaa !65
  store ptr null, ptr %i.fff, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %184, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %185, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.aob unwind label %bb.aov

bb.aob:                                           ; preds = %bb.aoa
  %i.ffh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.aoc unwind label %bb.aow

bb.aoc:                                           ; preds = %bb.aob
  %i.ffi = getelementptr inbounds nuw i8, ptr %i.ffh, i64 16
  %i.ffj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ffi, i64 noundef 1)
          to label %bb.aod unwind label %bb.aow   ; 2 uses

bb.aod:                                           ; preds = %bb.aoc
  %i.ffk = load ptr, ptr %184, align 8, !tbaa !65
  store ptr null, ptr %184, align 8, !tbaa !65
  %i.ffl = load ptr, ptr %i.ffj, align 8, !tbaa !65 ; 3 uses
  store ptr %i.ffk, ptr %i.ffj, align 8, !tbaa !65
  %.not.i.i.i.i.i2594 = icmp eq ptr %i.ffl, null
  br i1 %.not.i.i.i.i.i2594, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2595

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2595: ; preds = %bb.aod
  %i.ffm = load ptr, ptr %i.ffl, align 8, !tbaa !67
  %i.ffn = getelementptr inbounds nuw i8, ptr %i.ffm, i64 8
  %i.ffo = load ptr, ptr %i.ffn, align 8
  call void %i.ffo(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ffl) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596: ; preds = %bb.aod, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i2595
  %i.ffp = load ptr, ptr %184, align 8, !tbaa !65 ; 3 uses
  %.not.i2597 = icmp eq ptr %i.ffp, null
  br i1 %.not.i2597, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit2599, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2598

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i2598: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit2596
  %i.ffq = load ptr, ptr %i.ffp, align 8, !tbaa !67
end_hunk_0
