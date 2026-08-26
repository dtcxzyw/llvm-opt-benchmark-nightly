Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/learner?download=true
inline.NumInlined: 7339
inline.NumDeleted: 2449
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE9CacheItemIJEEESt10shared_ptrIS1_ES4_INS_7DMatrixEEDpRKT_:bb.a
_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE4ItemD2Ev.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ap
  %i.df = load ptr, ptr %i.am, align 8, !tbaa !10 ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.df, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.dg, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !16
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !inline_history !363
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !inline_history !363
  br label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i40 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i40, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.au:                                            ; preds = %bb.as
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i42 = phi i32 [ %i.dj, %bb.at ], [ %i.dt, %bb.au ]
  %i.du = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.du, label %bb.av, label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !20

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17
  br label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !533 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !534
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -16
  %.not.i.i43 = icmp eq ptr %i.dw, %i.dz
  br i1 %.not.i.i43, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !535
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !533
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.eb, ptr %i.dv, align 8, !tbaa !533
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
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !10 ; 2 uses
  %i.ek = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !134
  store <2 x ptr> %i.ek, ptr %0, align 8, !tbaa !134
  %.not.i.i.i48 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i48, label %_ZNSt10shared_ptrIN7xgboost20PredictionCacheEntryEEC2ERKS2_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i49 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i49, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.en = load i32, ptr %i.el, align 4, !tbaa !19
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.el, align 4, !tbaa !19
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
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !537
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !537  ; 2 uses
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
  %.sroa.076.0129 = phi ptr [ null, %.lr.ph ], [ %.sroa.076.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 9 uses
  %.sroa.16.0128 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 8 uses
  %.sroa.10.0127 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1.a, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !535
  %i.o = invoke ptr @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit unwind label %.loopexit ; 3 uses

_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit: ; preds = %bb.b
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.i, !prof !20

bb.c:                                             ; preds = %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.p = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.c
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.p, ptr noundef nonnull @.str.36, i32 noundef 80)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc24
  %i.q = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.g ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.39, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.f:                                             ; preds = %.noexc24, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.h unwind label %bb.ao

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.s

bb.i:                                             ; preds = %bb.d, %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSA_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !531  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit

_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit: ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load atomic i32, ptr %i.z monotonic, align 8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %bb.n

_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread: ; preds = %bb.i, %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  %.not.i = icmp eq ptr %.sroa.10.0127, %.sroa.16.0128
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0127, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !535
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.10.0127, i64 16
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit

bb.k:                                             ; preds = %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread
  %i.ad = ptrtoint ptr %.sroa.16.0128 to i64
  %i.ae = ptrtoint ptr %.sroa.076.0129 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.l, label %_ZNKSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #41
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #42
          to label %.noexc31 unwind label %.loopexit ; 5 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !535
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.076.0129, %.sroa.16.0128
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.an, %.noexc31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.sroa.076.0129, %.noexc31 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !535, !alias.scope !538
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %.sroa.16.0128
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !542

_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc31
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %.noexc31 ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %.sroa.076.0129, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0129, i64 noundef %i.af) #39
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit

bb.n:                                             ; preds = %_ZNKSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !533 ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !534
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -16
  %.not.i.i32 = icmp eq ptr %i.at, %i.av
  br i1 %.not.i.i32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !535
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !533
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ax, ptr %i.i, align 8, !tbaa !533
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit

bb.p:                                             ; preds = %bb.n
  invoke void @_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit

