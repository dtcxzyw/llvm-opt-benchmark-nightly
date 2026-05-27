inline.NumInlined: 2301
inline.NumDeleted: 1300
begin_hunk_0_@_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev:bb.a

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute8Function7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.111") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.216, align 1            ; 3 uses
  %6 = alloca %"class.std::vector.115", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !173    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !173
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !174
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow5DatumESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.c, ptr %i.b, ptr noundef %i.j)
          to label %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.o, %bb.e ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit: ; preds = %bb.c
  store ptr %i.n, ptr %i.k, align 8, !tbaa !170
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !208
  invoke fastcc void @_ZN5arrow7compute12_GLOBAL__N_115ExecuteInternalERKNS0_8FunctionESt6vectorINS_5DatumESaIS6_EElPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %6, i64 noundef %i.q, ptr noundef %3, ptr noundef %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit
  %i.r = load ptr, ptr %6, align 8, !tbaa !173    ; 3 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !170  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.r, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.v, %i.s
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !175

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !174
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #22
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute8Function8ValidateEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 17 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !220
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !221
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 5
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !222  ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.n
  br i1 %i.q, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i8, ptr %i.r, align 8, !tbaa !223, !range !60, !noundef !61
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = add nsw i32 %i.p, 1
  %i.v = icmp eq i32 %i.u, %i.n
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %.critedge12

.critedge12:                                      ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !224
  call void @_ZN5arrow8internal12JoinToStringIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_RA70_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(4) @.str.7, ptr noundef nonnull align 1 dereferenceable(70) @.str.8), !noalias !224
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.critedge12
  %i.x = load ptr, ptr %3, align 8, !tbaa !43, !noalias !224 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %.thread34.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !224
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %.thread34.a

bb.e:                                             ; preds = %.critedge12
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !43, !noalias !224 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.e
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !46, !noalias !224
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

common.resume:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %.pn, %_ZN5arrow6StatusD2Ev.exit23 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !224
  br label %common.resume

.thread34.a:                                      ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !224
  br label %bb.ad

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.ai = tail call ptr @memchr(ptr noundef %.val, i32 noundef 10, i64 noundef %i.d) #21, !noalias !229 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  %6 = ptrtoint ptr %i.ai to i64
  %7 = ptrtoint ptr %.val to i64
  %8 = sub i64 %6, %7
  %.not.i = icmp eq i64 %8, -1
  %or.cond.i = or i1 %.not.i.i, %.not.i
  br i1 %or.cond.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(27) @.str.18)
  br label %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.aj = getelementptr i8, ptr %.val, i64 %i.d
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !46, !noalias !229
  %i.am = icmp eq i8 %i.al, 46
  br i1 %i.am, label %bb.g, label %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i
  call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(26) @.str.19)
  br label %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i
  store ptr null, ptr %4, align 8, !tbaa !47, !alias.scope !232
  br label %bb.h

_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.g
  %.pr = load ptr, ptr %4, align 8, !tbaa !47
  %i.an = icmp eq ptr %.pr, null
  br i1 %i.an, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val15 = load ptr, ptr %i.ao, align 8          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val16 = load i64, ptr %i.ap, align 8, !tbaa !76 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.aq = icmp eq i64 %.val16, 0
  br i1 %i.aq, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !235
  br label %.critedge12.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %.val15, i64 %.val16 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !46, !noalias !235
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %bb.j, label %.critedge.preheader.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(32) @.str.20)
          to label %_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.s

.critedge.preheader.i:                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !235
  store i32 78, ptr %i.a, align 4, !tbaa !3, !noalias !235
  br label %.critedge.i

