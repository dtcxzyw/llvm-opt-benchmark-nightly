Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_multiplexer?download=true
inline.NumInlined: 1757
inline.NumDeleted: 551
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !17, !alias.scope !315, !noalias !316
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !21, !alias.scope !316, !noalias !315 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !23, !alias.scope !316, !noalias !315 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !317
  br label %_ZSt19__relocate_object_aIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !21, !alias.scope !315, !noalias !316
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !22, !alias.scope !316, !noalias !315
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !22, !alias.scope !315, !noalias !316
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !23, !alias.scope !316, !noalias !315
  br label %_ZSt19__relocate_object_aIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !23, !alias.scope !315, !noalias !316
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !21, !alias.scope !316, !noalias !315
  store i64 0, ptr %i.bi, align 8, !tbaa !23, !alias.scope !316, !noalias !315
  store i8 0, ptr %i.ba, align 8, !tbaa !22, !alias.scope !316, !noalias !315
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !308

_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit26: ; preds = %_ZSt19__relocate_object_aIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit26
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !87
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #33
  br label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !84
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !85
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !318
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !318
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNSt17_Function_handlerIFvvEZN12_GLOBAL__N_19test_itemC1EN5boost5redis7requestEEUlvE_E9_M_invokeERKSt9_Any_data(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #20 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !320
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 152
  store i8 1, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12_GLOBAL__N_19test_itemC1EN5boost5redis7requestEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_19test_itemC1EN5boost5redis7requestEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12_GLOBAL__N_19test_itemC1EN5boost5redis7requestEEUlvE_, ptr %0, align 8, !tbaa !137
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_19test_itemC1EN5boost5redis7requestEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !138
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_19test_itemC1EN5boost5redis7requestEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !77
  store i64 %.val.i, ptr %0, align 8, !tbaa !77
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_19test_itemC1EN5boost5redis7requestEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_19test_itemC1EN5boost5redis7requestEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail11test_resultD2Ev(ptr noundef nonnull align 4 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !97, !range !51, !noundef !52
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.47, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.d, !inline_history !321 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @abort() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #23

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail16test_all_eq_implISoN9__gnu_cxx17__normal_iteratorIPKNS_5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISD_SaISD_EEEESF_EEbRT_PKciSN_T0_SO_T1_SP_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  %.not.i59 = icmp eq ptr %3, null                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.sroa.0.0 = phi ptr [ %4, %bb.a ], [ %i.bk, %bb.n ] ; 3 uses
  %.045 = phi i64 [ 0, %bb.a ], [ %i.bn, %bb.n ]  ; 6 uses
  %.044 = phi ptr [ %6, %bb.a ], [ %i.bl, %bb.n ] ; 3 uses
  %i.a = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.bm, %bb.n ] ; 2 uses
  %.not8198 = icmp eq ptr %.sroa.0.0, %5
  %.not99 = icmp eq ptr %.044, %7
  %or.cond100 = select i1 %.not8198, i1 true, i1 %.not99
  br i1 %or.cond100, label %.critedge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80
  %.1104 = phi ptr [ %i.ab, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80 ], [ %.044, %bb.b ] ; 9 uses
  %.sroa.0.1101 = phi ptr [ %i.aa, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80 ], [ %.sroa.0.0, %bb.b ] ; 9 uses
  %i.b = phi <2 x i64> [ %i.ac, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80 ], [ %i.a, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %.1104, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %.1104, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %.sroa.0.1101, align 8, !tbaa !57
  %i.n = load i32, ptr %.1104, align 8, !tbaa !57
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.1104, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.1104, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !23
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80, label %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit

_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit: ; preds = %bb.f
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !21
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.y, ptr %i.x, i64 %i.s)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80, label %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread

_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80: ; preds = %bb.f, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 56 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1104, i64 56 ; 3 uses
  %i.ac = add nsw <2 x i64> %i.b, splat (i64 1)   ; 2 uses
  %.not81 = icmp eq ptr %i.aa, %5
  %.not = icmp eq ptr %i.ab, %7
  %or.cond = select i1 %.not81, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge.a, label %.lr.ph, !llvm.loop !322

_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread: ; preds = %bb.e, %.lr.ph, %bb.c, %bb.d, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit
  %i.ad = icmp eq i64 %.045, 0
  br i1 %i.ad, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !tbaa !13
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !129
  %i.ak = or i32 %i.aj, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i32 noundef %i.ak)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.i:                                             ; preds = %bb.g
  %i.al = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.al) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h, %bb.i
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 5 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.54, i64 noundef 42) ; 0 uses
  br i1 %.not.i59, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !13
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !129
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #30
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %3, i64 noundef %i.ax) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.j, %bb.k
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.55, i64 noundef 2) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread
  %i.ba = icmp samesign ugt i64 %.045, 7
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.56, i64 noundef 4) ; 0 uses
  br label %.critedge.a

bb.n:                                             ; preds = %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 2) ; 0 uses
  %i.bd = extractelement <2 x i64> %i.b, i64 0
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.bd) ; 2 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.57, i64 noundef 3) ; 0 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis5resp3lsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSoS9_RKNS1_10basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.1101) ; 2 uses
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.58, i64 noundef 6) ; 0 uses
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis5resp3lsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSoS9_RKNS1_10basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %.1104)
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.1101, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1104, i64 56 ; 2 uses
  %i.bm = add nsw <2 x i64> %i.b, splat (i64 1)   ; 2 uses
  %i.bn = add nuw nsw i64 %.045, 1                ; 2 uses
  %.not82 = icmp eq ptr %i.bk, %5
  br i1 %.not82, label %.critedge.a, label %bb.b, !llvm.loop !323

