Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/definition?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.definition_extractor = type { i32, ptr, [2 x ptr] }

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @kissat_find_definition(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.definition_extractor, align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 15 uses
  tail call void @kitten_clear(ptr noundef %i.d) #3
  %i.e = xor i32 %1, 1                            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  store i32 %1, ptr %2, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 2 uses
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !61
  %i.l = zext i32 %i.e to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !61
  tail call void @kitten_track_antecedents(ptr noundef %i.d) #3
  %i.o = getelementptr i8, ptr %0, i64 840        ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 816        ; 2 uses
  %.val = load ptr, ptr %i.o, align 8, !tbaa !62  ; 2 uses
  %.val83 = load i32, ptr %i.j, align 4, !tbaa !64
  %i.q = zext i32 %.val83 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.j, i64 4
  %.val86 = load i32, ptr %i.s, align 4, !tbaa !65 ; 2 uses
  %i.t = zext i32 %.val86 to i64
  %.idx = shl nuw nsw i64 %i.t, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not8298 = icmp eq i32 %.val86, 0
  br i1 %.not8298, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.073100 = phi ptr [ %i.av, %bb.g ], [ %i.r, %bb.a ] ; 2 uses
  %.17899 = phi i32 [ %i.au, %bb.g ], [ 0, %bb.a ] ; 3 uses
  %.sroa.014.0.copyload = load i32, ptr %.073100, align 4, !tbaa !66 ; 3 uses
  %i.v = icmp slt i32 %.sroa.014.0.copyload, 0
  br i1 %i.v, label %bb.e, label %bb.f

.critedge.loopexit:                               ; preds = %bb.g
  %.val.1.pre = load ptr, ptr %i.o, align 8, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.val.1 = phi ptr [ %.val, %bb.a ], [ %.val.1.pre, %.critedge.loopexit ]
  %.178.lcssa = phi i32 [ 0, %bb.a ], [ %i.au, %.critedge.loopexit ]
  %.val83.1 = load i32, ptr %i.m, align 4, !tbaa !64
  %i.w = zext i32 %.val83.1 to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val.1, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.m, i64 4
  %.val86.1 = load i32, ptr %i.y, align 4, !tbaa !65 ; 2 uses
  %i.z = zext i32 %.val86.1 to i64
  %.idx.1 = shl nuw nsw i64 %i.z, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.1
  %.not8298.1 = icmp eq i32 %.val86.1, 0
  br i1 %.not8298.1, label %.critedge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge, %bb.d
  %.073100.1 = phi ptr [ %i.ak, %bb.d ], [ %i.x, %.critedge ] ; 2 uses
  %.17899.1 = phi i32 [ %i.aj, %bb.d ], [ %.178.lcssa, %.critedge ] ; 3 uses
  %.sroa.014.0.copyload.1 = load i32, ptr %.073100.1, align 4, !tbaa !66 ; 3 uses
  %i.ab = icmp slt i32 %.sroa.014.0.copyload.1, 0
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.1
  %.val87.1 = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.ac = zext nneg i32 %.sroa.014.0.copyload.1 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val87.1, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  call void @kitten_clause_with_id_and_exception(ptr noundef %i.d, i32 noundef %.17899.1, i64 noundef %i.ag, ptr noundef nonnull %i.ah, i32 noundef %i.e) #3
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.ai = and i32 %.sroa.014.0.copyload.1, 2147483647
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !76
  call void @kitten_clause_with_id_and_exception(ptr noundef %i.d, i32 noundef %.17899.1, i64 noundef 1, ptr noundef nonnull %i.a, i32 noundef -1) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = add i32 %.17899.1, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.073100.1, i64 4 ; 2 uses
  %.not82.1 = icmp eq ptr %i.ak, %i.aa
  br i1 %.not82.1, label %.critedge.1, label %.lr.ph.1, !llvm.loop !70

.critedge.1:                                      ; preds = %bb.d, %.critedge
  call void @kitten_set_ticks_limit(ptr noundef %i.d, i64 noundef 1000000) #3
  %i.al = call i32 @kitten_solve(ptr noundef %i.d) #3
  %i.am = icmp eq i32 %i.al, 20
  br i1 %i.am, label %bb.h, label %bb.l

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.an = and i32 %.sroa.014.0.copyload, 2147483647
  store i32 %i.an, ptr %i.a, align 4, !tbaa !76
  call void @kitten_clause_with_id_and_exception(ptr noundef %i.d, i32 noundef %.17899, i64 noundef 1, ptr noundef nonnull %i.a, i32 noundef -1) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %.val87 = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.ao = zext nneg i32 %.sroa.014.0.copyload to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !75
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  call void @kitten_clause_with_id_and_exception(ptr noundef %i.d, i32 noundef %.17899, i64 noundef %i.as, ptr noundef nonnull %i.at, i32 noundef %1) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = add nuw i32 %.17899, 1                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.073100, i64 4 ; 2 uses
  %.not82 = icmp eq ptr %i.av, %i.u
  br i1 %.not82, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !70

bb.h:                                             ; preds = %.critedge.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.aw = call i32 @kitten_compute_clausal_core(ptr noundef %i.d, ptr noundef nonnull %i.b) #3 ; 0 uses
  call void @kitten_shrink_to_clausal_core(ptr noundef %i.d) #3
  call void @kitten_shuffle_clauses(ptr noundef %i.d) #3
  call void @kitten_set_ticks_limit(ptr noundef %i.d, i64 noundef 10000000) #3
  %i.ax = call i32 @kitten_solve(ptr noundef %i.d) #3
  %.not.not = icmp ne i32 %i.ax, 0                ; 2 uses
  br i1 %.not.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ay = call i32 @kitten_compute_clausal_core(ptr noundef %i.d, ptr noundef nonnull %i.b) #3 ; 0 uses
  call void @kitten_traverse_core_ids(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @traverse_definition_core) #3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !69
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !78
  %.not = icmp eq ptr %i.bb, %i.bc
  br i1 %.not, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78
  %.not79 = icmp eq ptr %i.be, %i.bg
  br i1 %.not79, label %select.unfold, label %.thread94

select.unfold:                                    ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ %i.e, %bb.i ], [ %1, %bb.j ]    ; 2 uses
  %.not80 = icmp eq i32 %.0, -1
  br i1 %.not80, label %.thread94, label %bb.k

