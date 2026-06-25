begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @sm_row_dominance(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.0.in61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.062 = load ptr, ptr %.0.in61, align 8, !tbaa !17 ; 2 uses
  %.not63 = icmp eq ptr %.062, null
  br i1 %.not63, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.0.in = getelementptr inbounds nuw i8, ptr %.064, i64 32
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !17  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge67.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %.loopexit
  %.064 = phi ptr [ %.062, %.lr.ph66 ], [ %.0, %.loopexit ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.064, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 3 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.c, align 8, !tbaa !23
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.n = zext nneg i32 %i.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.q = phi ptr [ %i.p, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 2 uses
  %.041.in52 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.04153 = load ptr, ptr %.041.in52, align 8, !tbaa !26 ; 2 uses
  %.not4854 = icmp eq ptr %.04153, null
  br i1 %.not4854, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 8, !tbaa !23
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.04156 = phi ptr [ %.04153, %.lr.ph ], [ %.041, %bb.f ] ; 2 uses
  %.04055 = phi ptr [ %i.q, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04156, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21   ; 3 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i32 %i.u, %i.r
  tail call void @llvm.assume(i1 %i.w)
  %i.x = zext nneg i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %2 = load i32, ptr %1, align 4, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %.04055, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !27
  %i.ac = icmp slt i32 %2, %i.ab
  %.1 = select i1 %i.ac, ptr %i.z, ptr %.04055    ; 2 uses
  %.041.in = getelementptr inbounds nuw i8, ptr %.04156, i64 24
  %.041 = load ptr, ptr %.041.in, align 8, !tbaa !26 ; 2 uses
  %.not48 = icmp eq ptr %.041, null
  br i1 %.not48, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.040.lcssa = phi ptr [ %i.q, %bb.e ], [ %.1, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.040.lcssa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 2 uses
  %.not4957 = icmp eq ptr %i.ae, null
  br i1 %.not4957, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %.064, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph60, %bb.l
  %.14258 = phi ptr [ %i.ae, %.lr.ph60 ], [ %i.ah, %bb.l ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.14258, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 2 uses
  %i.ai = load i32, ptr %.14258, align 8, !tbaa !31 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !32
  %i.al = icmp slt i32 %i.ai, %i.ak
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load ptr, ptr %0, align 8, !tbaa !33
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34 ; 2 uses
  %i.as = load i32, ptr %i.af, align 4, !tbaa !34 ; 2 uses
  %i.at = icmp sgt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = icmp eq i32 %i.ar, %i.as
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = load i32, ptr %i.ap, align 8, !tbaa !35
  %i.aw = load i32, ptr %.064, align 8, !tbaa !35
  %i.ax = icmp sgt i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ay = tail call i32 (ptr, ptr, ...) @sm_row_contains(ptr noundef nonnull %.064, ptr noundef nonnull %i.ap) #3
  %.not50 = icmp eq i32 %i.ay, 0
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !35
  tail call void (ptr, i32, ...) @sm_delrow(ptr noundef nonnull %0, i32 noundef %i.az) #3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.j
  %.not49 = icmp eq ptr %i.ah, null
  br i1 %.not49, label %.loopexit, label %bb.g

._crit_edge67.loopexit:                           ; preds = %.loopexit
  %.pre.a = load i32, ptr %i.a, align 8, !tbaa !8
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre.a, %._crit_edge67.loopexit ], [ %i.b, %bb.a ]
  %i.bb = sub nsw i32 %i.b, %i.ba
  ret i32 %i.bb
}

declare i32 @sm_row_contains(...) local_unnamed_addr #1

declare void @sm_delrow(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @sm_col_dominance(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not68 = icmp eq ptr %i.d, null
  br i1 %.not68, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not56 = icmp eq ptr %1, null
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph71, %.loopexit
  %.069 = phi ptr [ %i.d, %.lr.ph71 ], [ %i.i, %.loopexit ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.069, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !31   ; 3 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.e, align 8, !tbaa !32
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !33
  %i.q = zext nneg i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 2 uses
  %.045.in58 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.04559 = load ptr, ptr %.045.in58, align 8, !tbaa !30 ; 2 uses
  %.not5460 = icmp eq ptr %.04559, null
  br i1 %.not5460, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.u = load i32, ptr %i.e, align 8, !tbaa !32
  %i.v = load ptr, ptr %0, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.04562 = phi ptr [ %.04559, %.lr.ph ], [ %.045, %bb.f ] ; 2 uses
  %.04661 = phi ptr [ %i.t, %.lr.ph ], [ %.147, %bb.f ] ; 2 uses
  %i.w = load i32, ptr %.04562, align 8, !tbaa !31 ; 3 uses
  %i.x = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i32 %i.w, %i.u
  tail call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %.04661, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.ae = icmp slt i32 %3, %i.ad
  %.147 = select i1 %i.ae, ptr %i.ab, ptr %.04661 ; 2 uses
  %.045.in = getelementptr inbounds nuw i8, ptr %.04562, i64 8
  %.045 = load ptr, ptr %.045.in, align 8, !tbaa !30 ; 2 uses
  %.not54 = icmp eq ptr %.045, null
  br i1 %.not54, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.046.lcssa = phi ptr [ %i.t, %bb.e ], [ %.147, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %.046.lcssa, i64 16
  %.163 = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.not5564 = icmp eq ptr %.163, null
  br i1 %.not5564, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %.069, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph67, %bb.q
  %.165 = phi ptr [ %.163, %.lr.ph67 ], [ %.1, %bb.q ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.165, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !23
  %i.al = icmp slt i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.aq = phi ptr [ %i.ap, %bb.i ], [ null, %bb.h ], [ null, %bb.g ] ; 4 uses
  br i1 %.not56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !40
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = load i32, ptr %.069, align 8, !tbaa !40
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = icmp sgt i32 %i.au, %i.ay
  br i1 %i.az, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27 ; 2 uses
  %i.bc = load i32, ptr %i.ag, align 4, !tbaa !27 ; 2 uses
  %i.bd = icmp sgt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = icmp eq i32 %i.bb, %i.bc
  br i1 %i.be, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !40
  %i.bg = load i32, ptr %.069, align 8, !tbaa !40
  %i.bh = icmp sgt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bi = tail call i32 (ptr, ptr, ...) @sm_col_contains(ptr noundef nonnull %.069, ptr noundef nonnull %i.aq) #3
  %.not57 = icmp eq i32 %i.bi, 0
  br i1 %.not57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %.069, align 8, !tbaa !40
  tail call void (ptr, i32, ...) @sm_delcol(ptr noundef %0, i32 noundef %i.bj) #3
  br label %.loopexit

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.165, i64 24
  %.1 = load ptr, ptr %i.bk, align 8, !tbaa !39   ; 2 uses
  %.not55 = icmp eq ptr %.1, null
  br i1 %.not55, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.q, %._crit_edge, %bb.p
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge72.loopexit, label %bb.b

._crit_edge72.loopexit:                           ; preds = %.loopexit
  %.pre.a = load i32, ptr %i.a, align 8, !tbaa !36
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre.a, %._crit_edge72.loopexit ], [ %i.b, %bb.a ]
  %i.bm = sub nsw i32 %i.b, %i.bl
  ret i32 %i.bm
}

declare i32 @sm_col_contains(...) local_unnamed_addr #1

declare void @sm_delcol(...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 48}
!9 = !{!"sm_matrix_struct", !10, i64 0, !5, i64 8, !13, i64 16, !5, i64 24, !14, i64 32, !14, i64 40, !5, i64 48, !15, i64 56, !15, i64 64, !5, i64 72, !16, i64 80}
!10 = !{!"p2 _ZTS13sm_row_struct", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p2 _ZTS13sm_col_struct", !11, i64 0}
!14 = !{!"p1 _ZTS13sm_row_struct", !12, i64 0}
!15 = !{!"p1 _ZTS13sm_col_struct", !12, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"sm_row_struct", !5, i64 0, !5, i64 4, !5, i64 8, !20, i64 16, !20, i64 24, !14, i64 32, !14, i64 40, !16, i64 48}
!20 = !{!"p1 _ZTS17sm_element_struct", !12, i64 0}
!21 = !{!22, !5, i64 4}
!22 = !{!"sm_element_struct", !5, i64 0, !5, i64 4, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !16, i64 40}
!23 = !{!9, !5, i64 24}
!24 = !{!9, !13, i64 16}
!25 = !{!15, !15, i64 0}
!26 = !{!22, !20, i64 24}
!27 = !{!28, !5, i64 4}
!28 = !{!"sm_col_struct", !5, i64 0, !5, i64 4, !5, i64 8, !20, i64 16, !20, i64 24, !15, i64 32, !15, i64 40, !16, i64 48}
!29 = !{!28, !20, i64 16}
!30 = !{!22, !20, i64 8}
!31 = !{!22, !5, i64 0}
!32 = !{!9, !5, i64 8}
!33 = !{!9, !10, i64 0}
!34 = !{!19, !5, i64 4}
!35 = !{!19, !5, i64 0}
!36 = !{!9, !5, i64 72}
!37 = !{!9, !15, i64 56}
!38 = !{!28, !15, i64 32}
!39 = !{!20, !20, i64 0}
!40 = !{!28, !5, i64 0}
end_hunk_0