_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.o, %bb.p, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.j
  %.sroa.10.1.a = phi ptr [ %i.ac, %bb.j ], [ %i.ar, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.10.0127, %bb.p ], [ %.sroa.10.0127, %bb.o ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0128, %bb.j ], [ %i.as, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.16.0128, %bb.p ], [ %.sroa.16.0128, %bb.o ] ; 2 uses
  %.sroa.076.1 = phi ptr [ %.sroa.076.0129, %bb.j ], [ %i.an, %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.076.0129, %bb.p ], [ %.sroa.076.0129, %bb.o ] ; 2 uses
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !543 ; 2 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !544
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16
  %.not.i.i34 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.r:                                             ; preds = %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE9push_backERKS4_.exit
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !545
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef 512) #39
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !224
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.m, align 8, !tbaa !546
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !226 ; 3 uses
  store ptr %i.bf, ptr %i.l, align 8, !tbaa !547
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 512
  store ptr %i.bg, ptr %i.k, align 8, !tbaa !548
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.q, %bb.r
  %storemerge.i.i = phi ptr [ %i.bb, %bb.q ], [ %i.bf, %bb.r ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.d, align 8, !tbaa !543
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !537
  %i.bi = icmp eq ptr %i.bh, %storemerge.i.i
  br i1 %i.bi, label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge, label %bb.b, !llvm.loop !549

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.pn18 = phi { ptr, i32 } [ %.pn16, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.am

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge: ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit, %bb.a
  %.sroa.10.0.lcssa.a = phi ptr [ null, %bb.a ], [ %.sroa.10.1.a, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 3 uses
  %.sroa.16.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.16.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 5 uses
  %.sroa.076.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.076.1, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !546 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !546
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = icmp ne ptr %i.bn, null
  %.neg.i.i.i = sext i1 %i.bu to i64
  %i.bv = add nsw i64 %i.bt, %.neg.i.i.i
  %i.bw = shl nsw i64 %i.bv, 5
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !537
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !547
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !548
  %i.cg = load ptr, ptr %i.bl, align 8, !tbaa !537
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 4
  %i.cl = ptrtoint ptr %.sroa.10.0.lcssa.a to i64
  %i.cm = ptrtoint ptr %.sroa.076.0.lcssa to i64  ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 4
  %i.cp = add nsw i64 %i.cd, %i.co
  %i.cq = add i64 %i.cp, %i.bw
  %i.cr = add i64 %i.cq, %i.ck                    ; 2 uses
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !486 ; 2 uses
  store i64 %i.cu, ptr %i.b, align 8, !tbaa !43
  %i.cv = icmp eq i64 %i.cr, %i.cu
  br i1 %i.cv, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %bb.t

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.t:                                             ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit._crit_edge
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.19") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.v

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.t
  %.pr = load ptr, ptr %4, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not95 = icmp eq ptr %.pr, null
  br i1 %.not95, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.cw = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc44 unwind label %bb.w

.noexc44:                                         ; preds = %bb.u
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cw, ptr noundef nonnull @.str.36, i32 noundef 89)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit46 unwind label %bb.w

_ZN4dmlc15LogMessageFatalC2EPKci.exit46:          ; preds = %.noexc44
  %i.cx = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48 unwind label %bb.x ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit46
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull @.str.41, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.da = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !67
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef %i.db, i64 noundef %i.dd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.x

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ab

bb.w:                                             ; preds = %.noexc44, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48, %_ZN4dmlc15LogMessageFatalC2EPKci.exit46
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.y unwind label %bb.ao

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn13 = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %i.di, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  br label %bb.ab

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.pr87 = load ptr, ptr %4, align 8, !tbaa !87   ; 4 uses
  %.not.i56 = icmp eq ptr %.pr87, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = load ptr, ptr %.pr87, align 8, !tbaa !21 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.pr87, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !18
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr87, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not96132 = icmp eq ptr %.sroa.076.0.lcssa, %.sroa.10.0.lcssa.a
  br i1 %.not96132, label %.preheader, label %.lr.ph134

.preheader:                                       ; preds = %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE5eraseERSA_.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.do = load ptr, ptr %i.bk, align 8, !tbaa !537
  %i.dp = load ptr, ptr %i.bl, align 8, !tbaa !537 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %._crit_edge, label %.lr.ph135

.lr.ph135:                                        ; preds = %.preheader
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y, %bb.v
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.y ], [ %i.dg, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.am

.lr.ph134:                                        ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE5eraseERSA_.exit
  %.sroa.068.0133 = phi ptr [ %i.du, %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE5eraseERSA_.exit ], [ %.sroa.076.0.lcssa, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 2 uses
  %i.dt = invoke noundef i64 @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.068.0133)
          to label %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE5eraseERSA_.exit unwind label %bb.ac ; 0 uses

_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE5eraseERSA_.exit: ; preds = %.lr.ph134
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.068.0133, i64 16 ; 2 uses
  %.not96 = icmp eq ptr %i.du, %.sroa.10.0.lcssa.a
  br i1 %.not96, label %.preheader, label %.lr.ph134

bb.ac:                                            ; preds = %.lr.ph134
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %.lr.ph135, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit63
  %i.dw = phi ptr [ %i.dp, %.lr.ph135 ], [ %storemerge.i.i62, %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit63 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !535
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !533 ; 2 uses
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !534
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -16
  %.not.i.i58 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i58, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false)
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !533
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !533
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit60

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit60 unwind label %bb.ai

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit60: ; preds = %bb.ae, %bb.af
  %i.ec = load ptr, ptr %i.bl, align 8, !tbaa !543 ; 2 uses
  %i.ed = load ptr, ptr %i.ce, align 8, !tbaa !544
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -16
  %.not.i.i61 = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i61, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit60
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit63

bb.ah:                                            ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit60
  %i.eg = load ptr, ptr %i.ds, align 8, !tbaa !545
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef 512) #39
  %i.eh = load ptr, ptr %i.bo, align 8, !tbaa !224
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  store ptr %i.ei, ptr %i.bo, align 8, !tbaa !546
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !226 ; 3 uses
  store ptr %i.ej, ptr %i.ds, align 8, !tbaa !547
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 512
  store ptr %i.ek, ptr %i.ce, align 8, !tbaa !548
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit63

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit63: ; preds = %bb.ag, %bb.ah
  %storemerge.i.i62 = phi ptr [ %i.ef, %bb.ag ], [ %i.ej, %bb.ah ] ; 3 uses
  store ptr %storemerge.i.i62, ptr %i.bl, align 8, !tbaa !543
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.el = load ptr, ptr %i.bk, align 8, !tbaa !537
  %i.em = icmp eq ptr %i.el, %storemerge.i.i62
  br i1 %i.em, label %._crit_edge, label %bb.ad, !llvm.loop !550

bb.ai:                                            ; preds = %bb.af
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.am

._crit_edge:                                      ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit63, %.preheader
  invoke void @_ZNK7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE15CheckConsistentEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.aj unwind label %bb.e

bb.aj:                                            ; preds = %._crit_edge
  %i.eo = load ptr, ptr %1, align 8, !tbaa !223   ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i64, label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = load ptr, ptr %i.bo, align 8, !tbaa !224 ; 2 uses
  %i.eq = load ptr, ptr %i.bm, align 8, !tbaa !225 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = icmp ult ptr %i.ep, %i.er
  br i1 %i.es, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i ], [ %i.ep, %bb.ak ] ; 3 uses
  %i.et = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !226
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef 512) #39
  %i.eu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ev = icmp ult ptr %.06.i.i.i.i, %i.eq
  br i1 %i.ev, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !227