bb.k:                                             ; preds = %select.unfold
  call void @kissat_learned_unit(ptr noundef nonnull %0, i32 noundef %.0) #3
  br label %.thread94

.thread94:                                        ; preds = %bb.j, %bb.k, %select.unfold
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3776
  store i8 1, ptr %i.bh, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i8 1, ptr %i.bi, align 8, !tbaa !80
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.thread94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %bb.l

bb.l:                                             ; preds = %.critedge.1, %.loopexit
  %.1 = phi i1 [ false, %.critedge.1 ], [ %.not.not, %.loopexit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @kitten_clear(ptr noundef) local_unnamed_addr #2

declare void @kitten_track_antecedents(ptr noundef) local_unnamed_addr #2

declare void @kitten_clause_with_id_and_exception(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @kitten_set_ticks_limit(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @kitten_solve(ptr noundef) local_unnamed_addr #2

declare i32 @kitten_compute_clausal_core(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @kitten_shrink_to_clausal_core(ptr noundef) local_unnamed_addr #2

declare void @kitten_shuffle_clauses(ptr noundef) local_unnamed_addr #2

declare void @kitten_traverse_core_ids(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @traverse_definition_core(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val30 = load i32, ptr %i.e, align 4, !tbaa !65 ; 2 uses
  %i.f = icmp ugt i32 %.val30, %1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr i8, ptr %i.b, i64 840
  %.val28 = load ptr, ptr %i.h, align 8, !tbaa !62
  %.val29 = load i32, ptr %i.d, align 4, !tbaa !64
  %i.i = zext i32 %.val29 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = sub nuw i32 %1, %.val30
  %i.o = getelementptr i8, ptr %i.b, i64 840
  %.val = load ptr, ptr %i.o, align 8, !tbaa !62
  %.val27 = load i32, ptr %i.m, align 4, !tbaa !64
  %i.p = zext i32 %.val27 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.p
  %i.r = zext i32 %i.n to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi ptr [ %i.k, %bb.b ], [ %i.s, %bb.c ]
  %.0 = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 3640
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, i64 noundef 4) #3
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %.pre, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !69
  store i32 %.sroa.0.0, ptr %i.aa, align 4, !tbaa !66
  ret void
}

declare void @kissat_learned_unit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @kissat_stack_enlarge(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"termination", !8, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!"p1 _ZTS6import", !9, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!"p1 _ZTS9extension", !9, i64 0}
!16 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"p1 _ZTS8assigned", !9, i64 0}
!18 = !{!"p1 _ZTS5flags", !9, i64 0}
!19 = !{!"p1 omnipotent char", !9, i64 0}
!20 = !{!"phases", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!22 = !{!"p1 _ZTS5links", !9, i64 0}
!23 = !{!"", !5, i64 0, !5, i64 4}
!24 = !{!"queue", !5, i64 0, !5, i64 4, !5, i64 8, !23, i64 12}
!25 = !{!"p1 double", !9, i64 0}
!26 = !{!"heap", !8, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !25, i64 40, !11, i64 48}
!27 = !{!"double", !4, i64 0}
!28 = !{!"p1 _ZTS5frame", !9, i64 0}
!29 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"", !11, i64 0, !11, i64 8}
!31 = !{!"p1 _ZTS8datarank", !9, i64 0}
!32 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"clause", !5, i64 0, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 3, !8, i64 3, !8, i64 3, !5, i64 3, !5, i64 4, !5, i64 8, !4, i64 12}
!34 = !{!"p1 long", !9, i64 0}
!35 = !{!"", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"long", !4, i64 0}
!37 = !{!"vectors", !12, i64 0, !36, i64 24}
!38 = !{!"p1 _ZTS6vector", !9, i64 0}
!39 = !{!"reluctant", !8, i64 0, !8, i64 1, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!40 = !{!"", !36, i64 0, !5, i64 8}
!41 = !{!"bounds", !40, i64 0}
!42 = !{!"classification", !8, i64 0, !8, i64 1}
!43 = !{!"delay", !5, i64 0, !5, i64 4}
!44 = !{!"delays", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!45 = !{!"enabled", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3}
!46 = !{!"limited", !8, i64 0, !8, i64 1}
!47 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!48 = !{!"", !36, i64 0, !36, i64 8}
!49 = !{!"", !48, i64 0, !36, i64 16}
!50 = !{!"", !36, i64 0}
!51 = !{!"limits", !36, i64 0, !36, i64 8, !36, i64 16, !47, i64 24, !49, i64 48, !50, i64 72, !50, i64 80, !50, i64 88, !50, i64 96, !50, i64 104, !50, i64 112, !50, i64 120, !48, i64 128}
!52 = !{!"remember", !48, i64 0, !50, i64 16}
!53 = !{!"mode", !36, i64 0}
!54 = !{!"kormat", !5, i64 0, !4, i64 4}
!55 = !{!"p1 _ZTS6kitten", !9, i64 0}
!56 = !{!"statistics", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !36, i64 488, !36, i64 496, !36, i64 504, !36, i64 512, !36, i64 520, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !4, i64 640}
!57 = !{!"kissat", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !10, i64 16, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !12, i64 56, !12, i64 80, !14, i64 104, !16, i64 128, !12, i64 152, !17, i64 176, !18, i64 184, !19, i64 192, !19, i64 200, !20, i64 208, !21, i64 232, !12, i64 256, !22, i64 280, !24, i64 288, !26, i64 312, !27, i64 368, !26, i64 376, !27, i64 432, !5, i64 440, !29, i64 448, !30, i64 472, !11, i64 488, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !12, i64 512, !5, i64 536, !5, i64 540, !32, i64 544, !12, i64 568, !12, i64 592, !12, i64 616, !12, i64 640, !12, i64 664, !12, i64 688, !12, i64 712, !33, i64 736, !8, i64 760, !8, i64 761, !8, i64 762, !12, i64 768, !12, i64 792, !35, i64 816, !37, i64 840, !5, i64 872, !5, i64 876, !38, i64 880, !4, i64 888, !35, i64 904, !36, i64 928, !4, i64 936, !4, i64 1208, !4, i64 1216, !39, i64 1224, !41, i64 1272, !42, i64 1288, !44, i64 1292, !45, i64 1324, !46, i64 1328, !51, i64 1336, !52, i64 1480, !5, i64 1504, !53, i64 1512, !36, i64 1520, !54, i64 1528, !19, i64 3584, !4, i64 3592, !4, i64 3640, !4, i64 3688, !12, i64 3736, !8, i64 3760, !55, i64 3768, !8, i64 3776, !8, i64 3777, !12, i64 3784, !56, i64 3808}
!58 = !{!"p1 _ZTS6kissat", !9, i64 0}
!59 = !{!"definition_extractor", !5, i64 0, !58, i64 8, !4, i64 16}
!60 = !{!59, !58, i64 8}
!61 = !{!38, !38, i64 0}
!62 = !{!57, !11, i64 840}
!63 = !{!"vector", !5, i64 0, !5, i64 4}
!64 = !{!63, !5, i64 0}
!65 = !{!63, !5, i64 4}
!66 = !{!4, !4, i64 0}
!67 = !{!"p1 _ZTS5watch", !9, i64 0}
!68 = !{!"", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!68, !67, i64 8}
!70 = distinct !{!70, !77}
!71 = !{!57, !55, i64 3768}
!72 = !{!59, !5, i64 0}
!73 = !{!57, !38, i64 880}
!74 = !{!57, !34, i64 816}
!75 = !{!33, !5, i64 8}
!76 = !{!5, !5, i64 0}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!68, !67, i64 0}
!79 = !{!57, !8, i64 3776}
!80 = !{!57, !8, i64 3760}
!81 = !{!57, !11, i64 568}
end_hunk_0
