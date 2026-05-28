inline.NumInlined: 4190
inline.NumDeleted: 1493
begin_hunk_0_@_ZN5arrow7compute9ExecBatchD2Ev:bb.a

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !95

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !93
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1462
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1462
  br label %_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i1 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22
  br label %_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1376  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1369 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.ai, %_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #26
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.an, %i.ak
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1377

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !1376
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ai, %_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1372
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #24
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.424, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1376   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1369 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i:       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1377

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1376
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1372
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.424, align 1            ; 3 uses
  %4 = alloca %class.anon.424, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1369 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1376   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
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
  %7 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #23
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit, %5
  %8 = phi ptr [ %7, %5 ], [ null, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %i.n ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i8, ptr %11, align 8, !tbaa !1373    ; 2 uses
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %_ZN5arrow5DatumC2EOS0_.exit, label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !18
  store ptr null, ptr %i.o, align 8, !tbaa !14
  store <2 x ptr> %i.p, ptr %9, align 8, !tbaa !18
  store ptr null, ptr %2, align 8, !tbaa !18
  br label %_ZN5arrow5DatumC2EOS0_.exit

_ZN5arrow5DatumC2EOS0_.exit:                      ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit, %.sink.split.i.i.i.i.i.i.i.i
  store i8 %12, ptr %10, align 8, !tbaa !1373
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow5DatumC2EOS0_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %8, %_ZN5arrow5DatumC2EOS0_.exit ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN5arrow5DatumC2EOS0_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1373, !alias.scope !1466, !noalias !1463 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.v = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !18, !alias.scope !1466, !noalias !1463
  store ptr null, ptr %i.u, align 8, !tbaa !14, !alias.scope !1466, !noalias !1463
  store <2 x ptr> %i.v, ptr %.013.i.i.i, align 8, !tbaa !18, !alias.scope !1463, !noalias !1466
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !18, !alias.scope !1466, !noalias !1463
  br label %_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i

_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i:              ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.s, ptr %i.q, align 8, !tbaa !1373, !alias.scope !1463, !noalias !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !1468
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.c, !noalias !1463

bb.c:                                             ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #26, !noalias !1463
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !1468
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1448

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN5arrow5DatumC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %8, %_ZN5arrow5DatumC2EOS0_.exit ], [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i16, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22
  %.013.i.i.i18 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i19 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !1373, !alias.scope !1472, !noalias !1469 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i21, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i20

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i20:            ; preds = %.lr.ph.i.i.i17
  %i.af = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 8
  %i.ag = load <2 x ptr>, ptr %.0912.i.i.i19, align 8, !tbaa !18, !alias.scope !1472, !noalias !1469
  store ptr null, ptr %i.af, align 8, !tbaa !14, !alias.scope !1472, !noalias !1469
  store <2 x ptr> %i.ag, ptr %.013.i.i.i18, align 8, !tbaa !18, !alias.scope !1469, !noalias !1472
  store ptr null, ptr %.0912.i.i.i19, align 8, !tbaa !18, !alias.scope !1472, !noalias !1469
  br label %_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i21

_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i21:            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i20, %.lr.ph.i.i.i17
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !1373, !alias.scope !1469, !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1474
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i19)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 unwind label %bb.d, !noalias !1469

bb.d:                                             ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i21
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26, !noalias !1469
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1474
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !1448

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1372
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #24
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, %bb.e
  store ptr %8, ptr %0, align 8, !tbaa !1376
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !1369
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !1372
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1373
  switch i8 %i.b, label %bb.ak [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit
    i8 1, label %bb.b
    i8 2, label %bb.i
    i8 3, label %bb.p
    i8 4, label %bb.w
    i8 5, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !93
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !1475
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !1475
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !95

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 8 uses
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.v, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !93
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #22, !inline_history !1476
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #22, !inline_history !1476
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i15 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i16

bb.n:                                             ; preds = %bb.l
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i16: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i17 = phi i32 [ %i.y, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i17, 1
  br i1 %i.aj, label %bb.o, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !95

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i16
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #22
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.p:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 8 uses
  %.not.i.i.i.i.i.i.i18 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i18, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.am, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !93
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22, !inline_history !1477
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22, !inline_history !1477
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20

bb.u:                                             ; preds = %bb.s
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i21 = phi i32 [ %i.ap, %bb.t ], [ %i.az, %bb.u ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i21, 1
  br i1 %i.ba, label %bb.v, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !95

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.w:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14 ; 8 uses
  %.not.i.i.i.i.i.i.i22 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i22, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bd, align 8, !tbaa !91
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !93
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #22, !inline_history !1478
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #22, !inline_history !1478
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.z:                                             ; preds = %bb.x
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i23 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i.i23, label %bb.ab, label %bb.aa

end_hunk_0