_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !223
  br label %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.ak
  %i.ew = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.eo, %bb.ak ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !228
  %i.ez = shl i64 %i.ey, 3
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #39
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEED2Ev.exit

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEED2Ev.exit: ; preds = %bb.aj, %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.not.i.i.i65 = icmp eq ptr %.sroa.076.0.lcssa, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEED2Ev.exit
  %i.fa = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.fb = sub i64 %i.fa, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0.lcssa, i64 noundef %i.fb) #39
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EED2Ev.exit

_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EED2Ev.exit: ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEED2Ev.exit, %bb.al
  ret void

bb.am:                                            ; preds = %bb.e, %bb.s, %bb.ab, %bb.ac, %bb.ai
  %.sroa.16.0119 = phi ptr [ %.sroa.16.0128, %bb.s ], [ %.sroa.16.0.lcssa, %bb.ac ], [ %.sroa.16.0.lcssa, %bb.ai ], [ %.sroa.16.0.lcssa, %bb.e ], [ %.sroa.16.0.lcssa, %bb.ab ]
  %.sroa.076.0111 = phi ptr [ %.sroa.076.0129, %bb.s ], [ %.sroa.076.0.lcssa, %bb.ac ], [ %.sroa.076.0.lcssa, %bb.ai ], [ %.sroa.076.0.lcssa, %bb.e ], [ %.sroa.076.0.lcssa, %bb.ab ] ; 3 uses
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.s ], [ %i.dv, %bb.ac ], [ %i.en, %bb.ai ], [ %i.t, %bb.e ], [ %.pn13.pn, %bb.ab ]
  call void @_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.not.i.i.i66 = icmp eq ptr %.sroa.076.0111, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EED2Ev.exit67, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fc = ptrtoint ptr %.sroa.16.0119 to i64
  %i.fd = ptrtoint ptr %.sroa.076.0111 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0111, i64 noundef %i.fe) #39
  br label %_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EED2Ev.exit67

_ZNSt6vectorIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EED2Ev.exit67: ; preds = %bb.am, %bb.an
  resume { ptr, i32 } %.pn18.pn

bb.ao:                                            ; preds = %bb.x, %bb.g
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE11ClearExcessEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.xgboost::DMatrixCache<xgboost::PredictionCacheEntry>::Key", align 8 ; 4 uses
  tail call void @_ZNK7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE15CheckConsistentEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i64, ptr %i.a, align 8, !tbaa !148
  %i.c = lshr i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit, %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !546  ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !546
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.l, null
  %.neg.i.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i.i
  %i.t = shl nsw i64 %i.s, 5
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !537  ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !547
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = add nsw i64 %i.t, %i.z
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !537 ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 4
  %i.ah = add nsw i64 %i.aa, %i.ag
  %.not = icmp ult i64 %i.ah, %i.c
  %i.ai = icmp eq ptr %i.u, %i.ac
  %or.cond = or i1 %i.ai, %.not
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !535
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %.not.i.i = icmp eq ptr %i.ac, %i.aj
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !545
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef 512) #39
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !224
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.g, align 8, !tbaa !546
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !226 ; 3 uses
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !547
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !548
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.d, %bb.e
  %storemerge.i.i = phi ptr [ %i.ak, %bb.d ], [ %i.ao, %bb.e ]
  store ptr %storemerge.i.i, ptr %i.e, align 8, !tbaa !543
  %i.aq = call noundef i64 @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.b, !llvm.loop !551

