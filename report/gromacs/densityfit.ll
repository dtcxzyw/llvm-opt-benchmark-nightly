inline.NumInlined: 534
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelation5cloneEv:bb.a
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.515.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !13, !noalias !129
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.616.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !18, !noalias !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 24, i1 false), !noalias !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false), !noalias !129
  %i.g = extractelement <4 x i64> %i.d, i64 2     ; 2 uses
  %i.h = extractelement <4 x i64> %i.d, i64 3     ; 2 uses
  %i.i = mul i64 %i.h, %i.g
  %i.j = mul i64 %i.i, %.sroa.515.0.copyload.i    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %i.j)
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !129, !inline_history !133

.noexc.i.i.i:                                     ; preds = %bb.b
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !129
  br label %_ZNSt10unique_ptrIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !129 ; 3 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i.i.i, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34, !noalias !129
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26, !noalias !129, !inline_history !133
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 128) #26, !noalias !129, !inline_history !132
  resume { ptr, i32 } %i.k

_ZNSt10unique_ptrIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationESt14default_deleteIS2_EED2Ev.exit: ; preds = %.noexc.i.i.i, %bb.a
  %i.r = phi ptr [ %.pre.i.i.i.i, %.noexc.i.i.i ], [ null, %bb.a ]
  store i64 %.sroa.2.0.copyload.i, ptr %i.f, align 8, !noalias !129
  %.sroa.01.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.g, ptr %.sroa.01.i.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !13, !noalias !129
  %.sroa.01.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.h, ptr %.sroa.01.i.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !13, !noalias !129
  %.sroa.01.i.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %.sroa.515.0.copyload.i, ptr %.sroa.01.i.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !13, !noalias !129
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !noalias !129
  store ptr %i.b, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx24DensitySimilarityMeasure8gradientENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEE(ptr dead_on_unwind noalias writable sret(%"class.gmx::basic_mdspan") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan") align 8 captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.gmx::basic_mdspan") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull byval(%"class.gmx::basic_mdspan") align 8 %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN3gmx24DensitySimilarityMeasure10similarityENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan") align 8 captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull byval(%"class.gmx::basic_mdspan") align 8 %1)
  ret float %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx24DensitySimilarityMeasureD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27, !inline_history !56
  br label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx24DensitySimilarityMeasureC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx24DensitySimilarityMeasureaSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.e = load ptr, ptr %2, align 8, !tbaa !44
  store ptr null, ptr %2, align 8, !tbaa !44
  %i.f = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27, !inline_history !134
  %.pr = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit
  %i.j = load ptr, ptr %.pr, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #27, !inline_history !56
  br label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx24DensitySimilarityMeasureC2EOS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !44
  store i64 %i.a, ptr %0, align 8, !tbaa !44
  store ptr null, ptr %1, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx24DensitySimilarityMeasureaSEOS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  store ptr null, ptr %1, align 8, !tbaa !44
  %i.b = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #27, !inline_history !134
  br label %_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN3gmx28DensitySimilarityMeasureImplESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx28DensitySimilarityMeasureImplEEclEPS1_.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN3gmx33normalizeSumPositiveValuesToUnityENS_8ArrayRefIfEE(ptr nofree captures(address) %0, ptr nofree readnone captures(address) %1) local_unnamed_addr #21 {
bb.a:
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %"_ZSt9transformIN3gmx12ArrayRefIterIfEES2_ZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_1ET0_T_S7_S6_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi double [ %i.e, %.lr.ph.i ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.sroa.0.06.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.a = load float, ptr %.sroa.0.06.i, align 4, !tbaa !35 ; 2 uses
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  %i.c = fpext float %i.a to double
  %i.d = fadd double %.07.i, %i.c
  %i.e = select i1 %i.b, double %i.d, double %.07.i ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %"_ZSt10accumulateIN3gmx12ArrayRefIterIfEEdZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_0ET0_T_S7_S6_T1_.exit", label %.lr.ph.i, !llvm.loop !135

"_ZSt10accumulateIN3gmx12ArrayRefIterIfEEdZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_0ET0_T_S7_S6_T1_.exit": ; preds = %.lr.ph.i
  %i.g = fcmp oeq double %i.e, 0.000000e+00
  br i1 %i.g, label %"_ZSt9transformIN3gmx12ArrayRefIterIfEES2_ZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_1ET0_T_S7_S6_T1_.exit", label %.lr.ph.i12.preheader

