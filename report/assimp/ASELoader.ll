inline.NumInlined: 2170
inline.NumDeleted: 1074
begin_hunk_0_@_ZN6Assimp11ASEImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre296.pre = load ptr, ptr %i.cd, align 8
  %.pre295.pre = load ptr, ptr %i.cc, align 8     ; 2 uses
  store ptr %i.co, ptr %7, align 8
  store ptr %i.co, ptr %i.cp, align 8
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ck
  store ptr %10, ptr %i.cm, align 8
  %i.cq = icmp eq ptr %.pre295.pre, %.pre296.pre
  br i1 %i.cq, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
end_hunk_0
begin_hunk_1_@_ZN6Assimp11ASEImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.q:                                             ; preds = %.lr.ph, %bb.x
  %i.cv = phi ptr [ %i.cb, %.lr.ph ], [ %i.dr, %bb.x ]
  %.043195 = phi i1 [ false, %.lr.ph ], [ %.245, %bb.x ] ; 2 uses
  %.sroa.0148.0194 = phi ptr [ %.pre295.pre, %.lr.ph ], [ %i.ds, %bb.x ] ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0148.0194, i64 716
  %i.cx = load i8, ptr %i.cw, align 4, !range !4, !noundef !5
  %i.cy = trunc nuw i8 %i.cx to i1
end_hunk_1
begin_hunk_2_@_ZN6Assimp11ASEImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE11_M_allocateEm.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre305.pre = load ptr, ptr %i.fp, align 8
  %.pre304.pre = load ptr, ptr %i.fo, align 8
  store ptr %i.gs, ptr %8, align 8
  store ptr %i.gs, ptr %i.gt, align 8
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.go ; 2 uses
  store ptr %11, ptr %i.gq, align 8
  br label %_ZNSt6vectorIPN6Assimp3ASE8BaseNodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN6Assimp3ASE8BaseNodeESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.ak
  %.promoted205 = phi ptr [ %i.gs, %_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.ak ] ; 4 uses
  %.promoted = phi ptr [ %11, %_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.ak ] ; 2 uses
  %i.gu = phi ptr [ %.pre305.pre, %_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.fq, %bb.ak ] ; 2 uses
  %i.gv = phi ptr [ %.pre304.pre, %_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.fr, %bb.ak ] ; 2 uses
  %.not169209 = icmp eq ptr %i.gv, %i.gu
  br i1 %.not169209, label %._crit_edge212, label %.lr.ph211

end_hunk_2
