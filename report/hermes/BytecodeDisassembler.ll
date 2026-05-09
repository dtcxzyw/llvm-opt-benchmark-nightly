inline.NumInlined: 1739
inline.NumDeleted: 636
begin_hunk_0_@_ZN6hermes3hbc12_GLOBAL__N_111SLPToStringB5cxx11EhPKhPi:._crit_edge.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.m = icmp ult i8 %.0.copyload.i, 10
  %i.n = icmp ult i8 %.0.copyload.i, 100
  %. = select i1 %i.n, i32 2, i32 3               ; 3 uses
  %20 = zext nneg i32 %. to i64
  %i.o = select i1 %i.m, i64 1, i64 %20
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !83, !alias.scope !84
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc12_GLOBAL__N_111SLPToStringB5cxx11EhPKhPi:._crit_edge.i.i
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7, !noalias !84
  %21 = zext nneg i32 %. to i64
  %22 = getelementptr i8, ptr %i.q, i64 %21
  %i.z = getelementptr i8, ptr %22, i64 -1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !7
  %i.aa = load i8, ptr %i.w, align 2, !tbaa !7, !noalias !84
  %23 = zext nneg i32 %. to i64
  %24 = getelementptr i8, ptr %i.q, i64 %23
  %i.ab = getelementptr i8, ptr %24, i64 -2
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !7
  br label %bb.b

end_hunk_1
