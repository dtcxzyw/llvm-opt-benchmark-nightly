Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/matrices?download=true
inline.NumInlined: 337
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z20createInlineDiagMatriSt6vectorISt7complexIdESaIS1_EE:bb.a
  %i.q = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  call void @createDiagMatr(ptr dead_on_unwind writable sret(%struct.DiagMatr) align 8 %0, i32 noundef %1)
  %i.v = load ptr, ptr %2, align 8, !tbaa !22
  call void @setDiagMatr(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef %i.v)
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit5

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit5:     ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetCompMatrFromArr(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__.setCompMatr)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetInlineCompMatr(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__._Z17setInlineCompMatr8CompMatriSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  %i.a = load i32, ptr %0, align 8, !tbaa !44
  tail call void @_Z36validate_matrixNumQubitsMatchesParamiiPKc(i32 noundef %i.a, i32 noundef %1, ptr noundef nonnull @__func__._Z17setInlineCompMatr8CompMatriSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetInlineDiagMatr(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE)
  %i.a = load i32, ptr %0, align 8, !tbaa !50
  tail call void @_Z36validate_matrixNumQubitsMatchesParamiiPKc(i32 noundef %i.a, i32 noundef %1, ptr noundef nonnull @__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetInlineFullStateDiagMatr(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE)
  tail call void @_Z34validate_fullStateDiagMatrNewElems17FullStateDiagMatrxxPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToCreateInlineCompMatr(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  tail call void @_Z26validate_newCompMatrParamsiPKc(i32 noundef %0, ptr noundef nonnull @__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToCreateInlineDiagMatr(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z20createInlineDiagMatriSt6vectorISt7complexIdESaIS1_EE)
  tail call void @_Z26validate_newDiagMatrParamsiPKc(i32 noundef %0, ptr noundef nonnull @__func__._Z20createInlineDiagMatriSt6vectorISt7complexIdESaIS1_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @setFullStateDiagMatrFromPauliStrSum(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.setFullStateDiagMatrFromPauliStrSum)
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.setFullStateDiagMatrFromPauliStrSum)
  tail call void @_Z33validate_pauliStrSumCanInitMatrix17FullStateDiagMatr11PauliStrSumPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.setFullStateDiagMatrFromPauliStrSum)
  tail call void @_Z49localiser_fullstatediagmatr_setElemsToPauliStrSum17FullStateDiagMatr11PauliStrSum(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !48
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.32.0.copyload = load ptr, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !48
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !48
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.54.0.copyload = load ptr, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !48
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !tbaa !48
  store i32 1, ptr %.sroa.65.0.copyload, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.2.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.32.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.43.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.54.0.copyload)
  ret void
}

declare void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef byval(%struct.PauliStrSum) align 8, ptr noundef) local_unnamed_addr #3

declare void @_Z33validate_pauliStrSumCanInitMatrix17FullStateDiagMatr11PauliStrSumPKc(ptr noundef byval(%struct.FullStateDiagMatr) align 8, ptr noundef byval(%struct.PauliStrSum) align 8, ptr noundef) local_unnamed_addr #3

declare void @_Z49localiser_fullstatediagmatr_setElemsToPauliStrSum17FullStateDiagMatr11PauliStrSum(ptr noundef byval(%struct.FullStateDiagMatr) align 8, ptr noundef byval(%struct.PauliStrSum) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @createFullStateDiagMatrFromPauliStrSum(ptr dead_on_unwind noalias nofree writable sret(%struct.FullStateDiagMatr) align 8 captures(none) initializes((0, 4), (8, 28), (32, 96)) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.createFullStateDiagMatrFromPauliStrSum)
  %i.a = tail call noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1)
  %i.b = add nsw i32 %i.a, 1                      ; 2 uses
  %i.c = load i32, ptr @_ZN8modeflag8USE_AUTOE, align 4, !tbaa !47 ; 3 uses
  tail call void @_Z35validate_newFullStateDiagMatrParamsiiiiPKc(i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.c, i32 noundef %i.c, ptr noundef nonnull @__func__.createFullStateDiagMatrFromPauliStrSum)
  %i.d = load i32, ptr @_ZN8modeflag8USE_AUTOE, align 4, !tbaa !47, !noalias !107 ; 3 uses
  tail call void @_Z40validateAndCreateCustomFullStateDiagMatriiiiPKc(ptr dead_on_unwind writable sret(%struct.FullStateDiagMatr) align 8 %0, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.d, i32 noundef %i.d, ptr noundef nonnull @__func__.createFullStateDiagMatr)
  tail call void @_Z49localiser_fullstatediagmatr_setElemsToPauliStrSum17FullStateDiagMatr11PauliStrSum(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !48
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.33.0.copyload = load ptr, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !48
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !48
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !48
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.66.0.copyload = load ptr, ptr %.sroa.66.0..sroa_idx, align 8, !tbaa !48
  store i32 1, ptr %.sroa.66.0.copyload, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.2.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.33.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.44.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.55.0.copyload)
  ret void
}

declare noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauli11PauliStrSum(ptr noundef byval(%struct.PauliStrSum) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setDiagMatrFromMultiVarFunc(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.setDiagMatrFromMultiVarFunc)
  %i.a = load i32, ptr %0, align 8, !tbaa !50
  tail call void @_Z27validate_multiVarFuncQubitsiPiiPKc(i32 noundef %i.a, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @__func__.setDiagMatrFromMultiVarFunc)
  tail call void @_Z26validate_funcVarSignedFlagiPKc(i32 noundef %4, ptr noundef nonnull @__func__.setDiagMatrFromMultiVarFunc)
  %i.b = sext i32 %3 to i64                       ; 3 uses
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %3, 0               ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %.noexc20

.noexc20:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !55
  %i.g = add nsw i64 %i.b, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc20
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !55
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc20, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.030.0 = phi ptr [ %i.e, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.e, %.noexc20 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 19 uses
  %.sroa.11.0 = phi ptr [ %i.f, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc20 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51   ; 5 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %.not = icmp eq i32 %4, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  br i1 %.not, label %.lr.ph43.split.us, label %.lr.ph43.split

.lr.ph43.split.us:                                ; preds = %.lr.ph43
  br i1 %.not.i.i.i.i, label %_Z22fast_getSubQuregValuesxPiibPx.exit.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph43.split.us
  %wide.trip.count81 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter110 = and i64 %wide.trip.count81, 1
  %5 = icmp eq i32 %3, 1
  %unroll_iter113 = and i64 %wide.trip.count81, 2147483646
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  %lcmp.mod112 = trunc i32 %3 to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.b
  %.042.us.us = phi i64 [ %i.af, %bb.b ], [ 0, %.lr.ph.us.us.preheader ] ; 4 uses
  br i1 %5, label %.epil.preheader.a, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.024.i38.us.us = phi i64 [ %i.ab, %.lr.ph.us.us.new ], [ %.042.us.us, %.lr.ph.us.us ] ; 2 uses
  %niter114 = phi i64 [ %niter114.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv77
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %notmask.i.us.us = shl nsw i64 -1, %i.q
  %i.r = xor i64 %notmask.i.us.us, -1
  %i.s = and i64 %.024.i38.us.us, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv77
  store i64 %i.s, ptr %i.t, align 8, !tbaa !55
  %i.u = lshr i64 %.024.i38.us.us, %i.q           ; 2 uses
  %indvars.iv.next78 = or disjoint i64 %indvars.iv77, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next78
  %i.w = load i32, ptr %i.v, align 4, !tbaa !47
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %notmask.i.us.us.1 = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i.us.us.1, -1
  %i.z = and i64 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv.next78
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !55
  %i.ab = lshr i64 %i.u, %i.x                     ; 2 uses
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %niter114.next.1 = add i64 %niter114, 2         ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !2

bb.b:                                             ; preds = %._crit_edge.us.us
  %i.ac = extractvalue { double, double } %i.am, 0
  %i.ad = extractvalue { double, double } %i.am, 1
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.042.us.us ; 2 uses
  store double %i.ac, ptr %i.ae, align 8
  %.sroa.5.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %i.ad, ptr %.sroa.5.0..sroa_idx.us.us, align 8, !tbaa !30
  %i.af = add nuw nsw i64 %.042.us.us, 1          ; 2 uses
  %exitcond83.not = icmp eq i64 %i.af, %i.k
  br i1 %exitcond83.not, label %._crit_edge44, label %.lr.ph.us.us, !llvm.loop !108

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod111.not, label %._crit_edge.us.us, label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv77.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next78.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.024.i38.us.us.epil.init = phi i64 [ %.042.us.us, %.lr.ph.us.us ], [ %i.ab, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv77.epil.init
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ai = zext nneg i32 %i.ah to i64
  %notmask.i.us.us.epil = shl nsw i64 -1, %i.ai
  %i.aj = xor i64 %notmask.i.us.us.epil, -1
  %i.ak = and i64 %.024.i38.us.us.epil.init, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv77.epil.init
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !55
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader.a
  %i.am = invoke { double, double } %1(ptr noundef nonnull %.sroa.030.0)
          to label %bb.b unwind label %.split.us.split.us ; 2 uses

.split.us.split.us:                               ; preds = %._crit_edge.us.us
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.split.us.thread

_Z22fast_getSubQuregValuesxPiibPx.exit.us:        ; preds = %.lr.ph43.split.us, %bb.c
  %.042.us = phi i64 [ %i.as, %bb.c ], [ 0, %.lr.ph43.split.us ] ; 2 uses
  %i.ao = invoke { double, double } %1(ptr noundef %.sroa.030.0)
          to label %bb.c unwind label %.split.us.split ; 2 uses

bb.c:                                             ; preds = %_Z22fast_getSubQuregValuesxPiibPx.exit.us
  %i.ap = extractvalue { double, double } %i.ao, 0
  %i.aq = extractvalue { double, double } %i.ao, 1
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.042.us ; 2 uses
  store double %i.ap, ptr %i.ar, align 8
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %i.aq, ptr %.sroa.5.0..sroa_idx.us, align 8, !tbaa !30
  %i.as = add nuw nsw i64 %.042.us, 1             ; 2 uses
  %exitcond84.not = icmp eq i64 %i.as, %i.k
  br i1 %exitcond84.not, label %._crit_edge44, label %_Z22fast_getSubQuregValuesxPiibPx.exit.us, !llvm.loop !108

.split.us.split:                                  ; preds = %_Z22fast_getSubQuregValuesxPiibPx.exit.us
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph43.split:                                   ; preds = %.lr.ph43
  br i1 %.not.i.i.i.i, label %.preheader, label %.lr.ph43.split.split.us.preheader

.lr.ph43.split.split.us.preheader:                ; preds = %.lr.ph43.split
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %i.au = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i64 %i.au, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod104.a = trunc i32 %3 to i1
  %xtraiter105 = and i64 %wide.trip.count, 1
  %i.aw = icmp eq i64 %i.au, 0
  %unroll_iter108 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  %lcmp.mod107 = trunc i32 %3 to i1
  br label %.lr.ph.us50.preheader

.lr.ph.us50.preheader:                            ; preds = %bb.g, %.lr.ph43.split.split.us.preheader
  %.042.us45 = phi i64 [ %i.ci, %bb.g ], [ 0, %.lr.ph43.split.split.us.preheader ] ; 4 uses
  br i1 %i.av, label %.lr.ph.us50.epil.preheader, label %.lr.ph.us50

.lr.ph.us50:                                      ; preds = %.lr.ph.us50.preheader, %.lr.ph.us50
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us50 ], [ 0, %.lr.ph.us50.preheader ] ; 4 uses
  %.024.i38.us47 = phi i64 [ %i.bk, %.lr.ph.us50 ], [ %.042.us45, %.lr.ph.us50.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us50 ], [ 0, %.lr.ph.us50.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %notmask.i.us48 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i.us48, -1
  %i.bb = and i64 %.024.i38.us47, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !55
  %i.bd = lshr i64 %.024.i38.us47, %i.az          ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !47
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %notmask.i.us48.1 = shl nsw i64 -1, %i.bg
  %i.bh = xor i64 %notmask.i.us48.1, -1
  %i.bi = and i64 %i.bd, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv.next
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !55
  %i.bk = lshr i64 %i.bd, %i.bg                   ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.us.preheader.unr-lcssa, label %.lr.ph.us50, !llvm.loop !2

.preheader.us.preheader.unr-lcssa:                ; preds = %.lr.ph.us50
  br i1 %lcmp.mod.not, label %.preheader.us.preheader, label %.lr.ph.us50.epil.preheader

.lr.ph.us50.epil.preheader:                       ; preds = %.preheader.us.preheader.unr-lcssa, %.lr.ph.us50.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us50.preheader ], [ %indvars.iv.next.1, %.preheader.us.preheader.unr-lcssa ] ; 2 uses
  %.024.i38.us47.epil.init = phi i64 [ %.042.us45, %.lr.ph.us50.preheader ], [ %i.bk, %.preheader.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod104.a)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.us48.epil = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.us48.epil, -1
  %i.bp = and i64 %.024.i38.us47.epil.init, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv.epil.init
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !55
  br label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.us.preheader.unr-lcssa, %.lr.ph.us50.epil.preheader
  br i1 %i.aw, label %.preheader.us.epil.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.f
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %bb.f ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %niter109 = phi i64 [ %niter109.next.1, %bb.f ], [ 0, %.preheader.us.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv69 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv69
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !47
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %6 = shl nuw i64 1, %i.bw
  %7 = and i64 %6, %i.bs
  %.not.i.us = icmp eq i64 %7, 0
  br i1 %.not.i.us, label %.preheader.us.1, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %.neg.us = shl nsw i64 -1, %i.bw
  %i.bx = add i64 %.neg.us, %i.bs
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !55
  br label %.preheader.us.1

.preheader.us.1:                                  ; preds = %bb.d, %.preheader.us
  %indvars.iv.next70 = or disjoint i64 %indvars.iv69, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv.next70 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !55 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next70
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !47
  %i.cc = add nsw i32 %i.cb, -1
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %8 = shl nuw i64 1, %i.cd
  %9 = and i64 %8, %i.bz
  %.not.i.us.1 = icmp eq i64 %9, 0
  br i1 %.not.i.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.us.1
  %.neg.us.1 = shl nsw i64 -1, %i.cd
  %i.ce = add i64 %.neg.us.1, %i.bz
  store i64 %i.ce, ptr %i.by, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.us.1
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter109.next.1 = add i64 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us.unr-lcssa, label %.preheader.us, !llvm.loop !109

bb.g:                                             ; preds = %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us
  %i.cf = extractvalue { double, double } %i.cq, 0
  %i.cg = extractvalue { double, double } %i.cq, 1
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.042.us45 ; 2 uses
  store double %i.cf, ptr %i.ch, align 8
  %.sroa.5.0..sroa_idx.us49 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store double %i.cg, ptr %.sroa.5.0..sroa_idx.us49, align 8, !tbaa !30
  %i.ci = add nuw nsw i64 %.042.us45, 1           ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ci, %i.k
  br i1 %exitcond75.not, label %._crit_edge44, label %.lr.ph.us50.preheader, !llvm.loop !108

._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us.unr-lcssa: ; preds = %bb.f
  br i1 %lcmp.mod106.not, label %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us.unr-lcssa, %.preheader.us.preheader
  %indvars.iv69.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next70.1, %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %indvars.iv69.epil.init ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !55 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv69.epil.init
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !47
  %i.cn = add nsw i32 %i.cm, -1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %10 = shl nuw i64 1, %i.co
  %11 = and i64 %10, %i.ck
  %.not.i.us.epil = icmp eq i64 %11, 0
  br i1 %.not.i.us.epil, label %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us, label %bb.h

bb.h:                                             ; preds = %.preheader.us.epil.preheader
  %.neg.us.epil = shl nsw i64 -1, %i.co
  %i.cp = add i64 %.neg.us.epil, %i.ck
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !55
  br label %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us

._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us: ; preds = %.preheader.us.epil.preheader, %bb.h, %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us.unr-lcssa
  %i.cq = invoke { double, double } %1(ptr noundef nonnull %.sroa.030.0)
          to label %bb.g unwind label %.split.split.us ; 2 uses

.split.split.us:                                  ; preds = %._Z22fast_getSubQuregValuesxPiibPx.exit.loopexit_crit_edge.us
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.split.us.thread

._crit_edge44:                                    ; preds = %bb.g, %bb.j, %bb.b, %bb.c, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %.sroa.3.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload116 = load ptr, ptr %.sroa.3.0..sroa_idx115, align 8
  %.sroa.4.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload118 = load ptr, ptr %.sroa.4.0..sroa_idx117, align 8
  %.sroa.5.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload120 = load ptr, ptr %.sroa.5.0..sroa_idx119, align 8
  %.sroa.6.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload122 = load ptr, ptr %.sroa.6.0..sroa_idx121, align 8
  %.sroa.7.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload124 = load ptr, ptr %.sroa.7.0..sroa_idx123, align 8
  %.sroa.8125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.8125.0.copyload = load ptr, ptr %.sroa.8125.0..sroa_idx, align 8
  invoke void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.syncDiagMatr)
          to label %.noexc21 unwind label %bb.m

.noexc21:                                         ; preds = %._crit_edge44
  %i.cs = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.8125.0.copyload)
          to label %.noexc22 unwind label %bb.m

.noexc22:                                         ; preds = %.noexc21
  br i1 %i.cs, label %bb.i, label %_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i

bb.i:                                             ; preds = %.noexc22
  invoke void @_Z16gpu_copyCpuToGpu8DiagMatr(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0)
          to label %_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i unwind label %bb.m

_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i: ; preds = %bb.i, %.noexc22
  store i32 1, ptr %.sroa.7.0.copyload124, align 4, !tbaa !47
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload116)
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload118)
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %.noexc24
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload120)
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %.noexc25
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.6.0.copyload122)
          to label %bb.k unwind label %bb.m

