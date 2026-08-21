Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/utilities?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden ptr @create_s() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 10) #9 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @lose_s(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @pfree(ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @pfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i32 @skip_utf8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %.loopexit22, label %.preheader21

.preheader21:                                     ; preds = %bb.a
  %.not33 = icmp eq i32 %3, 0
  br i1 %.not33, label %.loopexit22, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader21, %.loopexit
  %.027 = phi i32 [ %i.j, %.loopexit ], [ %3, %.preheader21 ] ; 2 uses
  %.01826 = phi i32 [ %.2, %.loopexit ], [ %1, %.preheader21 ] ; 3 uses
  %.not = icmp slt i32 %.01826, %2
  br i1 %.not, label %bb.b, label %.loopexit22

bb.b:                                             ; preds = %.lr.ph28
  %i.b = add nsw i32 %.01826, 1                   ; 3 uses
  %i.c = sext i32 %.01826 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp ugt i8 %i.e, -65
  %i.g = icmp slt i32 %i.b, %2
  %or.cond32 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond32, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.123 = phi i32 [ %5, %bb.c ], [ %i.b, %bb.b ]  ; 3 uses
  %4 = sext i32 %.123 to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %4
  %i.i = load i8, ptr %i.h, align 1
  %or.cond = icmp sgt i8 %i.i, -65
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %5 = add nsw i32 %.123, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %5, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.b
  %.2 = phi i32 [ %i.b, %bb.b ], [ %.123, %.lr.ph ], [ %2, %bb.c ] ; 2 uses
  %i.j = add nsw i32 %.027, -1
  %i.k = icmp sgt i32 %.027, 1
  br i1 %i.k, label %.lr.ph28, label %.loopexit22, !llvm.loop !5

.loopexit22:                                      ; preds = %.lr.ph28, %.loopexit, %.preheader21, %bb.a
  %.017 = phi i32 [ -1, %bb.a ], [ %1, %.preheader21 ], [ -1, %.lr.ph28 ], [ %.2, %.loopexit ]
  ret i32 %.017
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i32 @skip_b_utf8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %.loopexit20, label %.preheader19

.preheader19:                                     ; preds = %bb.a
  %.not30 = icmp eq i32 %3, 0
  br i1 %.not30, label %.loopexit20, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader19, %.loopexit
  %.025 = phi i32 [ %i.n, %.loopexit ], [ %3, %.preheader19 ] ; 2 uses
  %.01624 = phi i32 [ %.2, %.loopexit ], [ %1, %.preheader19 ] ; 2 uses
  %.not = icmp sgt i32 %.01624, %2
  br i1 %.not, label %bb.b, label %.loopexit20