.critedge:                                        ; preds = %bb.b
  call void @_ZNK7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE15CheckConsistentEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost12DMatrixCacheINS_20PredictionCacheEntryEE4ItemD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !16
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !366
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !366
  br label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !20

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !531  ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i2 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !19   ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i4 = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.y, label %bb.k, label %_ZNSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !inline_history !552
  br label %_ZNSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.k
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #24
end_hunk_0
begin_hunk_1_@_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_:bb.a
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !18, !alias.scope !560
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #39
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !87
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #39
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !8
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !486
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !525    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !525
  %i.i = icmp eq ptr %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.0.copyload.i.i.i.i35 = load i64, ptr %i.j, align 8
  %i.k = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i35
  %i.l = select i1 %i.i, i1 %i.k, i1 false
  br i1 %i.l, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !525
  %i.o = icmp eq ptr %i.e, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit, label %.lr.ph, !llvm.loop !561

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i36 = phi ptr [ %i.s, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.s = load ptr, ptr %.016.i36, align 8, !tbaa !340 ; 5 uses
  %.not14.i = icmp eq ptr %i.s, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !561

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit: ; preds = %bb.c, %.preheader.i
  %i.t = phi ptr [ %i.d, %.preheader.i ], [ %i.s, %bb.c ] ; 2 uses
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i36, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !146
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
  %i.ae = load ptr, ptr %1, align 8, !tbaa !525
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
  %i.an = load i64, ptr %i.am, align 8, !tbaa !146
  %i.ao = urem i64 %.0.i.i, %i.an                 ; 3 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !138
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !562 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ar, null
  br i1 %.not.i24, label %.critedge, label %.preheader.i25

.preheader.i25:                                   ; preds = %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS7_.exit, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i
  %.015.i = phi ptr [ %.0.i, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i ], [ %i.ar, %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS7_.exit ] ; 2 uses
  %.0.i = load ptr, ptr %.015.i, align 8, !tbaa !340 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.at = load ptr, ptr %1, align 8, !tbaa !525
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !525
  %i.av = icmp eq ptr %i.at, %i.au
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.af, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.aw, align 8
  %i.ax = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  %i.ay = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %i.ay, label %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.i25
  %i.az = load ptr, ptr %.0.i, align 8, !tbaa !340 ; 3 uses
  %.not18.i = icmp eq ptr %i.az, null
  br i1 %.not18.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !146
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !525
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
  br i1 %.not19.i, label %.preheader.i25, label %.critedge, !llvm.loop !563

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
  %i.a = load ptr, ptr %0, align 8, !tbaa !138
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !562
  %i.d = icmp eq ptr %2, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !340    ; 6 uses
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !146
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !525
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
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !138 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %1 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !562  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.q
  store ptr %i.s, ptr %i.t, align 8, !tbaa !562
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.f
  %i.u = phi ptr [ %i.s, %bb.f ], [ %2, %bb.b ]
  %i.v = phi ptr [ %i.r, %bb.f ], [ %i.b, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  store ptr %i.e, ptr %i.w, align 8, !tbaa !229
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  store ptr null, ptr %i.v, align 8, !tbaa !562
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.not18, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !146
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !525
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
  %i.ak = load ptr, ptr %0, align 8, !tbaa !138
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store ptr %2, ptr %i.al, align 8, !tbaa !562
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit: ; preds = %bb.h, %bb.e, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit20, %bb.l, %bb.i
  %i.am = load ptr, ptr %3, align 8, !tbaa !340   ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !340
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !10 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ap, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !16
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #17, !inline_history !564
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #17, !inline_history !564
  br label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.as, %bb.p ], [ %i.bc, %bb.q ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.r, label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !20

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #17
  br label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.n, %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !531 ; 4 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i2.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i2.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !19 ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i4.i.i.i = phi i32 [ %i.bi, %bb.t ], [ %i.bk, %bb.u ]
  %i.bl = icmp eq i32 %.0.i.i.i.i4.i.i.i, 1
  br i1 %i.bl, label %bb.v, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #17, !inline_history !565
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i, %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef 56) #39
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !486
  %i.br = add i64 %i.bq, -1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !486
  ret ptr %i.am
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm:bb.a

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !340
  store ptr %i.w, ptr %3, align 8, !tbaa !340
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !562
  store ptr %3, ptr %i.x, align 8, !tbaa !340
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !229
  store ptr %i.z, ptr %3, align 8, !tbaa !340
  store ptr %3, ptr %i.y, align 8, !tbaa !229
  %i.aa = load ptr, ptr %3, align 8, !tbaa !340   ; 3 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !146
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !525
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i unwind label %bb.l ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #40
  unreachable

_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i: ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.aj = icmp eq i64 %i.af, %i.ai
  %i.ak = select i1 %i.aj, i64 0, i64 %i.af
  %.0.i.i.i.i.i = xor i64 %i.ak, %i.ai
  %i.al = urem i64 %.0.i.i.i.i.i, %i.ac
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.al
  store ptr %3, ptr %i.am, align 8, !tbaa !562
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !138
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i, %bb.j
  %i.an = phi ptr [ %.pre.i, %_ZNKSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i ], [ %i.t, %bb.j ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !562
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEE.exit: ; preds = %bb.i, %bb.m
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !486
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.f, align 8, !tbaa !486
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !571  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !16
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #17, !inline_history !564
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #17, !inline_history !564
  br label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !20

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #17
  br label %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !531  ; 4 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i2.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i2.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %i.v, align 4, !tbaa !19   ; 2 uses
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.z = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i4.i.i.i = phi i32 [ %i.x, %bb.j ], [ %i.z, %bb.k ]
  %i.aa = icmp eq i32 %.0.i.i.i.i4.i.i.i, 1
  br i1 %i.aa, label %bb.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #17, !inline_history !565
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost20PredictionCacheEntryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #39
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE18_M_deallocate_nodeEPSB_.exit, %bb.a
  ret void
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !574
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #41
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #42 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !229  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !229
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.i
  %.031 = phi i64 [ %.1, %bb.i ], [ 0, %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.i ], [ %i.h, %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 9 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !340 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !525
  %i.l = getelementptr inbounds nuw i8, ptr %.02530, i64 16
  %i.m = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS9_Lb0EEEm.exit unwind label %bb.e ; 2 uses

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #40
  unreachable

_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS9_Lb0EEEm.exit: ; preds = %.lr.ph
  %i.p = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.q = icmp eq i64 %i.m, %i.p
  %i.r = select i1 %i.q, i64 0, i64 %i.m
  %.0.i.i.i = xor i64 %i.r, %i.p
  %i.s = urem i64 %.0.i.i.i, %1                   ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !562  ; 2 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS9_Lb0EEEm.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !229
  store ptr %i.v, ptr %.02530, align 8, !tbaa !340
  store ptr %.02530, ptr %i.g, align 8, !tbaa !229
  store ptr %i.g, ptr %i.t, align 8, !tbaa !562
  %i.w = load ptr, ptr %.02530, align 8, !tbaa !340
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.x, align 8, !tbaa !562
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseIN7xgboost12DMatrixCacheINS1_20PredictionCacheEntryEE3KeyESt4pairIKS5_NS4_4ItemEENS_10_Select1stENS4_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS9_Lb0EEEm.exit
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !340
  store ptr %i.y, ptr %.02530, align 8, !tbaa !340
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !562
  store ptr %.02530, ptr %i.z, align 8, !tbaa !340
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.1 = phi i64 [ %.031, %bb.h ], [ %i.s, %bb.g ], [ %i.s, %bb.f ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !575

._crit_edge:                                      ; preds = %bb.i, %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !146
  %i.af = shl i64 %i.ae, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.af) #39
  br label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESt4pairIKS4_NS3_4ItemEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ENS3_4HashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.ag, align 8, !tbaa !146
  store ptr %.0.i, ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost20PredictionCacheEntryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost20PredictionCacheEntryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(12) %i.a) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost20PredictionCacheEntryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost20PredictionCacheEntryESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost20PredictionCacheEntryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !576  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #17
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE16_M_push_back_auxIJRS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !546  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !546
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !537
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !547
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !548
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !537
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !228
  %i.ag = load ptr, ptr %0, align 8, !tbaa !223
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #42
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !226
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !533
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !535
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !546
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !226 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !547
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !548
  store ptr %i.as, ptr %i.a, align 8, !tbaa !533
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !18
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !282

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_20PredictionCacheEntryEE3KeyENS3_4ItemENS3_4HashESt8equal_toIS4_ESaISt4pairIKS4_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_20PredictionCacheEntryEE3KeyENS6_4ItemEELb0EEEEE19_M_deallocate_nodesEPSB_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b)
end_hunk_2
begin_hunk_3_@_ZN7xgboost20LearnerConfiguration18ConfigureObjectiveERKNS_17LearnerTrainParamEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EE:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !21 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 1
  %i.gb = xor i64 %i.ga, 8029982407345401699
  %i.gc = getelementptr i8, ptr %i.fz, i64 5
  %i.gd = load i64, ptr %i.gc, align 1
  %i.ge = xor i64 %i.gd, 7957706006114299962
  %i.gf = or i64 %i.gb, %i.ge
  %i.gg = icmp ne i64 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %i.gi, label %._crit_edge.i.i259, label %bb.s

._crit_edge.i.i259:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.gj, ptr %11, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gj, ptr noundef nonnull align 1 dereferenceable(14) @.str.100, i64 14, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 14, ptr %i.gk, align 8, !tbaa !67
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 30
  store i8 0, ptr %i.gl, align 2, !tbaa !18
  %i.gm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %._crit_edge.i.i259
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !67
  %i.gp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 noundef 0, i64 noundef %i.go, ptr noundef nonnull @.str.102, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.r ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.q
  %i.gq = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gj
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.gs = load i64, ptr %i.gj, align 8, !tbaa !18
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i259
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.gj
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.r
  %i.gx = load i64, ptr %i.gj, align 8, !tbaa !18
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.au

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.thread479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.ha, null
  br i1 %.not.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 5608
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !67 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !67
  %i.hh = icmp eq i64 %i.he, %i.hg
  br i1 %i.hh, label %bb.u, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.hi = icmp eq i64 %i.he, 0
  br i1 %i.hi, label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.u
  %i.hj = load ptr, ptr %i.hc, align 8, !tbaa !21
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !21
  %bcmp.i.i276 = call i32 @bcmp(ptr %i.hk, ptr %i.hj, i64 %i.he)
  %.not387 = icmp eq i32 %bcmp.i.i276, 0
  br i1 %.not387, label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.t, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.s
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = call noundef ptr @_ZN7xgboost11ObjFunction6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7ContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.hl, ptr noundef nonnull %i.hm)
  %i.ho = load ptr, ptr %i.gz, align 8, !tbaa !39 ; 3 uses
  store ptr %i.hn, ptr %i.gz, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7xgboost11ObjFunctionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7xgboost11ObjFunctionEEclEPS1_.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #17, !inline_history !259
  br label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.u, %_ZNKSt14default_deleteIN7xgboost11ObjFunctionEEclEPS1_.exit.i.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.hs, ptr %12, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hs, ptr noundef nonnull align 1 dereferenceable(9) @.str.63, i64 9, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 9, ptr %i.ht, align 8, !tbaa !67
  %i.hu = getelementptr inbounds nuw i8, ptr %12, i64 25
  store i8 0, ptr %i.hu, align 1, !tbaa !18
  %i.hv = load ptr, ptr %i.f, align 8, !tbaa !112 ; 2 uses
  %.not10.i.i.i281 = icmp eq ptr %i.hv, null
  br i1 %.not10.i.i.i281, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %.lr.ph.i.i.i282

