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
  store ptr %1, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.e, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @dav1d_get_bit(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %.not15 = icmp ult ptr %i.d, %i.f
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !14
  %i.i = load i8, ptr %i.d, align 1, !tbaa !18    ; 2 uses
  store i32 7, ptr %i.a, align 8, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = shl i64 %i.j, 57
  store i64 %i.k, ptr %0, align 8, !tbaa !19
  %i.l = lshr i8 %i.i, 7
  %i.m = zext nneg i8 %i.l to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.n = load i64, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.o = add nsw i32 %i.b, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !16
  %i.p = shl i64 %i.n, 1
  store i64 %i.p, ptr %0, align 8, !tbaa !19
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 5 uses
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %refill.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.c, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %.not.i34 = icmp ult ptr %.promoted.i, %i.h
  br i1 %.not.i34, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp ult ptr %i.k, %i.h
  br i1 %.not.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.lcssa = phi i32 [ %i.c, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.0.i.lcssa = phi i32 [ 0, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !17
  %.not14.i = icmp eq i32 %.0.i.lcssa, 0
  br i1 %.not14.i, label %refill.exit, label %.loopexit.i

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0.i35 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %2 = phi ptr [ %i.k, %bb.c ], [ %.promoted.i, %bb.b ] ; 2 uses
  %3 = phi i32 [ %i.o, %bb.c ], [ %i.c, %bb.b ]
  %i.j = shl i32 %.0.i35, 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = load i8, ptr %2, align 1, !tbaa !18
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 3 uses
  %i.o = add nuw nsw i32 %3, 8                    ; 5 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  %i.p = icmp samesign ugt i32 %1, %i.o
  br i1 %i.p, label %bb.c, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %.lcssa, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.1.i = phi i32 [ %.0.i.lcssa, %._crit_edge ], [ %i.n, %.lr.ph ]
  %i.r = zext i32 %.1.i to i64
  %i.s = sub nuw nsw i32 64, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t
  %i.v = load i64, ptr %0, align 8, !tbaa !19
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %0, align 8, !tbaa !19
  br label %refill.exit

refill.exit:                                      ; preds = %.loopexit.i, %._crit_edge, %bb.a
  %i.x = phi i32 [ %i.q, %.loopexit.i ], [ %.lcssa, %._crit_edge ], [ %i.c, %bb.a ]
  %i.y = load i64, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.z = sub nsw i32 %i.x, %1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !16
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = shl i64 %i.y, %i.aa
  store i64 %i.ab, ptr %0, align 8, !tbaa !19
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 5 uses
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %refill.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.c, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %.not.i34 = icmp ult ptr %.promoted.i, %i.h
  br i1 %.not.i34, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp ult ptr %i.k, %i.h
  br i1 %.not.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.lcssa = phi i32 [ %i.c, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.0.i.lcssa = phi i32 [ 0, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !17
  %.not14.i = icmp eq i32 %.0.i.lcssa, 0
  br i1 %.not14.i, label %refill.exit, label %.loopexit.i

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0.i35 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %2 = phi ptr [ %i.k, %bb.c ], [ %.promoted.i, %bb.b ] ; 2 uses
  %3 = phi i32 [ %i.o, %bb.c ], [ %i.c, %bb.b ]
  %i.j = shl i32 %.0.i35, 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !14
  %i.l = load i8, ptr %2, align 1, !tbaa !18
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 3 uses
  %i.o = add nuw nsw i32 %3, 8                    ; 5 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  %i.p = icmp samesign ugt i32 %1, %i.o
  br i1 %i.p, label %bb.c, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %.lcssa, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.1.i = phi i32 [ %.0.i.lcssa, %._crit_edge ], [ %i.n, %.lr.ph ]
  %i.r = zext i32 %.1.i to i64
  %i.s = sub nuw nsw i32 64, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t
  %i.v = load i64, ptr %0, align 8, !tbaa !19
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %0, align 8, !tbaa !19
  br label %refill.exit

refill.exit:                                      ; preds = %.loopexit.i, %._crit_edge, %bb.a
  %i.x = phi i32 [ %i.q, %.loopexit.i ], [ %.lcssa, %._crit_edge ], [ %i.c, %bb.a ]
  %i.y = load i64, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.z = sub nsw i32 %i.x, %1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !16
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = shl i64 %i.y, %i.aa
  store i64 %i.ab, ptr %0, align 8, !tbaa !19
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
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !16 ; 5 uses
  %.promoted17 = load i64, ptr %0, align 8, !tbaa !19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.e = icmp ult i32 %.promoted, 8
  br i1 %i.e, label %bb.b, label %dav1d_get_bits.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !15
  %.promoted.i.i = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %.not.i.i = icmp ult ptr %.promoted.i.i, %i.f
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.d, align 4, !tbaa !17
  br label %dav1d_get_bits.exit

.loopexit.i.i:                                    ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 1
  store ptr %i.g, ptr %i.b, align 8, !tbaa !14
  %i.h = load i8, ptr %.promoted.i.i, align 1, !tbaa !18
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
  store i32 %i.q, ptr %i.a, align 8, !tbaa !16
  %i.r = shl i64 %i.o, 8                          ; 4 uses
  store i64 %i.r, ptr %0, align 8, !tbaa !19
  %i.s = lshr i64 %i.o, 56
  %i.t = and i64 %i.s, 127                        ; 2 uses
  %i.u = icmp slt i64 %i.o, 0
  br i1 %i.u, label %bb.d, label %bb.y

bb.d:                                             ; preds = %dav1d_get_bits.exit
  %i.v = icmp ult i32 %i.q, 8
  br i1 %i.v, label %bb.e, label %dav1d_get_bits.exit.1

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !15
  %.promoted.i.i.1 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.1 = icmp ult ptr %.promoted.i.i.1, %i.w
  br i1 %.not.i.i.1, label %.loopexit.i.i.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.d, align 4, !tbaa !17
  br label %dav1d_get_bits.exit.1

.loopexit.i.i.1:                                  ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.promoted.i.i.1, i64 1
  store ptr %i.x, ptr %i.b, align 8, !tbaa !14
  %i.y = load i8, ptr %.promoted.i.i.1, align 1, !tbaa !18
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
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !16
  %i.ai = shl i64 %i.af, 8                        ; 4 uses
  store i64 %i.ai, ptr %0, align 8, !tbaa !19
  %i.aj = lshr i64 %i.af, 49
  %i.ak = and i64 %i.aj, 16256
  %i.al = or disjoint i64 %i.ak, %i.t             ; 2 uses
  %i.am = icmp slt i64 %i.af, 0
  br i1 %i.am, label %bb.g, label %bb.y

bb.g:                                             ; preds = %dav1d_get_bits.exit.1
  %i.an = icmp ult i32 %i.ah, 8
  br i1 %i.an, label %bb.h, label %dav1d_get_bits.exit.2

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !15
  %.promoted.i.i.2 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.2 = icmp ult ptr %.promoted.i.i.2, %i.ao
  br i1 %.not.i.i.2, label %.loopexit.i.i.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.d, align 4, !tbaa !17
  br label %dav1d_get_bits.exit.2

.loopexit.i.i.2:                                  ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted.i.i.2, i64 1
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !14
  %i.aq = load i8, ptr %.promoted.i.i.2, align 1, !tbaa !18
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
  store i32 %i.az, ptr %i.a, align 8, !tbaa !16
  %i.ba = shl i64 %i.ax, 8                        ; 4 uses
  store i64 %i.ba, ptr %0, align 8, !tbaa !19
  %i.bb = lshr i64 %i.ax, 42
  %i.bc = and i64 %i.bb, 2080768
  %i.bd = or disjoint i64 %i.bc, %i.al            ; 2 uses
  %i.be = icmp slt i64 %i.ax, 0
  br i1 %i.be, label %bb.j, label %bb.y

bb.j:                                             ; preds = %dav1d_get_bits.exit.2
  %i.bf = icmp ult i32 %i.az, 8
  br i1 %i.bf, label %bb.k, label %dav1d_get_bits.exit.3

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !15
  %.promoted.i.i.3 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.3 = icmp ult ptr %.promoted.i.i.3, %i.bg
  br i1 %.not.i.i.3, label %.loopexit.i.i.3, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.d, align 4, !tbaa !17
  br label %dav1d_get_bits.exit.3

.loopexit.i.i.3:                                  ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.promoted.i.i.3, i64 1
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !14
  %i.bi = load i8, ptr %.promoted.i.i.3, align 1, !tbaa !18
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
  store i32 %i.br, ptr %i.a, align 8, !tbaa !16
  %i.bs = shl i64 %i.bp, 8                        ; 4 uses
  store i64 %i.bs, ptr %0, align 8, !tbaa !19
  %i.bt = lshr i64 %i.bp, 35
  %i.bu = and i64 %i.bt, 266338304
  %i.bv = or disjoint i64 %i.bu, %i.bd            ; 2 uses
  %i.bw = icmp slt i64 %i.bp, 0
  br i1 %i.bw, label %bb.m, label %bb.y

bb.m:                                             ; preds = %dav1d_get_bits.exit.3
  %i.bx = icmp ult i32 %i.br, 8
  br i1 %i.bx, label %bb.n, label %dav1d_get_bits.exit.4

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !15
  %.promoted.i.i.4 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.4 = icmp ult ptr %.promoted.i.i.4, %i.by
  br i1 %.not.i.i.4, label %.loopexit.i.i.4, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.d, align 4, !tbaa !17
  br label %dav1d_get_bits.exit.4

.loopexit.i.i.4:                                  ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %.promoted.i.i.4, i64 1
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !14
  %i.ca = load i8, ptr %.promoted.i.i.4, align 1, !tbaa !18
  %i.cb = or disjoint i32 %i.br, 8
  %i.cc = zext i8 %i.ca to i64
  %i.cd = sub nuw nsw i32 64, %i.bq
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw i64 %i.cc, %i.ce
  %i.cg = or i64 %i.cf, %i.bs
end_hunk_0
