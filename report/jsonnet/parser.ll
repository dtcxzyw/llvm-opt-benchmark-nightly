Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/parser?download=true
inline.NumInlined: 2771
inline.NumDeleted: 1065
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESO_IJEEEEEvPSt13_Rb_tree_nodeISD_EDpOT_:bb.a
._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %bb.a
  %.pre8.i.i.i.i = phi ptr [ %i.k, %.noexc8 ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.g
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i32, ptr %i.e, align 4, !tbaa !169
  store i32 %i.l, ptr %.pre8.i.i.i.i, align 4, !tbaa !169
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i.i, ptr align 4 %i.e, i64 %.idx.i.i.i, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i.i, %.noexc.i.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.g, ptr %i.q, align 8, !tbaa !167
  %i.r = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i.i, i64 %.idx.i.i.i
  store i32 0, ptr %i.r, align 4, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.s, align 8, !tbaa !171
  ret void

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !167  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !118    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #27
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.p = icmp samesign ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = shl nuw nsw i64 %.0, 2
  %i.r = add nuw nsw i64 %i.q, 4
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 5 uses
  switch i64 %1, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit
  %i.t = load i32, ptr %i.g, align 4, !tbaa !169
  store i32 %i.t, ptr %i.s, align 4, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit
  %i.u = shl i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.g, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit, %bb.g, %bb.f
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.h, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %3, align 4, !tbaa !169
  store i32 %i.y, ptr %i.x, align 4, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

bb.j:                                             ; preds = %bb.h
  %i.z = shl i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr nonnull align 4 %3, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !169
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27

bb.m:                                             ; preds = %bb.k
  %i.af = shl i64 %i.d, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27
  %i.ag = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !46
  %i.ai = shl i64 %i.ah, 2
  %i.aj = add i64 %i.ai, 4
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.aj) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !118
  store i64 %.0, ptr %i.h, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE17_M_realloc_insertIJRS_INS1_13FodderElementESaIS6_EERPKNS1_10IdentifierES9_RPNS1_3ASTES9_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !108    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27
  unreachable

_ZNKSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 88                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %7 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %7, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %7, i64 104811045873349725)
  %i.k = select i1 %i.i, i64 104811045873349725, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 88                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load ptr, ptr %3, align 8, !tbaa !120
  %i.r = load ptr, ptr %5, align 8, !tbaa !91
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKSt6vectorINS0_13FodderElementESaIS3_EEPKNS0_10IdentifierES7_PNS0_3ASTES7_(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRSt6vectorINS1_13FodderElementESaIS7_EERPKNS1_10IdentifierESA_RPNS1_3ASTESA_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRSt6vectorINS1_13FodderElementESaIS7_EERPKNS1_10IdentifierESA_RPNS1_3ASTESA_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRSt6vectorINS1_13FodderElementESaIS7_EERPKNS1_10IdentifierESA_RPNS1_3ASTESA_EEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRSt6vectorINS1_13FodderElementESaIS7_EERPKNS1_10IdentifierESA_RPNS1_3ASTESA_EEEvRS3_PT_DpOT0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRSt6vectorINS1_13FodderElementESaIS7_EERPKNS1_10IdentifierESA_RPNS1_3ASTESA_EEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !159, !alias.scope !499, !noalias !498
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !159, !alias.scope !498, !noalias !499
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63, !alias.scope !499, !noalias !498
  store ptr %i.v, ptr %i.t, align 8, !tbaa !63, !alias.scope !498, !noalias !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !499, !noalias !498
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !179, !alias.scope !499, !noalias !498
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !179, !alias.scope !498, !noalias !499
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !159, !alias.scope !499, !noalias !498
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !159, !alias.scope !498, !noalias !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !499, !noalias !498
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ag = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !179, !alias.scope !499, !noalias !498
  store <2 x ptr> %i.ag, ptr %i.ad, align 8, !tbaa !179, !alias.scope !498, !noalias !499
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !159, !alias.scope !499, !noalias !498
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !159, !alias.scope !498, !noalias !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !499, !noalias !498
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.0911.i.i.i) #25, !noalias !498
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !494

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRSt6vectorINS1_13FodderElementESaIS7_EERPKNS1_10IdentifierESA_RPNS1_3ASTESA_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal8ArgParamEEE9constructIS2_JRSt6vectorINS1_13FodderElementESaIS7_EERPKNS1_10IdentifierESA_RPNS1_3ASTESA_EEEvRS3_PT_DpOT0_.exit ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.bg, %.lr.ph.i.i.i31 ], [ %i.am, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  %.0911.i.i.i33 = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.an = load <2 x ptr>, ptr %.0911.i.i.i33, align 8, !tbaa !159, !alias.scope !501, !noalias !500
  store <2 x ptr> %i.an, ptr %.012.i.i.i32, align 8, !tbaa !159, !alias.scope !500, !noalias !501
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !63, !alias.scope !501, !noalias !500
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !63, !alias.scope !500, !noalias !501
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i33, i8 0, i64 24, i1 false), !alias.scope !501, !noalias !500
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !179, !alias.scope !501, !noalias !500
  store <2 x ptr> %i.au, ptr %i.ar, align 8, !tbaa !179, !alias.scope !500, !noalias !501
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 40
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !159, !alias.scope !501, !noalias !500
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !tbaa !159, !alias.scope !500, !noalias !501
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false), !alias.scope !501, !noalias !500
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 64
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !179, !alias.scope !501, !noalias !500
  store <2 x ptr> %i.bb, ptr %i.ay, align 8, !tbaa !179, !alias.scope !500, !noalias !501
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 72
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !159, !alias.scope !501, !noalias !500
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !159, !alias.scope !500, !noalias !501
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false), !alias.scope !501, !noalias !500
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.0911.i.i.i33) #25, !noalias !500
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 88 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !494

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.am, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bg, %.lr.ph.i.i.i31 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !110
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !108
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !109
  %i.bl = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !110
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = tail call ptr @__cxa_begin_catch(ptr %i.bo) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bm

