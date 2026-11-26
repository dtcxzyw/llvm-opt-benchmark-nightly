Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/learner?download=true
inline.NumInlined: 7339
inline.NumDeleted: 2452
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9CacheItemIJEEESt10shared_ptrIS1_ES4_INS_7DMatrixEEDpRKT_:bb.a
  %i.df = load ptr, ptr %i.am, align 8, !tbaa !58 ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.df, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.dg, align 8, !tbaa !60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !61
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !inline_history !20
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !54
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !inline_history !20
  br label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i40 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i40, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.au:                                            ; preds = %bb.as
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i42 = phi i32 [ %i.dj, %bb.at ], [ %i.dt, %bb.au ]
  %i.du = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.du, label %bb.av, label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17
  br label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !337 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !338
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -16
  %.not.i.i43 = icmp eq ptr %i.dw, %i.dz
  br i1 %.not.i.i43, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !340
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !337
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.eb, ptr %i.dv, align 8, !tbaa !337
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE7emplaceIJRS4_EEEDcDpOT_.exit

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_push_back_auxIJRS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE7emplaceIJRS4_EEEDcDpOT_.exit unwind label %bb.az

bb.ay:                                            ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.z, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.bi

bb.az:                                            ; preds = %bb.bc, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE7emplaceIJRS4_EEEDcDpOT_.exit, %bb.ax, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ba:                                            ; preds = %_ZNSt10shared_ptrIN7xgboost7DMatrixEEC2ERKS2_.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bb:                                            ; preds = %_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE4ItemC2ESt10shared_ptrINS_7DMatrixEES4_IS1_E.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE4ItemD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #17
  call void @_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #17
  br label %.body

.body:                                            ; preds = %bb.ba, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost20PredictionCacheEntryESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.bb
  %.pn10 = phi { ptr, i32 } [ %i.ef, %bb.bb ], [ %i.ee, %bb.ba ], [ %i.az, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost20PredictionCacheEntryESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bh

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE7emplaceIJRS4_EEEDcDpOT_.exit: ; preds = %bb.ax, %bb.aw, %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit
  %i.eg = invoke ptr @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc46 unwind label %bb.az  ; 3 uses

.noexc46:                                         ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE7emplaceIJRS4_EEEDcDpOT_.exit
  %.not.i.i45 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i45, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.noexc46
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.47) #41
          to label %.noexc47 unwind label %bb.az

.noexc47:                                         ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %.noexc46
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !58 ; 2 uses
  %i.ek = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !147
  store <2 x ptr> %i.ek, ptr %0, align 8, !tbaa !147
  %.not.i.i.i48 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i48, label %_ZNSt10shared_ptrIN7xgboost20PredictionCacheEntryEEC2ERKS2_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i49 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i49, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.en = load i32, ptr %i.el, align 4, !tbaa !63
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.el, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIN7xgboost20PredictionCacheEntryEEC2ERKS2_.exit

bb.bg:                                            ; preds = %bb.be
  %i.ep = atomicrmw volatile add ptr %i.el, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost20PredictionCacheEntryEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7xgboost20PredictionCacheEntryEEC2ERKS2_.exit: ; preds = %bb.bd, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.eq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #17 ; 0 uses
  ret void

bb.bh:                                            ; preds = %.body, %bb.az
  %.pn12 = phi { ptr, i32 } [ %i.ed, %bb.az ], [ %.pn10, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ay, %bb.i
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %bb.bh ], [ %.pn.pn, %bb.ay ], [ %i.n, %bb.i ]
  %i.er = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #17 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.d
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %bb.bi ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %.pn12.pn.pn

bb.bk:                                            ; preds = %bb.o, %bb.c
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE12ClearExpiredEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::queue", align 8        ; 19 uses
  %2 = alloca %"struct.xgboost::DMatrixCache<xgboost::PredictionCacheEntry>::Key", align 8 ; 5 uses
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %4 = alloca %"class.std::unique_ptr.19", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"struct.xgboost::DMatrixCache<xgboost::PredictionCacheEntry>::Key", align 8 ; 5 uses
  tail call void @_ZNK7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE15CheckConsistentEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !341
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !341  ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %storemerge.i.i, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ]
  %.sroa.076.0134 = phi ptr [ null, %.lr.ph ], [ %.sroa.076.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 9 uses
  %.sroa.16.0133 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 8 uses
  %.sroa.10.0132 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !340
  %i.o = invoke ptr @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit unwind label %.loopexit.split-lp98.loopexit.split-lp ; 3 uses

_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit: ; preds = %bb.b
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.h, !prof !64

bb.c:                                             ; preds = %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.p = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc24 unwind label %bb.e

.noexc24:                                         ; preds = %bb.c
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.p, ptr noundef nonnull @.str.36, i32 noundef 80)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc24
  %i.q = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.39, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

