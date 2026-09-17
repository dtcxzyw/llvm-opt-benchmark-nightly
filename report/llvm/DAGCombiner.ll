Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN4llvm14SDPatternMatch8sd_matchINS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEEEEbNS_7SDValueEOT_:bb.a
  %.not.i.i.i = icmp eq ptr %.sroa.09.0.copyload.i.i.i, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.03.0.copyload44.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !74
  br label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit30.i.i.i

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %.split.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.06.0.copyload.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !74 ; 4 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !193  ; 2 uses
  %.not.i25.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i25.i.i.i, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit27.i.i.i, label %.split43.i.i.i

.split43.i.i.i:                                   ; preds = %bb.c
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.27.0.copyload.i.i.i = load i32, ptr %.sroa.27.0..sroa_idx.i.i.i, align 8, !tbaa !198
  %i.s = icmp eq ptr %i.r, %.sroa.06.0.copyload.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, %.sroa.27.0.copyload.i.i.i
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %bb.f, label %bb.d

_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit27.i.i.i: ; preds = %bb.c
  %.not56.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i, null
  br i1 %.not56.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit27.i.i.i, %.split43.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit30.i.i.i, label %..split54_crit_edge.i.i.i

..split54_crit_edge.i.i.i:                        ; preds = %bb.d
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %.split54.i.i.i

.split54.i.i.i:                                   ; preds = %..split54_crit_edge.i.i.i, %.thread48.i.i.i
  %i.x = phi i32 [ %i.k, %.thread48.i.i.i ], [ %.pre.i.i.i, %..split54_crit_edge.i.i.i ]
  %.sroa.03.0.copyload52.i.i.i = phi ptr [ %.sroa.03.0.copyload49.i.i.i, %.thread48.i.i.i ], [ %.sroa.06.0.copyload.i.i.i, %..split54_crit_edge.i.i.i ]
  %.sroa.24.0.copyload53.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.24.0.copyload53.i.i.i = load i32, ptr %.sroa.24.0.copyload53.in.i.i.i, align 8, !tbaa !198
  %i.y = icmp eq ptr %i.h, %.sroa.03.0.copyload52.i.i.i
  %i.z = icmp eq i32 %i.x, %.sroa.24.0.copyload53.i.i.i
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.e, label %_ZN4llvm14SDPatternMatch8sd_matchIRNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_.exit

_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit30.i.i.i: ; preds = %bb.d, %.thread.i.i.i
  %.sroa.03.0.copyload47.i.i.i = phi ptr [ %.sroa.03.0.copyload44.i.i.i, %.thread.i.i.i ], [ %.sroa.06.0.copyload.i.i.i, %bb.d ]
  %.not57.i.i.i = icmp eq ptr %.sroa.03.0.copyload47.i.i.i, null
  br i1 %.not57.i.i.i, label %_ZN4llvm14SDPatternMatch8sd_matchIRNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit30.i.i.i, %.split54.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !193 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i31.i.i.i, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit33.i.i.i, label %.split55.i.i.i

.split55.i.i.i:                                   ; preds = %bb.e
  %i.ad = icmp eq ptr %i.ac, %.sroa.09.0.copyload.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, %.sroa.210.0.copyload.i.i.i
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.f, label %_ZN4llvm14SDPatternMatch8sd_matchIRNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_.exit

_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit33.i.i.i: ; preds = %bb.e
  %.not58.i.i.i = icmp eq ptr %.sroa.09.0.copyload.i.i.i, null
  br i1 %.not58.i.i.i, label %_ZN4llvm14SDPatternMatch8sd_matchIRNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit33.i.i.i, %.split55.i.i.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit27.i.i.i, %.split43.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.ai, align 8, !tbaa !198 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !198
  %i.ak = and i32 %.sroa.0.0.copyload.i.i.i.i, %.sroa.01.0.copyload.i.i.i
  %i.al = icmp eq i32 %i.ak, %.sroa.01.0.copyload.i.i.i
  br label %_ZN4llvm14SDPatternMatch8sd_matchIRNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_.exit

