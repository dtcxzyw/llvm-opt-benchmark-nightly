Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/constraints?download=true
inline.NumInlined: 847
inline.NumDeleted: 424
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.23 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@_ZTVN4dmlc5ErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4dmlc5ErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4dmlc5ErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.24 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" vs. \00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost32FeatureInteractionConstraintHost9ConfigureERKNS_4tree10TrainParamEj(ptr noundef nonnull align 8 dereferenceable(109) initializes((108, 109)) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 0, ptr %i.d, align 4, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 1, ptr %i.f, align 4, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %i.h, align 8, !tbaa !28
  tail call void @_ZN7xgboost32FeatureInteractionConstraintHost5ResetEv(ptr noundef nonnull align 8 dereferenceable(109) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost32FeatureInteractionConstraintHost5ResetEv(ptr noundef nonnull align 8 dereferenceable(109) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"struct.std::hash", align 1        ; 3 uses
  %3 = alloca %"struct.std::equal_to", align 1    ; 3 uses
  %4 = alloca %"class.std::allocator.16", align 1 ; 3 uses
  %5 = alloca %"class.std::vector.8", align 8     ; 11 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8 ; 5 uses
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8 ; 5 uses
  %9 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %10 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.c = load i8, ptr %i.b, align 4, !tbaa !27, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  invoke void @_ZN7xgboost26ParseInteractionConstraintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_IjSaIjEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE            ; 3 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 1
  %i.h = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #11
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i32 } %i.f, 0
  %i.k = call ptr @__cxa_begin_catch(ptr %i.j) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str, i32 noundef 37)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.m

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.n ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.1, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.o, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.3, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #11
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.x)
          to label %bb.e unwind label %bb.n       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.z = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  %.not76 = icmp eq ptr %i.z, %i.ab
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPKjS_IjS5_EEESF_EEERS6_DpOT_.exit, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i ], [ %i.af, %._crit_edge ] ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ak = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i, i64 noundef 16) #25
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.al = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !46
  %i.ao = shl i64 %i.an, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ao, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !45 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %i.as = load i64, ptr %i.am, align 8, !tbaa !46
  %i.at = shl i64 %i.as, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #25
  br label %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i: ; preds = %bb.h, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.ah
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !34
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !33
  br label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit

_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.av = phi ptr [ %i.af, %._crit_edge ], [ %.pre, %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.aw = phi ptr [ %i.ah, %._crit_edge ], [ %i.af, %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.ay, ptr %9, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 1, ptr %i.az, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bb, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = icmp eq ptr %i.aw, %i.av
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit
  invoke void @_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS6_S8_EEmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.aw, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit unwind label %bb.z

bb.j:                                             ; preds = %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit
  %11 = ptrtoint ptr %i.aw to i64
  %12 = ptrtoint ptr %i.av to i64
  %13 = sub i64 %11, %12
  %i.be = icmp ugt i64 %13, 56
  br i1 %i.be, label %bb.k, label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.aw, %i.bf
  br i1 %.not.i.i24, label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %bb.k, %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i32
  %.05.i.i.i.i26 = phi ptr [ %i.bs, %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i32 ], [ %i.bf, %bb.k ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i26, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i27, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i.i.i.i28:                       ; preds = %.lr.ph.i.i.i.i25, %.lr.ph.i.i.i.i.i.i.i.i.i28
  %.06.i.i.i.i.i.i.i.i.i29 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i28 ], [ %i.bh, %.lr.ph.i.i.i.i25 ] ; 2 uses
  %i.bi = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i29, align 8, !tbaa !43 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i29, i64 noundef 16) #25
  %.not.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i30, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i.i28, !llvm.loop !0

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i25
  %i.bj = load ptr, ptr %.05.i.i.i.i26, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i26, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46
  %i.bm = shl i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %.05.i.i.i.i26, align 8, !tbaa !45 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i26, i64 48
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i32, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i31
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !46
  %i.br = shl i64 %i.bq, 3
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #25
  br label %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i32

_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i32: ; preds = %bb.l, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i31
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i26, i64 56 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.bs, %i.aw
  br i1 %.not.i.i.i.i33, label %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i34, label %.lr.ph.i.i.i.i25, !llvm.loop !1

_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i34: ; preds = %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i32
  store ptr %i.bf, ptr %i.ag, align 8, !tbaa !34
  br label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit

bb.m:                                             ; preds = %.noexc, %bb.d, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %bb.aj

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.m ], [ %i.bu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  invoke void @__cxa_end_catch()
          to label %bb.ai unwind label %bb.aj

bb.p:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.q:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPKjS_IjS5_EEESF_EEERS6_DpOT_.exit
  %.sroa.073.077 = phi ptr [ %i.z, %.lr.ph ], [ %i.cd, %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPKjS_IjS5_EEESF_EEERS6_DpOT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bw = load ptr, ptr %.sroa.073.077, align 8, !tbaa !49 ; 2 uses
  store ptr %i.bw, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.073.077, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49 ; 2 uses
  store ptr %i.by, ptr %8, align 8
  %i.bz = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 3 uses
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i, label %bb.r, label %_ZNSt15__new_allocatorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjS5_EEESF_EEEvPT_DpOT0_.exit.i

_ZNSt15__new_allocatorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjS5_EEESF_EEEvPT_DpOT0_.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  invoke void @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjS0_EEEEET_SL_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.bz, ptr %i.bw, ptr %i.by, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc36 unwind label %bb.s

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjS5_EEESF_EEEvPT_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.cb = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %i.cc, ptr %i.ac, align 8, !tbaa !34
  br label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPKjS_IjS5_EEESF_EEERS6_DpOT_.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE17_M_realloc_insertIJN9__gnu_cxx17__normal_iteratorIPKjS_IjS5_EEESF_EEEvNSB_IPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPKjS_IjS5_EEESF_EEERS6_DpOT_.exit unwind label %bb.s

_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPKjS_IjS5_EEESF_EEERS6_DpOT_.exit: ; preds = %bb.r, %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.073.077, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.cd, %i.ab
  br i1 %.not, label %._crit_edge, label %bb.q

bb.s:                                             ; preds = %bb.r, %_ZNSt15__new_allocatorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjS5_EEESF_EEEvPT_DpOT0_.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ai

_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit: ; preds = %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i34, %bb.k, %bb.j, %bb.i
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit, %.lr.ph.i.i.i.i38
  %.06.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i38 ], [ %i.cf, %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit ] ; 2 uses
  %i.cg = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #25
  %.not.i.i.i.i39 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i39, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i38, !llvm.loop !0

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i38, %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit
  %i.ch = load ptr, ptr %9, align 8, !tbaa !45
  %i.ci = load i64, ptr %i.az, align 8, !tbaa !46
  %i.cj = shl i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %i.cj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.ck = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ay
  br i1 %i.cl, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.cm = load i64, ptr %i.az, align 8, !tbaa !46
  %i.cn = shl i64 %i.cm, 3
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #25
  br label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.co = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cs = uitofp i32 %i.cq to double
  %i.ct = load float, ptr %i.cr, align 8, !tbaa !47
  %i.cu = fpext float %i.ct to double
  %i.cv = fdiv double %i.cs, %i.cu
  %i.cw = call double @llvm.ceil.f64(double %i.cv)
  %i.cx = fptoui double %i.cw to i64
  invoke void @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %i.co, i64 noundef %i.cx)
          to label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE7reserveEm.exit unwind label %bb.aa

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE7reserveEm.exit: ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !51
  %i.cy = load i32, ptr %i.cp, align 8, !tbaa !28
  %.not80 = icmp eq i32 %i.cy, 0
  br i1 %.not80, label %._crit_edge79, label %.lr.ph78

._crit_edge79:                                    ; preds = %bb.ab, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !33 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !34 ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.dc, %i.da
  br i1 %.not.i.i41, label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit52, label %.lr.ph.i.i.i.i42