.lr.ph.i.i.i282:                                  ; preds = %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i288
  %.012.i.i.i283 = phi ptr [ %.1.i.i.i293, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i288 ], [ %i.hv, %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit ] ; 4 uses
  %.0811.i.i.i284 = phi ptr [ %.19.i.i.i290, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i288 ], [ %i.h, %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.012.i.i.i283, i64 40
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !67 ; 3 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i307, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i286

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i286: ; preds = %.lr.ph.i.i.i282
  %.sroa.speculated.i.i.i.i.i.i285 = call i64 @llvm.umin.i64(i64 %i.hx, i64 9)
  %i.hz = getelementptr inbounds nuw i8, ptr %.012.i.i.i283, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !21
  %i.ib = call i32 @memcmp(ptr noundef %i.ia, ptr noundef nonnull %i.hs, i64 noundef %.sroa.speculated.i.i.i.i.i.i285) #17 ; 2 uses
  %.not.i.i.i.i.i.i287 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i.i.i.i.i287, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i307, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i288

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i307: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i286, %.lr.ph.i.i.i282
  %i.ic = add i64 %i.hx, -9
  %spec.select7.i.i.i.i.i.i.i308 = call i64 @llvm.smax.i64(i64 %i.ic, i64 -2147483648)
  %.08.i.i.i.i.i.i.i309 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i308, i64 2147483647)
  %.0.i6.i.i.i.i.i.i310 = trunc nsw i64 %.08.i.i.i.i.i.i.i309 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i288

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i288: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i307, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i286
  %.0.i.i.i.i.i.i289 = phi i32 [ %i.ib, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i286 ], [ %.0.i6.i.i.i.i.i.i310, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i307 ]
  %i.id = icmp slt i32 %.0.i.i.i.i.i.i289, 0      ; 2 uses
  %.19.i.i.i290 = select i1 %i.id, ptr %.0811.i.i.i284, ptr %.012.i.i.i283 ; 4 uses
  %.1.in.v.i.i.i291 = select i1 %i.id, i64 24, i64 16
  %.1.in.i.i.i292 = getelementptr inbounds nuw i8, ptr %.012.i.i.i283, i64 %.1.in.v.i.i.i291
  %.1.i.i.i293 = load ptr, ptr %.1.in.i.i.i292, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i294 = icmp eq ptr %.1.i.i.i293, null
  br i1 %.not.i.i.i294, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i295, label %.lr.ph.i.i.i282, !llvm.loop !428

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i295: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i288
  %i.ie = icmp eq ptr %.19.i.i.i290, %i.h
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %bb.v

