Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmObject?download=true
inline.NumInlined: 203
inline.NumDeleted: 116
begin_hunk_0_@_ZN4llvm7objcopy4wasm6Object14removeSectionsENS_12function_refIFbRKNS1_7SectionEEEE:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm8erase_ifISt6vectorINS_7objcopy4wasm7SectionESaIS4_EENS_12function_refIFbRKS4_EEEEEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = ashr i64 %i.g, 2                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %bb.e
  %.049.i.i.i.i.i = phi i64 [ %i.r, %bb.e ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.038.048.i.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.a, %bb.a ] ; 6 uses
  %i.j = tail call noundef zeroext i1 %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.038.048.i.i.i.i.i) #12, !inline_history !53
  br i1 %i.j, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 40 ; 2 uses
  %i.l = tail call noundef zeroext i1 %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %i.k) #12, !inline_history !53
  br i1 %i.l, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 80 ; 2 uses
  %i.n = tail call noundef zeroext i1 %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %i.m) #12, !inline_history !53
  br i1 %i.n, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 120 ; 2 uses
  %i.p = tail call noundef zeroext i1 %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %i.o) #12, !inline_history !53
  br i1 %i.p, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 160 ; 3 uses
  %i.r = add nsw i64 %.049.i.i.i.i.i, -1
  %i.s = icmp sgt i64 %.049.i.i.i.i.i, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !54

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %.pre.i.i.i.i.i = ptrtoint ptr %i.q to i64
  %.pre50.i.i.i.i.i = sub i64 %i.d, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.f, %bb.a ]
  %.sroa.038.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.t = sdiv exact i64 %.pre-phi51.i.i.i.i.i, 40
  switch i64 %i.t, label %_ZN4llvm9remove_ifIRSt6vectorINS_7objcopy4wasm7SectionESaIS4_EENS_12function_refIFbRKS4_EEEEEDaOT_T0_.exit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.u = tail call noundef zeroext i1 %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.038.0.lcssa.i.i.i.i.i) #12, !inline_history !53
  br i1 %i.u, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.038.1.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.w = tail call noundef zeroext i1 %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.038.1.i.i.i.i.i) #12, !inline_history !53
  br i1 %i.w, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.sroa.038.2.i.i.i.i.i = phi ptr [ %i.x, %bb.i ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.y = tail call noundef zeroext i1 %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.038.2.i.i.i.i.i) #12, !inline_history !53
  %spec.select.i.i.i.i.i = select i1 %i.y, ptr %.sroa.038.2.i.i.i.i.i, ptr %i.c
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i.i.i.i, %bb.j, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i.i, %bb.j ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %bb.f ], [ %i.o, %bb.d ], [ %.sroa.038.048.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.z = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.c
  %.sroa.07.018.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 40 ; 2 uses
  %.not19.i.i.i = icmp eq ptr %.sroa.07.018.i.i.i, %i.c
  %or.cond.i.i.i = select i1 %i.z, i1 true, i1 %.not19.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm9remove_ifIRSt6vectorINS_7objcopy4wasm7SectionESaIS4_EENS_12function_refIFbRKS4_EEEEEDaOT_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i, %bb.l
  %.sroa.07.021.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.l ], [ %.sroa.07.018.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.013.020.i.i.i = phi ptr [ %.sroa.013.1.i.i.i, %bb.l ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i ] ; 3 uses
  %i.aa = tail call noundef zeroext i1 %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.07.021.i.i.i) #12, !inline_history !55
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.020.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.07.021.i.i.i, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i, i64 40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.020.i.i.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.07.0.i.i.i, %i.c
  br i1 %.not.i.i.i, label %_ZN4llvm9remove_ifIRSt6vectorINS_7objcopy4wasm7SectionESaIS4_EENS_12function_refIFbRKS4_EEEEEDaOT_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !56

