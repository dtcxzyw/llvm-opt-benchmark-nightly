Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.05?download=true
inline.NumInlined: 16017
inline.NumDeleted: 6824
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCs4BcJZGCY6Ba_10rayon_core3job9JobResultTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEB1P_EEEECseeLknQCOKOd_13polars_python:bb.a
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs4BcJZGCY6Ba_10rayon_core3job9JobResultTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEB1q_EEECseeLknQCOKOd_13polars_python.exit, label %bb.e, !dbg !32780

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16, !dbg !32779
  %i.i = load i64, ptr %i.h, align 8, !dbg !32781, !range !4194, !invariant.load !3778, !noalias !32775
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #33, !dbg !32782, !noalias !32775
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs4BcJZGCY6Ba_10rayon_core3job9JobResultTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEB1q_EEECseeLknQCOKOd_13polars_python.exit, !dbg !32783

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8, !dbg !32784
  %i.l = load i64, ptr %i.k, align 8, !dbg !32784, !range !3991, !invariant.load !3778, !noalias !32775 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !32785
  br i1 %i.m, label %common.resume.i, label %bb.g, !dbg !32785

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16, !dbg !32784
  %i.o = load i64, ptr %i.n, align 8, !dbg !32786, !range !4194, !invariant.load !3778, !noalias !32775
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #33, !dbg !32787, !noalias !32775
  br label %common.resume.i, !dbg !32788

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !32777

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32777
  invoke void @_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEBH_EECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.i, !dbg !32789

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !32790
  invoke void @_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j, !dbg !32791

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !32790
  unreachable, !dbg !32790

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEBH_EECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !32790
  tail call void @_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !dbg !32792
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs4BcJZGCY6Ba_10rayon_core3job9JobResultTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEB1q_EEECseeLknQCOKOd_13polars_python.exit, !dbg !32777

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs4BcJZGCY6Ba_10rayon_core3job9JobResultTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEB1q_EEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEBH_EECseeLknQCOKOd_13polars_python.exit.i
  ret void, !dbg !32776
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 !dbg !321 !guid !32818 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !32826, !range !4172, !noundef !3778 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !32826
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !32826

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !32826

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32819), !dbg !32826
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32827 ; 4 uses
  %i.d = icmp eq i64 %i.a, 0, !dbg !32827
  br i1 %i.d, label %bb.c, label %bb.e, !dbg !32827

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32820), !dbg !32827
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32821), !dbg !32828
  %i.e = load ptr, ptr %i.c, align 8, !dbg !32829, !alias.scope !32822, !nonnull !3778, !noundef !3778
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !dbg !32830, !noalias !32822
  %i.g = icmp eq i64 %i.f, 1, !dbg !32831
  br i1 %i.g, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseeLknQCOKOd_13polars_python.exit, !dbg !32831

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !32832
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #36, !dbg !32833
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseeLknQCOKOd_13polars_python.exit, !dbg !32833

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32823), !dbg !32827
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32824), !dbg !32834
  %i.h = load ptr, ptr %i.c, align 8, !dbg !32835, !alias.scope !32825, !nonnull !3778, !noundef !3778
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !dbg !32836, !noalias !32825
  %i.j = icmp eq i64 %i.i, 1, !dbg !32837
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseeLknQCOKOd_13polars_python.exit, !dbg !32837

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !32838
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #36, !dbg !32839
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseeLknQCOKOd_13polars_python.exit, !dbg !32839
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB1t_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !32840 !guid !32862 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !32864, !range !4200, !noundef !3778 ; 2 uses
  %i.b = icmp eq i8 %i.a, 19, !dbg !32864
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !32864

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void, !dbg !32864

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32863), !dbg !32864
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit [
    i8 18, label %bb.c
    i8 14, label %bb.f
    i8 16, label %bb.g
  ], !dbg !32865

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32865
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !32865, !alias.scope !32863, !nonnull !3778, !noundef !3778 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !32866
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !dbg !32867, !noalias !32863, !noundef !3778
  %i.e = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0, !dbg !32868
  br i1 %i.e, label %bb.e, label %bb.d, !dbg !32869, !prof !4123

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i), !dbg !32870, !noalias !32863
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32870

bb.e:                                             ; preds = %bb.c
  tail call void @_Py_DecRef(ptr noundef nonnull %.val.i) #33, !dbg !32871, !noalias !32863
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32872

bb.f:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !32873
  tail call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !32873
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32873

bb.g:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32873 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.h, !dbg !32874

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i unwind label %bb.i, !dbg !32875

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !32874
  unreachable, !dbg !32874

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.h
  resume { ptr, i32 } %i.h, !dbg !32874

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !32876
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32873
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB1t_12PythonObjectENtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !233 !guid !32892 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !32894, !range !4145, !noundef !3778 ; 2 uses
  %i.b = icmp eq i8 %i.a, 10, !dbg !32894
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !32894

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  ret void, !dbg !32894

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32893), !dbg !32894
  %i.c = icmp eq i8 %i.a, 9, !dbg !32895
  br i1 %i.c, label %bb.c, label %bb.f, !dbg !32895

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32895
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !32895, !alias.scope !32893, !nonnull !3778, !noundef !3778 ; 2 uses
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !32896
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !dbg !32897, !noalias !32893, !noundef !3778
  %i.f = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0, !dbg !32898
  br i1 %i.f, label %bb.e, label %bb.d, !dbg !32899, !prof !4123

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i), !dbg !32900, !noalias !32893
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32900

bb.e:                                             ; preds = %bb.c
  tail call void @_Py_DecRef(ptr noundef nonnull %.val.i) #33, !dbg !32901, !noalias !32893
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32902

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %0), !dbg !32895
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32895
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB1t_12PythonObjectENtNtCsk1caaszg7Cl_10serde_json5error5ErrorEEECseeLknQCOKOd_13polars_python(i64 %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !32903 !guid !32942 {
bb.a:
  %0 = icmp eq i64 %.0.val, 2, !dbg !32946
  br i1 %0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit, label %1, !dbg !32946

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i, %bb.d, %bb.c, %bb.a
  ret void, !dbg !32946

1:                                                ; preds = %bb.a
  %2 = icmp eq i64 %.0.val, 0, !dbg !32947
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %2, label %bb.b, label %bb.e, !dbg !32947

bb.b:                                             ; preds = %1
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !32948
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !dbg !32949, !noundef !3778
  %i.b = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0, !dbg !32950
  br i1 %i.b, label %bb.d, label %bb.c, !dbg !32951, !prof !4123

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.8.val), !dbg !32952
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32952

bb.d:                                             ; preds = %bb.b
  tail call void @_Py_DecRef(ptr noundef nonnull %.8.val) #33, !dbg !32953
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32954

bb.e:                                             ; preds = %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32943), !dbg !32955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32944), !dbg !32956
  %i.c = load i64, ptr %.8.val, align 8, !dbg !32957, !range !3810, !alias.scope !32945, !noundef !3778
  switch i64 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i [
    i64 0, label %bb.f
    i64 1, label %bb.h
  ], !dbg !32957

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !32957
  %.val1.i.i.i.i.i = load i64, ptr %i.d, align 8, !dbg !32957, !alias.scope !32945, !noundef !3778 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i.i.i, 0, !dbg !32958
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i, label %bb.g, !dbg !32958

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !32957
  %.val.i.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !32957, !alias.scope !32945, !nonnull !3778, !noundef !3778
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #33, !dbg !32959, !noalias !32945
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i, !dbg !32960

