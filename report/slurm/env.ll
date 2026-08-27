Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/env?download=true
begin_hunk_0_@load_env:bb.a
  %i.a = phi i8 [ %i.i, %bb.d ], [ %.pre, %bb.a ] ; 3 uses
  %indvars.iv182 = phi i32 [ %indvars.iv.next183, %bb.d ], [ 2, %bb.a ] ; 2 uses
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %bb.d ], [ 1, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__ctype_b_loc() #4
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = sext i8 %i.a to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, 1
  %.not104 = icmp eq i16 %i.g, 0
  br i1 %.not104, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %.not121 = icmp eq i8 %i.i, 0
  %indvars.iv.next171 = add nuw i64 %indvars.iv170, 1
  %indvars.iv.next183 = add i32 %indvars.iv182, 1
  br i1 %.not121, label %.critedge123, label %bb.b, !llvm.loop !8

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.critedge
  %i.k = phi i8 [ %i.t, %bb.g ], [ %i.a, %.critedge ] ; 4 uses
  %indvars.iv185 = phi i32 [ %indvars.iv.next186, %bb.g ], [ %indvars.iv182, %.critedge ] ; 2 uses
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %bb.g ], [ %indvars.iv170, %.critedge ] ; 2 uses
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %bb.g ], [ %indvars.iv, %.critedge ] ; 4 uses
  %.not105 = icmp eq i8 %i.k, 0
  br i1 %.not105, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__ctype_b_loc() #4
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, 8
  %.not106 = icmp ne i16 %i.q, 0
  %i.r = icmp eq i8 %i.k, 95
  %or.cond = or i1 %i.r, %.not106
  br i1 %or.cond, label %.critedge4, label %.critedge2

.critedge4:                                       ; preds = %bb.f
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next164
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %.not107 = icmp eq i8 %i.t, 0
  br i1 %.not107, label %.critedge123, label %bb.g

bb.g:                                             ; preds = %.critedge4
  %i.u = icmp eq i8 %i.k, 61
  %indvars.iv.next174 = add i64 %indvars.iv173, 1
  %indvars.iv.next186 = add i32 %indvars.iv185, 1
  br i1 %i.u, label %.critedge2, label %bb.e, !llvm.loop !11

.critedge2:                                       ; preds = %bb.f, %bb.e, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv163
  %.pre204 = load i8, ptr %i.v, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.critedge2
  %i.w = phi i8 [ %i.ae, %bb.j ], [ %.pre204, %.critedge2 ] ; 3 uses
  %indvars.iv188 = phi i32 [ %indvars.iv.next189, %bb.j ], [ %indvars.iv185, %.critedge2 ] ; 2 uses
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %bb.j ], [ %indvars.iv173, %.critedge2 ] ; 3 uses
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %bb.j ], [ %indvars.iv163, %.critedge2 ]
  %.not108 = icmp eq i8 %i.w, 0
  br i1 %.not108, label %.critedge123, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @__ctype_b_loc() #4
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = sext i8 %i.w to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = and i16 %i.ab, 1
  %.not109 = icmp eq i16 %i.ac, 0
  br i1 %.not109, label %.critedge6, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next168
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not120 = icmp eq i8 %i.ae, 0
  %indvars.iv.next177 = add i64 %indvars.iv176, 1
  %indvars.iv.next189 = add i32 %indvars.iv188, 1
  br i1 %.not120, label %.critedge123, label %bb.h, !llvm.loop !12

.critedge6:                                       ; preds = %bb.i
  %.not110 = icmp eq i8 %i.w, 61
  br i1 %.not110, label %bb.k, label %.critedge123

bb.k:                                             ; preds = %.critedge6
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv176
  %.pre205 = load i8, ptr %.phi.trans.insert, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.af = phi i8 [ %i.ap, %bb.n ], [ %.pre205, %bb.k ] ; 4 uses
  %indvars.iv191 = phi i32 [ %indvars.iv.next192, %bb.n ], [ %indvars.iv188, %bb.k ] ; 2 uses
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %bb.n ], [ %indvars.iv176, %bb.k ] ; 3 uses
  %cond = icmp eq i8 %i.af, 0
  br i1 %cond, label %.preheader.loopexit, label %bb.m