_ZN4llvm14SDPatternMatch8sd_matchIRNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_.exit: ; preds = %bb.a, %.split54.i.i.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit30.i.i.i, %.split55.i.i.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit33.i.i.i, %bb.f
  %.1.i.i.i = phi i1 [ false, %bb.a ], [ %i.al, %bb.f ], [ false, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit33.i.i.i ], [ false, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit30.i.i.i ], [ false, %.split54.i.i.i ], [ false, %.split55.i.i.i ]
  ret i1 %.1.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt6isMaskEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !405  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !75     ; 3 uses
  %.not.i = icmp ne i64 %i.d, 0
  %i.e = add i64 %i.d, 1
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i1 %.not.i, %i.g
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  %i.k = add i32 %i.j, %i.i
  %i.l = icmp eq i32 %i.k, %i.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.c ], [ %i.l, %bb.d ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmeoENS_5APIntERKS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr nofree noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !405  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !75
  %i.e = load i64, ptr %1, align 8, !tbaa !75
  %i.f = xor i64 %i.e, %i.d                       ; 2 uses
  store i64 %i.f, ptr %1, align 8, !tbaa !75
  br label %_ZN4llvm5APInteOERKS0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm5APInt17xorAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #36
  %.pre = load i32, ptr %i.a, align 8, !tbaa !405
  %.pre1 = load i64, ptr %1, align 8
  br label %_ZN4llvm5APInteOERKS0_.exit

_ZN4llvm5APInteOERKS0_.exit:                      ; preds = %bb.b, %bb.c
  %i.g = phi i64 [ %i.f, %bb.b ], [ %.pre1, %bb.c ]
  %i.h = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !405
  store i64 %i.g, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !405
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm14SDPatternMatch8sd_matchINS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_(ptr %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(408) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !876
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit

_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !877
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.f = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES5_Lb1ELb0EEENS0_12MaxMin_matchIS5_S5_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.f, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.h = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.h, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_NS0_12umax_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.j, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.l = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_NS0_12umax_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit

_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit: ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, %bb.c, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.d, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i
  %i.o = phi i1 [ true, %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit ], [ true, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i ], [ true, %bb.d ], [ %i.n, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SDPatternMatch10m_SMaxLikeINS0_10Value_bindINS0_11Value_matchEEES4_EEDaRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::SDPatternMatch::Or.480") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i11 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.485" }, align 4 ; 2 uses
  %3 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match", align 8 ; 3 uses
  %.sroa.4.i6 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.493" }, align 4 ; 2 uses
  %4 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.492", align 8 ; 3 uses
  %.sroa.4.i = alloca <{ [4 x i8], %"struct.llvm::SDPatternMatch::Value_bind.258" }>, align 4 ; 2 uses
  %5 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.499", align 8 ; 3 uses
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.8..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %.sroa.4.i6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.8..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.4.i11, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 190, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.i11, i64 36, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 190, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.i6, i64 36, i1 false)
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 188, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i, i64 28, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %.sroa.726.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm14SDPatternMatch8sd_matchINS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_(ptr %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(312) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !876
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit

_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !877
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.f = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEENS0_12MaxMin_matchIS3_S3_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.f, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.h = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES5_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(60) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.h, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.j = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES5_NS0_12umin_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.j, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.l = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES5_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(60) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES5_NS0_12umin_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit

_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit: ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, %bb.c, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.d, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i
  %i.o = phi i1 [ true, %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit ], [ true, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i ], [ true, %bb.d ], [ %i.n, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SDPatternMatch10m_SMinLikeINS0_11Value_matchES2_EEDaRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::SDPatternMatch::Or.500") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i11 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.506" }, align 4 ; 2 uses
  %3 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.505", align 8 ; 3 uses
  %.sroa.4.i6 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.514" }, align 4 ; 2 uses
  %4 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.513", align 8 ; 3 uses
  %.sroa.4.i = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::Value_match" }, align 4 ; 2 uses
  %5 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.520", align 8 ; 3 uses
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.8..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %.sroa.4.i6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.8..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.4.i11, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 189, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i11, i64 28, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 189, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i6, i64 28, i1 false)
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 187, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i, i64 20, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %.sroa.726.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm14SDPatternMatch8sd_matchINS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_(ptr %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(408) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !876
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit

_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !877
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.f = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES5_Lb1ELb0EEENS0_12MaxMin_matchIS5_S5_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.f, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.h = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.h, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_NS0_12umin_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.j, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.l = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_NS0_12umin_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit

_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit: ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, %bb.c, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.d, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i
  %i.o = phi i1 [ true, %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit ], [ true, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i ], [ true, %bb.d ], [ %i.n, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SDPatternMatch10m_SMinLikeINS0_10Value_bindINS0_11Value_matchEEES4_EEDaRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::SDPatternMatch::Or.521") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i11 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.485" }, align 4 ; 2 uses
  %3 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.526", align 8 ; 3 uses
  %.sroa.4.i6 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.493" }, align 4 ; 2 uses
  %4 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.529", align 8 ; 3 uses
  %.sroa.4.i = alloca <{ [4 x i8], %"struct.llvm::SDPatternMatch::Value_bind.258" }>, align 4 ; 2 uses
  %5 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.532", align 8 ; 3 uses
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.8..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %.sroa.4.i6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.8..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.4.i11, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 189, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.i11, i64 36, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 189, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.i6, i64 36, i1 false)
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 187, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i, i64 28, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %.sroa.726.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm14SDPatternMatch8sd_matchINS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_(ptr %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(312) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !876
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit

_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !877
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.f = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEENS0_12MaxMin_matchIS3_S3_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.f, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.h = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES5_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(60) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.h, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.j = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES5_NS0_12umax_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.j, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.l = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES5_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(60) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES5_NS0_12umax_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit

_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit: ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, %bb.c, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.d, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i
  %i.o = phi i1 [ true, %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit ], [ true, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i ], [ true, %bb.d ], [ %i.n, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SDPatternMatch10m_SMaxLikeINS0_11Value_matchES2_EEDaRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::SDPatternMatch::Or.533") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i11 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.506" }, align 4 ; 2 uses
  %3 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.538", align 8 ; 3 uses
  %.sroa.4.i6 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.514" }, align 4 ; 2 uses
  %4 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.541", align 8 ; 3 uses
  %.sroa.4.i = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::Value_match" }, align 4 ; 2 uses
  %5 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.544", align 8 ; 3 uses
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.8..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %.sroa.4.i6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.8..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.4.i11, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 190, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i11, i64 28, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 190, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i6, i64 28, i1 false)
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 188, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i, i64 20, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %.sroa.726.0..sroa_idx, align 8
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getNegativeENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm14SDPatternMatch8sd_matchINS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_(ptr %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(408) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !876
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit

_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !877
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.f = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES5_Lb1ELb0EEENS0_12MaxMin_matchIS5_S5_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.f, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.h = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.h, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_NS0_12smax_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.j, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.l = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_NS0_12smax_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit

_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit: ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, %bb.c, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.d, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i
  %i.o = phi i1 [ true, %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit ], [ true, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i ], [ true, %bb.d ], [ %i.n, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SDPatternMatch10m_UMaxLikeINS0_10Value_bindINS0_11Value_matchEEES4_EEDaRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::SDPatternMatch::Or.545") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i11 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.485" }, align 4 ; 2 uses
  %3 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.550", align 8 ; 3 uses
  %.sroa.4.i6 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.493" }, align 4 ; 2 uses
  %4 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.553", align 8 ; 3 uses
  %.sroa.4.i = alloca <{ [4 x i8], %"struct.llvm::SDPatternMatch::Value_bind.258" }>, align 4 ; 2 uses
  %5 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.556", align 8 ; 3 uses
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.8..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %.sroa.4.i6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.8..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.4.i11, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 188, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.i11, i64 36, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 188, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.i6, i64 36, i1 false)
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 190, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i, i64 28, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %.sroa.726.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm14SDPatternMatch8sd_matchINS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_(ptr %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(312) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !876
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit

_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !877
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.f = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEENS0_12MaxMin_matchIS3_S3_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.f, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.h = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES5_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(60) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.h, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.j = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES5_NS0_12smin_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.j, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.l = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES5_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(60) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES5_NS0_12smin_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit

_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit: ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, %bb.c, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.d, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i
  %i.o = phi i1 [ true, %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit ], [ true, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i ], [ true, %bb.d ], [ %i.n, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SDPatternMatch10m_UMinLikeINS0_11Value_matchES2_EEDaRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::SDPatternMatch::Or.557") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i11 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.506" }, align 4 ; 2 uses
  %3 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.562", align 8 ; 3 uses
  %.sroa.4.i6 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.514" }, align 4 ; 2 uses
  %4 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.565", align 8 ; 3 uses
  %.sroa.4.i = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::Value_match" }, align 4 ; 2 uses
  %5 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.568", align 8 ; 3 uses
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.8..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %.sroa.4.i6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.8..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.4.i11, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 187, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i11, i64 28, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 187, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i6, i64 28, i1 false)
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 189, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i, i64 20, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %.sroa.726.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm14SDPatternMatch8sd_matchINS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_(ptr %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(408) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !876
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit

_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !877
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.f = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES5_Lb1ELb0EEENS0_12MaxMin_matchIS5_S5_NS0_12umin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.f, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.h = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.h, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_NS0_12smin_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.j, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.l = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(76) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES7_NS0_12smin_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit

_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12umin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES6_EEESE_Lb1ELb0EEENS8_ISE_SE_NS0_12smin_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSC_IJNS0_14Negative_matchES6_EEESK_Lb1ELb0EEENS8_ISK_SK_SG_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit: ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, %bb.c, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.d, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i
  %i.o = phi i1 [ true, %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit ], [ true, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i ], [ true, %bb.d ], [ %i.n, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_10Value_bindINS0_11Value_matchEEEEEES8_Lb1ELb0EEENS0_12MaxMin_matchIS8_S8_NS0_12smin_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SDPatternMatch10m_UMinLikeINS0_10Value_bindINS0_11Value_matchEEES4_EEDaRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::SDPatternMatch::Or.569") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i11 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.485" }, align 4 ; 2 uses
  %3 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.574", align 8 ; 3 uses
  %.sroa.4.i6 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.493" }, align 4 ; 2 uses
  %4 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.577", align 8 ; 3 uses
  %.sroa.4.i = alloca <{ [4 x i8], %"struct.llvm::SDPatternMatch::Value_bind.258" }>, align 4 ; 2 uses
  %5 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.580", align 8 ; 3 uses
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.8..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %.sroa.4.i6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.8..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.4.i11, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 187, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.i11, i64 36, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 187, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.i6, i64 36, i1 false)
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 189, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i, i64 28, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %.sroa.726.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm14SDPatternMatch8sd_matchINS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEEEEbNS_7SDValueEPKNS_12SelectionDAGEOT_(ptr %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(312) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::SDPatternMatch::BasicMatchContext", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !876
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit

_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !877
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.f = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_11Value_matchES3_Lb1ELb0EEENS0_12MaxMin_matchIS3_S3_NS0_12umax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.f, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.h = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES5_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(60) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.h, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.j = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES5_NS0_12smax_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.j, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.l = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES5_Lb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(60) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit, label %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i

_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch12MaxMin_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES5_NS0_12smax_pred_tyELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %0, i32 %1)
  br label %_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit

_ZN4llvm14SDPatternMatch16sd_context_matchIRNS0_2OrIJNS2_IJNS0_15BinaryOpc_matchINS0_11Value_matchES4_Lb1ELb0EEENS0_12MaxMin_matchIS4_S4_NS0_12umax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INS0_3AndIJNS0_17NonNegative_matchES4_EEESC_Lb1ELb0EEENS6_ISC_SC_NS0_12smax_pred_tyELb1ELb0EEEEEENS2_IJNS3_INSA_IJNS0_14Negative_matchES4_EEESI_Lb1ELb0EEENS6_ISI_SI_SE_Lb1ELb0EEEEEEEEENS0_17BasicMatchContextEEEbNS_7SDValueERKT0_OT_.exit: ; preds = %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit, %bb.c, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.d, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i
  %i.o = phi i1 [ true, %_ZN4llvm14SDPatternMatch17BasicMatchContextC2EPKNS_12SelectionDAGE.exit ], [ true, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_17NonNegative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i ], [ true, %bb.d ], [ %i.n, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_3AndIJNS0_14Negative_matchENS0_11Value_matchEEEES6_Lb1ELb0EEENS0_12MaxMin_matchIS6_S6_NS0_12smax_pred_tyELb1ELb0EEEEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SDPatternMatch10m_UMaxLikeINS0_11Value_matchES2_EEDaRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::SDPatternMatch::Or.581") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i11 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.506" }, align 4 ; 2 uses
  %3 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.586", align 8 ; 3 uses
  %.sroa.4.i6 = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::And.514" }, align 4 ; 2 uses
  %4 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.589", align 8 ; 3 uses
  %.sroa.4.i = alloca { [4 x i8], %"struct.llvm::SDPatternMatch::Value_match" }, align 4 ; 2 uses
  %5 = alloca %"struct.llvm::SDPatternMatch::MaxMin_match.592", align 8 ; 3 uses
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.8..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %.sroa.4.i6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.8..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %.sroa.4.i11, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 188, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i11, i64 28, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 188, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i6, i64 28, i1 false)
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 190, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.i, i64 20, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %.sroa.726.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt6isMaskEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !405  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !75
  %i.e = sub i32 64, %1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 -1, %i.f
  %i.h = icmp eq i64 %i.d, %i.g
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  %i.l = add i32 %i.k, %1
  %i.m = icmp eq i32 %i.l, %i.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.c ], [ %i.m, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm14SDPatternMatch16Constant64_matchImE5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 1, ptr %i.a, align 8, !tbaa !405
  store i64 0, ptr %4, align 8, !tbaa !75
  %.not.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i, label %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72
  switch i32 %i.c, label %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !403  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !405  ; 3 uses
  %i.i = icmp ult i32 %i.h, 65
  br i1 %i.i, label %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread, label %bb.d

_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread: ; preds = %bb.c
  %i.j = load i64, ptr %i.f, align 8, !tbaa !75   ; 2 uses
  store i64 %i.j, ptr %4, align 8, !tbaa !75
  store i32 %i.h, ptr %i.a, align 8, !tbaa !405
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.f) #36
  br label %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread

_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit: ; preds = %bb.b, %bb.a
  %i.k = call noundef zeroext i1 @_ZN4llvm3ISD21isConstantSplatVectorEPKNS_6SDNodeERNS_5APIntE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %4) #36
  br i1 %i.k, label %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread, label %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit._ZNK4llvm5APInt12tryZExtValueEv.exit_crit_edge

_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit._ZNK4llvm5APInt12tryZExtValueEv.exit_crit_edge: ; preds = %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit
  %.pre14 = load i32, ptr %i.a, align 8, !tbaa !405
  br label %_ZNK4llvm5APInt12tryZExtValueEv.exit

_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread: ; preds = %bb.d, %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit
  %.pr = load i32, ptr %i.a, align 8, !tbaa !405  ; 3 uses
  %i.l = icmp ult i32 %.pr, 65
  br i1 %i.l, label %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread._crit_edge, label %bb.f

_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread._crit_edge: ; preds = %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread
  %.pre = load i64, ptr %4, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread._crit_edge, %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread
  %i.m = phi i64 [ %i.j, %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread ], [ %.pre, %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread._crit_edge ]
  %i.n = phi i32 [ %i.h, %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread ], [ %.pr, %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread._crit_edge ] ; 2 uses
  %.neg.i.i.i = add nsw i32 %i.n, -64
  %i.o = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 false)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = add nsw i32 %.neg.i.i.i, %i.p
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

