inline.NumInlined: 321
inline.NumDeleted: 162
begin_hunk_0_@_ZN6Assimp11OFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.ix, align 8
  %i.iy = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.ed unwind label %bb.dx     ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.iy, ptr %i.iz, align 8
  %i.ja = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #20
          to label %bb.ee unwind label %bb.el     ; 14 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11OFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.jd, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.je, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.jf, i8 0, i64 36, i1 false)
  store ptr %i.ja, ptr %i.iy, align 8
  store i32 %.0.lcssa.i369, ptr %i.jc, align 8
  %i.jh = zext i32 %.0.lcssa.i369 to i64          ; 5 uses
  %i.ji = shl nuw nsw i64 %i.jh, 4
end_hunk_1
begin_hunk_2_@_ZN6Assimp11OFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.hd:                                            ; preds = %bb.ib
  %i.pt = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #20
          to label %bb.ic unwind label %bb.ii     ; 8 uses

bb.he:                                            ; preds = %.loopexit, %bb.ib
  %.0136750 = phi i32 [ 0, %.loopexit ], [ %.1137, %bb.ib ]
end_hunk_2
begin_hunk_3_@_ZN6Assimp11OFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 unwind label %bb.ij

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %bb.ic
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.pt, ptr %i.sb, align 8
  store i32 9, ptr %i.pt, align 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
end_hunk_3
begin_hunk_4_@_ZN6Assimp11OFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.pt, i64 1120
  store i32 1, ptr %i.se, align 8
  %i.sf = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %bb.id unwind label %bb.ii     ; 2 uses

bb.id:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pt, i64 1128
  store ptr %i.sf, ptr %i.sg, align 8
  store i32 0, ptr %i.sf, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.sh, align 8
  %i.si = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
end_hunk_4
