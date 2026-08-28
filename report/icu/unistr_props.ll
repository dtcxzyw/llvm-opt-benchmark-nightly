Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unistr_props?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString4trimEv(ptr noundef nonnull returned align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %.not = trunc i16 %i.b to i1
  br i1 %.not, label %.thread55._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %i.b, 2
  %.not.i = icmp eq i16 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %.not.i, ptr %i.f, ptr %i.d    ; 4 uses
  %i.h = ashr i16 %i.b, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %1 = icmp slt i16 %i.b, 0
  %i.l = select i1 %1, i32 %i.k, i32 %i.i         ; 3 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %.thread55._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.061 = phi i32 [ %.253, %bb.g ], [ %i.l, %bb.b ] ; 10 uses
  %i.n = add nsw i32 %.061, -1                    ; 4 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !9    ; 2 uses
  %i.r = zext i16 %i.q to i32                     ; 5 uses
  %i.s = and i32 %i.r, 64512
  %i.t = icmp eq i32 %i.s, 56320
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %.not44 = icmp eq i32 %.061, 1
  br i1 %.not44, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = zext nneg i32 %.061 to i64
  %i.v = getelementptr [2 x i8], ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i16, ptr %i.w, align 2, !tbaa !9
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = and i32 %i.y, 64512
  %i.aa = icmp eq i32 %i.z, 55296
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %.061, -2
  %i.ac = shl nuw nsw i32 %i.y, 10
  %i.ad = add nuw nsw i32 %i.r, -56613888
  %i.ae = add nsw i32 %i.ad, %i.ac
  br label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.af = icmp eq i16 %i.q, 32
  br i1 %i.af, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.252 = phi i32 [ %i.n, %bb.f ], [ 0, %bb.c ], [ %i.n, %bb.d ], [ %i.ab, %bb.e ]
  %.13651 = phi i32 [ %i.r, %bb.f ], [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ %i.ae, %bb.e ]
  %i.ag = tail call signext i8 @u_isWhitespace_78(i32 noundef %.13651)
  %.not45 = icmp eq i8 %i.ag, 0
  br i1 %.not45, label %.thread._crit_edge, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.253 = phi i32 [ %.252, %.thread ], [ %i.n, %bb.f ] ; 2 uses
  %i.ah = icmp slt i32 %.253, 1
  br i1 %i.ah, label %.thread75, label %.lr.ph, !llvm.loop !11

.thread._crit_edge:                               ; preds = %.thread
  %i.ai = icmp slt i32 %.061, %i.l
  br i1 %i.ai, label %bb.h, label %_ZN6icu_7813UnicodeString9setLengthEi.exit

.thread75:                                        ; preds = %bb.g
  %i.aj = load i16, ptr %i.a, align 8, !tbaa !8
  br label %bb.i

bb.h:                                             ; preds = %.thread._crit_edge
  %i.ak = icmp samesign ult i32 %.061, 1024
  %i.al = load i16, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  br i1 %i.ak, label %bb.i, label %_ZN6icu_7813UnicodeString9setLengthEi.exit.thread80

bb.i:                                             ; preds = %.thread75, %bb.h
  %i.am = phi i16 [ %i.aj, %.thread75 ], [ %i.al, %bb.h ]
  %.0.lcssa7477 = phi i32 [ 0, %.thread75 ], [ %.061, %bb.h ] ; 2 uses
  %i.an = and i16 %i.am, 31
  %.tr.i.i = trunc nuw i32 %.0.lcssa7477 to i16
  %i.ao = shl nuw nsw i16 %.tr.i.i, 5
  %i.ap = or disjoint i16 %i.an, %i.ao
  store i16 %i.ap, ptr %i.a, align 8, !tbaa !8
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit

_ZN6icu_7813UnicodeString9setLengthEi.exit.thread80: ; preds = %bb.h
  %i.aq = or i16 %i.al, -32
  store i16 %i.aq, ptr %i.a, align 8, !tbaa !8
  store i32 %.061, ptr %i.j, align 4, !tbaa !8
  br label %.lr.ph65.preheader

_ZN6icu_7813UnicodeString9setLengthEi.exit:       ; preds = %bb.i, %.thread._crit_edge
  %.0.lcssa71 = phi i32 [ %.061, %.thread._crit_edge ], [ %.0.lcssa7477, %bb.i ] ; 2 uses
  %.not4663 = icmp sgt i32 %.0.lcssa71, 0
  br i1 %.not4663, label %.lr.ph65.preheader, label %.thread55._crit_edge.thread

.lr.ph65.preheader:                               ; preds = %_ZN6icu_7813UnicodeString9setLengthEi.exit.thread80, %_ZN6icu_7813UnicodeString9setLengthEi.exit
  %.0.lcssa7183 = phi i32 [ %.061, %_ZN6icu_7813UnicodeString9setLengthEi.exit.thread80 ], [ %.0.lcssa71, %_ZN6icu_7813UnicodeString9setLengthEi.exit ] ; 2 uses
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %bb.m
  %.364 = phi i32 [ %.560, %bb.m ], [ 0, %.lr.ph65.preheader ] ; 4 uses
  %i.ar = add nsw i32 %.364, 1                    ; 5 uses
  %i.as = sext i32 %.364 to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !9  ; 2 uses
  %i.av = zext i16 %i.au to i32                   ; 4 uses
  %i.aw = and i32 %i.av, 64512
  %i.ax = icmp ne i32 %i.aw, 55296
  %.not47 = icmp eq i32 %i.ar, %.0.lcssa7183
  %or.cond = select i1 %i.ax, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  %i.ay = sext i32 %i.ar to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !9
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = and i32 %i.bb, 64512
  %i.bd = icmp eq i32 %i.bc, 56320
  br i1 %i.bd, label %bb.k, label %.thread55

bb.k:                                             ; preds = %bb.j
  %i.be = add nsw i32 %.364, 2
  %i.bf = shl nuw nsw i32 %i.av, 10
  %i.bg = add nsw i32 %i.bf, -56613888
  %i.bh = add nuw nsw i32 %i.bg, %i.bb
  br label %.thread55

bb.l:                                             ; preds = %.lr.ph65
  %i.bi = icmp eq i16 %i.au, 32
  br i1 %i.bi, label %bb.m, label %.thread55

.thread55:                                        ; preds = %bb.j, %bb.k, %bb.l
  %.559 = phi i32 [ %i.ar, %bb.l ], [ %i.ar, %bb.j ], [ %i.be, %bb.k ]
  %.33858 = phi i32 [ %i.av, %bb.l ], [ %i.av, %bb.j ], [ %i.bh, %bb.k ]
  %i.bj = tail call signext i8 @u_isWhitespace_78(i32 noundef %.33858)
  %.not48 = icmp eq i8 %i.bj, 0
  br i1 %.not48, label %.thread55._crit_edge, label %bb.m

bb.m:                                             ; preds = %.thread55, %bb.l
  %.560 = phi i32 [ %.559, %.thread55 ], [ %i.ar, %bb.l ] ; 3 uses
  %.not46 = icmp slt i32 %.560, %.0.lcssa7183
  br i1 %.not46, label %.lr.ph65, label %.thread55._crit_edge, !llvm.loop !13

.thread55._crit_edge:                             ; preds = %bb.m, %.thread55
  %.3.lcssa = phi i32 [ %.560, %bb.m ], [ %.364, %.thread55 ] ; 2 uses
  %i.bk = icmp sgt i32 %.3.lcssa, 0
  br i1 %i.bk, label %bb.n, label %.thread55._crit_edge.thread

bb.n:                                             ; preds = %.thread55._crit_edge
  %i.bl = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %.3.lcssa, ptr noundef null, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %.thread55._crit_edge.thread

.thread55._crit_edge.thread:                      ; preds = %bb.b, %_ZN6icu_7813UnicodeString9setLengthEi.exit, %.thread55._crit_edge, %bb.n, %bb.a
  ret ptr %0
}

declare signext i8 @u_isWhitespace_78(i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"char16_t", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
end_hunk_0