bb.g:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8ArgParamC2ERKSt6vectorINS0_13FodderElementESaIS3_EEPKNS0_10IdentifierES7_PNS0_3ASTES7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = icmp ugt i64 %i.g, 230584300921369395
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !158

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !63
  %i.n = load ptr, ptr %1, align 8, !tbaa !159
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op
end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal8ArgParamC2ERKS1_:bb.a
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #26
  br label %.body

bb.i:                                             ; preds = %.noexc14
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !166
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !166
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !55 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %.not.i.i.i.i16 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i.i.i.i16, label %.noexc22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = sdiv exact i64 %i.bh, 40
  %i.bj = icmp ugt i64 %i.bi, 230584300921369395
  br i1 %i.bj, label %.noexc.i.i20, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, !prof !158

.noexc.i.i20:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %.noexc.i.i20
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17: ; preds = %bb.j
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #28
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, %bb.i
  %i.bl = phi ptr [ null, %bb.i ], [ %i.bk, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17 ] ; 4 uses
  store ptr %i.bl, ptr %i.ba, align 8, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !63
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !159
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !159
  %i.br = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bp, ptr %i.bq, ptr noundef %i.bl)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc22
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i18, label %.body23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #26
  br label %.body23

bb.m:                                             ; preds = %.noexc22
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !56
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %.noexc.i.i13
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, %.noexc.i.i20
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.bs, %bb.l ], [ %i.bs, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #25
  br label %.body

.body:                                            ; preds = %bb.n, %bb.h, %bb.g, %.body23
  %.pn = phi { ptr, i32 } [ %eh.lpad-body24, %.body23 ], [ %i.by, %bb.n ], [ %i.ar, %bb.h ], [ %i.ar, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6ImportD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal9ImportstrD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal9ImportbinD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !43, !alias.scope !508
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !45, !alias.scope !508
  store i8 0, ptr %i.e, align 8, !tbaa !46, !alias.scope !508
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !45, !alias.scope !508
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !45, !alias.scope !508
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #27
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !50, !alias.scope !508 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !46, !alias.scope !508
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE17_M_realloc_insertIJRS_INS1_13FodderElementESaIS7_EERPKNS1_10IdentifierESA_RPNS1_3ASTERbSA_RS_INS1_8ArgParamESaISJ_EESI_SA_SA_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !132    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775712
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27
  unreachable

_ZNKSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 176                 ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %12 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %12, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %12, i64 52405522936674862)
  %i.k = select i1 %i.i, i64 52405522936674862, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 176                ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load ptr, ptr %3, align 8, !tbaa !120
  %i.r = load ptr, ptr %5, align 8, !tbaa !91
  %i.s = load i8, ptr %6, align 1, !tbaa !104, !range !105, !noundef !82
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i8, ptr %9, align 1, !tbaa !104, !range !105, !noundef !82
  %i.v = trunc nuw i8 %i.u to i1
  invoke void @_ZN7jsonnet8internal5Local4BindC2ERKSt6vectorINS0_13FodderElementESaIS4_EEPKNS0_10IdentifierES8_PNS0_3ASTEbS8_RKS3_INS0_8ArgParamESaISE_EEbS8_S8_(ptr noundef nonnull align 8 dereferenceable(176) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.r, i1 noundef zeroext %i.t, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext %i.v, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZNSt16allocator_traitsISaIN7jsonnet8internal5Local4BindEEE9constructIS3_JRSt6vectorINS1_13FodderElementESaIS8_EERPKNS1_10IdentifierESB_RPNS1_3ASTERbSB_RS7_INS1_8ArgParamESaISK_EESJ_SB_SB_EEEvRS4_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7jsonnet8internal5Local4BindEEE9constructIS3_JRSt6vectorINS1_13FodderElementESaIS8_EERPKNS1_10IdentifierESB_RPNS1_3ASTERbSB_RS7_INS1_8ArgParamESaISK_EESJ_SB_SB_EEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7jsonnet8internal5Local4BindEEE9constructIS3_JRSt6vectorINS1_13FodderElementESaIS8_EERPKNS1_10IdentifierESB_RPNS1_3ASTERbSB_RS7_INS1_8ArgParamESaISK_EESJ_SB_SB_EEEvRS4_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal5Local4BindEEE9constructIS3_JRSt6vectorINS1_13FodderElementESaIS8_EERPKNS1_10IdentifierESB_RPNS1_3ASTERbSB_RS7_INS1_8ArgParamESaISK_EESJ_SB_SB_EEEvRS4_PT_DpOT0_.exit ] ; 15 uses
  %.0911.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7jsonnet8internal5Local4BindEEE9constructIS3_JRSt6vectorINS1_13FodderElementESaIS8_EERPKNS1_10IdentifierESB_RPNS1_3ASTERbSB_RS7_INS1_8ArgParamESaISK_EESJ_SB_SB_EEEvRS4_PT_DpOT0_.exit ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.w = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !159, !alias.scope !517, !noalias !516
  store <2 x ptr> %i.w, ptr %.012.i.i.i, align 8, !tbaa !159, !alias.scope !516, !noalias !517
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63, !alias.scope !517, !noalias !516
  store ptr %i.z, ptr %i.x, align 8, !tbaa !63, !alias.scope !516, !noalias !517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !517, !noalias !516
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !179, !alias.scope !517, !noalias !516
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !179, !alias.scope !516, !noalias !517
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !159, !alias.scope !517, !noalias !516
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !159, !alias.scope !516, !noalias !517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !517, !noalias !516
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i64 9, i1 false), !alias.scope !518
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !159, !alias.scope !517, !noalias !516
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !159, !alias.scope !516, !noalias !517
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63, !alias.scope !517, !noalias !516
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !63, !alias.scope !516, !noalias !517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false), !alias.scope !517, !noalias !516
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !128, !alias.scope !517, !noalias !516
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !128, !alias.scope !516, !noalias !517
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !110, !alias.scope !517, !noalias !516
  store ptr %i.au, ptr %i.as, align 8, !tbaa !110, !alias.scope !516, !noalias !517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !517, !noalias !516
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !180, !range !105, !alias.scope !517, !noalias !516, !noundef !82
  store i8 %i.ax, ptr %i.av, align 8, !tbaa !180, !alias.scope !516, !noalias !517
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !159, !alias.scope !517, !noalias !516
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !159, !alias.scope !516, !noalias !517
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !63, !alias.scope !517, !noalias !516
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !63, !alias.scope !516, !noalias !517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !517, !noalias !516
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !159, !alias.scope !517, !noalias !516
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !159, !alias.scope !516, !noalias !517
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 168
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63, !alias.scope !517, !noalias !516
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !63, !alias.scope !516, !noalias !517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !alias.scope !517, !noalias !516
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0911.i.i.i) #25, !noalias !516
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !512

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7jsonnet8internal5Local4BindEEE9constructIS3_JRSt6vectorINS1_13FodderElementESaIS8_EERPKNS1_10IdentifierESB_RPNS1_3ASTERbSB_RS7_INS1_8ArgParamESaISK_EESJ_SB_SB_EEEvRS4_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal5Local4BindEEE9constructIS3_JRSt6vectorINS1_13FodderElementESaIS8_EERPKNS1_10IdentifierESB_RPNS1_3ASTERbSB_RS7_INS1_8ArgParamESaISK_EESJ_SB_SB_EEEvRS4_PT_DpOT0_.exit ], [ %i.bl, %.lr.ph.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 176 ; 2 uses
  %.not10.i.i.i35 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i35, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41, label %.lr.ph.i.i.i36

.lr.ph.i.i.i36:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i36
  %.012.i.i.i37 = phi ptr [ %i.dc, %.lr.ph.i.i.i36 ], [ %i.bm, %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 15 uses
  %.0911.i.i.i38 = phi ptr [ %i.db, %.lr.ph.i.i.i36 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.bn = load <2 x ptr>, ptr %.0911.i.i.i38, align 8, !tbaa !159, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.bn, ptr %.012.i.i.i37, align 8, !tbaa !159, !alias.scope !519, !noalias !520
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !63, !alias.scope !520, !noalias !519
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !63, !alias.scope !519, !noalias !520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.0911.i.i.i38, i8 0, i64 24, i1 false), !alias.scope !520, !noalias !519
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 32
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !179, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.bu, ptr %i.br, align 8, !tbaa !179, !alias.scope !519, !noalias !520
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 40
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !159, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !159, !alias.scope !519, !noalias !520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false), !alias.scope !520, !noalias !519
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.by, ptr noundef nonnull align 8 dereferenceable(9) %i.bz, i64 9, i1 false), !alias.scope !521
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 72 ; 2 uses
  %i.cc = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !159, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.cc, ptr %i.ca, align 8, !tbaa !159, !alias.scope !519, !noalias !520
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !63, !alias.scope !520, !noalias !519
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !63, !alias.scope !519, !noalias !520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false), !alias.scope !520, !noalias !519
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 96 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %i.ch, align 8, !tbaa !128, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.ci, ptr %i.cg, align 8, !tbaa !128, !alias.scope !519, !noalias !520
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 112
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 112
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !110, !alias.scope !520, !noalias !519
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !110, !alias.scope !519, !noalias !520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false), !alias.scope !520, !noalias !519
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 120
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 120
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !180, !range !105, !alias.scope !520, !noalias !519, !noundef !82
  store i8 %i.co, ptr %i.cm, align 8, !tbaa !180, !alias.scope !519, !noalias !520
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 128
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 128 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !159, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.cr, ptr %i.cp, align 8, !tbaa !159, !alias.scope !519, !noalias !520
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 144
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !63, !alias.scope !520, !noalias !519
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !63, !alias.scope !519, !noalias !520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false), !alias.scope !520, !noalias !519
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 152
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 152 ; 2 uses
  %i.cx = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !159, !alias.scope !520, !noalias !519
  store <2 x ptr> %i.cx, ptr %i.cv, align 8, !tbaa !159, !alias.scope !519, !noalias !520
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 168
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 168
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !63, !alias.scope !520, !noalias !519
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !63, !alias.scope !519, !noalias !520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false), !alias.scope !520, !noalias !519
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0911.i.i.i38) #25, !noalias !519
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 176 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 176 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.db, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41, label %.lr.ph.i.i.i36, !llvm.loop !512

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41: ; preds = %.lr.ph.i.i.i36, %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.bm, %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.dc, %.lr.ph.i.i.i36 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !131
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dg) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !132
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !130
  %i.dh = getelementptr inbounds nuw [176 x i8], ptr %i.o, i64 %i.k
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !131
  ret void

