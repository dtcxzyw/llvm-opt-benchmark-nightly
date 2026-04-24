inline.NumInlined: 2069
inline.NumDeleted: 754
begin_hunk_0_@_ZN6Assimp13ObjFileParser15getMaterialDescEv:bb.a
_ZNK8aiStringeqERKS_.exit:                        ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.bv, ptr nonnull %i.bo, i64 %i.br)
  %i.bw = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %i.bw, label %bb.an, label %bb.n

end_hunk_0
begin_hunk_1_@_ZN6Assimp13ObjFileParser15getMaterialDescEv:bb.a
  store i32 %.010.i, ptr %i.ib, align 4
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNK8aiStringeqERKS_.exit
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 7 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_1