.preheader:                                       ; preds = %.lr.ph43.split, %bb.j
  %.042 = phi i64 [ %i.cx, %bb.j ], [ 0, %.lr.ph43.split ] ; 2 uses
  %i.ct = invoke { double, double } %1(ptr noundef %.sroa.030.0)
          to label %bb.j unwind label %.split.split.split ; 2 uses

bb.j:                                             ; preds = %.preheader
  %i.cu = extractvalue { double, double } %i.ct, 0
  %i.cv = extractvalue { double, double } %i.ct, 1
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.042 ; 2 uses
  store double %i.cu, ptr %i.cw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store double %i.cv, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !30
  %i.cx = add nuw nsw i64 %.042, 1                ; 2 uses
  %exitcond76.not = icmp eq i64 %i.cx, %i.k
  br i1 %exitcond76.not, label %._crit_edge44, label %.preheader, !llvm.loop !108

.split.split.split:                               ; preds = %.preheader
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.k:                                             ; preds = %.noexc26
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = ptrtoint ptr %.sroa.11.0 to i64
  %i.da = ptrtoint ptr %.sroa.030.0 to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.db) #19
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.k, %bb.l
  ret void

bb.m:                                             ; preds = %.noexc26, %.noexc25, %.noexc24, %_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i, %bb.i, %.noexc21, %._crit_edge44
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split.us:                                        ; preds = %.split.us.split, %.split.split.split, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.m ], [ %i.cy, %.split.split.split ], [ %i.at, %.split.us.split ] ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIxSaIxEED2Ev.exit29, label %.split.us.thread

