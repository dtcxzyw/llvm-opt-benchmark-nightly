Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4toml2v35array7reserveEm:bb.a
  %wide.load4 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !174, !alias.scope !545
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !544
  store <2 x i64> %wide.load4, ptr %i.ad, align 8, !tbaa !174, !alias.scope !544
  store <2 x ptr> splat (ptr null), ptr %next.gep3, align 8, !tbaa !174, !alias.scope !545
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !174, !alias.scope !545
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !542

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader6

.lr.ph.i.i.i.i.preheader6:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader6, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.af = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !545
  store i64 %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !544
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !545
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !543

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !193
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.q to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.al) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !173
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.am, ptr %i.k, align 8, !tbaa !172
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %1
  store ptr %i.an, ptr %i.c, align 8, !tbaa !193
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35array13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #50 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35array8truncateEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #50, !inline_history !22
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @_ZN4toml2v35array5eraseENS0_4impl14array_iteratorILb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.v, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  %i.p = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  store ptr %i.o, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #50, !inline_history !25
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.v = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !26

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !172
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.b, %bb.a
  %i.x = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  store ptr %i.y, ptr %i.h, align 8, !tbaa !172
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #50, !inline_history !27
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @_ZN4toml2v35array5eraseENS0_4impl14array_iteratorILb1EEES4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  %.not.i.i = icmp eq ptr %1, %2
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159  ; 3 uses
  %.not11.i.i = icmp eq ptr %2, %i.k
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.g
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.w, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.f, %bb.c ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  %i.q = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  store ptr %i.p, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #50, !inline_history !546
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !26

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !159 ; 2 uses
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.c, %bb.b
  %.pre-phi14.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre13.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.g, %bb.b ]
  %3 = phi ptr [ %i.k, %bb.c ], [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.y = sub i64 %.pre-phi14.i.i, %i.g
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp eq ptr %3, %i.z
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.z, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #50, !inline_history !547
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %3
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.z, ptr %i.j, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %bb.a
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %.not12 = icmp eq ptr %i.c, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %i.q, %bb.c ]
  ret i64 %.08.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.011 = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0810 = phi i64 [ %i.q, %bb.c ], [ 0, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.011
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #52 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = tail call noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr noundef nonnull align 8 dereferenceable(64) %i.n) #50
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.p = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph ]
  %i.q = add i64 %i.p, %.0810                     ; 2 uses
  %i.r = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !548
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35array13flatten_childEOS1_Rm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !174  ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #52
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4toml2v35array13flatten_childEOS1_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %2) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

