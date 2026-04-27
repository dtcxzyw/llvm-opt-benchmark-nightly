inline.NumInlined: 5023
inline.NumDeleted: 1781
begin_hunk_0_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr1792 = phi ptr [ %1, %bb.a ], [ %.tr1792.be, %tailrecurse.backedge ] ; 81 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !115 ; 55 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !341 ; 51 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !648
end_hunk_0
begin_hunk_1_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.avl:                                           ; preds = %tailrecurse
  %i.fid = getelementptr inbounds nuw i8, ptr %.tr1792, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #29, !noalias !1313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %83, i8 0, i64 16, i1 false), !noalias !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #29, !noalias !1313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  %i.fie = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.fif = load i64, ptr %i.fie, align 8, !tbaa !138, !noalias !1319 ; 2 uses
  %i.fig = icmp eq i64 %i.fif, 0
  br i1 %i.fig, label %bb.avm, label %_ZN5arrow6StatusD2Ev.exit.i1232

bb.avm:                                           ; preds = %bb.avl
  %i.fih = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.fii = load ptr, ptr %i.fih, align 8, !tbaa !45, !noalias !1319 ; 2 uses
  %i.fij = getelementptr inbounds nuw i8, ptr %i.fii, i64 16
  %i.fik = load ptr, ptr %i.fij, align 8, !tbaa !33, !noalias !1319
end_hunk_1
begin_hunk_2_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29, !noalias !1319
  store i32 0, ptr %i.m, align 4, !tbaa !3, !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29, !noalias !1319
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.fjl = load ptr, ptr %i.fjk, align 8, !tbaa !45, !noalias !1319
  %i.fjm = getelementptr inbounds nuw i8, ptr %i.fjl, i64 16
  %i.fjn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.fjo = load i64, ptr %i.fjn, align 8, !tbaa !647, !noalias !1319
  %i.fjp = shl i64 %i.fjo, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %i.fjm, i64 noundef %i.fjp, i64 noundef 4, ptr noundef nonnull %i.m)
end_hunk_2