bb.d:                                             ; preds = %bb.e
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  %i.dl = tail call ptr @__cxa_begin_catch(ptr %i.dk) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !136 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !136 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !591

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !141
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !50
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #25 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !43
  %i.d = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.f, ptr %i.a, align 8, !tbaa !88
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !50
  %i.i = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.i, ptr %i.c, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !46
  store i8 %i.k, ptr %i.j, align 1, !tbaa !46
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !45
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE17_M_realloc_insertIJRNS2_4KindERS_INS1_13FodderElementESaIS8_EESB_SB_SB_RNS2_4HideERbSE_RPNS1_3ASTERPKNS1_10IdentifierERNS1_13LocationRangeERS_INS1_8ArgParamESaISO_EESE_SB_SH_DnSB_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(24) %18) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !202    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775584
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27
  unreachable

_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 288                 ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %19 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %19, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %19, i64 32025597350190193)
  %i.k = select i1 %i.i, i64 32025597350190193, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 288                ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load i32, ptr %2, align 4, !tbaa !195
  %i.r = load i32, ptr %7, align 4, !tbaa !196
  %i.s = load i8, ptr %8, align 1, !tbaa !104, !range !105, !noundef !82
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i8, ptr %9, align 1, !tbaa !104, !range !105, !noundef !82
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load ptr, ptr %10, align 8, !tbaa !91
  %i.x = load ptr, ptr %11, align 8, !tbaa !120
  %i.y = load i8, ptr %14, align 1, !tbaa !104, !range !105, !noundef !82
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load ptr, ptr %16, align 8, !tbaa !91
  invoke void @_ZN7jsonnet8internal11ObjectFieldC2ENS1_4KindERKSt6vectorINS0_13FodderElementESaIS4_EES8_S8_S8_NS1_4HideEbbPNS0_3ASTEPKNS0_10IdentifierERKNS0_13LocationRangeERKS3_INS0_8ArgParamESaISI_EEbS8_SB_SB_S8_(ptr noundef nonnull align 8 dereferenceable(288) %i.p, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.r, i1 noundef zeroext %i.t, i1 noundef zeroext %i.v, ptr noundef %i.w, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext %i.z, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %i.aa, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRNS2_4KindERSt6vectorINS1_13FodderElementESaIS9_EESC_SC_SC_RNS2_4HideERbSF_RPNS1_3ASTERPKNS1_10IdentifierERNS1_13LocationRangeERS8_INS1_8ArgParamESaISP_EESF_SC_SI_DnSC_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRNS2_4KindERSt6vectorINS1_13FodderElementESaIS9_EESC_SC_SC_RNS2_4HideERbSF_RPNS1_3ASTERPKNS1_10IdentifierERNS1_13LocationRangeERS8_INS1_8ArgParamESaISP_EESF_SC_SI_DnSC_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRNS2_4KindERSt6vectorINS1_13FodderElementESaIS9_EESC_SC_SC_RNS2_4HideERbSF_RPNS1_3ASTERPKNS1_10IdentifierERNS1_13LocationRangeERS8_INS1_8ArgParamESaISP_EESF_SC_SI_DnSC_EEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRNS2_4KindERSt6vectorINS1_13FodderElementESaIS9_EESC_SC_SC_RNS2_4HideERbSF_RPNS1_3ASTERPKNS1_10IdentifierERNS1_13LocationRangeERS8_INS1_8ArgParamESaISP_EESF_SC_SI_DnSC_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRNS2_4KindERSt6vectorINS1_13FodderElementESaIS9_EESC_SC_SC_RNS2_4HideERbSF_RPNS1_3ASTERPKNS1_10IdentifierERNS1_13LocationRangeERS8_INS1_8ArgParamESaISP_EESF_SC_SI_DnSC_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 288 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRNS2_4KindERSt6vectorINS1_13FodderElementESaIS9_EESC_SC_SC_RNS2_4HideERbSF_RPNS1_3ASTERPKNS1_10IdentifierERNS1_13LocationRangeERS8_INS1_8ArgParamESaISP_EESF_SC_SI_DnSC_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal11ObjectFieldEEE9constructIS2_JRNS2_4KindERSt6vectorINS1_13FodderElementESaIS9_EESC_SC_SC_RNS2_4HideERbSF_RPNS1_3ASTERPKNS1_10IdentifierERNS1_13LocationRangeERS8_INS1_8ArgParamESaISP_EESF_SC_SI_DnSC_EEEvRS3_PT_DpOT0_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 288 ; 2 uses
  %.not10.i.i.i42 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i42, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48, label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i43
  %.012.i.i.i44 = phi ptr [ %i.af, %.lr.ph.i.i.i43 ], [ %i.ad, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i45 = phi ptr [ %i.ae, %.lr.ph.i.i.i43 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i44, ptr noundef %.0911.i.i.i45, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i45, i64 288 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i44, i64 288 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48, label %.lr.ph.i.i.i43, !llvm.loop !13

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48: ; preds = %.lr.ph.i.i.i43, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i47 = phi ptr [ %i.ad, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.af, %.lr.ph.i.i.i43 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i49 = icmp eq ptr %i.c, null
  br i1 %.not.i49, label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !201
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit48, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !202
  store ptr %.0.lcssa.i.i.i47, ptr %i.a, align 8, !tbaa !200
  %i.ak = getelementptr inbounds nuw [288 x i8], ptr %i.o, i64 %i.k
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !201
  ret void

bb.d:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %i.an) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.al

bb.g:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ObjectFieldC2ENS1_4KindERKSt6vectorINS0_13FodderElementESaIS4_EES8_S8_S8_NS1_4HideEbbPNS0_3ASTEPKNS0_10IdentifierERKNS0_13LocationRangeERKS3_INS0_8ArgParamESaISI_EEbS8_SB_SB_S8_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext %13, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef %15, ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(24) %17) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = zext i1 %7 to i8
  %i.c = zext i1 %8 to i8
  %i.d = zext i1 %13 to i8
  store i32 %1, ptr %0, align 8, !tbaa !188
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv exact i64 %i.k, 40
  %i.m = icmp ugt i64 %i.l, 230584300921369395
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !158

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !63
  %i.s = load ptr, ptr %2, align 8, !tbaa !159
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !159
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.s, ptr %i.t, ptr noundef %i.o)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !55   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body ], [ %i.v, %bb.e ], [ %i.v, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.u, ptr %i.p, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %.not.i.i.i.i31 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i31, label %.noexc36, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ai = sdiv exact i64 %i.ah, 40
  %i.aj = icmp ugt i64 %i.ai, 230584300921369395
  br i1 %i.aj, label %.noexc.i.i35, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32, !prof !158

.noexc.i.i35:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %.noexc.i.i35
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32: ; preds = %bb.f
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #28
          to label %.noexc36 unwind label %bb.ad

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.al = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ak, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i32 ] ; 4 uses
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !63
  %i.ap = load ptr, ptr %3, align 8, !tbaa !159
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !159
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ap, ptr %i.aq, ptr noundef %i.al)
          to label %bb.i unwind label %bb.g