bb.e:                                             ; preds = %bb.b
  %i.w = load i64, ptr %2, align 8, !tbaa !123    ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %2, align 8, !tbaa !123
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !173
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !174
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !174 ; 3 uses
  store ptr %i.l, ptr %i.z, align 8, !tbaa !174
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #50, !inline_history !23
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i, %bb.e, %bb.c, %bb.d
  %i.ae = add nuw i64 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !549
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNR4toml2v35array7flattenEv(ptr noundef nonnull returned align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread, %.lr.ph.preheader
  %.in.ph = phi i64 [ %i.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ %i.j, %.lr.ph.preheader ]
  %.02041.ph = phi i1 [ true, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ false, %.lr.ph.preheader ]
  %.02240.ph = phi i64 [ %i.aq, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ %i.j, %.lr.ph.preheader ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit
  br i1 %.02041.ph, label %._crit_edge.thread, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.outer, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit
  %.in = phi i64 [ %i.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit ], [ %.in.ph, %.lr.ph.outer ]
  %.02240 = phi i64 [ %.224, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit ], [ %.02240.ph, %.lr.ph.outer ] ; 2 uses
  %i.k = add i64 %.in, -1                         ; 5 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #52 ; 2 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %bb.b, !llvm.loop !550

bb.b:                                             ; preds = %.lr.ph
  %i.s = add i64 %.02240, -1                      ; 3 uses
  %i.t = tail call noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr noundef nonnull align 8 dereferenceable(64) %i.r) #50 ; 2 uses
  %.not31 = icmp eq i64 %i.t, 0
  br i1 %.not31, label %bb.c, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !159  ; 4 uses
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.m, %bb.d ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %i.ab = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  %i.ac = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  store ptr %i.ab, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #50, !inline_history !25
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.ai = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !26

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !172
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.d, %bb.c
  %i.ak = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 2 uses
  store ptr %i.al, ptr %i.d, align 8, !tbaa !172
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #50, !inline_history !27
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %.lr.ph
  %.224 = phi i64 [ %.02240, %.lr.ph ], [ %i.s, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i ], [ %i.s, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ] ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread: ; preds = %bb.b
  %i.aq = add i64 %i.t, %i.s                      ; 2 uses
  %.not76 = icmp eq i64 %i.k, 0
  br i1 %.not76, label %._crit_edge.thread, label %.lr.ph.outer

._crit_edge.thread:                               ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread, %._crit_edge
  %.2247781 = phi i64 [ %.224, %._crit_edge ], [ %i.aq, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ] ; 4 uses
  %i.ar = icmp ugt i64 %.2247781, 1152921504606846975
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
  unreachable

bb.f:                                             ; preds = %._crit_edge.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !193
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = icmp ult i64 %i.ay, %.2247781
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !172 ; 2 uses
  br i1 %i.az, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.ba = ptrtoint ptr %.pre to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = shl nuw nsw i64 %.2247781, 3
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #55 ; 10 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !173 ; 11 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !172 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = ptrtoaddr ptr %i.be to i64
  %i.bi = add i64 %i.bg, -8
  %i.bj = sub i64 %i.bi, %i.bh                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bm = and i64 %i.bj, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bn
  %bound0 = icmp ult ptr %i.bd, %i.bp
  %bound1 = icmp ult ptr %i.be, %i.bo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bq = shl i64 %n.vec, 3                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.bd, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bt ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.be, i64 %i.bt ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.bu = getelementptr i8, ptr %next.gep97, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep97, align 8, !tbaa !174, !alias.scope !564
  %wide.load98 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !174, !alias.scope !564
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !174, !alias.scope !565, !noalias !566
  store <2 x i64> %wide.load98, ptr %i.bv, align 8, !tbaa !174, !alias.scope !565, !noalias !566
  store <2 x ptr> splat (ptr null), ptr %next.gep97, align 8, !tbaa !174, !alias.scope !564
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !174, !alias.scope !564
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !557

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader101

.lr.ph.i.i.i.i.preheader101:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader101, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader101 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader101 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.bx = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !563
  store i64 %i.bx, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !562
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !563
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.by, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !558

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ca = load ptr, ptr %i.as, align 8, !tbaa !193
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.be to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.cd) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !173
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.ce, ptr %i.d, align 8, !tbaa !172
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.2247781
  store ptr %i.cf, ptr %i.as, align 8, !tbaa !193
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.cg = phi ptr [ %i.au, %bb.f ], [ %i.bd, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 3 uses
  %i.ch = phi ptr [ %.pre, %bb.f ], [ %i.ce, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 0, ptr %i.a, align 8, !tbaa !123
  %.not45 = icmp eq ptr %i.ch, %i.cg
  br i1 %.not45, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %1 = ptrtoint ptr %i.cg to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph43, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35
  %i.ci = phi ptr [ %i.ch, %.lr.ph43 ], [ %i.dz, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 3 uses
  %2 = phi i64 [ %1, %.lr.ph43 ], [ %i.ec, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ]
  %3 = phi ptr [ %i.cg, %.lr.ph43 ], [ %i.ea, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 2 uses
  %4 = phi i64 [ 0, %.lr.ph43 ], [ %i.dy, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %4 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 6 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !74
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 152
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #52 ; 3 uses
  %.not29 = icmp eq ptr %i.co, null
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = add nuw i64 %4, 1
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !123
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35, !llvm.loop !559

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.cj, align 8, !tbaa !174
  %i.cq = tail call noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr noundef nonnull align 8 dereferenceable(64) %i.co) #50 ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, 1
  br i1 %i.cr, label %bb.k, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.k:                                             ; preds = %bb.j
  %i.cs = add nuw i64 %4, 1                       ; 2 uses
  %i.ct = add i64 %i.cq, -1                       ; 2 uses
  %i.cu = ptrtoint ptr %i.ci to i64
  %i.cv = sub i64 %i.cu, %2
  %i.cw = ashr exact i64 %i.cv, 3                 ; 5 uses
  %i.cx = add i64 %i.cw, %i.ct                    ; 4 uses
  %i.cy = icmp ugt i64 %i.cx, %i.cw
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ct)
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i unwind label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.cz = icmp ult i64 %i.cx, %i.cw
  br i1 %i.cz, label %bb.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cx ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.ci, %i.da
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.df, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.da, %bb.n ] ; 2 uses
  %i.db = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !74
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  tail call void %i.de(ptr noundef nonnull align 8 dereferenceable(40) %i.db) #50, !inline_history !560
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.df, %i.ci
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.da, ptr %i.d, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.n, %bb.m
  %i.dg = icmp ugt i64 %i.cw, %i.cs
  br i1 %i.dg, label %.lr.ph.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.0.in19.i = phi i64 [ %.0.i, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.cx, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i ]
  %.01418.i = phi i64 [ %i.dh, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.cw, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i ]
  %i.dh = add i64 %.01418.i, -1                   ; 3 uses
  %.0.i = add i64 %.0.in19.i, -1                  ; 2 uses
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.0.i ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !174
  store ptr null, ptr %i.dj, align 8, !tbaa !174
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !174 ; 3 uses
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !174
  %.not.i.i.i.i17.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i17.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !74
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(40) %i.dm) #50, !inline_history !561
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i
  %i.dq = icmp ugt i64 %i.dh, %i.cs
  br i1 %i.dq, label %.lr.ph.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, !llvm.loop !24

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.l
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = load ptr, ptr %i.ck, align 8, !tbaa !74
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #50, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  resume { ptr, i32 } %i.dr

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i, %bb.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit.i
  call void @_ZN4toml2v35array13flatten_childEOS1_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #50
  %i.dv = load ptr, ptr %i.ck, align 8, !tbaa !74
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dx(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #50, !inline_history !18
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, %bb.i
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !172 ; 2 uses
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3
  %i.ef = icmp ult i64 %i.dy, %i.ee
  br i1 %i.ef, label %bb.h, label %._crit_edge44

._crit_edge44:                                    ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge44, %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNR4toml2v35array5pruneEb(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(64) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit
  %.in = phi i64 [ %i.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit ], [ %i.i, %.lr.ph.preheader ]
  %i.j = add i64 %.in, -1                         ; 5 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !174  ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #52 ; 4 uses
  %.not19 = icmp eq ptr %i.q, null
  br i1 %.not19, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNR4toml2v35array5pruneEb(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i1 noundef zeroext true) #50 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.j ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !159 ; 4 uses
  %.not.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.an, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ae, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.y, %bb.f ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.z, %bb.f ] ; 3 uses
  %i.ag = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !174
  %i.ah = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174 ; 3 uses
  store ptr %i.ag, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !174
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #50, !inline_history !25
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.an = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !26

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !172
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.f, %bb.e
  %i.ap = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.aa, %bb.f ], [ %i.aa, %bb.e ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !172
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #52 ; 3 uses
  %.not20 = icmp eq ptr %i.au, null
  br i1 %.not20, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = tail call noundef nonnull align 8 dereferenceable(89) ptr @_ZNR4toml2v35table5pruneEb(ptr noundef nonnull align 8 dereferenceable(89) %i.au, i1 noundef zeroext true) #50 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !157
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.j ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !159 ; 4 uses
  %.not.i.i21 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i21, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3                 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i22

.lr.ph.i.i.i.i.i.i.i25:                           ; preds = %bb.l, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i.i26 = phi i64 [ %i.bp, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i31 ], [ %i.bg, %bb.l ] ; 2 uses
  %.0811.i.i.i.i.i.i.i27 = phi ptr [ %i.bo, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i31 ], [ %i.ba, %bb.l ] ; 3 uses
  %.0910.i.i.i.i.i.i.i28 = phi ptr [ %i.bn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i31 ], [ %i.bb, %bb.l ] ; 3 uses
  %i.bi = load ptr, ptr %.0910.i.i.i.i.i.i.i28, align 8, !tbaa !174
  store ptr null, ptr %.0910.i.i.i.i.i.i.i28, align 8, !tbaa !174
  %i.bj = load ptr, ptr %.0811.i.i.i.i.i.i.i27, align 8, !tbaa !174 ; 3 uses
  store ptr %i.bi, ptr %.0811.i.i.i.i.i.i.i27, align 8, !tbaa !174
  %.not.i.i.i.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i29, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i31, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i30

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i.i.i.i25
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !74
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(40) %i.bj) #50, !inline_history !25
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i31

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i31: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i.i.i.i.i25
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i28, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i27, i64 8
  %i.bp = add nsw i64 %.012.i.i.i.i.i.i.i26, -1
  %i.bq = icmp sgt i64 %.012.i.i.i.i.i.i.i26, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i32, !llvm.loop !26

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i32: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i31
  %.pre.i.i33 = load ptr, ptr %i.c, align 8, !tbaa !172
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i22: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i32, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre.i.i33, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i32 ], [ %i.bc, %bb.l ], [ %i.bc, %bb.k ]
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  store ptr %i.bs, ptr %i.c, align 8, !tbaa !172
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.sink.split

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.sink.split: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i22, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %.sink55 = phi ptr [ %i.ar, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ], [ %i.bt, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i22 ] ; 2 uses
  %i.bu = load ptr, ptr %.sink55, align 8, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(40) %.sink55) #50
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.sink.split, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i22, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %bb.g, %bb.j, %bb.d
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !567

.loopexit:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, %bb.a
  ret ptr %0
}

end_hunk_0
begin_hunk_1_@_ZN4toml2v35table5equalERKS1_S3_:bb.a
  %.val.val22.i = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.al = icmp eq i64 %.val21.i, %.val.val22.i
  br i1 %i.al, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %.val21.i, 0
  br i1 %i.am, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.g
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val20.i, ptr readonly %.val.val.i, i64 %.val21.i), !inline_history !608
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.an, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

.split39:                                         ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.v, i64 40
  %.val24.i = load i64, ptr %i.ao, align 8, !tbaa !183
  %i.ap = getelementptr i8, ptr %i.ab, i64 40
  %.val23.val.i = load i64, ptr %i.ap, align 8, !tbaa !183
  %i.aq = icmp eq i64 %.val24.i, %.val23.val.i
  br i1 %i.aq, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = getelementptr i8, ptr %i.v, i64 40
  %.val26.i = load i64, ptr %i.ar, align 8        ; 3 uses
  %i.as = getelementptr i8, ptr %i.ab, i64 40
  %.val25.val.i = load double, ptr %i.as, align 8, !tbaa !186 ; 2 uses
  %i.at = and i64 %.val26.i, 9218868437227405312
  %.not.i.i.i.i.i = icmp ne i64 %i.at, 9218868437227405312
  %i.au = and i64 %.val26.i, 4503599627370495
  %.not4.i.i.i.i.i = icmp eq i64 %i.au, 0
  %.0.i.i.i.i.i.not43 = or i1 %.not.i.i.i.i.i, %.not4.i.i.i.i.i ; 2 uses
  %or.cond.i.i.i.i = fcmp ord double %.val25.val.i, 0.000000e+00
  br i1 %or.cond.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i

