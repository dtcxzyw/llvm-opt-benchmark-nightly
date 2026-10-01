Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/getbits?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local void @dav1d_init_get_bits(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.e, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @dav1d_get_bit(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %.not15 = icmp ult ptr %i.d, %i.f
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !13
  %i.i = load i8, ptr %i.d, align 1, !tbaa !17    ; 2 uses
  store i32 7, ptr %i.a, align 8, !tbaa !15
  %i.j = zext i8 %i.i to i64
  %i.k = shl i64 %i.j, 57
  store i64 %i.k, ptr %0, align 8, !tbaa !18
  %i.l = lshr i8 %i.i, 7
  %i.m = zext nneg i8 %i.l to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.n = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.o = add nsw i32 %i.b, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !15
  %i.p = shl i64 %i.n, 1
  store i64 %i.p, ptr %0, align 8, !tbaa !18
  %i.q = lshr i64 %i.n, 63
  %i.r = trunc nuw nsw i64 %i.q to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.r, %bb.e ], [ %i.m, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i32 @dav1d_get_bits(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %1, -1
  %or.cond = icmp ult i32 %i.a, 32
  tail call void @llvm.assume(i1 %or.cond)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 4 uses
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %refill.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.c, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %2 = phi i32 [ %i.c, %bb.b ], [ %i.o, %.lr.ph ] ; 3 uses
  %3 = phi ptr [ %.promoted.i, %bb.b ], [ %i.k, %.lr.ph ] ; 3 uses
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.n, %.lr.ph ] ; 3 uses
  %.not.i = icmp ult ptr %3, %i.h
  br i1 %.not.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !16
  %.not14.i = icmp eq i32 %.0.i, 0
  br i1 %.not14.i, label %refill.exit, label %.loopexit.i

.lr.ph:                                           ; preds = %bb.c
  %i.j = shl i32 %.0.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !13
  %i.l = load i8, ptr %3, align 1, !tbaa !17
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = add nuw nsw i32 %2, 8                    ; 4 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !15
  %i.p = icmp samesign ugt i32 %1, %i.o
  br i1 %i.p, label %bb.c, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %2, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.1.i = phi i32 [ %.0.i, %._crit_edge ], [ %i.n, %.lr.ph ]
  %i.r = zext i32 %.1.i to i64
  %i.s = sub nuw nsw i32 64, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t
  %i.v = load i64, ptr %0, align 8, !tbaa !18
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %0, align 8, !tbaa !18
  br label %refill.exit

refill.exit:                                      ; preds = %.loopexit.i, %._crit_edge, %bb.a
  %i.x = phi i32 [ %i.q, %.loopexit.i ], [ %2, %._crit_edge ], [ %i.c, %bb.a ]
  %i.y = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.z = sub nsw i32 %i.x, %1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !15
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = shl i64 %i.y, %i.aa
  store i64 %i.ab, ptr %0, align 8, !tbaa !18
  %i.ac = sub nuw nsw i32 64, %1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 %i.y, %i.ad
  %i.af = trunc nuw i64 %i.ae to i32
  ret i32 %i.af
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i32 @dav1d_get_sbits(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %1, -1
  %or.cond = icmp ult i32 %i.a, 32
  tail call void @llvm.assume(i1 %or.cond)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 4 uses
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %refill.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.c, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %2 = phi i32 [ %i.c, %bb.b ], [ %i.o, %.lr.ph ] ; 3 uses
  %3 = phi ptr [ %.promoted.i, %bb.b ], [ %i.k, %.lr.ph ] ; 3 uses
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.n, %.lr.ph ] ; 3 uses
  %.not.i = icmp ult ptr %3, %i.h
  br i1 %.not.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !16
  %.not14.i = icmp eq i32 %.0.i, 0
  br i1 %.not14.i, label %refill.exit, label %.loopexit.i

.lr.ph:                                           ; preds = %bb.c
  %i.j = shl i32 %.0.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !13
  %i.l = load i8, ptr %3, align 1, !tbaa !17
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = add nuw nsw i32 %2, 8                    ; 4 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !15
  %i.p = icmp samesign ugt i32 %1, %i.o
  br i1 %i.p, label %bb.c, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %2, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.1.i = phi i32 [ %.0.i, %._crit_edge ], [ %i.n, %.lr.ph ]
  %i.r = zext i32 %.1.i to i64
  %i.s = sub nuw nsw i32 64, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t
  %i.v = load i64, ptr %0, align 8, !tbaa !18
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %0, align 8, !tbaa !18
  br label %refill.exit

refill.exit:                                      ; preds = %.loopexit.i, %._crit_edge, %bb.a
  %i.x = phi i32 [ %i.q, %.loopexit.i ], [ %2, %._crit_edge ], [ %i.c, %bb.a ]
  %i.y = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.z = sub nsw i32 %i.x, %1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !15
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = shl i64 %i.y, %i.aa
  store i64 %i.ab, ptr %0, align 8, !tbaa !18
  %i.ac = sub nuw nsw i32 64, %1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = ashr i64 %i.y, %i.ad
  %i.af = trunc nsw i64 %i.ae to i32
  ret i32 %i.af
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @dav1d_get_uleb128(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !15 ; 5 uses
  %.promoted17 = load i64, ptr %0, align 8, !tbaa !18 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.e = icmp ult i32 %.promoted, 8
  br i1 %i.e, label %bb.b, label %dav1d_get_bits.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i = icmp ult ptr %.promoted.i.i, %i.f
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit

.loopexit.i.i:                                    ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 1
  store ptr %i.g, ptr %i.b, align 8, !tbaa !13
  %i.h = load i8, ptr %.promoted.i.i, align 1, !tbaa !17
  %i.i = or disjoint i32 %.promoted, 8
  %i.j = zext i8 %i.h to i64
  %i.k = sub nuw nsw i32 56, %.promoted
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 %i.j, %i.l
  %i.n = or i64 %i.m, %.promoted17
  br label %dav1d_get_bits.exit

dav1d_get_bits.exit:                              ; preds = %bb.c, %bb.a, %.loopexit.i.i
  %i.o = phi i64 [ %i.n, %.loopexit.i.i ], [ %.promoted17, %bb.c ], [ %.promoted17, %bb.a ] ; 3 uses
  %i.p = phi i32 [ %i.i, %.loopexit.i.i ], [ %.promoted, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  %i.q = add nsw i32 %i.p, -8                     ; 5 uses
  store i32 %i.q, ptr %i.a, align 8, !tbaa !15
  %i.r = shl i64 %i.o, 8                          ; 4 uses
  store i64 %i.r, ptr %0, align 8, !tbaa !18
  %i.s = lshr i64 %i.o, 56
  %i.t = and i64 %i.s, 127                        ; 2 uses
  %i.u = icmp slt i64 %i.o, 0
  br i1 %i.u, label %bb.d, label %bb.y

bb.d:                                             ; preds = %dav1d_get_bits.exit
  %i.v = icmp ult i32 %i.q, 8
  br i1 %i.v, label %bb.e, label %dav1d_get_bits.exit.1

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.1 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.1 = icmp ult ptr %.promoted.i.i.1, %i.w
  br i1 %.not.i.i.1, label %.loopexit.i.i.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.1

.loopexit.i.i.1:                                  ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.promoted.i.i.1, i64 1
  store ptr %i.x, ptr %i.b, align 8, !tbaa !13
  %i.y = load i8, ptr %.promoted.i.i.1, align 1, !tbaa !17
  %i.z = or disjoint i32 %i.q, 8
  %i.aa = zext i8 %i.y to i64
  %i.ab = sub nuw nsw i32 64, %i.p
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw i64 %i.aa, %i.ac
  %i.ae = or i64 %i.ad, %i.r
  br label %dav1d_get_bits.exit.1

dav1d_get_bits.exit.1:                            ; preds = %.loopexit.i.i.1, %bb.f, %bb.d
  %i.af = phi i64 [ %i.ae, %.loopexit.i.i.1 ], [ %i.r, %bb.f ], [ %i.r, %bb.d ] ; 3 uses
  %i.ag = phi i32 [ %i.z, %.loopexit.i.i.1 ], [ %i.q, %bb.f ], [ %i.q, %bb.d ] ; 2 uses
  %i.ah = add nsw i32 %i.ag, -8                   ; 5 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !15
  %i.ai = shl i64 %i.af, 8                        ; 4 uses
  store i64 %i.ai, ptr %0, align 8, !tbaa !18
  %i.aj = lshr i64 %i.af, 49
  %i.ak = and i64 %i.aj, 16256
  %i.al = or disjoint i64 %i.ak, %i.t             ; 2 uses
  %i.am = icmp slt i64 %i.af, 0
  br i1 %i.am, label %bb.g, label %bb.y

bb.g:                                             ; preds = %dav1d_get_bits.exit.1
  %i.an = icmp ult i32 %i.ah, 8
  br i1 %i.an, label %bb.h, label %dav1d_get_bits.exit.2

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.2 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.2 = icmp ult ptr %.promoted.i.i.2, %i.ao
  br i1 %.not.i.i.2, label %.loopexit.i.i.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.2

.loopexit.i.i.2:                                  ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted.i.i.2, i64 1
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !13
  %i.aq = load i8, ptr %.promoted.i.i.2, align 1, !tbaa !17
  %i.ar = or disjoint i32 %i.ah, 8
  %i.as = zext i8 %i.aq to i64
  %i.at = sub nuw nsw i32 64, %i.ag
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 %i.as, %i.au
  %i.aw = or i64 %i.av, %i.ai
  br label %dav1d_get_bits.exit.2

dav1d_get_bits.exit.2:                            ; preds = %.loopexit.i.i.2, %bb.i, %bb.g
  %i.ax = phi i64 [ %i.aw, %.loopexit.i.i.2 ], [ %i.ai, %bb.i ], [ %i.ai, %bb.g ] ; 3 uses
  %i.ay = phi i32 [ %i.ar, %.loopexit.i.i.2 ], [ %i.ah, %bb.i ], [ %i.ah, %bb.g ] ; 2 uses
  %i.az = add nsw i32 %i.ay, -8                   ; 5 uses
  store i32 %i.az, ptr %i.a, align 8, !tbaa !15
  %i.ba = shl i64 %i.ax, 8                        ; 4 uses
  store i64 %i.ba, ptr %0, align 8, !tbaa !18
  %i.bb = lshr i64 %i.ax, 42
  %i.bc = and i64 %i.bb, 2080768
  %i.bd = or disjoint i64 %i.bc, %i.al            ; 2 uses
  %i.be = icmp slt i64 %i.ax, 0
  br i1 %i.be, label %bb.j, label %bb.y

bb.j:                                             ; preds = %dav1d_get_bits.exit.2
  %i.bf = icmp ult i32 %i.az, 8
  br i1 %i.bf, label %bb.k, label %dav1d_get_bits.exit.3

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.3 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.3 = icmp ult ptr %.promoted.i.i.3, %i.bg
  br i1 %.not.i.i.3, label %.loopexit.i.i.3, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.3

.loopexit.i.i.3:                                  ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.promoted.i.i.3, i64 1
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !13
  %i.bi = load i8, ptr %.promoted.i.i.3, align 1, !tbaa !17
  %i.bj = or disjoint i32 %i.az, 8
  %i.bk = zext i8 %i.bi to i64
  %i.bl = sub nuw nsw i32 64, %i.ay
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 %i.bk, %i.bm
  %i.bo = or i64 %i.bn, %i.ba
  br label %dav1d_get_bits.exit.3

dav1d_get_bits.exit.3:                            ; preds = %.loopexit.i.i.3, %bb.l, %bb.j
  %i.bp = phi i64 [ %i.bo, %.loopexit.i.i.3 ], [ %i.ba, %bb.l ], [ %i.ba, %bb.j ] ; 3 uses
  %i.bq = phi i32 [ %i.bj, %.loopexit.i.i.3 ], [ %i.az, %bb.l ], [ %i.az, %bb.j ] ; 2 uses
  %i.br = add nsw i32 %i.bq, -8                   ; 5 uses
  store i32 %i.br, ptr %i.a, align 8, !tbaa !15
  %i.bs = shl i64 %i.bp, 8                        ; 4 uses
  store i64 %i.bs, ptr %0, align 8, !tbaa !18
  %i.bt = lshr i64 %i.bp, 35
  %i.bu = and i64 %i.bt, 266338304
  %i.bv = or disjoint i64 %i.bu, %i.bd            ; 2 uses
  %i.bw = icmp slt i64 %i.bp, 0
  br i1 %i.bw, label %bb.m, label %bb.y

bb.m:                                             ; preds = %dav1d_get_bits.exit.3
  %i.bx = icmp ult i32 %i.br, 8
  br i1 %i.bx, label %bb.n, label %dav1d_get_bits.exit.4

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.4 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.4 = icmp ult ptr %.promoted.i.i.4, %i.by
  br i1 %.not.i.i.4, label %.loopexit.i.i.4, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.4

.loopexit.i.i.4:                                  ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %.promoted.i.i.4, i64 1
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !13
  %i.ca = load i8, ptr %.promoted.i.i.4, align 1, !tbaa !17
  %i.cb = or disjoint i32 %i.br, 8
  %i.cc = zext i8 %i.ca to i64
  %i.cd = sub nuw nsw i32 64, %i.bq
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw i64 %i.cc, %i.ce
  %i.cg = or i64 %i.cf, %i.bs
end_hunk_0
begin_hunk_1_@dav1d_get_vlc:bb.a
  %i.af = load i8, ptr %i.ac, align 1, !tbaa !17  ; 2 uses
  store i32 7, ptr %i.a, align 8, !tbaa !15
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl i64 %i.ag, 57                       ; 2 uses
  store i64 %i.ah, ptr %0, align 8, !tbaa !18
  %i.ai = lshr i8 %i.af, 7
  %i.aj = zext nneg i8 %i.ai to i32
  br label %dav1d_get_bit.exit12

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.ak = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !15
  %i.al = shl i64 %i.ab, 1                        ; 2 uses
  store i64 %i.al, ptr %0, align 8, !tbaa !18
  %i.am = lshr i64 %i.ab, 63
  %i.an = trunc nuw nsw i64 %i.am to i32
  br label %dav1d_get_bit.exit12

dav1d_get_bit.exit12:                             ; preds = %bb.j, %bb.k
  %i.ao = phi i64 [ %i.al, %bb.k ], [ %i.ah, %bb.j ] ; 4 uses
  %i.ap = phi i32 [ %i.ak, %bb.k ], [ 7, %bb.j ]  ; 8 uses
  %.0.i10 = phi i32 [ %i.an, %bb.k ], [ %i.aj, %bb.j ]
  %.not8 = icmp eq i32 %.0.i10, 0
  br i1 %.not8, label %bb.f, label %bb.l

bb.l:                                             ; preds = %dav1d_get_bit.exit12
  %i.aq = shl nuw i32 2, %.057
  %i.ar = add i32 %i.aq, -1
  %or.cond.i = icmp samesign ult i32 %.057, 32
  tail call void @llvm.assume(i1 %or.cond.i)
  %.not13 = icmp ult i32 %.057, %i.ap
  br i1 %.not13, label %dav1d_get_bits.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !14  ; 4 uses
  %.promoted.i.i = load ptr, ptr %i.u, align 8, !tbaa !13 ; 6 uses
  %.not.i.i = icmp ult ptr %.promoted.i.i, %i.as
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.r, %bb.p, %bb.m
  %.lcssa = phi i32 [ %i.ap, %bb.m ], [ %i.aw, %bb.p ], [ %i.bc, %bb.r ], [ %i.bi, %bb.t ] ; 2 uses
  %.0.i.i.lcssa = phi i32 [ 0, %bb.m ], [ %i.av, %bb.p ], [ %i.bb, %bb.r ], [ %i.bh, %bb.t ] ; 2 uses
  store i32 1, ptr %i.w, align 4, !tbaa !16
  %.not14.i.i = icmp eq i32 %.0.i.i.lcssa, 0
  br i1 %.not14.i.i, label %dav1d_get_bits.exit, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 1 ; 3 uses
  store ptr %i.at, ptr %i.u, align 8, !tbaa !13
  %i.au = load i8, ptr %.promoted.i.i, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = add nuw nsw i32 %i.ap, 8                ; 4 uses
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !15
  %.not14 = icmp samesign ult i32 %.057, %i.aw
  br i1 %.not14, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.1 = icmp ult ptr %i.at, %i.as
  br i1 %.not.i.i.1, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.ax = shl nuw nsw i32 %i.av, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 2 ; 3 uses
  store ptr %i.ay, ptr %i.u, align 8, !tbaa !13
  %i.az = load i8, ptr %i.at, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ax, %i.ba            ; 3 uses
  %i.bc = add nuw nsw i32 %i.ap, 16               ; 4 uses
  store i32 %i.bc, ptr %i.a, align 8, !tbaa !15
  %.not14.1 = icmp samesign ult i32 %.057, %i.bc
  br i1 %.not14.1, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i.2 = icmp ult ptr %i.ay, %i.as
  br i1 %.not.i.i.2, label %bb.s, label %bb.n

bb.s:                                             ; preds = %bb.r
  %i.bd = shl nuw nsw i32 %i.bb, 8
  %i.be = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 3 ; 3 uses
  store ptr %i.be, ptr %i.u, align 8, !tbaa !13
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg            ; 3 uses
  %i.bi = add nuw nsw i32 %i.ap, 24               ; 4 uses
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !15
  %.not14.2 = icmp samesign ult i32 %.057, %i.bi
  br i1 %.not14.2, label %.loopexit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.3 = icmp ult ptr %i.be, %i.as
  br i1 %.not.i.i.3, label %bb.u, label %bb.n

bb.u:                                             ; preds = %bb.t
  %i.bj = shl nuw i32 %i.bh, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 4
  store ptr %i.bk, ptr %i.u, align 8, !tbaa !13
  %i.bl = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm
  %i.bo = add nuw nsw i32 %i.ap, 32               ; 2 uses
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !15
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.o, %bb.q, %bb.s, %bb.u, %bb.n
  %i.bp = phi i32 [ %.lcssa, %bb.n ], [ %i.aw, %bb.o ], [ %i.bc, %bb.q ], [ %i.bi, %bb.s ], [ %i.bo, %bb.u ] ; 2 uses
  %.1.i.i = phi i32 [ %.0.i.i.lcssa, %bb.n ], [ %i.av, %bb.o ], [ %i.bb, %bb.q ], [ %i.bh, %bb.s ], [ %i.bn, %bb.u ]
  %i.bq = zext i32 %.1.i.i to i64
  %i.br = sub nuw nsw i32 64, %i.bp
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = or i64 %i.bt, %i.ao
  br label %dav1d_get_bits.exit

dav1d_get_bits.exit:                              ; preds = %bb.l, %bb.n, %.loopexit.i.i
  %i.bv = phi i64 [ %i.bu, %.loopexit.i.i ], [ %i.ao, %bb.n ], [ %i.ao, %bb.l ] ; 2 uses
  %i.bw = phi i32 [ %i.bp, %.loopexit.i.i ], [ %.lcssa, %bb.n ], [ %i.ap, %bb.l ]
  %i.bx = sub nsw i32 %i.bw, %i.z
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !15
  %i.by = zext nneg i32 %i.z to i64
  %i.bz = shl i64 %i.bv, %i.by
  store i64 %i.bz, ptr %0, align 8, !tbaa !18
  %i.ca = xor i32 %.057, 63
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = lshr i64 %i.bv, %i.cb
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = add i32 %i.ar, %i.cd
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %dav1d_get_bits.exit, %dav1d_get_bit.exit
  %.1 = phi i32 [ 0, %dav1d_get_bit.exit ], [ %i.ce, %dav1d_get_bits.exit ], [ -1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i32 @dav1d_get_bits_subexp(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl nuw i32 1, %2                        ; 2 uses
  %i.b = add nsw i32 %i.a, %1                     ; 4 uses
  %i.c = shl i32 2, %2                            ; 6 uses
  %i.d = icmp ult i32 %i.c, 24
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.promoted.i = load i32, ptr %i.e, align 8, !tbaa !15
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.j, %bb.a
  %.025.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.j ] ; 2 uses
  %i.i = or disjoint i32 %i.c, 1
  %i.j = sub i32 %i.i, %.025.lcssa.i
  %i.k = tail call i32 @dav1d_get_uniform(ptr noundef %0, i32 noundef %i.j)
  br label %bb.k

bb.b:                                             ; preds = %bb.j, %.lr.ph.i
  %i.l = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.m = phi i32 [ 8, %.lr.ph.i ], [ %i.bd, %bb.j ]
  %i.n = phi i32 [ 3, %.lr.ph.i ], [ %i.bc, %bb.j ] ; 6 uses
  %.02447.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bb, %bb.j ] ; 4 uses
  %.02546.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !14
  %.not15.i.i = icmp ult ptr %i.o, %i.p
  br i1 %.not15.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.h, align 4, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.q, ptr %i.f, align 8, !tbaa !13
  %i.r = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  store i32 7, ptr %i.e, align 8, !tbaa !15
  %i.s = zext i8 %i.r to i64
  %i.t = shl i64 %i.s, 57                         ; 2 uses
  store i64 %i.t, ptr %0, align 8, !tbaa !18
  %i.u = lshr i8 %i.r, 7
  %i.v = zext nneg i8 %i.u to i32
  br label %dav1d_get_bit.exit.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.w = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.x = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.x, ptr %i.e, align 8, !tbaa !15
  %i.y = shl i64 %i.w, 1                          ; 2 uses
  store i64 %i.y, ptr %0, align 8, !tbaa !18
  %i.z = lshr i64 %i.w, 63
  %i.aa = trunc nuw nsw i64 %i.z to i32
  br label %dav1d_get_bit.exit.i

dav1d_get_bit.exit.i:                             ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %i.y, %bb.f ], [ %i.t, %bb.e ] ; 3 uses
  %i.ac = phi i32 [ %i.x, %bb.f ], [ 7, %bb.e ]   ; 4 uses
  %.0.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %.not28.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not28.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %dav1d_get_bit.exit.i
  %or.cond.i.i = icmp samesign ult i32 %i.n, 33
  tail call void @llvm.assume(i1 %or.cond.i.i)
  %i.ad = icmp ugt i32 %i.n, %i.ac
  br i1 %i.ad, label %bb.h, label %dav1d_get_bits.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !14
  %.promoted.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %3 = phi i32 [ %i.ac, %bb.h ], [ %i.ak, %.lr.ph ] ; 3 uses
  %4 = phi ptr [ %.promoted.i.i.i, %bb.h ], [ %i.ag, %.lr.ph ] ; 3 uses
  %.0.i.i.i = phi i32 [ 0, %bb.h ], [ %i.aj, %.lr.ph ] ; 3 uses
  %.not.i.i.i = icmp ult ptr %4, %i.ae
  br i1 %.not.i.i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  store i32 1, ptr %i.h, align 4, !tbaa !16
  %.not14.i.i.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not14.i.i.i, label %dav1d_get_bits.exit.i, label %.loopexit.i.i.i

.lr.ph:                                           ; preds = %bb.i
  %i.af = shl i32 %.0.i.i.i, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !13
  %i.ah = load i8, ptr %4, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 2 uses
  %i.ak = add nuw nsw i32 %3, 8                   ; 4 uses
  store i32 %i.ak, ptr %i.e, align 8, !tbaa !15
  %i.al = icmp samesign ugt i32 %i.n, %i.ak
  br i1 %i.al, label %bb.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph, %._crit_edge
  %i.am = phi i32 [ %3, %._crit_edge ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.1.i.i.i = phi i32 [ %.0.i.i.i, %._crit_edge ], [ %i.aj, %.lr.ph ]
  %i.an = zext i32 %.1.i.i.i to i64
  %i.ao = sub nuw nsw i32 64, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl i64 %i.an, %i.ap
  %i.ar = or i64 %i.aq, %i.ab
  br label %dav1d_get_bits.exit.i

dav1d_get_bits.exit.i:                            ; preds = %.loopexit.i.i.i, %._crit_edge, %bb.g
  %i.as = phi i64 [ %i.ar, %.loopexit.i.i.i ], [ %i.ab, %._crit_edge ], [ %i.ab, %bb.g ] ; 2 uses
  %i.at = phi i32 [ %i.am, %.loopexit.i.i.i ], [ %3, %._crit_edge ], [ %i.ac, %bb.g ]
  %i.au = sub nsw i32 %i.at, %i.n
  store i32 %i.au, ptr %i.e, align 8, !tbaa !15
  %i.av = zext nneg i32 %i.n to i64
  %i.aw = shl i64 %i.as, %i.av
  store i64 %i.aw, ptr %0, align 8, !tbaa !18
  %i.ax = sub nuw nsw i32 64, %i.n
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 %i.as, %i.ay
  %i.ba = trunc nuw i64 %i.az to i32
  br label %bb.k

bb.j:                                             ; preds = %dav1d_get_bit.exit.i
  %.1.i = add i32 %.02546.i, %i.m                 ; 3 uses
  %i.bb = add nuw nsw i32 %.02447.i, 1
  %i.bc = add nuw nsw i32 %.02447.i, 3
  %i.bd = shl nuw i32 8, %.02447.i
  %i.be = shl i32 24, %.02447.i
  %i.bf = add i32 %.1.i, %i.be
  %i.bg = icmp ult i32 %i.c, %i.bf
  br i1 %i.bg, label %._crit_edge.i, label %bb.b

bb.k:                                             ; preds = %dav1d_get_bits.exit.i, %._crit_edge.i
  %.02544.i = phi i32 [ %.02546.i, %dav1d_get_bits.exit.i ], [ %.025.lcssa.i, %._crit_edge.i ]
  %.pn.ph.i = phi i32 [ %i.ba, %dav1d_get_bits.exit.i ], [ %i.k, %._crit_edge.i ]
  %.135.i = add i32 %.pn.ph.i, %.02544.i          ; 10 uses
  %i.bh = shl i32 %i.b, 1                         ; 2 uses
  %.not29.i = icmp ugt i32 %i.bh, %i.c
  br i1 %.not29.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp ugt i32 %.135.i, %i.bh
  br i1 %i.bi, label %get_bits_subexp_u.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = and i32 %.135.i, 1
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = lshr exact i32 %.135.i, 1
  %i.bm = add i32 %i.bl, %i.b
  br label %get_bits_subexp_u.exit

bb.o:                                             ; preds = %bb.m
  %i.bn = add nuw i32 %.135.i, 1
  %i.bo = lshr exact i32 %i.bn, 1
  %i.bp = sub i32 %i.b, %i.bo
  br label %get_bits_subexp_u.exit

bb.p:                                             ; preds = %bb.k
  %i.bq = sub i32 %i.c, %i.b                      ; 3 uses
  %i.br = shl i32 %i.bq, 1
  %i.bs = icmp ugt i32 %.135.i, %i.br
  br i1 %i.bs, label %inv_recenter.exit32.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = and i32 %.135.i, 1
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = lshr exact i32 %.135.i, 1
  %i.bw = add i32 %i.bv, %i.bq
  br label %inv_recenter.exit32.i

bb.s:                                             ; preds = %bb.q
  %i.bx = add nuw i32 %.135.i, 1
  %i.by = lshr exact i32 %i.bx, 1
  %i.bz = sub i32 %i.bq, %i.by
  br label %inv_recenter.exit32.i

inv_recenter.exit32.i:                            ; preds = %bb.s, %bb.r, %bb.p
  %.0.i31.i = phi i32 [ %i.bz, %bb.s ], [ %i.bw, %bb.r ], [ %.135.i, %bb.p ]
  %i.ca = sub i32 %i.c, %.0.i31.i
  br label %get_bits_subexp_u.exit

get_bits_subexp_u.exit:                           ; preds = %bb.l, %bb.n, %bb.o, %inv_recenter.exit32.i
  %i.cb = phi i32 [ %i.ca, %inv_recenter.exit32.i ], [ %i.bp, %bb.o ], [ %i.bm, %bb.n ], [ %.135.i, %bb.l ]
  %i.cc = sub nsw i32 %i.cb, %i.a
  ret i32 %i.cc
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"GetBits", !9, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !11, i64 24, !11, i64 32}
!13 = !{!12, !11, i64 16}
!14 = !{!12, !11, i64 32}
!15 = !{!12, !6, i64 8}
!16 = !{!12, !6, i64 12}
!17 = !{!5, !5, i64 0}
!18 = !{!12, !9, i64 0}
!19 = !{!12, !11, i64 24}
end_hunk_1
