inline.NumInlined: 3475
inline.NumDeleted: 1689
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev:bb.a
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
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i8 -1, ptr %i.r, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.q, ptr %5, align 8, !tbaa !168
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !76
  store i8 %i.t, ptr %i.r, align 8, !tbaa !76
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.c ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !76, !alias.scope !499, !noalias !496 ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.z = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !499, !noalias !496
  store ptr null, ptr %i.y, align 8, !tbaa !70, !alias.scope !499, !noalias !496
  store <2 x ptr> %i.z, ptr %.013.i.i.i, align 8, !tbaa !71, !alias.scope !496, !noalias !499
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !499, !noalias !496
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.w, ptr %i.u, align 8, !tbaa !76, !alias.scope !496, !noalias !499
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !501
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.d, !noalias !496

bb.d:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #30, !noalias !496
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !501
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.ad, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i26, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32
  %.013.i.i.i28 = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.ae, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i29 = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !76, !alias.scope !505, !noalias !502 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30:          ; preds = %.lr.ph.i.i.i27
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.ak = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !71, !alias.scope !505, !noalias !502
  store ptr null, ptr %i.aj, align 8, !tbaa !70, !alias.scope !505, !noalias !502
  store <2 x ptr> %i.ak, ptr %.013.i.i.i28, align 8, !tbaa !71, !alias.scope !502, !noalias !505
  store ptr null, ptr %.0912.i.i.i29, align 8, !tbaa !71, !alias.scope !505, !noalias !502
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i27
  store i8 %i.ah, ptr %i.af, align 8, !tbaa !76, !alias.scope !502, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !507
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i29)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 unwind label %bb.e, !noalias !502

bb.e:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #30, !noalias !502
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !507
  %i.an = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ae, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ao, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #31
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !34
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !38
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.q) #27
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #31
  invoke void @__cxa_rethrow() #28
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.au

bb.i:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #30
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 16 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !3      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
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
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
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

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !158
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %4 = ptrtoaddr ptr %i.d to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.bg = sub i64 %4, %5
  %i.bh = add i64 %i.bg, -4                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec116, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat118, ptr %i.bn, align 4, !tbaa !3
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !515

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !516

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !161   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #28
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec144, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cn = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat146, ptr %i.co, align 4, !tbaa !3
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cp, label %middle.block151, label %vector.body147, !llvm.loop !517

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.ck, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !518

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !124

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !3
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !124

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !161
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !158
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8, !tbaa !508
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !519
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !256  ; 16 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !181    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !124

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !256
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !181
  store i64 %i.s, ptr %i.d, align 8, !tbaa !181
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !256
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !124

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !181
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !181
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec130, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !181
  store <2 x i64> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !181
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !520

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !181
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !521

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -8                       ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !181
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !522

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !181
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !523

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !256
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !124

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !256
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !181
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !181
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !256
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69
  %4 = ptrtoaddr ptr %i.d to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.bg = sub i64 %4, %5
  %i.bh = add i64 %i.bg, -8                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec116, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x i64> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !181
  store <2 x i64> %broadcast.splat118, ptr %i.bn, align 8, !tbaa !181
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !524

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !181
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !525

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !255   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 4 uses
  %i.bu = sub nsw i64 1152921504606846975, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #28
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 3
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i64, ptr %3, align 8, !tbaa !181   ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ci, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec144, 3
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cn = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !181
  store <2 x i64> %broadcast.splat146, ptr %i.co, align 8, !tbaa !181
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cp, label %middle.block151, label %vector.body147, !llvm.loop !526

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.ck, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !181
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !527

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cr = icmp sgt i64 %i.cb, 8
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !124

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ce, ptr align 8 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 8
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i64, ptr %i.bq, align 8, !tbaa !181
  store i64 %i.ct, ptr %i.ce, align 8, !tbaa !181
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 8
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !124

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 8
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i64, ptr %1, align 8, !tbaa !181
  store i64 %i.cy, ptr %i.cu, align 8, !tbaa !181
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #31
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !255
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !256
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8, !tbaa !519
  br label %_ZSt4fillIPllEvT_S1_RKT0_.exit

