inline.NumInlined: 2522
inline.NumDeleted: 1218
begin_hunk_0_@_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EE17_M_realloc_insertIJRS7_RSE_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_:bb.a
  %.not.i.i = icmp eq ptr %i.at, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !225

_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit31
  %.not.i35 = icmp eq ptr %i.d, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE13_M_deallocateEPSG_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26
  br label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE13_M_deallocateEPSG_m.exit

_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE13_M_deallocateEPSG_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !86
  store ptr %i.am, ptr %i.b, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.m
  store ptr %i.av, ptr %i.au, align 8, !tbaa !88
  ret void

.body.thread46:                                   ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit, %.noexc.i.i
  %.0.ph = phi ptr [ %i.r, %.noexc.i.i ], [ %i.al, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.thread

bb.h:                                             ; preds = %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEE9constructISG_JRS7_RSF_EEEvRSH_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #24 ; 0 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.s) #24
  br label %bb.j

.body.thread:                                     ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %.body.thread46
  %lpad.thr_comm.sink = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread46 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ah, %bb.f ]
  %.0.lpad-body44 = phi ptr [ %.0.ph, %.body.thread46 ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.r, %bb.f ]
  %i.ay = extractvalue { ptr, i32 } %lpad.thr_comm.sink, 0
  %i.az = call ptr @__cxa_begin_catch(ptr %i.ay) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_(ptr noundef nonnull %i.r, ptr noundef nonnull %.0.lpad-body44)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.body.thread, %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.h, %.body.thread
  call void @_ZdlPv(ptr noundef nonnull %i.r) #26
  invoke void @__cxa_rethrow() #28
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ba

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #29
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEPSG_ET0_T_SL_SK_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not19 = icmp eq ptr %0, %1
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEJRKSG_EEvPT_DpOT0_.exit
  %.021 = phi ptr [ %i.u, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEJRKSG_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.01220 = phi ptr [ %i.t, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEJRKSG_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 4 uses
  store ptr %i.b, ptr %.021, align 8, !tbaa !12
  %i.c = load ptr, ptr %.01220, align 8, !tbaa !54 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01220, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !62
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.021, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e, !inline_history !284 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.021, align 8, !tbaa !54
  %i.h = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.h, ptr %i.b, align 8, !tbaa !10
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !10
  store i8 %i.j, ptr %i.i, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = load ptr, ptr %.021, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01220, i64 32
  invoke void @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEJRKSG_EEvPT_DpOT0_.exit unwind label %bb.d, !inline_history !285

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.021, align 8, !tbaa !54  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.r) #26, !inline_history !285
  br label %.body

_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEJRKSG_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01220, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.021, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !286

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.d ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_(ptr noundef %2, ptr noundef nonnull %.021)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #28
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEJRKSG_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEJRKSG_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC2ESt16initializer_listINS_6detail8json_refISC_EEEbNSE_7value_tE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.162, align 8            ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store i8 0, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8
  %.idx = mul nuw nsw i64 %2, 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  %i.e = tail call noundef ptr @_ZSt9__find_ifIPKN13geos_nlohmann6detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEN9__gnu_cxx5__ops12_Iter_negateIZNSF_C1ESt16initializer_listISG_EbNS1_7value_tEEUlRSH_E_EEET_SS_SS_T0_St26random_access_iterator_tag(ptr noundef %1, ptr noundef %i.d)
  %i.f = icmp eq ptr %i.d, %i.e                   ; 3 uses
  br i1 %3, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %8 = icmp ne i8 %4, 2
  %spec.select = and i1 %8, %i.f
  %i.g = icmp ne i8 %4, 1
  %.not13 = or i1 %i.g, %i.f
  br i1 %.not13, label %bb.i, label %bb.c, !prof !287

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 32) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN13geos_nlohmann6detail10type_error6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.geos_nlohmann::detail::type_error") align 8 %i.h, i32 noundef 301, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN13geos_nlohmann6detail10type_errorE, ptr nonnull @_ZN13geos_nlohmann6detail9exceptionD2Ev) #28
          to label %bb.m unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.010 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.010, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.010, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn25 = phi { ptr, i32 } [ %.pn26, %bb.g ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn25

bb.i:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i1 [ %i.f, %bb.a ], [ %spec.select, %bb.b ]
  br i1 %.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %0, align 8, !tbaa !7
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %0, ptr %5, align 8
  %.not4.i = icmp eq i64 %2, 0
  br i1 %.not4.i, label %_ZSt8for_eachIPKN13geos_nlohmann6detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEZNSF_C1ESt16initializer_listISG_EbNS1_7value_tEEUlRSH_E0_ET0_T_SP_SO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.05.i = phi ptr [ %i.p, %.lr.ph.i ], [ %1, %bb.j ] ; 2 uses
  call void @_ZZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC1ESt16initializer_listINS_6detail8json_refISC_EEEbNSE_7value_tEENKUlRKSG_E0_clESK_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %.05.i)
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i, label %_ZSt8for_eachIPKN13geos_nlohmann6detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEZNSF_C1ESt16initializer_listISG_EbNS1_7value_tEEUlRSH_E0_ET0_T_SP_SO_.exit, label %.lr.ph.i, !llvm.loop !288

