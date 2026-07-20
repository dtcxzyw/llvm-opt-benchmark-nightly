inline.NumInlined: 101
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dalloc_done:bb.a
.lr.ph.2:                                         ; preds = %._crit_edge.1, %bb.h
  %.019.2 = phi ptr [ %i.q, %bb.h ], [ %i.p, %._crit_edge.1 ] ; 4 uses
  %i.q = load ptr, ptr %.019.2, align 8, !tbaa !15 ; 2 uses
  %.not17.2 = icmp uge ptr %.019.2, %i.c
  %i.r = icmp ult ptr %.019.2, %i.f
  %or.cond.2 = select i1 %.not17.2, i1 %i.r, i1 false
  br i1 %or.cond.2, label %bb.h, label %bb.g, !llvm.loop !17

bb.g:                                             ; preds = %.lr.ph.2
  tail call void @free(ptr noundef nonnull %.019.2) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.2
  %.not16.2 = icmp eq ptr %i.q, null
  br i1 %.not16.2, label %._crit_edge.2, label %.lr.ph.2

._crit_edge.2:                                    ; preds = %bb.h, %._crit_edge.1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %.not1618.3 = icmp eq ptr %i.t, null
  br i1 %.not1618.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2, %bb.j
  %.019.3 = phi ptr [ %i.u, %bb.j ], [ %i.t, %._crit_edge.2 ] ; 4 uses
  %i.u = load ptr, ptr %.019.3, align 8, !tbaa !15 ; 2 uses
  %.not17.3 = icmp uge ptr %.019.3, %i.c
  %i.v = icmp ult ptr %.019.3, %i.f
  %or.cond.3 = select i1 %.not17.3, i1 %i.v, i1 false
  br i1 %or.cond.3, label %bb.j, label %bb.i, !llvm.loop !17

bb.i:                                             ; preds = %.lr.ph.3
  tail call void @free(ptr noundef nonnull %.019.3) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.3
  %.not16.3 = icmp eq ptr %i.u, null
  br i1 %.not16.3, label %._crit_edge.3, label %.lr.ph.3

._crit_edge.3:                                    ; preds = %bb.j, %._crit_edge.2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %.not1618.4 = icmp eq ptr %i.x, null
  br i1 %.not1618.4, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3, %bb.l
  %.019.4 = phi ptr [ %i.y, %bb.l ], [ %i.x, %._crit_edge.3 ] ; 4 uses
  %i.y = load ptr, ptr %.019.4, align 8, !tbaa !15 ; 2 uses
  %.not17.4 = icmp uge ptr %.019.4, %i.c
  %i.z = icmp ult ptr %.019.4, %i.f
  %or.cond.4 = select i1 %.not17.4, i1 %i.z, i1 false
  br i1 %or.cond.4, label %bb.l, label %bb.k, !llvm.loop !17

bb.k:                                             ; preds = %.lr.ph.4
  tail call void @free(ptr noundef nonnull %.019.4) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.4
  %.not16.4 = icmp eq ptr %i.y, null
  br i1 %.not16.4, label %._crit_edge.4, label %.lr.ph.4

._crit_edge.4:                                    ; preds = %bb.l, %._crit_edge.3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %.not1618.5 = icmp eq ptr %i.ab, null
  br i1 %.not1618.5, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %._crit_edge.4, %bb.n
  %.019.5 = phi ptr [ %i.ac, %bb.n ], [ %i.ab, %._crit_edge.4 ] ; 4 uses
  %i.ac = load ptr, ptr %.019.5, align 8, !tbaa !15 ; 2 uses
  %.not17.5 = icmp uge ptr %.019.5, %i.c
  %i.ad = icmp ult ptr %.019.5, %i.f
  %or.cond.5 = select i1 %.not17.5, i1 %i.ad, i1 false
  br i1 %or.cond.5, label %bb.n, label %bb.m, !llvm.loop !17

bb.m:                                             ; preds = %.lr.ph.5
  tail call void @free(ptr noundef nonnull %.019.5) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.5
  %.not16.5 = icmp eq ptr %i.ac, null
  br i1 %.not16.5, label %._crit_edge.5, label %.lr.ph.5

._crit_edge.5:                                    ; preds = %bb.n, %._crit_edge.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %.not1618.6 = icmp eq ptr %i.af, null
  br i1 %.not1618.6, label %._crit_edge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %._crit_edge.5, %bb.p
  %.019.6 = phi ptr [ %i.ag, %bb.p ], [ %i.af, %._crit_edge.5 ] ; 4 uses
  %i.ag = load ptr, ptr %.019.6, align 8, !tbaa !15 ; 2 uses
  %.not17.6 = icmp uge ptr %.019.6, %i.c
  %i.ah = icmp ult ptr %.019.6, %i.f
  %or.cond.6 = select i1 %.not17.6, i1 %i.ah, i1 false
  br i1 %or.cond.6, label %bb.p, label %bb.o, !llvm.loop !17

bb.o:                                             ; preds = %.lr.ph.6
  tail call void @free(ptr noundef nonnull %.019.6) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.6
  %.not16.6 = icmp eq ptr %i.ag, null
  br i1 %.not16.6, label %._crit_edge.6, label %.lr.ph.6

._crit_edge.6:                                    ; preds = %bb.p, %._crit_edge.5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %.not1618.7 = icmp eq ptr %i.aj, null
  br i1 %.not1618.7, label %.loopexit, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %._crit_edge.6, %bb.r
  %.019.7 = phi ptr [ %i.ak, %bb.r ], [ %i.aj, %._crit_edge.6 ] ; 4 uses
  %i.ak = load ptr, ptr %.019.7, align 8, !tbaa !15 ; 2 uses
  %.not17.7 = icmp uge ptr %.019.7, %i.c
  %i.al = icmp ult ptr %.019.7, %i.f
  %or.cond.7 = select i1 %.not17.7, i1 %i.al, i1 false
  br i1 %or.cond.7, label %bb.r, label %bb.q, !llvm.loop !17

bb.q:                                             ; preds = %.lr.ph.7
  tail call void @free(ptr noundef nonnull %.019.7) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.7
  %.not16.7 = icmp eq ptr %i.ak, null
  br i1 %.not16.7, label %.loopexit, label %.lr.ph.7