_ZSt4fillIPllEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !280  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !261    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 136                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !528
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 136                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 67818912035696881
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 67818912035696880, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor10EmitResultESt10shared_ptrINS_9ArrayDataEEPNS1_12ExecListenerE:bb.a
  %i.bc = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.aj, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !126, !range !132, !noundef !133
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.p, %bb.l
  %.pn12 = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.ai, %bb.p ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !70
  %i.bi = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.bh, align 8, !tbaa !70
  store ptr null, ptr %1, align 8, !tbaa !153
  store <2 x ptr> %i.bi, ptr %10, align 16, !tbaa !71
  store ptr null, ptr %11, align 8, !tbaa !153
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 2, ptr %i.bj, align 16, !tbaa !76
  %i.bk = load ptr, ptr %2, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %10)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumD2Ev.exit26 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit26:                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  br label %bb.ad

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit26, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

bb.ad:                                            ; preds = %bb.k, %bb.y, %bb.ac
  %.pn12.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.ac ], [ %.pn12, %bb.y ], [ %i.v, %bb.k ]
  resume { ptr, i32 } %.pn12.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.60") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.334") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !84
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !767
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !767
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !126, !range !132, !noundef !133
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute12_GLOBAL__N_122ComputeDataPreallocateERKNS_8DataTypeEPSt6vectorINS1_19BufferPreallocationESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !295
  switch i32 %i.b, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 8, label %bb.b
    i32 9, label %bb.b
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 16, label %bb.b
    i32 17, label %bb.b
    i32 19, label %bb.b
    i32 20, label %bb.b
    i32 18, label %bb.b
    i32 33, label %bb.b
    i32 21, label %bb.b
    i32 37, label %bb.b
    i32 22, label %bb.b
    i32 29, label %bb.b
    i32 43, label %bb.b
    i32 44, label %bb.b
    i32 23, label %bb.b
    i32 24, label %bb.b
    i32 15, label %bb.b
    i32 14, label %bb.g
    i32 13, label %bb.g
    i32 25, label %bb.g
    i32 30, label %bb.g
    i32 35, label %bb.l
    i32 34, label %bb.l
    i32 36, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !698  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !768
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.h, align 4, !tbaa !769
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !771
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !698
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %.val26.i.i = load ptr, ptr %1, align 8, !tbaa !697 ; 8 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %.val26.i.i to i64          ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %i.r = icmp eq ptr %i.h, %.val26.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.r, i64 1, i64 %i.q
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o ; 2 uses
  store i32 %i.f, ptr %i.y, align 4, !tbaa !769
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !771
  br i1 %i.r, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = ptrtoaddr ptr %i.x to i64
  %2 = ptrtoaddr ptr %i.h to i64
  %3 = ptrtoaddr ptr %.val26.i.i to i64
  %i.ab = sub i64 %2, %3
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ac, 72
  %i.af = sub i64 %i.n, %i.aa
  %diff.check75 = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check77, %diff.check75
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader94, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec80 = and i64 %i.ae, 4611686018427387900   ; 3 uses
  %i.ag = shl i64 %n.vec80, 3                     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %.val26.i.i, i64 %i.ag
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body81 ] ; 2 uses
  %i.aj = shl i64 %index82, 3                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.val26.i.i, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load85 = load <2 x i64>, ptr %next.gep84, align 4
  %wide.load86 = load <2 x i64>, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x i64> %wide.load85, ptr %next.gep83, align 4, !alias.scope !772
  store <2 x i64> %wide.load86, ptr %i.al, align 4, !alias.scope !772
  %index.next87 = add nuw i64 %index82, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.am, label %middle.block88, label %vector.body81, !llvm.loop !775

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.ae, %n.vec80
  br i1 %cmp.n89, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i, label %.lr.ph.i.i.i.i.i.preheader94