.preheader.loopexit:                              ; preds = %bb.l
  %i.ag = trunc nuw i64 %indvars.iv179 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.critedge8
  %.089155 = phi i32 [ %i.ag, %.preheader.loopexit ], [ %i.aq, %.critedge8 ] ; 3 uses
  %i.ah = zext i32 %.089155 to i64
  %scevgep = getelementptr nuw i8, ptr %0, i64 %i.ah
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep)
  %i.ai = trunc i64 %strlen to i32
  %i.aj = add i32 %.089155, %i.ai
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ak = sext i8 %i.af to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  %i.an = and i16 %i.am, 1
  %.not112 = icmp eq i16 %i.an, 0
  br i1 %.not112, label %.critedge8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next180
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %.not119 = icmp eq i8 %i.ap, 0
  %indvars.iv.next192 = add i32 %indvars.iv191, 1
  br i1 %.not119, label %.critedge123, label %bb.l, !llvm.loop !13

.critedge8:                                       ; preds = %bb.m
  %i.aq = trunc nuw i64 %indvars.iv179 to i32     ; 2 uses
  switch i8 %i.af, label %.preheader [
    i8 39, label %bb.o
    i8 34, label %bb.o
  ]

bb.o:                                             ; preds = %.critedge8, %.critedge8
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not114143 = icmp eq i8 %i.au, 0
  br i1 %.not114143, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.av = sext i32 %indvars.iv191 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv195 = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv.next196, %bb.p ] ; 3 uses
  %i.aw = phi i8 [ %i.au, %.lr.ph.preheader ], [ %i.ba, %bb.p ]
  %i.ax = icmp eq i8 %i.aw, %i.af
  br i1 %i.ax, label %.preheader125, label %bb.p

.preheader125:                                    ; preds = %.lr.ph
  %i.ay = trunc nsw i64 %indvars.iv195 to i32
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next196
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %.not114 = icmp eq i8 %i.ba, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %i.bb = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str) #5 ; 0 uses
  br label %.critedge123

bb.q:                                             ; preds = %.preheader125, %bb.r
  %indvars.iv198 = phi i64 [ %indvars.iv195, %.preheader125 ], [ %indvars.iv.next199, %bb.r ]
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next199
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %.not117 = icmp eq i8 %i.bd, 0
  br i1 %.not117, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = sext i8 %i.bd to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = and i16 %i.bg, 1
  %.not118 = icmp eq i16 %i.bh, 0
  br i1 %.not118, label %.critedge123, label %bb.q, !llvm.loop !15

.loopexit:                                        ; preds = %bb.q, %.preheader
  %.190 = phi i32 [ %.089155, %.preheader ], [ %i.ar, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.aj, %.preheader ], [ %i.ay, %bb.q ]
  %i.bi = sub nsw i64 %indvars.iv163, %indvars.iv
  %3 = and i64 %i.bi, 4294967295
  %i.bj = tail call ptr @xstrndup(ptr noundef nonnull %i.j, i64 noundef %3) #5
  store ptr %i.bj, ptr %1, align 8
  %i.bk = sext i32 %.190 to i64
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  %i.bm = sub nsw i32 %.2, %.190
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call ptr @xstrndup(ptr noundef nonnull %i.bl, i64 noundef %i.bn) #5
  store ptr %i.bo, ptr %2, align 8
  br label %.critedge123

.critedge123:                                     ; preds = %bb.d, %.critedge4, %bb.h, %bb.j, %bb.n, %bb.r, %._crit_edge, %.critedge6, %.loopexit
  %.195 = phi i1 [ false, %bb.h ], [ false, %bb.n ], [ false, %._crit_edge ], [ false, %.critedge6 ], [ true, %.loopexit ], [ false, %.critedge4 ], [ false, %bb.r ], [ false, %bb.j ], [ false, %bb.d ]
  ret i1 %.195
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #1

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
end_hunk_0
