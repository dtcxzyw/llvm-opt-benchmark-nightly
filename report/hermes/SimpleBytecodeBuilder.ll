inline.NumInlined: 309
inline.NumDeleted: 149
begin_hunk_0_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a
bb.b:                                             ; preds = %.lr.ph49, %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit
  %indvars.iv57 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next58, %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit ] ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %indvars.iv57 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !32 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %i.bu = load i32, ptr %i.bi, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 15, i1 false)
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a
  %indvars.iv62 = phi i64 [ 0, %.lr.ph51.preheader ], [ %indvars.iv.next63, %.lr.ph51 ] ; 2 uses
  %i.ey = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.ez = load ptr, ptr %1, align 8, !tbaa !11
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %indvars.iv62 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !34
  %i.ff = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
end_hunk_2
begin_hunk_3_@llvm.assume
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_3