.lr.ph.i.i.i.i.i.preheader94:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block88
  %.03.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block88 ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.val26.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block88 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader94, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader94 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader94 ] ; 2 uses
  %.09.val.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 4
  store i64 %.09.val.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 4, !alias.scope !772
  %i.an = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !776

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block88, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block88 ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i39.i.i = icmp eq ptr %.val26.i.i, null
  br i1 %.not.i39.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val26.i.i, i64 noundef %i.o) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i
  store ptr %i.x, ptr %1, align 8, !tbaa !697
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !698
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !698 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !768
  %.not.i11 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 32, ptr %i.as, align 4, !tbaa !769
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 1, ptr %i.av, align 4, !tbaa !771
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !698
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %.val.i.i = load ptr, ptr %1, align 8, !tbaa !697 ; 8 uses
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.j, label %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12: ; preds = %bb.i
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %i.bc = icmp eq ptr %i.as, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i13 = select i1 %i.bc, i64 1, i64 %i.bb
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i13, %i.bb ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i14)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #29 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az ; 2 uses
  store i32 32, ptr %i.bj, align 4, !tbaa !769
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 1, ptr %i.bk, align 4, !tbaa !771
  br i1 %i.bc, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i, label %.lr.ph.i.i.i.i.i15.preheader

.lr.ph.i.i.i.i.i15.preheader:                     ; preds = %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12
  %i.bl = ptrtoaddr ptr %i.bi to i64
  %4 = ptrtoaddr ptr %i.as to i64
  %5 = ptrtoaddr ptr %.val.i.i to i64
  %i.bm = sub i64 %4, %5
  %i.bn = add i64 %i.bm, -8                       ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.bn, 72
  %i.bq = sub i64 %i.ay, %i.bl
  %diff.check57 = icmp ugt i64 %i.bq, -32
  %or.cond92 = or i1 %min.iters.check59, %diff.check57
  br i1 %or.cond92, label %.lr.ph.i.i.i.i.i15.preheader95, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i.i.i.i15.preheader
  %n.vec62 = and i64 %i.bp, 4611686018427387900   ; 3 uses
  %i.br = shl i64 %n.vec62, 3                     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %.val.i.i, i64 %i.br
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.bu = shl i64 %index64, 3                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %next.gep66 = getelementptr i8, ptr %.val.i.i, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x i64>, ptr %next.gep66, align 4
  %wide.load68 = load <2 x i64>, ptr %i.bv, align 4
  %i.bw = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x i64> %wide.load67, ptr %next.gep65, align 4, !alias.scope !777
  store <2 x i64> %wide.load68, ptr %i.bw, align 4, !alias.scope !777
  %index.next69 = add nuw i64 %index64, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bx, label %middle.block70, label %vector.body63, !llvm.loop !780

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.bp, %n.vec62
  br i1 %cmp.n71, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i, label %.lr.ph.i.i.i.i.i15.preheader95