bb.f:                                             ; preds = %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread
  %i.r = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %4) #37
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.f, %bb.e
  %i.s = phi i1 [ true, %bb.e ], [ false, %bb.f ]
  %i.t = phi i32 [ %i.n, %bb.e ], [ %.pr, %bb.f ] ; 3 uses
  %.0.i.i.i = phi i32 [ %i.q, %bb.e ], [ %i.r, %bb.f ]
  %i.u = sub i32 %i.t, %.0.i.i.i
  %i.v = icmp ult i32 %i.u, 65
  br i1 %i.v, label %bb.g, label %_ZNK4llvm5APInt12tryZExtValueEv.exit

bb.g:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %i.w = load ptr, ptr %4, align 8
  %spec.select.i.i = select i1 %i.s, ptr %4, ptr %i.w
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !75
  %i.x = load ptr, ptr %0, align 8, !tbaa !878, !nonnull !53, !align !197
  store i64 %.0.i.i, ptr %i.x, align 8, !tbaa !367
  br label %_ZNK4llvm5APInt12tryZExtValueEv.exit

_ZNK4llvm5APInt12tryZExtValueEv.exit:             ; preds = %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit._ZNK4llvm5APInt12tryZExtValueEv.exit_crit_edge, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.g
  %i.y = phi i32 [ %.pre14, %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit._ZNK4llvm5APInt12tryZExtValueEv.exit_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ]
  %.1 = phi i1 [ false, %_ZN4llvm14SDPatternMatch17ConstantInt_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit._ZNK4llvm5APInt12tryZExtValueEv.exit_crit_edge ], [ true, %bb.g ], [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ]
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit

bb.h:                                             ; preds = %_ZNK4llvm5APInt12tryZExtValueEv.exit
  %i.aa = load ptr, ptr %4, align 8, !tbaa !75    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #38
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInt12tryZExtValueEv.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEENS0_13AllOnes_matchELb1ELb0EE5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !562
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN4llvm14SDPatternMatch10Value_bindINS0_11Value_matchEE5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit31.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204  ; 10 uses
  %.sroa.09.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !74 ; 3 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.210.0.copyload = load i32, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !198 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.j = icmp eq ptr %i.i, %.sroa.09.0.copyload
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, %.sroa.210.0.copyload
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZN4llvm14SDPatternMatch10Value_bindINS0_11Value_matchEE5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread52

_ZN4llvm14SDPatternMatch10Value_bindINS0_11Value_matchEE5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread52: ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.03.0.copyload54 = load ptr, ptr %i.o, align 8, !tbaa !74
  %.sroa.24.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.24.0.copyload56 = load i32, ptr %.sroa.24.0..sroa_idx55, align 8, !tbaa !198
  br label %.split.i26

_ZN4llvm14SDPatternMatch11Value_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %.sroa.09.0.copyload, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch10Value_bindINS0_11Value_matchEE5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread, label %bb.c

_ZN4llvm14SDPatternMatch10Value_bindINS0_11Value_matchEE5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.thread.thread: ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.03.0.copyload43 = load ptr, ptr %i.p, align 8, !tbaa !74
  %.sroa.24.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.24.0.copyload45 = load i32, ptr %.sroa.24.0..sroa_idx44, align 8, !tbaa !198
  br label %_ZN4llvm14SDPatternMatch11Value_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.i29

bb.c:                                             ; preds = %_ZN4llvm14SDPatternMatch11Value_match5matchINS_17EmptyMatchContextEEEbRKT_NS_7SDValueE.exit.i, %.split.i
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !851, !nonnull !53, !align !197 ; 2 uses
  store ptr %.sroa.09.0.copyload, ptr %i.q, align 8, !tbaa !74
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.sroa.210.0.copyload, ptr %.sroa.33.0..sroa_idx.i, align 8, !tbaa !198
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.06.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !74
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !198
  %i.t = load i8, ptr %i.r, align 8, !tbaa !879, !range !52, !noundef !53
  %i.u = trunc nuw i8 %i.t to i1
end_hunk_0