.split.us.thread:                                 ; preds = %.split.split.us, %.split.us.split.us, %.split.us
  %.pn.pn93 = phi { ptr, i32 } [ %.pn.pn, %.split.us ], [ %i.cr, %.split.split.us ], [ %i.an, %.split.us.split.us ]
  %i.dd = ptrtoint ptr %.sroa.11.0 to i64
  %i.de = ptrtoint ptr %.sroa.030.0 to i64
  %i.df = sub i64 %i.dd, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.df) #19
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit29

_ZNSt6vectorIxSaIxEED2Ev.exit29:                  ; preds = %.split.us.thread, %.split.us
  %.pn.pn94 = phi { ptr, i32 } [ %.pn.pn93, %.split.us.thread ], [ %.pn.pn, %.split.us ]
  resume { ptr, i32 } %.pn.pn94
}

declare void @_Z27validate_multiVarFuncQubitsiPiiPKc(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z26validate_funcVarSignedFlagiPKc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @setFullStateDiagMatrFromMultiVarFunc(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.setFullStateDiagMatrFromMultiVarFunc)
  %i.a = load i32, ptr %0, align 8, !tbaa !54
  tail call void @_Z27validate_multiVarFuncQubitsiPiiPKc(i32 noundef %i.a, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @__func__.setFullStateDiagMatrFromMultiVarFunc)
  tail call void @_Z26validate_funcVarSignedFlagiPKc(i32 noundef %4, ptr noundef nonnull @__func__.setFullStateDiagMatrFromMultiVarFunc)
  tail call void @_Z46cpu_fullstatediagmatr_setElemsFromMultiVarFunc17FullStateDiagMatrPFSt7complexIdEPxEPiii(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.0.copyload8 = load ptr, ptr %.sroa.3.0..sroa_idx7, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0.copyload10 = load ptr, ptr %.sroa.4.0..sroa_idx9, align 8
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0.copyload12 = load ptr, ptr %.sroa.5.0..sroa_idx11, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0.copyload14 = load ptr, ptr %.sroa.6.0..sroa_idx13, align 8
  %.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.7.0.copyload16 = load ptr, ptr %.sroa.7.0..sroa_idx15, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.817.0.copyload = load ptr, ptr %.sroa.817.0..sroa_idx, align 8
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.syncFullStateDiagMatr)
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.817.0.copyload)
  br i1 %i.b, label %bb.b, label %syncFullStateDiagMatr.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu17FullStateDiagMatr(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0)
  br label %syncFullStateDiagMatr.exit