end_hunk_2
begin_hunk_3_@_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !45
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !50
  store i64 0, ptr %i.an, align 8, !tbaa !45
  store i8 0, ptr %i.af, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !128
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !110
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !216, !range !105, !noundef !82
  store i8 %i.az, ptr %i.ax, align 8, !tbaa !216
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !159
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !159
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !159
  store <2 x ptr> %i.bk, ptr %i.bi, align 8, !tbaa !159
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !63
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  tail call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %1) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !188
  store i32 %i.e, ptr %i.b, align 8, !tbaa !188
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !159
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  store ptr %i.k, ptr %i.i, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !159
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !159
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63
  store ptr %i.q, ptr %i.o, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !159
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  store ptr %i.w, ptr %i.u, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !159
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !43
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.am = load i64, ptr %i.al, align 8, !tbaa !45 ; 2 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !50
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !46
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !46
  br label %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit

_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit:    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !45
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !50
  store i64 0, ptr %i.aq, align 8, !tbaa !45
  store i8 0, ptr %i.aj, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !128
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !tbaa !128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !110
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !216, !range !105, !noundef !82
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !216
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !159
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !159
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !159
  store <2 x ptr> %i.bo, ptr %i.bm, align 8, !tbaa !159
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !63
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 288 ; 2 uses
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !200
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(288) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit
  %i.bu = phi ptr [ %.pre, %bb.d ], [ %i.bt, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit ]
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -288
  ret ptr %i.bv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(288) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !202    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775584
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27
  unreachable

