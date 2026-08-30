Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/hpa_utils?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hpa_io_vector_t = type { ptr, i64 }

@je_opt_process_madvise_max_batch = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind uwtable
define hidden void @je_hpa_purge_batch(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i64, ptr @je_opt_process_madvise_max_batch, align 8, !tbaa !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c          ; 3 uses
  %3 = alloca %struct.hpa_io_vector_t, i64 %i.e, align 16 ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %hpa_range_accum_finish.exit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

._crit_edge35:                                    ; preds = %._crit_edge
  %.not.i = icmp eq i64 %.sroa.5.1.lcssa, 0
  br i1 %.not.i, label %hpa_range_accum_finish.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge35
  %i.i = load i64, ptr @je_opt_process_madvise_max_batch, align 8, !tbaa !12
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = call zeroext i1 %i.k(ptr noundef nonnull %3, i64 noundef %.sroa.5.1.lcssa, i64 noundef %.sroa.11.1.lcssa.a) #3, !inline_history !17
  br i1 %i.l, label %.lr.ph.i.i.i, label %hpa_range_accum_finish.exit

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.012.i.i.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  call void %i.n(ptr noundef %i.p, i64 noundef %i.r) #3, !inline_history !17
  %i.s = add nuw i64 %.012.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.s, %.sroa.5.1.lcssa
  br i1 %exitcond.not.i.i.i, label %hpa_range_accum_finish.exit, label %bb.d, !llvm.loop !22

hpa_range_accum_finish.exit:                      ; preds = %bb.d, %bb.a, %bb.c, %._crit_edge35
  ret void

bb.e:                                             ; preds = %.lr.ph34, %._crit_edge
  %.01732 = phi i64 [ 0, %.lr.ph34 ], [ %i.av, %._crit_edge ] ; 2 uses
  %.sroa.5.031 = phi i64 [ 0, %.lr.ph34 ], [ %.sroa.5.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.11.030 = phi i64 [ 0, %.lr.ph34 ], [ %.sroa.11.1.lcssa.a, %._crit_edge ] ; 2 uses
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %.01732 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load i8, ptr %i.u, align 8, !tbaa !24, !range !29, !noundef !30
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %.val = load ptr, ptr %i.z, align 8, !tbaa !33
  call void %i.x(ptr noundef %.val, i64 noundef 2097152) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.ac = call zeroext i1 @je_hpdata_purge_next(ptr noundef %i.ab, ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #3
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %hpa_range_accum_add.exit
  %.sroa.5.128 = phi i64 [ %.sroa.5.2, %hpa_range_accum_add.exit ], [ %.sroa.5.031, %bb.g ] ; 3 uses
  %.sroa.11.127 = phi i64 [ %.sroa.11.2.a, %hpa_range_accum_add.exit ], [ %.sroa.11.030, %bb.g ]
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.sroa.5.128 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 16, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !21
  %i.ah = add i64 %i.ad, %.sroa.11.127            ; 2 uses
  %i.ai = add i64 %.sroa.5.128, 1                 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.e
  br i1 %i.aj, label %bb.h, label %hpa_range_accum_add.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ak = load i64, ptr @je_opt_process_madvise_max_batch, align 8, !tbaa !12
  %.not.i.i.i18 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i18, label %.lr.ph.i.i.i20.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.am = call zeroext i1 %i.al(ptr noundef nonnull %3, i64 noundef %i.e, i64 noundef %i.ah) #3, !inline_history !38
  br i1 %i.am, label %.lr.ph.i.i.i20.preheader, label %hpa_range_accum_add.exit

.lr.ph.i.i.i20.preheader:                         ; preds = %bb.h, %bb.i
  br label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %.lr.ph.i.i.i20.preheader, %.lr.ph.i.i.i20
  %.012.i.i.i21 = phi i64 [ %i.as, %.lr.ph.i.i.i20 ], [ 0, %.lr.ph.i.i.i20.preheader ] ; 3 uses
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.012.i.i.i21 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21
  call void %i.an(ptr noundef %i.ap, i64 noundef %i.ar) #3, !inline_history !38
  %i.as = add nuw i64 %.012.i.i.i21, 1
  %exitcond.not.i.i.i22 = icmp eq i64 %.012.i.i.i21, %.sroa.5.128
  br i1 %exitcond.not.i.i.i22, label %hpa_range_accum_add.exit, label %.lr.ph.i.i.i20, !llvm.loop !22

hpa_range_accum_add.exit:                         ; preds = %.lr.ph.i.i.i20, %bb.i, %.lr.ph
  %.sroa.11.2.a = phi i64 [ %i.ah, %.lr.ph ], [ 0, %bb.i ], [ 0, %.lr.ph.i.i.i20 ] ; 2 uses
  %.sroa.5.2 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %bb.i ], [ 0, %.lr.ph.i.i.i20 ] ; 2 uses
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.au = call zeroext i1 @je_hpdata_purge_next(ptr noundef %i.at, ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #3
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %hpa_range_accum_add.exit, %bb.g
  %.sroa.11.1.lcssa.a = phi i64 [ %.sroa.11.030, %bb.g ], [ %.sroa.11.2.a, %hpa_range_accum_add.exit ] ; 2 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.031, %bb.g ], [ %.sroa.5.2, %hpa_range_accum_add.exit ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.av = add nuw i64 %.01732, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %2
  br i1 %exitcond.not, label %._crit_edge35, label %bb.e, !llvm.loop !40
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @je_hpdata_purge_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!15, !16, i64 56}
!15 = !{!"hpa_hooks_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!16 = !{!"any pointer", !10, i64 0}
!17 = distinct !{null, null, null}
!18 = !{!15, !16, i64 16}
!19 = !{!20, !16, i64 0}
!20 = !{!"", !16, i64 0, !13, i64 8}
!21 = !{!20, !13, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !28, i64 96}
!25 = !{!"", !26, i64 0, !27, i64 88, !28, i64 96}
!26 = !{!"hpdata_purge_state_s", !13, i64 0, !13, i64 8, !10, i64 16, !13, i64 80}
!27 = !{!"p1 _ZTS8hpdata_s", !16, i64 0}
!28 = !{!"_Bool", !10, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!15, !16, i64 32}
!32 = !{!25, !27, i64 88}
!33 = !{!34, !16, i64 0}
!34 = !{!"hpdata_s", !16, i64 0, !13, i64 8, !28, i64 16, !28, i64 17, !28, i64 18, !28, i64 19, !28, i64 20, !35, i64 24, !28, i64 32, !28, i64 33, !28, i64 34, !28, i64 35, !28, i64 36, !10, i64 40, !36, i64 64, !36, i64 80, !13, i64 96, !13, i64 104, !10, i64 112, !13, i64 176, !10, i64 184, !35, i64 248, !28, i64 256}
!35 = !{!"", !13, i64 0}
!36 = !{!"", !27, i64 0, !27, i64 8}
!37 = !{!16, !16, i64 0}
!38 = distinct !{null, null, null}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
end_hunk_0