_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i: ; preds = %bb.h
  %i.av = bitcast i64 %.val26.i to double
  %i.aw = fcmp oeq double %.val25.val.i, %i.av
  %or.cond = select i1 %.0.i.i.i.i.i.not43, i1 %i.aw, i1 false
  br i1 %or.cond, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i:  ; preds = %bb.h
  br i1 %.0.i.i.i.i.i.not43, label %.critedge, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33"

.split37:                                         ; preds = %bb.e
  %i.ax = getelementptr i8, ptr %i.v, i64 40
  %.val28.i = load i8, ptr %i.ax, align 8, !tbaa !188, !range !104, !noundef !105
  %i.ay = getelementptr i8, ptr %i.ab, i64 40
  %.val27.val.i = load i8, ptr %i.ay, align 8, !tbaa !188, !range !104, !noundef !105
  %i.az = icmp eq i8 %.val28.i, %.val27.val.i
  br i1 %i.az, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.i:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !92
  %i.bd = load i16, ptr %i.ba, align 8, !tbaa !92
  %i.be = icmp eq i16 %i.bc, %i.bd
  br i1 %i.be, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !93
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !93
  %i.bj = icmp eq i8 %i.bg, %i.bi
  br i1 %i.bj, label %.split35, label %.critedge

.split35:                                         ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 43
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 43
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !94
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.k:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !96
  %i.bs = load i8, ptr %i.bp, align 8, !tbaa !96
  %i.bt = icmp eq i8 %i.br, %i.bs
  br i1 %i.bt, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 41
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 41
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !97
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !98
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !98
  %i.cd = icmp eq i8 %i.ca, %i.cc
  br i1 %i.cd, label %.split40, label %.critedge

.split40:                                         ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !99
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !99
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.n:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.cl = load i16, ptr %i.ck, align 8, !tbaa !92
  %i.cm = load i16, ptr %i.cj, align 8, !tbaa !92
  %i.cn = icmp eq i16 %i.cl, %i.cm
  br i1 %i.cn, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !93
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !93
  %i.cs = icmp eq i8 %i.cp, %i.cr
  br i1 %i.cs, label %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i:     ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 43
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !94
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 43
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !94
  %i.cx = icmp eq i8 %i.cu, %i.cw
  br i1 %i.cx, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.da = load i8, ptr %i.cy, align 4, !tbaa !96
  %i.db = load i8, ptr %i.cz, align 4, !tbaa !96
  %i.dc = icmp eq i8 %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !97
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 45
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !97
  %i.dh = icmp eq i8 %i.de, %i.dg
  br i1 %i.dh, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 46
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !98
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ab, i64 46
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !98
  %i.dm = icmp eq i8 %i.dj, %i.dl
  br i1 %i.dm, label %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i:     ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !99
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !99
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %.split38, label %.critedge

.split38:                                         ; preds = %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 54
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !103, !range !104, !noundef !105 ; 2 uses
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ab, i64 54
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !103, !range !104, !noundef !105
  %i.dz = icmp eq i8 %i.dv, %i.dy                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i = and i1 %i.dz, %i.dw
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ds, align 4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.dt, align 4
  %i.ea = icmp eq i16 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.eb = select i1 %brmerge.not.i.i.i.i.i.i, i1 %i.ea, i1 %i.dz
  br i1 %i.eb, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.s:                                             ; preds = %bb.e
  unreachable

"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit": ; preds = %bb.e
  %i.ec = tail call noundef zeroext i1 @_ZN4toml2v35array5equalERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #50, !inline_history !609
  br i1 %i.ec, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33": ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %.split40, %.split39, %.split38, %.split37, %.split35, %.split, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit"
  %i.ed = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.026.046) #52 ; 2 uses
  %i.ee = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.024.047) #52
  %.not41 = icmp eq ptr %i.ed, %i.h
  br i1 %.not41, label %.critedge, label %.lr.ph, !llvm.loop !610

