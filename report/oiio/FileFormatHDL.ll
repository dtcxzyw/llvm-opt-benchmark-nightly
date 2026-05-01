inline.NumInlined: 1707
inline.NumDeleted: 606
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %46 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::vector.16", align 8   ; 6 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %50 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %._crit_edge.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 10 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 9 uses
  %i.gz = load ptr, ptr %23, align 8, !tbaa !71   ; 6 uses
  store ptr %i.gz, ptr %22, align 16, !tbaa !71
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 8
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.ta = load ptr, ptr %i.gy, align 16, !tbaa !75
  %i.tb = load ptr, ptr %48, align 8, !tbaa !71   ; 4 uses
  store ptr %i.tb, ptr %22, align 16, !tbaa !71
  %i.tc = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %68 = load <2 x ptr>, ptr %i.tc, align 8, !tbaa !68
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !73 ; 3 uses
  store <2 x ptr> %68, ptr %i.gx, align 8, !tbaa !68
  %.not4.i.i.i.i.i528 = icmp eq ptr %i.sy, %i.sz
  br i1 %.not4.i.i.i.i.i528, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i534, label %.lr.ph.i.i.i.i.i529

end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit549, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  %.not942 = icmp eq ptr %i.td, %i.tb
  br i1 %.not942, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre969976 = phi ptr [ %.pre969977, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.tb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 2 uses
  %.pre968973 = phi ptr [ %.pre968974, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.td, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 2 uses
  %i.ud = phi ptr [ %i.vr, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.tb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 4 uses
  %i.ue = phi ptr [ %i.vs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.td, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %i.uf = phi i64 [ %i.vu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %.0123937 = phi i32 [ %i.vt, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %.sroa.0829.0936 = phi ptr [ %.sroa.0829.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 7 uses
end_hunk_4