.lr.ph.i.i.i.i42:                                 ; preds = %._crit_edge79, %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i49
  %.05.i.i.i.i43 = phi ptr [ %i.dp, %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i49 ], [ %i.da, %._crit_edge79 ] ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i43, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !42 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i44 = icmp eq ptr %i.de, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i44, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i.i.i.i45:                       ; preds = %.lr.ph.i.i.i.i42, %.lr.ph.i.i.i.i.i.i.i.i.i45
  %.06.i.i.i.i.i.i.i.i.i46 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i45 ], [ %i.de, %.lr.ph.i.i.i.i42 ] ; 2 uses
  %i.df = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i46, align 8, !tbaa !43 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i46, i64 noundef 16) #25
  %.not.i.i.i.i.i.i.i.i.i47 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i.i.i47, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i.i.i45, !llvm.loop !0

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i48: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i45, %.lr.ph.i.i.i.i42
  %i.dg = load ptr, ptr %.05.i.i.i.i43, align 8, !tbaa !45
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i43, i64 8 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !46
  %i.dj = shl i64 %i.di, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dg, i8 0, i64 %i.dj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  %i.dk = load ptr, ptr %.05.i.i.i.i43, align 8, !tbaa !45 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i43, i64 48
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i49, label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i48
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !46
  %i.do = shl i64 %i.dn, 3
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #25
  br label %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i49

_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i49: ; preds = %bb.u, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i48
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i43, i64 56 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.dp, %i.dc
  br i1 %.not.i.i.i.i50, label %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i51, label %.lr.ph.i.i.i.i42, !llvm.loop !1

_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i51: ; preds = %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i49
  store ptr %i.da, ptr %i.db, align 8, !tbaa !34
  %.pre81 = load ptr, ptr %i.cz, align 8, !tbaa !33
  br label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit52

_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit52: ; preds = %._crit_edge79, %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i51
  %i.dq = phi ptr [ %i.da, %._crit_edge79 ], [ %.pre81, %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i51 ] ; 3 uses
  %i.dr = phi ptr [ %i.dc, %._crit_edge79 ], [ %i.da, %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i51 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr %i.dt, ptr %10, align 8, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 1, ptr %i.du, align 8, !tbaa !46
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dw, align 8, !tbaa !47
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  %i.dy = icmp eq ptr %i.dr, %i.dq
  br i1 %i.dy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit52
  invoke void @_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS6_S8_EEmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr %i.dr, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit65 unwind label %bb.ah

bb.w:                                             ; preds = %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE5clearEv.exit52
  %14 = ptrtoint ptr %i.dr to i64
  %15 = ptrtoint ptr %i.dq to i64
  %16 = sub i64 %14, %15
  %i.dz = icmp ugt i64 %16, 56
  br i1 %i.dz, label %bb.x, label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit65

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 56 ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.dr, %i.ea
  br i1 %.not.i.i53, label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit65, label %.lr.ph.i.i.i.i54

.lr.ph.i.i.i.i54:                                 ; preds = %bb.x, %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i61
  %.05.i.i.i.i55 = phi ptr [ %i.en, %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i61 ], [ %i.ea, %bb.x ] ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i55, i64 16 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !42 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i56 = icmp eq ptr %i.ec, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i56, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i.i.i57:                       ; preds = %.lr.ph.i.i.i.i54, %.lr.ph.i.i.i.i.i.i.i.i.i57
  %.06.i.i.i.i.i.i.i.i.i58 = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i57 ], [ %i.ec, %.lr.ph.i.i.i.i54 ] ; 2 uses
  %i.ed = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i58, align 8, !tbaa !43 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i58, i64 noundef 16) #25
  %.not.i.i.i.i.i.i.i.i.i59 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i.i.i.i.i59, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i.i.i57, !llvm.loop !0

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i57, %.lr.ph.i.i.i.i54
  %i.ee = load ptr, ptr %.05.i.i.i.i55, align 8, !tbaa !45
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i55, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !46
  %i.eh = shl i64 %i.eg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ee, i8 0, i64 %i.eh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 0, i64 16, i1 false)
  %i.ei = load ptr, ptr %.05.i.i.i.i55, align 8, !tbaa !45 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i55, i64 48
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i61, label %bb.y