.loopexit:                                        ; preds = %bb.r, %._crit_edge.6, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden double @hermes_g_strtod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %2 = alloca %union.U, align 8                   ; 56 uses
  %3 = alloca %struct.anon, align 8               ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  store i32 288, ptr %3, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0451.i = phi ptr [ %0, %bb.a ], [ %i.l, %bb.c ] ; 4 uses
  %i.i = load i8, ptr %.0451.i, align 1, !tbaa !19 ; 2 uses
  switch i8 %i.i, label %.loopexit752.i [
    i8 45, label %.loopexit753.i.loopexit
    i8 43, label %.loopexit753.i
    i8 0, label %.loopexit751.i
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

.loopexit753.i.loopexit:                          ; preds = %bb.b
  br label %.loopexit753.i

.loopexit753.i:                                   ; preds = %bb.b, %.loopexit753.i.loopexit
  %.0463.i = phi i32 [ 1, %.loopexit753.i.loopexit ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0451.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19    ; 2 uses
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %.loopexit751.i, label %.loopexit752.i

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0451.i, i64 1
  br label %bb.b

.loopexit752.i:                                   ; preds = %bb.b, %.loopexit753.i
  %i.m = phi i8 [ %i.k, %.loopexit753.i ], [ %i.i, %bb.b ] ; 2 uses
  %.1464.i = phi i32 [ %.0463.i, %.loopexit753.i ], [ 0, %bb.b ] ; 10 uses
  %.1452.i = phi ptr [ %i.j, %.loopexit753.i ], [ %.0451.i, %bb.b ] ; 2 uses
  %i.n = icmp eq i8 %i.m, 48                      ; 3 uses
  br i1 %i.n, label %.preheader749.i, label %.loopexit750.i

.preheader749.i:                                  ; preds = %.loopexit752.i, %.preheader749.i
  %.2453.i = phi ptr [ %i.o, %.preheader749.i ], [ %.1452.i, %.loopexit752.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.2453.i, i64 1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  switch i8 %i.p, label %.loopexit750.i [
    i8 48, label %.preheader749.i
    i8 0, label %.loopexit751.i
  ]

.loopexit750.i:                                   ; preds = %.preheader749.i, %.loopexit752.i
  %i.q = phi i8 [ %i.m, %.loopexit752.i ], [ %i.p, %.preheader749.i ] ; 3 uses
  %.3454.i = phi ptr [ %.1452.i, %.loopexit752.i ], [ %i.o, %.preheader749.i ] ; 11 uses
  %i.r = sext i8 %i.q to i32                      ; 2 uses
  %i.s = add i8 %i.q, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph.i, label %.critedge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit750.i, %bb.g
  %i.u = phi i32 [ %i.ag, %bb.g ], [ %i.r, %.loopexit750.i ] ; 2 uses
  %.0422878.i = phi i32 [ %.1423.i, %bb.g ], [ 0, %.loopexit750.i ] ; 3 uses
  %.0428877.i = phi i32 [ %.1429.i, %bb.g ], [ 0, %.loopexit750.i ] ; 3 uses
  %.4455876.i = phi ptr [ %i.ae, %bb.g ], [ %.3454.i, %.loopexit750.i ] ; 2 uses
  %.0484875.i = phi i32 [ %i.ad, %bb.g ], [ 0, %.loopexit750.i ] ; 3 uses
  %i.v = icmp samesign ult i32 %.0484875.i, 9
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = mul i32 %.0428877.i, 10
  %i.x = add nsw i32 %i.u, -48
  %i.y = add i32 %i.x, %i.w
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = icmp samesign ult i32 %.0484875.i, 17
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = mul i32 %.0422878.i, 10
  %i.ab = add nsw i32 %i.u, -48
  %i.ac = add i32 %i.ab, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1429.i = phi i32 [ %i.y, %bb.d ], [ %.0428877.i, %bb.f ], [ %.0428877.i, %bb.e ] ; 3 uses
  %.1423.i = phi i32 [ %.0422878.i, %bb.d ], [ %i.ac, %bb.f ], [ %.0422878.i, %bb.e ] ; 3 uses
  %i.ad = add nuw nsw i32 %.0484875.i, 1          ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.4455876.i, i64 1 ; 6 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19  ; 3 uses
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = add i8 %i.af, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.g
  %.pre1075.i = ptrtoint ptr %i.ae to i64         ; 2 uses
  %4 = ptrtoint ptr %.3454.i to i64               ; 3 uses
  %i.aj = sub i64 %.pre1075.i, %4
  %i.ak = trunc i64 %i.aj to i32                  ; 4 uses
  %i.al = icmp ugt ptr %i.ae, %.3454.i
  br i1 %i.al, label %.lr.ph887.preheader.i, label %.critedge.i

.lr.ph887.preheader.i:                            ; preds = %._crit_edge.i
  %i.am = trunc i64 %.pre1075.i to i32
  %i.an = trunc i64 %4 to i32
  %i.ao = sub i32 %i.am, %i.an
  br label %.lr.ph887.i

.lr.ph887.i:                                      ; preds = %bb.h, %.lr.ph887.preheader.i
  %.0447885.i = phi ptr [ %i.ap, %bb.h ], [ %i.ae, %.lr.ph887.preheader.i ]
  %.0466884.i = phi i32 [ %i.as, %bb.h ], [ 0, %.lr.ph887.preheader.i ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.0447885.i, i64 -1 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = icmp eq i8 %i.aq, 48
  br i1 %i.ar, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph887.i
  %i.as = add nuw nsw i32 %.0466884.i, 1
  %i.at = icmp ugt ptr %i.ap, %.3454.i
  br i1 %i.at, label %.lr.ph887.i, label %.critedge.i, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.h, %.lr.ph887.i, %._crit_edge.i
  %.0466.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ %i.ao, %bb.h ], [ %.0466884.i, %.lr.ph887.i ] ; 2 uses
  %i.au = icmp eq i8 %i.af, 46
  br i1 %i.au, label %bb.i, label %bb.q

.critedge.thread.i:                               ; preds = %.loopexit750.i
  %5 = ptrtoint ptr %.3454.i to i64
  %i.av = icmp eq i8 %i.q, 46
  br i1 %i.av, label %.preheader748.i, label %bb.q

bb.i:                                             ; preds = %.critedge.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.4455876.i, i64 2 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %4
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = sub nsw i32 %i.az, %i.ak
  br label %bb.j

.preheader748.i:                                  ; preds = %.critedge.thread.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.3454.i, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 48
  br i1 %i.bd, label %.lr.ph893.i, label %._crit_edge894.i

.lr.ph893.i:                                      ; preds = %.preheader748.i, %.lr.ph893.i
  %.5456892.i = phi ptr [ %i.bf, %.lr.ph893.i ], [ %i.bb, %.preheader748.i ]
  %.0472891.i = phi i32 [ %i.be, %.lr.ph893.i ], [ 0, %.preheader748.i ]
  %i.be = add nuw nsw i32 %.0472891.i, 1          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.5456892.i, i64 1 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 48
  br i1 %i.bh, label %.lr.ph893.i, label %._crit_edge894.i, !llvm.loop !22

._crit_edge894.i:                                 ; preds = %.lr.ph893.i, %.preheader748.i
  %.0512.lcssa.in.i = phi i8 [ %i.bc, %.preheader748.i ], [ %i.bg, %.lr.ph893.i ]
  %.0472.lcssa.i = phi i32 [ 0, %.preheader748.i ], [ %i.be, %.lr.ph893.i ] ; 2 uses
  %.5456.lcssa.i = phi ptr [ %i.bb, %.preheader748.i ], [ %i.bf, %.lr.ph893.i ] ; 4 uses
  %.0512.lcssa.i = sext i8 %.0512.lcssa.in.i to i32 ; 3 uses
  %i.bi = add nsw i32 %.0512.lcssa.i, -49
  %or.cond.i = icmp ult i32 %i.bi, 9
  br i1 %or.cond.i, label %._crit_edge905.i.thread, label %bb.q

bb.j:                                             ; preds = %bb.p, %bb.i
  %i.bj = phi i32 [ %i.cx, %bb.p ], [ %i.ba, %bb.i ] ; 5 uses
  %.0484.lcssa116211791190.i = phi i32 [ %.0484.lcssa116211791189.i17, %bb.p ], [ %i.ad, %bb.i ] ; 5 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i19, %bb.p ], [ %i.az, %bb.i ] ; 5 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i21, %bb.p ], [ %i.ak, %bb.i ] ; 5 uses
  %.1485.i = phi i32 [ %.4488.i, %bb.p ], [ %i.ad, %bb.i ] ; 6 uses
  %.0477.i = phi i32 [ %.2479.i, %bb.p ], [ 0, %bb.i ] ; 3 uses
  %.1473.i = phi i32 [ %.3475.i, %bb.p ], [ 0, %bb.i ] ; 8 uses
  %.1467.i = phi i32 [ %.3469.i, %bb.p ], [ %.0466.lcssa.i, %bb.i ] ; 2 uses
  %.6457.i = phi ptr [ %i.cy, %bb.p ], [ %i.aw, %bb.i ] ; 6 uses
  %.0448.i = phi ptr [ %.1449.i28, %bb.p ], [ %.3454.i, %bb.i ] ; 5 uses
  %.2430.i = phi i32 [ %.7435.i, %bb.p ], [ %.1429.i, %bb.i ] ; 5 uses
  %.2424.i = phi i32 [ %.7.i, %bb.p ], [ %.1423.i, %bb.i ] ; 5 uses
  %.1513.in.i = load i8, ptr %.6457.i, align 1, !tbaa !19
  %.1513.i = sext i8 %.1513.in.i to i32           ; 2 uses
  %i.bk = add nsw i32 %.1513.i, -48               ; 4 uses
  %i.bl = icmp ult i32 %i.bk, 10
  br i1 %i.bl, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bm = add i32 %.1473.i, 1                     ; 2 uses
  %.not595.i = icmp eq i32 %i.bk, 0
  br i1 %.not595.i, label %bb.p, label %bb.l

._crit_edge905.i.thread:                          ; preds = %._crit_edge894.i
  %i.bn = ptrtoint ptr %.5456.lcssa.i to i64
  %i.bo = sub i64 %5, %i.bn
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1
  %i.br = add nsw i32 %.0512.lcssa.i, -48
  %i.bs = add nsw i32 %.0472.lcssa.i, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = add nsw i32 %i.bm, %.0477.i             ; 3 uses
  %.not596898.i = icmp slt i32 %.1473.i, 1
  br i1 %.not596898.i, label %._crit_edge905.i, label %.lr.ph904.i.preheader

.lr.ph904.i.preheader:                            ; preds = %bb.l
  %xtraiter677 = and i32 %.1473.i, 1
  %i.bu = icmp eq i32 %.1473.i, 1
  br i1 %i.bu, label %.lr.ph904.i.epil.preheader, label %.lr.ph904.i.preheader.new

.lr.ph904.i.preheader.new:                        ; preds = %.lr.ph904.i.preheader
  %unroll_iter683 = and i32 %.1473.i, 2147483646
  br label %.lr.ph904.i

.lr.ph904.i:                                      ; preds = %.lr.ph904.i, %.lr.ph904.i.preheader.new
  %.4426902.i = phi i32 [ %.2424.i, %.lr.ph904.i.preheader.new ], [ %.5427.i.1, %.lr.ph904.i ] ; 2 uses
  %.4432901.i = phi i32 [ %.2430.i, %.lr.ph904.i.preheader.new ], [ %.5433.i.1, %.lr.ph904.i ] ; 2 uses
  %.3487900.i = phi i32 [ %.1485.i, %.lr.ph904.i.preheader.new ], [ %i.ca, %.lr.ph904.i ] ; 5 uses
  %niter684 = phi i32 [ 0, %.lr.ph904.i.preheader.new ], [ %niter684.next.1, %.lr.ph904.i ]
  %i.bv = icmp slt i32 %.3487900.i, 9
  %i.bw = mul i32 %.4432901.i, 10
  %i.bx = mul i32 %.4426902.i, 10
  %.5433.i = select i1 %i.bv, i32 %i.bw, i32 %.4432901.i ; 2 uses
  %i.by = add i32 %.3487900.i, -17
  %i.bz = icmp ult i32 %i.by, -8
  %.5427.i = select i1 %i.bz, i32 %.4426902.i, i32 %i.bx ; 2 uses
  %i.ca = add nsw i32 %.3487900.i, 2              ; 2 uses
  %i.cb = icmp slt i32 %.3487900.i, 8
  %i.cc = mul i32 %.5433.i, 10
  %i.cd = mul i32 %.5427.i, 10
  %.5433.i.1 = select i1 %i.cb, i32 %i.cc, i32 %.5433.i ; 3 uses
  %i.ce = add i32 %.3487900.i, -16
  %i.cf = icmp ult i32 %i.ce, -8
  %.5427.i.1 = select i1 %i.cf, i32 %.5427.i, i32 %i.cd ; 3 uses
  %niter684.next.1 = add nuw nsw i32 %niter684, 2 ; 2 uses
  %niter684.ncmp.1 = icmp eq i32 %niter684.next.1, %unroll_iter683
  br i1 %niter684.ncmp.1, label %._crit_edge905.loopexit.i.unr-lcssa, label %.lr.ph904.i, !llvm.loop !23

._crit_edge905.loopexit.i.unr-lcssa:              ; preds = %.lr.ph904.i
  %lcmp.mod679.not = icmp eq i32 %xtraiter677, 0
  br i1 %lcmp.mod679.not, label %._crit_edge905.loopexit.i, label %.lr.ph904.i.epil.preheader

.lr.ph904.i.epil.preheader:                       ; preds = %._crit_edge905.loopexit.i.unr-lcssa, %.lr.ph904.i.preheader
  %.4426902.i.epil.init = phi i32 [ %.2424.i, %.lr.ph904.i.preheader ], [ %.5427.i.1, %._crit_edge905.loopexit.i.unr-lcssa ] ; 2 uses
  %.4432901.i.epil.init = phi i32 [ %.2430.i, %.lr.ph904.i.preheader ], [ %.5433.i.1, %._crit_edge905.loopexit.i.unr-lcssa ] ; 2 uses
  %.3487900.i.epil.init = phi i32 [ %.1485.i, %.lr.ph904.i.preheader ], [ %i.ca, %._crit_edge905.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod682 = trunc i32 %.1473.i to i1
  call void @llvm.assume(i1 %lcmp.mod682)
  %i.cg = icmp slt i32 %.3487900.i.epil.init, 9
  %i.ch = mul i32 %.4432901.i.epil.init, 10
  %i.ci = mul i32 %.4426902.i.epil.init, 10
  %.5433.i.epil = select i1 %i.cg, i32 %i.ch, i32 %.4432901.i.epil.init
  %i.cj = add i32 %.3487900.i.epil.init, -17
  %i.ck = icmp ult i32 %i.cj, -8
  %.5427.i.epil = select i1 %i.ck, i32 %.4426902.i.epil.init, i32 %i.ci
  br label %._crit_edge905.loopexit.i

._crit_edge905.loopexit.i:                        ; preds = %._crit_edge905.loopexit.i.unr-lcssa, %.lr.ph904.i.epil.preheader
  %.5433.i.lcssa = phi i32 [ %.5433.i.1, %._crit_edge905.loopexit.i.unr-lcssa ], [ %.5433.i.epil, %.lr.ph904.i.epil.preheader ]
  %.5427.i.lcssa = phi i32 [ %.5427.i.1, %._crit_edge905.loopexit.i.unr-lcssa ], [ %.5427.i.epil, %.lr.ph904.i.epil.preheader ]
  %i.cl = add i32 %.1473.i, %.1485.i
  br label %._crit_edge905.i

._crit_edge905.i:                                 ; preds = %._crit_edge905.loopexit.i, %bb.l
  %.3487.lcssa.i = phi i32 [ %.1485.i, %bb.l ], [ %i.cl, %._crit_edge905.loopexit.i ] ; 3 uses
  %.4432.lcssa.i = phi i32 [ %.2430.i, %bb.l ], [ %.5433.i.lcssa, %._crit_edge905.loopexit.i ] ; 3 uses
  %.4426.lcssa.i = phi i32 [ %.2424.i, %bb.l ], [ %.5427.i.lcssa, %._crit_edge905.loopexit.i ] ; 3 uses
  %i.cm = add nsw i32 %.3487.lcssa.i, 1           ; 3 uses
  %i.cn = icmp slt i32 %.3487.lcssa.i, 9
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge905.i.thread, %._crit_edge905.i
  %i.co = phi i32 [ 1, %._crit_edge905.i.thread ], [ %i.cm, %._crit_edge905.i ]
  %.4426.lcssa.i62 = phi i32 [ 0, %._crit_edge905.i.thread ], [ %.4426.lcssa.i, %._crit_edge905.i ]
  %.4432.lcssa.i61 = phi i32 [ 0, %._crit_edge905.i.thread ], [ %.4432.lcssa.i, %._crit_edge905.i ]
  %i.cp = phi i32 [ %i.br, %._crit_edge905.i.thread ], [ %i.bk, %._crit_edge905.i ]
  %.1449.i274360 = phi ptr [ %.5456.lcssa.i, %._crit_edge905.i.thread ], [ %.0448.i, %._crit_edge905.i ]
  %.7458.i254459 = phi ptr [ %.5456.lcssa.i, %._crit_edge905.i.thread ], [ %.6457.i, %._crit_edge905.i ]
  %.sroa.0.1.i204558 = phi i32 [ %i.bp, %._crit_edge905.i.thread ], [ %.sroa.0.0.i, %._crit_edge905.i ]
  %.sroa.6.1.i184657 = phi i32 [ %i.bq, %._crit_edge905.i.thread ], [ %.sroa.6.0.i, %._crit_edge905.i ]
  %.0484.lcssa116211791189.i164756 = phi i32 [ 0, %._crit_edge905.i.thread ], [ %.0484.lcssa116211791190.i, %._crit_edge905.i ]
  %i.cq = phi i32 [ 1, %._crit_edge905.i.thread ], [ %i.bj, %._crit_edge905.i ]
  %i.cr = phi i32 [ %i.bs, %._crit_edge905.i.thread ], [ %i.bt, %._crit_edge905.i ]
  %i.cs = mul i32 %.4432.lcssa.i61, 10
  %i.ct = add i32 %i.cs, %i.cp
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge905.i
  %i.cu = icmp samesign ult i32 %.3487.lcssa.i, 17
  br i1 %i.cu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cv = mul i32 %.4426.lcssa.i, 10
  %i.cw = add i32 %i.cv, %i.bk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.1449.i28 = phi ptr [ %.0448.i, %bb.k ], [ %.0448.i, %bb.n ], [ %.0448.i, %bb.o ], [ %.1449.i274360, %bb.m ]
  %.7458.i26 = phi ptr [ %.6457.i, %bb.k ], [ %.6457.i, %bb.n ], [ %.6457.i, %bb.o ], [ %.7458.i254459, %bb.m ]
  %.sroa.0.1.i21 = phi i32 [ %.sroa.0.0.i, %bb.k ], [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0.0.i, %bb.o ], [ %.sroa.0.1.i204558, %bb.m ]
  %.sroa.6.1.i19 = phi i32 [ %.sroa.6.0.i, %bb.k ], [ %.sroa.6.0.i, %bb.n ], [ %.sroa.6.0.i, %bb.o ], [ %.sroa.6.1.i184657, %bb.m ]
  %.0484.lcssa116211791189.i17 = phi i32 [ %.0484.lcssa116211791190.i, %bb.k ], [ %.0484.lcssa116211791190.i, %bb.n ], [ %.0484.lcssa116211791190.i, %bb.o ], [ %.0484.lcssa116211791189.i164756, %bb.m ]
  %i.cx = phi i32 [ %i.bj, %bb.k ], [ %i.bj, %bb.n ], [ %i.bj, %bb.o ], [ %i.cq, %bb.m ]
  %.4488.i = phi i32 [ %.1485.i, %bb.k ], [ %i.cm, %bb.n ], [ %i.cm, %bb.o ], [ %i.co, %bb.m ]
  %.2479.i = phi i32 [ %.0477.i, %bb.k ], [ %i.bt, %bb.n ], [ %i.bt, %bb.o ], [ %i.cr, %bb.m ]
  %.3475.i = phi i32 [ %i.bm, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.3469.i = phi i32 [ %.1467.i, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.7435.i = phi i32 [ %.2430.i, %bb.k ], [ %.4432.lcssa.i, %bb.n ], [ %.4432.lcssa.i, %bb.o ], [ %i.ct, %bb.m ]
  %.7.i = phi i32 [ %.2424.i, %bb.k ], [ %.4426.lcssa.i, %bb.n ], [ %i.cw, %bb.o ], [ %.4426.lcssa.i62, %bb.m ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.7458.i26, i64 1
  br label %bb.j, !llvm.loop !24

bb.q:                                             ; preds = %bb.j, %._crit_edge894.i, %.critedge.thread.i, %.critedge.i
  %.0484.lcssa11621178.i = phi i32 [ %.0484.lcssa116211791190.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.sroa.12.0.i = phi i32 [ %i.bj, %bb.j ], [ 1, %._crit_edge894.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.6.2.i = phi i32 [ %.sroa.6.0.i, %bb.j ], [ 1, %._crit_edge894.i ], [ %i.ak, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.0.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %i.ak, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.3515.i = phi i32 [ %.1513.i, %bb.j ], [ %.0512.lcssa.i, %._crit_edge894.i ], [ %i.ag, %.critedge.i ], [ %i.r, %.critedge.thread.i ]
  %.5489.i = phi i32 [ %.1485.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 14 uses
  %.3480.i = phi i32 [ %.0477.i, %bb.j ], [ 0, %._crit_edge894.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.4476.i = phi i32 [ %.1473.i, %bb.j ], [ %.0472.lcssa.i, %._crit_edge894.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.4470.i = phi i32 [ %.1467.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %.0466.lcssa.i, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.8459.i = phi ptr [ %.6457.i, %bb.j ], [ %.5456.lcssa.i, %._crit_edge894.i ], [ %i.ae, %.critedge.i ], [ %.3454.i, %.critedge.thread.i ] ; 7 uses
  %.2450.i = phi ptr [ %.0448.i, %bb.j ], [ %.3454.i, %._crit_edge894.i ], [ %.3454.i, %.critedge.i ], [ %.3454.i, %.critedge.thread.i ] ; 15 uses
  %.8436.i = phi i32 [ %.2430.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %.1429.i, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 5 uses
  %.8.i = phi i32 [ %.2424.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %.1423.i, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %i.cz = and i32 %.3515.i, -33
  %or.cond3.i = icmp eq i32 %i.cz, 69
  br i1 %or.cond3.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.da = icmp ne i32 %.5489.i, 0
  %i.db = icmp ne i32 %.4476.i, 0
  %or.cond5.i = select i1 %i.da, i1 true, i1 %i.db
  %or.cond7.i = or i1 %i.n, %or.cond5.i
  br i1 %or.cond7.i, label %bb.s, label %.loopexit751.i

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %.8459.i, i64 1 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.dd, label %bb.v [
    i8 45, label %bb.t
    i8 43, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.de = phi i1 [ false, %bb.t ], [ true, %bb.s ]
  %i.df = getelementptr inbounds nuw i8, ptr %.8459.i, i64 2 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.4516.in.i = phi i8 [ %i.dd, %bb.s ], [ %i.dg, %bb.u ] ; 3 uses
  %.1506.i = phi i1 [ true, %bb.s ], [ %i.de, %bb.u ]
  %.9460.i = phi ptr [ %i.dc, %bb.s ], [ %i.df, %bb.u ] ; 2 uses
  %i.dh = add i8 %.4516.in.i, -48
  %or.cond9.i = icmp ult i8 %i.dh, 10
  br i1 %or.cond9.i, label %.preheader747.i, label %bb.x

.preheader747.i:                                  ; preds = %bb.v
  %i.di = icmp eq i8 %.4516.in.i, 48
  br i1 %i.di, label %.lr.ph910.i, label %._crit_edge911.i

.lr.ph910.i:                                      ; preds = %.preheader747.i, %.lr.ph910.i
  %.10461909.i = phi ptr [ %i.dj, %.lr.ph910.i ], [ %.9460.i, %.preheader747.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.10461909.i, i64 1 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !19  ; 2 uses
  %i.dl = icmp eq i8 %i.dk, 48
  br i1 %i.dl, label %.lr.ph910.i, label %._crit_edge911.i, !llvm.loop !25

._crit_edge911.i:                                 ; preds = %.lr.ph910.i, %.preheader747.i
  %.5517.in.lcssa.i = phi i8 [ %.4516.in.i, %.preheader747.i ], [ %i.dk, %.lr.ph910.i ] ; 2 uses
  %.10461.lcssa.i = phi ptr [ %.9460.i, %.preheader747.i ], [ %i.dj, %.lr.ph910.i ] ; 3 uses
  %i.dm = add i8 %.5517.in.lcssa.i, -49
  %or.cond11.i = icmp ult i8 %i.dm, 9
  br i1 %or.cond11.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge911.i
  %narrow.i = add nsw i8 %.5517.in.lcssa.i, -48
  %i.dn = zext nneg i8 %narrow.i to i32           ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.10461.lcssa.i, i64 1 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19  ; 2 uses
  %i.dq = add i8 %i.dp, -48
  %i.dr = icmp ult i8 %i.dq, 10
  br i1 %i.dr, label %.lr.ph916.i, label %._crit_edge917.i

.lr.ph916.i:                                      ; preds = %bb.w, %.lr.ph916.i
  %i.ds = phi i8 [ %i.dz, %.lr.ph916.i ], [ %i.dp, %bb.w ]
  %i.dt = phi ptr [ %i.dy, %.lr.ph916.i ], [ %i.do, %bb.w ]
  %.0440914.i = phi i32 [ %i.dx, %.lr.ph916.i ], [ %i.dn, %bb.w ]
  %i.du = zext nneg i8 %i.ds to i32
end_hunk_0
begin_hunk_1_@pow5mult:bb.a
  %.not38 = icmp eq ptr %i.h, null
  br i1 %.not38, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @ACQUIRE_DTOA_LOCK(i32 noundef 1) #17
  %i.i = load ptr, ptr @p5s, align 8, !tbaa !13   ; 2 uses
  %.not39 = icmp eq ptr %i.i, null
  br i1 %.not39, label %i2b.exit, label %bb.f

i2b.exit:                                         ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) @cache, i8 0, i64 80, i1 false)
  store i32 2304, ptr @cache, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw (i8, ptr @cache, i64 120), ptr getelementptr inbounds nuw (i8, ptr @cache, i64 8), align 8, !tbaa !11
  store i32 625, ptr getelementptr inbounds nuw (i8, ptr @cache, i64 104), align 8, !tbaa !3
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr getelementptr inbounds nuw (i8, ptr @cache, i64 88), align 8, !tbaa !3
  store ptr getelementptr inbounds nuw (i8, ptr @cache, i64 80), ptr @p5s, align 8, !tbaa !13
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cache, i64 80), align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %i2b.exit, %bb.e
  %.024 = phi ptr [ %i.i, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @cache, i64 80), %i2b.exit ]
  tail call void @FREE_DTOA_LOCK(i32 noundef 1) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.125 = phi ptr [ %i.h, %bb.d ], [ %.024, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %bb.g
  %.029 = phi i32 [ %i.g, %bb.g ], [ %i.s, %.backedge ] ; 2 uses
  %.127 = phi ptr [ %.026, %bb.g ], [ %.228, %.backedge ] ; 7 uses
  %.2 = phi ptr [ %.125, %bb.g ], [ %.2.be, %.backedge ] ; 6 uses
  %i.k = and i32 %.029, 1
  %.not40 = icmp eq i32 %i.k, 0
  br i1 %.not40, label %Bfree.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call fastcc ptr @mult(ptr noundef %0, ptr noundef %.127, ptr noundef nonnull %.2) ; 3 uses
  %.not.i = icmp eq ptr %.127, null
  br i1 %.not.i, label %Bfree.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %.127, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 7
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %.127) #17
  br label %Bfree.exit

bb.l:                                             ; preds = %bb.j
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  store ptr %i.r, ptr %.127, align 8, !tbaa !15
  store ptr %.127, ptr %i.q, align 8, !tbaa !13
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %.228 = phi ptr [ %.127, %bb.h ], [ %i.l, %bb.i ], [ %i.l, %bb.k ], [ %i.l, %bb.l ] ; 2 uses
  %i.s = lshr i32 %.029, 1                        ; 2 uses
  %.not41 = icmp eq i32 %i.s, 0
  br i1 %.not41, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %Bfree.exit
  %i.t = load ptr, ptr %.2, align 8, !tbaa !15    ; 2 uses
  %.not42 = icmp eq ptr %i.t, null
  br i1 %.not42, label %bb.n, label %.backedge

bb.n:                                             ; preds = %bb.m
  tail call void @ACQUIRE_DTOA_LOCK(i32 noundef 1) #17
  %i.u = load ptr, ptr %.2, align 8, !tbaa !15    ; 2 uses
  %.not43 = icmp eq ptr %i.u, null
  br i1 %.not43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.v = tail call fastcc ptr @mult(ptr noundef nonnull @cache, ptr noundef nonnull %.2, ptr noundef nonnull %.2) ; 3 uses
  store ptr %i.v, ptr %.2, align 8, !tbaa !15
  store ptr null, ptr %i.v, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.023 = phi ptr [ %i.u, %bb.n ], [ %i.v, %bb.o ]
  tail call void @FREE_DTOA_LOCK(i32 noundef 1) #17
  br label %.backedge

.backedge:                                        ; preds = %bb.p, %bb.m
  %.2.be = phi ptr [ %.023, %bb.p ], [ %i.t, %bb.m ]
  br label %bb.h

.loopexit:                                        ; preds = %Bfree.exit, %bb.c
  %.0 = phi ptr [ %.026, %bb.c ], [ %.228, %Bfree.exit ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @mult(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = icmp slt i32 %i.b, %i.d                  ; 2 uses
  %spec.select = select i1 %i.e, ptr %1, ptr %2   ; 2 uses
  %spec.select66 = select i1 %i.e, ptr %2, ptr %1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select66, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select66, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !40   ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select66, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = icmp sgt i32 %i.l, %i.n
  %i.p = zext i1 %i.o to i32
  %.059 = add nsw i32 %i.g, %i.p                  ; 5 uses
  %i.q = icmp slt i32 %.059, 8
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = sext i32 %.059 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  store ptr %i.v, ptr %i.t, align 8, !tbaa !13
  br label %Balloc.exit

bb.d:                                             ; preds = %bb.a
  %i.w = shl nuw i32 1, %.059                     ; 2 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i32 1, %.059                ; 3 uses
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 36               ; 2 uses
  %i.ag = lshr i64 %i.af, 3                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = add nsw i64 %i.an, %i.ag
  %i.ap = load i32, ptr %0, align 8, !tbaa !7
  %i.aq = sext i32 %i.ap to i64
  %.not26.i = icmp sgt i64 %i.ao, %i.aq
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.as = phi i64 [ %i.af, %bb.e ], [ %i.aa, %bb.d ]
  %i.at = phi i32 [ %i.ab, %bb.e ], [ %i.w, %bb.d ]
  %i.au = and i64 %i.as, 34359738360
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.aw, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = phi i32 [ %i.ab, %bb.f ], [ %i.at, %bb.g ]
  %.0.i = phi ptr [ %i.ai, %bb.f ], [ %i.av, %bb.g ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %.059, ptr %i.ay, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !38
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.h
  %.1.i = phi ptr [ %i.u, %bb.c ], [ %.0.i, %bb.h ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i, i64 20 ; 2 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !39
  %i.bc = getelementptr i8, ptr %.1.i, i64 24     ; 3 uses
  %i.bd = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %.idx
  %i.bf = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.bf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Balloc.exit
  %.1.i81 = ptrtoaddr ptr %.1.i to i64            ; 3 uses
  %i.bg = add i64 %.idx, %.1.i81
  %i.bh = add i64 %i.bg, 24
  %i.bi = add i64 %.1.i81, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bi)
  %i.bj = add i64 %umax, -25
  %i.bk = sub i64 %i.bj, %.1.i81
  %i.bl = and i64 %i.bk, -4
  %i.bm = add i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %i.bm, i1 false), !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %Balloc.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select66, i64 24 ; 2 uses
  %i.bo = sext i32 %i.i to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %spec.select, i64 24 ; 2 uses
  %i.br = sext i32 %i.k to i64
  %.idx79 = shl nsw i64 %i.br, 2
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %.idx79
  %i.bt = icmp sgt i32 %i.k, 0
  br i1 %i.bt, label %.lr.ph73, label %.preheader

.preheader:                                       ; preds = %bb.k, %._crit_edge
  br i1 %i.bf, label %.lr.ph76, label %.critedge

.lr.ph73:                                         ; preds = %._crit_edge, %bb.k
  %.05671 = phi ptr [ %i.ck, %bb.k ], [ %i.bc, %._crit_edge ] ; 2 uses
  %.05870 = phi ptr [ %i.bu, %bb.k ], [ %i.bq, %._crit_edge ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05870, i64 4 ; 2 uses
  %i.bv = load i32, ptr %.05870, align 4, !tbaa !3 ; 2 uses
  %.not65 = icmp eq i32 %i.bv, 0
  br i1 %.not65, label %bb.k, label %.preheader67

.preheader67:                                     ; preds = %.lr.ph73
  %i.bw = zext i32 %i.bv to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader67, %bb.i
  %.161 = phi ptr [ %i.bx, %bb.i ], [ %i.bn, %.preheader67 ] ; 2 uses
  %.057 = phi ptr [ %i.ch, %bb.i ], [ %.05671, %.preheader67 ] ; 3 uses
  %.054 = phi i64 [ %i.cf, %bb.i ], [ 0, %.preheader67 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.161, i64 4 ; 2 uses
  %i.by = load i32, ptr %.161, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bw
  %i.cb = load i32, ptr %.057, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %.054, %i.cc
  %i.ce = add nuw i64 %i.cd, %i.ca                ; 2 uses
  %i.cf = lshr i64 %i.ce, 32                      ; 2 uses
  %i.cg = trunc i64 %i.ce to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %.057, i64 4 ; 2 uses
  store i32 %i.cg, ptr %.057, align 4, !tbaa !3
  %i.ci = icmp ult ptr %i.bx, %i.bp
  br i1 %i.ci, label %bb.i, label %bb.j, !llvm.loop !55

bb.j:                                             ; preds = %bb.i
  %i.cj = trunc nuw i64 %i.cf to i32
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph73, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.05671, i64 4
  %i.cl = icmp ult ptr %i.bu, %i.bs
  br i1 %i.cl, label %.lr.ph73, label %.preheader, !llvm.loop !56

.lr.ph76:                                         ; preds = %.preheader, %bb.l
  %.175 = phi ptr [ %i.cm, %bb.l ], [ %i.be, %.preheader ]
  %.06274 = phi i32 [ %i.co, %bb.l ], [ %i.l, %.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.175, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph76
  %i.co = add nsw i32 %.06274, -1
  %i.cp = icmp sgt i32 %.06274, 1
  br i1 %i.cp, label %.lr.ph76, label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %.lr.ph76, %bb.l, %.preheader
  %.062.lcssa = phi i32 [ %i.l, %.preheader ], [ 0, %bb.l ], [ %.06274, %.lr.ph76 ]
  store i32 %.062.lcssa, ptr %i.ba, align 4, !tbaa !40
  ret ptr %.1.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @lshift(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -2147483593, -2147483648) %2) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ashr i32 %2, 5                           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = add nsw i32 %i.f, %i.b                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38   ; 2 uses
  %.not53 = icmp slt i32 %i.g, %i.i
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04355 = phi i32 [ %i.k, %.lr.ph ], [ %i.i, %bb.a ]
  %.04654 = phi i32 [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.j = add nsw i32 %.04654, 1                   ; 2 uses
  %i.k = shl i32 %.04355, 1                       ; 2 uses
  %.not = icmp slt i32 %i.g, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.046.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.j, %.lr.ph ] ; 5 uses
  %i.l = icmp slt i32 %.046.lcssa, 8
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = sext i32 %.046.lcssa to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  store ptr %i.q, ptr %i.o, align 8, !tbaa !13
  br label %Balloc.exit

bb.d:                                             ; preds = %._crit_edge
  %i.r = shl nuw i32 1, %.046.lcssa               ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.w = shl nuw nsw i32 1, %.046.lcssa           ; 3 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 36                ; 2 uses
  %i.ab = lshr i64 %i.aa, 3                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ab
  %i.ak = load i32, ptr %0, align 8, !tbaa !7
  %i.al = sext i32 %i.ak to i64
  %.not26.i = icmp sgt i64 %i.aj, %i.al
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.an = phi i64 [ %i.aa, %bb.e ], [ %i.v, %bb.d ]
  %i.ao = phi i32 [ %i.w, %bb.e ], [ %i.r, %bb.d ]
  %i.ap = and i64 %i.an, 34359738360
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ar, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i32 [ %i.w, %bb.f ], [ %i.ao, %bb.g ]
  %.0.i = phi ptr [ %i.ad, %bb.f ], [ %i.aq, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %.046.lcssa, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %i.as, ptr %i.au, align 4, !tbaa !38
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.h
  %.1.i = phi ptr [ %i.p, %bb.c ], [ %.0.i, %bb.h ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i, i64 20 ; 2 uses
  store i32 0, ptr %i.av, align 4, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !39
  %i.ax = getelementptr i8, ptr %.1.i, i64 24     ; 2 uses
  %i.ay = icmp sgt i32 %i.b, 0
  br i1 %i.ay, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %Balloc.exit
  %i.az = zext nneg i32 %i.b to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %i.ba, i1 false), !tbaa !3
  %i.bb = add nsw i32 %i.b, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = getelementptr i8, ptr %.1.i, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.be, i64 28
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %.lr.ph58.preheader, %Balloc.exit
  %.040.lcssa = phi ptr [ %i.ax, %Balloc.exit ], [ %scevgep, %.lr.ph58.preheader ] ; 6 uses
  %.040.lcssa74 = ptrtoaddr ptr %.040.lcssa to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !40
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bh ; 2 uses
  %i.bj = and i32 %2, 31                          ; 3 uses
  %.not49 = icmp eq i32 %i.bj, 0
  br i1 %.not49, label %.preheader.preheader, label %bb.i

.preheader.preheader:                             ; preds = %._crit_edge59
  %3 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.bk = shl nsw i64 %i.bh, 2
  %i.bl = add i64 %i.bk, %3
  %i.bm = add i64 %i.bl, 24
  %i.bn = add i64 %3, 28
  %i.bo = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bn)
  %i.bp = sub i64 %i.bo, %3
  %i.bq = add i64 %i.bp, -25                      ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 60
  br i1 %min.iters.check, label %.preheader.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.bt = sub i64 %.040.lcssa74, %i.a
  %i.bu = add i64 %i.bt, -25
  %diff.check = icmp ult i64 %i.bu, 31
  br i1 %diff.check, label %.preheader.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bf, i64 %i.bv
  %i.bx = getelementptr i8, ptr %.040.lcssa, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.by ; 2 uses
  %next.gep75 = getelementptr i8, ptr %.040.lcssa, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load76 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !3
  %i.ca = getelementptr i8, ptr %next.gep75, i64 16
  store <4 x i32> %wide.load, ptr %next.gep75, align 4, !tbaa !3
  store <4 x i32> %wide.load76, ptr %i.ca, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader78

.preheader.preheader78:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.142.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.preheader.preheader ], [ %i.bw, %middle.block ]
  %.2.ph = phi ptr [ %.040.lcssa, %vector.memcheck ], [ %.040.lcssa, %.preheader.preheader ], [ %i.bx, %middle.block ]
  br label %.preheader

bb.i:                                             ; preds = %._crit_edge59
  %i.cc = sub nuw nsw i32 32, %i.bj
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.041 = phi ptr [ %i.bf, %bb.i ], [ %i.ch, %bb.j ] ; 3 uses
  %.1 = phi ptr [ %.040.lcssa, %bb.i ], [ %i.cg, %bb.j ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.i ], [ %i.cj, %bb.j ]
  %i.cd = load i32, ptr %.041, align 4, !tbaa !3
  %i.ce = shl i32 %i.cd, %i.bj
  %i.cf = or i32 %i.ce, %.0
  %i.cg = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  store i32 %i.cf, ptr %.1, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.041, i64 4 ; 2 uses
  %i.ci = load i32, ptr %.041, align 4, !tbaa !3
  %i.cj = lshr i32 %i.ci, %i.cc                   ; 3 uses
  %i.ck = icmp ult ptr %i.ch, %i.bi
  br i1 %i.ck, label %bb.j, label %bb.k, !llvm.loop !62

bb.k:                                             ; preds = %bb.j
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !3
  %.not50 = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %.not50 to i32
  %spec.select = add nsw i32 %i.g, %i.cl
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader78, %.preheader
  %.142 = phi ptr [ %i.cm, %.preheader ], [ %.142.ph, %.preheader.preheader78 ] ; 2 uses
  %.2 = phi ptr [ %i.co, %.preheader ], [ %.2.ph, %.preheader.preheader78 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.142, i64 4 ; 2 uses
  %i.cn = load i32, ptr %.142, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.cn, ptr %.2, align 4, !tbaa !3
  %i.cp = icmp ult ptr %i.cm, %i.bi
  br i1 %i.cp, label %.preheader, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.k
  %.045 = phi i32 [ %spec.select, %bb.k ], [ %i.g, %middle.block ], [ %i.g, %.preheader ]
  store i32 %.045, ptr %i.av, align 4, !tbaa !40
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 7
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %1) #17
  br label %Bfree.exit

bb.m:                                             ; preds = %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = sext i32 %i.cq to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !13
  store ptr %i.cv, ptr %1, align 8, !tbaa !15
  store ptr %1, ptr %i.cu, align 8, !tbaa !13
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.l, %bb.m
  ret ptr %.1.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @multadd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 -176, 80) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  %xtraiter = and i32 %smax, 3                    ; 3 uses
  %i.f = icmp slt i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i32 %smax, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.029 = phi ptr [ %i.c, %.new ], [ %i.ah, %bb.b ] ; 6 uses
  %.028 = phi i64 [ %i.d, %.new ], [ %i.af, %bb.b ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.g = load i32, ptr %.029, align 4, !tbaa !3
  %i.h = zext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, %i.e
  %i.j = add nsw i64 %i.i, %.028                  ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc i64 %i.j to i32
  %i.m = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  store i32 %i.l, ptr %.029, align 4, !tbaa !3
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.e
  %i.q = add nsw i64 %i.p, %i.k                   ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc i64 %i.q to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  store i32 %i.s, ptr %i.m, align 4, !tbaa !3
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = zext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, %i.e
  %i.x = add nsw i64 %i.w, %i.r                   ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %.029, i64 12 ; 2 uses
  store i32 %i.z, ptr %i.t, align 4, !tbaa !3
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.e
  %i.ae = add nsw i64 %i.ad, %i.y                 ; 2 uses
  %i.af = lshr i64 %i.ae, 32                      ; 3 uses
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.029, i64 16 ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !3
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !64

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.029.epil.init = phi ptr [ %i.c, %bb.a ], [ %i.ah, %.unr-lcssa ]
  %.028.epil.init = phi i64 [ %i.d, %bb.a ], [ %i.af, %.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.029.epil = phi ptr [ %.029.epil.init, %.epil.preheader ], [ %i.ao, %bb.c ] ; 3 uses
  %.028.epil = phi i64 [ %.028.epil.init, %.epil.preheader ], [ %i.am, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = load i32, ptr %.029.epil, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.e
  %i.al = add nsw i64 %i.ak, %.028.epil           ; 2 uses
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc i64 %i.al to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %.029.epil, i64 4
  store i32 %i.an, ptr %.029.epil, align 4, !tbaa !3
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !65

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %.unr-lcssa ], [ %i.am, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.epilog-lcssa
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_1
