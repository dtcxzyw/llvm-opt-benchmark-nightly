inline.NumInlined: 3475
inline.NumDeleted: 1689
begin_hunk_0_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_:bb.a
bb.ar:                                            ; preds = %bb.ap
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i.i29 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i29, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30

bb.at:                                            ; preds = %bb.ar
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i.i31 = phi i32 [ %i.ct, %bb.as ], [ %i.dd, %bb.at ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i31, 1
  br i1 %i.de, label %bb.au, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit, !prof !69

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #27
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.av:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(17) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr null, ptr %i.cn, align 8, !tbaa !70
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.df, align 8, !tbaa !70
  store <2 x ptr> %i.dg, ptr %i.c, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !493
  store i8 5, ptr %i.d, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.aw:                                            ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit: ; preds = %bb.av, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30, %bb.aq, %bb.ao, %bb.am, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i26, %bb.ah, %bb.af, %bb.ad, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i22, %bb.y, %bb.w, %bb.u, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i18, %bb.p, %bb.n, %bb.l, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.g, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.241, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.241, align 1            ; 3 uses
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %class.anon.228, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit, label %6

6:                                                ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %7 = mul nuw nsw i64 %i.l, 24
  %8 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %7) #29
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit, %6
  %9 = phi ptr [ %8, %6 ], [ null, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %i.n ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 -1, ptr %11, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %10, ptr %5, align 8, !tbaa !168
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !76
  store i8 %i.p, ptr %11, align 8, !tbaa !76
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %9, %bb.c ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.c ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !76, !alias.scope !499, !noalias !496 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.v = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !499, !noalias !496
  store ptr null, ptr %i.u, align 8, !tbaa !70, !alias.scope !499, !noalias !496
  store <2 x ptr> %i.v, ptr %.013.i.i.i, align 8, !tbaa !71, !alias.scope !496, !noalias !499
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !499, !noalias !496
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.s, ptr %i.q, align 8, !tbaa !76, !alias.scope !496, !noalias !499
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !501
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.d, !noalias !496

bb.d:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #30, !noalias !496
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !501
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %9, %bb.c ], [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i26, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32
  %.013.i.i.i28 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i29 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !76, !alias.scope !505, !noalias !502 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30:          ; preds = %.lr.ph.i.i.i27
  %i.af = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.ag = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !71, !alias.scope !505, !noalias !502
  store ptr null, ptr %i.af, align 8, !tbaa !70, !alias.scope !505, !noalias !502
  store <2 x ptr> %i.ag, ptr %.013.i.i.i28, align 8, !tbaa !71, !alias.scope !502, !noalias !505
  store ptr null, ptr %.0912.i.i.i29, align 8, !tbaa !71, !alias.scope !505, !noalias !502
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i27
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !76, !alias.scope !502, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !507
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i29)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 unwind label %bb.e, !noalias !502