bb.h:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !32957
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.i, !dbg !32957

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #33, !dbg !32961
  resume { ptr, i32 } %i.h, !dbg !32955

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #33, !dbg !32962
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32947
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 !dbg !250 !guid !32980 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !32986, !range !4154, !noundef !3778 ; 2 uses
  %i.b = icmp eq i64 %i.a, 19, !dbg !32986
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !32986

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !32986

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32981), !dbg !32986
  %i.c = icmp eq i64 %i.a, 18, !dbg !32987
  br i1 %i.c, label %bb.c, label %bb.e, !dbg !32987

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32987 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32982), !dbg !32987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32983), !dbg !32988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32984), !dbg !32989
  %i.e = load ptr, ptr %i.d, align 8, !dbg !32990, !alias.scope !32985, !nonnull !3778, !noundef !3778
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !dbg !32991, !noalias !32985
  %i.g = icmp eq i64 %i.f, 1, !dbg !32992
  br i1 %i.g, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32992

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !32993
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #36, !dbg !32994
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32994

bb.e:                                             ; preds = %bb.b
  tail call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(72) %0), !dbg !32987
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !32987
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !32995 !guid !33016 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !33018, !range !4200, !noundef !3778 ; 2 uses
  %i.b = icmp eq i8 %i.a, 19, !dbg !33018
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !33018

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void, !dbg !33018

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33017), !dbg !33018
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit [
    i8 18, label %bb.c
    i8 14, label %bb.f
    i8 16, label %bb.g
  ], !dbg !33019

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33019
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !33019, !alias.scope !33017, !nonnull !3778, !noundef !3778 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !33020
  %.val.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !dbg !33021, !noalias !33017, !noundef !3778
  %i.e = icmp sgt i64 %.val.i.i.i.i.i.i, 0, !dbg !33022
  br i1 %i.e, label %bb.e, label %bb.d, !dbg !33023, !prof !4123

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i), !dbg !33024, !noalias !33017
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33024

bb.e:                                             ; preds = %bb.c
  tail call void @_Py_DecRef(ptr noundef nonnull %.val.i) #33, !dbg !33025, !noalias !33017
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33026

bb.f:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33027
  tail call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !33027
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33027

bb.g:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33027 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.h, !dbg !33028

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i unwind label %bb.i, !dbg !33029

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !33028
  unreachable, !dbg !33028

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.h
  resume { ptr, i32 } %i.h, !dbg !33028

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !33030
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33027
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !277 !guid !33045 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !33047, !range !4145, !noundef !3778 ; 2 uses
  %i.b = icmp eq i8 %i.a, 10, !dbg !33047
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !33047

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  ret void, !dbg !33047

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33046), !dbg !33047
  %i.c = icmp eq i8 %i.a, 9, !dbg !33048
  br i1 %i.c, label %bb.c, label %bb.f, !dbg !33048

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33048
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !33048, !alias.scope !33046, !nonnull !3778, !noundef !3778 ; 2 uses
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !33049
  %.val.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !dbg !33050, !noalias !33046, !noundef !3778
  %i.f = icmp sgt i64 %.val.i.i.i.i.i.i, 0, !dbg !33051
  br i1 %i.f, label %bb.e, label %bb.d, !dbg !33052, !prof !4123

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i), !dbg !33053, !noalias !33046
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33053

bb.e:                                             ; preds = %bb.c
  tail call void @_Py_DecRef(ptr noundef nonnull %.val.i) #33, !dbg !33054, !noalias !33046
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33055

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %0), !dbg !33048
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33048
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEEECseeLknQCOKOd_13polars_python(i64 %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !33056 !guid !33094 {
bb.a:
  %0 = icmp eq i64 %.0.val, 2, !dbg !33098
  br i1 %0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit, label %1, !dbg !33098

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i, %bb.d, %bb.c, %bb.a
  ret void, !dbg !33098

1:                                                ; preds = %bb.a
  %2 = icmp eq i64 %.0.val, 0, !dbg !33099
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %2, label %bb.b, label %bb.e, !dbg !33099

bb.b:                                             ; preds = %1
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !33100
  %.val.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !dbg !33101, !noundef !3778
  %i.b = icmp sgt i64 %.val.i.i.i.i.i.i, 0, !dbg !33102
  br i1 %i.b, label %bb.d, label %bb.c, !dbg !33103, !prof !4123

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.8.val), !dbg !33104
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33104

bb.d:                                             ; preds = %bb.b
  tail call void @_Py_DecRef(ptr noundef nonnull %.8.val) #33, !dbg !33105
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33106

bb.e:                                             ; preds = %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33095), !dbg !33107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33096), !dbg !33108
  %i.c = load i64, ptr %.8.val, align 8, !dbg !33109, !range !3810, !alias.scope !33097, !noundef !3778
  switch i64 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i [
    i64 0, label %bb.f
    i64 1, label %bb.h
  ], !dbg !33109

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !33109
  %.val1.i.i.i.i.i = load i64, ptr %i.d, align 8, !dbg !33109, !alias.scope !33097, !noundef !3778 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i.i.i, 0, !dbg !33110
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i, label %bb.g, !dbg !33110

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !33109
  %.val.i.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !33109, !alias.scope !33097, !nonnull !3778, !noundef !3778
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #33, !dbg !33111, !noalias !33097
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i, !dbg !33112

bb.h:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !33109
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.i, !dbg !33109

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #33, !dbg !33113
  resume { ptr, i32 } %i.h, !dbg !33107

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #33, !dbg !33114
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33099
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 !dbg !248 !guid !33116 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !33117, !range !4154, !noundef !3778
  switch i64 %i.a, label %bb.c [
    i64 19, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit
    i64 18, label %bb.b
  ], !dbg !33117

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a, %bb.c, %bb.b
  ret void, !dbg !33117

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33118
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(48) %i.b), !dbg !33118
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33118

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(72) %0), !dbg !33118
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !33118
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB17_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !335 !guid !33129 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null, !dbg !33130
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !33130

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void, !dbg !33130

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !33131
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !dbg !33132, !noundef !3778
  %i.c = icmp sgt i64 %.val.i.i.i.i, 0, !dbg !33133
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !33134, !prof !4123

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.0.val), !dbg !33135
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit, !dbg !33135