.loopexit.split-lp98.loopexit.split-lp:           ; preds = %bb.o, %_ZNKSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.b, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.e:                                             ; preds = %.noexc24, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.g unwind label %bb.al

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn16 = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.r

bb.h:                                             ; preds = %bb.d, %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !336  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit

_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load atomic i32, ptr %i.y monotonic, align 8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %bb.m

_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread: ; preds = %bb.h, %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  %.not.i = icmp eq ptr %.sroa.10.0132, %.sroa.16.0133
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0132, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !340
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.10.0132, i64 16
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit

bb.j:                                             ; preds = %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread
  %i.ac = ptrtoint ptr %.sroa.16.0133 to i64
  %i.ad = ptrtoint ptr %.sroa.076.0134 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.k, label %_ZNKSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #41
          to label %.noexc30 unwind label %.loopexit.split-lp98.loopexit.split-lp

.noexc30:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #42
          to label %.noexc31 unwind label %.loopexit.split-lp98.loopexit.split-lp ; 5 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !340
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.076.0134, %.sroa.16.0133
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %.noexc31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.sroa.076.0134, %.noexc31 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !340, !alias.scope !713
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %.sroa.16.0133
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !710

_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc31
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %.noexc31 ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %.sroa.076.0134, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0134, i64 noundef %i.ae) #39
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !337 ; 2 uses
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !338
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -16
  %.not.i.i32 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !340
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !337
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %i.i, align 8, !tbaa !337
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit

bb.o:                                             ; preds = %bb.m
  invoke void @_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit.split-lp98.loopexit.split-lp