bb.k:                                             ; preds = %.critedge.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 1 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ar
  br i1 %i.aw, label %.critedge12.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %.critedge.preheader.i
  %.05.i = phi i32 [ %i.ba, %bb.k ], [ 0, %.critedge.preheader.i ]
  %.sroa.01.04.i = phi ptr [ %i.av, %bb.k ], [ %.val15, %.critedge.preheader.i ] ; 2 uses
  %i.ax = load i8, ptr %.sroa.01.04.i, align 1, !tbaa !46, !noalias !235
  %i.ay = icmp eq i8 %i.ax, 10
  %i.az = add nsw i32 %.05.i, 1
  %i.ba = select i1 %i.ay, i32 0, i32 %i.az       ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 79
  br i1 %i.bb, label %bb.k, label %bb.l

bb.l:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !238
  invoke void @_ZN5arrow8internal12JoinToStringIJRA33_KcRKiRA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(33) @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.22)
          to label %.noexc17 unwind label %bb.s

.noexc17:                                         ; preds = %bb.l
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc17
  %i.bc = load ptr, ptr %2, align 8, !tbaa !43, !noalias !238 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN5arrow6Status7InvalidIJRA33_KcRKiRA12_S2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !46, !noalias !238
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #22
  br label %_ZN5arrow6Status7InvalidIJRA33_KcRKiRA12_S2_EEES0_DpOT_.exit.i

bb.n:                                             ; preds = %.noexc17
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %2, align 8, !tbaa !43, !noalias !238 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i: ; preds = %bb.n
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !46, !noalias !238
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !238
  br label %.body

_ZN5arrow6Status7InvalidIJRA33_KcRKiRA12_S2_EEES0_DpOT_.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !238
  br label %bb.o

.critedge12.i:                                    ; preds = %bb.k, %.thread.i
  store ptr null, ptr %5, align 8, !tbaa !47, !alias.scope !243
  br label %bb.o

bb.o:                                             ; preds = %.critedge12.i, %_ZN5arrow6Status7InvalidIJRA33_KcRKiRA12_S2_EEES0_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !235
  br label %_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.o, %bb.j
  %i.bn = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = load ptr, ptr %5, align 8               ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null                 ; 2 uses
  %or.cond.i18 = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond.i18, label %_ZN5arrow6StatusaNEOS0_.exit, label %.thread26

.thread26:                                        ; preds = %_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.bp, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.thread

_ZN5arrow6StatusaNEOS0_.exit:                     ; preds = %_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.bq, label %bb.t, label %bb.p, !prof !246

bb.p:                                             ; preds = %_ZN5arrow6StatusaNEOS0_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !51, !range !60, !noundef !61
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  %.pr25.pr.pre = load ptr, ptr %4, align 8, !tbaa !47
  br label %bb.t

bb.r:                                             ; preds = %bb.u, %.thread
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.l, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.s ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.z