bb.v:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i295
  %i.if = getelementptr inbounds nuw i8, ptr %.19.i.i.i290, i64 40
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !67 ; 3 uses
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i303, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i297

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i297: ; preds = %bb.v
  %.sroa.speculated.i.i.i.i.i296 = call i64 @llvm.umin.i64(i64 %i.ig, i64 9)
  %i.ii = getelementptr inbounds nuw i8, ptr %.19.i.i.i290, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !21
  %i.ik = call i32 @memcmp(ptr noundef nonnull %i.hs, ptr noundef %i.ij, i64 noundef %.sroa.speculated.i.i.i.i.i296) #17 ; 2 uses
  %.not.i.i.i.i.i298 = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i.i.i.i298, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i303, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i299

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i303: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i297, %bb.v
  %i.il = sub i64 9, %i.ig
  %spec.select7.i.i.i.i.i.i304 = call i64 @llvm.smax.i64(i64 %i.il, i64 -2147483648)
  %.08.i.i.i.i.i.i305 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i304, i64 2147483647)
  %.0.i6.i.i.i.i.i306 = trunc nsw i64 %.08.i.i.i.i.i.i305 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i299

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i299: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i303, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i297
  %.0.i.i.i.i.i300 = phi i32 [ %i.ik, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i297 ], [ %.0.i6.i.i.i.i.i306, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i303 ]
  %i.im = icmp slt i32 %.0.i.i.i.i.i300, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i299, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i295, %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit
  %.sroa.0.0.i.i302 = phi i1 [ true, %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EE5resetEPS1_.exit ], [ true, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i295 ], [ %i.im, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i299 ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5212
  %.pre397 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !744 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.in = call i32 @llvm.abs.i32(i32 %.pre397, i1 false) ; 5 uses
  %i.io = icmp ult i32 %i.in, 10
  br i1 %i.io, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %bb.ab
  %.030.i.i = phi i32 [ %i.iw, %bb.ab ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.iv, %bb.ab ], [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ] ; 5 uses
  %i.ip = icmp ult i32 %.02329.i.i, 100
  br i1 %i.ip, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.iq = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.ir = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.ir, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.is = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.z:                                             ; preds = %bb.x
  %i.it = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.it, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.iu = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.iv = udiv i32 %.02329.i.i, 10000
  %i.iw = add i32 %.030.i.i, 4                    ; 2 uses
  %i.ix = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.ix, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !748

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  %.022.i.i = phi i32 [ %i.iu, %bb.aa ], [ %i.iq, %bb.w ], [ %i.is, %bb.y ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %i.iw, %bb.ab ] ; 2 uses
  %.lobit.i = lshr i32 %.pre397, 31               ; 2 uses
  %i.iy = add i32 %.022.i.i, %.lobit.i
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 11 uses
  store ptr %i.ja, ptr %13, align 8, !tbaa !106, !alias.scope !745
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.iz, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.jb = zext nneg i32 %.lobit.i to i64
  %i.jc = load ptr, ptr %13, align 8, !tbaa !21, !alias.scope !745
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jb ; 4 uses
  %i.je = icmp ugt i32 %i.in, 99
  br i1 %i.je, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i315

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.jf = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ji, %.lr.ph.i11.i ], [ %i.in, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.jt, %.lr.ph.i11.i ], [ %i.jf, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.jg = urem i32 %.020.i.i, 100
  %i.jh = shl nuw nsw i32 %i.jg, 1
  %i.ji = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.jj = zext nneg i32 %i.jh to i64
  %i.jk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !18, !noalias !745
  %i.jn = zext i32 %.01819.i.i to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jn
  store i8 %i.jm, ptr %i.jo, align 1, !tbaa !18
  %i.jp = load i8, ptr %i.jk, align 2, !tbaa !18, !noalias !745
  %i.jq = add i32 %.01819.i.i, -1
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jr
  store i8 %i.jp, ptr %i.js, align 1, !tbaa !18
  %i.jt = add i32 %.01819.i.i, -2
  %i.ju = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ju, label %.lr.ph.i11.i, label %._crit_edge.i.i315, !llvm.loop !749

._crit_edge.i.i315:                               ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ji, %.lr.ph.i11.i ] ; 3 uses
  %i.jv = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.jv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i315
  %i.jw = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !18, !noalias !745
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !18
  %i.kc = load i8, ptr %i.jy, align 2, !tbaa !18, !noalias !745
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ad:                                            ; preds = %._crit_edge.i.i315
  %i.kd = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ke = or disjoint i8 %i.kd, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ae:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.kf = landingpad { ptr, i32 }
          catch ptr null
  %i.kg = extractvalue { ptr, i32 } %i.kf, 0
  call void @__clang_call_terminate(ptr %i.kg) #40
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.ac, %bb.ad
  %storemerge.i.i = phi i8 [ %i.ke, %bb.ad ], [ %i.kc, %bb.ac ]
  store i8 %storemerge.i.i, ptr %i.jd, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.kh, ptr %14, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.kh, ptr noundef nonnull align 1 dereferenceable(9) @.str.63, i64 9, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 9, ptr %i.ki, align 8, !tbaa !67
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 25
  store i8 0, ptr %i.kj, align 1, !tbaa !18
  %i.kk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.af unwind label %bb.ar     ; 9 uses

