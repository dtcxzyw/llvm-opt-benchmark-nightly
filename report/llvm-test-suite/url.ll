Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/url?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [99 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/url.c\00", align 1
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: url inputfilename #numberofpackets\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"URL table initialized, reading packets... \0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"URL finished for %d packets\0A\00", align 1
@tree_head = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 0, 65536) i64 @internet_checksum(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 3)
  %i.b = add nuw i32 %1, 1
  %3 = sub i32 %i.b, %2                           ; 2 uses
  %i.c = lshr i32 %3, 1
  %narrow = add nuw i32 %i.c, 1
  %i.d = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %3, 6
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, 4294967292               ; 4 uses
  %i.e = trunc nuw i64 %n.vec to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %1, %i.f                         ; 2 uses
  %i.h = shl nuw nsw i64 %n.vec, 1
  %i.i = getelementptr i8, ptr %0, i64 %i.h       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi37 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.j = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.j  ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <2 x i16>, ptr %next.gep, align 2, !tbaa !14
  %wide.load38 = load <2 x i16>, ptr %i.k, align 2, !tbaa !14
  %i.l = zext <2 x i16> %wide.load to <2 x i64>
  %i.m = zext <2 x i16> %wide.load38 to <2 x i64>
  %i.n = xor <2 x i64> %i.l, splat (i64 -1)
  %i.o = xor <2 x i64> %i.m, splat (i64 -1)
  %i.p = add <2 x i64> %vec.phi, %i.n             ; 2 uses
  %i.q = add <2 x i64> %vec.phi37, %i.o           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.q, %i.p
  %i.s = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %.017.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %.01216.ph = phi i32 [ %1, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.01315.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %.017 = phi i64 [ %i.x, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader40 ]
  %.01216 = phi i32 [ %i.y, %.lr.ph ], [ %.01216.ph, %.lr.ph.preheader40 ] ; 2 uses
  %.01315 = phi ptr [ %i.t, %.lr.ph ], [ %.01315.ph, %.lr.ph.preheader40 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01315, i64 2 ; 2 uses
  %i.u = load i16, ptr %.01315, align 2, !tbaa !14
  %i.v = zext i16 %i.u to i64
  %i.w = xor i64 %i.v, -1
  %i.x = add i64 %.017, %i.w                      ; 2 uses
  %i.y = add nsw i32 %.01216, -2                  ; 2 uses
  %i.z = icmp samesign ugt i32 %.01216, 3
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.013.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %middle.block ], [ %i.t, %.lr.ph ]
  %.012.lcssa = phi i32 [ %1, %bb.a ], [ %i.g, %middle.block ], [ %i.y, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.s, %middle.block ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.aa = icmp eq i32 %.012.lcssa, 1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ab = load i8, ptr %.013.lcssa, align 1, !tbaa !9
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %.0.lcssa, %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ad, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ae = lshr i64 %.1, 16                        ; 2 uses
  %.not20 = icmp eq i64 %i.ae, 0
  br i1 %.not20, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.c, %.lr.ph23
  %i.af = phi i64 [ %i.ai, %.lr.ph23 ], [ %i.ae, %bb.c ]
  %.221 = phi i64 [ %i.ah, %.lr.ph23 ], [ %.1, %bb.c ]
  %i.ag = and i64 %.221, 65535
  %i.ah = add nuw nsw i64 %i.ag, %i.af            ; 3 uses
  %i.ai = lshr i64 %i.ah, 16                      ; 2 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %._crit_edge24, label %.lr.ph23, !llvm.loop !12

._crit_edge24:                                    ; preds = %.lr.ph23, %bb.c
  %.2.lcssa = phi i64 [ %.1, %bb.c ], [ %i.ah, %.lr.ph23 ] ; 2 uses
  %i.aj = lshr i64 %.2.lcssa, 8
  %i.ak = shl nuw nsw i64 %.2.lcssa, 8
  %i.al = and i64 %i.ak, 65280
  %i.am = or disjoint i64 %i.al, %i.aj
  ret i64 %i.am
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ...) @_fatal(ptr noundef nonnull @.str, ptr noundef nonnull @__FUNCTION__.main, i32 noundef 102, ptr noundef nonnull @.str.1) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #10, !inline_history !17
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  tail call void @db_init(ptr noundef %i.f) #10
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !23
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 43, i64 1, ptr %i.g) ; 0 uses
  %.not35 = icmp eq i32 %i.d, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph23.i27.preheader

.lr.ph23.i27.preheader:                           ; preds = %bb.c, %.lr.ph23.i27.preheader
  %.034 = phi i32 [ %i.m, %.lr.ph23.i27.preheader ], [ 0, %bb.c ] ; 3 uses
  %i.h = tail call ptr @get_next_packet(i32 noundef %.034) #10 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  store i8 0, ptr %i.i, align 1, !tbaa !9
  store i8 0, ptr %i.j, align 1, !tbaa !9
  %i.k = tail call i32 @packet_size(i32 noundef %.034) #10
  %i.l = tail call ptr @find_destination(ptr noundef nonnull %i.h, i32 noundef %i.k) #10 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.h) #10
  %i.m = add nuw i32 %.034, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph23.i27.preheader, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph23.i27.preheader, %bb.c
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !23
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.3, i32 noundef %i.d) #10 ; 0 uses
  ret i32 0
}

; Function Attrs: noreturn
declare void @_fatal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @db_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @get_next_packet(i32 noundef) local_unnamed_addr #3

declare ptr @find_destination(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @packet_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !8, !15, !16}
!11 = distinct !{!11, !8, !16, !15}
!12 = distinct !{!12, !8}
!13 = !{!"short", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{null}
!18 = distinct !{!18, !8}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!23 = !{!22, !22, i64 0}
end_hunk_0