syncFullStateDiagMatr.exit:                       ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.7.0.copyload16, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload8)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload10)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload12)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.6.0.copyload14)
  ret void
}

declare void @_Z46cpu_fullstatediagmatr_setElemsFromMultiVarFunc17FullStateDiagMatrPFSt7complexIdEPxEPiii(ptr noundef byval(%struct.FullStateDiagMatr) align 8, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setDiagMatrFromMultiDimLists(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.setDiagMatrFromMultiDimLists)
  %i.a = load i32, ptr %0, align 8, !tbaa !50
  tail call void @_Z27validate_multiVarFuncQubitsiPiiPKc(i32 noundef %i.a, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @__func__.setDiagMatrFromMultiDimLists)
  %i.b = sext i32 %3 to i64                       ; 3 uses
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit.thread, label %.noexc19

.noexc19:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 10 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !55
  %i.g = add nsw i64 %i.b, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc19
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !55
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit.thread:        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.preheader.lr.ph.thread, label %._crit_edge

.preheader.lr.ph.thread:                          ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  br label %.preheader

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %4 = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod71 = trunc i32 %3 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %bb.b
  %.039.us = phi i64 [ %i.ak, %bb.b ], [ 0, %.preheader.lr.ph ] ; 4 uses
  br i1 %4, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %.024.i37.us = phi i64 [ %i.ag, %.preheader.us.new ], [ %.039.us, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !47
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %notmask.i.us = shl nsw i64 -1, %i.v
  %i.w = xor i64 %notmask.i.us, -1
  %i.x = and i64 %.024.i37.us, %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store i64 %i.x, ptr %i.y, align 8, !tbaa !55
  %i.z = lshr i64 %.024.i37.us, %i.v              ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %notmask.i.us.1 = shl nsw i64 -1, %i.ac
  %i.ad = xor i64 %notmask.i.us.1, -1
  %i.ae = and i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !55
  %i.ag = lshr i64 %i.z, %i.ac                    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !2

bb.b:                                             ; preds = %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us
  %i.ah = extractvalue { double, double } %i.ar, 0
  %i.ai = extractvalue { double, double } %i.ar, 1
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.039.us ; 2 uses
  store double %i.ah, ptr %i.aj, align 8
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store double %i.ai, ptr %.sroa.5.0..sroa_idx.us, align 8, !tbaa !30
  %i.ak = add nuw nsw i64 %.039.us, 1             ; 2 uses
  %exitcond42.not = icmp eq i64 %i.ak, %i.k
  br i1 %exitcond42.not, label %._crit_edge, label %.preheader.us, !llvm.loop !110

._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us.unr-lcssa: ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us.unr-lcssa ] ; 2 uses
  %.024.i37.us.epil.init = phi i64 [ %.039.us, %.preheader.us ], [ %i.ag, %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.am = load i32, ptr %i.al, align 4, !tbaa !47
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.us.epil = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.us.epil, -1
  %i.ap = and i64 %.024.i37.us.epil.init, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !55
  br label %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us

._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us: ; preds = %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us.unr-lcssa, %.epil.preheader
  %i.ar = invoke { double, double } @_Z26util_getElemFromNestedPtrsPvPxi(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef %3)
          to label %bb.b unwind label %.thread    ; 2 uses

.thread:                                          ; preds = %._Z22fast_getSubQuregValuesxPiibPx.exit_crit_edge.us
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.preheader:                                       ; preds = %.preheader.lr.ph.thread, %bb.d
  %.039 = phi i64 [ %i.ay, %bb.d ], [ 0, %.preheader.lr.ph.thread ] ; 2 uses
  %i.at = invoke { double, double } @_Z26util_getElemFromNestedPtrsPvPxi(ptr noundef %1, ptr noundef null, i32 noundef 0)
          to label %bb.d unwind label %.split     ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.d, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit.thread, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %.sroa.11.054 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit.thread ], [ null, %bb.d ], [ %i.f, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.029.052 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit.thread ], [ null, %bb.d ], [ %i.e, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit ], [ %i.e, %bb.b ] ; 4 uses
  %.sroa.3.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload73 = load ptr, ptr %.sroa.3.0..sroa_idx72, align 8
  %.sroa.4.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload75 = load ptr, ptr %.sroa.4.0..sroa_idx74, align 8
  %.sroa.5.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload77 = load ptr, ptr %.sroa.5.0..sroa_idx76, align 8
  %.sroa.6.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload79 = load ptr, ptr %.sroa.6.0..sroa_idx78, align 8
  %.sroa.7.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload81 = load ptr, ptr %.sroa.7.0..sroa_idx80, align 8
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.882.0.copyload = load ptr, ptr %.sroa.882.0..sroa_idx, align 8
  invoke void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.syncDiagMatr)
          to label %.noexc20 unwind label %bb.g

