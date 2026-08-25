Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SISpillUtils?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm25clearDebugInfoForSpillFIsERNS_16MachineFrameInfoERNS_17MachineBasicBlockERKNS_9BitVectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(728) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(360) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.019.025 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.not2126 = icmp eq ptr %.sroa.019.025, %i.b
  br i1 %.not2126, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph28, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.019.027 = phi ptr [ %.sroa.019.025, %.lr.ph28 ], [ %.sroa.019.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 2 uses
  %i.f = and i32 %i.e, -2
  %spec.select.i = icmp eq i32 %i.f, 14
  br i1 %spec.select.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.e, 14                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 40
  %i.k = load i24, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ne i24 %i.k, 0
  %..i.i = zext i1 %i.l to i64
  %i.m = zext i24 %i.k to i64
  %i.n = add nsw i64 %i.m, -2
  %.sroa.05.0.idx.i.a = select i1 %i.g, i64 0, i64 64
  %.sroa.05.0.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.05.0.idx.i.a ; 2 uses
  %.sroa.5.0.i = select i1 %i.g, i64 %..i.i, i64 %i.n ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.5.0.i, 5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %.idx
  %.not23 = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %.024 = phi ptr [ %i.ai, %bb.g ], [ %.sroa.05.0.i, %bb.c ] ; 4 uses
  %i.p = load i32, ptr %.024, align 8
  %i.q = and i32 %i.p, 255
  %i.r = icmp eq i32 %i.q, 5
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 4 uses
  %i.u = icmp slt i32 %i.t, 0
  %i.v = load i32, ptr %i.c, align 8
  %i.w = sub nsw i32 0, %i.v
  %i.x = icmp sge i32 %i.t, %i.w
  %i.y = select i1 %i.u, i1 %i.x, i1 false
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = and i32 %i.t, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = lshr i32 %i.t, 6
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = load ptr, ptr %2, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = and i64 %i.ag, %i.ab
  %.not22 = icmp eq i64 %i.ah, 0
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32) %.024, i32 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.024, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.o
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.g, %bb.c, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.027) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.019.027, align 8
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  %i.am = and i32 %i.al, 8
  %.not34.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.ao, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.019.027, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !33
  %i.ar = and i32 %i.aq, 8
  %.not3.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !34

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %.loopexit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.019.027, %.loopexit ], [ %.sroa.019.027, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.ao, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.019.0 = load ptr, ptr %i.as, align 8, !tbaa !8 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.019.0, %i.b
  br i1 %.not21, label %._crit_edge, label %bb.b
}

declare void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32), i32, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb1EvEELb1EEE", !10, i64 0, !12, i64 8}
!10 = !{!"_ZTSN4llvm14PointerIntPairIPNS_15ilist_node_baseILb1EvEELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !11, i64 0}
!11 = !{!"_ZTSN4llvm6detail13PunnedPointerIPNS_15ilist_node_baseILb1EvEEEE", !6, i64 0}
!12 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb1EvEE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !5, i64 52}
!15 = !{!"_ZTSN4llvm12MachineInstrE", !16, i64 0, !20, i64 16, !21, i64 24, !22, i64 32, !5, i64 40, !23, i64 43, !5, i64 44, !6, i64 48, !5, i64 52, !5, i64 56, !24, i64 64, !25, i64 72}
!16 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_12MachineInstrENS_17MachineBasicBlockEJNS_23ilist_sentinel_trackingILb1EEEEEE", !17, i64 0}
!17 = !{!"_ZTSN4llvm10ilist_nodeINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !18, i64 0}
!18 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !19, i64 0}
!19 = !{!"_ZTSN4llvm15ilist_node_baseILb1EvEE", !9, i64 0}
!20 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !13, i64 0}
!21 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !13, i64 0}
!22 = !{!"p1 _ZTSN4llvm14MachineOperandE", !13, i64 0}
!23 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EE8CapacityE", !6, i64 0}
!24 = !{!"_ZTSN4llvm14PointerSumTypeINS_12MachineInstr20ExtraInfoInlineKindsEJNS_20PointerSumTypeMemberILm0EPNS_17MachineMemOperandENS_21PointerLikeTypeTraitsIS5_EEEENS3_ILm1EPNS_8MCSymbolENS6_ISA_EEEENS3_ILm2ESA_SB_EENS3_ILm3EPNS1_9ExtraInfoENS6_ISF_EEEEEEE", !6, i64 0}
!25 = !{!"_ZTSN4llvm8DebugLocE", !26, i64 0}
!26 = !{!"p1 _ZTSN4llvm10DILocationE", !13, i64 0}
!27 = !{!15, !22, i64 32}
!28 = !{!6, !6, i64 0}
!29 = !{!30, !13, i64 0}
!30 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !13, i64 0, !5, i64 8, !5, i64 12}
!31 = !{!32, !32, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = !{!15, !5, i64 44}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
end_hunk_0
