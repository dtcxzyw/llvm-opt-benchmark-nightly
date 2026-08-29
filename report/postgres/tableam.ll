Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tableam?download=true
inline.NumInlined: 31
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@table_block_parallelscan_nextpage:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %1, align 8
  %i.i = add i64 %i.h, 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4              ; 5 uses
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %1, align 8
  %i.n = shl i32 %i.k, 6
  %i.o = sub i32 %.030, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = lshr i32 %i.k, 1                         ; 2 uses
  store i32 %i.r, ptr %i.j, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.s = phi i32 [ %i.r, %bb.g ], [ %i.k, %bb.f ], [ %i.k, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.u = zext i32 %i.s to i64
  %i.v = tail call i64 asm sideeffect "\09lock\09\09\09\09\0A\09xaddq\09$0,$1\09\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.t, i64 range(i64 0, 4294967296) %i.u, ptr nonnull elementtype(i64) %i.t) #9, !srcloc !19
  %storemerge.in.pre = load i32, ptr %i.j, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %storemerge.in = phi i32 [ %storemerge.in.pre, %bb.h ], [ %i.g, %bb.d ]
  %storemerge33 = phi i64 [ %i.v, %bb.h ], [ %i.i, %bb.d ] ; 4 uses
  store i64 %storemerge33, ptr %1, align 8
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.f, align 8
  %i.w = zext i32 %.030 to i64
  %.not34 = icmp ult i64 %storemerge33, %i.w
  br i1 %.not34, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %storemerge33, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = urem i64 %i.aa, %i.ad
  %i.af = trunc nuw i64 %i.ae to i32              ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = load i8, ptr %i.ag, align 4, !range !5, !noundef !8
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.sink.split, label %bb.m

.thread:                                          ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !range !5, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp eq i64 %storemerge33, %i.ao
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load i32, ptr %i.aq, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.l
  %.sink = phi i32 [ %i.ar, %bb.l ], [ %i.af, %bb.j ]
  %.02938.ph = phi i32 [ -1, %bb.l ], [ %i.af, %bb.j ]
  tail call void @ss_report_location(ptr noundef %0, i32 noundef %.sink) #9
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %.thread, %bb.k, %bb.j
  %.02938 = phi i32 [ -1, %.thread ], [ -1, %bb.k ], [ %i.af, %bb.j ], [ %.02938.ph, %.sink.split ]
  ret i32 %.02938
}

declare void @ss_report_location(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 105553116241921) i64 @table_block_relation_size(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  br i1 %i.a, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %RelationGetSmgr.exit, !prof !20

bb.b:                                             ; preds = %.preheader
  %i.f = load i32, ptr %i.c, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.g = tail call ptr @smgropen(i64 %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, i32 noundef %i.f) #9 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  tail call void @smgrpin(ptr noundef %i.g) #9
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %RelationGetSmgr.exit

RelationGetSmgr.exit:                             ; preds = %.preheader, %bb.b
  %i.h = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %.preheader ]
  %i.i = tail call i32 @smgrnblocks(ptr noundef %i.h, i32 noundef 0) #9
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %RelationGetSmgr.exit.1, !prof !20

bb.c:                                             ; preds = %RelationGetSmgr.exit
  %i.m = load i32, ptr %i.c, align 4
  %.sroa.0.0.copyload.i.1 = load i64, ptr %0, align 8
  %.sroa.2.0.copyload.i.1 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.n = tail call ptr @smgropen(i64 %.sroa.0.0.copyload.i.1, i32 %.sroa.2.0.copyload.i.1, i32 noundef %i.m) #9 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8
  tail call void @smgrpin(ptr noundef %i.n) #9
  %.pre.i.1 = load ptr, ptr %i.b, align 8
  br label %RelationGetSmgr.exit.1

RelationGetSmgr.exit.1:                           ; preds = %bb.c, %RelationGetSmgr.exit
  %i.o = phi ptr [ %.pre.i.1, %bb.c ], [ %i.k, %RelationGetSmgr.exit ]
  %i.p = tail call i32 @smgrnblocks(ptr noundef %i.o, i32 noundef 1) #9
  %i.q = zext i32 %i.p to i64
  %i.r = add nuw nsw i64 %i.j, %i.q
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %RelationGetSmgr.exit.2, !prof !20

bb.d:                                             ; preds = %RelationGetSmgr.exit.1
  %i.u = load i32, ptr %i.c, align 4
  %.sroa.0.0.copyload.i.2 = load i64, ptr %0, align 8
  %.sroa.2.0.copyload.i.2 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.v = tail call ptr @smgropen(i64 %.sroa.0.0.copyload.i.2, i32 %.sroa.2.0.copyload.i.2, i32 noundef %i.u) #9 ; 2 uses
  store ptr %i.v, ptr %i.b, align 8
  tail call void @smgrpin(ptr noundef %i.v) #9
  %.pre.i.2 = load ptr, ptr %i.b, align 8
  br label %RelationGetSmgr.exit.2