.noexc20:                                         ; preds = %._crit_edge
  %i.au = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.882.0.copyload)
          to label %.noexc21 unwind label %bb.g

.noexc21:                                         ; preds = %.noexc20
  br i1 %i.au, label %bb.c, label %_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i

bb.c:                                             ; preds = %.noexc21
  invoke void @_Z16gpu_copyCpuToGpu8DiagMatr(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0)
          to label %_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i unwind label %bb.g

_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i: ; preds = %bb.c, %.noexc21
  store i32 1, ptr %.sroa.7.0.copyload81, align 4, !tbaa !47
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload73)
          to label %.noexc23 unwind label %bb.g

.noexc23:                                         ; preds = %_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload75)
          to label %.noexc24 unwind label %bb.g

.noexc24:                                         ; preds = %.noexc23
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload77)
          to label %.noexc25 unwind label %bb.g

.noexc25:                                         ; preds = %.noexc24
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.6.0.copyload79)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %.preheader
  %i.av = extractvalue { double, double } %i.at, 0
  %i.aw = extractvalue { double, double } %i.at, 1
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.039 ; 2 uses
  store double %i.av, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store double %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !30
  %i.ay = add nuw nsw i64 %.039, 1                ; 2 uses
  %exitcond43.not = icmp eq i64 %i.ay, %i.n
  br i1 %exitcond43.not, label %._crit_edge, label %.preheader, !llvm.loop !110

