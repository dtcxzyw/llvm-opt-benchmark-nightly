Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/map_sorter?download=true
inline.NumInlined: 26
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_upb_mapsorter_pushexts:bb.a
  br label %_upb_mapsorter_resize.exit.thread

bb.g:                                             ; preds = %bb.o, %.lr.ph35.new
  %.033 = phi i64 [ 0, %.lr.ph35.new ], [ %i.cf, %bb.o ] ; 5 uses
  %.02232 = phi ptr [ %i.ax, %.lr.ph35.new ], [ %.1.3, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph35.new ], [ %niter.next.3, %bb.o ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.033
  %.sroa.0.0.copyload = load i64, ptr %i.bi, align 8, !tbaa !39 ; 2 uses
  %i.bj = trunc i64 %.sroa.0.0.copyload to i1
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = and i64 %.sroa.0.0.copyload, -4
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %.02232, i64 8
  store ptr %i.bl, ptr %.02232, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi ptr [ %i.bm, %bb.h ], [ %.02232, %bb.g ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.033
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0.0.copyload.1 = load i64, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  %i.bp = trunc i64 %.sroa.0.0.copyload.1 to i1
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = and i64 %.sroa.0.0.copyload.1, -4
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %i.br, ptr %.1, align 8, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.1 = phi ptr [ %i.bs, %bb.j ], [ %.1, %bb.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.033
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.0.0.copyload.2 = load i64, ptr %i.bu, align 8, !tbaa !39 ; 2 uses
  %i.bv = trunc i64 %.sroa.0.0.copyload.2 to i1
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = and i64 %.sroa.0.0.copyload.2, -4
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  store ptr %i.bx, ptr %.1.1, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.2 = phi ptr [ %i.by, %bb.l ], [ %.1.1, %bb.k ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.033
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.0.0.copyload.3 = load i64, ptr %i.ca, align 8, !tbaa !39 ; 2 uses
  %i.cb = trunc i64 %.sroa.0.0.copyload.3 to i1
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = and i64 %.sroa.0.0.copyload.3, -4
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  store ptr %i.cd, ptr %.1.2, align 8, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.3 = phi ptr [ %i.ce, %bb.n ], [ %.1.2, %bb.m ] ; 2 uses
  %i.cf = add nuw nsw i64 %.033, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge36.loopexit.unr-lcssa, label %bb.g, !llvm.loop !43

_upb_mapsorter_resize.exit.thread:                ; preds = %bb.b, %_upb_mapsorter_resize.exit, %._crit_edge36
  %.1.i29 = phi i1 [ true, %._crit_edge36 ], [ true, %_upb_mapsorter_resize.exit ], [ false, %bb.b ]
  ret i1 %.1.i29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpext(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val5 = load i32, ptr %i.b, align 8, !tbaa !47
  %i.c = load ptr, ptr %1, align 8, !tbaa !30
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %.val = load i32, ptr %i.d, align 8, !tbaa !47
  %i.e = icmp ult i32 %.val5, %.val
  %i.f = select i1 %i.e, i32 -1, i32 1
  ret i32 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpi64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !33
  %.val2 = load ptr, ptr %1, align 8, !tbaa !33
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val2, i64 8
  %.val2.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val2.val to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload4 = load i64, ptr %i.d, align 1
  %.0.copyload = load i64, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.scmp.i32.i64(i64 %.0.copyload4, i64 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpu64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !33
  %.val2 = load ptr, ptr %1, align 8, !tbaa !33
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val2, i64 8
  %.val2.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val2.val to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload4 = load i64, ptr %i.d, align 1
  %.0.copyload = load i64, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.ucmp.i32.i64(i64 %.0.copyload4, i64 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpi32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !33
  %.val2 = load ptr, ptr %1, align 8, !tbaa !33
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val2, i64 8
  %.val2.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val2.val to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload4 = load i32, ptr %i.d, align 1
  %.0.copyload = load i32, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.scmp.i32.i32(i32 %.0.copyload4, i32 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpu32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !33
  %.val2 = load ptr, ptr %1, align 8, !tbaa !33
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val2, i64 8
  %.val2.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val2.val to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload4 = load i32, ptr %i.d, align 1
  %.0.copyload = load i32, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.ucmp.i32.i32(i32 %.0.copyload4, i32 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_mapsorter_cmpbool(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !33
  %.val3 = load ptr, ptr %1, align 8, !tbaa !33
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val3, i64 8
  %.val3.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val3.val to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload5 = load i8, ptr %i.d, align 1
  %.0.copyload = load i8, ptr %i.f, align 1
  %i.g = tail call i32 @llvm.ucmp.i32.i8(i8 %.0.copyload5, i8 %.0.copyload)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @_upb_mapsorter_cmpstr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !33
  %.val6 = load ptr, ptr %1, align 8, !tbaa !33
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val6, i64 8
  %.val6.val = load i64, ptr %i.b, align 8
  %i.c = inttoptr i64 %.val.val to ptr            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = inttoptr i64 %.val6.val to ptr           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.e, align 4, !tbaa !34   ; 2 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  %2 = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.g)
  %3 = zext i32 %2 to i64
  %i.i = tail call i32 @memcmp(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, i64 noundef %3) #8 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sub nsw i32 0, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i32 @llvm.ucmp.i32.i32(i32 %i.h, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !5, i64 8}
!10 = !{!"", !11, i64 0, !5, i64 8, !5, i64 12}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!15 = !{!14, !5, i64 4}
!16 = !{!14, !5, i64 8}
!17 = !{!10, !5, i64 12}
!18 = !{!10, !11, i64 0}
!19 = !{!20, !12, i64 0}
!20 = !{!"upb_alloc", !12, i64 0}
!21 = distinct !{null, null, null}
!22 = !{!23, !24, i64 3}
!23 = !{!"upb_Map", !6, i64 0, !6, i64 1, !24, i64 2, !24, i64 3, !6, i64 8}
!24 = !{!"_Bool", !6, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!28, !5, i64 12}
!28 = !{!"", !29, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 _ZTS11_upb_tabent", !12, i64 0}
!30 = !{!12, !12, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!29, !29, i64 0}
!34 = !{!5, !5, i64 0}
!35 = distinct !{!35, !32, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !32, !37, !36}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !6, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !32}
!44 = !{!45, !46, i64 0}
!45 = !{!"", !46, i64 0, !6, i64 8}
!46 = !{!"p1 _ZTS22upb_MiniTableExtension", !12, i64 0}
!47 = !{!48, !5, i64 0}
!48 = !{!"upb_MiniTableExtension", !49, i64 0, !6, i64 16, !51, i64 24}
!49 = !{!"upb_MiniTableField", !5, i64 0, !50, i64 4, !50, i64 6, !50, i64 8, !6, i64 10, !6, i64 11}
!50 = !{!"short", !6, i64 0}
!51 = !{!"p1 _ZTS13upb_MiniTable", !12, i64 0}
end_hunk_0
