inline.NumInlined: 183
inline.NumDeleted: 84
begin_hunk_0_@_ZN6Assimp7Collada34MakeColladaAssimpMetaKeysCamelCaseB5cxx11Ev:bb.a
  ret void

.lr.ph:                                           ; preds = %_ZN6Assimp7Collada25MakeColladaAssimpMetaKeysB5cxx11Ev.exit, %_ZN6Assimp7Collada11ToCamelCaseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.sroa.05.09 = phi ptr [ %i.ap, %_ZN6Assimp7Collada11ToCamelCaseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.i, %_ZN6Assimp7Collada25MakeColladaAssimpMetaKeysB5cxx11Ev.exit ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.09) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp7Collada34MakeColladaAssimpMetaKeysCamelCaseB5cxx11Ev:bb.a

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %i.v = phi ptr [ %i.am, %bb.i ], [ %i.s, %bb.e ]
  %.sroa.09.023.i = phi ptr [ %.sroa.09.1.i, %bb.i ], [ %i.r, %bb.e ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.023.i) ]
  %i.w = load i8, ptr %.sroa.09.023.i, align 1    ; 4 uses
  %i.x = icmp eq i8 %i.w, 95
  br i1 %i.x, label %bb.f, label %bb.h
end_hunk_1
begin_hunk_2_@_ZN6Assimp7Collada11ToCamelCaseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.m = phi ptr [ %i.ad, %bb.f ], [ %i.j, %bb.b ]
  %.sroa.09.023 = phi ptr [ %.sroa.09.1, %bb.f ], [ %i.i, %bb.b ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.023) ]
  %i.n = load i8, ptr %.sroa.09.023, align 1      ; 4 uses
  %i.o = icmp eq i8 %i.n, 95
  br i1 %i.o, label %bb.c, label %bb.e
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15
end_hunk_3
