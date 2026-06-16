inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@duckdb_je_opt_bin_info_remote_free_max = external local_unnamed_addr global i64, align 8
@duckdb_je_bin_info_nbatched_sizes = external local_unnamed_addr global i32, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef zeroext i1 @duckdb_je_bin_update_shard_size(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %3, -65
  %or.cond = icmp ult i64 %i.a, -64               ; 2 uses
  %i.b = icmp ugt i64 %1, 14336
  %or.cond17 = or i1 %i.b, %or.cond
  br i1 %or.cond17, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 14336) ; 2 uses
  %i.c = icmp samesign ult i64 %1, 9
  br i1 %i.c, label %sz_size2index_compute.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %1, 1
  %i.e = add nsw i64 %i.d, -1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.e, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = xor i32 %i.g, 63                         ; 2 uses
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.h, i32 6)
  %i.j = shl nuw nsw i32 %i.i, 2
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.h, i32 7)
  %i.l = add nsw i32 %i.k, -3
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = shl nsw i64 -1, %i.m
  %i.o = add nsw i64 %1, -1
  %i.p = and i64 %i.n, %i.o
  %i.q = lshr i64 %i.p, %i.m
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = or disjoint i32 %i.j, 1
  %i.u = add nuw nsw i32 %i.t, %i.s
  br label %sz_size2index_compute.exit

sz_size2index_compute.exit:                       ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.u, %bb.c ], [ 0, %bb.b ]   ; 5 uses
  %i.v = icmp ult i64 %2, 9
  br i1 %i.v, label %sz_size2index_compute.exit19, label %bb.d

bb.d:                                             ; preds = %sz_size2index_compute.exit
  %i.w = shl nuw nsw i64 %spec.store.select, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.x, i1 true)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = xor i32 %i.z, 63                        ; 2 uses
  %i.ab = tail call i32 @llvm.usub.sat.i32(i32 %i.aa, i32 6)
  %i.ac = shl nuw nsw i32 %i.ab, 2
  %i.ad = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 7)
  %i.ae = add nsw i32 %i.ad, -3
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl nsw i64 -1, %i.af
  %i.ah = add nsw i64 %spec.store.select, -1
  %i.ai = and i64 %i.ag, %i.ah
  %i.aj = lshr i64 %i.ai, %i.af
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = and i32 %i.ak, 3
  %i.am = or disjoint i32 %i.ac, 1
  %i.an = add nuw nsw i32 %i.am, %i.al
  br label %sz_size2index_compute.exit19

sz_size2index_compute.exit19:                     ; preds = %sz_size2index_compute.exit, %bb.d
  %.0.i18 = phi i32 [ %i.an, %bb.d ], [ 0, %sz_size2index_compute.exit ] ; 3 uses
  %.not20 = icmp samesign ugt i32 %.0.i, %.0.i18
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %sz_size2index_compute.exit19
  %i.ao = trunc nuw nsw i64 %3 to i32             ; 2 uses
  %4 = sub nuw i32 %.0.i18, %.0.i
  %i.ap = add i32 %4, 1                           ; 3 uses
  %min.iters.check = icmp ult i32 %i.ap, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i32 %i.ap, -8                      ; 3 uses
  %i.aq = add i32 %.0.i, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = add i32 %.0.i, %index
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.at, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.au, align 4, !tbaa !3
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.av = icmp eq i32 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.ap, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.021.ph = phi i32 [ %.0.i, %.lr.ph ], [ %i.aq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.021 = phi i32 [ %i.ay, %scalar.ph ], [ %.021.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aw = zext nneg i32 %.021 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  store i32 %i.ao, ptr %i.ax, align 4, !tbaa !3
  %i.ay = add nuw nsw i32 %.021, 1
  %.not.not = icmp ult i32 %.021, %.0.i18
  br i1 %.not.not, label %scalar.ph, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %sz_size2index_compute.exit19, %bb.a
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_je_bin_shard_sizes_boot(ptr nofree noundef writeonly captures(none) initializes((0, 144)) %0) local_unnamed_addr #1 {
bb.a:
  store <4 x i32> splat (i32 1), ptr %0, align 4, !tbaa !3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> splat (i32 1), ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> splat (i32 1), ptr %i.b, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> splat (i32 1), ptr %i.c, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> splat (i32 1), ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> splat (i32 1), ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> splat (i32 1), ptr %i.f, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> splat (i32 1), ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_bin_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 0) #7 ; 2 uses
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @duckdb_je_edata_heap_new(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.e, i8 0, i64 112, i1 false)
  %i.f = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.g = icmp ult i32 %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load i64, ptr @duckdb_je_opt_bin_info_remote_free_max, align 8, !tbaa !23
  tail call void @batcher_init(ptr noundef nonnull %i.h, i64 noundef %i.i) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i1 %i.a
}

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @duckdb_je_edata_heap_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @batcher_init(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_bin_prefork(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %0, ptr noundef %1) #7
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @duckdb_je_batcher_prefork(ptr noundef null, ptr noundef nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @duckdb_je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_batcher_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_bin_postfork_parent(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef %1) #7
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @duckdb_je_batcher_postfork_parent(ptr noundef null, ptr noundef nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_batcher_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_bin_postfork_child(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef %1) #7
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @duckdb_je_batcher_postfork_child(ptr noundef null, ptr noundef nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_batcher_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !9, !8}
!11 = !{!12, !16, i64 224}
!12 = !{!"bin_s", !13, i64 0, !14, i64 112, !16, i64 224, !18, i64 232, !20, i64 248}
!13 = !{!"malloc_mutex_s", !5, i64 0}
!14 = !{!"bin_stats_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 _ZTS7edata_s", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"", !19, i64 0}
!19 = !{!"ph_s", !17, i64 0, !15, i64 8}
!20 = !{!"", !21, i64 0}
!21 = !{!"", !16, i64 0}
!22 = !{!20, !16, i64 0}
!23 = !{!15, !15, i64 0}
end_hunk_0