.split:                                           ; preds = %.preheader
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %.noexc25
  %.not.i.i.i = icmp eq ptr %.sroa.029.052, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = ptrtoint ptr %.sroa.11.054 to i64
  %i.bb = ptrtoint ptr %.sroa.029.052 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.052, i64 noundef %i.bc) #19
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %.noexc25, %.noexc24, %.noexc23, %_Z21validateAndSyncMatrixI8DiagMatrEvT_PKc.exit.i, %bb.c, %.noexc20, %._crit_edge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %.sroa.11.053 = phi ptr [ %.sroa.11.054, %bb.g ], [ null, %.split ]
  %.sroa.029.051 = phi ptr [ %.sroa.029.052, %bb.g ], [ null, %.split ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.az, %.split ] ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.051, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIxSaIxEED2Ev.exit28, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.pn.pn66 = phi { ptr, i32 } [ %i.as, %.thread ], [ %.pn.pn, %bb.h ]
  %.sroa.029.05165 = phi ptr [ %i.e, %.thread ], [ %.sroa.029.051, %bb.h ] ; 2 uses
  %.sroa.11.05364 = phi ptr [ %i.f, %.thread ], [ %.sroa.11.053, %bb.h ]
  %i.be = ptrtoint ptr %.sroa.11.05364 to i64
  %i.bf = ptrtoint ptr %.sroa.029.05165 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.05165, i64 noundef %i.bg) #19
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit28