bb.d:                                             ; preds = %bb.b
  tail call void @_Py_DecRef(ptr noundef nonnull %.0.val) #33, !dbg !33136
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit, !dbg !33137
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB17_6string6StringEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !336 !guid !33141 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !33142, !range !3914, !noundef !3778
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !33142
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !33142

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit, %bb.a
  ret void, !dbg !33142

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !33143

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.e, !dbg !33144

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !33143
  unreachable, !dbg !33143

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !33143

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtBL_6string6StringEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !33145
  br label %bb.b, !dbg !33142
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !339 !guid !33149 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !33150, !range !3914, !noundef !3778
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !33150
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !33150

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit, %bb.a
  ret void, !dbg !33150

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !33151

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.e, !dbg !33152

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !33151
  unreachable, !dbg !33151

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !33151

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !33153
  br label %bb.b, !dbg !33150
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !340 !guid !33157 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !33158, !range !3914, !noundef !3778
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !33158
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !33158

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueEECseeLknQCOKOd_13polars_python.exit, %bb.a
  ret void, !dbg !33158

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !33159

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.e, !dbg !33160

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !33159
  unreachable, !dbg !33159

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !33159

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !33161
  br label %bb.b, !dbg !33158
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !343 !guid !33165 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !33166, !range !3914, !noundef !3778
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !33166
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !33166

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python.exit, %bb.a
  ret void, !dbg !33166

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !33167

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.e, !dbg !33168

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !33167
  unreachable, !dbg !33167

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !33167

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !33169
  br label %bb.b, !dbg !33166
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !346 !guid !33173 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !33174, !range !3914, !noundef !3778
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !33174
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !33174

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECseeLknQCOKOd_13polars_python.exit, %bb.a
  ret void, !dbg !33174

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !33175

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!32747 = distinct !DISubprogram(name: "drop_in_place<rayon_core::job::JobResult<(rayon::iter::collect::consumer::CollectResult<polars_core::frame::column::Column>, rayon::iter::collect::consumer::CollectResult<polars_core::frame::column::Column>)>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs4BcJZGCY6Ba_10rayon_core3job9JobResultTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEB1q_EEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32748 = distinct !DILocation(line: 810, column: 1, scope: !32744)
!32749 = distinct !DILocation(line: 810, column: 1, scope: !32747, inlinedAt: !32748)
!32750 = distinct !DILocation(line: 810, column: 1, scope: !306, inlinedAt: !32749)
!32751 = distinct !DILocation(line: 1919, column: 26, scope: !310, inlinedAt: !32750)
!32752 = distinct !DILocation(line: 255, column: 43, scope: !308, inlinedAt: !32751)
!32753 = distinct !DILocation(line: 255, column: 68, scope: !308, inlinedAt: !32751)
!32754 = distinct !DILocation(line: 125, column: 30, scope: !313, inlinedAt: !32753)
!32755 = distinct !DILocation(line: 1921, column: 24, scope: !311, inlinedAt: !32750)
!32756 = distinct !DILocation(line: 462, column: 23, scope: !11, inlinedAt: !32755)
!32757 = distinct !DILocation(line: 344, column: 9, scope: !10, inlinedAt: !32756)
!32758 = distinct !DILocation(line: 229, column: 22, scope: !9, inlinedAt: !32757)
!32759 = distinct !DILocation(line: 810, column: 1, scope: !306, inlinedAt: !32749)
!32760 = distinct !DILocation(line: 1919, column: 26, scope: !310, inlinedAt: !32759)
!32761 = distinct !DILocation(line: 255, column: 43, scope: !308, inlinedAt: !32760)
!32762 = distinct !DILocation(line: 255, column: 68, scope: !308, inlinedAt: !32760)
!32763 = distinct !DILocation(line: 125, column: 30, scope: !313, inlinedAt: !32762)
!32764 = distinct !DILocation(line: 1921, column: 24, scope: !311, inlinedAt: !32759)
!32765 = distinct !DILocation(line: 462, column: 23, scope: !11, inlinedAt: !32764)
!32766 = distinct !DILocation(line: 344, column: 9, scope: !10, inlinedAt: !32765)
!32767 = distinct !DILocation(line: 229, column: 22, scope: !9, inlinedAt: !32766)
!32768 = distinct !DISubprogram(name: "drop_in_place<rayon::iter::collect::consumer::CollectResult<polars_core::frame::column::Column>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32769 = distinct !DISubprogram(name: "drop_in_place<(rayon::iter::collect::consumer::CollectResult<polars_core::frame::column::Column>, rayon::iter::collect::consumer::CollectResult<polars_core::frame::column::Column>)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEBH_EECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32770 = distinct !DILocation(line: 810, column: 1, scope: !32747, inlinedAt: !32748)
!32771 = distinct !DILocation(line: 810, column: 1, scope: !32769, inlinedAt: !32770)
!32772 = distinct !DILocation(line: 810, column: 1, scope: !32769, inlinedAt: !32770)
!32773 = distinct !DILocation(line: 810, column: 1, scope: !32769, inlinedAt: !32770)
!32774 = !{i64 -7107081328270883041}
!32775 = !{!32746}
!32776 = !DILocation(line: 810, column: 1, scope: !32744)
!32777 = !DILocation(line: 810, column: 1, scope: !32747, inlinedAt: !32748)
!32778 = !DILocation(line: 810, column: 1, scope: !306, inlinedAt: !32749)
!32779 = !DILocation(line: 457, column: 14, scope: !307, inlinedAt: !32752)
!32780 = !DILocation(line: 1920, column: 16, scope: !311, inlinedAt: !32750)
!32781 = !DILocation(line: 596, column: 14, scope: !312, inlinedAt: !32754)
!32782 = !DILocation(line: 128, column: 14, scope: !8, inlinedAt: !32758)
!32783 = !DILocation(line: 1920, column: 13, scope: !311, inlinedAt: !32750)
!32784 = !DILocation(line: 457, column: 14, scope: !307, inlinedAt: !32761)
!32785 = !DILocation(line: 1920, column: 16, scope: !311, inlinedAt: !32759)
!32786 = !DILocation(line: 596, column: 14, scope: !312, inlinedAt: !32763)
!32787 = !DILocation(line: 128, column: 14, scope: !8, inlinedAt: !32767)
!32788 = !DILocation(line: 1920, column: 13, scope: !311, inlinedAt: !32759)
!32789 = !DILocation(line: 810, column: 1, scope: !32768, inlinedAt: !32771)
!32790 = !DILocation(line: 810, column: 1, scope: !32769, inlinedAt: !32770)
!32791 = !DILocation(line: 810, column: 1, scope: !32768, inlinedAt: !32772)
!32792 = !DILocation(line: 810, column: 1, scope: !32768, inlinedAt: !32773)
!32793 = distinct !{!32793, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseeLknQCOKOd_13polars_python"}
!32794 = distinct !{!32794, !32793, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseeLknQCOKOd_13polars_python: argument 0"}
!32795 = distinct !DILocation(line: 810, column: 1, scope: !321)
!32796 = distinct !{!32796, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python"}
!32797 = distinct !{!32797, !32796, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3C_EEEECseeLknQCOKOd_13polars_python: argument 0"}
!32798 = distinct !{!32798, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!32799 = distinct !{!32799, !32798, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!32800 = distinct !DILocation(line: 810, column: 1, scope: !322, inlinedAt: !32795)
!32801 = distinct !DILocation(line: 810, column: 1, scope: !323, inlinedAt: !32800)
!32802 = distinct !DILocation(line: 2814, column: 17, scope: !326, inlinedAt: !32801)
!32803 = distinct !DILocation(line: 2110, column: 27, scope: !325, inlinedAt: !32802)
!32804 = distinct !DILocation(line: 2814, column: 32, scope: !326, inlinedAt: !32801)
!32805 = distinct !DILocation(line: 3193, column: 26, scope: !328, inlinedAt: !32804)
!32806 = distinct !DILocation(line: 64, column: 9, scope: !326, inlinedAt: !32801)
!32807 = distinct !{!32807, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECseeLknQCOKOd_13polars_python"}
!32808 = distinct !{!32808, !32807, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECseeLknQCOKOd_13polars_python: argument 0"}
!32809 = distinct !{!32809, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!32810 = distinct !{!32810, !32809, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!32811 = distinct !DILocation(line: 810, column: 1, scope: !322, inlinedAt: !32795)
!32812 = distinct !DILocation(line: 810, column: 1, scope: !329, inlinedAt: !32811)
!32813 = distinct !DILocation(line: 2814, column: 17, scope: !332, inlinedAt: !32812)
!32814 = distinct !DILocation(line: 2110, column: 27, scope: !331, inlinedAt: !32813)
!32815 = distinct !DILocation(line: 2814, column: 32, scope: !332, inlinedAt: !32812)
!32816 = distinct !DILocation(line: 3193, column: 26, scope: !334, inlinedAt: !32815)
!32817 = distinct !DILocation(line: 64, column: 9, scope: !332, inlinedAt: !32812)
!32818 = !{i64 -7830009254518206308}
!32819 = !{!32794}
!32820 = !{!32797}
!32821 = !{!32799}
!32822 = !{!32799, !32797, !32794}
!32823 = !{!32808}
!32824 = !{!32810}
!32825 = !{!32810, !32808, !32794}
!32826 = !DILocation(line: 810, column: 1, scope: !321)
!32827 = !DILocation(line: 810, column: 1, scope: !322, inlinedAt: !32795)
!32828 = !DILocation(line: 810, column: 1, scope: !323, inlinedAt: !32800)
!32829 = !DILocation(line: 444, column: 20, scope: !324, inlinedAt: !32803)
!32830 = !DILocation(line: 3956, column: 24, scope: !327, inlinedAt: !32805)
!32831 = !DILocation(line: 2814, column: 12, scope: !326, inlinedAt: !32801)
!32832 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !32806)
!32833 = !DILocation(line: 2857, column: 18, scope: !326, inlinedAt: !32801)
!32834 = !DILocation(line: 810, column: 1, scope: !329, inlinedAt: !32811)
!32835 = !DILocation(line: 444, column: 20, scope: !330, inlinedAt: !32814)
!32836 = !DILocation(line: 3956, column: 24, scope: !333, inlinedAt: !32816)
!32837 = !DILocation(line: 2814, column: 12, scope: !332, inlinedAt: !32812)
!32838 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !32817)
!32839 = !DILocation(line: 2857, column: 18, scope: !332, inlinedAt: !32812)
!32840 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::result::Result<polars_utils::python_function::serde_wrap::PySerializeWrap<polars_utils::python_function::PythonObject>, bincode::error::DecodeError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB1t_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32841 = distinct !{!32841, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python"}
!32842 = distinct !{!32842, !32841, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!32843 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<polars_utils::python_function::serde_wrap::PySerializeWrap<polars_utils::python_function::PythonObject>, bincode::error::DecodeError>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32844 = distinct !DILocation(line: 810, column: 1, scope: !32840)
!32845 = distinct !DILocation(line: 810, column: 1, scope: !32843, inlinedAt: !32844)
!32846 = distinct !DILocation(line: 810, column: 1, scope: !243, inlinedAt: !32845)
!32847 = distinct !DILocation(line: 810, column: 1, scope: !242, inlinedAt: !32846)
!32848 = distinct !DILocation(line: 810, column: 1, scope: !241, inlinedAt: !32847)
!32849 = distinct !DILocation(line: 2306, column: 9, scope: !240, inlinedAt: !32848)
!32850 = distinct !DILocation(line: 2290, column: 16, scope: !239, inlinedAt: !32849)
!32851 = distinct !DILocation(line: 39, column: 18, scope: !238, inlinedAt: !32850)
!32852 = distinct !DILocation(line: 461, column: 37, scope: !237, inlinedAt: !32851)
!32853 = distinct !DILocation(line: 250, column: 5, scope: !236, inlinedAt: !32852)
!32854 = distinct !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !32851)
!32855 = distinct !DILocation(line: 39, column: 44, scope: !238, inlinedAt: !32850)
!32856 = distinct !DILocation(line: 2292, column: 26, scope: !239, inlinedAt: !32849)
!32857 = distinct !DILocation(line: 810, column: 1, scope: !32843, inlinedAt: !32844)
!32858 = distinct !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !32857)
!32859 = distinct !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !32858)
!32860 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !32859)
!32861 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !32859)
!32862 = !{i64 5528199508170711283}
!32863 = !{!32842}
!32864 = !DILocation(line: 810, column: 1, scope: !32840)
!32865 = !DILocation(line: 810, column: 1, scope: !32843, inlinedAt: !32844)
!32866 = !DILocation(line: 75, column: 26, scope: !235, inlinedAt: !32853)
!32867 = !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !32851)
!32868 = !DILocation(line: 39, column: 31, scope: !245, inlinedAt: !32854)
!32869 = !DILocation(line: 1595, column: 9, scope: !246, inlinedAt: !32855)
!32870 = !DILocation(line: 2294, column: 17, scope: !239, inlinedAt: !32849)
!32871 = !DILocation(line: 269, column: 13, scope: !247, inlinedAt: !32856)
!32872 = !DILocation(line: 2290, column: 13, scope: !239, inlinedAt: !32849)
!32873 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !32857)
!32874 = !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !32859)
!32875 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !32860)
!32876 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !32861)
!32877 = distinct !{!32877, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python"}
!32878 = distinct !{!32878, !32877, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!32879 = distinct !DILocation(line: 810, column: 1, scope: !233)
!32880 = distinct !DILocation(line: 810, column: 1, scope: !234, inlinedAt: !32879)
!32881 = distinct !DILocation(line: 810, column: 1, scope: !243, inlinedAt: !32880)
!32882 = distinct !DILocation(line: 810, column: 1, scope: !242, inlinedAt: !32881)
!32883 = distinct !DILocation(line: 810, column: 1, scope: !241, inlinedAt: !32882)
!32884 = distinct !DILocation(line: 2306, column: 9, scope: !240, inlinedAt: !32883)
!32885 = distinct !DILocation(line: 2290, column: 16, scope: !239, inlinedAt: !32884)
!32886 = distinct !DILocation(line: 39, column: 18, scope: !238, inlinedAt: !32885)
!32887 = distinct !DILocation(line: 461, column: 37, scope: !237, inlinedAt: !32886)
!32888 = distinct !DILocation(line: 250, column: 5, scope: !236, inlinedAt: !32887)
!32889 = distinct !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !32886)
!32890 = distinct !DILocation(line: 39, column: 44, scope: !238, inlinedAt: !32885)
!32891 = distinct !DILocation(line: 2292, column: 26, scope: !239, inlinedAt: !32884)
!32892 = !{i64 961283766489165925}
!32893 = !{!32878}
!32894 = !DILocation(line: 810, column: 1, scope: !233)
!32895 = !DILocation(line: 810, column: 1, scope: !234, inlinedAt: !32879)
!32896 = !DILocation(line: 75, column: 26, scope: !235, inlinedAt: !32888)
!32897 = !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !32886)
!32898 = !DILocation(line: 39, column: 31, scope: !245, inlinedAt: !32889)
!32899 = !DILocation(line: 1595, column: 9, scope: !246, inlinedAt: !32890)
!32900 = !DILocation(line: 2294, column: 17, scope: !239, inlinedAt: !32884)
!32901 = !DILocation(line: 269, column: 13, scope: !247, inlinedAt: !32891)
!32902 = !DILocation(line: 2290, column: 13, scope: !239, inlinedAt: !32884)
!32903 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::result::Result<polars_utils::python_function::serde_wrap::PySerializeWrap<polars_utils::python_function::PythonObject>, serde_json::error::Error>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB1t_12PythonObjectENtNtCsk1caaszg7Cl_10serde_json5error5ErrorEEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3794, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32904 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<polars_utils::python_function::serde_wrap::PySerializeWrap<polars_utils::python_function::PythonObject>, serde_json::error::Error>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PySerializeWrapNtB17_12PythonObjectENtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3794, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32905 = distinct !DILocation(line: 810, column: 1, scope: !32903)
!32906 = distinct !DILocation(line: 810, column: 1, scope: !32904, inlinedAt: !32905)
!32907 = distinct !DILocation(line: 810, column: 1, scope: !243, inlinedAt: !32906)
!32908 = distinct !DILocation(line: 810, column: 1, scope: !242, inlinedAt: !32907)
!32909 = distinct !DILocation(line: 810, column: 1, scope: !241, inlinedAt: !32908)
!32910 = distinct !DILocation(line: 2306, column: 9, scope: !240, inlinedAt: !32909)
!32911 = distinct !DILocation(line: 2290, column: 16, scope: !239, inlinedAt: !32910)
!32912 = distinct !DILocation(line: 39, column: 18, scope: !238, inlinedAt: !32911)
!32913 = distinct !DILocation(line: 461, column: 37, scope: !237, inlinedAt: !32912)
!32914 = distinct !DILocation(line: 250, column: 5, scope: !236, inlinedAt: !32913)
!32915 = distinct !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !32912)
!32916 = distinct !DILocation(line: 39, column: 44, scope: !238, inlinedAt: !32911)
!32917 = distinct !DILocation(line: 2292, column: 26, scope: !239, inlinedAt: !32910)
!32918 = distinct !{!32918, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error9ErrorImplECseeLknQCOKOd_13polars_python"}
!32919 = distinct !{!32919, !32918, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error9ErrorImplECseeLknQCOKOd_13polars_python: argument 0"}
!32920 = distinct !DILocation(line: 810, column: 1, scope: !32904, inlinedAt: !32905)
!32921 = distinct !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !32920)
!32922 = distinct !{!32922, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error9ErrorCodeECseeLknQCOKOd_13polars_python"}
!32923 = distinct !{!32923, !32922, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error9ErrorCodeECseeLknQCOKOd_13polars_python: argument 0"}
!32924 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !32921)
!32925 = distinct !DILocation(line: 810, column: 1, scope: !25, inlinedAt: !32924)
!32926 = distinct !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !32925)
!32927 = distinct !DILocation(line: 810, column: 1, scope: !30, inlinedAt: !32926)
!32928 = distinct !DILocation(line: 1921, column: 24, scope: !29, inlinedAt: !32927)
!32929 = distinct !DILocation(line: 462, column: 23, scope: !11, inlinedAt: !32928)
!32930 = distinct !DILocation(line: 344, column: 9, scope: !10, inlinedAt: !32929)
!32931 = distinct !DILocation(line: 229, column: 22, scope: !9, inlinedAt: !32930)
!32932 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !32921)
!32933 = distinct !DILocation(line: 1921, column: 24, scope: !33, inlinedAt: !32932)
!32934 = distinct !DILocation(line: 462, column: 23, scope: !11, inlinedAt: !32933)
!32935 = distinct !DILocation(line: 344, column: 9, scope: !10, inlinedAt: !32934)
!32936 = distinct !DILocation(line: 229, column: 22, scope: !9, inlinedAt: !32935)
!32937 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !32921)
!32938 = distinct !DILocation(line: 1921, column: 24, scope: !33, inlinedAt: !32937)
!32939 = distinct !DILocation(line: 462, column: 23, scope: !11, inlinedAt: !32938)
!32940 = distinct !DILocation(line: 344, column: 9, scope: !10, inlinedAt: !32939)
!32941 = distinct !DILocation(line: 229, column: 22, scope: !9, inlinedAt: !32940)
!32942 = !{i64 -3943898031510153788}
!32943 = !{!32919}
!32944 = !{!32923}
!32945 = !{!32923, !32919}
!32946 = !DILocation(line: 810, column: 1, scope: !32903)
!32947 = !DILocation(line: 810, column: 1, scope: !32904, inlinedAt: !32905)
!32948 = !DILocation(line: 75, column: 26, scope: !235, inlinedAt: !32914)
!32949 = !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !32912)
!32950 = !DILocation(line: 39, column: 31, scope: !245, inlinedAt: !32915)
!32951 = !DILocation(line: 1595, column: 9, scope: !246, inlinedAt: !32916)
!32952 = !DILocation(line: 2294, column: 17, scope: !239, inlinedAt: !32910)
!32953 = !DILocation(line: 269, column: 13, scope: !247, inlinedAt: !32917)
!32954 = !DILocation(line: 2290, column: 13, scope: !239, inlinedAt: !32910)
!32955 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !32921)
!32956 = !DILocation(line: 810, column: 1, scope: !25, inlinedAt: !32924)
!32957 = !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !32925)
!32958 = !DILocation(line: 1920, column: 16, scope: !29, inlinedAt: !32927)
!32959 = !DILocation(line: 128, column: 14, scope: !8, inlinedAt: !32931)
!32960 = !DILocation(line: 1920, column: 13, scope: !29, inlinedAt: !32927)
!32961 = !DILocation(line: 128, column: 14, scope: !8, inlinedAt: !32936)
!32962 = !DILocation(line: 128, column: 14, scope: !8, inlinedAt: !32941)
!32963 = distinct !{!32963, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python"}
!32964 = distinct !{!32964, !32963, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!32965 = distinct !DILocation(line: 810, column: 1, scope: !250)
!32966 = distinct !{!32966, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!32967 = distinct !{!32967, !32966, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!32968 = distinct !{!32968, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!32969 = distinct !{!32969, !32968, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!32970 = distinct !DILocation(line: 810, column: 1, scope: !251, inlinedAt: !32965)
!32971 = distinct !{!32971, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!32972 = distinct !{!32972, !32971, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!32973 = distinct !DILocation(line: 810, column: 1, scope: !252, inlinedAt: !32970)
!32974 = distinct !DILocation(line: 810, column: 1, scope: !253, inlinedAt: !32973)
!32975 = distinct !DILocation(line: 2814, column: 17, scope: !256, inlinedAt: !32974)
!32976 = distinct !DILocation(line: 2110, column: 27, scope: !255, inlinedAt: !32975)
!32977 = distinct !DILocation(line: 2814, column: 32, scope: !256, inlinedAt: !32974)
!32978 = distinct !DILocation(line: 3193, column: 26, scope: !258, inlinedAt: !32977)
!32979 = distinct !DILocation(line: 64, column: 9, scope: !256, inlinedAt: !32974)
!32980 = !{i64 -7106921839253945783}
!32981 = !{!32964}
!32982 = !{!32967}
!32983 = !{!32969}
!32984 = !{!32972}
!32985 = !{!32972, !32969, !32967, !32964}
!32986 = !DILocation(line: 810, column: 1, scope: !250)
!32987 = !DILocation(line: 810, column: 1, scope: !251, inlinedAt: !32965)
!32988 = !DILocation(line: 810, column: 1, scope: !252, inlinedAt: !32970)
!32989 = !DILocation(line: 810, column: 1, scope: !253, inlinedAt: !32973)
!32990 = !DILocation(line: 444, column: 20, scope: !254, inlinedAt: !32976)
!32991 = !DILocation(line: 3956, column: 24, scope: !257, inlinedAt: !32978)
!32992 = !DILocation(line: 2814, column: 12, scope: !256, inlinedAt: !32974)
!32993 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !32979)
!32994 = !DILocation(line: 2857, column: 18, scope: !256, inlinedAt: !32974)
!32995 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::result::Result<polars_utils::python_function::PythonObject, bincode::error::DecodeError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32996 = distinct !{!32996, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python"}
!32997 = distinct !{!32997, !32996, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!32998 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<polars_utils::python_function::PythonObject, bincode::error::DecodeError>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs596qD5lrKA2_7bincode5error11DecodeErrorEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!32999 = distinct !DILocation(line: 810, column: 1, scope: !32995)
!33000 = distinct !DILocation(line: 810, column: 1, scope: !32998, inlinedAt: !32999)
!33001 = distinct !DILocation(line: 810, column: 1, scope: !242, inlinedAt: !33000)
!33002 = distinct !DILocation(line: 810, column: 1, scope: !241, inlinedAt: !33001)
!33003 = distinct !DILocation(line: 2306, column: 9, scope: !240, inlinedAt: !33002)
!33004 = distinct !DILocation(line: 2290, column: 16, scope: !239, inlinedAt: !33003)
!33005 = distinct !DILocation(line: 39, column: 18, scope: !238, inlinedAt: !33004)
!33006 = distinct !DILocation(line: 461, column: 37, scope: !237, inlinedAt: !33005)
!33007 = distinct !DILocation(line: 250, column: 5, scope: !236, inlinedAt: !33006)
!33008 = distinct !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33005)
!33009 = distinct !DILocation(line: 39, column: 44, scope: !238, inlinedAt: !33004)
!33010 = distinct !DILocation(line: 2292, column: 26, scope: !239, inlinedAt: !33003)
!33011 = distinct !DILocation(line: 810, column: 1, scope: !32998, inlinedAt: !32999)
!33012 = distinct !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !33011)
!33013 = distinct !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !33012)
!33014 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33013)
!33015 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33013)
!33016 = !{i64 -391996684461193616}
!33017 = !{!32997}
!33018 = !DILocation(line: 810, column: 1, scope: !32995)
!33019 = !DILocation(line: 810, column: 1, scope: !32998, inlinedAt: !32999)
!33020 = !DILocation(line: 75, column: 26, scope: !235, inlinedAt: !33007)
!33021 = !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33005)
!33022 = !DILocation(line: 39, column: 31, scope: !245, inlinedAt: !33008)
!33023 = !DILocation(line: 1595, column: 9, scope: !246, inlinedAt: !33009)
!33024 = !DILocation(line: 2294, column: 17, scope: !239, inlinedAt: !33003)
!33025 = !DILocation(line: 269, column: 13, scope: !247, inlinedAt: !33010)
!33026 = !DILocation(line: 2290, column: 13, scope: !239, inlinedAt: !33003)
!33027 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !33011)
!33028 = !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33013)
!33029 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !33014)
!33030 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !33015)
!33031 = distinct !{!33031, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python"}
!33032 = distinct !{!33032, !33031, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!33033 = distinct !DILocation(line: 810, column: 1, scope: !277)
!33034 = distinct !DILocation(line: 810, column: 1, scope: !278, inlinedAt: !33033)
!33035 = distinct !DILocation(line: 810, column: 1, scope: !242, inlinedAt: !33034)
!33036 = distinct !DILocation(line: 810, column: 1, scope: !241, inlinedAt: !33035)
!33037 = distinct !DILocation(line: 2306, column: 9, scope: !240, inlinedAt: !33036)
!33038 = distinct !DILocation(line: 2290, column: 16, scope: !239, inlinedAt: !33037)
!33039 = distinct !DILocation(line: 39, column: 18, scope: !238, inlinedAt: !33038)
!33040 = distinct !DILocation(line: 461, column: 37, scope: !237, inlinedAt: !33039)
!33041 = distinct !DILocation(line: 250, column: 5, scope: !236, inlinedAt: !33040)
!33042 = distinct !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33039)
!33043 = distinct !DILocation(line: 39, column: 44, scope: !238, inlinedAt: !33038)
!33044 = distinct !DILocation(line: 2292, column: 26, scope: !239, inlinedAt: !33037)
!33045 = !{i64 -4300490108955286257}
!33046 = !{!33032}
!33047 = !DILocation(line: 810, column: 1, scope: !277)
!33048 = !DILocation(line: 810, column: 1, scope: !278, inlinedAt: !33033)
!33049 = !DILocation(line: 75, column: 26, scope: !235, inlinedAt: !33041)
!33050 = !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33039)
!33051 = !DILocation(line: 39, column: 31, scope: !245, inlinedAt: !33042)
!33052 = !DILocation(line: 1595, column: 9, scope: !246, inlinedAt: !33043)
!33053 = !DILocation(line: 2294, column: 17, scope: !239, inlinedAt: !33037)
!33054 = !DILocation(line: 269, column: 13, scope: !247, inlinedAt: !33044)
!33055 = !DILocation(line: 2290, column: 13, scope: !239, inlinedAt: !33037)
!33056 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::result::Result<polars_utils::python_function::PythonObject, serde_json::error::Error>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3794, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33057 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<polars_utils::python_function::PythonObject, serde_json::error::Error>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3794, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33058 = distinct !DILocation(line: 810, column: 1, scope: !33056)
!33059 = distinct !DILocation(line: 810, column: 1, scope: !33057, inlinedAt: !33058)
!33060 = distinct !DILocation(line: 810, column: 1, scope: !242, inlinedAt: !33059)
!33061 = distinct !DILocation(line: 810, column: 1, scope: !241, inlinedAt: !33060)
!33062 = distinct !DILocation(line: 2306, column: 9, scope: !240, inlinedAt: !33061)
!33063 = distinct !DILocation(line: 2290, column: 16, scope: !239, inlinedAt: !33062)
!33064 = distinct !DILocation(line: 39, column: 18, scope: !238, inlinedAt: !33063)
!33065 = distinct !DILocation(line: 461, column: 37, scope: !237, inlinedAt: !33064)
!33066 = distinct !DILocation(line: 250, column: 5, scope: !236, inlinedAt: !33065)
!33067 = distinct !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33064)
!33068 = distinct !DILocation(line: 39, column: 44, scope: !238, inlinedAt: !33063)
!33069 = distinct !DILocation(line: 2292, column: 26, scope: !239, inlinedAt: !33062)
!33070 = distinct !{!33070, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error9ErrorImplECseeLknQCOKOd_13polars_python"}
!33071 = distinct !{!33071, !33070, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error9ErrorImplECseeLknQCOKOd_13polars_python: argument 0"}
!33072 = distinct !DILocation(line: 810, column: 1, scope: !33057, inlinedAt: !33058)
!33073 = distinct !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !33072)
!33074 = distinct !{!33074, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error9ErrorCodeECseeLknQCOKOd_13polars_python"}
!33075 = distinct !{!33075, !33074, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error9ErrorCodeECseeLknQCOKOd_13polars_python: argument 0"}
!33076 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !33073)
!33077 = distinct !DILocation(line: 810, column: 1, scope: !25, inlinedAt: !33076)
!33078 = distinct !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !33077)
!33079 = distinct !DILocation(line: 810, column: 1, scope: !30, inlinedAt: !33078)
!33080 = distinct !DILocation(line: 1921, column: 24, scope: !29, inlinedAt: !33079)
!33081 = distinct !DILocation(line: 462, column: 23, scope: !11, inlinedAt: !33080)
!33082 = distinct !DILocation(line: 344, column: 9, scope: !10, inlinedAt: !33081)
!33083 = distinct !DILocation(line: 229, column: 22, scope: !9, inlinedAt: !33082)
!33084 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !33073)
!33085 = distinct !DILocation(line: 1921, column: 24, scope: !33, inlinedAt: !33084)
!33086 = distinct !DILocation(line: 462, column: 23, scope: !11, inlinedAt: !33085)
!33087 = distinct !DILocation(line: 344, column: 9, scope: !10, inlinedAt: !33086)
!33088 = distinct !DILocation(line: 229, column: 22, scope: !9, inlinedAt: !33087)
!33089 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !33073)
!33090 = distinct !DILocation(line: 1921, column: 24, scope: !33, inlinedAt: !33089)
!33091 = distinct !DILocation(line: 462, column: 23, scope: !11, inlinedAt: !33090)
!33092 = distinct !DILocation(line: 344, column: 9, scope: !10, inlinedAt: !33091)
!33093 = distinct !DILocation(line: 229, column: 22, scope: !9, inlinedAt: !33092)
!33094 = !{i64 -4232256404603919045}
!33095 = !{!33071}
!33096 = !{!33075}
!33097 = !{!33075, !33071}
!33098 = !DILocation(line: 810, column: 1, scope: !33056)
!33099 = !DILocation(line: 810, column: 1, scope: !33057, inlinedAt: !33058)
!33100 = !DILocation(line: 75, column: 26, scope: !235, inlinedAt: !33066)
!33101 = !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33064)
!33102 = !DILocation(line: 39, column: 31, scope: !245, inlinedAt: !33067)
!33103 = !DILocation(line: 1595, column: 9, scope: !246, inlinedAt: !33068)
!33104 = !DILocation(line: 2294, column: 17, scope: !239, inlinedAt: !33062)
!33105 = !DILocation(line: 269, column: 13, scope: !247, inlinedAt: !33069)
!33106 = !DILocation(line: 2290, column: 13, scope: !239, inlinedAt: !33062)
!33107 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !33073)
!33108 = !DILocation(line: 810, column: 1, scope: !25, inlinedAt: !33076)
!33109 = !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !33077)
!33110 = !DILocation(line: 1920, column: 16, scope: !29, inlinedAt: !33079)
!33111 = !DILocation(line: 128, column: 14, scope: !8, inlinedAt: !33083)
!33112 = !DILocation(line: 1920, column: 13, scope: !29, inlinedAt: !33079)
!33113 = !DILocation(line: 128, column: 14, scope: !8, inlinedAt: !33088)
!33114 = !DILocation(line: 128, column: 14, scope: !8, inlinedAt: !33093)
!33115 = distinct !DILocation(line: 810, column: 1, scope: !248)
!33116 = !{i64 3547632055919318411}
!33117 = !DILocation(line: 810, column: 1, scope: !248)
!33118 = !DILocation(line: 810, column: 1, scope: !249, inlinedAt: !33115)
!33119 = distinct !DILocation(line: 810, column: 1, scope: !335)
!33120 = distinct !DILocation(line: 810, column: 1, scope: !241, inlinedAt: !33119)
!33121 = distinct !DILocation(line: 2306, column: 9, scope: !240, inlinedAt: !33120)
!33122 = distinct !DILocation(line: 2290, column: 16, scope: !239, inlinedAt: !33121)
!33123 = distinct !DILocation(line: 39, column: 18, scope: !238, inlinedAt: !33122)
!33124 = distinct !DILocation(line: 461, column: 37, scope: !237, inlinedAt: !33123)
!33125 = distinct !DILocation(line: 250, column: 5, scope: !236, inlinedAt: !33124)
!33126 = distinct !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33123)
!33127 = distinct !DILocation(line: 39, column: 44, scope: !238, inlinedAt: !33122)
!33128 = distinct !DILocation(line: 2292, column: 26, scope: !239, inlinedAt: !33121)
!33129 = !{i64 -7103118022644026150}
!33130 = !DILocation(line: 810, column: 1, scope: !335)
!33131 = !DILocation(line: 75, column: 26, scope: !235, inlinedAt: !33125)
!33132 = !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33123)
!33133 = !DILocation(line: 39, column: 31, scope: !245, inlinedAt: !33126)
!33134 = !DILocation(line: 1595, column: 9, scope: !246, inlinedAt: !33127)
!33135 = !DILocation(line: 2294, column: 17, scope: !239, inlinedAt: !33121)
!33136 = !DILocation(line: 269, column: 13, scope: !247, inlinedAt: !33128)
!33137 = !DILocation(line: 2290, column: 13, scope: !239, inlinedAt: !33121)
!33138 = distinct !DILocation(line: 810, column: 1, scope: !336)
!33139 = distinct !DILocation(line: 810, column: 1, scope: !337, inlinedAt: !33138)
!33140 = distinct !DILocation(line: 810, column: 1, scope: !337, inlinedAt: !33138)
!33141 = !{i64 -7196830871859842529}
!33142 = !DILocation(line: 810, column: 1, scope: !336)
!33143 = !DILocation(line: 810, column: 1, scope: !337, inlinedAt: !33138)
!33144 = !DILocation(line: 810, column: 1, scope: !338, inlinedAt: !33139)
!33145 = !DILocation(line: 810, column: 1, scope: !338, inlinedAt: !33140)
!33146 = distinct !DILocation(line: 810, column: 1, scope: !339)
!33147 = distinct !DILocation(line: 810, column: 1, scope: !314, inlinedAt: !33146)
!33148 = distinct !DILocation(line: 810, column: 1, scope: !314, inlinedAt: !33146)
!33149 = !{i64 -1004362481829624168}
!33150 = !DILocation(line: 810, column: 1, scope: !339)
!33151 = !DILocation(line: 810, column: 1, scope: !314, inlinedAt: !33146)
!33152 = !DILocation(line: 810, column: 1, scope: !315, inlinedAt: !33147)
!33153 = !DILocation(line: 810, column: 1, scope: !315, inlinedAt: !33148)
!33154 = distinct !DILocation(line: 810, column: 1, scope: !340)
!33155 = distinct !DILocation(line: 810, column: 1, scope: !341, inlinedAt: !33154)
!33156 = distinct !DILocation(line: 810, column: 1, scope: !341, inlinedAt: !33154)
!33157 = !{i64 -5642472915967405408}
!33158 = !DILocation(line: 810, column: 1, scope: !340)
!33159 = !DILocation(line: 810, column: 1, scope: !341, inlinedAt: !33154)
!33160 = !DILocation(line: 810, column: 1, scope: !342, inlinedAt: !33155)
!33161 = !DILocation(line: 810, column: 1, scope: !342, inlinedAt: !33156)
!33162 = distinct !DILocation(line: 810, column: 1, scope: !343)
!33163 = distinct !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !33162)
!33164 = distinct !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !33162)
!33165 = !{i64 347374842309829725}
!33166 = !DILocation(line: 810, column: 1, scope: !343)
!33167 = !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !33162)
!33168 = !DILocation(line: 810, column: 1, scope: !345, inlinedAt: !33163)
!33169 = !DILocation(line: 810, column: 1, scope: !345, inlinedAt: !33164)
!33170 = distinct !DILocation(line: 810, column: 1, scope: !346)
!33171 = distinct !DILocation(line: 810, column: 1, scope: !110, inlinedAt: !33170)
!33172 = distinct !DILocation(line: 810, column: 1, scope: !110, inlinedAt: !33170)
!33173 = !{i64 -6775158307683682089}
!33174 = !DILocation(line: 810, column: 1, scope: !346)
!33175 = !DILocation(line: 810, column: 1, scope: !110, inlinedAt: !33170)
!33176 = !DILocation(line: 810, column: 1, scope: !111, inlinedAt: !33171)
!33177 = !DILocation(line: 810, column: 1, scope: !111, inlinedAt: !33172)
!33178 = distinct !DILocation(line: 810, column: 1, scope: !347)
!33179 = distinct !DILocation(line: 810, column: 1, scope: !348, inlinedAt: !33178)
!33180 = distinct !DILocation(line: 810, column: 1, scope: !348, inlinedAt: !33178)
!33181 = !{i64 -958848959616698940}
!33182 = !DILocation(line: 810, column: 1, scope: !347)
!33183 = !DILocation(line: 810, column: 1, scope: !348, inlinedAt: !33178)
!33184 = !DILocation(line: 810, column: 1, scope: !349, inlinedAt: !33179)
!33185 = !DILocation(line: 810, column: 1, scope: !349, inlinedAt: !33180)
!33186 = distinct !DILocation(line: 810, column: 1, scope: !350)
!33187 = distinct !DILocation(line: 810, column: 1, scope: !351, inlinedAt: !33186)
!33188 = distinct !DILocation(line: 810, column: 1, scope: !351, inlinedAt: !33186)
!33189 = !{i64 9210820238065944529}
!33190 = !DILocation(line: 810, column: 1, scope: !350)
!33191 = !DILocation(line: 810, column: 1, scope: !351, inlinedAt: !33186)
!33192 = !DILocation(line: 810, column: 1, scope: !352, inlinedAt: !33187)
!33193 = !DILocation(line: 810, column: 1, scope: !352, inlinedAt: !33188)
!33194 = distinct !DILocation(line: 810, column: 1, scope: !353)
!33195 = distinct !DILocation(line: 810, column: 1, scope: !166, inlinedAt: !33194)
!33196 = distinct !DILocation(line: 810, column: 1, scope: !166, inlinedAt: !33194)
!33197 = !{i64 1371348284922348089}
!33198 = !DILocation(line: 810, column: 1, scope: !353)
!33199 = !DILocation(line: 810, column: 1, scope: !166, inlinedAt: !33194)
!33200 = !DILocation(line: 810, column: 1, scope: !167, inlinedAt: !33195)
!33201 = !DILocation(line: 810, column: 1, scope: !167, inlinedAt: !33196)
!33202 = distinct !DILocation(line: 810, column: 1, scope: !354)
!33203 = distinct !DILocation(line: 810, column: 1, scope: !355, inlinedAt: !33202)
!33204 = distinct !DILocation(line: 810, column: 1, scope: !355, inlinedAt: !33202)
!33205 = !{i64 -4272739247342250345}
!33206 = !DILocation(line: 810, column: 1, scope: !354)
!33207 = !DILocation(line: 810, column: 1, scope: !355, inlinedAt: !33202)
!33208 = !DILocation(line: 810, column: 1, scope: !356, inlinedAt: !33203)
!33209 = !DILocation(line: 810, column: 1, scope: !356, inlinedAt: !33204)
!33210 = distinct !DILocation(line: 810, column: 1, scope: !357)
!33211 = distinct !DILocation(line: 810, column: 1, scope: !358, inlinedAt: !33210)
!33212 = distinct !DILocation(line: 810, column: 1, scope: !358, inlinedAt: !33210)
!33213 = !{i64 -3920027524170050932}
!33214 = !DILocation(line: 810, column: 1, scope: !357)
!33215 = !DILocation(line: 810, column: 1, scope: !358, inlinedAt: !33210)
!33216 = !DILocation(line: 810, column: 1, scope: !359, inlinedAt: !33211)
!33217 = !DILocation(line: 810, column: 1, scope: !359, inlinedAt: !33212)
!33218 = distinct !DILocation(line: 810, column: 1, scope: !360)
!33219 = distinct !DILocation(line: 810, column: 1, scope: !361, inlinedAt: !33218)
!33220 = distinct !DILocation(line: 810, column: 1, scope: !361, inlinedAt: !33218)
!33221 = !{i64 5571555468122148414}
!33222 = !DILocation(line: 810, column: 1, scope: !360)
!33223 = !DILocation(line: 810, column: 1, scope: !361, inlinedAt: !33218)
!33224 = !DILocation(line: 810, column: 1, scope: !362, inlinedAt: !33219)
!33225 = !DILocation(line: 810, column: 1, scope: !362, inlinedAt: !33220)
!33226 = distinct !{!33226, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python"}
!33227 = distinct !{!33227, !33226, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python: argument 0"}
!33228 = distinct !{!33228, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!33229 = distinct !{!33229, !33228, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!33230 = distinct !DILocation(line: 810, column: 1, scope: !363)
!33231 = distinct !DILocation(line: 810, column: 1, scope: !367, inlinedAt: !33230)
!33232 = distinct !DILocation(line: 2814, column: 32, scope: !366, inlinedAt: !33231)
!33233 = distinct !DILocation(line: 3193, column: 26, scope: !365, inlinedAt: !33232)
!33234 = distinct !DILocation(line: 64, column: 9, scope: !366, inlinedAt: !33231)
!33235 = !{i64 -2143459494156667699}
!33236 = !{!33229, !33227}
!33237 = !DILocation(line: 810, column: 1, scope: !363)
!33238 = !DILocation(line: 3956, column: 24, scope: !364, inlinedAt: !33233)
!33239 = !DILocation(line: 2814, column: 12, scope: !366, inlinedAt: !33231)
!33240 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !33234)
!33241 = !DILocation(line: 2857, column: 18, scope: !366, inlinedAt: !33231)
!33242 = distinct !DILocation(line: 810, column: 1, scope: !368)
!33243 = distinct !DILocation(line: 810, column: 1, scope: !369, inlinedAt: !33242)
!33244 = distinct !DILocation(line: 810, column: 1, scope: !205, inlinedAt: !33243)
!33245 = distinct !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !33244)
!33246 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33245)
!33247 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33245)
!33248 = !{i64 -8414645843759937748}
!33249 = !DILocation(line: 810, column: 1, scope: !368)
!33250 = !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33245)
!33251 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !33246)
!33252 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !33247)
!33253 = !DILocation(line: 810, column: 1, scope: !205, inlinedAt: !33243)
!33254 = distinct !DILocation(line: 810, column: 1, scope: !370)
!33255 = !{i64 756106424299145667}
!33256 = !DILocation(line: 810, column: 1, scope: !370)
!33257 = !DILocation(line: 810, column: 1, scope: !371, inlinedAt: !33254)
!33258 = distinct !DILocation(line: 810, column: 1, scope: !372)
!33259 = distinct !DILocation(line: 810, column: 1, scope: !242, inlinedAt: !33258)
!33260 = distinct !DILocation(line: 810, column: 1, scope: !241, inlinedAt: !33259)
!33261 = distinct !DILocation(line: 2306, column: 9, scope: !240, inlinedAt: !33260)
!33262 = distinct !DILocation(line: 2290, column: 16, scope: !239, inlinedAt: !33261)
!33263 = distinct !DILocation(line: 39, column: 18, scope: !238, inlinedAt: !33262)
!33264 = distinct !DILocation(line: 461, column: 37, scope: !237, inlinedAt: !33263)
!33265 = distinct !DILocation(line: 250, column: 5, scope: !236, inlinedAt: !33264)
!33266 = distinct !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33263)
!33267 = distinct !DILocation(line: 39, column: 44, scope: !238, inlinedAt: !33262)
!33268 = distinct !DILocation(line: 2292, column: 26, scope: !239, inlinedAt: !33261)
!33269 = !{i64 2330441107388067336}
!33270 = !DILocation(line: 810, column: 1, scope: !372)
!33271 = !DILocation(line: 75, column: 26, scope: !235, inlinedAt: !33265)
!33272 = !DILocation(line: 462, column: 12, scope: !244, inlinedAt: !33263)
!33273 = !DILocation(line: 39, column: 31, scope: !245, inlinedAt: !33266)
!33274 = !DILocation(line: 1595, column: 9, scope: !246, inlinedAt: !33267)
!33275 = !DILocation(line: 2294, column: 17, scope: !239, inlinedAt: !33261)
!33276 = !DILocation(line: 269, column: 13, scope: !247, inlinedAt: !33268)
!33277 = !DILocation(line: 2290, column: 13, scope: !239, inlinedAt: !33261)
!33278 = distinct !DILocation(line: 810, column: 1, scope: !373)
!33279 = distinct !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !33278)
!33280 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33279)
!33281 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33279)
!33282 = !{i64 -8477661900569792170}
!33283 = !DILocation(line: 810, column: 1, scope: !373)
!33284 = !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33279)
!33285 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !33280)
!33286 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !33281)
!33287 = distinct !DILocation(line: 810, column: 1, scope: !374)
!33288 = distinct !DILocation(line: 810, column: 1, scope: !377, inlinedAt: !33287)
!33289 = distinct !DILocation(line: 810, column: 1, scope: !376, inlinedAt: !33288)
!33290 = distinct !DILocation(line: 810, column: 1, scope: !375, inlinedAt: !33289)
!33291 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33290)
!33292 = distinct !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33290)
!33293 = !{i64 -6901917732769721084}
!33294 = !DILocation(line: 810, column: 1, scope: !374)
!33295 = !DILocation(line: 810, column: 1, scope: !4, inlinedAt: !33290)
!33296 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !33291)
!33297 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !33292)
!33298 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<tokio::runtime::driver::Driver>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskmDBXs7hs3c_5tokio7runtime6driver6DriverEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33299 = distinct !{!33299, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6driver6DriverECseeLknQCOKOd_13polars_python"}
!33300 = distinct !{!33300, !33299, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6driver6DriverECseeLknQCOKOd_13polars_python: argument 0"}
!33301 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::driver::TimeDriver>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6driver10TimeDriverECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33302 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::driver::Driver>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6driver6DriverECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33303 = distinct !DILocation(line: 810, column: 1, scope: !33298)
!33304 = distinct !DILocation(line: 810, column: 1, scope: !33302, inlinedAt: !33303)
!33305 = distinct !{!33305, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6driver7IoStackECseeLknQCOKOd_13polars_python"}
!33306 = distinct !{!33306, !33305, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6driver7IoStackECseeLknQCOKOd_13polars_python: argument 0"}
!33307 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::driver::IoStack>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6driver7IoStackECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33308 = distinct !DILocation(line: 810, column: 1, scope: !33301, inlinedAt: !33304)
!33309 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<libc::unix::linux_like::epoll_event, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs4Py5NwysRLz_4libc4unix10linux_like11epoll_eventEECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33310 = distinct !DISubprogram(name: "drop_in_place<mio::event::events::Events>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1Pgp2iwny3S_3mio5event6events6EventsECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33311 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::io::driver::Driver>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCskmDBXs7hs3c_5tokio7runtime2io6driver6DriverECseeLknQCOKOd_13polars_python", scope: !3800, file: !3799, line: 810, type: !3779, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3778)
!33312 = distinct !DILocation(line: 810, column: 1, scope: !33307, inlinedAt: !33308)
!33313 = distinct !DILocation(line: 810, column: 1, scope: !33311, inlinedAt: !33312)
!33314 = distinct !DILocation(line: 810, column: 1, scope: !33310, inlinedAt: !33313)
end_hunk_1