_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.n, %bb.o, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.i
  %.sroa.10.1 = phi ptr [ %i.ab, %bb.i ], [ %i.aq, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.10.0132, %bb.o ], [ %.sroa.10.0132, %bb.n ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0133, %bb.i ], [ %i.ar, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.16.0133, %bb.o ], [ %.sroa.16.0133, %bb.n ] ; 2 uses
  %.sroa.076.1 = phi ptr [ %.sroa.076.0134, %bb.i ], [ %i.am, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.076.0134, %bb.o ], [ %.sroa.076.0134, %bb.n ] ; 2 uses
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !342 ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !714
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -16
  %.not.i.i34 = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !343
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef 512) #39
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !198
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !344
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !200 ; 3 uses
  store ptr %i.be, ptr %i.l, align 8, !tbaa !345
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !346
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.p, %bb.q
  %storemerge.i.i = phi ptr [ %i.ba, %bb.p ], [ %i.be, %bb.q ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.d, align 8, !tbaa !342
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !341
  %i.bh = icmp eq ptr %i.bg, %storemerge.i.i
  br i1 %i.bh, label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge, label %bb.b, !llvm.loop !711

bb.r:                                             ; preds = %.loopexit.split-lp98.loopexit.split-lp, %bb.g
  %.pn18 = phi { ptr, i32 } [ %.pn16, %bb.g ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp98.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit.split-lp

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge: ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit, %bb.a
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 3 uses
  %.sroa.16.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.16.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 4 uses
  %.sroa.076.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.076.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !344 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !344
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ne ptr %i.bm, null
  %.neg.i.i.i = sext i1 %i.bt to i64
  %i.bu = add nsw i64 %i.bs, %.neg.i.i.i
  %i.bv = shl nsw i64 %i.bu, 5
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !341
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !345
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 4
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !346
  %i.cf = load ptr, ptr %i.bk, align 8, !tbaa !341
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 4
  %i.ck = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.cl = ptrtoint ptr %.sroa.076.0.lcssa to i64  ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = add nsw i64 %i.cc, %i.cn
  %i.cp = add i64 %i.co, %i.bv
  %i.cq = add i64 %i.cp, %i.cj                    ; 2 uses
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !328 ; 2 uses
  store i64 %i.ct, ptr %i.b, align 8, !tbaa !82
  %i.cu = icmp eq i64 %i.cq, %i.ct
  br i1 %i.cu, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %bb.s

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.19") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.u

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.s
  %.pr = load ptr, ptr %4, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not95 = icmp eq ptr %.pr, null
  br i1 %.not95, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.cv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc44 unwind label %bb.v

.noexc44:                                         ; preds = %bb.t
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cv, ptr noundef nonnull @.str.36, i32 noundef 89)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit46 unwind label %bb.v

_ZN4dmlc15LogMessageFatalC2EPKci.exit46:          ; preds = %.noexc44
  %i.cw = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48 unwind label %bb.w ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit46
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.41, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.cz = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !69
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !106
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %i.da, i64 noundef %i.dc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.w

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.y unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aa

bb.v:                                             ; preds = %.noexc44, %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48, %_ZN4dmlc15LogMessageFatalC2EPKci.exit46
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn13 = phi { ptr, i32 } [ %i.dg, %bb.v ], [ %i.dh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  br label %bb.aa

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.pr87 = load ptr, ptr %4, align 8, !tbaa !119  ; 4 uses
  %.not.i56 = icmp eq ptr %.pr87, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = load ptr, ptr %.pr87, align 8, !tbaa !69 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.pr87, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_reallocate_mapEmb:bb.a
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !198 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !107

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyES6_ET0_T_S8_S7_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyES6_ET0_T_S8_S7_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !200
  store ptr %i.be, ptr %i.av, align 8, !tbaa !200
  br label %_ZSt4copyIPPN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyES6_ET0_T_S8_S7_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !197
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !201
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #39
  store ptr %i.aq, ptr %0, align 8, !tbaa !197
  store i64 %i.am, ptr %i.k, align 8, !tbaa !201
  br label %_ZSt4copyIPPN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyES6_ET0_T_S8_S7_.exit

_ZSt4copyIPPN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyES6_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyES6_ET0_T_S8_S7_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyES6_ET0_T_S8_S7_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !344
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !200  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !345
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !346
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !344
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !200 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !345
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !346
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.45, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !82
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.46, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEm.exit
  %i.e = load i64, ptr %2, align 8, !tbaa !82
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.e)
          to label %_ZNSolsEm.exit6 unwind label %bb.f

_ZNSolsEm.exit6:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZNSolsEm.exit6
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #42
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !122, !alias.scope !724
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !106, !alias.scope !724
  store i8 0, ptr %i.i, align 8, !tbaa !62, !alias.scope !724
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183, !noalias !724 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !724 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !184, !noalias !724 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !69, !alias.scope !724 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !62, !alias.scope !724
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #39
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !119
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !54
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !62
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #39
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.f:                                             ; preds = %_ZNSolsEm.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #39
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !328
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !259  ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !335    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !335
  %i.i = icmp eq ptr %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.0.copyload.i.i.i.i35 = load i64, ptr %i.j, align 8
  %i.k = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i35
  %i.l = select i1 %i.i, i1 %i.k, i1 false
  br i1 %i.l, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !335
  %i.o = icmp eq ptr %i.e, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit, label %.lr.ph, !llvm.loop !725

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i36 = phi ptr [ %i.s, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.s = load ptr, ptr %.016.i36, align 8, !tbaa !259 ; 5 uses
  %.not14.i = icmp eq ptr %i.s, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !725

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit: ; preds = %bb.c, %.preheader.i
  %i.t = phi ptr [ %i.d, %.preheader.i ], [ %i.s, %bb.c ] ; 2 uses
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i36, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !156
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #40
  unreachable

_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit: ; preds = %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit
  %i.aa = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.ab = icmp eq i64 %i.x, %i.aa
  %i.ac = select i1 %i.ab, i64 0, i64 %i.x
  %.0.i.i.i.i = xor i64 %i.ac, %i.aa
  %i.ad = urem i64 %.0.i.i.i.i, %i.v
  br label %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit

bb.e:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !335
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS7_.exit unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #40
  unreachable

_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS7_.exit: ; preds = %bb.e
  %i.aj = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ak = icmp eq i64 %i.ag, %i.aj
  %i.al = select i1 %i.ak, i64 0, i64 %i.ag
  %.0.i.i = xor i64 %i.al, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !156
  %i.ao = urem i64 %.0.i.i, %i.an                 ; 3 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !155
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !347 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ar, null
  br i1 %.not.i24, label %.critedge, label %.preheader.i25

.preheader.i25:                                   ; preds = %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS7_.exit, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i
  %.015.i = phi ptr [ %.0.i, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i ], [ %i.ar, %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS7_.exit ] ; 2 uses
  %.0.i = load ptr, ptr %.015.i, align 8, !tbaa !259 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.at = load ptr, ptr %1, align 8, !tbaa !335
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !335
  %i.av = icmp eq ptr %i.at, %i.au
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.af, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.aw, align 8
  %i.ax = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  %i.ay = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %i.ay, label %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.i25
  %i.az = load ptr, ptr %.0.i, align 8, !tbaa !259 ; 3 uses
  %.not18.i = icmp eq ptr %i.az, null
  br i1 %.not18.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !156
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !335
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i unwind label %bb.i ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #40
  unreachable

_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i: ; preds = %bb.h
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bi = icmp eq i64 %i.be, %i.bh
  %i.bj = select i1 %i.bi, i64 0, i64 %i.be
  %.0.i.i.i.i.i = xor i64 %i.bj, %i.bh
  %i.bk = urem i64 %.0.i.i.i.i.i, %i.bb
  %.not19.i = icmp eq i64 %i.bk, %i.ao
  br i1 %.not19.i, label %.preheader.i25, label %.critedge, !llvm.loop !26

_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit: ; preds = %.preheader.i25, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit ], [ %.015.i, %.preheader.i25 ]
  %.119 = phi ptr [ %i.t, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit ], [ %.0.i, %.preheader.i25 ]
  %.017 = phi i64 [ %i.ad, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit ], [ %i.ao, %.preheader.i25 ]
  %i.bl = tail call ptr @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.017, ptr noundef nonnull %.020, ptr noundef nonnull %.119) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i, %.lr.ph, %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS7_.exit, %bb.b, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit
  %.1 = phi i64 [ 1, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS7_.exit ], [ 0, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i ], [ 0, %bb.g ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !347
  %i.d = icmp eq ptr %2, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !259    ; 6 uses
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !156
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !335
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 8, i64 noundef 3339675911)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = icmp eq i64 %i.k, %i.n
  %i.p = select i1 %i.o, i64 0, i64 %i.k
  %.0.i.i.i.i = xor i64 %i.p, %i.n
  %i.q = urem i64 %.0.i.i.i.i, %i.h               ; 2 uses
  %.not9.i = icmp eq i64 %i.q, %1
  br i1 %.not9.i, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !155 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %1 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !347  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.q
  store ptr %i.s, ptr %i.t, align 8, !tbaa !347
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.f
  %i.u = phi ptr [ %i.s, %bb.f ], [ %2, %bb.b ]
  %i.v = phi ptr [ %i.r, %bb.f ], [ %i.b, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  store ptr %i.e, ptr %i.w, align 8, !tbaa !202
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  store ptr null, ptr %i.v, align 8, !tbaa !347
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.not18, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !156
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !335
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ad = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit20 unwind label %bb.k ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #40
  unreachable

_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit20: ; preds = %bb.j
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = icmp eq i64 %i.ad, %i.ag
  %i.ai = select i1 %i.ah, i64 0, i64 %i.ad
  %.0.i.i.i.i19 = xor i64 %i.ai, %i.ag
  %i.aj = urem i64 %.0.i.i.i.i19, %i.aa           ; 2 uses
  %.not17 = icmp eq i64 %i.aj, %1
  br i1 %.not17, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit20
  %i.ak = load ptr, ptr %0, align 8, !tbaa !155
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store ptr %2, ptr %i.al, align 8, !tbaa !347
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit: ; preds = %bb.h, %bb.e, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit20, %bb.l, %bb.i
  %i.am = load ptr, ptr %3, align 8, !tbaa !259   ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !259
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_1
