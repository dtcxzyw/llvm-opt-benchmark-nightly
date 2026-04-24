inline.NumInlined: 93
inline.NumDeleted: 35
begin_hunk_0_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac21encodeGainmapMetadataEPKS0_RSt6vectorIhSaIhEE:bb.a

bb.d:                                             ; preds = %bb.aa, %bb.ab, %bb.p
  %spec.select.a = phi i8 [ 0, %bb.p ], [ -128, %bb.ab ], [ -128, %bb.aa ]
  %.2.lcssa = phi i8 [ %.2, %bb.p ], [ 0, %bb.ab ], [ %.2.1, %bb.aa ] ; 2 uses
  %3 = shl nuw nsw i8 %i.f, 6
  %.1106 = or disjoint i8 %3, %spec.select.a
  %i.s = shl nuw nsw i8 %i.h, 2
  %.2107 = or disjoint i8 %.1106, %i.s
  %i.t = trunc nuw i8 %.2.lcssa to i1
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac21decodeGainmapMetadataERKSt6vectorIhSaIhEEPS0_:bb.a
bb.f:                                             ; preds = %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread
  %.pre-phi206 = phi i64 [ %.pre205, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge ], [ %i.k, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread ] ; 2 uses
  %i.af = phi ptr [ %.pre200, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge ], [ %i.h, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread ]
  %i.ag = phi i64 [ 2, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164._crit_edge ], [ 4, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164.thread ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %.not.i165 = icmp ult i64 %i.ag, %.pre-phi206
  br i1 %.not.i165, label %bb.g, label %_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm.exit
end_hunk_1
begin_hunk_2_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac21decodeGainmapMetadataERKSt6vectorIhSaIhEEPS0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ah, align 4, !tbaa !19, !alias.scope !41
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = trunc nuw nsw i64 %i.ag to i32
  %i.aj = trunc nuw nsw i64 %.pre-phi206 to i32
  %i.ak = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ai, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %i.aj) #17 ; 0 uses
  %.pr179 = load i32, ptr %0, align 4, !tbaa !16
end_hunk_2
