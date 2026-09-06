Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/function?download=true
inline.NumInlined: 2301
inline.NumDeleted: 1300
begin_hunk_0_@_ZNK5arrow7compute8Function15GetBestExecutorESt6vectorINS_10TypeHolderESaIS3_EE:bb.a
  store ptr null, ptr %10, align 16, !tbaa !321, !alias.scope !319
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow7compute6detail20FunctionExecutorImplESaIvEJSt6vectorINS4_10TypeHolderESaISA_EERPKNS5_6KernelESt10unique_ptrINS6_14KernelExecutorESt14default_deleteISI_EERKNS5_8FunctionEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(192) %1)
          to label %_ZNSt12__shared_ptrIN5arrow7compute6detail20FunctionExecutorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.i

_ZNSt12__shared_ptrIN5arrow7compute6detail20FunctionExecutorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !319
  store ptr null, ptr %0, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load <2 x ptr>, ptr %10, align 16, !tbaa !122
  store <2 x ptr> %i.v, ptr %i.u, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.x = load ptr, ptr %9, align 8, !tbaa !51     ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.x, null
  br i1 %.not.i.i24, label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit, label %bb.j, !prof !52

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !61, !range !62, !noundef !63
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  br label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit

_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.pre = load ptr, ptr %4, align 8, !tbaa !120
  br label %bb.p

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute6detail20FunctionExecutorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f
  %i.ab = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i25, label %bb.o, label %bb.m, !prof !52

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !61, !range !62, !noundef !63
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.pre38 = load ptr, ptr %4, align 8, !tbaa !120 ; 3 uses
  %.not.i27 = icmp eq ptr %.pre38, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit29, label %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i28

_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i28: ; preds = %bb.o
  %i.af = load ptr, ptr %.pre38, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pre38) #21, !inline_history !0
  br label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit29

_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit29: ; preds = %.thread, %bb.o, %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.p:                                             ; preds = %bb.g, %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit
  %i.ai = phi ptr [ %.pre, %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit ], [ %i.k, %bb.g ] ; 3 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.w, %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit ], [ %i.q, %bb.g ]
  %.not.i30 = icmp eq ptr %i.ai, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit32, label %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i31

_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i31: ; preds = %bb.p
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #21, !inline_history !0
  br label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit32

_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit32: ; preds = %bb.p, %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN5arrow7compute6detail14KernelExecutor10MakeScalarEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.100") align 8) local_unnamed_addr #3

declare void @_ZN5arrow7compute6detail14KernelExecutor10MakeVectorEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.100") align 8) local_unnamed_addr #3

declare void @_ZN5arrow7compute6detail14KernelExecutor19MakeScalarAggregateEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.100") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !51
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !64

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !48
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !48
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.m = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !48
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute8Function7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.111") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.216, align 1            ; 3 uses
  %6 = alloca %"class.std::vector.115", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !126    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %7 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %7, 384307168202282325
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i, !prof !64

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  %.pre = load ptr, ptr %2, align 8, !tbaa !127
  %.pre7 = load ptr, ptr %i.a, align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre7, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i ]
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %6, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !128
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow5DatumESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.j, ptr %i.i, ptr noundef %i.k)
          to label %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !125
  invoke fastcc void @_ZN5arrow7compute12_GLOBAL__N_115ExecuteInternalERKNS0_8FunctionESt6vectorINS_5DatumESaIS6_EElPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %6, i64 noundef -1, ptr noundef %3, ptr noundef %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit
  %i.q = load ptr, ptr %6, align 8, !tbaa !126    ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !125  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #23
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.u, %i.r
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !128
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #22
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute12_GLOBAL__N_115ExecuteInternalERKNS0_8FunctionESt6vectorINS_5DatumESaIS6_EElPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Result.164", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.35", align 8    ; 9 uses
  %8 = alloca %"class.arrow::Result.96", align 8  ; 13 uses
  %9 = alloca %"class.std::vector.35", align 8    ; 11 uses
  %10 = alloca %"class.std::shared_ptr.168", align 8 ; 6 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN5arrow7compute8internal24GetFunctionArgumentTypesERKSt6vectorINS_5DatumESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.164") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.a = load ptr, ptr %6, align 8, !tbaa !51
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !52

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115, !noalias !335 ; 4 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !115, !alias.scope !335
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = load <2 x ptr>, ptr %i.f, align 8, !tbaa !130, !noalias !335
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !114, !noalias !335 ; 3 uses
  store <2 x ptr> %i.h, ptr %i.e, align 8, !tbaa !130, !alias.scope !335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %.noexc24.thread, label %bb.d