.lr.ph.i.i.i.i.i15.preheader95:                   ; preds = %.lr.ph.i.i.i.i.i15.preheader, %middle.block70
  %.03.i.i.i.i.i16.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i15.preheader ], [ %i.bs, %middle.block70 ]
  %.092.i.i.i.i.i17.ph = phi ptr [ %.val.i.i, %.lr.ph.i.i.i.i.i15.preheader ], [ %i.bt, %middle.block70 ]
  br label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %.lr.ph.i.i.i.i.i15.preheader95, %.lr.ph.i.i.i.i.i15
  %.03.i.i.i.i.i16 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i15 ], [ %.03.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i15.preheader95 ] ; 2 uses
  %.092.i.i.i.i.i17 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i15 ], [ %.092.i.i.i.i.i17.ph, %.lr.ph.i.i.i.i.i15.preheader95 ] ; 2 uses
  %.09.val.i.i.i.i.i18 = load i64, ptr %.092.i.i.i.i.i17, align 4
  store i64 %.09.val.i.i.i.i.i18, ptr %.03.i.i.i.i.i16, align 4, !alias.scope !777
  %i.by = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i17, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i16, i64 8 ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i19, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !781

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i: ; preds = %.lr.ph.i.i.i.i.i15, %middle.block70, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12
  %.0.lcssa.i.i.i.i.i20 = phi ptr [ %i.bi, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12 ], [ %i.bs, %middle.block70 ], [ %i.bz, %.lr.ph.i.i.i.i.i15 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i20, i64 8
  %.not.i41.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i41.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.az) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i
  store ptr %i.bi, ptr %1, align 8, !tbaa !697
  store ptr %i.ca, ptr %i.ar, align 8, !tbaa !698
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.cb, ptr %i.at, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !698 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !768
  %.not.i21 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 64, ptr %i.cd, align 4, !tbaa !769
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.cg, align 4, !tbaa !771
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !698
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.l
  %.val.i.i22 = load ptr, ptr %1, align 8, !tbaa !697 ; 8 uses
  %i.ci = ptrtoint ptr %i.cd to i64
  %i.cj = ptrtoint ptr %.val.i.i22 to i64         ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.o, label %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23: ; preds = %bb.n
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %i.cn = icmp eq ptr %i.cd, %.val.i.i22          ; 2 uses
  %.sroa.speculated.i.i.i24 = select i1 %i.cn, i64 1, i64 %i.cm
  %i.co = add nsw i64 %.sroa.speculated.i.i.i24, %i.cm ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cm
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i25)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #29 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ck ; 2 uses
  store i32 64, ptr %i.cu, align 4, !tbaa !769
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 1, ptr %i.cv, align 4, !tbaa !771
  br i1 %i.cn, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23
  %i.cw = ptrtoaddr ptr %i.ct to i64
  %6 = ptrtoaddr ptr %i.cd to i64
  %7 = ptrtoaddr ptr %.val.i.i22 to i64
  %i.cx = sub i64 %6, %7
  %i.cy = add i64 %i.cx, -8                       ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 72
  %i.db = sub i64 %i.cj, %i.cw
  %diff.check = icmp ugt i64 %i.db, -32
  %or.cond93 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond93, label %.lr.ph.i.i.i.i.i26.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.da, 4611686018427387900     ; 3 uses
  %i.dc = shl i64 %n.vec, 3                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ct, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %.val.i.i22, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.df ; 2 uses
  %next.gep53 = getelementptr i8, ptr %.val.i.i22, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 4
  %wide.load54 = load <2 x i64>, ptr %i.dg, align 4
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !782
  store <2 x i64> %wide.load54, ptr %i.dh, align 4, !alias.scope !782
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !785

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26.preheader97

.lr.ph.i.i.i.i.i26.preheader97:                   ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block
  %.03.i.i.i.i.i27.ph = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.dd, %middle.block ]
  %.092.i.i.i.i.i28.ph = phi ptr [ %.val.i.i22, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader97, %.lr.ph.i.i.i.i.i26
  %.03.i.i.i.i.i27 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i26 ], [ %.03.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader97 ] ; 2 uses
  %.092.i.i.i.i.i28 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i26 ], [ %.092.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader97 ] ; 2 uses
  %.09.val.i.i.i.i.i29 = load i64, ptr %.092.i.i.i.i.i28, align 4
  store i64 %.09.val.i.i.i.i.i29, ptr %.03.i.i.i.i.i27, align 4, !alias.scope !782
  %i.dj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i28, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.dj, %i.cd
  br i1 %.not.i.i.i.i.i30, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26, !llvm.loop !786

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23
  %.0.lcssa.i.i.i.i.i32 = phi ptr [ %i.ct, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23 ], [ %i.dd, %middle.block ], [ %i.dk, %.lr.ph.i.i.i.i.i26 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i32, i64 8
  %.not.i41.i.i33 = icmp eq ptr %.val.i.i22, null
  br i1 %.not.i41.i.i33, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i22, i64 noundef %i.ck) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34: ; preds = %bb.p, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31
  store ptr %i.ct, ptr %1, align 8, !tbaa !697
  store ptr %i.dl, ptr %i.cc, align 8, !tbaa !698
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.dm, ptr %i.ce, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit: ; preds = %bb.a, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34, %bb.m, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.h, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.35", align 16 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.57", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Result.274", align 8 ; 10 uses
  %6 = alloca %"class.arrow::Result.372", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !653, !noalias !787 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !660, !noalias !796 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !70, !alias.scope !796
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 8, !noalias !796
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.c ], [ %i.l, %bb.e ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.j = cmpxchg weak ptr %i.g, i32 %.06.i.i.i.i.i.i.i, i32 %i.i acq_rel monotonic, align 8, !noalias !796 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
  br i1 %i.k, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.d, !llvm.loop !662

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !796 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.m, align 8, !tbaa !63, !noalias !796
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28, !noalias !796
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !663, !noalias !796 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !289, !alias.scope !796
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !787
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, %bb.f
  %i.p = phi ptr [ %i.o, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #29
          to label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k ; 10 uses

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !82, !noalias !797
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !84, !noalias !797
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !63, !noalias !797
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70, !noalias !797
  store ptr %i.p, ptr %i.u, align 8, !tbaa !289, !noalias !797
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !70, !noalias !797
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %2, ptr %i.y, align 8, !tbaa !211, !noalias !797
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 -1, ptr %i.z, align 8, !tbaa !800, !noalias !797
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false), !noalias !797
  store ptr %i.r, ptr %i.q, align 8, !tbaa !70, !alias.scope !797
  store ptr %i.u, ptr %3, align 16, !tbaa !710, !alias.scope !797
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !680 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %.not96 = icmp eq i32 %.pre, 0
  br i1 %.not96, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = sext i32 %.pre to i64
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.ac)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit unwind label %bb.l

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !682, !range !132, !noundef !133
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !616
  invoke void @_ZN5arrow7compute13KernelContext14AllocateBitmapEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.274") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %5, align 8, !tbaa !121
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.j, !prof !124

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bg

