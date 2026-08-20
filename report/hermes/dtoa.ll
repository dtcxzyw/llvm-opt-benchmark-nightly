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
  %.0446.i = phi ptr [ %0, %bb.a ], [ %i.l, %bb.c ] ; 4 uses
  %i.i = load i8, ptr %.0446.i, align 1, !tbaa !19 ; 2 uses
  switch i8 %i.i, label %.loopexit751.i [
    i8 45, label %.loopexit752.i.loopexit
    i8 43, label %.loopexit752.i
    i8 0, label %.loopexit750.i
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

.loopexit752.i.loopexit:                          ; preds = %bb.b
  br label %.loopexit752.i

.loopexit752.i:                                   ; preds = %bb.b, %.loopexit752.i.loopexit
  %.0458.i = phi i32 [ 1, %.loopexit752.i.loopexit ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0446.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19    ; 2 uses
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %.loopexit750.i, label %.loopexit751.i

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0446.i, i64 1
  br label %bb.b

.loopexit751.i:                                   ; preds = %bb.b, %.loopexit752.i
  %i.m = phi i8 [ %i.k, %.loopexit752.i ], [ %i.i, %bb.b ] ; 2 uses
  %.1459.i = phi i32 [ %.0458.i, %.loopexit752.i ], [ 0, %bb.b ] ; 10 uses
  %.1447.i = phi ptr [ %i.j, %.loopexit752.i ], [ %.0446.i, %bb.b ] ; 2 uses
  %i.n = icmp eq i8 %i.m, 48                      ; 3 uses
  br i1 %i.n, label %.preheader748.i, label %.loopexit749.i

.preheader748.i:                                  ; preds = %.loopexit751.i, %.preheader748.i
  %.2448.i = phi ptr [ %i.o, %.preheader748.i ], [ %.1447.i, %.loopexit751.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.2448.i, i64 1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  switch i8 %i.p, label %.loopexit749.i [
    i8 48, label %.preheader748.i
    i8 0, label %.loopexit750.i
  ]

.loopexit749.i:                                   ; preds = %.preheader748.i, %.loopexit751.i
  %i.q = phi i8 [ %i.m, %.loopexit751.i ], [ %i.p, %.preheader748.i ] ; 3 uses
  %.3449.i = phi ptr [ %.1447.i, %.loopexit751.i ], [ %i.o, %.preheader748.i ] ; 10 uses
  %i.r = sext i8 %i.q to i32                      ; 2 uses
  %i.s = add i8 %i.q, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph.i, label %.critedge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit749.i, %bb.g
  %i.u = phi i32 [ %i.ag, %bb.g ], [ %i.r, %.loopexit749.i ] ; 2 uses
  %.0420877.i = phi i32 [ %.1421.i, %bb.g ], [ 0, %.loopexit749.i ] ; 3 uses
  %.0426876.i = phi i32 [ %.1427.i, %bb.g ], [ 0, %.loopexit749.i ] ; 3 uses
  %.4450875.i = phi ptr [ %i.ae, %bb.g ], [ %.3449.i, %.loopexit749.i ] ; 2 uses
  %.0479874.i = phi i32 [ %i.ad, %bb.g ], [ 0, %.loopexit749.i ] ; 3 uses
  %i.v = icmp samesign ult i32 %.0479874.i, 9
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = mul i32 %.0426876.i, 10
  %i.x = add nsw i32 %i.u, -48
  %i.y = add i32 %i.x, %i.w
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = icmp samesign ult i32 %.0479874.i, 17
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = mul i32 %.0420877.i, 10
  %i.ab = add nsw i32 %i.u, -48
  %i.ac = add i32 %i.ab, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1427.i = phi i32 [ %i.y, %bb.d ], [ %.0426876.i, %bb.f ], [ %.0426876.i, %bb.e ] ; 3 uses
  %.1421.i = phi i32 [ %.0420877.i, %bb.d ], [ %i.ac, %bb.f ], [ %.0420877.i, %bb.e ] ; 3 uses
  %i.ad = add nuw nsw i32 %.0479874.i, 1          ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.4450875.i, i64 1 ; 5 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19  ; 3 uses
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = add i8 %i.af, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ak = ptrtoint ptr %.3449.i to i64            ; 3 uses
  %i.al = sub i64 %i.aj, %i.ak
  %4 = trunc i64 %i.al to i32                     ; 4 uses
  %5 = trunc i64 %i.aj to i32
  %i.am = trunc i64 %i.ak to i32
  %6 = sub i32 %5, %i.am
  br label %.lr.ph886.i

.lr.ph886.i:                                      ; preds = %bb.h, %._crit_edge.i
  %.0442884.i = phi ptr [ %i.an, %bb.h ], [ %i.ae, %._crit_edge.i ]
  %.0461883.i = phi i32 [ %i.aq, %bb.h ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.0442884.i, i64 -1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  %i.ap = icmp eq i8 %i.ao, 48
  br i1 %i.ap, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph886.i
  %i.aq = add nuw nsw i32 %.0461883.i, 1
  %i.ar = icmp ugt ptr %i.an, %.3449.i
  br i1 %i.ar, label %.lr.ph886.i, label %.critedge.i, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.h, %.lr.ph886.i
  %.0461.lcssa.i.ph = phi i32 [ %6, %bb.h ], [ %.0461883.i, %.lr.ph886.i ] ; 2 uses
  %i.as = icmp eq i8 %i.af, 46
  br i1 %i.as, label %bb.i, label %bb.q

.critedge.thread.i:                               ; preds = %.loopexit749.i
  %i.at = ptrtoint ptr %.3449.i to i64
  %i.au = icmp eq i8 %i.q, 46
  br i1 %i.au, label %.preheader747.i, label %bb.q

bb.i:                                             ; preds = %.critedge.i
  %i.av = getelementptr inbounds nuw i8, ptr %.4450875.i, i64 2 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ak
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = sub nsw i32 %i.ay, %4
  br label %bb.j

.preheader747.i:                                  ; preds = %.critedge.thread.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.3449.i, i64 1 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19  ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 48
  br i1 %i.bc, label %.lr.ph892.i, label %._crit_edge893.i

.lr.ph892.i:                                      ; preds = %.preheader747.i, %.lr.ph892.i
  %.5451891.i = phi ptr [ %i.be, %.lr.ph892.i ], [ %i.ba, %.preheader747.i ]
  %.0467890.i = phi i32 [ %i.bd, %.lr.ph892.i ], [ 0, %.preheader747.i ]
  %i.bd = add nuw nsw i32 %.0467890.i, 1          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.5451891.i, i64 1 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 48
  br i1 %i.bg, label %.lr.ph892.i, label %._crit_edge893.i, !llvm.loop !22

._crit_edge893.i:                                 ; preds = %.lr.ph892.i, %.preheader747.i
  %.0506.lcssa.in.i = phi i8 [ %i.bb, %.preheader747.i ], [ %i.bf, %.lr.ph892.i ]
  %.0467.lcssa.i = phi i32 [ 0, %.preheader747.i ], [ %i.bd, %.lr.ph892.i ] ; 2 uses
  %.5451.lcssa.i = phi ptr [ %i.ba, %.preheader747.i ], [ %i.be, %.lr.ph892.i ] ; 4 uses
  %.0506.lcssa.i = sext i8 %.0506.lcssa.in.i to i32 ; 3 uses
  %i.bh = add nsw i32 %.0506.lcssa.i, -49
  %or.cond.i = icmp ult i32 %i.bh, 9
  br i1 %or.cond.i, label %._crit_edge904.i.thread, label %bb.q

bb.j:                                             ; preds = %bb.p, %bb.i
  %i.bi = phi i32 [ %i.cw, %bb.p ], [ %i.az, %bb.i ] ; 5 uses
  %.0479.lcssa115711741185.i = phi i32 [ %.0479.lcssa115711741184.i17, %bb.p ], [ %i.ad, %bb.i ] ; 5 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i19, %bb.p ], [ %i.ay, %bb.i ] ; 5 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i21, %bb.p ], [ %4, %bb.i ] ; 5 uses
  %.1480.i = phi i32 [ %.4483.i, %bb.p ], [ %i.ad, %bb.i ] ; 6 uses
  %.0472.i = phi i32 [ %.2474.i, %bb.p ], [ 0, %bb.i ] ; 3 uses
  %.1468.i = phi i32 [ %.3470.i, %bb.p ], [ 0, %bb.i ] ; 8 uses
  %.1462.i = phi i32 [ %.3464.i, %bb.p ], [ %.0461.lcssa.i.ph, %bb.i ] ; 2 uses
  %.6452.i = phi ptr [ %i.cx, %bb.p ], [ %i.av, %bb.i ] ; 6 uses
  %.0443.i = phi ptr [ %.1444.i28, %bb.p ], [ %.3449.i, %bb.i ] ; 5 uses
  %.2428.i = phi i32 [ %.7433.i, %bb.p ], [ %.1427.i, %bb.i ] ; 5 uses
  %.2422.i = phi i32 [ %.7.i, %bb.p ], [ %.1421.i, %bb.i ] ; 5 uses
  %.1507.in.i = load i8, ptr %.6452.i, align 1, !tbaa !19
  %.1507.i = sext i8 %.1507.in.i to i32           ; 2 uses
  %i.bj = add nsw i32 %.1507.i, -48               ; 4 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bl = add i32 %.1468.i, 1                     ; 2 uses
  %.not595.i = icmp eq i32 %i.bj, 0
  br i1 %.not595.i, label %bb.p, label %bb.l

._crit_edge904.i.thread:                          ; preds = %._crit_edge893.i
  %i.bm = ptrtoint ptr %.5451.lcssa.i to i64
  %i.bn = sub i64 %i.at, %i.bm
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = add nsw i32 %.0506.lcssa.i, -48
  %i.br = add nsw i32 %.0467.lcssa.i, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = add nsw i32 %i.bl, %.0472.i             ; 3 uses
  %.not596897.i = icmp slt i32 %.1468.i, 1
  br i1 %.not596897.i, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %bb.l
  %xtraiter677 = and i32 %.1468.i, 1
  %i.bt = icmp eq i32 %.1468.i, 1
  br i1 %i.bt, label %.lr.ph903.i.epil.preheader, label %.lr.ph903.i.preheader.new

.lr.ph903.i.preheader.new:                        ; preds = %.lr.ph903.i.preheader
  %unroll_iter683 = and i32 %.1468.i, 2147483646
  br label %.lr.ph903.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i, %.lr.ph903.i.preheader.new
  %.4424901.i = phi i32 [ %.2422.i, %.lr.ph903.i.preheader.new ], [ %.5425.i.1, %.lr.ph903.i ] ; 2 uses
  %.4430900.i = phi i32 [ %.2428.i, %.lr.ph903.i.preheader.new ], [ %.5431.i.1, %.lr.ph903.i ] ; 2 uses
  %.3482899.i = phi i32 [ %.1480.i, %.lr.ph903.i.preheader.new ], [ %i.bz, %.lr.ph903.i ] ; 5 uses
  %niter684 = phi i32 [ 0, %.lr.ph903.i.preheader.new ], [ %niter684.next.1, %.lr.ph903.i ]
  %i.bu = icmp slt i32 %.3482899.i, 9
  %i.bv = mul i32 %.4430900.i, 10
  %i.bw = mul i32 %.4424901.i, 10
  %.5431.i = select i1 %i.bu, i32 %i.bv, i32 %.4430900.i ; 2 uses
  %i.bx = add i32 %.3482899.i, -17
  %i.by = icmp ult i32 %i.bx, -8
  %.5425.i = select i1 %i.by, i32 %.4424901.i, i32 %i.bw ; 2 uses
  %i.bz = add nsw i32 %.3482899.i, 2              ; 2 uses
  %i.ca = icmp slt i32 %.3482899.i, 8
  %i.cb = mul i32 %.5431.i, 10
  %i.cc = mul i32 %.5425.i, 10
  %.5431.i.1 = select i1 %i.ca, i32 %i.cb, i32 %.5431.i ; 3 uses
  %i.cd = add i32 %.3482899.i, -16
  %i.ce = icmp ult i32 %i.cd, -8
  %.5425.i.1 = select i1 %i.ce, i32 %.5425.i, i32 %i.cc ; 3 uses
  %niter684.next.1 = add nuw nsw i32 %niter684, 2 ; 2 uses
  %niter684.ncmp.1 = icmp eq i32 %niter684.next.1, %unroll_iter683
  br i1 %niter684.ncmp.1, label %._crit_edge904.loopexit.i.unr-lcssa, label %.lr.ph903.i, !llvm.loop !23

._crit_edge904.loopexit.i.unr-lcssa:              ; preds = %.lr.ph903.i
  %lcmp.mod679.not = icmp eq i32 %xtraiter677, 0
  br i1 %lcmp.mod679.not, label %._crit_edge904.loopexit.i, label %.lr.ph903.i.epil.preheader

.lr.ph903.i.epil.preheader:                       ; preds = %._crit_edge904.loopexit.i.unr-lcssa, %.lr.ph903.i.preheader
  %.4424901.i.epil.init = phi i32 [ %.2422.i, %.lr.ph903.i.preheader ], [ %.5425.i.1, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %.4430900.i.epil.init = phi i32 [ %.2428.i, %.lr.ph903.i.preheader ], [ %.5431.i.1, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %.3482899.i.epil.init = phi i32 [ %.1480.i, %.lr.ph903.i.preheader ], [ %i.bz, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod682 = trunc i32 %.1468.i to i1
  call void @llvm.assume(i1 %lcmp.mod682)
  %i.cf = icmp slt i32 %.3482899.i.epil.init, 9
  %i.cg = mul i32 %.4430900.i.epil.init, 10
  %i.ch = mul i32 %.4424901.i.epil.init, 10
  %.5431.i.epil = select i1 %i.cf, i32 %i.cg, i32 %.4430900.i.epil.init
  %i.ci = add i32 %.3482899.i.epil.init, -17
  %i.cj = icmp ult i32 %i.ci, -8
  %.5425.i.epil = select i1 %i.cj, i32 %.4424901.i.epil.init, i32 %i.ch
  br label %._crit_edge904.loopexit.i

._crit_edge904.loopexit.i:                        ; preds = %._crit_edge904.loopexit.i.unr-lcssa, %.lr.ph903.i.epil.preheader
  %.5431.i.lcssa = phi i32 [ %.5431.i.1, %._crit_edge904.loopexit.i.unr-lcssa ], [ %.5431.i.epil, %.lr.ph903.i.epil.preheader ]
  %.5425.i.lcssa = phi i32 [ %.5425.i.1, %._crit_edge904.loopexit.i.unr-lcssa ], [ %.5425.i.epil, %.lr.ph903.i.epil.preheader ]
  %i.ck = add i32 %.1468.i, %.1480.i
  br label %._crit_edge904.i

._crit_edge904.i:                                 ; preds = %._crit_edge904.loopexit.i, %bb.l
  %.3482.lcssa.i = phi i32 [ %.1480.i, %bb.l ], [ %i.ck, %._crit_edge904.loopexit.i ] ; 3 uses
  %.4430.lcssa.i = phi i32 [ %.2428.i, %bb.l ], [ %.5431.i.lcssa, %._crit_edge904.loopexit.i ] ; 3 uses
  %.4424.lcssa.i = phi i32 [ %.2422.i, %bb.l ], [ %.5425.i.lcssa, %._crit_edge904.loopexit.i ] ; 3 uses
  %i.cl = add nsw i32 %.3482.lcssa.i, 1           ; 3 uses
  %i.cm = icmp slt i32 %.3482.lcssa.i, 9
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge904.i.thread, %._crit_edge904.i
  %i.cn = phi i32 [ 1, %._crit_edge904.i.thread ], [ %i.cl, %._crit_edge904.i ]
  %.4424.lcssa.i62 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.4424.lcssa.i, %._crit_edge904.i ]
  %.4430.lcssa.i61 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.4430.lcssa.i, %._crit_edge904.i ]
  %i.co = phi i32 [ %i.bq, %._crit_edge904.i.thread ], [ %i.bj, %._crit_edge904.i ]
  %.1444.i274360 = phi ptr [ %.5451.lcssa.i, %._crit_edge904.i.thread ], [ %.0443.i, %._crit_edge904.i ]
  %.7453.i254459 = phi ptr [ %.5451.lcssa.i, %._crit_edge904.i.thread ], [ %.6452.i, %._crit_edge904.i ]
  %.sroa.0.1.i204558 = phi i32 [ %i.bo, %._crit_edge904.i.thread ], [ %.sroa.0.0.i, %._crit_edge904.i ]
  %.sroa.6.1.i184657 = phi i32 [ %i.bp, %._crit_edge904.i.thread ], [ %.sroa.6.0.i, %._crit_edge904.i ]
  %.0479.lcssa115711741184.i164756 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.0479.lcssa115711741185.i, %._crit_edge904.i ]
  %i.cp = phi i32 [ 1, %._crit_edge904.i.thread ], [ %i.bi, %._crit_edge904.i ]
  %i.cq = phi i32 [ %i.br, %._crit_edge904.i.thread ], [ %i.bs, %._crit_edge904.i ]
  %i.cr = mul i32 %.4430.lcssa.i61, 10
  %i.cs = add i32 %i.cr, %i.co
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge904.i
  %i.ct = icmp samesign ult i32 %.3482.lcssa.i, 17
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cu = mul i32 %.4424.lcssa.i, 10
  %i.cv = add i32 %i.cu, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.1444.i28 = phi ptr [ %.0443.i, %bb.k ], [ %.0443.i, %bb.n ], [ %.0443.i, %bb.o ], [ %.1444.i274360, %bb.m ]
  %.7453.i26 = phi ptr [ %.6452.i, %bb.k ], [ %.6452.i, %bb.n ], [ %.6452.i, %bb.o ], [ %.7453.i254459, %bb.m ]
  %.sroa.0.1.i21 = phi i32 [ %.sroa.0.0.i, %bb.k ], [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0.0.i, %bb.o ], [ %.sroa.0.1.i204558, %bb.m ]
  %.sroa.6.1.i19 = phi i32 [ %.sroa.6.0.i, %bb.k ], [ %.sroa.6.0.i, %bb.n ], [ %.sroa.6.0.i, %bb.o ], [ %.sroa.6.1.i184657, %bb.m ]
  %.0479.lcssa115711741184.i17 = phi i32 [ %.0479.lcssa115711741185.i, %bb.k ], [ %.0479.lcssa115711741185.i, %bb.n ], [ %.0479.lcssa115711741185.i, %bb.o ], [ %.0479.lcssa115711741184.i164756, %bb.m ]
  %i.cw = phi i32 [ %i.bi, %bb.k ], [ %i.bi, %bb.n ], [ %i.bi, %bb.o ], [ %i.cp, %bb.m ]
  %.4483.i = phi i32 [ %.1480.i, %bb.k ], [ %i.cl, %bb.n ], [ %i.cl, %bb.o ], [ %i.cn, %bb.m ]
  %.2474.i = phi i32 [ %.0472.i, %bb.k ], [ %i.bs, %bb.n ], [ %i.bs, %bb.o ], [ %i.cq, %bb.m ]
  %.3470.i = phi i32 [ %i.bl, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.3464.i = phi i32 [ %.1462.i, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.7433.i = phi i32 [ %.2428.i, %bb.k ], [ %.4430.lcssa.i, %bb.n ], [ %.4430.lcssa.i, %bb.o ], [ %i.cs, %bb.m ]
  %.7.i = phi i32 [ %.2422.i, %bb.k ], [ %.4424.lcssa.i, %bb.n ], [ %i.cv, %bb.o ], [ %.4424.lcssa.i62, %bb.m ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.7453.i26, i64 1
  br label %bb.j, !llvm.loop !24

bb.q:                                             ; preds = %bb.j, %._crit_edge893.i, %.critedge.thread.i, %.critedge.i
  %.0479.lcssa11571173.i = phi i32 [ %.0479.lcssa115711741185.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.sroa.12.0.i = phi i32 [ %i.bi, %bb.j ], [ 1, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.6.2.i = phi i32 [ %.sroa.6.0.i, %bb.j ], [ 1, %._crit_edge893.i ], [ %4, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.0.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %4, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.3509.i = phi i32 [ %.1507.i, %bb.j ], [ %.0506.lcssa.i, %._crit_edge893.i ], [ %i.ag, %.critedge.i ], [ %i.r, %.critedge.thread.i ]
  %.5484.i = phi i32 [ %.1480.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 14 uses
  %.3475.i = phi i32 [ %.0472.i, %bb.j ], [ 0, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.4471.i = phi i32 [ %.1468.i, %bb.j ], [ %.0467.lcssa.i, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.4465.i = phi i32 [ %.1462.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.0461.lcssa.i.ph, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.8454.i = phi ptr [ %.6452.i, %bb.j ], [ %.5451.lcssa.i, %._crit_edge893.i ], [ %i.ae, %.critedge.i ], [ %.3449.i, %.critedge.thread.i ] ; 7 uses
  %.2445.i = phi ptr [ %.0443.i, %bb.j ], [ %.3449.i, %._crit_edge893.i ], [ %.3449.i, %.critedge.i ], [ %.3449.i, %.critedge.thread.i ] ; 15 uses
  %.8434.i = phi i32 [ %.2428.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.1427.i, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 5 uses
  %.8.i = phi i32 [ %.2422.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.1421.i, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %i.cy = and i32 %.3509.i, -33
  %or.cond3.i = icmp eq i32 %i.cy, 69
  br i1 %or.cond3.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cz = icmp ne i32 %.5484.i, 0
  %i.da = icmp ne i32 %.4471.i, 0
  %or.cond5.i = select i1 %i.cz, i1 true, i1 %i.da
  %or.cond7.i = or i1 %i.n, %or.cond5.i
  br i1 %or.cond7.i, label %bb.s, label %.loopexit750.i

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %.8454.i, i64 1 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.dc, label %bb.v [
    i8 45, label %bb.t
    i8 43, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dd = phi i1 [ false, %bb.t ], [ true, %bb.s ]
  %i.de = getelementptr inbounds nuw i8, ptr %.8454.i, i64 2 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.4510.in.i = phi i8 [ %i.dc, %bb.s ], [ %i.df, %bb.u ] ; 3 uses
  %.1500.i = phi i1 [ true, %bb.s ], [ %i.dd, %bb.u ]
  %.9455.i = phi ptr [ %i.db, %bb.s ], [ %i.de, %bb.u ] ; 2 uses
  %i.dg = add i8 %.4510.in.i, -48
  %or.cond9.i = icmp ult i8 %i.dg, 10
  br i1 %or.cond9.i, label %.preheader746.i, label %bb.x

.preheader746.i:                                  ; preds = %bb.v
  %i.dh = icmp eq i8 %.4510.in.i, 48
  br i1 %i.dh, label %.lr.ph909.i, label %._crit_edge910.i

.lr.ph909.i:                                      ; preds = %.preheader746.i, %.lr.ph909.i
  %.10456908.i = phi ptr [ %i.di, %.lr.ph909.i ], [ %.9455.i, %.preheader746.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.10456908.i, i64 1 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !19  ; 2 uses
  %i.dk = icmp eq i8 %i.dj, 48
  br i1 %i.dk, label %.lr.ph909.i, label %._crit_edge910.i, !llvm.loop !25

._crit_edge910.i:                                 ; preds = %.lr.ph909.i, %.preheader746.i
  %.5511.in.lcssa.i = phi i8 [ %.4510.in.i, %.preheader746.i ], [ %i.dj, %.lr.ph909.i ] ; 2 uses
  %.10456.lcssa.i = phi ptr [ %.9455.i, %.preheader746.i ], [ %i.di, %.lr.ph909.i ] ; 3 uses
  %i.dl = add i8 %.5511.in.lcssa.i, -49
  %or.cond11.i = icmp ult i8 %i.dl, 9
  br i1 %or.cond11.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge910.i
  %narrow.i = add nsw i8 %.5511.in.lcssa.i, -48
  %i.dm = zext nneg i8 %narrow.i to i32           ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.10456.lcssa.i, i64 1 ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !19  ; 2 uses
  %i.dp = add i8 %i.do, -48
  %i.dq = icmp ult i8 %i.dp, 10
  br i1 %i.dq, label %.lr.ph915.i, label %._crit_edge916.i

.lr.ph915.i:                                      ; preds = %bb.w, %.lr.ph915.i
  %i.dr = phi i8 [ %i.dy, %.lr.ph915.i ], [ %i.do, %bb.w ]
  %i.ds = phi ptr [ %i.dx, %.lr.ph915.i ], [ %i.dn, %bb.w ]
  %.0435913.i = phi i32 [ %i.dw, %.lr.ph915.i ], [ %i.dm, %bb.w ]
  %i.dt = zext nneg i8 %i.dr to i32
  %i.du = mul i32 %.0435913.i, 10
  %i.dv = add nsw i32 %i.dt, -48
  %i.dw = add i32 %i.dv, %i.du                    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !19  ; 2 uses
  %i.dz = add i8 %i.dy, -48
  %i.ea = icmp ult i8 %i.dz, 10
  br i1 %i.ea, label %.lr.ph915.i, label %._crit_edge916.loopexit.i, !llvm.loop !26

._crit_edge916.loopexit.i:                        ; preds = %.lr.ph915.i
  %i.eb = call i32 @llvm.umin.i32(i32 %i.dw, i32 19999)
  br label %._crit_edge916.i

._crit_edge916.i:                                 ; preds = %._crit_edge916.loopexit.i, %bb.w
  %.0435.lcssa.i = phi i32 [ %i.dm, %bb.w ], [ %i.eb, %._crit_edge916.loopexit.i ]
  %.lcssa861.i = phi ptr [ %i.dn, %bb.w ], [ %i.dx, %._crit_edge916.loopexit.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.lcssa861.i to i64
  %i.ed = ptrtoint ptr %.10456.lcssa.i to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = icmp sgt i64 %i.ee, 8
  %..0435.i = select i1 %i.ef, i32 19999, i32 %.0435.lcssa.i ; 2 uses
  %i.eg = sub nsw i32 0, %..0435.i
  %spec.select606.i = select i1 %.1500.i, i32 %..0435.i, i32 %i.eg
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge916.i, %._crit_edge910.i, %bb.v, %bb.q
  %.0521.i = phi ptr [ %.8454.i, %bb.v ], [ %.8454.i, %._crit_edge916.i ], [ %0, %bb.q ], [ %.8454.i, %._crit_edge910.i ]
  %.1504.i = phi i32 [ 0, %bb.v ], [ %spec.select606.i, %._crit_edge916.i ], [ 0, %bb.q ], [ 0, %._crit_edge910.i ]
  %.12.i = phi ptr [ %.8454.i, %bb.v ], [ %.lcssa861.i, %._crit_edge916.i ], [ %.8454.i, %bb.q ], [ %.10456.lcssa.i, %._crit_edge910.i ] ; 9 uses
  %.not556.i = icmp eq i32 %.5484.i, 0
  br i1 %.not556.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = icmp ne i32 %.4471.i, 0
  %or.cond15.i = or i1 %i.n, %i.eh                ; 2 uses
  %spec.select607.i = select i1 %or.cond15.i, i32 %.1459.i, i32 0
  %spec.select608.i = select i1 %or.cond15.i, ptr %.12.i, ptr %.0521.i
  br label %.loopexit750.i

bb.z:                                             ; preds = %bb.x
  %i.ei = sub nsw i32 %.1504.i, %.3475.i          ; 12 uses
  %.not557.i = icmp eq i32 %.0479.lcssa11571173.i, 0
  %spec.select597.i = select i1 %.not557.i, i32 %.5484.i, i32 %.0479.lcssa11571173.i ; 6 uses
  %i.ej = call i32 @llvm.smin.i32(i32 %.5484.i, i32 17) ; 2 uses
  %i.ek = uitofp i32 %.8434.i to double           ; 4 uses
  store double %i.ek, ptr %2, align 8, !tbaa !19
  %i.el = icmp sgt i32 %.5484.i, 9
  %i.em = bitcast double %i.ek to i64             ; 2 uses
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = trunc i64 %i.em to i32
  br i1 %i.el, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.eq = zext nneg i32 %i.ej to i64
  %i.er = getelementptr [8 x i8], ptr @tens, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 -72
  %i.et = load double, ptr %i.es, align 8, !tbaa !27
  %i.eu = uitofp i32 %.8.i to double
  %i.ev = call double @llvm.fmuladd.f64(double %i.et, double %i.ek, double %i.eu) ; 4 uses
  store double %i.ev, ptr %2, align 8, !tbaa !19
  %i.ew = icmp samesign ult i32 %.5484.i, 16
  %i.ex = bitcast double %i.ev to i64             ; 2 uses
  %i.ey = lshr i64 %i.ex, 32
  %i.ez = trunc nuw i64 %i.ey to i32              ; 2 uses
  %i.fa = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ew, label %.thread.i, label %bb.aj

.thread.i:                                        ; preds = %bb.aa, %bb.z
  %i.fb = phi i32 [ %i.eo, %bb.z ], [ %i.ez, %bb.aa ] ; 3 uses
  %i.fc = phi i32 [ %i.ep, %bb.z ], [ %i.fa, %bb.aa ] ; 3 uses
  %i.fd = phi double [ %i.ek, %bb.z ], [ %i.ev, %bb.aa ] ; 6 uses
  %i.fe = call i32 @llvm.get.rounding()
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %.thread.i
  %.not558.i = icmp eq i32 %i.ei, 0
  br i1 %.not558.i, label %.loopexit750.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = icmp sgt i32 %i.ei, 0
  br i1 %i.fg, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.fh = icmp samesign ult i32 %i.ei, 23
  br i1 %i.fh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fi = zext nneg i32 %i.ei to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !27
  %i.fl = fmul double %i.fd, %i.fk
  store double %i.fl, ptr %2, align 8, !tbaa !19
  br label %.loopexit750.i

bb.af:                                            ; preds = %bb.ad
  %i.fm = sub i32 37, %.5484.i
  %.not559.i = icmp sgt i32 %i.ei, %i.fm
  br i1 %.not559.i, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = sub nsw i32 15, %.5484.i                ; 2 uses
  %i.fo = sub nsw i32 %i.ei, %i.fn
  %i.fp = zext nneg i32 %i.fn to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !27
  %i.fs = fmul double %i.fd, %i.fr
  %i.ft = sext i32 %i.fo to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr @tens, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !27
  %i.fw = fmul double %i.fs, %i.fv
  store double %i.fw, ptr %2, align 8, !tbaa !19
  br label %.loopexit750.i

bb.ah:                                            ; preds = %bb.ac
  %i.fx = icmp samesign ugt i32 %i.ei, -23
  br i1 %i.fx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fy = sub nsw i32 0, %i.ei
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !27
  %i.gc = fdiv double %i.fd, %i.gb
  store double %i.gc, ptr %2, align 8, !tbaa !19
  br label %.loopexit750.i

end_hunk_0
