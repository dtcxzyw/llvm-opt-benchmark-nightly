Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dshash?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
begin_hunk_0_@dshash_seq_next:bb.a
  %.pre53 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre50 = load i32, ptr %i.am, align 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.ap = phi i32 [ %.pre50, %.lr.ph ], [ %i.bo, %bb.i ]
  %i.aq = add i32 %i.ap, 1                        ; 4 uses
  store i32 %i.aq, ptr %i.am, align 8
  %i.ar = load i32, ptr %i.an, align 4
  %.not40 = icmp slt i32 %i.aq, %i.ar
  br i1 %.not40, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.av, -7
  %i.ax = ashr i32 %i.aq, %i.aw                   ; 3 uses
  %i.ay = load i32, ptr %i.a, align 8
  %.not41 = icmp eq i32 %i.ay, %i.ax
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = sext i32 %i.ax to i64
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i8, ptr %i.ao, align 4, !range !18, !noundef !19
  %i.bf = xor i8 %i.be, 1
  %not.42 = zext nneg i8 %i.bf to i32
  %i.bg = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.bd, i32 noundef %not.42) #11 ; 0 uses
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.a, align 8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.bm
  tail call void @LWLockRelease(ptr noundef nonnull %i.bn) #11
  store i32 %i.ax, ptr %i.a, align 8
  %.pre51 = load ptr, ptr %0, align 8
  %.pre52 = load i32, ptr %i.am, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bo = phi i32 [ %.pre52, %bb.h ], [ %i.aq, %bb.g ] ; 2 uses
  %i.bp = phi ptr [ %.pre51, %bb.h ], [ %i.as, %bb.g ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = sext i32 %i.bo to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %.1 = load i64, ptr %i.bt, align 8              ; 2 uses
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %bb.f, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.i, %.._crit_edge_crit_edge
  %i.bu = phi ptr [ %.pre53, %.._crit_edge_crit_edge ], [ %i.bp, %bb.i ]
  %.1.lcssa = phi i64 [ %.144, %.._crit_edge_crit_edge ], [ %.1, %bb.i ]
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call ptr @dsa_get_address(ptr noundef %i.bv, i64 noundef %.1.lcssa) #11 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %i.bx, align 8
  %i.by = load i64, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %._crit_edge
  %.237 = phi ptr [ %i.ca, %._crit_edge ], [ null, %bb.f ]
  ret ptr %.237
}

; Function Attrs: nounwind uwtable
define dso_local void @dshash_seq_term(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = zext nneg i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h
  tail call void @LWLockRelease(ptr noundef nonnull %i.i) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dshash_delete_current(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = load i64, ptr %i.i, align 8
  %i.k = sub i64 32, %i.j
  %i.l = lshr i64 %i.f, %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.013.i.i = phi ptr [ %i.m, %bb.a ], [ %i.p, %bb.c ] ; 3 uses
  %i.n = load i64, ptr %.013.i.i, align 8         ; 2 uses
  %.not.not.not.not.i.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.not.not.not.i.not.i, label %delete_item.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = tail call ptr @dsa_get_address(ptr noundef %i.o, i64 noundef %i.n) #11 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %.013.i.i, align 8
  tail call void @dsa_free(ptr noundef %i.s, i64 noundef %i.t) #11
  store i64 %i.r, ptr %.013.i.i, align 8
  %i.u = lshr i64 %i.f, 25
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8
  br label %delete_item.exit

delete_item.exit:                                 ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dshash_dump(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.035 = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ]   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.035
  %i.e = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.d, i32 noundef 1) #11 ; 0 uses
  %i.f = add nuw nsw i64 %.035, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, 128
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !21

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 3096
  %i.k = load i64, ptr %i.j, align 8
  %.not.i = icmp eq i64 %i.h, %i.k
  br i1 %.not.i, label %ensure_valid_bucket_pointers.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 3104
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call ptr @dsa_get_address(ptr noundef %i.l, i64 noundef %i.n) #11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3096
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  store i64 %i.s, ptr %i.g, align 8
  br label %ensure_valid_bucket_pointers.exit

ensure_valid_bucket_pointers.exit:                ; preds = %bb.c, %bb.d
  %i.t = phi i64 [ %i.h, %bb.c ], [ %i.s, %bb.d ]
  %i.u = load ptr, ptr @stderr, align 8
  %i.v = shl nuw i64 1, %i.t
  %i.w = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.3, i64 noundef %i.v) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %bb.e
  %exitcond46.not = icmp eq i64 %i.ad, 128
  br i1 %exitcond46.not, label %.preheader, label %bb.e, !llvm.loop !22

bb.e:                                             ; preds = %ensure_valid_bucket_pointers.exit, %.loopexit
  %.143 = phi i64 [ 0, %ensure_valid_bucket_pointers.exit ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.143
  %i.aa = load i64, ptr %i.g, align 8
  %i.ab = add i64 %i.aa, -7                       ; 2 uses
  %i.ac = shl i64 %.143, %i.ab                    ; 2 uses
  %i.ad = add nuw nsw i64 %.143, 1                ; 3 uses
  %i.ae = shl i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = load ptr, ptr @stderr, align 8
  %i.ag = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.4, i64 noundef %.143) #11 ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.5, i64 noundef %i.aj) #11 ; 0 uses
  %i.al = icmp ult i64 %i.ac, %i.ae
  br i1 %i.al, label %.lr.ph42, label %.loopexit

.lr.ph42:                                         ; preds = %bb.e, %._crit_edge
  %.03440 = phi i64 [ %i.at, %._crit_edge ], [ %i.ac, %bb.e ] ; 3 uses
  %i.am = load ptr, ptr %i.x, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.03440
  %.03236 = load i64, ptr %i.an, align 8          ; 2 uses
  %.not37 = icmp eq i64 %.03236, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph42, %.lr.ph
  %.03239 = phi i64 [ %.032, %.lr.ph ], [ %.03236, %.lr.ph42 ]
  %.03338 = phi i64 [ %i.aq, %.lr.ph ], [ 0, %.lr.ph42 ]
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = tail call ptr @dsa_get_address(ptr noundef %i.ao, i64 noundef %.03239) #11
  %i.aq = add i64 %.03338, 1                      ; 2 uses
  %.032 = load i64, ptr %i.ap, align 8            ; 2 uses
  %.not = icmp eq i64 %.032, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph42
  %.033.lcssa = phi i64 [ 0, %.lr.ph42 ], [ %i.aq, %.lr.ph ]
  %i.ar = load ptr, ptr @stderr, align 8
  %i.as = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.6, i64 noundef %.03440, i64 noundef %.033.lcssa) #11 ; 0 uses
  %i.at = add nuw i64 %.03440, 1                  ; 2 uses
  %exitcond45.not = icmp eq i64 %i.at, %i.ae
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph42, !llvm.loop !24

.preheader:                                       ; preds = %.loopexit, %.preheader
  %.244 = phi i64 [ %i.ax, %.preheader ], [ 0, %.loopexit ] ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.244
  tail call void @LWLockRelease(ptr noundef nonnull %i.aw) #11
  %i.ax = add nuw nsw i64 %.244, 1                ; 2 uses
  %exitcond47.not = icmp eq i64 %i.ax, 128
  br i1 %exitcond47.not, label %bb.f, label %.preheader, !llvm.loop !25

bb.f:                                             ; preds = %.preheader
  ret void
}

declare i32 @pg_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{null}
!9 = distinct !{null, null}
!10 = distinct !{!10, !5, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{null, null}
!17 = distinct !{null, null}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
end_hunk_0
