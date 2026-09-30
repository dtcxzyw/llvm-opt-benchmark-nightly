Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/getbits?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dav1d_get_bit:bb.a
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 5 uses
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %refill.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.c, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %.not.i34 = icmp ult ptr %.promoted.i, %i.h
  br i1 %.not.i34, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp ult ptr %i.m, %i.h
  br i1 %.not.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.lcssa = phi i32 [ %i.c, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %.0.i.lcssa = phi i32 [ 0, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !16
  %.not14.i = icmp eq i32 %.0.i.lcssa, 0
  br i1 %.not14.i, label %refill.exit, label %.loopexit.i

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0.i35 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]
  %i.j = phi ptr [ %i.m, %bb.c ], [ %.promoted.i, %bb.b ] ; 2 uses
  %i.k = phi i32 [ %i.q, %bb.c ], [ %i.c, %bb.b ]
  %i.l = shl i32 %.0.i35, 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !13
  %i.n = load i8, ptr %i.j, align 1, !tbaa !17
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o               ; 3 uses
  %i.q = add nuw nsw i32 %i.k, 8                  ; 5 uses
  store i32 %i.q, ptr %i.b, align 8, !tbaa !15
  %i.r = icmp samesign ugt i32 %1, %i.q
  br i1 %i.r, label %bb.c, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph, %._crit_edge
  %i.s = phi i32 [ %.lcssa, %._crit_edge ], [ %i.q, %.lr.ph ] ; 2 uses
  %.1.i = phi i32 [ %.0.i.lcssa, %._crit_edge ], [ %i.p, %.lr.ph ]
  %i.t = zext i32 %.1.i to i64
  %i.u = sub nuw nsw i32 64, %i.s
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %i.t, %i.v
  %i.x = load i64, ptr %0, align 8, !tbaa !18
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %0, align 8, !tbaa !18
  br label %refill.exit

refill.exit:                                      ; preds = %.loopexit.i, %._crit_edge, %bb.a
  %i.z = phi i32 [ %i.s, %.loopexit.i ], [ %.lcssa, %._crit_edge ], [ %i.c, %bb.a ]
  %i.aa = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ab = sub nsw i32 %i.z, %1
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !15
  %i.ac = zext nneg i32 %1 to i64
  %i.ad = shl i64 %i.aa, %i.ac
  store i64 %i.ad, ptr %0, align 8, !tbaa !18
  %i.ae = sub nuw nsw i32 64, %1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.aa, %i.af
  %i.ah = trunc nuw i64 %i.ag to i32
  ret i32 %i.ah
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i32 @dav1d_get_sbits(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %1, -1
  %or.cond = icmp ult i32 %i.a, 32
  tail call void @llvm.assume(i1 %or.cond)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 5 uses
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %refill.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.c, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %.not.i34 = icmp ult ptr %.promoted.i, %i.h
  br i1 %.not.i34, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp ult ptr %i.m, %i.h
  br i1 %.not.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.lcssa = phi i32 [ %i.c, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %.0.i.lcssa = phi i32 [ 0, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !16
  %.not14.i = icmp eq i32 %.0.i.lcssa, 0
  br i1 %.not14.i, label %refill.exit, label %.loopexit.i

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0.i35 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]
  %i.j = phi ptr [ %i.m, %bb.c ], [ %.promoted.i, %bb.b ] ; 2 uses
  %i.k = phi i32 [ %i.q, %bb.c ], [ %i.c, %bb.b ]
  %i.l = shl i32 %.0.i35, 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !13
  %i.n = load i8, ptr %i.j, align 1, !tbaa !17
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o               ; 3 uses
  %i.q = add nuw nsw i32 %i.k, 8                  ; 5 uses
  store i32 %i.q, ptr %i.b, align 8, !tbaa !15
  %i.r = icmp samesign ugt i32 %1, %i.q
  br i1 %i.r, label %bb.c, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph, %._crit_edge
  %i.s = phi i32 [ %.lcssa, %._crit_edge ], [ %i.q, %.lr.ph ] ; 2 uses
  %.1.i = phi i32 [ %.0.i.lcssa, %._crit_edge ], [ %i.p, %.lr.ph ]
  %i.t = zext i32 %.1.i to i64
  %i.u = sub nuw nsw i32 64, %i.s
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %i.t, %i.v
  %i.x = load i64, ptr %0, align 8, !tbaa !18
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %0, align 8, !tbaa !18
  br label %refill.exit

refill.exit:                                      ; preds = %.loopexit.i, %._crit_edge, %bb.a
  %i.z = phi i32 [ %i.s, %.loopexit.i ], [ %.lcssa, %._crit_edge ], [ %i.c, %bb.a ]
  %i.aa = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ab = sub nsw i32 %i.z, %1
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !15
  %i.ac = zext nneg i32 %1 to i64
  %i.ad = shl i64 %i.aa, %i.ac
  store i64 %i.ad, ptr %0, align 8, !tbaa !18
  %i.ae = sub nuw nsw i32 64, %1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = ashr i64 %i.aa, %i.af
  %i.ah = trunc nsw i64 %i.ag to i32
  ret i32 %i.ah
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
  %1 = or disjoint i32 %i.q, 8
  %i.z = zext i8 %i.y to i64
  %i.aa = sub nuw nsw i32 64, %i.p
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 %i.z, %i.ab
  %i.ad = or i64 %i.ac, %i.r
  br label %dav1d_get_bits.exit.1

dav1d_get_bits.exit.1:                            ; preds = %.loopexit.i.i.1, %bb.f, %bb.d
  %i.ae = phi i64 [ %i.ad, %.loopexit.i.i.1 ], [ %i.r, %bb.f ], [ %i.r, %bb.d ] ; 3 uses
  %i.af = phi i32 [ %1, %.loopexit.i.i.1 ], [ %i.q, %bb.f ], [ %i.q, %bb.d ] ; 2 uses
  %i.ag = add nsw i32 %i.af, -8                   ; 5 uses
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !15
  %i.ah = shl i64 %i.ae, 8                        ; 4 uses
  store i64 %i.ah, ptr %0, align 8, !tbaa !18
  %i.ai = lshr i64 %i.ae, 49
  %i.aj = and i64 %i.ai, 16256
  %i.ak = or disjoint i64 %i.aj, %i.t             ; 2 uses
  %i.al = icmp slt i64 %i.ae, 0
  br i1 %i.al, label %bb.g, label %bb.y

bb.g:                                             ; preds = %dav1d_get_bits.exit.1
  %i.am = icmp ult i32 %i.ag, 8
  br i1 %i.am, label %bb.h, label %dav1d_get_bits.exit.2

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.2 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.2 = icmp ult ptr %.promoted.i.i.2, %i.an
  br i1 %.not.i.i.2, label %.loopexit.i.i.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.2

.loopexit.i.i.2:                                  ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.promoted.i.i.2, i64 1
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !13
  %i.ap = load i8, ptr %.promoted.i.i.2, align 1, !tbaa !17
  %2 = or disjoint i32 %i.ag, 8
  %i.aq = zext i8 %i.ap to i64
  %i.ar = sub nuw nsw i32 64, %i.af
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 %i.aq, %i.as
  %i.au = or i64 %i.at, %i.ah
  br label %dav1d_get_bits.exit.2

dav1d_get_bits.exit.2:                            ; preds = %.loopexit.i.i.2, %bb.i, %bb.g
  %i.av = phi i64 [ %i.au, %.loopexit.i.i.2 ], [ %i.ah, %bb.i ], [ %i.ah, %bb.g ] ; 3 uses
  %i.aw = phi i32 [ %2, %.loopexit.i.i.2 ], [ %i.ag, %bb.i ], [ %i.ag, %bb.g ] ; 2 uses
  %i.ax = add nsw i32 %i.aw, -8                   ; 5 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !15
  %i.ay = shl i64 %i.av, 8                        ; 4 uses
  store i64 %i.ay, ptr %0, align 8, !tbaa !18
  %i.az = lshr i64 %i.av, 42
  %i.ba = and i64 %i.az, 2080768
  %i.bb = or disjoint i64 %i.ba, %i.ak            ; 2 uses
  %i.bc = icmp slt i64 %i.av, 0
  br i1 %i.bc, label %bb.j, label %bb.y

bb.j:                                             ; preds = %dav1d_get_bits.exit.2
  %i.bd = icmp ult i32 %i.ax, 8
  br i1 %i.bd, label %bb.k, label %dav1d_get_bits.exit.3

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.3 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.3 = icmp ult ptr %.promoted.i.i.3, %i.be
  br i1 %.not.i.i.3, label %.loopexit.i.i.3, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.3

.loopexit.i.i.3:                                  ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.promoted.i.i.3, i64 1
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !13
  %i.bg = load i8, ptr %.promoted.i.i.3, align 1, !tbaa !17
  %3 = or disjoint i32 %i.ax, 8
  %i.bh = zext i8 %i.bg to i64
  %i.bi = sub nuw nsw i32 64, %i.aw
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 %i.bh, %i.bj
  %i.bl = or i64 %i.bk, %i.ay
  br label %dav1d_get_bits.exit.3

dav1d_get_bits.exit.3:                            ; preds = %.loopexit.i.i.3, %bb.l, %bb.j
  %i.bm = phi i64 [ %i.bl, %.loopexit.i.i.3 ], [ %i.ay, %bb.l ], [ %i.ay, %bb.j ] ; 3 uses
  %i.bn = phi i32 [ %3, %.loopexit.i.i.3 ], [ %i.ax, %bb.l ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bo = add nsw i32 %i.bn, -8                   ; 5 uses
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !15
  %i.bp = shl i64 %i.bm, 8                        ; 4 uses
  store i64 %i.bp, ptr %0, align 8, !tbaa !18
  %i.bq = lshr i64 %i.bm, 35
  %i.br = and i64 %i.bq, 266338304
  %i.bs = or disjoint i64 %i.br, %i.bb            ; 2 uses
  %i.bt = icmp slt i64 %i.bm, 0
  br i1 %i.bt, label %bb.m, label %bb.y

bb.m:                                             ; preds = %dav1d_get_bits.exit.3
  %i.bu = icmp ult i32 %i.bo, 8
  br i1 %i.bu, label %bb.n, label %dav1d_get_bits.exit.4

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.4 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.4 = icmp ult ptr %.promoted.i.i.4, %i.bv
  br i1 %.not.i.i.4, label %.loopexit.i.i.4, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.4

.loopexit.i.i.4:                                  ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.4, i64 1
  store ptr %i.bw, ptr %i.b, align 8, !tbaa !13
  %i.bx = load i8, ptr %.promoted.i.i.4, align 1, !tbaa !17
  %4 = or disjoint i32 %i.bo, 8
  %i.by = zext i8 %i.bx to i64
  %i.bz = sub nuw nsw i32 64, %i.bn
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw i64 %i.by, %i.ca
  %i.cc = or i64 %i.cb, %i.bp
  br label %dav1d_get_bits.exit.4

dav1d_get_bits.exit.4:                            ; preds = %.loopexit.i.i.4, %bb.o, %bb.m
  %i.cd = phi i64 [ %i.cc, %.loopexit.i.i.4 ], [ %i.bp, %bb.o ], [ %i.bp, %bb.m ] ; 3 uses
  %i.ce = phi i32 [ %4, %.loopexit.i.i.4 ], [ %i.bo, %bb.o ], [ %i.bo, %bb.m ] ; 2 uses
  %i.cf = add nsw i32 %i.ce, -8                   ; 5 uses
  store i32 %i.cf, ptr %i.a, align 8, !tbaa !15
  %i.cg = shl i64 %i.cd, 8                        ; 4 uses
  store i64 %i.cg, ptr %0, align 8, !tbaa !18
  %i.ch = lshr i64 %i.cd, 28
  %i.ci = and i64 %i.ch, 34091302912
  %i.cj = or disjoint i64 %i.ci, %i.bs            ; 2 uses
  %i.ck = icmp slt i64 %i.cd, 0
  br i1 %i.ck, label %bb.p, label %bb.y

bb.p:                                             ; preds = %dav1d_get_bits.exit.4
  %i.cl = icmp ult i32 %i.cf, 8
  br i1 %i.cl, label %bb.q, label %dav1d_get_bits.exit.5

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.5 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.5 = icmp ult ptr %.promoted.i.i.5, %i.cm
  br i1 %.not.i.i.5, label %.loopexit.i.i.5, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.5

.loopexit.i.i.5:                                  ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %.promoted.i.i.5, i64 1
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !13
  %i.co = load i8, ptr %.promoted.i.i.5, align 1, !tbaa !17
  %5 = or disjoint i32 %i.cf, 8
  %i.cp = zext i8 %i.co to i64
  %i.cq = sub nuw nsw i32 64, %i.ce
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw i64 %i.cp, %i.cr
  %i.ct = or i64 %i.cs, %i.cg
  br label %dav1d_get_bits.exit.5

dav1d_get_bits.exit.5:                            ; preds = %.loopexit.i.i.5, %bb.r, %bb.p
  %i.cu = phi i64 [ %i.ct, %.loopexit.i.i.5 ], [ %i.cg, %bb.r ], [ %i.cg, %bb.p ] ; 3 uses
  %i.cv = phi i32 [ %5, %.loopexit.i.i.5 ], [ %i.cf, %bb.r ], [ %i.cf, %bb.p ] ; 2 uses
  %i.cw = add nsw i32 %i.cv, -8                   ; 5 uses
  store i32 %i.cw, ptr %i.a, align 8, !tbaa !15
  %i.cx = shl i64 %i.cu, 8                        ; 4 uses
  store i64 %i.cx, ptr %0, align 8, !tbaa !18
  %i.cy = lshr i64 %i.cu, 21
  %i.cz = and i64 %i.cy, 4363686772736
  %i.da = or disjoint i64 %i.cz, %i.cj            ; 2 uses
  %i.db = icmp slt i64 %i.cu, 0
  br i1 %i.db, label %bb.s, label %bb.y

bb.s:                                             ; preds = %dav1d_get_bits.exit.5
  %i.dc = icmp ult i32 %i.cw, 8
  br i1 %i.dc, label %bb.t, label %dav1d_get_bits.exit.6

bb.t:                                             ; preds = %bb.s
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.6 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.6 = icmp ult ptr %.promoted.i.i.6, %i.dd
  br i1 %.not.i.i.6, label %.loopexit.i.i.6, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.6

.loopexit.i.i.6:                                  ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %.promoted.i.i.6, i64 1
  store ptr %i.de, ptr %i.b, align 8, !tbaa !13
  %i.df = load i8, ptr %.promoted.i.i.6, align 1, !tbaa !17
  %6 = or disjoint i32 %i.cw, 8
  %i.dg = zext i8 %i.df to i64
  %i.dh = sub nuw nsw i32 64, %i.cv
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw i64 %i.dg, %i.di
  %i.dk = or i64 %i.dj, %i.cx
  br label %dav1d_get_bits.exit.6

dav1d_get_bits.exit.6:                            ; preds = %.loopexit.i.i.6, %bb.u, %bb.s
  %i.dl = phi i64 [ %i.dk, %.loopexit.i.i.6 ], [ %i.cx, %bb.u ], [ %i.cx, %bb.s ] ; 3 uses
  %i.dm = phi i32 [ %6, %.loopexit.i.i.6 ], [ %i.cw, %bb.u ], [ %i.cw, %bb.s ] ; 2 uses
  %i.dn = add nsw i32 %i.dm, -8                   ; 5 uses
  store i32 %i.dn, ptr %i.a, align 8, !tbaa !15
  %i.do = shl i64 %i.dl, 8                        ; 4 uses
  store i64 %i.do, ptr %0, align 8, !tbaa !18
  %i.dp = lshr i64 %i.dl, 14
  %i.dq = and i64 %i.dp, 558551906910208
  %i.dr = or i64 %i.dq, %i.da                     ; 2 uses
  %i.ds = icmp slt i64 %i.dl, 0
  br i1 %i.ds, label %bb.v, label %bb.y

bb.v:                                             ; preds = %dav1d_get_bits.exit.6
  %i.dt = icmp ult i32 %i.dn, 8
  br i1 %i.dt, label %bb.w, label %dav1d_get_bits.exit.7

bb.w:                                             ; preds = %bb.v
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !14
  %.promoted.i.i.7 = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.7 = icmp ult ptr %.promoted.i.i.7, %i.du
  br i1 %.not.i.i.7, label %.loopexit.i.i.7, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %dav1d_get_bits.exit.7

.loopexit.i.i.7:                                  ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %.promoted.i.i.7, i64 1
  store ptr %i.dv, ptr %i.b, align 8, !tbaa !13
  %i.dw = load i8, ptr %.promoted.i.i.7, align 1, !tbaa !17
  %7 = or disjoint i32 %i.dn, 8
  %i.dx = zext i8 %i.dw to i64
  %i.dy = sub nuw nsw i32 64, %i.dm
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 %i.dx, %i.dz
  %i.eb = or i64 %i.ea, %i.do
  br label %dav1d_get_bits.exit.7

dav1d_get_bits.exit.7:                            ; preds = %.loopexit.i.i.7, %bb.x, %bb.v
  %i.ec = phi i64 [ %i.eb, %.loopexit.i.i.7 ], [ %i.do, %bb.x ], [ %i.do, %bb.v ] ; 3 uses
  %i.ed = phi i32 [ %7, %.loopexit.i.i.7 ], [ %i.dn, %bb.x ], [ %i.dn, %bb.v ]
  %i.ee = add nsw i32 %i.ed, -8
  store i32 %i.ee, ptr %i.a, align 8, !tbaa !15
  %i.ef = shl i64 %i.ec, 8
  store i64 %i.ef, ptr %0, align 8, !tbaa !18
  %i.eg = lshr i64 %i.ec, 7
  %i.eh = and i64 %i.eg, 71494644084506624
  %i.ei = or i64 %i.eh, %i.dr
  %i.ej = icmp slt i64 %i.ec, 0
  br label %bb.y

bb.y:                                             ; preds = %dav1d_get_bits.exit.7, %dav1d_get_bits.exit.6, %dav1d_get_bits.exit.5, %dav1d_get_bits.exit.4, %dav1d_get_bits.exit.3, %dav1d_get_bits.exit.2, %dav1d_get_bits.exit.1, %dav1d_get_bits.exit
  %.lcssa24 = phi i64 [ %i.t, %dav1d_get_bits.exit ], [ %i.ak, %dav1d_get_bits.exit.1 ], [ %i.bb, %dav1d_get_bits.exit.2 ], [ %i.bs, %dav1d_get_bits.exit.3 ], [ %i.cj, %dav1d_get_bits.exit.4 ], [ %i.da, %dav1d_get_bits.exit.5 ], [ %i.dr, %dav1d_get_bits.exit.6 ], [ %i.ei, %dav1d_get_bits.exit.7 ] ; 2 uses
  %.lcssa = phi i1 [ false, %dav1d_get_bits.exit ], [ false, %dav1d_get_bits.exit.1 ], [ false, %dav1d_get_bits.exit.2 ], [ false, %dav1d_get_bits.exit.3 ], [ false, %dav1d_get_bits.exit.4 ], [ false, %dav1d_get_bits.exit.5 ], [ false, %dav1d_get_bits.exit.6 ], [ %i.ej, %dav1d_get_bits.exit.7 ]
  %i.ek = icmp ugt i64 %.lcssa24, 4294967295
  %or.cond = or i1 %.lcssa, %i.ek
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.d, align 4, !tbaa !16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.el = trunc nuw i64 %.lcssa24 to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi i32 [ 0, %bb.z ], [ %i.el, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i32 @dav1d_get_uniform(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %1, 1
  tail call void @llvm.assume(i1 %i.a)
  %i.b = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %i.c = xor i32 %i.b, 31                         ; 10 uses
  %i.d = shl nuw i32 2, %i.c
  %i.e = sub i32 %i.d, %1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15   ; 8 uses
  %i.h = icmp ugt i32 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %dav1d_get_bits.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 5 uses
  %.promoted.i.i = load ptr, ptr %i.i, align 8, !tbaa !13 ; 7 uses
  %.not.i.i = icmp ult ptr %.promoted.i.i, %i.k
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.b
  %.lcssa = phi i32 [ %i.g, %bb.b ], [ %i.p, %bb.e ], [ %i.w, %bb.g ], [ %i.ad, %bb.i ], [ %i.ak, %bb.k ] ; 2 uses
  %.0.i.i.lcssa = phi i32 [ 0, %bb.b ], [ %i.o, %bb.e ], [ %i.v, %bb.g ], [ %i.ac, %bb.i ], [ %i.aj, %bb.k ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !16
  %.not14.i.i = icmp eq i32 %.0.i.i.lcssa, 0
  br i1 %.not14.i.i, label %dav1d_get_bits.exit, label %.loopexit.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 1 ; 3 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !13
  %i.n = load i8, ptr %.promoted.i.i, align 1, !tbaa !17
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = add nuw nsw i32 %i.g, 8                  ; 4 uses
  store i32 %i.p, ptr %i.f, align 8, !tbaa !15
  %i.q = icmp samesign ugt i32 %i.c, %i.p
  br i1 %i.q, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.1 = icmp ult ptr %i.m, %i.k
  br i1 %.not.i.i.1, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i32 %i.o, 8
  %i.s = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 2 ; 3 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !13
  %i.t = load i8, ptr %i.m, align 1, !tbaa !17
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u               ; 3 uses
  %i.w = add nuw nsw i32 %i.g, 16                 ; 4 uses
  store i32 %i.w, ptr %i.f, align 8, !tbaa !15
  %i.x = icmp samesign ugt i32 %i.c, %i.w
  br i1 %i.x, label %bb.g, label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i.2 = icmp ult ptr %i.s, %i.k
  br i1 %.not.i.i.2, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.y = shl nuw nsw i32 %i.v, 8
  %i.z = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 3 ; 3 uses
  store ptr %i.z, ptr %i.i, align 8, !tbaa !13
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !17
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab             ; 3 uses
  %i.ad = add nuw nsw i32 %i.g, 24                ; 4 uses
  store i32 %i.ad, ptr %i.f, align 8, !tbaa !15
  %i.ae = icmp samesign ugt i32 %i.c, %i.ad
  br i1 %i.ae, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.3 = icmp ult ptr %i.z, %i.k
  br i1 %.not.i.i.3, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.af = shl nuw i32 %i.ac, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 4 ; 3 uses
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !13
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 3 uses
  %i.ak = add nuw nsw i32 %i.g, 32                ; 4 uses
  store i32 %i.ak, ptr %i.f, align 8, !tbaa !15
  %i.al = icmp samesign ugt i32 %i.c, %i.ak
  br i1 %i.al, label %bb.k, label %.loopexit.i.i

bb.k:                                             ; preds = %bb.j
  %.not.i.i.4 = icmp ult ptr %i.ag, %i.k
  br i1 %.not.i.i.4, label %bb.l, label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.am = shl i32 %i.aj, 8
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 5
  store ptr %i.an, ptr %i.i, align 8, !tbaa !13
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.am, %i.ap
  %i.ar = add nuw nsw i32 %i.g, 40                ; 2 uses
  store i32 %i.ar, ptr %i.f, align 8, !tbaa !15
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.c
  %i.as = phi i32 [ %.lcssa, %bb.c ], [ %i.p, %bb.d ], [ %i.w, %bb.f ], [ %i.ad, %bb.h ], [ %i.ak, %bb.j ], [ %i.ar, %bb.l ] ; 2 uses
  %.1.i.i = phi i32 [ %.0.i.i.lcssa, %bb.c ], [ %i.o, %bb.d ], [ %i.v, %bb.f ], [ %i.ac, %bb.h ], [ %i.aj, %bb.j ], [ %i.aq, %bb.l ]
  %i.at = zext i32 %.1.i.i to i64
  %i.au = sub nuw nsw i32 64, %i.as
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i64, ptr %0, align 8, !tbaa !18
  %i.ay = or i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %0, align 8, !tbaa !18
  br label %dav1d_get_bits.exit

dav1d_get_bits.exit:                              ; preds = %bb.a, %bb.c, %.loopexit.i.i
  %i.az = phi i32 [ %i.as, %.loopexit.i.i ], [ %.lcssa, %bb.c ], [ %i.g, %bb.a ] ; 2 uses
  %i.ba = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.bb = sub nsw i32 %i.az, %i.c                 ; 2 uses
  store i32 %i.bb, ptr %i.f, align 8, !tbaa !15
  %i.bc = zext nneg i32 %i.c to i64
  %i.bd = shl i64 %i.ba, %i.bc                    ; 3 uses
  store i64 %i.bd, ptr %0, align 8, !tbaa !18
  %i.be = sub nuw nsw i32 64, %i.c
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %i.ba, %i.bf
  %i.bh = trunc nuw nsw i64 %i.bg to i32          ; 3 uses
  %i.bi = icmp ugt i32 %i.e, %i.bh
  br i1 %i.bi, label %bb.r, label %bb.m

bb.m:                                             ; preds = %dav1d_get_bits.exit
  %i.bj = shl nuw i32 %i.bh, 1
  %i.bk = sub i32 %i.bj, %i.e
  %.not.i = icmp eq i32 %i.az, %i.c
  br i1 %.not.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !14
  %.not15.i = icmp ult ptr %i.bm, %i.bo
  br i1 %.not15.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.bp, align 4, !tbaa !16
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !13
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !17  ; 2 uses
  store i32 7, ptr %i.f, align 8, !tbaa !15
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl i64 %i.bs, 57
  store i64 %i.bt, ptr %0, align 8, !tbaa !18
  %i.bu = lshr i8 %i.br, 7
  %i.bv = zext nneg i8 %i.bu to i32
  br label %dav1d_get_bit.exit

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.bw = add nsw i32 %i.bb, -1
  store i32 %i.bw, ptr %i.f, align 8, !tbaa !15
  %i.bx = shl i64 %i.bd, 1
  store i64 %i.bx, ptr %0, align 8, !tbaa !18
  %i.by = lshr i64 %i.bd, 63
  %i.bz = trunc nuw nsw i64 %i.by to i32
  br label %dav1d_get_bit.exit

end_hunk_0