.noexc24.thread:                                  ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !131
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %13 = sdiv exact i64 %i.l, 24
  %i.p = icmp ugt i64 %13, 384307168202282325
  br i1 %i.p, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow10TypeHolderEE8allocateEmPKv.exit.i.i.i.i, !prof !64

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN5arrow10TypeHolderEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.q ; 4 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt15__new_allocatorIN5arrow10TypeHolderEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.q, ptr %9, align 8, !tbaa !115
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !131
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.u = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !133
  store <2 x ptr> %i.u, ptr %.08.i.i.i.i.i, align 8, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !134  ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !20
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !20
  br label %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.i
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !326

.loopexit:                                        ; preds = %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc24.thread
  %i.ag = phi ptr [ %i.o, %.noexc24.thread ], [ %i.t, %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ah = phi ptr [ %i.m, %.noexc24.thread ], [ %i.r, %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc24.thread ], [ %i.ae, %_ZSt10_ConstructIN5arrow10TypeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !114
  %i.ai = load ptr, ptr %1, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %8, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull %9)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %.loopexit
  %i.al = load ptr, ptr %9, align 8, !tbaa !115   ; 3 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !114 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i ], [ %i.al, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ap, align 8, !tbaa !136
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !137
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #21, !inline_history !2
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #21, !inline_history !2
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.as, %bb.l ], [ %i.bc, %bb.m ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.n, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i, !prof !64

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #21
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, %i.am
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.bf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.al, %bb.h ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !131
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #22
  br label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  %i.bk = load ptr, ptr %8, align 8, !tbaa !51
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.s, label %bb.p, !prof !52

bb.p:                                             ; preds = %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.ag

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow10TypeHolderEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.r:                                             ; preds = %.loopexit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #21
  br label %bb.aw

bb.s:                                             ; preds = %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !340, !noalias !341 ; 5 uses
  store ptr %i.bp, ptr %10, align 8, !tbaa !340, !alias.scope !341
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !134, !noalias !341 ; 9 uses
  store ptr null, ptr %i.br, align 8, !tbaa !134, !noalias !341
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !134, !alias.scope !341
  store ptr null, ptr %i.bo, align 8, !tbaa !340, !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %4, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.w

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.s
  %i.bw = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  store ptr %i.bw, ptr %11, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN5arrow6StatusD2Ev.exit30, label %bb.t, !prof !52

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  %i.by = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %.not.i25 = icmp eq ptr %i.by, null
  br i1 %.not.i25, label %_ZN5arrow6StatusD2Ev.exit26, label %bb.u, !prof !52

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute12_GLOBAL__N_115ExecuteInternalERKNS0_8FunctionESt6vectorINS_5DatumESaIS6_EElPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dd, %bb.al ], [ %i.dn, %bb.am ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.do, label %bb.an, label %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.i, !prof !64

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aj, %bb.ah
  %.pr.i32 = load ptr, ptr %8, align 8, !tbaa !51 ; 2 uses
  %.not.i.i33 = icmp eq ptr %.pr.i32, null
  br i1 %.not.i.i33, label %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.i, %bb.ag
  %i.dp = phi ptr [ %.pr.i32, %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.i ], [ %i.cw, %bb.ag ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !61, !range !62, !noundef !63
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEE7DestroyEv.exit.thread.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dt = load ptr, ptr %7, align 8, !tbaa !115   ; 3 uses
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !114 ; 2 uses
  %.not4.i.i.i34 = icmp eq ptr %i.dt, %i.du
  br i1 %.not4.i.i.i34, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i45, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev.exit, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i41
  %.05.i.i.i36 = phi ptr [ %i.em, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i41 ], [ %i.dt, %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev.exit ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i36, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i.i.i.i.i37 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i.i37, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i41, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i35
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dx, align 8, !tbaa !136
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !137
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #21, !inline_history !2
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #21, !inline_history !2
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i41

bb.ar:                                            ; preds = %bb.ap
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i38 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i38, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i39

bb.at:                                            ; preds = %bb.ar
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i39: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i.i40 = phi i32 [ %i.ea, %bb.as ], [ %i.ek, %bb.at ]
  %i.el = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i40, 1
  br i1 %i.el, label %bb.au, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i41, !prof !64

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #21
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i41

_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i41: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i39, %bb.aq, %.lr.ph.i.i.i35
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i36, i64 24 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.em, %i.du
  br i1 %.not.i.i.i42, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i43, label %.lr.ph.i.i.i35, !llvm.loop !3

_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i43: ; preds = %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i41
  %.pr.i44 = load ptr, ptr %7, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i45

_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i45: ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i43, %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev.exit
  %i.en = phi ptr [ %.pr.i44, %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i43 ], [ %i.dt, %_ZN5arrow6ResultISt10shared_ptrINS_7compute16FunctionExecutorEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i46 = icmp eq ptr %i.en, null
  br i1 %.not.i.i1.i46, label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit47, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i45
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #22
  br label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit47

_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit47: ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i45, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ax

bb.aw:                                            ; preds = %bb.af, %bb.r, %bb.q
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19, %bb.af ], [ %i.bn, %bb.r ], [ %i.bm, %bb.q ]
  call void @_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN5arrow6ResultISt6vectorINS_10TypeHolderESaIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn19.pn.pn

bb.ax:                                            ; preds = %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit47, %bb.b
  call void @_ZN5arrow6ResultISt6vectorINS_10TypeHolderESaIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.216, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !126    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #23
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i:       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #22
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute8Function7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.111") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.216, align 1            ; 3 uses
  %6 = alloca %"class.std::vector.115", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !126    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %7 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %7, 384307168202282325
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i, !prof !64

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  %.pre = load ptr, ptr %2, align 8, !tbaa !127
  %.pre8 = load ptr, ptr %i.a, align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre8, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i ]
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %6, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !128
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow5DatumESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.j, ptr %i.i, ptr noundef %i.k)
          to label %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !150
  invoke fastcc void @_ZN5arrow7compute12_GLOBAL__N_115ExecuteInternalERKNS0_8FunctionESt6vectorINS_5DatumESaIS6_EElPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %6, i64 noundef %i.r, ptr noundef %3, ptr noundef %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit
  %i.s = load ptr, ptr %6, align 8, !tbaa !126    ; 3 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !125  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.s, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #23
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.w, %i.t
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !128
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit
  %i.ac = landingpad { ptr, i32 }
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68   ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !152
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 5
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !360  ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.n
  br i1 %i.q, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i8, ptr %i.r, align 8, !tbaa !153, !range !62, !noundef !63
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = add nsw i32 %i.p, 1
  %i.v = icmp eq i32 %i.u, %i.n
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %.critedge12

.critedge12:                                      ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !361
  call void @_ZN5arrow8internal12JoinToStringIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_S2_RA70_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(4) @.str.7, ptr noundef nonnull align 1 dereferenceable(70) @.str.8), !noalias !361
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.critedge12
  %i.x = load ptr, ptr %3, align 8, !tbaa !47, !noalias !361 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %.thread34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !48, !noalias !361
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %.thread34