_ZN4llvm9remove_ifIRSt6vectorINS_7objcopy4wasm7SectionESaIS4_EENS_12function_refIFbRKS4_EEEEEDaOT_T0_.exit: ; preds = %bb.l, %._crit_edge.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i
  %.sroa.013.2.i.i.i = phi ptr [ %i.c, %._crit_edge.i.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS2_12function_refIFbRKS5_EEEEEET_SJ_SJ_T0_.exit.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %.sroa.013.2.i.i.i, %i.ac
  br i1 %.not.i.i, label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %_ZN4llvm9remove_ifIRSt6vectorINS_7objcopy4wasm7SectionESaIS4_EENS_12function_refIFbRKS4_EEEEEDaOT_T0_.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ae = ptrtoint ptr %.sroa.013.2.i.i.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !11
  br label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit

_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %_ZN4llvm9remove_ifIRSt6vectorINS_7objcopy4wasm7SectionESaIS4_EENS_12function_refIFbRKS4_EEEEEDaOT_T0_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm7objcopy4wasm7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !70     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #9
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #10 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !18
  store i64 %i.r, ptr %i.q, align 8, !tbaa !18
  store ptr null, ptr %2, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !18, !alias.scope !72
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !18, !alias.scope !72
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !18, !alias.scope !71
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !18, !alias.scope !71
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !18, !alias.scope !72
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !18, !alias.scope !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !72
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !71
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !72
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !61

_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound0 = icmp ult ptr %i.ah, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec42, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.au = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !18, !alias.scope !77
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !tbaa !18, !alias.scope !77
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !18, !alias.scope !78, !noalias !79
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !tbaa !18, !alias.scope !78, !noalias !79
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !18, !alias.scope !77
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !18, !alias.scope !77
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !68

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !76
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !18, !alias.scope !75
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !76
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !69

_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #11
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN4llvm7objcopy4wasm7SectionE", !8, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIN4llvm7objcopy4wasm7SectionESaIS3_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!10, !9, i64 8}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"p1 _ZTSSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EE", !8, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!14, !13, i64 16}
!17 = !{!"p1 _ZTSN4llvm12MemoryBufferE", !8, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, i1 true, !"_ZSt19__relocate_object_aIN4llvm7objcopy4wasm7SectionES3_SaIS3_EEvPT_PT0_RT1_"}
!21 = distinct !{!21, !20, !"_ZSt19__relocate_object_aIN4llvm7objcopy4wasm7SectionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!22 = distinct !{!22, !20, !"_ZSt19__relocate_object_aIN4llvm7objcopy4wasm7SectionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!23 = distinct !{!23, !12}
!24 = !{!10, !9, i64 16}
!25 = !{!10, !9, i64 0}
!26 = !{!22, !21}
!27 = distinct !{null}
!28 = !{!"p1 omnipotent char", !8, i64 0}
!29 = !{!"long", !4, i64 0}
!30 = !{!"_ZTSN4llvm9StringRefE", !28, i64 0, !29, i64 8}
!31 = !{!"_ZTSN4llvm4wasm16WasmObjectHeaderE", !30, i64 0, !5, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIN4llvm7objcopy4wasm7SectionESaIS3_EE12_Vector_implE", !10, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN4llvm7objcopy4wasm7SectionESaIS3_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE", !33, i64 0}
!35 = !{!"bool", !4, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !14, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE", !37, i64 0}
!39 = !{!"_ZTSN4llvm7objcopy4wasm6ObjectE", !31, i64 0, !34, i64 24, !35, i64 48, !38, i64 56}
!40 = !{!39, !35, i64 48}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!28, !28, i64 0}
!44 = !{!29, !29, i64 0}
!45 = !{!"_ZTSSt22_Optional_payload_baseIhE", !4, i64 0, !35, i64 1}
!46 = !{!"_ZTSSt17_Optional_payloadIhLb1ELb1ELb1EE", !45, i64 0}
!47 = !{!"_ZTSSt14_Optional_baseIhLb1ELb1EE", !46, i64 0}
!48 = !{!"_ZTSSt8optionalIhE", !47, i64 0}
!49 = !{!"_ZTSN4llvm8ArrayRefIhEE", !28, i64 0, !29, i64 8}
!50 = !{!"_ZTSN4llvm7objcopy4wasm7SectionE", !4, i64 0, !48, i64 1, !30, i64 8, !49, i64 24}
!51 = !{!50, !4, i64 0}
!52 = !{!45, !35, i64 1}
!53 = distinct !{null, null, null, null, null, null, null}
!54 = distinct !{!54, !12}
!55 = distinct !{null, null, null, null, null}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!58 = distinct !{!58, !57, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!59 = distinct !{!59, !57, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!60 = distinct !{!60, !12, !73, !74}
!61 = distinct !{!61, !12, !74, !73}
!62 = distinct !{!62, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!63 = distinct !{!63, !62, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, !62, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !12, !73, !74}
!69 = distinct !{!69, !12, !73}
!70 = !{!14, !13, i64 0}
!71 = !{!58}
!72 = !{!59}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!63}
!76 = !{!64}
!77 = !{!64, !66}
!78 = !{!63, !67}
!79 = !{!66}
end_hunk_0