.critedge:                                        ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %bb.p, %bb.q, %bb.r, %bb.o, %bb.n, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, %bb.k, %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph, %.split40, %.split39, %.split38, %.split37, %.split35, %.split, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit", %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.n ], [ false, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i ], [ false, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ false, %.lr.ph ], [ false, %.split40 ], [ false, %.split39 ], [ false, %.split38 ], [ false, %.split37 ], [ false, %.split35 ], [ false, %.split ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33" ], [ false, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit" ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4toml2v34impl8is_asciiEPKcm(ptr nofree noundef nonnull readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = and i64 %1, -16                          ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.e = bitcast <2 x i64> %i.i to <16 x i8>
  %i.f = icmp slt <16 x i8> %i.e, zeroinitializer
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not32 = icmp eq i16 %i.g, 0
  br i1 %.not32, label %._crit_edge._crit_edge, label %.critedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = ptrtoaddr ptr %i.j to i64
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02634 = phi <2 x i64> [ %i.i, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.02733 = phi ptr [ %i.j, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.h = load <2 x i64>, ptr %.02733, align 1, !tbaa !69
  %i.i = or <2 x i64> %i.h, %.02634               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02733, i64 16 ; 4 uses
  %i.k = icmp ult ptr %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !28

bb.b:                                             ; preds = %._crit_edge._crit_edge, %bb.a
  %.22943.pre-phi = phi i64 [ %.pre, %._crit_edge._crit_edge ], [ %i.a, %bb.a ]
  %.229 = phi ptr [ %i.j, %._crit_edge._crit_edge ], [ %0, %bb.a ] ; 3 uses
  %i.l = icmp ult ptr %.229, %i.b
  br i1 %i.l, label %.lr.ph38.preheader, label %.critedge

.lr.ph38.preheader:                               ; preds = %bb.b
  %i.m = add i64 %1, %i.a
  %i.n = sub i64 %i.m, %.22943.pre-phi
  %scevgep = getelementptr i8, ptr %.229, i64 %i.n
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38, %.lr.ph38.preheader
  %.33036 = phi ptr [ %i.q, %.lr.ph38 ], [ %.229, %.lr.ph38.preheader ] ; 2 uses
  %i.o = load i8, ptr %.33036, align 1, !tbaa !69
  %i.p = icmp sgt i8 %i.o, -1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.33036, i64 1 ; 2 uses
  %exitcond.not = icmp ne ptr %i.q, %scevgep
  %or.cond.not = select i1 %i.p, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph38, label %.critedge, !llvm.loop !29

.critedge:                                        ; preds = %.lr.ph38, %bb.b, %._crit_edge
  %.3 = phi i1 [ false, %._crit_edge ], [ true, %bb.b ], [ %i.p, %.lr.ph38 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %5 = alloca %"struct.(anonymous namespace)::escaped_codepoint", align 8 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6.i = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %12 = alloca %"struct.(anonymous namespace)::escaped_codepoint", align 8 ; 3 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  store i64 5, ptr %i.b, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480 ; 2 uses
  store ptr @.str.12, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %.sink180.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sink180.sroa.gep313 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sink182.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink182.sroa.gep314 = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !155

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  store i64 23, ptr %14, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.13, ptr %i.d, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %14) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.g, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.g:                                             ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #55
          to label %bb.h unwind label %bb.e       ; 7 uses

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v35arrayC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #50
  store ptr %i.g, ptr %0, align 8, !tbaa !174
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 5 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %i.k = phi i1 [ false, %bb.h ], [ %.be, %.backedge.backedge ] ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.backedge
  %i.l = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.critedge
  br i1 %i.l, label %.critedge.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !239  ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.thread, label %bb.k, !prof !155

bb.k:                                             ; preds = %bb.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !241  ; 5 uses
  %i.o = add i32 %i.n, -11
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %bb.l, label %bb.m, !prof !242

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 72, ptr %9, align 8
  br label %.invoke178

bb.m:                                             ; preds = %bb.k
  switch i32 %i.n, label %bb.as [
    i32 13, label %bb.n
    i32 10, label %bb.r
    i32 35, label %bb.s
    i32 44, label %bb.ai
    i32 93, label %bb.ar
  ]

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.n
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %.not4.i = icmp eq ptr %i.q, null
  br i1 %.not4.i, label %bb.o, label %bb.p, !prof !155

bb.o:                                             ; preds = %.noexc21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 33, ptr %10, align 8
  br label %.invoke178

.invoke178:                                       ; preds = %bb.l, %bb.o
  %.sink180.sroa.phi = phi ptr [ %.sink180.sroa.gep, %bb.l ], [ %.sink180.sroa.gep313, %bb.o ]
  %.sink180 = phi ptr [ %9, %bb.l ], [ %10, %bb.o ]
  %.str.68.sink = phi ptr [ @.str.68, %bb.l ], [ @.str.69, %bb.o ]
  store ptr %.str.68.sink, ptr %.sink180.sroa.phi, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sink180) #54
          to label %.cont179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont179:                                         ; preds = %.invoke178
  unreachable

bb.p:                                             ; preds = %.noexc21
  %i.r = load i32, ptr %i.q, align 4, !tbaa !241
  %.not5.i = icmp eq i32 %i.r, 10
  br i1 %.not5.i, label %bb.r, label %bb.q, !prof !168

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  store i64 31, ptr %11, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.70, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  store ptr %i.q, ptr %12, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  store i64 1, ptr %13, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.16, ptr %i.t, align 8
  invoke fastcc void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEN12_GLOBAL__N_117escaped_codepointES8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(16) %13) #54
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.m, %bb.p
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.critedge.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  store i64 7, ptr %i.b, align 8, !tbaa !123
  store ptr @.str.71, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  br label %.invoke.i

.preheader.i:                                     ; preds = %.invoke.i
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not6.i = icmp eq ptr %i.u, null
  br i1 %.not6.i, label %_ZN4toml2v34impl7impl_ex6parser15consume_commentEv.exit, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !241  ; 7 uses
  %i.w = add i32 %i.v, -11
  %i.x = icmp ult i32 %i.w, 2
end_hunk_1
begin_hunk_2_@_ZN4toml2v34impl9formatterC2EPKNS0_4nodeEPKNS0_5tableERKNS1_19formatter_constantsERKNS1_16formatter_configE:bb.a
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !681

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.z, %i.y
  %i.ab = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !126, !alias.scope !691, !noalias !690
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.preheader ], [ %i.s, %middle.block ] ; 3 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ab, %middle.block ] ; 2 uses
  %i.ac = add i64 %i.p, %i.o                      ; 2 uses
  %.014.ph19 = ptrtoaddr ptr %.014.ph to i64      ; 2 uses
  %i.ad = sub i64 %i.ac, %.014.ph19
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.aj, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.ae = phi i64 [ %i.ai, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader17 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader17 ]
  %i.af = load i8, ptr %.014.prol, align 1, !tbaa !69
  %i.ag = icmp eq i8 %i.af, 9
  %i.ah = select i1 %i.ag, i64 4, i64 1
  %i.ai = add i64 %i.ah, %i.ae                    ; 3 uses
  store i64 %i.ai, ptr %i.k, align 8, !tbaa !126
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !683

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader17 ], [ %i.aj, %.lr.ph.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.preheader17 ], [ %i.ai, %.lr.ph.prol ]
  %i.ak = sub i64 %.014.ph19, %i.ac
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.am = and i64 %i.j, 448
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.am, ptr %i.an, align 8, !tbaa !127
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.bi, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ao = phi i64 [ %i.bh, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.ap = load i8, ptr %.014, align 1, !tbaa !69
  %i.aq = icmp eq i8 %i.ap, 9
  %i.ar = select i1 %i.aq, i64 4, i64 1
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  store i64 %i.as, ptr %i.k, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = icmp eq i8 %i.au, 9
  %i.aw = select i1 %i.av, i64 4, i64 1
  %i.ax = add i64 %i.aw, %i.as                    ; 2 uses
  store i64 %i.ax, ptr %i.k, align 8, !tbaa !126
  %i.ay = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !69
  %i.ba = icmp eq i8 %i.az, 9
  %i.bb = select i1 %i.ba, i64 4, i64 1
  %i.bc = add i64 %i.bb, %i.ax                    ; 2 uses
  store i64 %i.bc, ptr %i.k, align 8, !tbaa !126
  %i.bd = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !69
  %i.bf = icmp eq i8 %i.be, 9
  %i.bg = select i1 %i.bf, i64 4, i64 1
  %i.bh = add i64 %i.bg, %i.bc                    ; 2 uses
  store i64 %i.bh, ptr %i.k, align 8, !tbaa !126
  %i.bi = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %.not12.3 = icmp eq ptr %i.bi, %i.q
  br i1 %.not12.3, label %._crit_edge, label %.lr.ph, !llvm.loop !684
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v34impl9formatter6attachERSo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(69) initializes((56, 69)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.b, align 4, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.c, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v34impl9formatter6detachEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(69) initializes((56, 64)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.a, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter13print_newlineEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !129, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %or.cond = or i1 %1, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.a, align 4, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter12print_indentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.b ]
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !130
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !tbaa !123
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !124
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  store i8 0, ptr %i.f, align 4, !tbaa !129
  %i.i = add nuw nsw i32 %.02, 1                  ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !128
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !37
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter17print_unformattedEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext %1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.d, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter17print_unformattedESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.d, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, i64 %1, ptr %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 16 uses
  %i.b = alloca [32 x i8], align 16               ; 16 uses
  %i.c = alloca [8 x i8], align 1                 ; 9 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !125
  %i.g = and i64 %i.f, 4
  %.not.i156.not = icmp eq i64 %i.g, 0
  %.sroa.3107.0 = select i1 %.not.i156.not, ptr @.str.23, ptr @.str.22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !130
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %.sroa.3107.0, i64 noundef 2) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.k, align 4, !tbaa !129
  br label %bb.cq

bb.c:                                             ; preds = %bb.a
  %spec.select301 = select i1 %4, i32 0, i32 16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !125  ; 4 uses
  %i.n = trunc i64 %i.m to i8
  %i.o = lshr i8 %i.n, 5                          ; 4 uses
  %i.p = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 5 uses
  %i.r = and i64 %1, -16                          ; 2 uses
  %.not.i161 = icmp eq i64 %i.r, 0
  br i1 %.not.i161, label %bb.d, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.t = bitcast <2 x i64> %i.x to <16 x i8>
  %i.u = icmp slt <16 x i8> %i.t, zeroinitializer
  %i.v = bitcast <16 x i1> %i.u to i16
  %.not32.i = icmp eq i16 %i.v, 0
  br i1 %.not32.i, label %._crit_edge._crit_edge.i, label %.lr.ph.preheader

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre.i = ptrtoaddr ptr %i.y to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.02634.i = phi <2 x i64> [ %i.x, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %.02733.i = phi ptr [ %i.y, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 2 uses
  %i.w = load <2 x i64>, ptr %.02733.i, align 1, !tbaa !69
  %i.x = or <2 x i64> %i.w, %.02634.i             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02733.i, i64 16 ; 4 uses
  %i.z = icmp ult ptr %i.y, %i.s
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !28

bb.d:                                             ; preds = %._crit_edge._crit_edge.i, %bb.c
  %.22943.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge._crit_edge.i ], [ %i.p, %bb.c ]
  %.229.i = phi ptr [ %i.y, %._crit_edge._crit_edge.i ], [ %2, %bb.c ] ; 3 uses
  %i.aa = icmp ult ptr %.229.i, %i.q
  br i1 %i.aa, label %.lr.ph38.preheader.i, label %.lr.ph340.preheader

.lr.ph340.preheader:                              ; preds = %bb.e, %bb.d
  br label %.lr.ph340

.lr.ph38.preheader.i:                             ; preds = %bb.d
  %i.ab = add i64 %1, %i.p
  %i.ac = sub i64 %i.ab, %.22943.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.229.i, i64 %i.ac
  br label %.lr.ph38.i

bb.e:                                             ; preds = %.lr.ph38.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.33036.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ad, %scevgep.i
  br i1 %exitcond.not.i, label %.lr.ph340.preheader, label %.lr.ph38.i, !llvm.loop !29

.lr.ph38.i:                                       ; preds = %bb.e, %.lr.ph38.preheader.i
  %.33036.i = phi ptr [ %i.ad, %bb.e ], [ %.229.i, %.lr.ph38.preheader.i ] ; 2 uses
  %i.ae = load i8, ptr %.33036.i, align 1, !tbaa !69
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %bb.e, label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.0339, i64 1 ; 2 uses
  %.not122 = icmp eq ptr %i.ag, %i.q
  br i1 %.not122, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread, label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %bb.f
  %.0339 = phi ptr [ %i.ag, %bb.f ], [ %2, %.lr.ph340.preheader ] ; 2 uses
  %.1277338 = phi i32 [ %.3279, %bb.f ], [ %spec.select301, %.lr.ph340.preheader ] ; 5 uses
  %i.ah = load i8, ptr %.0339, align 1, !tbaa !69 ; 4 uses
  %i.ai = sext i8 %i.ah to i32                    ; 2 uses
  switch i8 %i.ah, label %bb.j [
    i8 10, label %bb.g
    i8 9, label %bb.h
    i8 39, label %bb.i
  ]

bb.g:                                             ; preds = %.lr.ph340
  %i.aj = or i32 %.1277338, 1
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph340
  %i.ak = or i32 %.1277338, 2
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph340
  %i.al = or i32 %.1277338, 8
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph340
  %i.am = add i8 %i.ah, -127
  %i.an = icmp ult i8 %i.am, -95
  br i1 %i.an, label %bb.k, label %bb.l, !prof !155

bb.k:                                             ; preds = %bb.j
  %i.ao = or i32 %.1277338, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2278 = phi i32 [ %i.ao, %bb.k ], [ %.1277338, %bb.j ] ; 2 uses
  %i.ap = add nsw i32 %i.ai, -123
  %or.cond.i = icmp ult i32 %i.ap, -78
  br i1 %or.cond.i, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit

_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit: ; preds = %bb.l
  %i.aq = zext nneg i32 %i.ai to i64
  %i.ar = add nsw i64 %i.aq, -45
  %.not.i162 = icmp ugt i8 %i.ah, 108
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, -3307330977390599
  %i.au = icmp ne i64 %i.at, 0
  %i.av = select i1 %.not.i162, i1 true, i1 %i.au
  br i1 %i.av, label %bb.m, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread: ; preds = %bb.l, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit
  %i.aw = or i32 %.2278, 16
  br label %bb.m

bb.m:                                             ; preds = %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread, %bb.i, %bb.h, %bb.g
  %.3279 = phi i32 [ %.2278, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit ], [ %i.aw, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread ], [ %i.aj, %bb.g ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 3 uses
  %.not123 = icmp eq i32 %.3279, 31
  br i1 %.not123, label %.thread289, label %bb.f

.lr.ph.preheader:                                 ; preds = %.lr.ph38.i, %._crit_edge.i
  %i.ax = or disjoint i32 %spec.select301, 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.0114335 = phi ptr [ %i.ck, %bb.w ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0224.0334 = phi i32 [ %i.bs, %bb.w ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.9.0333 = phi i32 [ %i.bm, %bb.w ], [ 0, %.lr.ph.preheader ]
  %.4280332 = phi i32 [ %.6.ph, %bb.w ], [ %i.ax, %.lr.ph.preheader ] ; 7 uses
  %i.ay = load i8, ptr %.0114335, align 1, !tbaa !69 ; 3 uses
  %i.az = icmp ne i32 %.sroa.0224.0334, 12
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext i8 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !69  ; 2 uses
  %i.bd = icmp eq i32 %.sroa.0224.0334, 0
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.be = zext i8 %i.bc to i32                    ; 2 uses
  %i.bf = lshr i32 255, %i.be
  %i.bg = zext i8 %i.ay to i32
  %i.bh = and i32 %i.bf, %i.bg
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bi = and i8 %i.ay, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = shl i32 %.sroa.9.0333, 6
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %.pre.i163 = zext i8 %i.bc to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit

_ZN4toml2v34impl12utf8_decoderclEh.exit:          ; preds = %bb.n, %bb.o
  %.pre-phi.i = phi i32 [ %.pre.i163, %bb.o ], [ %i.be, %bb.n ]
  %i.bm = phi i32 [ %i.bl, %bb.o ], [ %i.bh, %bb.n ] ; 8 uses
  %i.bn = or disjoint i32 %.sroa.0224.0334, 256
  %i.bo = add nuw nsw i32 %i.bn, %.pre-phi.i
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !69  ; 3 uses
  %i.bs = zext i8 %i.br to i32
  switch i8 %i.br, label %bb.w [
    i8 12, label %.loopexit322.thread
    i8 0, label %bb.p
  ], !prof !693

bb.p:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit
  switch i32 %i.bm, label %bb.t [
    i32 10, label %bb.q
    i32 9, label %bb.r
    i32 39, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bt = or i32 %.4280332, 1
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.bu = or i32 %.4280332, 2
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.bv = or i32 %.4280332, 8
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.bw = icmp ult i32 %i.bm, 32
  %i.bx = icmp eq i32 %i.bm, 127
  %i.by = or i1 %i.bw, %i.bx
  br i1 %i.by, label %.critedge, label %bb.u, !prof !155

bb.u:                                             ; preds = %bb.t
  switch i32 %i.bm, label %bb.v [
    i32 8233, label %.critedge
    i32 8232, label %.critedge
    i32 133, label %.critedge
  ], !prof !694

.critedge:                                        ; preds = %bb.u, %bb.u, %bb.u, %bb.t
  %i.bz = or i32 %.4280332, 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %.5 = phi i32 [ %i.bz, %.critedge ], [ %.4280332, %bb.u ] ; 2 uses
  %i.ca = add i32 %i.bm, -123
  %or.cond.i.i = icmp ult i32 %i.ca, -78
  br i1 %or.cond.i.i, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit

_ZN4toml2v34impl21is_bare_key_characterEDi.exit:  ; preds = %bb.v
  %i.cb = zext nneg i32 %i.bm to i64
  %i.cc = add nsw i64 %i.cb, -45
  %.not.i.i = icmp samesign ugt i32 %i.bm, 108
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = and i64 %i.cd, -3307330977390599
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = select i1 %.not.i.i, i1 true, i1 %i.cf
  br i1 %i.cg, label %bb.w, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread: ; preds = %bb.v, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  %i.ch = or i32 %.5, 16
  br label %bb.w

.loopexit322.thread:                              ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit
  %i.ci = and i32 %.4280332, -22
  %i.cj = or disjoint i32 %i.ci, 20
  br label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread

bb.w:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, %bb.s, %bb.r, %bb.q
  %.6.ph = phi i32 [ %.4280332, %_ZN4toml2v34impl12utf8_decoderclEh.exit ], [ %i.bv, %bb.s ], [ %i.bu, %bb.r ], [ %i.bt, %bb.q ], [ %i.ch, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread ], [ %.5, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0114335, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.q
  br i1 %.not, label %.loopexit322, label %.lr.ph

.loopexit322:                                     ; preds = %bb.w
  switch i8 %i.br, label %bb.x [
    i8 12, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread
    i8 0, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread
  ]

bb.x:                                             ; preds = %.loopexit322
  %i.cl = and i32 %.6.ph, -22
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_construct_nodeIJRS4_S9_EEEvPSt13_Rb_tree_nodeISA_EDpOT_:bb.a
          to label %bb.l unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ag = load i64, ptr %3, align 8, !tbaa !174
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !174
  store ptr null, ptr %3, align 8, !tbaa !174
  ret void

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ae

bb.k:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #53
  unreachable

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #40

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJS2_S9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #55 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !86
  %i.d = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !66
  %i.k = load i64, ptr %i.e, align 8, !tbaa !69
  store i64 %i.k, ptr %i.c, align 8, !tbaa !69
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !67
  store ptr %i.e, ptr %2, align 8, !tbaa !66
  store i64 0, ptr %i.m, align 8, !tbaa !67
  store i8 0, ptr %i.e, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !156
  store ptr null, ptr %i.s, align 8, !tbaa !150
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !156
  store ptr null, ptr %i.r, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.v = load i64, ptr %3, align 8, !tbaa !174
  store i64 %i.v, ptr %i.u, align 8, !tbaa !174
  store ptr null, ptr %3, align 8, !tbaa !174
  %i.w = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 5 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.x, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.aa
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !67  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ab) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #50 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.aj = sub i64 %i.ab, %i.ad
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ak = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i
  %i.al = phi i1 [ %i.ak, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #50
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !157
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !157
  br label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #50
  resume { ptr, i32 } %i.ap

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #50
  br label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.g
  %.sroa.014.018 = phi ptr [ %i.a, %.thread ], [ %i.x, %bb.g ]
  ret ptr %.sroa.014.018
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE11source_pathB5cxx11Ev(ptr nofree noundef nonnull readnone align 32 captures(ret: address, provenance) dereferenceable(896) %0) unnamed_addr #44 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE9read_nextEv(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.d = load i64, ptr %i.c, align 32, !tbaa !874 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !348  ; 2 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !306  ; 4 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !324  ; 3 uses
  %.not2 = icmp ult i64 %i.j, %i.k
  br i1 %.not2, label %bb.c, label %.critedge, !prof !168

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.l = add i64 %i.j, 32                         ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.k) ; 2 uses
  %i.m = sub i64 %.sroa.speculated.i.i, %i.j      ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !323
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %i.p, i64 %i.m, i1 false)
  store i64 %.sroa.speculated.i.i, ptr %i.i, align 8, !tbaa !306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(800) %i.b, i8 0, i64 800, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  switch i32 %i.r, label %.lr.ph54.i [
    i32 12, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
    i32 0, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  ]

_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i: ; preds = %bb.c, %bb.c
  %i.s = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.u = and i64 %i.m, -16                        ; 2 uses
  %.not.i34.i = icmp eq i64 %i.u, 0
  br i1 %.not.i34.i, label %bb.d, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.w = bitcast <2 x i64> %i.aa to <16 x i8>
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %.not32.i.i = icmp eq i16 %i.y, 0
  br i1 %.not32.i.i, label %._crit_edge._crit_edge.i.i, label %.lr.ph54.i

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = ptrtoaddr ptr %i.ab to i64
  br label %bb.d

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.02634.i.i = phi <2 x i64> [ %i.aa, %.lr.ph.i.i ], [ zeroinitializer, %.lr.ph.preheader.i.i ]
  %.02733.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.z = load <2 x i64>, ptr %.02733.i.i, align 16, !tbaa !69
  %i.aa = or <2 x i64> %i.z, %.02634.i.i          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 16 ; 4 uses
  %i.ac = icmp ult ptr %i.ab, %i.v
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

bb.d:                                             ; preds = %._crit_edge._crit_edge.i.i, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  %.22943.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge._crit_edge.i.i ], [ %i.s, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i ]
  %.229.i.i = phi ptr [ %i.ab, %._crit_edge._crit_edge.i.i ], [ %i.a, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i ] ; 3 uses
  %i.ad = icmp ult ptr %.229.i.i, %i.t
  br i1 %i.ad, label %.lr.ph38.preheader.i.i, label %.lr.ph.preheader.i

.lr.ph38.preheader.i.i:                           ; preds = %bb.d
  %i.ae = add i64 %i.m, %i.s
  %i.af = sub i64 %i.ae, %.22943.pre-phi.i.i
  %scevgep.i.i = getelementptr i8, ptr %.229.i.i, i64 %i.af
  br label %.lr.ph38.i.i

bb.e:                                             ; preds = %.lr.ph38.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.33036.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ag, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph38.i.i, !llvm.loop !29

.lr.ph38.i.i:                                     ; preds = %bb.e, %.lr.ph38.preheader.i.i
  %.33036.i.i = phi ptr [ %i.ag, %bb.e ], [ %.229.i.i, %.lr.ph38.preheader.i.i ] ; 2 uses
  %i.ah = load i8, ptr %.33036.i.i, align 1, !tbaa !69
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.e, label %.lr.ph54.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.q, align 8, !tbaa !349
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.aj, align 8, !tbaa !312
  store i64 %i.m, ptr %i.e, align 8, !tbaa !348
  %umax.i = call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 3 uses
  %xtraiter = and i64 %umax.i, 1
  %i.ak = icmp ult i64 %i.m, 2
  br i1 %i.ak, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %umax.i, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.02352.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ay, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02352.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02352.i
  %i.an = load i8, ptr %i.am, align 2, !tbaa !69  ; 2 uses
  %i.ao = sext i8 %i.an to i32
  store i32 %i.ao, ptr %i.al, align 16, !tbaa !334
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i8 %i.an, ptr %i.ap, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !246
  %i.ar = or disjoint i64 %.02352.i, 1            ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69  ; 2 uses
  %i.av = sext i8 %i.au to i32
  store i32 %i.av, ptr %i.as, align 8, !tbaa !334
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 %i.au, ptr %i.aw, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1, ptr %i.ax, align 16, !tbaa !246
  %i.ay = add nuw nsw i64 %.02352.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i40.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !872

.lr.ph54.i:                                       ; preds = %.lr.ph38.i.i, %._crit_edge.i.i, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.promoted58.i = load i32, ptr %i.az, align 4
  %umax69.i = call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  br label %bb.g

bb.f:                                             ; preds = %bb.o
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  %i.bc = icmp uge i64 %i.l, %i.k
  %i.bd = freeze i1 %i.bc
  %or.cond.not.i = and i1 %i.bd, %i.cn
  br i1 %or.cond.not.i, label %bb.p, label %..lr.ph.i40.i_crit_edge, !prof !339

..lr.ph.i40.i_crit_edge:                          ; preds = %bb.f
  %.pre = load i64, ptr %i.e, align 8, !tbaa !348
  br label %.lr.ph.i40.i

bb.g:                                             ; preds = %bb.o, %.lr.ph54.i
  %i.be = phi i32 [ %.promoted58.i, %.lr.ph54.i ], [ %i.bv, %bb.o ]
  %i.bf = phi i32 [ %i.r, %.lr.ph54.i ], [ %i.cb, %bb.o ] ; 3 uses
  %.02253.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.dd, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02253.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69  ; 4 uses
  %i.bi = icmp ne i32 %i.bf, 12
  call void @llvm.assume(i1 %i.bi)
  %i.bj = zext i8 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !69  ; 2 uses
  %i.bm = icmp eq i32 %i.bf, 0
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = zext i8 %i.bl to i32                    ; 2 uses
  %i.bo = lshr i32 255, %i.bn
  %i.bp = zext i8 %i.bh to i32
  %i.bq = and i32 %i.bo, %i.bp
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

bb.i:                                             ; preds = %bb.g
  %i.br = and i8 %i.bh, 63
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = shl i32 %i.be, 6
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %.pre.i35.i = zext i8 %i.bl to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

_ZN4toml2v34impl12utf8_decoderclEh.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i32 [ %.pre.i35.i, %bb.i ], [ %i.bn, %bb.h ]
  %i.bv = phi i32 [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 5 uses
  %i.bw = add i32 %i.bf, 256
  %i.bx = add i32 %i.bw, %.pre-phi.i.i
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !69  ; 3 uses
  %i.cb = zext i8 %i.ca to i32                    ; 4 uses
  %i.cc = icmp eq i8 %i.ca, 12
  br i1 %i.cc, label %bb.j, label %bb.k, !prof !155

bb.j:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.cd = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i36.i.a = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr [24 x i8], ptr %0, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = select i1 %.not.i36.i.a, ptr %i.ch, ptr %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef @.str.223, ptr noundef nonnull align 4 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #50
  call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.k:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  %i.ck = load i64, ptr %i.bb, align 8, !tbaa !312 ; 2 uses
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.bb, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ck
  store i8 %i.bh, ptr %i.cm, align 1, !tbaa !69
  %i.cn = icmp ne i8 %i.ca, 0                     ; 2 uses
  br i1 %i.cn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.e, align 8, !tbaa !348
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.co ; 3 uses
  store i32 %i.bv, ptr %i.cq, align 8, !tbaa !334
  %i.cr = load i64, ptr %i.bb, align 8, !tbaa !312 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !246
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ct, ptr nonnull align 16 %i.ba, i64 %i.cr, i1 false)
  store i64 0, ptr %i.bb, align 8, !tbaa !312
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cu = load i64, ptr %i.bb, align 8, !tbaa !312
  %i.cv = icmp eq i64 %i.cu, 4
  br i1 %i.cv, label %bb.n, label %bb.o, !prof !155

bb.n:                                             ; preds = %bb.m
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.cw = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.cx = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i37.i.a = icmp eq i64 %i.cx, 0
  %i.cy = getelementptr [24 x i8], ptr %0, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.db = select i1 %.not.i37.i.a, ptr %i.da, ptr %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cw, ptr noundef @.str.224, ptr noundef nonnull align 4 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #50
  call void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.dd = add nuw nsw i64 %.02253.i, 1            ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.dd, %umax69.i
  br i1 %exitcond70.not.i, label %bb.f, label %bb.g, !llvm.loop !873

bb.p:                                             ; preds = %bb.f
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.de = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.df = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i38.i = icmp eq i64 %i.df, 0
  %i.dg = getelementptr [24 x i8], ptr %0, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = select i1 %.not.i38.i, ptr %i.di, ptr %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #50
  call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

.lr.ph.i40.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i, label %.lr.ph.i.epil.preheader
end_hunk_3
begin_hunk_4_@_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv:bb.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116utf8_byte_streamISiEC2ERSi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !353
  %i.b = load ptr, ptr %1, align 8, !tbaa !74
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !322
  %i.h = and i32 %i.g, 3
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = extractvalue { i64, i64 } %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.k = load ptr, ptr %0, align 8, !tbaa !353
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.a, i64 noundef 3) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !353    ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !322
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !342
  %i.w = icmp eq i64 %i.v, 3
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i16, ptr %i.a, align 1
  %i.y = xor i16 -17425, %i.x
  %i.z = getelementptr i8, ptr %i.a, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = xor i16 191, %i.ab
  %i.ad = or i16 %i.y, %i.ac
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.q, i32 noundef 0)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !353
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef %i.j, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @_ZNK12_GLOBAL__N_111utf8_readerISiE11source_pathB5cxx11Ev(ptr nofree noundef nonnull readnone align 32 captures(ret: address, provenance) dereferenceable(896) %0) unnamed_addr #44 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_111utf8_readerISiE9read_nextEv(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.d = load i64, ptr %i.c, align 32, !tbaa !878 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !354  ; 2 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !353  ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !322
  %i.p = and i32 %i.o, 3
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.c, label %.critedge, !prof !168

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull %i.a, i64 noundef 32)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !353  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !342  ; 11 uses
  %.not.i2.not = icmp eq i64 %i.t, 0
  br i1 %.not.i2.not, label %bb.j, label %bb.n, !prof !155

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = extractvalue { ptr, i32 } %i.u, 1
  %i.x = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #50
  %i.y = icmp eq i32 %i.w, %i.x
  %i.z = call ptr @__cxa_begin_catch(ptr %i.v) #50 ; 2 uses
  %i.aa = call ptr @__cxa_allocate_exception(i64 48) #50 ; 4 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #50, !inline_history !875
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #50
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
          to label %bb.ai unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef @.str.226, ptr noundef nonnull align 4 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #50
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
          to label %bb.ai unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.i:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.j:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.r, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !322
  %i.ar = and i32 %i.aq, 2
  %.not58.i.a = icmp eq i32 %i.ar, 0
  br i1 %.not58.i.a, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !349
  switch i32 %i.at, label %bb.l [
    i32 12, label %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread
    i32 0, label %_ZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEv.exit.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.au = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #50
  call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ax = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef @.str.222, ptr noundef nonnull align 4 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az) #50
  call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.n:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(800) %i.b, i8 0, i64 800, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !349 ; 2 uses
  switch i32 %i.bb, label %.critedge.i [
    i32 12, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i
    i32 0, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i
  ]

_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i: ; preds = %bb.n, %bb.n
  %i.bc = ptrtoaddr ptr %i.a to i64               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.be = and i64 %i.t, -16                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i, label %bb.o, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.bg = bitcast <2 x i64> %i.bk to <16 x i8>
  %i.bh = icmp slt <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %.not32.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not32.i.i, label %._crit_edge._crit_edge.i.i, label %.critedge.i

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = ptrtoaddr ptr %i.bl to i64
  br label %bb.o

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.02634.i.i = phi <2 x i64> [ %i.bk, %.lr.ph.i.i ], [ zeroinitializer, %.lr.ph.preheader.i.i ]
  %.02733.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bj = load <2 x i64>, ptr %.02733.i.i, align 16, !tbaa !69
  %i.bk = or <2 x i64> %i.bj, %.02634.i.i         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 16 ; 4 uses
  %i.bm = icmp ult ptr %i.bl, %i.bf
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i
  %.22943.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge._crit_edge.i.i ], [ %i.bc, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i ]
  %.229.i.i = phi ptr [ %i.bl, %._crit_edge._crit_edge.i.i ], [ %i.a, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit35.thread.i ] ; 3 uses
  %i.bn = icmp ult ptr %.229.i.i, %i.bd
  br i1 %i.bn, label %.lr.ph38.preheader.i.i, label %.loopexit.i