bb.e:                                             ; preds = %.critedge12
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !47, !noalias !361 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.e
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !48, !noalias !361
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

common.resume:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %.pn, %_ZN5arrow6StatusD2Ev.exit23 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !361
  br label %common.resume

.thread34:                                        ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !361
  br label %bb.ad

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.ai = tail call ptr @memchr(ptr noundef %.val, i32 noundef 10, i64 noundef %i.d) #21, !noalias !362 ; 2 uses
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
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute6detail20FunctionExecutorImplD2Ev:bb.a
_ZNKSt14default_deleteIN5arrow7compute11KernelStateEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #21, !inline_history !526
  br label %_ZNSt10unique_ptrIN5arrow7compute11KernelStateESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute11KernelStateESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow7compute11KernelStateEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i: ; preds = %_ZNSt10unique_ptrIN5arrow7compute11KernelStateESt14default_deleteIS2_EED2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #21, !inline_history !0
  br label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow7compute11KernelStateESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow7compute6detail14KernelExecutorEEclEPS3_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !115  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i ], [ %i.l, %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.q, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !137
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21, !inline_history !2
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21, !inline_history !2
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.e ], [ %i.ad, %bb.f ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.g, label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i, !prof !64

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21
  br label %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow10TypeHolderEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.k, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.l, %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !131
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #22
  br label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10TypeHolderES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail20FunctionExecutorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow7compute6detail20FunctionExecutorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute6detail20FunctionExecutorImpl4InitEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN5arrow7compute20default_exec_contextEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.b ], [ %3, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.0, ptr %i.e, align 8, !tbaa !527
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !253
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !118
  tail call void @_ZN5arrow7compute6detail20FunctionExecutorImpl10KernelInitEPKNS0_15FunctionOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute6detail20FunctionExecutorImpl7ExecuteERKSt6vectorINS_5DatumESaIS4_EEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.111") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.216, align 1            ; 3 uses
  %5 = alloca %class.anon.216, align 1            ; 3 uses
  %6 = alloca %class.anon.216, align 1            ; 3 uses
  %7 = alloca %class.anon.203, align 8            ; 5 uses
  %8 = alloca %class.anon.216, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %class.anon.216, align 1           ; 3 uses
  %12 = alloca %class.anon.216, align 1           ; 3 uses
  %13 = alloca %class.anon.216, align 1           ; 3 uses
  %14 = alloca %class.anon.310, align 8           ; 4 uses
  %15 = alloca %class.anon.216, align 1           ; 3 uses
  %16 = alloca %class.anon.216, align 1           ; 3 uses
  %17 = alloca %class.anon.310, align 8           ; 4 uses
  %18 = alloca %class.anon.203, align 8           ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.arrow::util::tracing::Span", align 8 ; 6 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %24 = alloca %"class.std::vector.115", align 8  ; 10 uses
  %25 = alloca %"struct.arrow::Datum", align 8    ; 12 uses
  %26 = alloca %"class.arrow::Result.111", align 8 ; 11 uses
  %27 = alloca %"class.arrow::compute::CastOptions", align 8 ; 9 uses
  %28 = alloca %"struct.arrow::TypeHolder", align 16 ; 5 uses
  %29 = alloca %"struct.arrow::Datum", align 16   ; 6 uses
  %30 = alloca %"class.arrow::compute::detail::DatumAccumulator", align 8 ; 11 uses
  %31 = alloca %"struct.arrow::compute::ExecBatch", align 8 ; 13 uses
  %32 = alloca %"class.std::vector.115", align 8  ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %35 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %37 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %38 = alloca %"class.std::vector.115", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @_ZN5arrow4util7tracing4SpanC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254, !nonnull !63, !align !212 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125  ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !126    ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = sdiv exact i64 %i.v, 24                  ; 3 uses
  %.not = icmp eq i64 %i.p, %i.w
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.p, ptr %i.a, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.w, ptr %i.b, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21, !noalias !551
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA12_S2_mRA20_S2_mEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 1 dereferenceable(15) @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(12) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(20) @.str.34, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %21, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %19, align 8, !tbaa !47, !noalias !551 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !48, !noalias !551
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %19, align 8, !tbaa !47, !noalias !551 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !48, !noalias !551
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !551
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !551
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21) #21
  %i.ai = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !52

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !61, !range !62, !noundef !63
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.df

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.dg

