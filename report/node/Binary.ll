inline.NumInlined: 7358
inline.NumDeleted: 3045
begin_hunk_0_@"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary12find_libraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKPNS3_12DylibCommandESt6vectorISI_SaISI_EEEEEEbT_":bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i8 1, ptr %i.am, align 8, !alias.scope !623
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !623
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.an, ptr %2, align 8, !alias.scope !633
  %i.ao = icmp eq ptr %i.ae, %i.ad
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
begin_hunk_1_@"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary12find_libraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKPNS3_12DylibCommandESt6vectorISI_SaISI_EEEEEEbT_":bb.a
  store i32 2, ptr %3, align 8, !alias.scope !623
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.bd, align 8, !alias.scope !623
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !alias.scope !635
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bf, align 8, !alias.scope !633
  store i8 0, ptr %i.be, align 8
end_hunk_1
begin_hunk_2_@llvm.smin.i64
!632 = distinct !{!632, !"_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_"}
!633 = !{!634}
!634 = distinct !{!634, !632, !"_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_: argument 0"}
!635 = !{!636}
!636 = distinct !{!636, !632, !"_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_: argument 0:thread"}
end_hunk_2