bb.y:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i60
  %i.el = load i64, ptr %i.ef, align 8, !tbaa !46
  %i.em = shl i64 %i.el, 3
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #25
  br label %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i61

_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i61: ; preds = %bb.y, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i60
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i55, i64 56 ; 2 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.en, %i.dr
  br i1 %.not.i.i.i.i62, label %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i63, label %.lr.ph.i.i.i.i54, !llvm.loop !1

_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i63: ; preds = %_ZSt8_DestroyISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEvPT_.exit.i.i.i.i61
  store ptr %i.ea, ptr %i.db, align 8, !tbaa !34
  br label %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit65

bb.z:                                             ; preds = %bb.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ai

bb.aa:                                            ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph78:                                         ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE7reserveEm.exit, %bb.ab
  %i.eq = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr %i.eq, ptr %1, align 8, !tbaa !53
  %i.er = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKjSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.eq, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %.lr.ph78
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.es = load i32, ptr %i.a, align 4, !tbaa !51
  %i.et = add i32 %i.es, 1                        ; 2 uses
  store i32 %i.et, ptr %i.a, align 4, !tbaa !51
  %i.eu = load i32, ptr %i.cp, align 8, !tbaa !28
  %i.ev = icmp ult i32 %i.et, %i.eu
  br i1 %i.ev, label %.lr.ph78, label %._crit_edge79, !llvm.loop !82

bb.ac:                                            ; preds = %.lr.ph78
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit65: ; preds = %_ZSt8_DestroyIPSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEES6_EvT_S8_RSaIT0_E.exit.i.i63, %bb.x, %bb.w, %bb.v
  %i.ex = load ptr, ptr %i.dv, align 8, !tbaa !42 ; 2 uses
  %.not5.i.i.i.i67 = icmp eq ptr %i.ex, null
  br i1 %.not5.i.i.i.i67, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i71, label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit65, %.lr.ph.i.i.i.i68
  %.06.i.i.i.i69 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i68 ], [ %i.ex, %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit65 ] ; 2 uses
  %i.ey = load ptr, ptr %.06.i.i.i.i69, align 8, !tbaa !43 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i69, i64 noundef 16) #25
  %.not.i.i.i.i70 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i70, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i71, label %.lr.ph.i.i.i.i68, !llvm.loop !0

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i71: ; preds = %.lr.ph.i.i.i.i68, %_ZNSt6vectorISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESaIS6_EE6resizeEmRKS6_.exit65
  %i.ez = load ptr, ptr %10, align 8, !tbaa !45
  %i.fa = load i64, ptr %i.du, align 8, !tbaa !46
  %i.fb = shl i64 %i.fa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.fb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  %i.fc = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.dt
  br i1 %i.fd, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit72, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i71
  %i.fe = load i64, ptr %i.du, align 8, !tbaa !46
  %i.ff = shl i64 %i.fe, 3
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #25
  br label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit72

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit72: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i71, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.fg = load ptr, ptr %5, align 8, !tbaa !55    ; 3 uses
  %i.fh = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fg, %i.fh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit72, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fo, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.fg, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit72 ] ; 3 uses
  %i.fi = load ptr, ptr %.05.i.i.i, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !59
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #25
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.ae, %.lr.ph.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fo, %i.fh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit72
  %i.fp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fg, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit72 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !60
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #25
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit
  ret void

bb.ah:                                            ; preds = %bb.v
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.p, %bb.o, %bb.ah, %bb.ac, %bb.aa, %bb.z, %bb.s, %bb.c
  %.merged = phi { ptr, i32 } [ %i.ce, %bb.s ], [ %i.ew, %bb.ac ], [ %i.fv, %bb.ah ], [ %i.ep, %bb.aa ], [ %i.eo, %bb.z ], [ %i.f, %bb.c ], [ %i.bv, %bb.p ], [ %.pn, %bb.o ]
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.merged

bb.aj:                                            ; preds = %bb.o, %bb.n
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #26
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN7xgboost26ParseInteractionConstraintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_IjSaIjEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
