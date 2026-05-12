inline.NumInlined: 597
inline.NumDeleted: 231
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 5 uses
  store i64 0, ptr %i.w, align 8, !tbaa !16
  store i8 0, ptr %i.v, align 8, !tbaa !19
  %i.x = load ptr, ptr %14, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ej = load i64, ptr %i.w, align 8, !tbaa !16  ; 2 uses
  %i.ek = and i64 %i.ej, 7
  %.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i, label %bb.aj, label %bb.ac
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

.noexc26:                                         ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre.i.pre = load i64, ptr %i.w, align 8, !tbaa !16
  store ptr %i.fm, ptr %15, align 8, !tbaa !66
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !69
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fh ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
_ZNSt6vectorIfSaIfEE7reserveEm.exit.i:            ; preds = %.noexc26, %bb.ak
  %.pre88.i = phi ptr [ null, %bb.ak ], [ %i.fm, %.noexc26 ] ; 4 uses
  %i.fp = phi ptr [ null, %bb.ak ], [ %i.fo, %.noexc26 ]
  %16 = phi i64 [ %i.ej, %bb.ak ], [ %.pre.i.pre, %.noexc26 ] ; 2 uses
  %i.fq = load ptr, ptr %i.u, align 8, !tbaa !29
  %.not84.i = icmp ult i64 %16, 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  br i1 %.not84.i, label %._crit_edge.i, label %.lr.ph.i

end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i
  %i.fy = phi ptr [ %i.jy, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ], [ %.pre88.i, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.i ] ; 4 uses
  %i.fz = phi i64 [ %i.jz, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ], [ %16, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.i ]
  %i.ga = phi ptr [ %i.ka, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ], [ %.pre88.i, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.i ] ; 7 uses
  %i.gb = phi ptr [ %i.kb, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ], [ %i.fp, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.i ] ; 2 uses
  %.02383.i = phi i32 [ %i.kc, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ], [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.i ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.jl) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.jt, ptr %15, align 8, !tbaa !66
  store ptr %i.jw, ptr %.phi.trans.insert.i, align 8, !tbaa !69
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jr ; 2 uses
  store ptr %i.jx, ptr %i.fk, align 8, !tbaa !70
  %.pre87.i = load i64, ptr %i.w, align 8, !tbaa !16
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.bk
  %i.jy = phi ptr [ %i.ji, %bb.bk ], [ %i.jw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.jz = phi i64 [ %i.fz, %bb.bk ], [ %.pre87.i, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ka = phi ptr [ %i.ga, %bb.bk ], [ %i.jt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ] ; 2 uses
end_hunk_5