bb.t:                                             ; preds = %bb.q, %bb.p, %_ZN5arrow6StatusaNEOS0_.exit
  %.pr25.pr = phi ptr [ %.pr25.pr.pre, %bb.q ], [ %i.bn, %bb.p ], [ %i.bn, %_ZN5arrow6StatusaNEOS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bw = icmp eq ptr %.pr25.pr, null
  br i1 %i.bw, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.thread26, %bb.t
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %.thread
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNK5arrow6Status11WithMessageIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_SC_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 1 dereferenceable(4) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %bb.u
  %.pr29 = load ptr, ptr %4, align 8, !tbaa !47   ; 2 uses
  %.not.i20.a = icmp eq ptr %.pr29, null
  br i1 %.not.i20.a, label %.thread36, label %bb.w, !prof !247

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %.pr29, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51, !range !60, !noundef !61
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.thread36, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %.thread36

.thread36:                                        ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ad

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ac
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSN5arrow6StatusE", !49, i64 0}
!49 = !{!"p1 _ZTSN5arrow6Status5StateE", !37, i64 0}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!51 = !{!52, !54, i64 1}
!52 = !{!"_ZTSN5arrow6Status5StateE", !53, i64 0, !54, i64 1, !44, i64 8, !55, i64 40}
!53 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!54 = !{!"bool", !5, i64 0}
!55 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !56, i64 0}
!56 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !58, i64 8}
!57 = !{!"p1 _ZTSN5arrow12StatusDetailE", !37, i64 0}
!58 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !59, i64 0}
!59 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"_ZN5arrow6Status8FromArgsIJRA17_KcPS2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!65 = distinct !{!65, !"_ZN5arrow6Status8FromArgsIJRA17_KcPS2_EEES0_NS_10StatusCodeEDpOT_"}
!66 = distinct !{!66, !67, !"_ZN5arrow6Status14NotImplementedIJRA17_KcPS2_EEES0_DpOT_: argument 0"}
!67 = distinct !{!67, !"_ZN5arrow6Status14NotImplementedIJRA17_KcPS2_EEES0_DpOT_"}
!68 = !{!69, !70, i64 8}
!69 = !{!"_ZTSN5arrow7compute15FunctionOptionsE", !70, i64 8}
!70 = !{!"p1 _ZTSN5arrow7compute19FunctionOptionsTypeE", !37, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNK5arrow7compute15FunctionOptions8ToStringB5cxx11Ev: argument 0"}
!74 = distinct !{!74, !"_ZNK5arrow7compute15FunctionOptions8ToStringB5cxx11Ev"}
!75 = !{ptr @_ZNK5arrow7compute15FunctionOptions8ToStringB5cxx11Ev}
!76 = !{!44, !28, i64 8}
!77 = !{!78, !54, i64 4}
!78 = !{!"_ZTSN5arrow7compute5ArityE", !4, i64 0, !54, i64 4}
!79 = !{!78, !4, i64 0}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_ZN5arrow6Status8FromArgsIJRA19_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA18_S2_RKiRA21_S2_RiRA8_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!82 = distinct !{!82, !"_ZN5arrow6Status8FromArgsIJRA19_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA18_S2_RKiRA21_S2_RiRA8_S2_EEES0_NS_10StatusCodeEDpOT_"}
!83 = distinct !{!83, !84, !"_ZN5arrow6Status7InvalidIJRA19_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA18_S2_RKiRA21_S2_RiRA8_S2_EEES0_DpOT_: argument 0"}
!84 = distinct !{!84, !"_ZN5arrow6Status7InvalidIJRA19_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA18_S2_RKiRA21_S2_RiRA8_S2_EEES0_DpOT_"}
!85 = !{!86, !88}
!86 = distinct !{!86, !87, !"_ZN5arrow6Status8FromArgsIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_RKiRA16_S2_RiRA8_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!87 = distinct !{!87, !"_ZN5arrow6Status8FromArgsIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_RKiRA16_S2_RiRA8_S2_EEES0_NS_10StatusCodeEDpOT_"}
!88 = distinct !{!88, !89, !"_ZN5arrow6Status7InvalidIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_RKiRA16_S2_RiRA8_S2_EEES0_DpOT_: argument 0"}
!89 = distinct !{!89, !"_ZN5arrow6Status7InvalidIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_RKiRA16_S2_RiRA8_S2_EEES0_DpOT_"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN5arrow6Status2OKEv: argument 0"}
!92 = distinct !{!92, !"_ZN5arrow6Status2OKEv"}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"_ZN5arrow6Status8FromArgsIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_S2_SA_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!95 = distinct !{!95, !"_ZN5arrow6Status8FromArgsIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_S2_SA_EEES0_NS_10StatusCodeEDpOT_"}
!96 = distinct !{!96, !97, !"_ZN5arrow6Status14NotImplementedIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_S2_SA_EEES0_DpOT_: argument 0"}
!97 = distinct !{!97, !"_ZN5arrow6Status14NotImplementedIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_S2_SA_EEES0_DpOT_"}
!98 = !{!99, !100, i64 40}
!99 = !{!"_ZTSN5arrow7compute8FunctionE", !44, i64 8, !100, i64 40, !78, i64 44, !101, i64 56, !107, i64 184}
!100 = !{!"_ZTSN5arrow7compute8Function4KindE", !5, i64 0}
!101 = !{!"_ZTSN5arrow7compute11FunctionDocE", !44, i64 0, !44, i64 32, !102, i64 64, !44, i64 88, !54, i64 120}
!102 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0}
!107 = !{!"p1 _ZTSN5arrow7compute15FunctionOptionsE", !37, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"p2 _ZTSN5arrow7compute12ScalarKernelE", !110, i64 0}
!110 = !{!"any p2 pointer", !37, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"p1 _ZTSN5arrow7compute12ScalarKernelE", !37, i64 0}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EE", !115, i64 0, !58, i64 8}
!115 = !{!"p1 _ZTSN5arrow7compute15KernelSignatureE", !37, i64 0}
!116 = !{!117, !121, i64 52}
!117 = !{!"_ZTSN5arrow7compute6KernelE", !118, i64 0, !119, i64 16, !54, i64 48, !121, i64 52, !122, i64 56}
!118 = !{!"_ZTSSt10shared_ptrIN5arrow7compute15KernelSignatureEE", !114, i64 0}
!119 = !{!"_ZTSSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEE", !120, i64 0, !37, i64 24}
!120 = !{!"_ZTSSt14_Function_base", !5, i64 0, !37, i64 16}
!121 = !{!"_ZTSN5arrow7compute9SimdLevel4typeE", !5, i64 0}
!122 = !{!"_ZTSSt10shared_ptrIN5arrow7compute11KernelStateEE", !123, i64 0}
!123 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EE", !124, i64 0, !58, i64 8}
!124 = !{!"p1 _ZTSN5arrow7compute11KernelStateE", !37, i64 0}
!125 = !{!126, !109, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIPKN5arrow7compute12ScalarKernelESaIS4_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!127 = !{!126, !109, i64 16}
!128 = !{!129, !129, i64 0}
!129 = !{!"p2 _ZTSN5arrow7compute12VectorKernelE", !110, i64 0}
!130 = !{!131, !131, i64 0}
!131 = !{!"p1 _ZTSN5arrow7compute12VectorKernelE", !37, i64 0}
!132 = !{!133, !129, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseIPKN5arrow7compute12VectorKernelESaIS4_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!134 = !{!133, !129, i64 16}
!135 = !{!136, !136, i64 0}
!136 = !{!"p2 _ZTSN5arrow7compute21ScalarAggregateKernelE", !110, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"p1 _ZTSN5arrow7compute21ScalarAggregateKernelE", !37, i64 0}
!139 = !{!140, !136, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!141 = !{!140, !136, i64 16}
!142 = !{!143, !143, i64 0}
!143 = !{!"p2 _ZTSN5arrow7compute19HashAggregateKernelE", !110, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"p1 _ZTSN5arrow7compute19HashAggregateKernelE", !37, i64 0}
!146 = !{!147, !143, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_Vector_impl_dataE", !143, i64 0, !143, i64 8, !143, i64 16}
!148 = !{!147, !143, i64 16}
!149 = !{!126, !109, i64 8}
!150 = !{!133, !129, i64 8}
!151 = !{!140, !136, i64 8}
!152 = !{!147, !143, i64 8}
!153 = !{!154, !155, i64 8}
!154 = !{!"_ZTSNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!155 = !{!"p1 _ZTSN5arrow10TypeHolderE", !37, i64 0}
!156 = !{!154, !155, i64 0}
!157 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!158 = !{!159, !159, i64 0}
!159 = !{!"p1 _ZTSN5arrow7compute6KernelE", !37, i64 0}
!160 = !{!161, !161, i64 0}
!161 = !{!"p1 _ZTSN5arrow7compute6detail14KernelExecutorE", !37, i64 0}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZSt11make_sharedIN5arrow7compute6detail20FunctionExecutorImplEJSt6vectorINS0_10TypeHolderESaIS5_EERPKNS1_6KernelESt10unique_ptrINS2_14KernelExecutorESt14default_deleteISD_EERKNS1_8FunctionEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!164 = distinct !{!164, !"_ZSt11make_sharedIN5arrow7compute6detail20FunctionExecutorImplEJSt6vectorINS0_10TypeHolderESaIS5_EERPKNS1_6KernelESt10unique_ptrINS2_14KernelExecutorESt14default_deleteISD_EERKNS1_8FunctionEEESt10shared_ptrIT_EDpOT0_"}
!165 = !{!166, !167, i64 0}
!166 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute6detail20FunctionExecutorImplELN9__gnu_cxx12_Lock_policyE2EE", !167, i64 0, !58, i64 8}
!167 = !{!"p1 _ZTSN5arrow7compute6detail20FunctionExecutorImplE", !37, i64 0}
!168 = !{!37, !37, i64 0}
!169 = distinct !{null, null}
!170 = !{!171, !172, i64 8}
!171 = !{!"_ZTSNSt12_Vector_baseIN5arrow5DatumESaIS1_EE17_Vector_impl_dataE", !172, i64 0, !172, i64 8, !172, i64 16}
!172 = !{!"p1 _ZTSN5arrow5DatumE", !37, i64 0}
!173 = !{!171, !172, i64 0}
!174 = !{!171, !172, i64 16}
!175 = distinct !{!175, !176}
!176 = !{!"llvm.loop.mustprogress"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZNO5arrow6ResultISt6vectorINS_10TypeHolderESaIS2_EEE11ValueUnsafeEv: argument 0"}
!179 = distinct !{!179, !"_ZNO5arrow6ResultISt6vectorINS_10TypeHolderESaIS2_EEE11ValueUnsafeEv"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN5arrow6ResultISt6vectorINS_10TypeHolderESaIS2_EEE15MoveValueUnsafeEv: argument 0"}
!182 = distinct !{!182, !"_ZN5arrow6ResultISt6vectorINS_10TypeHolderESaIS2_EEE15MoveValueUnsafeEv"}
!183 = !{!181, !178}
!184 = !{!155, !155, i64 0}
!185 = !{!154, !155, i64 16}
!186 = !{!187, !187, i64 0}
!187 = !{!"p1 _ZTSN5arrow8DataTypeE", !37, i64 0}
!188 = !{!58, !59, i64 0}
!189 = distinct !{!189, !176}
!190 = !{!191, !4, i64 8}
!191 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!192 = !{!191, !4, i64 12}
!193 = distinct !{ptr @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev, null, null, null, null, ptr @_ZN5arrow10TypeHolderD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!194 = distinct !{!194, !176}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZNO5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE11ValueUnsafeEv: argument 0"}
!197 = distinct !{!197, !"_ZNO5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE11ValueUnsafeEv"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE15MoveValueUnsafeEv: argument 0"}
!200 = distinct !{!200, !"_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE15MoveValueUnsafeEv"}
!201 = !{!202, !203, i64 0}
!202 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute16FunctionExecutorELN9__gnu_cxx12_Lock_policyE2EE", !203, i64 0, !58, i64 8}
!203 = !{!"p1 _ZTSN5arrow7compute16FunctionExecutorE", !37, i64 0}
!204 = !{!199, !196}
!205 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow7compute16FunctionExecutorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!206 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow7compute16FunctionExecutorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!207 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!208 = !{!209, !28, i64 56}
!209 = !{!"_ZTSN5arrow7compute9ExecBatchE", !210, i64 0, !213, i64 24, !216, i64 40, !28, i64 56, !28, i64 64}
!210 = !{!"_ZTSSt6vectorIN5arrow5DatumESaIS1_EE", !211, i64 0}
!211 = !{!"_ZTSSt12_Vector_baseIN5arrow5DatumESaIS1_EE", !212, i64 0}
!212 = !{!"_ZTSNSt12_Vector_baseIN5arrow5DatumESaIS1_EE12_Vector_implE", !171, i64 0}
!213 = !{!"_ZTSSt10shared_ptrIN5arrow7compute15SelectionVectorEE", !214, i64 0}
!214 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EE", !215, i64 0, !58, i64 8}
!215 = !{!"p1 _ZTSN5arrow7compute15SelectionVectorE", !37, i64 0}
!216 = !{!"_ZTSN5arrow7compute10ExpressionE", !217, i64 0}
!217 = !{!"_ZTSSt10shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEEE", !218, i64 0}
!218 = !{!"_ZTSSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EE", !219, i64 0, !58, i64 8}
!219 = !{!"p1 _ZTSSt7variantIJN5arrow5DatumENS0_7compute10Expression9ParameterENS3_4CallEEE", !37, i64 0}
!220 = !{!105, !106, i64 8}
!221 = !{!105, !106, i64 0}
!222 = !{!99, !4, i64 44}
!223 = !{!99, !54, i64 48}
!224 = !{!225, !227}
!225 = distinct !{!225, !226, !"_ZN5arrow6Status8FromArgsIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_RA70_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!226 = distinct !{!226, !"_ZN5arrow6Status8FromArgsIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_RA70_S2_EEES0_NS_10StatusCodeEDpOT_"}
!227 = distinct !{!227, !228, !"_ZN5arrow6Status7InvalidIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_RA70_S2_EEES0_DpOT_: argument 0"}
!228 = distinct !{!228, !"_ZN5arrow6Status7InvalidIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_RA70_S2_EEES0_DpOT_"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!231 = distinct !{!231, !"_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!232 = !{!233, !230}
!233 = distinct !{!233, !234, !"_ZN5arrow6Status2OKEv: argument 0"}
!234 = distinct !{!234, !"_ZN5arrow6Status2OKEv"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!237 = distinct !{!237, !"_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!238 = !{!239, !241, !236}
!239 = distinct !{!239, !240, !"_ZN5arrow6Status8FromArgsIJRA33_KcRKiRA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!240 = distinct !{!240, !"_ZN5arrow6Status8FromArgsIJRA33_KcRKiRA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!241 = distinct !{!241, !242, !"_ZN5arrow6Status7InvalidIJRA33_KcRKiRA12_S2_EEES0_DpOT_: argument 0"}
!242 = distinct !{!242, !"_ZN5arrow6Status7InvalidIJRA33_KcRKiRA12_S2_EEES0_DpOT_"}
!243 = !{!244, !236}
!244 = distinct !{!244, !245, !"_ZN5arrow6Status2OKEv: argument 0"}
!245 = distinct !{!245, !"_ZN5arrow6Status2OKEv"}
!246 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!247 = !{!"branch_weights", !"expected", i32 2146022262, i32 1461386}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN5arrow6Status2OKEv: argument 0"}
!250 = distinct !{!250, !"_ZN5arrow6Status2OKEv"}
!251 = !{!52, !53, i64 0}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN5arrow6Status8FromArgsIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_SC_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!254 = distinct !{!254, !"_ZN5arrow6Status8FromArgsIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_SC_EEES0_NS_10StatusCodeEDpOT_"}
!255 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!256 = !{!257, !258, i64 8}
!257 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EE17_Vector_impl_dataE", !258, i64 0, !258, i64 8, !258, i64 16}
!258 = !{!"p1 _ZTSN5arrow7compute9InputTypeE", !37, i64 0}
!259 = !{!257, !258, i64 0}
!260 = !{!257, !258, i64 16}
!261 = !{!262, !263, i64 0}
!262 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EE", !263, i64 0, !58, i64 8}
!263 = !{!"p1 _ZTSN5arrow7compute15MatchConstraintE", !37, i64 0}
!264 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!265 = !{!120, !37, i64 16}
!266 = distinct !{ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!267 = !{!268, !112, i64 8}
!268 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!269 = !{!268, !112, i64 16}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZN5arrow6Status2OKEv: argument 0"}
!272 = distinct !{!272, !"_ZN5arrow6Status2OKEv"}
!273 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!274 = !{!275, !276, i64 0}
!275 = !{!"_ZTSN5arrow7compute10OutputTypeE", !276, i64 0, !277, i64 8, !279, i64 24}
!276 = !{!"_ZTSN5arrow7compute10OutputType11ResolveKindE", !5, i64 0}
!277 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !278, i64 0}
!278 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !187, i64 0, !58, i64 8}
!279 = !{!"_ZTSSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEE", !120, i64 0, !37, i64 24}
!280 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!281 = !{i64 0, i64 16, !46}
!282 = distinct !{null, null}
!283 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!284 = !{!285, !54, i64 80}
!285 = !{!"_ZTSN5arrow7compute15KernelSignatureE", !286, i64 0, !275, i64 24, !54, i64 80, !289, i64 88, !28, i64 104}
!286 = !{!"_ZTSSt6vectorIN5arrow7compute9InputTypeESaIS2_EE", !287, i64 0}
!287 = !{!"_ZTSSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EE", !288, i64 0}
!288 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EE12_Vector_implE", !257, i64 0}
!289 = !{!"_ZTSSt10shared_ptrIN5arrow7compute15MatchConstraintEE", !262, i64 0}
!290 = !{!119, !37, i64 24}
!291 = !{!123, !124, i64 0}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN5arrow6Status2OKEv: argument 0"}
!294 = distinct !{!294, !"_ZN5arrow6Status2OKEv"}
!295 = !{!296, !131, i64 8}
!296 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!297 = !{!296, !131, i64 16}
!298 = !{!117, !54, i64 48}
!299 = !{!300, !37, i64 72}
!300 = !{!"_ZTSN5arrow7compute12VectorKernelE", !117, i64 0, !37, i64 72, !37, i64 80, !301, i64 88, !302, i64 120, !303, i64 124, !54, i64 128, !54, i64 129, !54, i64 130}
!301 = !{!"_ZTSSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEE", !120, i64 0, !37, i64 24}
!302 = !{!"_ZTSN5arrow7compute12NullHandling4typeE", !5, i64 0}
!303 = !{!"_ZTSN5arrow7compute13MemAllocation4typeE", !5, i64 0}
!304 = !{!300, !302, i64 120}
!305 = !{!300, !303, i64 124}
!306 = !{!300, !54, i64 128}
!307 = !{!300, !54, i64 129}
!308 = !{!300, !54, i64 130}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZN5arrow6Status2OKEv: argument 0"}
!311 = distinct !{!311, !"_ZN5arrow6Status2OKEv"}
!312 = !{!301, !37, i64 24}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN5arrow6Status2OKEv: argument 0"}
!315 = distinct !{!315, !"_ZN5arrow6Status2OKEv"}
!316 = !{!317, !138, i64 8}
!317 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute21ScalarAggregateKernelESaIS2_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!318 = !{!317, !138, i64 16}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN5arrow6Status2OKEv: argument 0"}
!321 = distinct !{!321, !"_ZN5arrow6Status2OKEv"}
!322 = !{!323, !145, i64 8}
!323 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute19HashAggregateKernelESaIS2_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!324 = !{!323, !145, i64 16}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZN5arrow6Status2OKEv: argument 0"}
!327 = distinct !{!327, !"_ZN5arrow6Status2OKEv"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN5arrow7compute12_GLOBAL__N_112CheckOptionsERKNS0_8FunctionEPKNS0_15FunctionOptionsE: argument 0"}
!330 = distinct !{!330, !"_ZN5arrow7compute12_GLOBAL__N_112CheckOptionsERKNS0_8FunctionEPKNS0_15FunctionOptionsE"}
!331 = !{!332, !334, !329}
!332 = distinct !{!332, !333, !"_ZN5arrow6Status8FromArgsIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!333 = distinct !{!333, !"_ZN5arrow6Status8FromArgsIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEES0_NS_10StatusCodeEDpOT_"}
!334 = distinct !{!334, !335, !"_ZN5arrow6Status7InvalidIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEES0_DpOT_: argument 0"}
!335 = distinct !{!335, !"_ZN5arrow6Status7InvalidIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEES0_DpOT_"}
!336 = !{!"branch_weights", !"expected", i32 2145337237, i32 2146411}
!337 = !{!99, !107, i64 184}
!338 = distinct !{!338, !176}
!339 = !{!105, !106, i64 16}
!340 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!341 = distinct !{null}
!342 = !{!343, !351, i64 8}
!343 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !344, i64 0, !351, i64 8}
!344 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !345, i64 0}
!345 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !346, i64 0}
!346 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !347, i64 0}
!347 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !348, i64 0}
!348 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !349, i64 0}
!349 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !350, i64 0}
!350 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !37, i64 0}
!351 = !{!"p1 _ZTSSo", !37, i64 0}
!352 = !{i64 8}
!353 = distinct !{null, null, null, null, ptr @_ZN5arrow10TypeHolderD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!354 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow7compute16FunctionExecutorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!355 = distinct !{null, null, ptr @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev, null, null, null, null, ptr @_ZN5arrow10TypeHolderD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!356 = !{!357, !5, i64 16}
!357 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEEE", !5, i64 0, !5, i64 16}
!358 = !{!359, !360, i64 0}
!359 = !{!"_ZTSZNSt8__detail9__variant15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEEC1ERKSG_EUlOT_T0_E_", !360, i64 0}
!360 = !{!"p1 _ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEEE", !37, i64 0}
!361 = distinct !{!361, !176}
!362 = distinct !{null, null, null, null, null, null, null, null, null}
!363 = distinct !{null, null, null, null, null, null, null, null, null}
!364 = distinct !{null, null, null, null, null, null, null, null, null}
!365 = distinct !{null, null, null, null, null, null, null, null, null}
!366 = distinct !{null, null, null, null, null, null, null, null, null}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!369 = distinct !{!369, !"_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!372 = distinct !{!372, !"_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!375 = distinct !{!375, !"_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!376 = distinct !{null, null, null, null, null, null}
!377 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!378 = distinct !{!378, !176}
!379 = !{!268, !112, i64 0}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!382 = distinct !{!382, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!383 = !{!384}
!384 = distinct !{!384, !382, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!385 = !{!381, !384}
!386 = distinct !{!386, !176}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!389 = distinct !{!389, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!390 = !{!391}
!391 = distinct !{!391, !389, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!392 = !{!388, !391}
!393 = !{!394, !37, i64 72}
!394 = !{!"_ZTSN5arrow7compute12ScalarKernelE", !117, i64 0, !37, i64 72, !54, i64 80, !302, i64 84, !303, i64 88}
!395 = !{!394, !54, i64 80}
!396 = !{!394, !302, i64 84}
!397 = !{!394, !303, i64 88}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!400 = distinct !{!400, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!401 = !{!402}
!402 = distinct !{!402, !400, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!403 = !{!399, !402}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!406 = distinct !{!406, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!407 = !{!408}
!408 = distinct !{!408, !406, !"_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!409 = !{!405, !408}
!410 = !{!296, !131, i64 0}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!413 = distinct !{!413, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!416 = !{!412, !415}
!417 = distinct !{!417, !176}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!420 = distinct !{!420, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!423 = !{!419, !422}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!426 = distinct !{!426, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!427 = !{!428}
!428 = distinct !{!428, !426, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!429 = !{!425, !428}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!432 = distinct !{!432, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!435 = !{!431, !434}
!436 = !{!317, !138, i64 0}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!439 = distinct !{!439, !"_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!440 = !{!441}
!441 = distinct !{!441, !439, !"_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!442 = !{!438, !441}
!443 = distinct !{!443, !176}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!446 = distinct !{!446, !"_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_"}
!447 = !{!448}
end_hunk_1
