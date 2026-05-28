inline.NumInlined: 2522
inline.NumDeleted: 1218
begin_hunk_0_@_ZN13geos_nlohmann6detail9dtoa_impl16grisu2_digit_genEPcRiS3_NS1_5diyfpES4_S4_:bb.a
_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit68: ; preds = %bb.k, %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit, %.critedge2.i65, %bb.q, %bb.o
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN13geos_nlohmann11ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10basic_jsonIS0_St6vectorS6_blmdSaNS_14adl_serializerES8_IhSaIhEEEESt4lessIS6_ESaISt4pairIKS6_SC_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos_nlohmann::basic_json", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i8 0, ptr %2, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.b = load ptr, ptr %0, align 8, !tbaa !216    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !216  ; 3 uses
  %.not14.i = icmp eq ptr %i.b, %i.d
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %.fr5 = freeze i64 %i.f                         ; 3 uses
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq i64 %.fr5, 0
  br i1 %i.h, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us
  %.sroa.06.015.i.us = phi ptr [ %i.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.us, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us: ; preds = %.lr.ph.i.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.us, i64 48 ; 2 uses
  %.not.i.us = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.us, label %._crit_edge.i, label %.lr.ph.i.split.us, !llvm.loop !281

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i
  %.sroa.06.015.i = phi ptr [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i ], [ %i.b, %.lr.ph.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = icmp eq i64 %i.n, %.fr5
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i.split
  %i.p = load ptr, ptr %.sroa.06.015.i, align 8, !tbaa !54
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.g, i64 %.fr5)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %.loopexit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.split, !llvm.loop !281

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us, %bb.a
  invoke void @_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EE12emplace_backIJRS7_RSE_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %._crit_edge.i
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -48
  %.pre = load i8, ptr %2, align 8, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split.us, %.noexc
  %i.u = phi i8 [ %.pre, %.noexc ], [ 0, %.lr.ph.i.split.us ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ]
  %.sroa.09.1.i = phi ptr [ %i.t, %.noexc ], [ %.sroa.06.015.i.us, %.lr.ph.i.split.us ], [ %.sroa.06.015.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i, i64 32
  call void @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.u) #24, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %i.v

bb.b:                                             ; preds = %._crit_edge.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load i8, ptr %2, align 8, !tbaa !7
  call void @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.x) #24, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull ptr @_ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE9type_nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !7       ; 2 uses
  %i.b = icmp ult i8 %i.a, 10
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE9type_nameEv, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.61, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EE12emplace_backIJRS7_RSE_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !12
  %i.g = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.i, ptr %i.a, align 8, !tbaa !62
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !54
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.l, ptr %i.f, align 8, !tbaa !10
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !10
  store i8 %i.n, ptr %i.m, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke void @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEEEEC2IRS6_RSE_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.t

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEEEEC2IRS6_RSE_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %i.x, ptr %i.b, align 8, !tbaa !83
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EE17_M_realloc_insertIJRS7_RSE_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEEEEC2IRS6_RSE_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EE17_M_realloc_insertIJRS7_RSE_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !86     ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #28
  unreachable

_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE11_M_allocateEm.exit: ; preds = %bb.a
  %4 = sdiv exact i64 %i.g, 48                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i, %4        ; 2 uses
  %6 = icmp ult i64 %5, %4
  %7 = tail call i64 @llvm.umin.i64(i64 %5, i64 192153584101141162)
  %8 = select i1 %6, i64 192153584101141162, i64 %7 ; 3 uses
  %9 = ptrtoint ptr %1 to i64
  %10 = sub i64 %9, %i.f
  %.not.i = icmp ne i64 %8, 0
  tail call void @llvm.assume(i1 %.not.i)
  %11 = mul nuw nsw i64 %8, 48
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 %10 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !12
  %i.k = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.m, ptr %i.a, align 8, !tbaa !62
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.body.thread46 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !54
  %i.p = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.p, ptr %i.j, align 8, !tbaa !10
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !10
  store i8 %i.r, ptr %i.q, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  invoke void @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEE9constructISG_JRS7_RSF_EEEvRSH_PT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #26
  br label %.body.thread

_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEE9constructISG_JRS7_RSF_EEEvRSH_PT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aa = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEPSG_ET0_T_SL_SK_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %12)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEE9constructISG_JRS7_RSF_EEEvRSH_PT_DpOT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEPSG_ET0_T_SL_SK_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.ab)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit31 unwind label %.body.thread46

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit31: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit
  %.not.i2.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33
  %.0.i3.i = phi ptr [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33 ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit31 ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 40
  %i.af = load i8, ptr %i.ad, align 8, !tbaa !7
  call void @_ZN13geos_nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef zeroext %i.af) #24, !inline_history !282
  %i.ag = load ptr, ptr %.0.i3.i, align 8, !tbaa !54 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32: ; preds = %.lr.ph.i
  call void @_ZdlPv(ptr noundef %i.ag) #26, !inline_history !283
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !225

_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit31
  %.not.i35 = icmp eq ptr %i.d, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE13_M_deallocateEPSG_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26
  br label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE13_M_deallocateEPSG_m.exit

_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESaISG_EE13_M_deallocateEPSG_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_.exit, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %12, ptr %0, align 8, !tbaa !86
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %12, i64 %8
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !88
  ret void

.body.thread46:                                   ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit, %.noexc.i.i
  %.0.ph = phi ptr [ %12, %.noexc.i.i ], [ %i.ab, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESH_SaISG_EET0_T_SK_SJ_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.thread

bb.g:                                             ; preds = %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEE9constructISG_JRS7_RSF_EEEvRSH_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.an = call ptr @__cxa_begin_catch(ptr %i.am) #24 ; 0 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.i) #24
  br label %bb.i

.body.thread:                                     ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %.body.thread46
  %lpad.thr_comm.sink = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread46 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.x, %bb.e ]
  %.0.lpad-body44 = phi ptr [ %.0.ph, %.body.thread46 ], [ %12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %12, %bb.e ]
  %i.ao = extractvalue { ptr, i32 } %lpad.thr_comm.sink, 0
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.ao) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13geos_nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvT_SI_(ptr noundef nonnull %12, ptr noundef nonnull %.0.lpad-body44)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.body.thread, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.g, %.body.thread
  call void @_ZdlPv(ptr noundef nonnull %12) #26
  invoke void @__cxa_rethrow() #28
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aq

bb.k:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #29
  unreachable

bb.l:                                             ; preds = %bb.i
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
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = zext i1 %i.f to i8                       ; 2 uses
  br i1 %3, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %4, 2
  %spec.select = select i1 %i.h, i8 0, i8 %i.g    ; 2 uses
  %i.i = icmp ne i8 %4, 1
  %i.j = trunc nuw i8 %spec.select to i1
  %.not13 = or i1 %i.i, %i.j
  br i1 %.not13, label %bb.i, label %bb.c, !prof !287

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 32) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN13geos_nlohmann6detail10type_error6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.geos_nlohmann::detail::type_error") align 8 %i.k, i32 noundef 301, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.k, ptr nonnull @_ZTIN13geos_nlohmann6detail10type_errorE, ptr nonnull @_ZN13geos_nlohmann6detail9exceptionD2Ev) #28
          to label %bb.m unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.010 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.010, label %bb.g, label %bb.h

end_hunk_0