_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 288                 ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 32025597350190193)
  %i.k = select i1 %i.i, i64 32025597350190193, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 288
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 22 uses
  %i.q = load i32, ptr %2, align 8, !tbaa !188
  store i32 %i.q, ptr %i.p, align 8, !tbaa !188
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !159
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  store ptr %i.w, ptr %i.u, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !159
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !159
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !159
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !159
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !159
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 144 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !43
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !45 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !50
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !46
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !46
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit

_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit:    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bc = phi i64 [ %i.ay, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !45
  store ptr %i.av, ptr %i.as, align 8, !tbaa !50
  store i64 0, ptr %i.bd, align 8, !tbaa !45
  store i8 0, ptr %i.av, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !128
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !128
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !110
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !216, !range !105, !noundef !82
  store i8 %i.bp, ptr %i.bn, align 8, !tbaa !216
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.br, align 8, !tbaa !159
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !159
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !63
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.ca = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !159
  store <2 x ptr> %i.ca, ptr %i.by, align 8, !tbaa !159
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !63
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i ], [ %i.o, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %i.c, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 288 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZN7jsonnet8internal11ObjectFieldC2EOS1_.exit ], [ %i.cf, %.lr.ph.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 288 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ci, %.lr.ph.i.i.i17 ], [ %i.cg, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ch, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN7jsonnet8internal11ObjectFieldES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i18, ptr noundef %.0911.i.i.i19, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 288 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 288 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ch, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !13

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.cg, %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ci, %.lr.ph.i.i.i17 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !201
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cm) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !202
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !200
  %i.cn = getelementptr inbounds nuw [288 x i8], ptr %i.o, i64 %i.k
  store ptr %i.cn, ptr %i.cj, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  tail call void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !598

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Array7ElementESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_:bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #28
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.m = phi ptr [ null, %.lr.ph ], [ %i.l, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.023, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !63
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !159
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.q, ptr %i.r, ptr noundef %i.m)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.t = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #26
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.s, ptr %i.n, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.023, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.aa, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !606

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.c ], [ %i.t, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ac = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #25 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.023)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #27
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ab, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i
  %.05.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !46
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i
  %i.v = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i

_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !12

_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE17_M_realloc_insertIJNS2_4KindERS_INS1_13FodderElementESaIS7_EESA_RPKNS1_10IdentifierESA_RPNS1_3ASTEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !192    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27
  unreachable

_ZNKSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %8 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %8, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %8, i64 96076792050570581)
  %i.k = select i1 %i.i, i64 96076792050570581, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 96                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load i32, ptr %2, align 4, !tbaa !209
  %i.r = load ptr, ptr %5, align 8, !tbaa !120
  %i.s = load ptr, ptr %7, align 8, !tbaa !91
  invoke void @_ZN7jsonnet8internal17ComprehensionSpecC2ENS1_4KindERKSt6vectorINS0_13FodderElementESaIS4_EES8_PKNS0_10IdentifierES8_PNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(96) %i.p, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.s)
          to label %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESB_RPKNS1_10IdentifierESB_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESB_RPKNS1_10IdentifierESB_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESB_RPKNS1_10IdentifierESB_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESB_RPKNS1_10IdentifierESB_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESB_RPKNS1_10IdentifierESB_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.t = load i32, ptr %.0911.i.i.i, align 8, !tbaa !221, !alias.scope !614, !noalias !613
  store i32 %i.t, ptr %.012.i.i.i, align 8, !tbaa !221, !alias.scope !613, !noalias !614
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !159, !alias.scope !614, !noalias !613
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !159, !alias.scope !613, !noalias !614
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63, !alias.scope !614, !noalias !613
  store ptr %i.z, ptr %i.x, align 8, !tbaa !63, !alias.scope !613, !noalias !614
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !alias.scope !614, !noalias !613
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !159, !alias.scope !614, !noalias !613
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !159, !alias.scope !613, !noalias !614
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !alias.scope !614, !noalias !613
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !63, !alias.scope !613, !noalias !614
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !614, !noalias !613
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !179, !alias.scope !614, !noalias !613
  store <2 x ptr> %i.aj, ptr %i.ag, align 8, !tbaa !179, !alias.scope !613, !noalias !614
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !159, !alias.scope !614, !noalias !613
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !159, !alias.scope !613, !noalias !614
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !614, !noalias !613
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !223, !alias.scope !614, !noalias !613
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !223, !alias.scope !613, !noalias !614
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.0911.i.i.i) #25, !noalias !613
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESB_RPKNS1_10IdentifierESB_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESB_RPKNS1_10IdentifierESB_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i31, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i32
  %.012.i.i.i33 = phi ptr [ %i.br, %.lr.ph.i.i.i32 ], [ %i.as, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 9 uses
  %.0911.i.i.i34 = phi ptr [ %i.bq, %.lr.ph.i.i.i32 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.at = load i32, ptr %.0911.i.i.i34, align 8, !tbaa !221, !alias.scope !616, !noalias !615
  store i32 %i.at, ptr %.012.i.i.i33, align 8, !tbaa !221, !alias.scope !615, !noalias !616
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 8 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !159, !alias.scope !616, !noalias !615
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !159, !alias.scope !615, !noalias !616
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63, !alias.scope !616, !noalias !615
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !63, !alias.scope !615, !noalias !616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !616, !noalias !615
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 32 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !159, !alias.scope !616, !noalias !615
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !159, !alias.scope !615, !noalias !616
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63, !alias.scope !616, !noalias !615
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !63, !alias.scope !615, !noalias !616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false), !alias.scope !616, !noalias !615
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 64
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !179, !alias.scope !616, !noalias !615
  store <2 x ptr> %i.bj, ptr %i.bg, align 8, !tbaa !179, !alias.scope !615, !noalias !616
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 72
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !159, !alias.scope !616, !noalias !615
  store <2 x ptr> %i.bm, ptr %i.bk, align 8, !tbaa !159, !alias.scope !615, !noalias !616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false), !alias.scope !616, !noalias !615
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !223, !alias.scope !616, !noalias !615
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !223, !alias.scope !615, !noalias !616
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.0911.i.i.i34) #25, !noalias !615
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 96 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, label %.lr.ph.i.i.i32, !llvm.loop !14

