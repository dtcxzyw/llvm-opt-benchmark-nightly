inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal7JSArray33ArrayJoinConcatToSequentialStringEPNS0_7IsolateEmlmm:bb.a
bb.n:                                             ; preds = %.lr.ph163.i
  %i.bd = lshr i64 %i.ba, 32
  %i.be = trunc nuw i64 %i.bd to i32              ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  %6 = call i32 @llvm.smin.i32(i32 %i.be, i32 0)
  %.297.i = sub nsw i32 0, %6
  %.290.i = select i1 %i.bf, i32 %i.be, i32 %.189161.i
  br label %bb.o

end_hunk_0
begin_hunk_1_@_ZN2v88internal7JSArray33ArrayJoinConcatToSequentialStringEPNS0_7IsolateEmlmm:bb.a
bb.ac:                                            ; preds = %.lr.ph138.i
  %i.dx = lshr i64 %i.du, 32
  %i.dy = trunc nuw i64 %i.dx to i32              ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  %7 = call i32 @llvm.smin.i32(i32 %i.dy, i32 0)
  %.297.i45 = sub nsw i32 0, %7
  %.290.i46 = select i1 %i.dz, i32 %i.dy, i32 %.189136.i
  br label %bb.ad

end_hunk_1
begin_hunk_2_@llvm.umin.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