bb.l:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE4InitEPNS0_13KernelContextENS0_14KernelInitArgsE:bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !626    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !877
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !632
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !635, !nonnull !133, !align !595
  call void @_ZNK5arrow7compute10OutputType7ResolveEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.319") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %4, align 8, !tbaa !121
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINS_10TypeHolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70, !noalias !878
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load <2 x ptr>, ptr %i.k, align 8, !tbaa !399, !noalias !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !84
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !883
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !124

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.al, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !84
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.o ], [ %i.ay, %bb.p ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.q, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, !prof !69

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m, %bb.k
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ba = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !126, !range !132, !noundef !133
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit

_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit:      ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %class.anon.228, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.241, align 1            ; 3 uses
  %7 = alloca %class.anon.241, align 1            ; 3 uses
  %8 = alloca %class.anon.241, align 1            ; 3 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"struct.arrow::Datum", align 16   ; 12 uses
  %11 = alloca %"class.arrow::Result.368", align 8 ; 13 uses
  %12 = alloca %"class.std::shared_ptr.35", align 16 ; 5 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %15 = alloca %"class.std::shared_ptr.35", align 8 ; 8 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %17 = alloca %"class.std::shared_ptr.41", align 16 ; 7 uses
  %18 = alloca %"struct.arrow::DataTypeLayout", align 8 ; 6 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %20 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 14 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 11 uses
  %23 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 13 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %27 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !75     ; 45 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %28 = ptrtoaddr ptr %i.e to i64
  %29 = ptrtoaddr ptr %i.c to i64
  %i.g = add i64 %28, -24
  %i.h = sub i64 %i.g, %29                        ; 3 uses
  %i.i = udiv i64 %i.h, 24
  %i.j = add nuw nsw i64 %i.i, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.h, 168
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check286 = icmp ult i64 %i.h, 744
  br i1 %min.iters.check286, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 24
  %n.vec = and i64 %i.j, 2305843009213693920      ; 4 uses
  %i.k = mul i64 %n.vec, 24
  %i.l = getelementptr i8, ptr %i.c, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %vec.phi287 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.en, %vector.body ]
  %i.m = mul i64 %index, 24                       ; 32 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.m
  %i.n = getelementptr i8, ptr %i.c, i64 %i.m
  %i.o = getelementptr i8, ptr %i.c, i64 %i.m
  %i.p = getelementptr i8, ptr %i.c, i64 %i.m
  %i.q = getelementptr i8, ptr %i.c, i64 %i.m
  %i.r = getelementptr i8, ptr %i.c, i64 %i.m
  %i.s = getelementptr i8, ptr %i.c, i64 %i.m
  %i.t = getelementptr i8, ptr %i.c, i64 %i.m
  %i.u = getelementptr i8, ptr %i.c, i64 %i.m
  %i.v = getelementptr i8, ptr %i.c, i64 %i.m
  %i.w = getelementptr i8, ptr %i.c, i64 %i.m
  %i.x = getelementptr i8, ptr %i.c, i64 %i.m
  %i.y = getelementptr i8, ptr %i.c, i64 %i.m
  %i.z = getelementptr i8, ptr %i.c, i64 %i.m
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.m
  %i.af = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.m
  %i.aj = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.m
  %i.al = getelementptr i8, ptr %i.c, i64 %i.m
  %i.am = getelementptr i8, ptr %i.c, i64 %i.m
  %i.an = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ao = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.m
  %i.aq = getelementptr i8, ptr %i.c, i64 %i.m
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.m
  %i.as = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.at = getelementptr i8, ptr %i.n, i64 40
  %i.au = getelementptr i8, ptr %i.o, i64 64
  %i.av = getelementptr i8, ptr %i.p, i64 88
  %i.aw = getelementptr i8, ptr %i.q, i64 112
  %i.ax = getelementptr i8, ptr %i.r, i64 136
  %i.ay = getelementptr i8, ptr %i.s, i64 160
  %i.az = getelementptr i8, ptr %i.t, i64 184
  %i.ba = getelementptr i8, ptr %i.u, i64 208
  %i.bb = getelementptr i8, ptr %i.v, i64 232
  %i.bc = getelementptr i8, ptr %i.w, i64 256
  %i.bd = getelementptr i8, ptr %i.x, i64 280
  %i.be = getelementptr i8, ptr %i.y, i64 304
  %i.bf = getelementptr i8, ptr %i.z, i64 328
  %i.bg = getelementptr i8, ptr %i.aa, i64 352
  %i.bh = getelementptr i8, ptr %i.ab, i64 376
  %i.bi = getelementptr i8, ptr %i.ac, i64 400
  %i.bj = getelementptr i8, ptr %i.ad, i64 424
  %i.bk = getelementptr i8, ptr %i.ae, i64 448
  %i.bl = getelementptr i8, ptr %i.af, i64 472
  %i.bm = getelementptr i8, ptr %i.ag, i64 496
  %i.bn = getelementptr i8, ptr %i.ah, i64 520
  %i.bo = getelementptr i8, ptr %i.ai, i64 544
  %i.bp = getelementptr i8, ptr %i.aj, i64 568
  %i.bq = getelementptr i8, ptr %i.ak, i64 592
  %i.br = getelementptr i8, ptr %i.al, i64 616
  %i.bs = getelementptr i8, ptr %i.am, i64 640
  %i.bt = getelementptr i8, ptr %i.an, i64 664
  %i.bu = getelementptr i8, ptr %i.ao, i64 688
  %i.bv = getelementptr i8, ptr %i.ap, i64 712
  %i.bw = getelementptr i8, ptr %i.aq, i64 736
  %i.bx = getelementptr i8, ptr %i.ar, i64 760
  %i.by = load i8, ptr %i.as, align 8, !tbaa !76
  %i.bz = load i8, ptr %i.at, align 8, !tbaa !76
  %i.ca = load i8, ptr %i.au, align 8, !tbaa !76
  %i.cb = load i8, ptr %i.av, align 8, !tbaa !76
  %i.cc = load i8, ptr %i.aw, align 8, !tbaa !76
  %i.cd = load i8, ptr %i.ax, align 8, !tbaa !76
  %i.ce = load i8, ptr %i.ay, align 8, !tbaa !76
  %i.cf = load i8, ptr %i.az, align 8, !tbaa !76
  %i.cg = load i8, ptr %i.ba, align 8, !tbaa !76
  %i.ch = load i8, ptr %i.bb, align 8, !tbaa !76
  %i.ci = load i8, ptr %i.bc, align 8, !tbaa !76
  %i.cj = load i8, ptr %i.bd, align 8, !tbaa !76
  %i.ck = load i8, ptr %i.be, align 8, !tbaa !76
  %i.cl = load i8, ptr %i.bf, align 8, !tbaa !76
  %i.cm = load i8, ptr %i.bg, align 8, !tbaa !76
  %i.cn = load i8, ptr %i.bh, align 8, !tbaa !76
  %i.co = insertelement <16 x i8> poison, i8 %i.by, i64 0
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 1
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 2
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 3
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 4
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 5
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 6
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 7
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 8
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 9
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 10
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 11
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 12
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 13
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 14
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 15
  %i.de = load i8, ptr %i.bi, align 8, !tbaa !76
  %i.df = load i8, ptr %i.bj, align 8, !tbaa !76
  %i.dg = load i8, ptr %i.bk, align 8, !tbaa !76
  %i.dh = load i8, ptr %i.bl, align 8, !tbaa !76
  %i.di = load i8, ptr %i.bm, align 8, !tbaa !76
  %i.dj = load i8, ptr %i.bn, align 8, !tbaa !76
  %i.dk = load i8, ptr %i.bo, align 8, !tbaa !76
  %i.dl = load i8, ptr %i.bp, align 8, !tbaa !76
  %i.dm = load i8, ptr %i.bq, align 8, !tbaa !76
  %i.dn = load i8, ptr %i.br, align 8, !tbaa !76
  %i.do = load i8, ptr %i.bs, align 8, !tbaa !76
  %i.dp = load i8, ptr %i.bt, align 8, !tbaa !76
  %i.dq = load i8, ptr %i.bu, align 8, !tbaa !76
  %i.dr = load i8, ptr %i.bv, align 8, !tbaa !76
  %i.ds = load i8, ptr %i.bw, align 8, !tbaa !76
  %i.dt = load i8, ptr %i.bx, align 8, !tbaa !76
  %i.du = insertelement <16 x i8> poison, i8 %i.de, i64 0
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 1
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 2
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 3
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 4
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 5
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 6
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 7
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 8
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 9
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 10
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 11
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 12
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 13
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 14
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 15
  %i.ek = icmp eq <16 x i8> %i.dd, splat (i8 3)
  %i.el = icmp eq <16 x i8> %i.ej, splat (i8 3)
  %i.em = or <16 x i1> %vec.phi, %i.ek            ; 2 uses
  %i.en = or <16 x i1> %vec.phi287, %i.el         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !886

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.en, %i.em
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.ep = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.eq = icmp ne i16 %i.ep, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !887

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.eq, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec320 = and i64 %i.j, 2305843009213693944   ; 3 uses
  %i.er = mul i64 %n.vec320, 24
  %i.es = getelementptr i8, ptr %i.c, i64 %i.er
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index321 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next331, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi322 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ga, %vec.epilog.vector.body ]
  %i.et = mul i64 %index321, 24                   ; 8 uses
  %next.gep323 = getelementptr i8, ptr %i.c, i64 %i.et
  %i.eu = getelementptr i8, ptr %i.c, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.c, i64 %i.et
  %i.ew = getelementptr i8, ptr %i.c, i64 %i.et
  %i.ex = getelementptr i8, ptr %i.c, i64 %i.et
  %i.ey = getelementptr i8, ptr %i.c, i64 %i.et
  %i.ez = getelementptr i8, ptr %i.c, i64 %i.et
  %i.fa = getelementptr i8, ptr %i.c, i64 %i.et
  %i.fb = getelementptr inbounds nuw i8, ptr %next.gep323, i64 16
  %i.fc = getelementptr i8, ptr %i.eu, i64 40
  %i.fd = getelementptr i8, ptr %i.ev, i64 64
  %i.fe = getelementptr i8, ptr %i.ew, i64 88
  %i.ff = getelementptr i8, ptr %i.ex, i64 112
  %i.fg = getelementptr i8, ptr %i.ey, i64 136
  %i.fh = getelementptr i8, ptr %i.ez, i64 160
end_hunk_2
