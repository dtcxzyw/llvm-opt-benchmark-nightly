inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
          to label %bb.ep unwind label %bb.pk     ; 3 uses

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  store ptr null, ptr %i.afk, align 8, !tbaa !392
  %i.afl = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 2 uses
  %116 = getelementptr inbounds nuw i8, ptr %i.afk, i64 8 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 6 uses
  store ptr %i.afk, ptr %105, align 8, !tbaa !1371
  store ptr %116, ptr %i.afm, align 8, !tbaa !1374
  store ptr %116, ptr %i.afl, align 8, !tbaa !1375
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #56
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.afn = load ptr, ptr @_ZN7testing8internalL21g_injected_test_argvsB5cxx11E, align 8, !tbaa !1379, !noalias !1376 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a

.lr.ph.i:                                         ; preds = %bb.eu, %.noexc531
  %.sroa.06.010.i = phi ptr [ %i.agh, %.noexc531 ], [ %.pr.i, %bb.eu ] ; 2 uses
  %i.agc = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %i.agd = getelementptr inbounds i8, ptr %i.agc, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #56
  %i.age = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #56
  %i.ago = load ptr, ptr %84, align 8, !tbaa !7
  %i.agp = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %i.agq = getelementptr inbounds i8, ptr %i.agp, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #56
  %i.agr = call noalias noundef ptr @strdup(ptr noundef %i.ago) #56
end_hunk_2
begin_hunk_3_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
bb.ew:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #56
  %i.agt = load ptr, ptr %91, align 8, !tbaa !7
  %i.agu = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %i.agv = getelementptr inbounds i8, ptr %i.agu, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #56
  %i.agw = call noalias noundef ptr @strdup(ptr noundef %i.agt) #56
end_hunk_3
begin_hunk_4_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  %i.cjv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cjv, align 8, !tbaa !1110
  %i.cjw = load ptr, ptr %105, align 8, !tbaa !1382 ; 3 uses
  %i.cjx = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %.not4.i = icmp eq ptr %i.cjw, %i.cjx
  br i1 %.not4.i, label %._crit_edge.i, label %.lr.ph.i728

end_hunk_4
begin_hunk_5_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  br i1 %.not.i.i.i.i731, label %_ZN7testing8internal9ArgumentsD2Ev.exit, label %bb.qa

bb.qa:                                            ; preds = %._crit_edge.i
  %i.cjz = load ptr, ptr %i.afl, align 8, !tbaa !1375
  %i.cka = ptrtoint ptr %i.cjz to i64
  %i.ckb = ptrtoint ptr %i.cjy to i64
  %i.ckc = sub i64 %i.cka, %i.ckb
end_hunk_5
begin_hunk_6_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  %i.ckd = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !392
  call void @free(ptr noundef %i.ckd) #56
  %i.cke = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %i.ckf = load ptr, ptr %i.afm, align 8, !tbaa !1382
  %.not.i729 = icmp eq ptr %i.cke, %i.ckf
  br i1 %.not.i729, label %._crit_edge.loopexit.i, label %.lr.ph.i728, !llvm.loop !1549

end_hunk_6