bb.e:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #30, !noalias !502
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !507
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #31
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.f
  store ptr %9, ptr %0, align 8, !tbaa !34
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %9, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !38
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %10) #27
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  %i.at = call ptr @__cxa_begin_catch(ptr %i.as) #27 ; 0 uses
  %12 = mul nuw nsw i64 %i.l, 24
  call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %12) #31
  invoke void @__cxa_rethrow() #28
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aq

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #30
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !508
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !3      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !124

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !158
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.s, ptr %i.d, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !158
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !124

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !3
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !509

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !512

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !513

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !514

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !158
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !124

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !158
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE13PrepareOutputEl:bb.a
bb.az:                                            ; preds = %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fb, align 8, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !84
  %i.fg = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  %i.fj = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i63 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i63, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.bd:                                            ; preds = %bb.bb
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i65 = phi i32 [ %i.fe, %bb.bc ], [ %i.fo, %bb.bd ]
  %i.fp = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %i.fp, label %bb.be, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %.loopexit, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.bf:                                            ; preds = %bb.aj, %bb.m, %bb.l
  %.pn32.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.al, %bb.l ], [ %i.da, %bb.aj ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.k
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.bf ], [ %i.ak, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn32.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor10EmitResultENS_5DatumEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"struct.arrow::Datum", align 16    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !877
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !917
  %.not.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !76    ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_ZN5arrow5DatumC2EOS0_.exit, label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x ptr>, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %i.i, align 8, !tbaa !70
  store <2 x ptr> %i.j, ptr %6, align 16, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !71
  br label %_ZN5arrow5DatumC2EOS0_.exit

_ZN5arrow5DatumC2EOS0_.exit:                      ; preds = %bb.b, %.sink.split.i.i.i.i.i.i.i.i
  store i8 %i.g, ptr %i.e, align 16, !tbaa !76
  %i.k = load ptr, ptr %3, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow5DatumC2EOS0_.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !121    ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !121
  store ptr null, ptr %5, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %bb.h

bb.d:                                             ; preds = %_ZN5arrow5DatumC2EOS0_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %.not.i13 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i8 -1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !76    ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.f
  %i.aa = load ptr, ptr %2, align 8, !tbaa !71
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  store ptr null, ptr %i.ac, align 8, !tbaa !70
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !71
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !39
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ae = phi ptr [ %i.t, %bb.f ], [ %.pre.i, %.sink.split.i.i.i.i.i.i.i.i.i.i ]
  store i8 %i.y, ptr %i.w, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.af, ptr %i.s, align 8, !tbaa !39
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.g, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i, %_ZN5arrow5DatumD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !980
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.241, align 1            ; 3 uses
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i.a = icmp eq i64 %i.l, 0
  br i1 %.not.i.a, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit, label %5

5:                                                ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %6 = mul nuw nsw i64 %i.l, 24
  %7 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #29
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit, %5
  %8 = phi ptr [ %7, %5 ], [ null, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %i.n ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i8, ptr %11, align 8, !tbaa !76      ; 2 uses
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %i.o, align 8, !tbaa !70
  store <2 x ptr> %i.p, ptr %9, align 8, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !71
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit, %.sink.split.i.i.i.i.i.i.i.i.i
  store i8 %12, ptr %10, align 8, !tbaa !76
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %8, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !76, !alias.scope !986, !noalias !983 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.v = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !986, !noalias !983
  store ptr null, ptr %i.u, align 8, !tbaa !70, !alias.scope !986, !noalias !983
  store <2 x ptr> %i.v, ptr %.013.i.i.i, align 8, !tbaa !71, !alias.scope !983, !noalias !986
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !986, !noalias !983
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.s, ptr %i.q, align 8, !tbaa !76, !alias.scope !983, !noalias !986
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !988
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.c, !noalias !983

bb.c:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #30, !noalias !983
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !988
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %8, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i16, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22
  %.013.i.i.i18 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i19 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !76, !alias.scope !992, !noalias !989 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i20

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i20:          ; preds = %.lr.ph.i.i.i17
  %i.af = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 8
  %i.ag = load <2 x ptr>, ptr %.0912.i.i.i19, align 8, !tbaa !71, !alias.scope !992, !noalias !989
  store ptr null, ptr %i.af, align 8, !tbaa !70, !alias.scope !992, !noalias !989
  store <2 x ptr> %i.ag, ptr %.013.i.i.i18, align 8, !tbaa !71, !alias.scope !989, !noalias !992
  store ptr null, ptr %.0912.i.i.i19, align 8, !tbaa !71, !alias.scope !992, !noalias !989
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i20, %.lr.ph.i.i.i17
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !76, !alias.scope !989, !noalias !992
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !994
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i19)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 unwind label %bb.d, !noalias !989

bb.d:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #30, !noalias !989
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !994
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #31
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, %bb.e
  store ptr %8, ptr %0, align 8, !tbaa !34
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S5_S7_S9_SB_SD_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSE_E4typeESJ_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.241, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit, label %bb.h

_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !70   ; 8 uses
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !84
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !837
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !837
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit unwind label %bb.i

_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.w, align 8, !tbaa !70
  store <2 x ptr> %i.x, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !153
  store i8 2, ptr %i.a, align 8, !tbaa !76
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit, %_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit
  ret ptr %0

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA80_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(80) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !995
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !995
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !noalias !995, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(80) %2) #27, !noalias !995
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(80) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !995 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !995
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !995
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA81_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(81) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !998
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !998
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !noalias !998, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(81) %2) #27, !noalias !998
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(81) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !998 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d
end_hunk_1
