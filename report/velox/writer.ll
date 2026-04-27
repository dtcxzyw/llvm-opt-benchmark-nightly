inline.NumInlined: 4544
inline.NumDeleted: 1764
begin_hunk_0_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr1405 = phi ptr [ %1, %bb.a ], [ %.tr1405.be, %tailrecurse.backedge ] ; 81 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr1405, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 59 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !367  ; 51 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !774
end_hunk_0
begin_hunk_1_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.arr:                                           ; preds = %tailrecurse
  %i.fgb = getelementptr inbounds nuw i8, ptr %.tr1405, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26, !noalias !1618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %49, i8 0, i64 16, i1 false), !noalias !1618
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26, !noalias !1618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !1624
  %143 = load ptr, ptr %i.fgb, align 8, !tbaa !99, !noalias !1624 ; 3 uses
  %i.fgc = getelementptr inbounds nuw i8, ptr %143, i64 40
  %i.fgd = load ptr, ptr %i.fgc, align 8, !tbaa !22, !noalias !1624 ; 2 uses
  %i.fge = getelementptr inbounds nuw i8, ptr %i.fgd, i64 16
  %i.fgf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1232

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1232: ; preds = %bb.aru, %bb.art, %bb.arr
  %i.fgo = phi ptr [ %143, %bb.arr ], [ %143, %bb.art ], [ %.pre.i1277, %bb.aru ] ; 2 uses
  %i.fgp = getelementptr inbounds nuw i8, ptr %i.fgo, i64 16
  %i.fgq = load i64, ptr %i.fgp, align 8, !tbaa !122, !noalias !1624
  %i.fgr = shl i64 %i.fgq, 2
end_hunk_2