.lr.ph38.preheader.i.i:                           ; preds = %bb.o
  %i.bo = add i64 %i.t, %i.bc
  %i.bp = sub i64 %i.bo, %.22943.pre-phi.i.i
  %scevgep.i.i = getelementptr i8, ptr %.229.i.i, i64 %i.bp
  br label %.lr.ph38.i.i

bb.p:                                             ; preds = %.lr.ph38.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.33036.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.bq, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph38.i.i, !llvm.loop !29

.lr.ph38.i.i:                                     ; preds = %bb.p, %.lr.ph38.preheader.i.i
  %.33036.i.i = phi ptr [ %i.bq, %bb.p ], [ %.229.i.i, %.lr.ph38.preheader.i.i ] ; 2 uses
  %i.br = load i8, ptr %.33036.i.i, align 1, !tbaa !69
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %bb.p, label %.critedge.i

.loopexit.i:                                      ; preds = %bb.p, %bb.o
  store i32 0, ptr %i.ba, align 8, !tbaa !349
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.bt, align 8, !tbaa !321
  store i64 %i.t, ptr %i.e, align 8, !tbaa !354
  %xtraiter = and i64 %i.t, 1
  %i.bu = icmp eq i64 %i.t, 1
  br i1 %i.bu, label %.epil.preheader, label %.loopexit.i.new