_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37: ; preds = %.lr.ph.i.i.i32, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.as, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.br, %.lr.ph.i.i.i32 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !194
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !192
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !193
  %i.bw = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !194
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_M_check_lenEmPKc.exit
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bx

bb.g:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal17ComprehensionSpecC2ENS1_4KindERKSt6vectorINS0_13FodderElementESaIS4_EES8_PKNS0_10IdentifierES8_PNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !221
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ugt i64 %i.h, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !158

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !63
  %i.o = load ptr, ptr %2, align 8, !tbaa !159
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.q, ptr %i.l, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56   ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i10, label %.noexc15, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ae = sdiv exact i64 %i.ad, 40
  %i.af = icmp ugt i64 %i.ae, 230584300921369395
  br i1 %i.af, label %.noexc.i.i14, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, !prof !158

.noexc.i.i14:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i14
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11: ; preds = %bb.f
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #28
          to label %.noexc15 unwind label %bb.n

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ah = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ag, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11 ] ; 4 uses
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !63
  %i.al = load ptr, ptr %3, align 8, !tbaa !159
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !159
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.al, ptr %i.am, ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc15
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i12, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #26
  br label %.body

bb.i:                                             ; preds = %.noexc15
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.au, align 8, !tbaa !222
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %.not.i.i.i.i17 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i17, label %.noexc23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = sdiv exact i64 %i.bb, 40
  %i.bd = icmp ugt i64 %i.bc, 230584300921369395
  br i1 %i.bd, label %.noexc.i.i21, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, !prof !158

