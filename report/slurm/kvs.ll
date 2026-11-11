Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/kvs?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@kvs_get:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.g = lshr i32 %.011.i, 24
  %i.h = shl i32 %.011.i, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = xor i32 %i.g, %i.k
  %i.m = or disjoint i32 %i.l, %i.h               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_hash.exit, label %.lr.ph.i, !llvm.loop !0

_hash.exit:                                       ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.m, %.lr.ph.i ]
  %i.n = load i32, ptr @hash_size, align 4
  %i.o = urem i32 %.0.lcssa.i, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %.loopexit, !llvm.loop !12

.lr.ph:                                           ; preds = %_hash.exit, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %_hash.exit ] ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 @slurm_xstrcmp(ptr noundef nonnull %0, ptr noundef %i.z) #5
  %.not13 = icmp eq i32 %i.aa, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %_hash.exit
  %.012 = phi ptr [ %i.ae, %bb.e ], [ null, %_hash.exit ], [ null, %bb.d ] ; 2 uses
  %i.af = tail call i32 @slurm_get_log_level() #5
  %i.ag = icmp sgt i32 %i.af, 6
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.kvs_get, ptr noundef %.012) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  ret ptr %.012
}

declare i32 @slurm_xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kvs_put(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @slurm_get_log_level() #5
  %i.b = icmp sgt i32 %i.a, 6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.6, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.kvs_put) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @kvs_hash, align 8
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #6 ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %_hash.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = and i64 %i.d, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.g = lshr i32 %.011.i, 24
  %i.h = shl i32 %.011.i, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = xor i32 %i.g, %i.k
  %i.m = or disjoint i32 %i.l, %i.h               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_hash.exit, label %.lr.ph.i, !llvm.loop !0

_hash.exit:                                       ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.m, %.lr.ph.i ]
  %i.n = load i32, ptr @hash_size, align 4
  %i.o = urem i32 %.0.lcssa.i, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.p ; 9 uses
  %.b = load i1, ptr @no_dup_keys, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_hash.exit
  %.not34 = icmp eq i32 %.pre, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !13

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 @slurm_xstrcmp(ptr noundef nonnull %0, ptr noundef %i.x) #5
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = and i64 %i.v, 4294967294
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @slurm_xfree(ptr noundef nonnull %i.ac) #5
  %i.ad = tail call ptr @slurm_xstrdup(ptr noundef %1) #5
  %i.ae = load ptr, ptr %i.q, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = tail call i32 @slurm_get_log_level() #5
  %i.ah = icmp sgt i32 %i.ag, 4
  br i1 %i.ah, label %.sink.split, label %bb.h

.loopexit:                                        ; preds = %bb.d, %_hash.exit, %.preheader
  %i.ai = phi i32 [ %.pre, %_hash.exit ], [ 0, %.preheader ], [ %i.r, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.ak = shl i32 %i.ai, 1                        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %.not31 = icmp ult i32 %i.ak, %i.am
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.an = add i32 %i.am, 16                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.q, i64 noundef 1, i64 noundef %i.ap, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 300, ptr noundef nonnull @__func__.kvs_put) #5 ; 0 uses
  %.pre38 = load i32, ptr %i.aj, align 8
  %.pre39 = shl nsw i32 %.pre38, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %.pre-phi = phi i32 [ %.pre39, %bb.f ], [ %i.ak, %.loopexit ]
  %i.ar = tail call ptr @slurm_xstrdup(ptr noundef nonnull %0) #5
  %i.as = load ptr, ptr %i.q, align 8
  %i.at = sext i32 %.pre-phi to i64               ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = tail call ptr @slurm_xstrdup(ptr noundef %1) #5
  %i.aw = load ptr, ptr %i.q, align 8
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = load i32, ptr %i.aj, align 8
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.aj, align 8
  %i.bb = tail call i32 @slurm_get_log_level() #5
  %i.bc = icmp sgt i32 %i.bb, 6
  br i1 %i.bc, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.e
  %.sink = phi i32 [ 5, %bb.e ], [ 7, %bb.g ]
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef %.sink, ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.kvs_put, ptr noundef nonnull %0, ptr noundef %1) #5
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kvs_clear() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hash_size, align 4        ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.a, %._crit_edge
  %i.b = phi i32 [ %i.o, %._crit_edge ], [ %i.a, %bb.a ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %0 = load ptr, ptr @kvs_hash, align 8
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv17 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph13, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph13 ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  tail call void @slurm_xfree(ptr noundef %i.h) #5
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.k) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.d, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr @hash_size, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph13
  %i.o = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.b, %.lr.ph13 ] ; 2 uses
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next18, %i.p
  br i1 %i.q, label %.lr.ph13, label %._crit_edge14, !llvm.loop !15

._crit_edge14:                                    ; preds = %._crit_edge, %bb.a
  tail call void @slurm_xfree(ptr noundef nonnull @kvs_hash) #5
  ret i32 0
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !10, !9}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !10, !9}
!13 = distinct !{!13, !10, !9}
!14 = distinct !{!14, !10, !9}
!15 = distinct !{!15, !10, !9}
end_hunk_0
