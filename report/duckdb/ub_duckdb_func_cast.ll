inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12emplace_backIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvDpOT_:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12emplace_backIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvDpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.f = load i64, ptr %1, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !108
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12emplace_backIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvDpOT_:bb.a
_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = trunc i64 %i.f to i8
  %i.x = load i64, ptr %4, align 8, !tbaa !13
  %.sroa.0.sroa.0.0.copyload = load <2 x ptr>, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  store ptr null, ptr %i.y, align 8, !tbaa !28
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12emplace_backIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvDpOT_:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.x, ptr %i.am, align 8, !tbaa !384
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <2 x ptr> %.sroa.0.sroa.0.0.copyload, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.z, ptr %i.ao, align 8, !tbaa !28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12emplace_backIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvDpOT_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !386
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  store ptr %i.as, ptr %i.b, align 8, !tbaa !386
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE17_M_realloc_insertIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !388    ; 5 uses
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE17_M_realloc_insertIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.t = load i64, ptr %2, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !108
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE17_M_realloc_insertIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit: ; preds = %.noexc
  %i.ak = trunc i64 %i.t to i8
  %i.al = load i64, ptr %5, align 8, !tbaa !13
  %.sroa.054.sroa.0.0.copyload = load <2 x ptr>, ptr %6, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !28
  store ptr null, ptr %i.am, align 8, !tbaa !28
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE17_M_realloc_insertIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i64 %i.al, ptr %i.ba, align 8, !tbaa !384
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  store <2 x ptr> %.sroa.054.sroa.0.0.copyload, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store i64 %i.an, ptr %i.bc, align 8, !tbaa !28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #28
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE17_M_realloc_insertIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

end_hunk_9
begin_hunk_10_@_ZN6duckdb9make_uniqINS_18UnionBoundCastDataEJRKhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERKlNS_13BoundCastInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29 ; 11 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb9make_uniqINS_18UnionBoundCastDataEJRKhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERKlNS_13BoundCastInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %4, align 8, !tbaa !13
  %.sroa.0.sroa.0.0.copyload = load <2 x ptr>, ptr %5, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  store ptr null, ptr %i.r, align 8, !tbaa !28
end_hunk_11
begin_hunk_12_@_ZN6duckdb9make_uniqINS_18UnionBoundCastDataEJRKhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERKlNS_13BoundCastInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.q, ptr %i.af, align 8, !tbaa !384
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <2 x ptr> %.sroa.0.sroa.0.0.copyload, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.s, ptr %i.ah, align 8, !tbaa !28
  store ptr %i.b, ptr %0, align 8, !tbaa !375
end_hunk_12
