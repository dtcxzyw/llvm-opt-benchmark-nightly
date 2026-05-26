inline.NumInlined: 2301
inline.NumDeleted: 1300
begin_hunk_0_@_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev:bb.a
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
  br i1 %i.z, label %.thread34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !224
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %.thread34

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

.thread34:                                        ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !224
  br label %bb.ad

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.ai = tail call ptr @memchr(ptr noundef %.val, i32 noundef 10, i64 noundef %i.d) #21, !noalias !229 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.val to i64
  %i.al = sub i64 %i.aj, %i.ak
  %.not.i = icmp eq i64 %i.al, -1
  %or.cond.i = or i1 %.not.i.i, %.not.i
  br i1 %or.cond.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(27) @.str.18)
  br label %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.am = getelementptr i8, ptr %.val, i64 %i.d
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !46, !noalias !229
  %i.ap = icmp eq i8 %i.ao, 46
  br i1 %i.ap, label %bb.g, label %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i
  call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(26) @.str.19)
  br label %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i
  store ptr null, ptr %4, align 8, !tbaa !47, !alias.scope !232
  br label %bb.h

_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.g
  %.pr = load ptr, ptr %4, align 8, !tbaa !47
  %i.aq = icmp eq ptr %.pr, null
  br i1 %i.aq, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val15 = load ptr, ptr %i.ar, align 8          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val16 = load i64, ptr %i.as, align 8, !tbaa !76 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.at = icmp eq i64 %.val16, 0
  br i1 %i.at, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !235
  br label %.critedge12.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %.val15, i64 %.val16 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !46, !noalias !235
  %i.ax = icmp eq i8 %i.aw, 10
  br i1 %i.ax, label %bb.j, label %.critedge.preheader.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(32) @.str.20)
          to label %_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.s

.critedge.preheader.i:                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !235
  store i32 78, ptr %i.a, align 4, !tbaa !3, !noalias !235
  br label %.critedge.i

bb.k:                                             ; preds = %.critedge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 1 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.au
  br i1 %i.az, label %.critedge12.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %.critedge.preheader.i
  %.05.i = phi i32 [ %i.bd, %bb.k ], [ 0, %.critedge.preheader.i ]
  %.sroa.01.04.i = phi ptr [ %i.ay, %bb.k ], [ %.val15, %.critedge.preheader.i ] ; 2 uses
  %i.ba = load i8, ptr %.sroa.01.04.i, align 1, !tbaa !46, !noalias !235
  %i.bb = icmp eq i8 %i.ba, 10
  %i.bc = add nsw i32 %.05.i, 1
  %i.bd = select i1 %i.bb, i32 0, i32 %i.bc       ; 2 uses
  %i.be = icmp slt i32 %i.bd, 79
  br i1 %i.be, label %bb.k, label %bb.l

bb.l:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !238
  invoke void @_ZN5arrow8internal12JoinToStringIJRA33_KcRKiRA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(33) @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.22)
          to label %.noexc17 unwind label %bb.s

.noexc17:                                         ; preds = %bb.l
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc17
  %i.bf = load ptr, ptr %2, align 8, !tbaa !43, !noalias !238 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN5arrow6Status7InvalidIJRA33_KcRKiRA12_S2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !46, !noalias !238
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #22
  br label %_ZN5arrow6Status7InvalidIJRA33_KcRKiRA12_S2_EEES0_DpOT_.exit.i

bb.n:                                             ; preds = %.noexc17
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %2, align 8, !tbaa !43, !noalias !238 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i: ; preds = %bb.n
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !46, !noalias !238
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #22
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
  %i.bq = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  %i.br = icmp ne ptr %i.bq, null
  %i.bs = load ptr, ptr %5, align 8               ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %or.cond.i18 = select i1 %i.br, i1 true, i1 %i.bt
  br i1 %or.cond.i18, label %_ZN5arrow6StatusaNEOS0_.exit, label %.thread26

.thread26:                                        ; preds = %_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.bs, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.thread

_ZN5arrow6StatusaNEOS0_.exit:                     ; preds = %_ZN5arrow7compute12_GLOBAL__N_127ValidateFunctionDescriptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.bt, label %bb.t, label %bb.p, !prof !246

bb.p:                                             ; preds = %_ZN5arrow6StatusaNEOS0_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !51, !range !60, !noundef !61
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  %.pr25.pr.pre = load ptr, ptr %4, align 8, !tbaa !47
  br label %bb.t

bb.r:                                             ; preds = %bb.u, %.thread
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.l, %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.z

bb.t:                                             ; preds = %bb.q, %bb.p, %_ZN5arrow6StatusaNEOS0_.exit
  %.pr25.pr = phi ptr [ %.pr25.pr.pre, %bb.q ], [ %i.bq, %bb.p ], [ %i.bq, %_ZN5arrow6StatusaNEOS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bz = icmp eq ptr %.pr25.pr, null
  br i1 %i.bz, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZN5arrow7compute12_GLOBAL__N_123ValidateFunctionSummaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.thread26, %bb.t
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNK5arrow6Status11WithMessageIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_SC_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 1 dereferenceable(4) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %bb.u
  %.pr29 = load ptr, ptr %4, align 8, !tbaa !47   ; 2 uses
  %.not.i20 = icmp eq ptr %.pr29, null
  br i1 %.not.i20, label %.thread36, label %bb.w, !prof !247

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %.pr29, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !51, !range !60, !noundef !61
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.thread36, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %.thread36

.thread36:                                        ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
end_hunk_0
