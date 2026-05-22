inline.NumInlined: 4308
inline.NumDeleted: 2132
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !21
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !13
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !26
  store ptr %i.u, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.ac, align 8, !tbaa !26
  store i8 0, ptr %i.u, align 8, !tbaa !13
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !64, !alias.scope !668, !noalias !671
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !671, !noalias !668 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26, !alias.scope !671, !noalias !668 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !673
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !668, !noalias !671
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !13, !alias.scope !671, !noalias !668
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !13, !alias.scope !668, !noalias !671
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !26, !alias.scope !671, !noalias !668
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.an = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !26, !alias.scope !668, !noalias !671
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !671, !noalias !668
  store i64 0, ptr %i.ao, align 8, !tbaa !26, !alias.scope !671, !noalias !668
  store i8 0, ptr %i.ag, align 8, !tbaa !13, !alias.scope !671, !noalias !668
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !674

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !64, !alias.scope !675, !noalias !678
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !678, !noalias !675 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !26, !alias.scope !678, !noalias !675 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !680
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !21, !alias.scope !675, !noalias !678
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !13, !alias.scope !678, !noalias !675
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !13, !alias.scope !675, !noalias !678
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !26, !alias.scope !678, !noalias !675
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.bc = phi i64 [ %i.ay, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !26, !alias.scope !675, !noalias !678
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !678, !noalias !675
  store i64 0, ptr %i.bd, align 8, !tbaa !26, !alias.scope !678, !noalias !675
  store i8 0, ptr %i.av, align 8, !tbaa !13, !alias.scope !678, !noalias !675
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !674

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !604
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.q, ptr %0, align 8, !tbaa !605
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !601
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !604
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !11, i64 8}
!8 = !{!"_ZTSN6google8protobuf13json_internal12ResolverPool5FieldE", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24}
!9 = !{!"p1 _ZTSN6google8protobuf13json_internal12ResolverPoolE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN6google8protobuf5FieldE", !10, i64 0}
!12 = !{!"p1 _ZTSN6google8protobuf13json_internal12ResolverPool7MessageE", !10, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"branch_weights", i32 4001, i32 1}
!15 = !{!16, !16, i64 0}
!16 = !{!"_ZTSN6google8protobuf10Field_KindE", !5, i64 0}
!17 = !{!8, !10, i64 24}
!18 = !{!8, !9, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !10, i64 0}
!21 = !{!22, !24, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !25, i64 8, !5, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!24 = !{!"p1 omnipotent char", !10, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!22, !25, i64 8}
!27 = !{!28, !25, i64 0}
!28 = !{!"_ZTSN4absl12lts_202505126StatusE", !25, i64 0}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!12, !12, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !10, i64 0}
!33 = !{!34, !9, i64 0}
!34 = !{!"_ZTSN6google8protobuf13json_internal12ResolverPool7MessageE", !9, i64 0, !35, i64 8, !39, i64 112, !46, i64 120, !54, i64 152}
!35 = !{!"_ZTSN6google8protobuf4TypeE", !36, i64 0, !5, i64 16}
!36 = !{!"_ZTSN6google8protobuf7MessageE", !37, i64 0}
!37 = !{!"_ZTSN6google8protobuf11MessageLiteE", !38, i64 8}
!38 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !25, i64 0}
!39 = !{!"_ZTSSt10unique_ptrIA_N6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIS5_EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataIN6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIA_S4_ELb1ELb1EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIA_S4_EE", !42, i64 0}
!42 = !{!"_ZTSSt5tupleIJPN6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIA_S4_EEE", !43, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIA_S4_EEE", !44, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EPN6google8protobuf13json_internal12ResolverPool5FieldELb0EE", !45, i64 0}
!45 = !{!"p1 _ZTSN6google8protobuf13json_internal12ResolverPool5FieldE", !10, i64 0}
!46 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldENS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKS5_SC_EEEE", !47, i64 0}
!47 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEEE", !48, i64 0}
!48 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEEE", !49, i64 0}
!49 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !50, i64 0}
!50 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !51, i64 0}
!51 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !52, i64 0}
!52 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !25, i64 0, !53, i64 8, !5, i64 16}
!53 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !25, i64 0}
!54 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapIiPKN6google8protobuf13json_internal12ResolverPool5FieldENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS8_EEEE", !55, i64 0}
!55 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEEE", !56, i64 0}
!56 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEEE", !57, i64 0}
!57 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashIiEESt8equal_toIiESaIcEEEE", !58, i64 0}
!58 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashIiEESt8equal_toIiESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !51, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4absl12lts_2025051210WrapUniqueIN6google8protobuf13json_internal12ResolverPool7MessageEEESt10unique_ptrIT_St14default_deleteIS8_EEPS8_: argument 0"}
!61 = distinct !{!61, !"_ZN4absl12lts_2025051210WrapUniqueIN6google8protobuf13json_internal12ResolverPool7MessageEEESt10unique_ptrIT_St14default_deleteIS8_EEPS8_"}
!62 = !{!25, !25, i64 0}
!63 = !{!24, !24, i64 0}
!64 = !{!23, !24, i64 0}
!65 = !{!66, !73, i64 64}
!66 = !{!"_ZTSN6google8protobuf13json_internal12ResolverPoolE", !67, i64 0, !70, i64 32, !73, i64 64}
!67 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISD_EENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKS7_SG_EEEE", !68, i64 0}
!68 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEEE", !69, i64 0}
!69 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEEE", !49, i64 0}
!70 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISD_EENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKS7_SG_EEEE", !71, i64 0}
!71 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEEE", !72, i64 0}
!72 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEEE", !49, i64 0}
!73 = !{!"p1 _ZTSN6google8protobuf4util12TypeResolverE", !10, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"vtable pointer", !6, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE11try_emplaceIS9_Li0EJSI_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISJ_SK_SL_SP_E14const_iteratorEEE5valueEiE4typeELi0EEESM_INSV_8iteratorEbEOST_DpOT1_: argument 0"}
!78 = distinct !{!78, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE11try_emplaceIS9_Li0EJSI_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISJ_SK_SL_SP_E14const_iteratorEEE5valueEiE4typeELi0EEESM_INSV_8iteratorEbEOST_DpOT1_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE16try_emplace_implIS9_JSI_EEESM_INS1_12raw_hash_setISJ_SK_SL_SP_E8iteratorEbEOT_DpOT0_: argument 0"}
!81 = distinct !{!81, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE16try_emplace_implIS9_JSI_EEESM_INS1_12raw_hash_setISJ_SK_SL_SP_E8iteratorEbEOT_DpOT0_"}
!82 = !{!83, !85, i64 16}
!83 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISG_EEEENS2_10StringHashENS2_8StringEqESaIS_IKSA_SJ_EEE8iteratorEbE", !84, i64 0, !85, i64 16}
!84 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8iteratorE", !10, i64 0, !5, i64 8}
!85 = !{!"bool", !5, i64 0}
!86 = !{i8 0, i8 2}
!87 = !{!80, !77}
!88 = !{}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = !{!91, !91, i64 0}
!91 = !{!"p1 _ZTSN6google8protobuf13json_internal12ResolverPool4EnumE", !10, i64 0}
!92 = !{!93, !9, i64 0}
!93 = !{!"_ZTSN6google8protobuf13json_internal12ResolverPool4EnumE", !9, i64 0, !94, i64 8, !95, i64 96}
!94 = !{!"_ZTSN6google8protobuf4EnumE", !36, i64 0, !5, i64 16}
!95 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEEPN6google8protobuf9EnumValueENS0_18container_internal10StringHashENSA_8StringEqESaISt4pairIKS5_S9_EEEE", !96, i64 0}
!96 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPN6google8protobuf9EnumValueEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEE", !97, i64 0}
!97 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPN6google8protobuf9EnumValueEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEE", !49, i64 0}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4absl12lts_2025051210WrapUniqueIN6google8protobuf13json_internal12ResolverPool4EnumEEESt10unique_ptrIT_St14default_deleteIS8_EEPS8_: argument 0"}
!100 = distinct !{!100, !"_ZN4absl12lts_2025051210WrapUniqueIN6google8protobuf13json_internal12ResolverPool4EnumEEESt10unique_ptrIT_St14default_deleteIS8_EEPS8_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE11try_emplaceIS9_Li0EJSI_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISJ_SK_SL_SP_E14const_iteratorEEE5valueEiE4typeELi0EEESM_INSV_8iteratorEbEOST_DpOT1_: argument 0"}
!103 = distinct !{!103, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE11try_emplaceIS9_Li0EJSI_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISJ_SK_SL_SP_E14const_iteratorEEE5valueEiE4typeELi0EEESM_INSV_8iteratorEbEOST_DpOT1_"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE16try_emplace_implIS9_JSI_EEESM_INS1_12raw_hash_setISJ_SK_SL_SP_E8iteratorEbEOT_DpOT0_: argument 0"}
!106 = distinct !{!106, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE16try_emplace_implIS9_JSI_EEESM_INS1_12raw_hash_setISJ_SK_SL_SP_E8iteratorEbEOT_DpOT0_"}
!107 = !{!108, !85, i64 16}
!108 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISG_EEEENS2_10StringHashENS2_8StringEqESaIS_IKSA_SJ_EEE8iteratorEbE", !109, i64 0, !85, i64 16}
!109 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8iteratorE", !10, i64 0, !5, i64 8}
!110 = !{!105, !102}
!111 = !{!52, !25, i64 0}
!112 = !{!53, !25, i64 0}
!113 = !{!114, !4, i64 8}
!114 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !10, i64 0, !4, i64 8, !115, i64 12}
!115 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !4, i64 0}
!116 = !{!45, !45, i64 0}
!117 = !{!114, !10, i64 0}
!118 = !{!8, !12, i64 16}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!10, !10, i64 0}
!122 = distinct !{!122, !123}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = distinct !{!124, !123}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_: argument 0"}
!127 = distinct !{!127, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EJSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSV_8iteratorEbERKST_DpOT1_: argument 0"}
!130 = distinct !{!130, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EJSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSV_8iteratorEbERKST_DpOT1_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE16try_emplace_implIRKNSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_EEESI_INS1_12raw_hash_setISF_SG_SH_SL_E8iteratorEbEOT_DpOT0_: argument 0"}
!133 = distinct !{!133, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE16try_emplace_implIRKNSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_EEESI_INS1_12raw_hash_setISF_SG_SH_SL_E8iteratorEbEOT_DpOT0_"}
!134 = !{!135, !85, i64 16}
!135 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS2_10StringHashENS2_8StringEqESaIS_IKS8_SF_EEE8iteratorEbE", !136, i64 0, !85, i64 16}
!136 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE8iteratorE", !10, i64 0, !5, i64 8}
!137 = !{!132, !129, !126}
!138 = !{!139, !45, i64 16}
!139 = !{!"_ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEE", !140, i64 0, !45, i64 16}
!140 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !25, i64 0, !24, i64 8}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_: argument 0"}
!143 = distinct !{!143, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EJSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSV_8iteratorEbERKST_DpOT1_: argument 0"}
!146 = distinct !{!146, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EJSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSV_8iteratorEbERKST_DpOT1_"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE16try_emplace_implIRKNSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_EEESI_INS1_12raw_hash_setISF_SG_SH_SL_E8iteratorEbEOT_DpOT0_: argument 0"}
!149 = distinct !{!149, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE16try_emplace_implIRKNSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_EEESI_INS1_12raw_hash_setISF_SG_SH_SL_E8iteratorEbEOT_DpOT0_"}
!150 = !{!148, !145, !142}
!151 = !{!152, !45, i64 16}
!152 = !{!"_ZTSSt4pairIKSt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEE", !140, i64 0, !45, i64 16}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!155 = distinct !{!155, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!156 = distinct !{!156, !120}
!157 = !{!"branch_weights", i32 2146410443, i32 1073205}
!158 = distinct !{!158, !123}
!159 = distinct !{!159, !123}
!160 = !{!161, !163, !165}
!161 = distinct !{!161, !162, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_: argument 0"}
!162 = distinct !{!162, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_"}
!163 = distinct !{!163, !164, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE16try_emplace_implIiJSA_EEESH_INS1_12raw_hash_setISB_SE_SG_SK_E8iteratorEbEOT_DpOT0_: argument 0"}
!164 = distinct !{!164, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE16try_emplace_implIiJSA_EEESH_INS1_12raw_hash_setISB_SE_SG_SK_E8iteratorEbEOT_DpOT0_"}
!165 = distinct !{!165, !166, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_: argument 0"}
!166 = distinct !{!166, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_"}
!167 = !{!168, !161, !163, !165}
!168 = distinct !{!168, !169, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE26find_or_prepare_insert_sooIiEESH_INSL_8iteratorEbERKT_: argument 0"}
!169 = distinct !{!169, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE26find_or_prepare_insert_sooIiEESH_INSL_8iteratorEbERKT_"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE30find_or_prepare_insert_non_sooIiEESH_INSL_8iteratorEbERKT_: argument 0"}
!172 = distinct !{!172, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE30find_or_prepare_insert_non_sooIiEESH_INSL_8iteratorEbERKT_"}
!173 = !{!174, !171}
!174 = distinct !{!174, !175, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!175 = distinct !{!175, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!176 = !{!177, !4, i64 0}
!177 = !{!"_ZTSSt4pairIiPKN6google8protobuf13json_internal12ResolverPool5FieldEE", !4, i64 0, !45, i64 8}
!178 = !{!177, !45, i64 8}
!179 = distinct !{!179, !120}
!180 = !{!181, !45, i64 8}
!181 = !{!"_ZTSSt4pairIKiPKN6google8protobuf13json_internal12ResolverPool5FieldEE", !4, i64 0, !45, i64 8}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!184 = distinct !{!184, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!185 = distinct !{!185, !120}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!188 = distinct !{!188, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!189 = distinct !{!189, !120}
!190 = !{!191, !24, i64 0}
!191 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !24, i64 0, !24, i64 8, !192, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !85, i64 36, !85, i64 37, !85, i64 38, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !193, i64 64, !194, i64 72}
!192 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !10, i64 0}
!193 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!194 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !10, i64 0}
!195 = !{!191, !24, i64 8}
!196 = !{!191, !4, i64 32}
!197 = !{!198, !12, i64 0}
!198 = !{!"_ZTSN6google8protobuf13json_internal14UntypedMessageE", !12, i64 0, !199, i64 8}
!199 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEESt14default_deleteISY_EENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS11_EEEE", !200, i64 0}
!200 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEE", !201, i64 0}
!201 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEE", !57, i64 0}
!202 = distinct !{!202, !120}
!203 = distinct !{null, null}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN4absl12lts_202505129StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!206 = distinct !{!206, !"_ZN4absl12lts_202505129StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!207 = !{!208, !10, i64 8}
!208 = !{!"_ZTSN4absl12lts_2025051219str_format_internal13FormatArgImplE", !5, i64 0, !10, i64 8}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN4absl12lts_202505129StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!211 = distinct !{!211, !"_ZN4absl12lts_202505129StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!212 = !{!140, !25, i64 0}
!213 = !{!140, !24, i64 8}
!214 = !{!215, !215, i64 0}
end_hunk_0