.lr.ph.i12.preheader:                             ; preds = %"_ZSt10accumulateIN3gmx12ArrayRefIterIfEEdZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_0ET0_T_S7_S6_T1_.exit"
  %2 = ptrtoaddr ptr %1 to i64
  %3 = ptrtoaddr ptr %0 to i64
  %i.h = add i64 %2, -4
  %i.i = sub i64 %i.h, %3                         ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 28
  br i1 %min.iters.check, label %.lr.ph.i12.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i12.preheader
  %n.vec = and i64 %i.k, 9223372036854775800      ; 3 uses
  %i.l = shl i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %broadcast.splatinsert = insertelement <8 x double> poison, double %i.e, i64 0
  %broadcast.splat = shufflevector <8 x double> %broadcast.splatinsert, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !35
  %i.o = fpext <8 x float> %wide.load to <8 x double>
  %i.p = fdiv <8 x double> %i.o, %broadcast.splat
  %i.q = fptrunc <8 x double> %i.p to <8 x float>
  store <8 x float> %i.q, ptr %next.gep, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %"_ZSt9transformIN3gmx12ArrayRefIterIfEES2_ZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_1ET0_T_S7_S6_T1_.exit", label %.lr.ph.i12.preheader17

.lr.ph.i12.preheader17:                           ; preds = %.lr.ph.i12.preheader, %middle.block
  %.sroa.07.011.i.ph = phi ptr [ %0, %.lr.ph.i12.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.preheader17, %.lr.ph.i12
  %.sroa.07.011.i = phi ptr [ %i.v, %.lr.ph.i12 ], [ %.sroa.07.011.i.ph, %.lr.ph.i12.preheader17 ] ; 3 uses
  %.val4.i = load float, ptr %.sroa.07.011.i, align 4, !tbaa !35
  %i.s = fpext float %.val4.i to double
  %i.t = fdiv double %i.s, %i.e
  %i.u = fptrunc double %i.t to float
  store float %i.u, ptr %.sroa.07.011.i, align 4, !tbaa !35
  %i.v = getelementptr i8, ptr %.sroa.07.011.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.v, %1
  br i1 %.not.i13, label %"_ZSt9transformIN3gmx12ArrayRefIterIfEES2_ZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_1ET0_T_S7_S6_T1_.exit", label %.lr.ph.i12, !llvm.loop !137

"_ZSt9transformIN3gmx12ArrayRefIterIfEES2_ZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_1ET0_T_S7_S6_T1_.exit": ; preds = %.lr.ph.i12, %middle.block, %bb.a, %"_ZSt10accumulateIN3gmx12ArrayRefIterIfEEdZNS0_33normalizeSumPositiveValuesToUnityENS0_8ArrayRefIfEEE3$_0ET0_T_S7_S6_T1_.exit"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

attributes #0 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx28DensitySimilarityMeasureImplELb0EE", !11, i64 0}
!11 = !{!"p1 _ZTSN3gmx28DensitySimilarityMeasureImplE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductEJRNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!17 = distinct !{!17, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductEJRNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 float", !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = distinct !{null}
!23 = !{!24, !19, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!25 = !{!26, !19, i64 40}
!26 = !{!"_ZTSN3gmx12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS1_EEEE", !27, i64 0, !28, i64 8, !19, i64 40}
!27 = !{!"_ZTSN3gmx14accessor_basicIKfEE"}
!28 = !{!"_ZTSN3gmx12layout_right7mappingINS_7extentsIJLln1ELln1ELln1EEEEEE", !29, i64 0}
!29 = !{!"_ZTSN3gmx7extentsIJLln1ELln1ELln1EEEE", !30, i64 0}
!30 = !{!"_ZTSN3gmx6detail15extents_analyseILi3EJLln1ELln1ELln1EEEE", !31, i64 0, !14, i64 24}
!31 = !{!"_ZTSN3gmx6detail15extents_analyseILi2EJLln1ELln1EEEE", !32, i64 0, !14, i64 16}
!32 = !{!"_ZTSN3gmx6detail15extents_analyseILi1EJLln1EEEE", !33, i64 0, !14, i64 8}
!33 = !{!"_ZTSN3gmx6detail15extents_analyseILi0EJEEE"}
!34 = !{!24, !19, i64 16}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !7, i64 0}
!37 = distinct !{!37, !38, !39, !40}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 8, i32 24}
!42 = distinct !{!42, !38, !39, !40}
!43 = distinct !{!43, !38, !39}
!44 = !{!11, !11, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_132DensitySimilarityRelativeEntropyEJRNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!47 = distinct !{!47, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_132DensitySimilarityRelativeEntropyEJRNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!48 = distinct !{null}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationEJRNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!51 = distinct !{!51, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationEJRNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!52 = distinct !{null}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 omnipotent char", !12, i64 0}
!55 = !{!6, !6, i64 0}
!56 = distinct !{null, null}
!57 = !{i64 0, i64 8, !53, i64 8, i64 8, !53, i64 16, i64 4, !55}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !12, i64 0}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSSt10type_index", !62, i64 0}
!62 = !{!"p1 _ZTSSt9type_info", !12, i64 0}
!63 = distinct !{null, null, null}
!64 = !{!12, !12, i64 0}
!65 = !{!66, !67, i64 0}
!66 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0}
!67 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !66, i64 8}
!70 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !12, i64 0}
!71 = !{!72, !54, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !54, i64 0}
!73 = !{!74, !54, i64 0}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !72, i64 0, !14, i64 8, !7, i64 16}
!75 = !{!7, !7, i64 0}
!76 = !{!74, !14, i64 8}
!77 = !{!78, !6, i64 8}
!78 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!79 = !{!78, !6, i64 12}
!80 = distinct !{null, null, null}
!81 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!82 = !{!83, !84, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !12, i64 0}
!85 = !{!83, !84, i64 8}
!86 = !{!87, !12, i64 0}
!87 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !12, i64 0}
!88 = distinct !{!88, !38}
!89 = !{!83, !84, i64 16}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEE11asConstViewEv: argument 0"}
!92 = distinct !{!92, !"_ZNK3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEE11asConstViewEv"}
!93 = !{!24, !19, i64 8}
!94 = distinct !{!94, !38}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductEJRKNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!97 = distinct !{!97, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_129DensitySimilarityInnerProductEJRKNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!98 = distinct !{null}
!99 = distinct !{null, null}
!100 = distinct !{!100, !38, !39, !40}
!101 = distinct !{!101, !38, !39, !40}
!102 = distinct !{!102, !38, !39}
!103 = distinct !{null}
!104 = distinct !{!104, !38, !39, !40}
!105 = !{!"branch_weights", i32 4, i32 12}
!106 = distinct !{!106, !38, !39, !40}
!107 = distinct !{!107, !38, !39}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEE11asConstViewEv: argument 0"}
!110 = distinct !{!110, !"_ZNK3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEE11asConstViewEv"}
!111 = distinct !{!111, !38}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_132DensitySimilarityRelativeEntropyEJRKNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!114 = distinct !{!114, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_132DensitySimilarityRelativeEntropyEJRKNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!115 = distinct !{null}
!116 = distinct !{null, null}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_: argument 0"}
!119 = distinct !{!119, !"_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_"}
!120 = distinct !{!120, !38, !39, !40}
!121 = distinct !{!121, !38, !39, !40}
!122 = distinct !{!122, !38, !39}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZNK3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEE11asConstViewEv: argument 0"}
!125 = distinct !{!125, !"_ZNK3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightEE11asConstViewEv"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_: argument 0"}
!128 = distinct !{!128, !"_ZN3gmx12_GLOBAL__N_120evaluateHelperValuesENS_12basic_mdspanIKfNS_7extentsIJLln1ELln1ELln1EEEENS_12layout_rightENS_14accessor_basicIS2_EEEES8_"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationEJRKNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!131 = distinct !{!131, !"_ZSt11make_uniqueIN3gmx12_GLOBAL__N_133DensitySimilarityCrossCorrelationEJRKNS0_12basic_mdspanIKfNS0_7extentsIJLln1ELln1ELln1EEEENS0_12layout_rightENS0_14accessor_basicIS4_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!132 = distinct !{null}
!133 = distinct !{null, null}
!134 = distinct !{null, null, null, null, null}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38, !39, !40}
!137 = distinct !{!137, !38, !40, !39}
end_hunk_0