.loopexit.i.new:                                  ; preds = %.loopexit.i
  %unroll_iter = and i64 %i.t, -2
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.loopexit.i.new
  %.02962.i = phi i64 [ 0, %.loopexit.i.new ], [ %i.ci, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.loopexit.i.new ], [ %niter.next.1, %bb.q ]
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02962.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02962.i
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !69  ; 2 uses
  %i.by = sext i8 %i.bx to i32
  store i32 %i.by, ptr %i.bv, align 16, !tbaa !334
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %i.bx, ptr %i.bz, align 4, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 1, ptr %i.ca, align 8, !tbaa !246
  %i.cb = or disjoint i64 %.02962.i, 1            ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !69  ; 2 uses
  %i.cf = sext i8 %i.ce to i32
  store i32 %i.cf, ptr %i.cc, align 8, !tbaa !334
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i8 %i.ce, ptr %i.cg, align 4, !tbaa !69
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 1, ptr %i.ch, align 16, !tbaa !246
  %i.ci = add nuw nsw i64 %.02962.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i48.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !876

.critedge.i:                                      ; preds = %.lr.ph38.i.i, %._crit_edge.i.i, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.promoted67.i = load i32, ptr %i.cj, align 4
  br label %.backedge

bb.r:                                             ; preds = %bb.y
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  br label %.lr.ph.i48.i