bb.af:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !21 ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 4 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  %i.ko = load ptr, ptr %13, align 8, !tbaa !21   ; 6 uses
  %i.kp = icmp eq ptr %i.ko, %i.ja                ; 2 uses
  br i1 %i.kn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.af
  br i1 %i.kp, label %bb.ag, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.af
  br i1 %i.kp, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !67 ; 3 uses
  %i.ks = icmp ult i64 %i.kr, 16
  call void @llvm.assume(i1 %i.ks)
  %.not21.i = icmp eq ptr %13, %i.kk
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ah, !prof !20

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.kr, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.kt = load i8, ptr %i.ko, align 1, !tbaa !18
  store i8 %i.kt, ptr %i.kl, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kl, ptr align 1 %i.ko, i64 %i.kr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ku = load i64, ptr %i.kq, align 8, !tbaa !67 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.ku, ptr %i.kv, align 8, !tbaa !67
  %i.kw = load ptr, ptr %i.kk, align 8, !tbaa !21
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ku
  store i8 0, ptr %i.kx, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr %i.ko, ptr %i.kk, align 8, !tbaa !21
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !67
  store i64 %i.la, ptr %i.ky, align 8, !tbaa !67
  %i.lb = load i64, ptr %i.ja, align 8, !tbaa !18
  store i64 %i.lb, ptr %i.km, align 8, !tbaa !18
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.lc = load i64, ptr %i.km, align 8, !tbaa !18
  store ptr %i.ko, ptr %i.kk, align 8, !tbaa !21
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !67
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !67
  %i.lg = load i64, ptr %i.ja, align 8, !tbaa !18
  store i64 %i.lg, ptr %i.km, align 8, !tbaa !18
  %.not.i320 = icmp eq ptr %i.kl, null
  br i1 %.not.i320, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.kl, ptr %13, align 8, !tbaa !21
  store i64 %i.lc, ptr %i.ja, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ja, ptr %13, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ak, %bb.al
  %i.lh = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.kl, %bb.ak ], [ %i.ja, %bb.al ], [ %i.ko, %bb.ag ]
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.li, align 8, !tbaa !67
  store i8 0, ptr %i.lh, align 1, !tbaa !18
  %i.lj = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.kh
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ll = load i64, ptr %i.kh, align 8, !tbaa !18
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.ln = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.ja
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323
  %i.lp = load i64, ptr %i.ja, align 8, !tbaa !18
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 5344
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE19_M_range_initializeISt23_Rb_tree_const_iteratorIS0_IKS6_S6_EEEEvT_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.ls, ptr nonnull %i.h)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ISt23_Rb_tree_const_iteratorIS0_IKS6_S6_EEvEET_SF_RKS8_.exit unwind label %bb.am
end_hunk_3