bb.h:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !256, !range !62, !noundef !63
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.aq = invoke noundef ptr @_ZN5arrow7compute20default_exec_contextEv()
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef null, ptr noundef %i.aq)
          to label %_ZN5arrow6StatusD2Ev.exit103 unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit103:                     ; preds = %bb.j
  %i.au = load ptr, ptr %23, align 8, !tbaa !51   ; 2 uses
  store ptr %i.au, ptr %22, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5arrow6StatusD2Ev.exit109, label %bb.k, !prof !52

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit103
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22) #21
  %i.aw = load ptr, ptr %22, align 8, !tbaa !51   ; 2 uses
  %.not.i104 = icmp eq ptr %i.aw, null
  br i1 %.not.i104, label %_ZN5arrow6StatusD2Ev.exit105, label %bb.l, !prof !52

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !61, !range !62, !noundef !63
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN5arrow6StatusD2Ev.exit105, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #21
  br label %_ZN5arrow6StatusD2Ev.exit105

_ZN5arrow6StatusD2Ev.exit105:                     ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.df

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.dg

_ZN5arrow6StatusD2Ev.exit109:                     ; preds = %_ZN5arrow6StatusD2Ev.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !125 ; 2 uses
  %.pre179 = load ptr, ptr %2, align 8, !tbaa !126 ; 2 uses
  %.pre186 = ptrtoint ptr %.pre to i64
  %.pre187 = ptrtoint ptr %.pre179 to i64
  %.pre189 = sub i64 %.pre186, %.pre187           ; 2 uses
  %.pre191 = sdiv exact i64 %.pre189, 24
  br label %bb.o

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit109, %bb.h
  %.pre-phi192 = phi i64 [ %.pre191, %_ZN5arrow6StatusD2Ev.exit109 ], [ %i.w, %bb.h ]
  %.pre-phi190 = phi i64 [ %.pre189, %_ZN5arrow6StatusD2Ev.exit109 ], [ %i.v, %bb.h ] ; 3 uses
  %i.bb = phi ptr [ %.pre179, %_ZN5arrow6StatusD2Ev.exit109 ], [ %i.s, %bb.h ]
  %i.bc = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit109 ], [ %i.r, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.bf = icmp ugt i64 %.pre-phi192, 384307168202282325
  br i1 %i.bf, label %bb.p, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #24
          to label %.noexc110 unwind label %bb.r

.noexc110:                                        ; preds = %bb.p
  unreachable

_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.o
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i.i.i, label %.critedge95, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi190) #25
          to label %bb.q unwind label %bb.r       ; 4 uses