_ZNSt6vectorIxSaIxEED2Ev.exit28:                  ; preds = %bb.i, %bb.h
  %.pn.pn67 = phi { ptr, i32 } [ %.pn.pn66, %bb.i ], [ %.pn.pn, %bb.h ]
  resume { ptr, i32 } %.pn.pn67
}

declare { double, double } @_Z26util_getElemFromNestedPtrsPvPxi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setFullStateDiagMatrFromMultiDimLists(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.setFullStateDiagMatrFromMultiDimLists)
  %i.a = load i32, ptr %0, align 8, !tbaa !54
  tail call void @_Z27validate_multiVarFuncQubitsiPiiPKc(i32 noundef %i.a, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @__func__.setFullStateDiagMatrFromMultiDimLists)
  tail call void @_Z47cpu_fullstatediagmatr_setElemsFromMultiDimLists17FullStateDiagMatrPvPii(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.0.copyload6 = load ptr, ptr %.sroa.3.0..sroa_idx5, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0.copyload8 = load ptr, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0.copyload10 = load ptr, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0.copyload12 = load ptr, ptr %.sroa.6.0..sroa_idx11, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.7.0.copyload14 = load ptr, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.815.0.copyload = load ptr, ptr %.sroa.815.0..sroa_idx, align 8
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.syncFullStateDiagMatr)
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.815.0.copyload)
  br i1 %i.b, label %bb.b, label %syncFullStateDiagMatr.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu17FullStateDiagMatr(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0)
  br label %syncFullStateDiagMatr.exit