.backedge:                                        ; preds = %.backedge.backedge, %.critedge.i
  %i.cm = phi i32 [ %.promoted67.i, %.critedge.i ], [ %i.dd, %.backedge.backedge ]
  %.02866.i = phi i64 [ 0, %.critedge.i ], [ %.02866.i.be, %.backedge.backedge ] ; 3 uses
  %i.cn = phi i32 [ %i.bb, %.critedge.i ], [ %i.dj, %.backedge.backedge ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02866.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !69  ; 4 uses
  %i.cq = icmp ne i32 %i.cn, 12
  call void @llvm.assume(i1 %i.cq)
  %i.cr = zext i8 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69  ; 2 uses
  %i.cu = icmp eq i32 %i.cn, 0
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.backedge
  %i.cv = zext i8 %i.ct to i32                    ; 2 uses
  %i.cw = lshr i32 255, %i.cv
  %i.cx = zext i8 %i.cp to i32
  %i.cy = and i32 %i.cw, %i.cx
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

bb.t:                                             ; preds = %.backedge
  %i.cz = and i8 %i.cp, 63
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = shl i32 %i.cm, 6
  %i.dc = or disjoint i32 %i.db, %i.da
  %.pre.i43.i = zext i8 %i.ct to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

_ZN4toml2v34impl12utf8_decoderclEh.exit.i:        ; preds = %bb.t, %bb.s
  %.pre-phi.i.i = phi i32 [ %.pre.i43.i, %bb.t ], [ %i.cv, %bb.s ]
  %i.dd = phi i32 [ %i.dc, %bb.t ], [ %i.cy, %bb.s ] ; 6 uses
  %i.de = add i32 %i.cn, 256
  %i.df = add i32 %i.de, %.pre-phi.i.i
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !69  ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 5 uses
  %i.dk = icmp eq i8 %i.di, 12
  br i1 %i.dk, label %bb.u, label %bb.v, !prof !155

bb.u:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.dl = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i44.i.a = icmp eq i64 %i.dm, 0
  %i.dn = getelementptr [24 x i8], ptr %0, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = select i1 %.not.i44.i.a, ptr %i.dp, ptr %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef @.str.223, ptr noundef nonnull align 4 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #50
  call void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.v:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  %i.ds = load i64, ptr %i.cl, align 8, !tbaa !321 ; 2 uses
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.cl, align 8, !tbaa !321
  %i.du = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ds
  store i8 %i.cp, ptr %i.du, align 1, !tbaa !69
  %i.dv = icmp eq i8 %i.di, 0
  br i1 %i.dv, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = load i64, ptr %i.cl, align 8, !tbaa !321
  %i.dx = icmp eq i64 %i.dw, 4
  br i1 %i.dx, label %bb.x, label %.thread, !prof !155

bb.x:                                             ; preds = %bb.w
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.dy = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.dz = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i45.i.a = icmp eq i64 %i.dz, 0
  %i.ea = getelementptr [24 x i8], ptr %0, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 56
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = select i1 %.not.i45.i.a, ptr %i.ec, ptr %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef @.str.224, ptr noundef nonnull align 4 dereferenceable(8) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #50
  call void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.e, align 8, !tbaa !354
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ef ; 3 uses
  store i32 %i.dd, ptr %i.eh, align 8, !tbaa !334
  %i.ei = load i64, ptr %i.cl, align 8, !tbaa !321 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !246
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 32 %i.ck, i64 %i.ei, i1 false)
  store i64 0, ptr %i.cl, align 8, !tbaa !321
  %i.el = add nuw nsw i64 %.02866.i, 1            ; 2 uses
  %exitcond81.not.i = icmp eq i64 %i.el, %i.t
  br i1 %exitcond81.not.i, label %bb.r, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.y, %.thread
  %.02866.i.be = phi i64 [ %i.el, %bb.y ], [ %i.em, %.thread ]
  br label %.backedge, !llvm.loop !877

.thread:                                          ; preds = %bb.w
  %i.em = add nuw nsw i64 %.02866.i, 1            ; 2 uses
  %exitcond81.not.i3 = icmp eq i64 %i.em, %i.t
  br i1 %exitcond81.not.i3, label %bb.z, label %.backedge.backedge

bb.z:                                             ; preds = %.thread
  store i32 %i.dd, ptr %i.cj, align 4, !tbaa !350
  store i32 %i.dj, ptr %i.ba, align 8, !tbaa !349
  %i.en = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %i.r, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !322
  %i.et = and i32 %i.es, 2
  %.not59.i.a = icmp eq i32 %i.et, 0
  br i1 %.not59.i.a, label %.lr.ph.i48.i, label %bb.aa, !prof !168

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISiE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.eu = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !354 ; 2 uses
  %.not.i46.i = icmp eq i64 %i.ev, 0
  %i.ew = getelementptr [24 x i8], ptr %0, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 56
end_hunk_4
