Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Queue?download=true
inline.NumInlined: 1013
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@llvm.umax.i32
attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind memory(none) }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS5_EED2Ev, null, null, null, null, null, null}
!3 = distinct !{!3, !57}
!4 = distinct !{!4, !57}
!5 = distinct !{!5, !57}
!6 = distinct !{!6, !57}
!7 = distinct !{!7, !57}
!8 = distinct !{!8, !57}
!9 = distinct !{!9, !57}
!10 = distinct !{!10, !57}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"_ZTSSt13__atomic_baseIiE", !16, i64 0}
!20 = !{!"_ZTSSt6atomicIiE", !19, i64 0}
!21 = !{!"_ZTSN3tbb6detail2d113tbb_allocatorINS0_2d213hash_map_baseINS2_ISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS1_13spin_rw_mutexEE6bucketEEE"}
!22 = !{!"long", !15, i64 0}
!23 = !{!"_ZTSSt13__atomic_baseImE", !22, i64 0}
!24 = !{!"_ZTSSt6atomicImE", !23, i64 0}
!25 = !{!"_ZTSN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEEE", !21, i64 0, !24, i64 8, !24, i64 16, !15, i64 24, !15, i64 56}
!26 = !{!"_ZTSSt4hashIjE"}
!27 = !{!"_ZTSSt8equal_toIjE"}
!28 = !{!"_ZTSN3tbb6detail2d116tbb_hash_compareIjEE", !26, i64 0, !27, i64 1}
!29 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEEE", !25, i64 0, !28, i64 568}
!30 = !{!"_ZTSSt4lessIjE"}
!31 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !30, i64 0}
!32 = !{!"_ZTSSt14_Rb_tree_color", !15, i64 0}
!33 = !{!"any pointer", !15, i64 0}
!34 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !33, i64 0}
!35 = !{!"_ZTSSt18_Rb_tree_node_base", !32, i64 0, !34, i64 8, !34, i64 16, !34, i64 24}
!36 = !{!"_ZTSSt15_Rb_tree_header", !35, i64 0, !22, i64 32}
!37 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE13_Rb_tree_implISE_Lb1EEE", !31, i64 0, !36, i64 8}
!38 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE", !37, i64 0}
!39 = !{!"_ZTSSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE", !38, i64 0}
!40 = !{!"_ZTSSt12__mutex_base", !15, i64 0}
!41 = !{!"_ZTSSt5mutex", !40, i64 0}
!42 = !{!"_ZTSN7openvdb5v13_02io5Queue4ImplE", !16, i64 0, !16, i64 4, !20, i64 8, !16, i64 12, !29, i64 16, !39, i64 592, !16, i64 640, !41, i64 648}
!43 = !{!42, !16, i64 0}
!44 = !{!42, !16, i64 4}
!45 = !{!42, !16, i64 12}
!46 = !{!36, !34, i64 8}
!47 = !{!36, !34, i64 16}
!48 = !{!36, !34, i64 24}
!49 = !{!36, !22, i64 32}
!50 = !{!42, !16, i64 640}
!51 = !{!"p1 _ZTSN7openvdb5v13_02io5Queue4ImplE", !33, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"_ZTS8timespec", !22, i64 0, !22, i64 8}
!54 = !{!53, !22, i64 0}
!55 = !{!53, !22, i64 8}
!56 = !{!16, !16, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"p1 _ZTSN3tbb6detail2d113spin_rw_mutexE", !33, i64 0}
!59 = !{!"bool", !15, i64 0}
!60 = !{!"_ZTSN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEEE", !58, i64 0, !59, i64 8}
!61 = !{!60, !58, i64 0}
!62 = !{!60, !59, i64 8}
!63 = !{!"p1 _ZTSN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4nodeE", !33, i64 0}
!64 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorE", !60, i64 0, !63, i64 16, !22, i64 24}
!65 = !{!64, !63, i64 16}
!66 = !{!"_ZTSN7openvdb5v13_02io5Queue6StatusE", !15, i64 0}
!67 = !{!"_ZTSSt4pairIKjN7openvdb5v13_02io5Queue6StatusEE", !16, i64 0, !66, i64 4}
!68 = !{!67, !66, i64 4}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!34, !34, i64 0}
!72 = !{!"p1 int", !33, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"_ZTSSt14_Function_base", !15, i64 0, !33, i64 16}
!75 = !{!74, !33, i64 16}
!76 = !{!33, !33, i64 0}
!77 = !{!15, !15, i64 0}
!78 = !{i64 0, i64 16, !77}
!79 = !{!"p1 _ZTSSt10shared_ptrIKN7openvdb5v13_08GridBaseEE", !33, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS5_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!80, !79, i64 8}
!83 = !{!80, !79, i64 16}
!84 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!85 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0}
!86 = !{!85, !84, i64 0}
!87 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 8, !16, i64 12}
!88 = !{!87, !16, i64 8}
!89 = !{!87, !16, i64 12}
!90 = !{!"vtable pointer", !14, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{!"_ZTSSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEE", !74, i64 0, !33, i64 24}
!94 = !{!"_ZTSN7openvdb5v13_02io12_GLOBAL__N_14TaskE", !16, i64 8, !93, i64 16}
!95 = !{!94, !16, i64 8}
!96 = !{!79, !79, i64 0}
!97 = !{!"p1 omnipotent char", !33, i64 0}
!98 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !97, i64 0}
!99 = !{!98, !97, i64 0}
!100 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !98, i64 0, !22, i64 8, !15, i64 16}
!101 = !{!100, !22, i64 8}
!102 = !{!100, !97, i64 0}
!103 = !{!"p1 _ZTSSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS3_6StatusEEPS4_St12_PlaceholderILi1EES9_ILi2EEEE", !33, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!93, !33, i64 24}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!"p1 _ZTSN3tbb6detail2d117small_object_poolE", !33, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{ptr @_ZN7openvdb5v13_07MetaMapD2Ev}
!110 = !{ptr @_ZN7openvdb5v13_09ExceptionD2Ev}
!111 = !{!66, !66, i64 0}
!112 = !{!"p1 _ZTSN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE6bucketE", !33, i64 0}
!113 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorE", !60, i64 0, !112, i64 16}
!114 = !{!113, !112, i64 16}
!115 = !{!"p1 _ZTSN3tbb6detail2d218hash_map_node_baseINS0_2d113spin_rw_mutexEEE", !33, i64 0}
!116 = !{!"_ZTSSt13__atomic_baseIlE", !22, i64 0}
!117 = !{!"_ZTSSt6atomicIlE", !116, i64 0}
!118 = !{!"_ZTSN3tbb6detail2d113spin_rw_mutexE", !117, i64 0}
!119 = !{!"_ZTSN3tbb6detail2d218hash_map_node_baseINS0_2d113spin_rw_mutexEEE", !115, i64 0, !118, i64 8}
!120 = !{!119, !115, i64 0}
!121 = !{!64, !22, i64 24}
!122 = !{!116, !22, i64 0}
!123 = !{!35, !34, i64 24}
!124 = !{!35, !34, i64 16}
!125 = !{!"p1 _ZTSSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE", !33, i64 0}
!126 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEEE", !33, i64 0}
!127 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE10_Auto_nodeE", !125, i64 0, !126, i64 8}
!128 = !{!127, !126, i64 8}
!129 = !{!23, !22, i64 0}
!130 = !{!36, !32, i64 0}
!131 = distinct !{!131, !57}
!132 = !{!"p1 _ZTSN7openvdb5v13_08GridBaseE", !33, i64 0}
!133 = !{!"_ZTSSt12__shared_ptrIKN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EE", !132, i64 0, !85, i64 8}
!134 = !{!133, !132, i64 0}
!135 = distinct !{!135, !57}
!136 = distinct !{!136, !106}
!137 = distinct !{!137, !57}
!138 = distinct !{!138, !57}
!139 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_02io5Queue4ImplELb0EE", !51, i64 0}
!140 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_02io5Queue4ImplESt12_PlaceholderILi1EES6_ILi2EEEE", !139, i64 0}
!141 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_02io5Queue4ImplESt12_PlaceholderILi1EES6_ILi2EEEE", !140, i64 0}
!142 = !{!"_ZTSSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS3_6StatusEEPS4_St12_PlaceholderILi1EES9_ILi2EEEE", !15, i64 0, !141, i64 16}
!143 = !{!142, !15, i64 0}
!144 = !{!"_ZTSN3tbb6detail2d013do_once_stateE", !15, i64 0}
!145 = !{!"_ZTSSt6atomicIN3tbb6detail2d013do_once_stateEE", !144, i64 0}
!146 = !{!"p1 _ZTSN3tbb6detail2r15arenaE", !33, i64 0}
!147 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2r15arenaEE", !146, i64 0}
!148 = !{!"_ZTSSt6atomicIPN3tbb6detail2r15arenaEE", !147, i64 0}
!149 = !{!"_ZTSN3tbb6detail2d115task_arena_base8priorityE", !15, i64 0}
!150 = !{!"_ZTSN3tbb6detail2d115task_arena_baseE", !22, i64 0, !145, i64 8, !148, i64 16, !16, i64 24, !16, i64 28, !149, i64 32, !16, i64 36, !16, i64 40, !16, i64 44}
!151 = !{!150, !22, i64 0}
!152 = !{!145, !144, i64 0}
!153 = !{!147, !146, i64 0}
!154 = !{!150, !16, i64 40}
!155 = !{!150, !16, i64 44}
!156 = !{!"_ZTSN3tbb6detail2d122small_object_allocatorE", !107, i64 0}
!157 = !{!156, !107, i64 0}
!158 = distinct !{null, null, null, null, null, null}
!159 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io7ArchiveELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!160 = !{ptr @_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskD2Ev}
!161 = distinct !{!161, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!162 = distinct !{!162, !161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!163 = distinct !{!163, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!164 = distinct !{!164, !163, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!165 = !{!162}
!166 = !{!164, !162}
!167 = distinct !{null, null}
!168 = distinct !{null}
!169 = distinct !{null, null}
!170 = !{!"p1 _ZTSN7openvdb5v13_02io7ArchiveE", !33, i64 0}
!171 = !{!"_ZTSSt12__shared_ptrIN7openvdb5v13_02io7ArchiveELN9__gnu_cxx12_Lock_policyE2EE", !170, i64 0, !85, i64 8}
!172 = !{!171, !170, i64 0}
!173 = distinct !{null}
!174 = distinct !{null}
!175 = distinct !{!175, !57}
!176 = distinct !{!176, !106}
!177 = distinct !{!177, !57}
!178 = distinct !{!178, !106}
!179 = distinct !{null}
!180 = distinct !{!180, !106}
!181 = distinct !{!181, !57}
!182 = distinct !{!182, !106}
!183 = distinct !{!183, !57}
!184 = distinct !{!184, !106}
!185 = distinct !{!185, !57}
!186 = distinct !{null, null, null, null, null, null}
!187 = !{!"p1 _ZTSSt9type_info", !33, i64 0}
!188 = !{!187, !187, i64 0}
!189 = distinct !{null}
!190 = distinct !{!190, !57}
!191 = distinct !{!191, !106}
!192 = distinct !{!192, !57}
!193 = distinct !{!193, !57}
!194 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2d218hash_map_node_baseINS1_2d113spin_rw_mutexEEEE", !115, i64 0}
!195 = !{!194, !115, i64 0}
!196 = !{!67, !16, i64 0}
!197 = !{ptr @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_ED2Ev}
!198 = distinct !{null, null}
!199 = distinct !{null, null, null, null, null, null}
!200 = distinct !{!200, !57}
!201 = distinct !{!201, !57}
!202 = distinct !{!202, !57}
!203 = distinct !{!203, !57}
!204 = distinct !{!204, !57}
!205 = !{!125, !125, i64 0}
!206 = !{!"_ZTSSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEE", !16, i64 0, !93, i64 8}
!207 = !{!206, !16, i64 0}
!208 = distinct !{!208, !57}
end_hunk_0