.noexc.i.i21:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %.noexc.i.i21
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18: ; preds = %bb.j
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #28
          to label %.noexc23 unwind label %bb.o

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, %bb.i
  %i.bf = phi ptr [ null, %bb.i ], [ %i.be, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18 ] ; 4 uses
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bb
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !63
  %i.bj = load ptr, ptr %5, align 8, !tbaa !159
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !159
  %i.bl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bj, ptr %i.bk, ptr noundef %i.bf)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc23
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i19, label %.body24, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !63
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #26
  br label %.body24

bb.m:                                             ; preds = %.noexc23
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %6, ptr %i.bs, align 8, !tbaa !223
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %.noexc.i.i14
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, %.noexc.i.i21
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %i.bm, %bb.l ], [ %i.bm, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #25
  br label %.body

.body:                                            ; preds = %bb.n, %bb.h, %bb.g, %.body24
  %.pn = phi { ptr, i32 } [ %eh.lpad-body25, %.body24 ], [ %i.bt, %bb.n ], [ %i.ao, %bb.h ], [ %i.ao, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE17_M_realloc_insertIJNS2_4KindERS_INS1_13FodderElementESaIS7_EES9_DnS9_RPNS1_3ASTEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !192    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27
  unreachable

_ZNKSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %8 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %8, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %8, i64 96076792050570581)
  %i.k = select i1 %i.i, i64 96076792050570581, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 96                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load i32, ptr %2, align 4, !tbaa !209
  %i.r = load ptr, ptr %7, align 8, !tbaa !91
  invoke void @_ZN7jsonnet8internal17ComprehensionSpecC2ENS1_4KindERKSt6vectorINS0_13FodderElementESaIS4_EES8_PKNS0_10IdentifierES8_PNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(96) %i.p, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.r)
          to label %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESA_DnSA_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESA_DnSA_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESA_DnSA_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESA_DnSA_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESA_DnSA_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.s = load i32, ptr %.0911.i.i.i, align 8, !tbaa !221, !alias.scope !624, !noalias !623
  store i32 %i.s, ptr %.012.i.i.i, align 8, !tbaa !221, !alias.scope !623, !noalias !624
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !159, !alias.scope !624, !noalias !623
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !159, !alias.scope !623, !noalias !624
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !alias.scope !624, !noalias !623
  store ptr %i.y, ptr %i.w, align 8, !tbaa !63, !alias.scope !623, !noalias !624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !624, !noalias !623
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !159, !alias.scope !624, !noalias !623
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !159, !alias.scope !623, !noalias !624
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !63, !alias.scope !624, !noalias !623
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !63, !alias.scope !623, !noalias !624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !624, !noalias !623
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !179, !alias.scope !624, !noalias !623
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !179, !alias.scope !623, !noalias !624
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !159, !alias.scope !624, !noalias !623
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !159, !alias.scope !623, !noalias !624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !624, !noalias !623
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !223, !alias.scope !624, !noalias !623
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !223, !alias.scope !623, !noalias !624
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.0911.i.i.i) #25, !noalias !623
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESA_DnSA_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN7jsonnet8internal17ComprehensionSpecEEE9constructIS2_JNS2_4KindERSt6vectorINS1_13FodderElementESaIS8_EESA_DnSA_RPNS1_3ASTEEEEvRS3_PT_DpOT0_.exit ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i31, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i32
  %.012.i.i.i33 = phi ptr [ %i.bq, %.lr.ph.i.i.i32 ], [ %i.ar, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 9 uses
  %.0911.i.i.i34 = phi ptr [ %i.bp, %.lr.ph.i.i.i32 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.as = load i32, ptr %.0911.i.i.i34, align 8, !tbaa !221, !alias.scope !626, !noalias !625
  store i32 %i.as, ptr %.012.i.i.i33, align 8, !tbaa !221, !alias.scope !625, !noalias !626
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !159, !alias.scope !626, !noalias !625
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !159, !alias.scope !625, !noalias !626
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63, !alias.scope !626, !noalias !625
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !63, !alias.scope !625, !noalias !626
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !alias.scope !626, !noalias !625
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 32 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !159, !alias.scope !626, !noalias !625
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !159, !alias.scope !625, !noalias !626
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !63, !alias.scope !626, !noalias !625
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !63, !alias.scope !625, !noalias !626
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false), !alias.scope !626, !noalias !625
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 64
  %i.bi = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !179, !alias.scope !626, !noalias !625
  store <2 x ptr> %i.bi, ptr %i.bf, align 8, !tbaa !179, !alias.scope !625, !noalias !626
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 72
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !159, !alias.scope !626, !noalias !625
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !tbaa !159, !alias.scope !625, !noalias !626
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false), !alias.scope !626, !noalias !625
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 88
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !223, !alias.scope !626, !noalias !625
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !223, !alias.scope !625, !noalias !626
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.0911.i.i.i34) #25, !noalias !625
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 96 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, label %.lr.ph.i.i.i32, !llvm.loop !14