RelationGetSmgr.exit.2:                           ; preds = %bb.d, %RelationGetSmgr.exit.1
  %i.w = phi ptr [ %.pre.i.2, %bb.d ], [ %i.s, %RelationGetSmgr.exit.1 ]
  %i.x = tail call i32 @smgrnblocks(ptr noundef %i.w, i32 noundef 2) #9
  %i.y = zext i32 %i.x to i64
  %i.z = add nuw nsw i64 %i.r, %i.y
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %RelationGetSmgr.exit14, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ad = load i32, ptr %i.ac, align 4
  %.sroa.0.0.copyload.i10 = load i64, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i12 = load i32, ptr %.sroa.2.0..sroa_idx.i11, align 8
  %i.ae = tail call ptr @smgropen(i64 %.sroa.0.0.copyload.i10, i32 %.sroa.2.0.copyload.i12, i32 noundef %i.ad) #9 ; 2 uses
  store ptr %i.ae, ptr %i.b, align 8
  tail call void @smgrpin(ptr noundef %i.ae) #9
  %.pre.i13 = load ptr, ptr %i.b, align 8
  br label %RelationGetSmgr.exit14

RelationGetSmgr.exit14:                           ; preds = %bb.e, %bb.f
  %i.af = phi ptr [ %.pre.i13, %bb.f ], [ %i.aa, %bb.e ]
  %i.ag = tail call i32 @smgrnblocks(ptr noundef %i.af, i32 noundef %1) #9
  %i.ah = zext i32 %i.ag to i64
  br label %.loopexit

.loopexit:                                        ; preds = %RelationGetSmgr.exit.2, %RelationGetSmgr.exit14
  %.1 = phi i64 [ %i.ah, %RelationGetSmgr.exit14 ], [ %i.z, %RelationGetSmgr.exit.2 ]
  %i.ai = shl nuw nsw i64 %.1, 13
  ret i64 %i.ai
}

declare i32 @smgrnblocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @table_block_relation_estimate_size(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @RelationGetNumberOfBlocksInFork(ptr noundef %0, i32 noundef 0) #9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.g = load float, ptr %i.f, align 4            ; 3 uses
  %i.h = fpext nnan float %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp ult i32 %i.a, 10
  %i.l = fcmp olt float %i.g, 0.000000e+00
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 126
  %i.n = load i8, ptr %i.m, align 2, !range !5, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 10, ptr %2, align 4
  br label %bb.d

select.unfold:                                    ; preds = %bb.b, %bb.a
  store i32 %i.a, ptr %2, align 4
  %i.p = icmp eq i32 %i.a, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %select.unfold
  store double 0.000000e+00, ptr %3, align 8
  br label %bb.l

bb.d:                                             ; preds = %.thread, %select.unfold
  %.04251 = phi i32 [ 10, %.thread ], [ %i.a, %select.unfold ]
  %i.q = fcmp oge float %i.g, 0.000000e+00
  %i.r = icmp ne i32 %i.e, 0
  %or.cond3 = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = uitofp i32 %i.e to double
  %i.t = fdiv double %i.h, %i.s
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.z = phi i64 [ %i.y, %bb.g ], [ 100, %bb.f ]
  %i.aa = tail call i32 @get_rel_data_width(ptr noundef nonnull %0, ptr noundef %1) #9
  %i.ab = trunc i64 %5 to i32
  %i.ac = add i32 %i.aa, %i.ab
  %i.ad = mul i64 %i.z, %6
  %i.ae = udiv i64 %i.ad, 100
  %i.af = sext i32 %i.ac to i64
  %i.ag = udiv i64 %i.ae, %i.af
  %i.ah = uitofp nneg i64 %i.ag to double
  %i.ai = tail call double @clamp_row_est(double noundef %i.ah) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.0 = phi double [ %i.t, %bb.e ], [ %i.ai, %bb.h ]
  %i.aj = uitofp i32 %.04251 to double            ; 3 uses
  %i.ak = fmul double %.0, %i.aj
  %i.al = tail call double @llvm.rint.f64(double %i.ak)
  store double %i.al, ptr %3, align 8
  %i.am = icmp eq i32 %i.j, 0
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %7 = uitofp i32 %i.j to double                  ; 2 uses
  %8 = fcmp ult double %7, %i.aj
  br i1 %8, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = fdiv double %7, %i.aj
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k, %bb.c
  %.sink = phi double [ 0.000000e+00, %bb.c ], [ %i.an, %bb.k ], [ 0.000000e+00, %bb.i ], [ 1.000000e+00, %bb.j ]
  store double %.sink, ptr %4, align 8
  ret void
}

declare i32 @get_rel_data_width(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @clamp_row_est(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #7

declare i32 @s_lock(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

declare ptr @smgropen(i64, i32, i32 noundef) local_unnamed_addr #2

declare void @smgrpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{ptr @table_slot_callbacks}
!5 = !{i8 0, i8 2}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = distinct !{null}
!8 = !{}
!9 = !{ptr @table_slot_create, ptr @table_slot_callbacks}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = !{i64 2149549104}
!17 = !{i64 2051536, i64 2051552}
!18 = !{i64 2149549313}
!19 = !{i64 2003658, i64 2003675}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