.critedge.a:                                      ; preds = %bb.n, %bb.b, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80, %bb.m
  %.sroa.0.2 = phi ptr [ %.sroa.0.1101, %bb.m ], [ %i.aa, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80 ], [ %.sroa.0.0, %bb.b ], [ %5, %bb.n ]
  %.146 = phi i64 [ %.045, %bb.m ], [ %.045, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80 ], [ %.045, %bb.b ], [ %i.bn, %bb.n ] ; 3 uses
  %.2 = phi ptr [ %.1104, %bb.m ], [ %i.ab, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80 ], [ %.044, %bb.b ], [ %i.bl, %bb.n ]
  %8 = phi <2 x i64> [ %i.b, %bb.m ], [ %i.ac, %_ZN5boost5redis5resp3eqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS1_10basic_nodeIT_EESD_.exit.thread80 ], [ %i.a, %bb.b ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bo = ptrtoint ptr %5 to i64
  %i.bp = ptrtoint ptr %.sroa.0.2 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 56
  %i.bs = extractelement <2 x i64> %8, i64 0
  %i.bt = add nsw i64 %i.br, %i.bs                ; 2 uses
  %i.bu = ptrtoint ptr %7 to i64
  %i.bv = ptrtoint ptr %.2 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 56
  %i.by = extractelement <2 x i64> %8, i64 1
  %i.bz = add nsw i64 %i.bx, %i.by                ; 2 uses
  %.not56 = icmp eq i64 %i.bt, %i.bz
  br i1 %.not56, label %bb.w, label %bb.o

bb.o:                                             ; preds = %.critedge.a
  %i.ca = icmp eq i64 %.146, 0
  br i1 %i.ca, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %0, align 8, !tbaa !13
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !129
  %i.ch = or i32 %i.cg, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ce, i32 noundef %i.ch)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

bb.r:                                             ; preds = %bb.p
  %i.ci = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ci) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.q, %bb.r
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 6 uses
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.59, i64 noundef 39) ; 0 uses
  br i1 %.not.i59, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !13
  %i.co = getelementptr i8, ptr %i.cn, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !129
  %i.ct = or i32 %i.cs, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cq, i32 noundef %i.ct)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.cu = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #30
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %3, i64 noundef %i.cu) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.s, %bb.t
  %i.cw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.60, i64 noundef 8) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.63, i64 noundef 10) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %.sink147 = phi ptr [ %0, %bb.u ], [ %i.cl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 ]
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink147, i64 noundef %i.bt) ; 2 uses
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.61, i64 noundef 10) ; 0 uses
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i64 noundef %i.bz)
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.62, i64 noundef 1) ; 0 uses
  %i.dc = add i64 %.146, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.a
  %.247 = phi i64 [ %i.dc, %bb.v ], [ %.146, %.critedge.a ]
  %i.dd = icmp eq i64 %.247, 0                    ; 2 uses
  br i1 %i.dd, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.de = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.y, label %_ZN5boost6detail12test_resultsEv.exit, !prof !95

bb.y:                                             ; preds = %bb.x
  %i.dg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #30
  %.not.i65 = icmp eq i32 %i.dg, 0
  br i1 %.not.i65, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !97
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !98
  %i.dh = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #30
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.aa:                                            ; preds = %bb.w
  %i.di = load ptr, ptr %0, align 8, !tbaa !13
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !113 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt16__throw_bad_castv() #32
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !119
  %.not.i1.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i1.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 67
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !22
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dn)
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call noundef signext i8 %i.du(ptr noundef nonnull align 8 dereferenceable(570) %i.dn, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i = phi i8 [ %i.dr, %bb.ac ], [ %i.dv, %bb.ad ]
  %i.dw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) ; 0 uses
  %i.dy = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.ae, label %_ZN5boost6detail12test_resultsEv.exit67, !prof !95

bb.ae:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ea = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #30
  %.not.i66 = icmp eq i32 %i.ea, 0
  br i1 %.not.i66, label %_ZN5boost6detail12test_resultsEv.exit67, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !97
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !98
  %i.eb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #30
  br label %_ZN5boost6detail12test_resultsEv.exit67

_ZN5boost6detail12test_resultsEv.exit67:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.ae, %bb.af
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !24
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !24
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.z, %bb.y, %bb.x, %_ZN5boost6detail12test_resultsEv.exit67
  ret i1 %i.dd
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redis5resp3lsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSoS9_RKNS1_10basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.64, i64 noundef 17) ; 0 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !57
  %i.c = tail call noundef ptr @_ZN5boost5redis5resp39to_stringENS1_4typeE(i32 noundef %i.b) #30 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129
  %i.j = or i32 %i.i, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #30
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef %i.k) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.65, i64 noundef 18) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.o) ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.66, i64 noundef 9) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.s) ; 2 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.67, i64 noundef 9) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.w, i64 noundef %i.y) ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.68, i64 noundef 1) ; 0 uses
  ret ptr %i.z
}

; Function Attrs: nounwind
declare noundef ptr @_ZN5boost5redis5resp39to_stringENS1_4typeE(i32 noundef) local_unnamed_addr #8

end_hunk_0
