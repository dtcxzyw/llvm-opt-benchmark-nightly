Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/builder_run_end?download=true
inline.NumInlined: 872
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilder12WillCloseRunERKSt10shared_ptrIKNS_6ScalarEEl:bb.a

_ZN5arrow6StatusD2Ev.exit11.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67, !noalias !393
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !393
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !82, !noalias !393
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.o, ptr %i.p, align 8, !tbaa !82, !noalias !393
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.h, ptr %i.q, align 8, !tbaa !84, !noalias !393
  store i64 %i.h, ptr %i.d, align 8, !tbaa !151, !noalias !393
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !396
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit:  ; preds = %bb.b, %bb.d, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit11.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilder25WillCloseRunOfEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !390, !nonnull !108, !align !392 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.c = icmp sgt i64 %2, 2147483647
  br i1 %i.c, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA70_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(70) @.str.1)
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !151, !noalias !399
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  br i1 %i.g, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.2)
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !399
  call void @_ZN5arrow20RunEndEncodedBuilder12AppendRunEndEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 noundef %i.h), !noalias !399
  %i.i = load ptr, ptr %3, align 8, !tbaa !86, !noalias !399 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !86, !alias.scope !399
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !399
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit11.i, label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow6StatusD2Ev.exit11.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67, !noalias !399
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !399
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !82, !noalias !399
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.o, ptr %i.p, align 8, !tbaa !82, !noalias !399
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.h, ptr %i.q, align 8, !tbaa !84, !noalias !399
  store i64 %i.h, ptr %i.d, align 8, !tbaa !151, !noalias !399
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !402
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit:  ; preds = %bb.b, %bb.d, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit11.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !405
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !405
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !63
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !406
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !406
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !210  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !65
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #19
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !57
  store <2 x ptr> %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !57
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !407

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i
  %3 = load ptr, ptr %0, align 8, !tbaa !67       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.y
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i ], [ %3, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ab, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !63
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18, !inline_history !408
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18, !inline_history !408
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.l, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i, !prof !66

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.aq, %i.y
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !70

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.ar = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exitthread-pre-split ], [ %3, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #19
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit, %bb.m
  store ptr %i.m, ptr %0, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.aw, ptr %i.x, align 8, !tbaa !68
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !72
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !68 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.ba, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt10shared_ptrIN5arrow12ArrayBuilderEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp sgt i64 %i.d, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i17:                               ; preds = %bb.o, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ce, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i ], [ %i.d, %bb.o ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cd, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.o ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cc, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %bb.o ] ; 3 uses
  %i.bc = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !58
  store ptr %i.bc, ptr %.0811.i.i.i.i.i, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !56 ; 4 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !56
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bm = phi ptr [ %i.bg, %bb.p ], [ %i.bg, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bn, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !63
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #18, !inline_history !409
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #18, !inline_history !409
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !66

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i17
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ce = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cf = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !410

_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !68
  br label %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit, %bb.o
  %i.cg = phi ptr [ %i.ay, %bb.o ], [ %.pre, %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.o ], [ %i.cd, %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 3 uses
  %.not.i19 = icmp eq ptr %i.cg, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i
end_hunk_0