bb.b:                                             ; preds = %.lr.ph26
  %i.b = add nsw i32 %.01624, -1                  ; 4 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp slt i8 %i.e, 0
  %i.g = icmp sgt i32 %i.b, %2
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.121 = phi i32 [ %i.l, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.h = sext i32 %.121 to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp ugt i8 %i.j, -65
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = add nsw i32 %.121, -1                    ; 2 uses
  %i.m = icmp sgt i32 %i.l, %2
  br i1 %i.m, label %.lr.ph, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.b
  %.2 = phi i32 [ %i.b, %bb.b ], [ %.121, %.lr.ph ], [ %2, %bb.c ] ; 2 uses
  %i.n = add nsw i32 %.025, -1
  %i.o = icmp sgt i32 %.025, 1
  br i1 %i.o, label %.lr.ph26, label %.loopexit20, !llvm.loop !7

.loopexit20:                                      ; preds = %.lr.ph26, %.loopexit, %.preheader19, %bb.a
  %.015 = phi i32 [ -1, %bb.a ], [ %1, %.preheader19 ], [ -1, %.lr.ph26 ], [ %.2, %.loopexit ]
  ret i32 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 5) i32 @in_grouping_U(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %.promoted = load i32, ptr %i.b, align 8
  %.not16 = icmp eq i32 %4, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.e = phi i32 [ %i.bi, %bb.l ], [ %.promoted, %bb.a ] ; 6 uses
  %.not.i = icmp slt i32 %i.e, %i.d
  br i1 %.not.i, label %bb.c, label %get_utf8.exit.thread24

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, 1                      ; 2 uses
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1               ; 4 uses
  %i.j = zext i8 %i.i to i32                      ; 4 uses
  %i.k = icmp ult i8 %i.i, -64
  %i.l = icmp eq i32 %i.f, %i.d
  %or.cond.i = or i1 %i.l, %i.k
  br i1 %or.cond.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.e, 2                          ; 2 uses
  %i.n = sext i32 %i.f to i64
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i32                 ; 3 uses
  %i.s = icmp samesign ult i8 %i.i, -32
  %i.t = icmp eq i32 %i.m, %i.d
  %or.cond38.i = or i1 %i.t, %i.s
  br i1 %or.cond38.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = shl nuw nsw i32 %i.j, 6
  %i.v = and i32 %i.u, 1984
  %i.w = or disjoint i32 %i.v, %i.r
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.x = add i32 %i.e, 3                          ; 2 uses
  %i.y = sext i32 %i.m to i64
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = icmp samesign ult i8 %i.i, -16
  %i.ae = icmp eq i32 %i.x, %i.d
  %or.cond39.i = or i1 %i.ae, %i.ad
  br i1 %or.cond39.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = shl nuw nsw i32 %i.j, 12
  %i.ag = and i32 %i.af, 61440
  %i.ah = shl nuw nsw i32 %i.r, 6
  %i.ai = or disjoint i32 %i.ah, %i.ag
  %i.aj = or disjoint i32 %i.ai, %i.ac
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ak = shl nuw nsw i32 %i.j, 18
  %i.al = and i32 %i.ak, 1835008
  %i.am = shl nuw nsw i32 %i.r, 12
  %i.an = or disjoint i32 %i.am, %i.al
  %i.ao = shl nuw nsw i32 %i.ac, 6
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = sext i32 %i.x to i64
  %i.ar = getelementptr inbounds i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = and i8 %i.as, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.ap, %i.au
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.017.ph = phi i32 [ %i.j, %bb.c ], [ %i.w, %bb.e ], [ %i.aj, %bb.g ], [ %i.av, %bb.h ] ; 2 uses
  %.0.i.ph = phi i32 [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.g ], [ 4, %bb.h ] ; 4 uses
  %i.aw = icmp sgt i32 %.017.ph, %3
  br i1 %i.aw, label %get_utf8.exit.thread24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = sub i32 %.017.ph, %2                    ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %get_utf8.exit.thread24, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = lshr i32 %i.ax, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = and i32 %i.ax, 7
  %i.bf = shl nuw nsw i32 1, %i.be
  %i.bg = and i32 %i.bf, %i.bd
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %get_utf8.exit.thread24, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = add i32 %.0.i.ph, %i.e                  ; 2 uses
  store i32 %i.bi, ptr %i.b, align 8
  br i1 %.not16, label %get_utf8.exit.thread24, label %bb.b, !llvm.loop !8

get_utf8.exit.thread24:                           ; preds = %bb.b, %bb.j, %bb.k, %bb.i, %bb.l
  %.2 = phi i32 [ 0, %bb.l ], [ -1, %bb.b ], [ %.0.i.ph, %bb.j ], [ %.0.i.ph, %bb.k ], [ %.0.i.ph, %bb.i ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 5) i32 @in_grouping_b_U(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %.promoted = load i32, ptr %i.b, align 8
  %.not16 = icmp eq i32 %4, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.e = phi i32 [ %i.bg, %bb.l ], [ %.promoted, %bb.a ] ; 6 uses
  %.not.i = icmp sgt i32 %i.e, %i.d
  br i1 %.not.i, label %bb.c, label %get_b_utf8.exit.thread24

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp sgt i8 %i.i, -1
  %i.l = icmp eq i32 %i.f, %i.d
  %or.cond.i = or i1 %i.l, %i.k
  br i1 %or.cond.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
