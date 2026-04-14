begin_hunk_0_@create_box:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %7, ptr %i.h, align 4, !tbaa !22
  %i.i = shl nsw i32 %8, 1                        ; 3 uses
  %i.j = add nsw i32 %i.i, %5                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.j, ptr %i.k, align 8, !tbaa !23
  %i.l = add nsw i32 %i.i, %6                     ; 2 uses
end_hunk_0
begin_hunk_1_@create_box:bb.a
  store i32 %i.j, ptr %i.q, align 8, !tbaa !27
  %i.r = mul nsw i32 %i.j, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %9 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 14)
  %i.t = sub i32 %i.r, %9
  %i.u = add i32 %i.t, 21
  %i.v = and i32 %i.u, -8                         ; 2 uses
  store i32 %i.v, ptr %i.s, align 4, !tbaa !28
  %i.w = mul nsw i32 %i.v, %i.n                   ; 3 uses
end_hunk_1
begin_hunk_2_@create_box:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ae = sext i32 %1 to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = tail call i32 @posix_memalign(ptr noundef nonnull %i.ad, i64 noundef 64, i64 noundef %i.af) #7 ; 0 uses
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load i32, ptr %i.x, align 8, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %i.al) #7 ; 0 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !29
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !8
end_hunk_2
begin_hunk_3_@create_box:bb.a
  %i.ce = load i32, ptr %i.s, align 4, !tbaa !28
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 3
  %i.ch = call i32 @posix_memalign(ptr noundef nonnull %i.cd, i64 noundef 64, i64 noundef %i.cg) #7 ; 0 uses
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !46
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !28
  %i.ck = sext i32 %i.cj to i64
end_hunk_3
begin_hunk_4_@create_box:bb.a
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.cq = call i32 @posix_memalign(ptr noundef nonnull %i.cp, i64 noundef 64, i64 noundef %i.co) #7 ; 0 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.cs = load i32, ptr %i.s, align 4, !tbaa !28
  %i.ct = sext i32 %i.cs to i64
end_hunk_4
begin_hunk_5_@create_box:bb.a
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.cz = call i32 @posix_memalign(ptr noundef nonnull %i.cy, i64 noundef 64, i64 noundef %i.cx) #7 ; 0 uses
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.db = load i32, ptr %i.s, align 4, !tbaa !28
  %i.dc = sext i32 %i.db to i64
end_hunk_5
begin_hunk_6_@create_box:bb.a
  %i.ed = add i32 %i.ec, %i.cv
  %i.ee = add i32 %i.ed, %i.de
  %i.ef = shl i32 %i.ee, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ef
}

end_hunk_6
begin_hunk_7_@destroy_box:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.c) #7
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.d) #7
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_7