_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37: ; preds = %.lr.ph.i.i.i32, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.ar, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bq, %.lr.ph.i.i.i32 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !194
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !192
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !193
  %i.bv = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !194
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %i.by) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bw

bb.g:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal18ArrayComprehensionC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_bRKS5_INS0_17ComprehensionSpecESaISD_EESA_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal18ArrayComprehensionE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.a, align 8, !tbaa !628
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = icmp ugt i64 %i.i, 230584300921369395
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !158

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc13 unwind label %bb.k

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !63
  %i.p = load ptr, ptr %4, align 8, !tbaa !159
end_hunk_4
begin_hunk_5_@_ZN7jsonnet8internal18ArrayComprehensionD2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !46
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !192 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !193 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.af, %.lr.ph.i.i.i2 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i3) #25
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 96 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !10

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.ab, align 8, !tbaa !192
  br label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !194
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #26
  br label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.05.i.i.i9 = phi ptr [ %i.bg, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i.i.i.i10, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18, label %.lr.ph.i.i.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i.i.i11:                         ; preds = %.lr.ph.i.i.i8, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14
  %.05.i.i.i.i.i.i.i.i12 = phi ptr [ %i.az, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14 ], [ %i.ar, %.lr.ph.i.i.i8 ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i.i.i.i12, align 8, !tbaa !50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i12, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i.i.i.i.i.i.i.i11
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !46
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i.i.i.i.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i12, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i.i11, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14
  %.pr.i.i.i.i.i.i17 = load ptr, ptr %i.aq, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16, %.lr.ph.i.i.i8
  %i.ba = phi ptr [ %.pr.i.i.i.i.i.i17, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16 ], [ %i.ar, %.lr.ph.i.i.i8 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i19 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i.i.i.i.i.i19, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 40 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bg, %i.ap
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22, label %.lr.ph.i.i.i8, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.pr.i23 = load ptr, ptr %i.am, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit
  %i.bh = phi ptr [ %.pr.i23, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i25, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, %bb.f
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal18ArrayComprehensionD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal18ArrayComprehensionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE17_M_realloc_insertIJRPNS1_3ASTERS_INS1_13FodderElementESaISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !205    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27
  unreachable

_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5
  %mul2 = ashr exact i64 %i.f, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %4, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !91
  store ptr %i.q, ptr %i.p, align 8, !tbaa !211
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !55     ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit
  %i.y = sdiv exact i64 %i.x, 40
  %i.z = icmp ugt i64 %i.y, 230584300921369395
  br i1 %i.z, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, !prof !158

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #28
          to label %.noexc27 unwind label %bb.h

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !63
  %i.af = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.u, ptr %i.t, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc27
  %i.ag = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #26
  br label %bb.j

bb.f:                                             ; preds = %.noexc27
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !56
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !179, !alias.scope !638, !noalias !637
  store <2 x ptr> %i.an, ptr %.012.i.i.i, align 8, !tbaa !179, !alias.scope !637, !noalias !638
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !159, !alias.scope !638, !noalias !637
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !159, !alias.scope !637, !noalias !638
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !638, !noalias !637
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !633

_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.as, %.lr.ph.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.ba, %.lr.ph.i.i.i29 ], [ %i.at, %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i31 = phi ptr [ %i.az, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.av = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !179, !alias.scope !640, !noalias !639
  store <2 x ptr> %i.av, ptr %.012.i.i.i30, align 8, !tbaa !179, !alias.scope !639, !noalias !640
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !159, !alias.scope !640, !noalias !639
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !159, !alias.scope !639, !noalias !640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !alias.scope !640, !noalias !639
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !633

_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.at, %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ba, %.lr.ph.i.i.i29 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !207
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #26
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !205
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !206
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !207
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.h ], [ %i.ag, %bb.e ], [ %i.ag, %bb.d ]
  %i.bi = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bh

bb.l:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6ParensC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6ParensE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.a, align 8, !tbaa !642
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = icmp ugt i64 %i.i, 230584300921369395
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !158

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !63
end_hunk_5