_ZSt8for_eachIPKN13geos_nlohmann6detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEZNSF_C1ESt16initializer_listISG_EbNS1_7value_tEEUlRSH_E0_ET0_T_SP_SO_.exit: ; preds = %.lr.ph.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i8 2, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %1, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %i.d, ptr %i.b, align 8, !tbaa !66
  %i.q = call noundef nonnull ptr @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS2_ISC_SaISC_EEJPKNS_6detail8json_refISC_EESK_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store ptr %i.q, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZSt8for_eachIPKN13geos_nlohmann6detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEZNSF_C1ESt16initializer_listISG_EbNS1_7value_tEEUlRSH_E0_ET0_T_SP_SO_.exit
  ret void

bb.m:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull ptr @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS2_ISC_SaISC_EEJPKNS_6detail8json_refISC_EESK_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEEE8allocateERSG_m.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !66     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.h, label %bb.a, label %_ZNSt6vectorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.a:                                             ; preds = %_ZNSt16allocator_traitsISaISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEEE8allocateERSG_m.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc.i unwind label %.thread

.noexc.i:                                         ; preds = %bb.a
  unreachable

_ZNSt6vectorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEEE8allocateERSG_m.exit
  %.not.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.i = shl nuw nsw i64 %i.g, 4
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25
          to label %_ZNSt12_Vector_baseIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i.i unwind label %.thread

_ZNSt12_Vector_baseIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.k = phi ptr [ null, %_ZNSt6vectorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %i.j, %_ZNSt15__new_allocatorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !75
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN13geos_nlohmann6detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEPSF_ET0_T_SL_SK_(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.k)
          to label %_ZNSt10unique_ptrISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEZNSD_6createISF_JPKNS1_6detail8json_refISD_EESL_EEEPT_DpOT0_EUlPSF_E_ED2Ev.exit unwind label %bb.b

.thread:                                          ; preds = %_ZNSt15__new_allocatorIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEZNSD_6createISF_JPKNS1_6detail8json_refISD_EESL_EEEPT_DpOT0_EUlPSF_E_ED2Ev.exit8

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i6.i, label %_ZNSt10unique_ptrISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEZNSD_6createISF_JPKNS1_6detail8json_refISD_EESL_EEEPT_DpOT0_EUlPSF_E_ED2Ev.exit8, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #26
  br label %_ZNSt10unique_ptrISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEZNSD_6createISF_JPKNS1_6detail8json_refISD_EESL_EEEPT_DpOT0_EUlPSF_E_ED2Ev.exit8

_ZNSt10unique_ptrISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEZNSD_6createISF_JPKNS1_6detail8json_refISD_EESL_EEEPT_DpOT0_EUlPSF_E_ED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIN13geos_nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE11_M_allocateEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !72
  ret ptr %i.a

_ZNSt10unique_ptrISt6vectorIN13geos_nlohmann10basic_jsonINS1_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES0_IhSaIhEEEESaISD_EEZNSD_6createISF_JPKNS1_6detail8json_refISD_EESL_EEEPT_DpOT0_EUlPSF_E_ED2Ev.exit8: ; preds = %.thread, %bb.c, %bb.b
  %lpad.phi17 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.c ], [ %lpad.thr_comm.split-lp, %bb.b ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  resume { ptr, i32 } %lpad.phi17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt9__find_ifIPKN13geos_nlohmann6detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEN9__gnu_cxx5__ops12_Iter_negateIZNSF_C1ESt16initializer_listISG_EbNS1_7value_tEEUlRSH_E_EEET_SS_SS_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = ashr i64 %i.d, 2                         ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.062 = phi i64 [ %i.bs, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.02961 = phi ptr [ %i.br, %bb.e ], [ %0, %bb.a ] ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02961, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr %.02961, ptr %i.h ; 3 uses
  %i.i = load i8, ptr %..i.i.i.i, align 8, !tbaa !7
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit.thread

_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %..i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.r, 32
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit: ; preds = %_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i, i64 noundef 0)
  %i.u = load i8, ptr %i.t, align 8, !tbaa !7
  %.not56 = icmp eq i8 %i.u, 3
  br i1 %.not56, label %bb.b, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit.thread

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.02961, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02961, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !289  ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.x, null
  %..i.i.i.i31 = select i1 %.not.i.i.i.i30, ptr %i.v, ptr %i.x ; 3 uses
  %i.y = load i8, ptr %..i.i.i.i31, align 8, !tbaa !7
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i32, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit.thread

_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i32: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %..i.i.i.i31, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !91
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %i.ah, 32
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit33, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit33: ; preds = %_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i32
  %i.aj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i31, i64 noundef 0)
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !7
  %.not57 = icmp eq i8 %i.ak, 3
  br i1 %.not57, label %bb.c, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit.thread

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit33
  %i.al = getelementptr inbounds nuw i8, ptr %.02961, i64 48 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02961, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !289 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.an, null
  %..i.i.i.i35 = select i1 %.not.i.i.i.i34, ptr %i.al, ptr %i.an ; 3 uses
  %i.ao = load i8, ptr %..i.i.i.i35, align 8, !tbaa !7
  %i.ap = icmp eq i8 %i.ao, 2
  br i1 %i.ap, label %_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i36, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit.thread

_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i36: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %..i.i.i.i35, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !91
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp eq i64 %i.ax, 32
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit37, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN13geos_nlohmann10basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEC1ESt16initializer_listINS2_6detail8json_refISF_EEEbNSH_7value_tEEUlRKSJ_E_EclIPSM_EEbT_.exit37: ; preds = %_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.i.i36
  %i.az = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i35, i64 noundef 0)
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !7
end_hunk_0