bb.q:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.bg, ptr %24, align 8, !tbaa !126
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.pre-phi190 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bg, i8 0, i64 %.pre-phi190, i1 false)
  %.pre180 = load ptr, ptr %i.q, align 8, !tbaa !125
  %.pre181 = load ptr, ptr %2, align 8, !tbaa !126 ; 2 uses
  %i.bi = icmp eq ptr %.pre180, %.pre181
  %i.bj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !128
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !125
  br i1 %i.bi, label %.critedge95, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.s:                                             ; preds = %.lr.ph, %_ZN5arrow5DatumD2Ev.exit121
  %i.bv = phi ptr [ %.pre181, %.lr.ph ], [ %i.ft, %_ZN5arrow5DatumD2Ev.exit121 ]
  %.0178 = phi i64 [ 0, %.lr.ph ], [ %i.fr, %_ZN5arrow5DatumD2Ev.exit121 ] ; 6 uses
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %.0178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.0178 ; 2 uses
  store i8 -1, ptr %i.bl, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr %25, ptr %18, align 8, !tbaa !217
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %25) #21
  br label %.body112

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !214
  store i8 %i.cb, ptr %i.bl, align 8, !tbaa !214
  %i.cc = load ptr, ptr %2, align 8, !tbaa !126
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.0178
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %i.bx, align 8, !tbaa !553 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !554
  %i.ci = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.ch, ptr noundef nonnull align 8 dereferenceable(72) %i.cf, i1 noundef zeroext false)
          to label %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit unwind label %bb.au

_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit: ; preds = %bb.w
  br i1 %i.ci, label %.critedge93, label %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread

_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread: ; preds = %bb.v, %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.cj = load ptr, ptr %2, align 8, !tbaa !126
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.0178
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.cl = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !133
  store <2 x ptr> %i.cl, ptr %28, align 16, !tbaa !133
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !134 ; 3 uses
  store ptr %i.cn, ptr %i.bn, align 16, !tbaa !134
  %.not.i.i.i.i115 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i115, label %_ZN5arrow10TypeHolderC2ERKS0_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !20
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !20
  br label %_ZN5arrow10TypeHolderC2ERKS0_.exit

bb.z:                                             ; preds = %bb.x
  %i.cs = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow10TypeHolderC2ERKS0_.exit

_ZN5arrow10TypeHolderC2ERKS0_.exit:               ; preds = %_ZNK5arrow10TypeHoldereqERKSt10shared_ptrINS_8DataTypeEE.exit.thread, %bb.y, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %27, i1 noundef zeroext true)
          to label %.noexc116 unwind label %bb.av

.noexc116:                                        ; preds = %_ZN5arrow10TypeHolderC2ERKS0_.exit
  %i.ct = load ptr, ptr %i.bn, align 16, !tbaa !134, !noalias !555
  %i.cu = load <2 x ptr>, ptr %28, align 16, !tbaa !133, !noalias !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false), !noalias !555
  store <2 x ptr> %i.cu, ptr %i.bo, align 8, !tbaa !133, !alias.scope !555
  %i.cv = load ptr, ptr %i.bp, align 8, !tbaa !134, !alias.scope !555 ; 8 uses
  store ptr %i.ct, ptr %i.bp, align 8, !tbaa !134, !alias.scope !555
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, label %bb.aa

bb.aa:                                            ; preds = %.noexc116
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cw, align 8, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !137
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !41
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #21, !inline_history !534
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #21, !inline_history !534
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48, !noalias !555
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cz, %bb.ad ], [ %i.dj, %bb.ae ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dk, label %bb.af, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, !prof !64

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #21
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ab, %.noexc116
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.111") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(46) %27, ptr noundef %i.be)
          to label %bb.ag unwind label %bb.aw

bb.ag:                                            ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %27, align 8, !tbaa !41
  %i.dl = load ptr, ptr %i.bp, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i117, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dm, align 8, !tbaa !136
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !137
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !41
end_hunk_2