syncFullStateDiagMatr.exit:                       ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.7.0.copyload14, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload6)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload8)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload10)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.6.0.copyload12)
  ret void
}

declare void @_Z47cpu_fullstatediagmatr_setElemsFromMultiDimLists17FullStateDiagMatrPvPii(ptr noundef byval(%struct.FullStateDiagMatr) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @reportCompMatr1(ptr nofree noundef readonly byval(%struct.CompMatr1) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validateAndPrintMatrixI9CompMatr1EvT_PKc(ptr noundef nonnull byval(%struct.CompMatr1) align 8 %0, ptr noundef nonnull @__func__.reportCompMatr1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z22validateAndPrintMatrixI9CompMatr1EvT_PKc(ptr noundef byval(%struct.CompMatr1) align 8 %0, ptr noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_Z21validate_matrixFields9CompMatr1PKc(ptr noundef nonnull byval(%struct.CompMatr1) align 8 %0, ptr noundef %1)
  tail call void @_Z37validate_numReportedNewlinesAboveZeroPKc(ptr noundef nonnull @__func__._Z22validateAndPrintMatrixI9CompMatr1EvT_PKc)
  %i.b = load i32, ptr %0, align 8, !tbaa !28
  %i.c = tail call noundef i64 @_Z32mem_getLocalMatrixMemoryRequiredibi(i32 noundef %i.b, i1 noundef zeroext true, i32 noundef 1) ; 0 uses
  tail call void @_Z12print_header9CompMatr1m(ptr noundef nonnull byval(%struct.CompMatr1) align 8 %0, i64 noundef 80)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !58
  %i.e = load ptr, ptr @_ZL17defaultMatrIndentB5cxx11, align 8, !tbaa !61 ; 2 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 8), align 8, !tbaa !62 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.f, ptr %i.a, align 8, !tbaa !63
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
end_hunk_0
