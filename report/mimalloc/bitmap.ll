Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/bitmap?download=true
inline.NumInlined: 201
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 40
begin_hunk_0_@mi_bchunks_unsafe_setN:bb.a

bb.i:                                             ; preds = %mi_bchunk_setN.exit
  %i.am = icmp samesign ult i64 %spec.select, 65
  br i1 %i.am, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = lshr i64 %i.b, 6                        ; 2 uses
  %i.ao = and i64 %2, 63                          ; 4 uses
  %i.ap = add nuw nsw i64 %spec.select, %i.ao
  %i.aq = icmp samesign ult i64 %i.ap, 65
  br i1 %i.aq, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an
  %.not.i40 = icmp eq i64 %spec.select, 64
  %notmask.i.i.i41 = shl nsw i64 -1, %spec.select
  %i.as = xor i64 %notmask.i.i.i41, -1
  %i.at = select i1 %.not.i40, i64 -1, i64 %i.as
  %i.au = shl i64 %i.at, %i.ao
  %i.av = atomicrmw or ptr %i.ar, i64 %i.au acq_rel, align 8 ; 0 uses
  br label %mi_bchunk_setN.exit43

bb.l:                                             ; preds = %bb.j
  %i.aw = sub nuw nsw i64 64, %i.ao               ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %notmask.i23.i.i36 = shl nsw i64 -1, %i.aw
  %i.ay = xor i64 %notmask.i23.i.i36, -1
  %i.az = shl i64 %i.ay, %i.ao
  %i.ba = atomicrmw or ptr %i.ax, i64 %i.az acq_rel, align 8 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = sub nuw nsw i64 %spec.select, %i.aw
  %notmask.i26.i.i38 = shl nsw i64 -1, %i.bc
  %i.bd = xor i64 %notmask.i26.i.i38, -1
  %i.be = atomicrmw or ptr %i.bb, i64 %i.bd acq_rel, align 8 ; 0 uses
  br label %mi_bchunk_setN.exit43

bb.m:                                             ; preds = %bb.i
  %i.bf = tail call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef %i.af, i64 noundef range(i64 0, 36028797018963968) %i.b, i64 noundef %spec.select, ptr noundef null, ptr noundef null) #15 ; 0 uses
  br label %mi_bchunk_setN.exit43

mi_bchunk_setN.exit43:                            ; preds = %bb.h, %bb.k, %bb.l, %bb.m
  %i.bg = add nuw nsw i64 %i.a, 1                 ; 3 uses
  %i.bh = sub nuw i64 %3, %spec.select            ; 3 uses
  %i.bi = lshr i64 %i.bh, 9                       ; 3 uses
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %mi_bchunk_setN.exit43
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bi, 6                ; 3 uses
  %i.bl = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !8
  %.not.i44 = icmp ugt i64 %i.bk, %i.bl
  br i1 %.not.i44, label %bb.p, label %bb.o, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.bm = tail call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 -1, 1) -1, ptr nonnull %i.bj, i64 range(i64 64, 2305843009213694337) %i.bk) #14, !srcloc !11 ; 0 uses
  br label %_mi_memset.exit

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, i8 -1, i64 range(i64 64, 2305843009213694337) %i.bk, i1 false)
  br label %_mi_memset.exit

_mi_memset.exit:                                  ; preds = %bb.o, %bb.p
  %i.bn = add nuw nsw i64 %i.bi, %i.bg
  %i.bo = and i64 %i.bh, 511
  br label %bb.q

bb.q:                                             ; preds = %_mi_memset.exit, %mi_bchunk_setN.exit43
  %.030 = phi i64 [ %i.bo, %_mi_memset.exit ], [ %i.bh, %mi_bchunk_setN.exit43 ] ; 6 uses
  %.029 = phi i64 [ %i.bn, %_mi_memset.exit ], [ %i.bg, %mi_bchunk_setN.exit43 ]
  %.not34 = icmp eq i64 %.030, 0
  br i1 %.not34, label %mi_bchunk_setN.exit52, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.029 ; 3 uses
  %i.bq = icmp eq i64 %.030, 1
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = atomicrmw or ptr %i.bp, i64 1 acq_rel, align 8 ; 0 uses
  br label %mi_bchunk_setN.exit52

bb.t:                                             ; preds = %bb.r
  %i.bs = icmp ult i64 %.030, 65
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not.i49 = icmp eq i64 %.030, 64
  %notmask.i.i.i50 = shl nsw i64 -1, %.030
  %i.bt = xor i64 %notmask.i.i.i50, -1
  %i.bu = select i1 %.not.i49, i64 -1, i64 %i.bt
  %i.bv = atomicrmw or ptr %i.bp, i64 %i.bu acq_rel, align 8 ; 0 uses
  br label %mi_bchunk_setN.exit52

bb.v:                                             ; preds = %bb.t
  %i.bw = tail call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef %i.bp, i64 noundef 0, i64 noundef %.030, ptr noundef null, ptr noundef null) #15 ; 0 uses
  br label %mi_bchunk_setN.exit52

mi_bchunk_setN.exit52:                            ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  ret void
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden zeroext i1 @mi_bitmap_setN(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 15 uses
  %i.b = load atomic i64, ptr %0 monotonic, align 64
  %i.c = shl i64 %i.b, 9                          ; 3 uses
  %i.d = add i64 %2, %1
  %i.e = icmp ugt i64 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %i.c, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.034 = phi i64 [ %i.f, %bb.c ], [ %2, %bb.a ]  ; 4 uses
  %.not3840 = icmp eq i64 %.034, 0
  br i1 %.not3840, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.g = and i64 %1, 511                          ; 5 uses
  %i.h = lshr i64 %1, 9                           ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = add i64 %i.g, %.034
  %i.l = icmp ugt i64 %i.k, 512
  %i.m = sub nuw nsw i64 512, %i.g
  %i.n = select i1 %i.l, i64 %i.m, i64 %.034      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp ult i64 %i.n, 65
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.o, i64 noundef range(i64 0, 36028797018963968) %i.g, i64 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef null) #15
  %.pre = load i64, ptr %i.a, align 8, !tbaa !8
  br label %mi_bchunk_setN.exit.peel

bb.g:                                             ; preds = %bb.e
  %i.s = lshr i64 %i.g, 6                         ; 2 uses
  %i.t = and i64 %1, 63                           ; 4 uses
  %i.u = add nuw nsw i64 %i.n, %i.t
  %i.v = icmp samesign ult i64 %i.u, 65
  br i1 %i.v, label %bb.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.w = sub nuw nsw i64 64, %i.t                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = sub nuw nsw i64 %i.n, %i.w
  %notmask.i23.i.i.peel = shl nsw i64 -1, %i.w
  %notmask.i26.i.i.peel = shl nsw i64 -1, %i.z
  %i.aa = xor i64 %notmask.i23.i.i.peel, -1
  %i.ab = shl i64 %i.aa, %i.t                     ; 2 uses
  %i.ac = xor i64 %notmask.i26.i.i.peel, -1       ; 2 uses
  %i.ad = atomicrmw or ptr %i.x, i64 %i.ab acq_rel, align 8
  %i.ae = atomicrmw or ptr %i.y, i64 %i.ac acq_rel, align 8
  %.pre.i25.i.i.peel = and i64 %i.ad, %i.ab       ; 2 uses
  %.pre.i28.i.i.peel = and i64 %i.ae, %i.ac       ; 2 uses
  %i.af = icmp eq i64 %.pre.i25.i.i.peel, 0
  %i.ag = icmp eq i64 %.pre.i28.i.i.peel, 0
  %i.ah = insertelement <2 x i64> poison, i64 %.pre.i28.i.i.peel, i64 0
  %i.ai = insertelement <2 x i64> %i.ah, i64 %.pre.i25.i.i.peel, i64 1
  %i.aj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ai)
  %i.ak = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.aj) ; 2 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !8
  %i.al = select i1 %i.af, i1 %i.ag, i1 false
  br label %mi_bchunk_setN.exit.peel

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %.not.i.peel = icmp eq i64 %i.n, 64
  %notmask.i.i.i.peel = shl nsw i64 -1, %i.n
  %i.an = xor i64 %notmask.i.i.i.peel, -1
  %i.ao = select i1 %.not.i.peel, i64 -1, i64 %i.an
  %i.ap = shl i64 %i.ao, %i.t                     ; 2 uses
  %i.aq = atomicrmw or ptr %i.am, i64 %i.ap acq_rel, align 8
  %.pre.i.i.i.peel = and i64 %i.aq, %i.ap         ; 2 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.pre.i.i.i.peel) ; 2 uses
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !8
  %i.as = icmp eq i64 %.pre.i.i.i.peel, 0
  br label %mi_bchunk_setN.exit.peel

bb.j:                                             ; preds = %.lr.ph
  %i.at = lshr i64 %i.g, 6
  %i.au = and i64 %1, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.at
  %i.aw = shl nuw i64 1, %i.au                    ; 2 uses
  %i.ax = atomicrmw or ptr %i.av, i64 %i.aw acq_rel, align 8
  %i.ay = and i64 %i.ax, %i.aw
  %4 = icmp eq i64 %i.ay, 0                       ; 2 uses
  %not..i.i.peel = xor i1 %4, true
  %5 = zext i1 %not..i.i.peel to i64              ; 2 uses
  store i64 %5, ptr %i.a, align 8, !tbaa !8
  br label %mi_bchunk_setN.exit.peel

mi_bchunk_setN.exit.peel:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.az = phi i64 [ %.pre, %bb.f ], [ %5, %bb.j ], [ %i.ak, %bb.h ], [ %i.ar, %bb.i ] ; 2 uses
  %.0.i.peel = phi i1 [ %i.r, %bb.f ], [ %4, %bb.j ], [ %i.al, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %i.ba = lshr i64 %1, 15
  %i.bb = and i64 %i.h, 63
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ba
  %i.bd = shl nuw i64 1, %i.bb
  %i.be = atomicrmw or ptr %i.bc, i64 %i.bd acq_rel, align 8 ; 0 uses
  %i.bf = sub i64 %.034, %i.n                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not38.peel = icmp eq i64 %i.bf, 0
  br i1 %.not38.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %mi_bchunk_setN.exit.peel, %mi_bchunk_setN.exit
  %.03045 = phi i64 [ %i.bu, %mi_bchunk_setN.exit ], [ %i.az, %mi_bchunk_setN.exit.peel ]
  %.03144 = phi i1 [ %i.bt, %mi_bchunk_setN.exit ], [ %.0.i.peel, %mi_bchunk_setN.exit.peel ]
  %.03342.in = phi i64 [ %.03342, %mi_bchunk_setN.exit ], [ %i.h, %mi_bchunk_setN.exit.peel ]
  %.141 = phi i64 [ %i.ca, %mi_bchunk_setN.exit ], [ %i.bf, %mi_bchunk_setN.exit.peel ] ; 5 uses
  %.03342 = add i64 %.03342.in, 1                 ; 4 uses
  %i.bg = call i64 @llvm.umin.i64(i64 %.141, i64 512) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.03342 ; 3 uses
  %i.bi = icmp eq i64 %.141, 1
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next
  %i.bj = atomicrmw or ptr %i.bh, i64 1 acq_rel, align 8
  %i.bk = and i64 %i.bj, 1
  %6 = icmp eq i64 %i.bk, 0                       ; 2 uses
  %not..i.i = xor i1 %6, true
  %7 = zext i1 %not..i.i to i64                   ; 2 uses
  store i64 %7, ptr %i.a, align 8, !tbaa !8
  br label %mi_bchunk_setN.exit

bb.l:                                             ; preds = %.peel.next
  %i.bl = icmp ult i64 %.141, 65
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i64 %.141, 64
  %notmask.i.i.i = shl nsw i64 -1, %i.bg
  %i.bm = xor i64 %notmask.i.i.i, -1
  %i.bn = select i1 %.not.i, i64 -1, i64 %i.bm    ; 2 uses
  %i.bo = atomicrmw or ptr %i.bh, i64 %i.bn acq_rel, align 8
  %.pre.i.i.i = and i64 %i.bo, %i.bn              ; 2 uses
  %i.bp = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.pre.i.i.i) ; 2 uses
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !8
  %i.bq = icmp eq i64 %.pre.i.i.i, 0
  br label %mi_bchunk_setN.exit

bb.n:                                             ; preds = %bb.l
  %i.br = call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.bh, i64 noundef range(i64 0, 36028797018963968) 0, i64 noundef %i.bg, ptr noundef nonnull %i.a, ptr noundef null) #15
  %.pre49 = load i64, ptr %i.a, align 8, !tbaa !8
  br label %mi_bchunk_setN.exit

mi_bchunk_setN.exit:                              ; preds = %bb.k, %bb.m, %bb.n
  %i.bs = phi i64 [ %.pre49, %bb.n ], [ %7, %bb.k ], [ %i.bp, %bb.m ]
  %.0.i = phi i1 [ %i.br, %bb.n ], [ %6, %bb.k ], [ %i.bq, %bb.m ]
  %i.bt = select i1 %.0.i, i1 %.03144, i1 false   ; 2 uses
  %i.bu = add i64 %i.bs, %.03045                  ; 2 uses
  %i.bv = lshr i64 %.03342, 6
  %i.bw = and i64 %.03342, 63
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bv
  %i.by = shl nuw i64 1, %i.bw
  %i.bz = atomicrmw or ptr %i.bx, i64 %i.by acq_rel, align 8 ; 0 uses
  %i.ca = sub i64 %.141, %i.bg                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not38 = icmp eq i64 %i.ca, 0
  br i1 %.not38, label %._crit_edge, label %.peel.next, !llvm.loop !13

._crit_edge:                                      ; preds = %mi_bchunk_setN.exit, %mi_bchunk_setN.exit.peel, %bb.d
  %.031.lcssa = phi i1 [ true, %bb.d ], [ %.0.i.peel, %mi_bchunk_setN.exit.peel ], [ %i.bt, %mi_bchunk_setN.exit ] ; 2 uses
  %.030.lcssa = phi i64 [ 0, %bb.d ], [ %i.az, %mi_bchunk_setN.exit.peel ], [ %i.bu, %mi_bchunk_setN.exit ]
  %.not39 = icmp eq ptr %3, null
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  store i64 %.030.lcssa, ptr %3, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.031.lcssa, %bb.o ], [ %.031.lcssa, %._crit_edge ]
  ret i1 %.0
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden zeroext i1 @mi_bitmap_clearN(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 10 uses
  %i.b = load atomic i64, ptr %0 monotonic, align 64
  %i.c = shl i64 %i.b, 9                          ; 3 uses
  %i.d = add i64 %2, %1
  %i.e = icmp ugt i64 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %i.c, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.028 = phi i64 [ %i.f, %bb.c ], [ %2, %bb.a ]  ; 4 uses
  %.not3234 = icmp eq i64 %.028, 0
  br i1 %.not3234, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.g = and i64 %1, 511                          ; 4 uses
  %i.h = lshr i64 %1, 9                           ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = add i64 %i.g, %.028
  %i.l = icmp ugt i64 %i.k, 512
  %i.m = sub nuw nsw i64 512, %i.g
  %i.n = select i1 %i.l, i64 %i.m, i64 %.028      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !tbaa !16
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.h ; 11 uses
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %.split, label %mi_bchunk_clearN.exit.peel

.split:                                           ; preds = %.lr.ph
  %i.q = lshr i64 %i.g, 6
  %i.r = and i64 %1, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.t = shl nuw i64 1, %i.r                      ; 2 uses
  %i.u = xor i64 %i.t, -1                         ; 2 uses
  %i.v = atomicrmw and ptr %i.s, i64 %i.u acq_rel, align 8 ; 2 uses
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i64 %i.v, %i.t
  %i.z = icmp ne i64 %i.y, 0                      ; 2 uses
  br i1 %i.x, label %bb.e, label %mi_bitmap_chunkmap_try_clear.exit.peel

mi_bchunk_clearN.exit.peel:                       ; preds = %.lr.ph
  %i.aa = call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext false, ptr noundef nonnull %i.o, i64 noundef range(i64 0, 512) %i.g, i64 noundef range(i64 1, 0) %i.n, ptr noundef null, ptr noundef nonnull %i.a) #15 ; 2 uses
  %.pre = load i8, ptr %i.a, align 1, !tbaa !16, !range !18
  %i.ab = trunc nuw i8 %.pre to i1
  br i1 %i.ab, label %bb.e, label %mi_bitmap_chunkmap_try_clear.exit.peel

bb.e:                                             ; preds = %.split, %mi_bchunk_clearN.exit.peel
  %.0.i.peel47 = phi i1 [ %i.z, %.split ], [ %i.aa, %mi_bchunk_clearN.exit.peel ] ; 10 uses
  %i.ac = load atomic i64, ptr %i.o monotonic, align 8
  %.not.i.i.peel = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.peel, label %bb.f, label %mi_bitmap_chunkmap_try_clear.exit.peel

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8
  %.not.1.i.i.peel = icmp eq i64 %i.ae, 0
  br i1 %.not.1.i.i.peel, label %bb.g, label %mi_bitmap_chunkmap_try_clear.exit.peel

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8
  %.not.2.i.i.peel = icmp eq i64 %i.ag, 0
  br i1 %.not.2.i.i.peel, label %bb.h, label %mi_bitmap_chunkmap_try_clear.exit.peel

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8
  %.not.3.i.i.peel = icmp eq i64 %i.ai, 0
  br i1 %.not.3.i.i.peel, label %bb.i, label %mi_bitmap_chunkmap_try_clear.exit.peel

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj monotonic, align 8
  %.not.4.i.i.peel = icmp eq i64 %i.ak, 0
  br i1 %.not.4.i.i.peel, label %bb.j, label %mi_bitmap_chunkmap_try_clear.exit.peel

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.am = load atomic i64, ptr %i.al monotonic, align 8
  %.not.5.i.i.peel = icmp eq i64 %i.am, 0
  br i1 %.not.5.i.i.peel, label %bb.k, label %mi_bitmap_chunkmap_try_clear.exit.peel

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ao = load atomic i64, ptr %i.an monotonic, align 8
  %.not.6.i.i.peel = icmp eq i64 %i.ao, 0
  br i1 %.not.6.i.i.peel, label %mi_bchunk_all_are_clear_relaxed.exit.i.peel, label %mi_bitmap_chunkmap_try_clear.exit.peel

mi_bchunk_all_are_clear_relaxed.exit.i.peel:      ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap monotonic, align 8
  %.not.7.i.i.peel = icmp eq i64 %i.aq, 0
  br i1 %.not.7.i.i.peel, label %bb.l, label %mi_bitmap_chunkmap_try_clear.exit.peel

bb.l:                                             ; preds = %mi_bchunk_all_are_clear_relaxed.exit.i.peel
  %i.ar = lshr i64 %1, 15
  %i.as = and i64 %i.h, 63
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ar ; 2 uses
  %i.au = shl nuw i64 1, %i.as                    ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = atomicrmw and ptr %i.at, i64 %i.av acq_rel, align 8 ; 0 uses
  %i.ax = load atomic i64, ptr %i.o monotonic, align 8
  %.not.i8.i.peel = icmp eq i64 %i.ax, 0
  br i1 %.not.i8.i.peel, label %bb.m, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel

bb.m:                                             ; preds = %bb.l
  %i.ay = load atomic i64, ptr %i.ad monotonic, align 8
  %.not.1.i10.i.peel = icmp eq i64 %i.ay, 0
  br i1 %.not.1.i10.i.peel, label %bb.n, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel

bb.n:                                             ; preds = %bb.m
  %i.az = load atomic i64, ptr %i.af monotonic, align 8
  %.not.2.i11.i.peel = icmp eq i64 %i.az, 0
  br i1 %.not.2.i11.i.peel, label %bb.o, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel

bb.o:                                             ; preds = %bb.n
  %i.ba = load atomic i64, ptr %i.ah monotonic, align 8
  %.not.3.i12.i.peel = icmp eq i64 %i.ba, 0
  br i1 %.not.3.i12.i.peel, label %bb.p, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel

bb.p:                                             ; preds = %bb.o
  %i.bb = load atomic i64, ptr %i.aj monotonic, align 8
  %.not.4.i13.i.peel = icmp eq i64 %i.bb, 0
  br i1 %.not.4.i13.i.peel, label %bb.q, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel

bb.q:                                             ; preds = %bb.p
  %i.bc = load atomic i64, ptr %i.al monotonic, align 8
  %.not.5.i14.i.peel = icmp eq i64 %i.bc, 0
  br i1 %.not.5.i14.i.peel, label %bb.r, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel

bb.r:                                             ; preds = %bb.q
  %i.bd = load atomic i64, ptr %i.an monotonic, align 8
  %.not.6.i15.i.peel = icmp eq i64 %i.bd, 0
  br i1 %.not.6.i15.i.peel, label %mi_bchunk_all_are_clear_relaxed.exit17.i.peel, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel

mi_bchunk_all_are_clear_relaxed.exit17.i.peel:    ; preds = %bb.r
  %i.be = load atomic i64, ptr %i.ap monotonic, align 8
  %.not.7.i16.i.peel = icmp eq i64 %i.be, 0
  br i1 %.not.7.i16.i.peel, label %mi_bitmap_chunkmap_try_clear.exit.peel, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel

mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel: ; preds = %mi_bchunk_all_are_clear_relaxed.exit17.i.peel, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.bf = atomicrmw or ptr %i.at, i64 %i.au acq_rel, align 8 ; 0 uses
  br label %mi_bitmap_chunkmap_try_clear.exit.peel

mi_bitmap_chunkmap_try_clear.exit.peel:           ; preds = %.split, %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel, %mi_bchunk_all_are_clear_relaxed.exit17.i.peel, %mi_bchunk_all_are_clear_relaxed.exit.i.peel, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %mi_bchunk_clearN.exit.peel
  %.0.i.peel46 = phi i1 [ %i.z, %.split ], [ %.0.i.peel47, %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.peel ], [ %.0.i.peel47, %mi_bchunk_all_are_clear_relaxed.exit17.i.peel ], [ %.0.i.peel47, %mi_bchunk_all_are_clear_relaxed.exit.i.peel ], [ %.0.i.peel47, %bb.k ], [ %.0.i.peel47, %bb.j ], [ %.0.i.peel47, %bb.i ], [ %.0.i.peel47, %bb.h ], [ %.0.i.peel47, %bb.g ], [ %.0.i.peel47, %bb.f ], [ %.0.i.peel47, %bb.e ], [ %i.aa, %mi_bchunk_clearN.exit.peel ] ; 2 uses
  %i.bg = sub i64 %.028, %i.n                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not32.peel = icmp eq i64 %i.bg, 0
  br i1 %.not32.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %mi_bitmap_chunkmap_try_clear.exit.peel, %mi_bitmap_chunkmap_try_clear.exit
  %.038 = phi i1 [ %i.cw, %mi_bitmap_chunkmap_try_clear.exit ], [ %.0.i.peel46, %mi_bitmap_chunkmap_try_clear.exit.peel ] ; 2 uses
  %.02736.in = phi i64 [ %.02736, %mi_bitmap_chunkmap_try_clear.exit ], [ %i.h, %mi_bitmap_chunkmap_try_clear.exit.peel ]
  %.135 = phi i64 [ %i.cx, %mi_bitmap_chunkmap_try_clear.exit ], [ %i.bg, %mi_bitmap_chunkmap_try_clear.exit.peel ] ; 3 uses
  %.02736 = add i64 %.02736.in, 1                 ; 4 uses
  %i.bh = call i64 @llvm.umin.i64(i64 %.135, i64 512) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !tbaa !16
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.02736 ; 11 uses
  %i.bj = icmp eq i64 %.135, 1
  br i1 %i.bj, label %.split48, label %mi_bchunk_clearN.exit
end_hunk_0
begin_hunk_1_@mi_bbitmap_bsr_inv:bb.a
  %.not.i.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i.not.i, label %.critedge.1.i, label %bb.b

.critedge.1.i:                                    ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %.not.i.not.1.i = icmp eq i64 %i.h, -1
  br i1 %.not.i.not.1.i, label %.critedge.2.i, label %bb.b

.critedge.2.i:                                    ; preds = %.critedge.1.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.j = load atomic i64, ptr %i.i monotonic, align 8 ; 2 uses
  %.not.i.not.2.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.not.2.i, label %.critedge.3.i, label %bb.b

.critedge.3.i:                                    ; preds = %.critedge.2.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = load atomic i64, ptr %i.k monotonic, align 8 ; 2 uses
  %.not.i.not.3.i = icmp eq i64 %i.l, -1
  br i1 %.not.i.not.3.i, label %.critedge.4.i, label %bb.b

.critedge.4.i:                                    ; preds = %.critedge.3.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load atomic i64, ptr %i.m monotonic, align 8 ; 2 uses
  %.not.i.not.4.i = icmp eq i64 %i.n, -1
  br i1 %.not.i.not.4.i, label %.critedge.5.i, label %bb.b

.critedge.5.i:                                    ; preds = %.critedge.4.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load atomic i64, ptr %i.o monotonic, align 8 ; 2 uses
  %.not.i.not.5.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.not.5.i, label %.critedge.6.i, label %bb.b

.critedge.6.i:                                    ; preds = %.critedge.5.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load atomic i64, ptr %i.q monotonic, align 8 ; 2 uses
  %.not.i.not.6.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.not.6.i, label %.critedge.7.i, label %bb.b

.critedge.7.i:                                    ; preds = %.critedge.6.i
  %i.s = load atomic i64, ptr %i.d monotonic, align 8 ; 2 uses
  %.not.i.not.7.i = icmp eq i64 %i.s, -1
  br i1 %.not.i.not.7.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.1.i, %.critedge.2.i, %.critedge.3.i, %.critedge.4.i, %.critedge.5.i, %.critedge.6.i, %.critedge.7.i
  %.lcssa21.i = phi i64 [ 448, %.lr.ph ], [ 384, %.critedge.1.i ], [ 320, %.critedge.2.i ], [ 256, %.critedge.3.i ], [ 192, %.critedge.4.i ], [ 128, %.critedge.5.i ], [ 64, %.critedge.6.i ], [ 0, %.critedge.7.i ]
  %.lcssa.i = phi i64 [ %i.f, %.lr.ph ], [ %i.h, %.critedge.1.i ], [ %i.j, %.critedge.2.i ], [ %i.l, %.critedge.3.i ], [ %i.n, %.critedge.4.i ], [ %i.p, %.critedge.5.i ], [ %i.r, %.critedge.6.i ], [ %i.s, %.critedge.7.i ]
  %i.t = xor i64 %.lcssa.i, -1
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = or disjoint i64 %.lcssa21.i, %i.u
  %i.w = shl i64 %i.c, 9
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = xor i64 %i.x, 63
  store i64 %i.y, ptr %1, align 8, !tbaa !8
  br label %.critedge15

.critedge15:                                      ; preds = %.critedge, %bb.a, %bb.b
  %.not.not.not.not33 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %.critedge ]
  ret i1 %.not.not.not.not33
}

; Function Attrs: mustprogress nooutline norecurse nounwind willreturn uwtable
define hidden range(i32 0, 6) i32 @mi_bbitmap_debug_get_bin(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %1, 6
  %i.b = and i64 %1, 63
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.c = shl nuw i64 1, %i.b                      ; 5 uses
  %i.d = load atomic i64, ptr %invariant.gep acquire, align 8
  %i.e = and i64 %i.d, %i.c
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.f = load atomic i64, ptr %gep.1 acquire, align 8
  %i.g = and i64 %i.f, %i.c
  %.not.1 = icmp eq i64 %i.g, 0
  br i1 %.not.1, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  %i.h = load atomic i64, ptr %gep.2 acquire, align 8
  %i.i = and i64 %i.h, %i.c
  %.not.2 = icmp eq i64 %i.i, 0
  br i1 %.not.2, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %i.j = load atomic i64, ptr %gep.3 acquire, align 8
  %i.k = and i64 %i.j, %i.c
  %.not.3 = icmp eq i64 %i.k, 0
  br i1 %.not.3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 256
  %i.l = load atomic i64, ptr %gep.4 acquire, align 8
  %i.m = and i64 %i.l, %i.c
  %.not.4 = icmp eq i64 %i.m, 0
  %spec.select = select i1 %.not.4, i32 5, i32 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ 3, %bb.d ], [ 1, %bb.b ], [ %spec.select, %bb.e ], [ 2, %bb.c ]
  ret i32 %i.n
}

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @mi_bbitmap_setN(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 64
  %i.b = shl i64 %i.a, 9                          ; 3 uses
  %i.c = add i64 %2, %1
  %i.d = icmp ugt i64 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %i.b, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.029 = phi i64 [ %i.e, %bb.c ], [ %2, %bb.a ]  ; 4 uses
  %.not3233 = icmp eq i64 %.029, 0
  br i1 %.not3233, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.f = and i64 %1, 511                          ; 5 uses
  %i.g = lshr i64 %1, 9                           ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = add i64 %i.f, %.029
  %i.l = icmp ugt i64 %i.k, 512
  %i.m = sub nuw nsw i64 512, %i.f
  %i.n = select i1 %i.l, i64 %i.m, i64 %.029      ; 8 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.g ; 12 uses
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp ult i64 %i.n, 65
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.o, i64 noundef range(i64 0, 36028797018963968) %i.f, i64 noundef %i.n, ptr noundef null, ptr noundef null) #15
  br label %mi_bchunk_setN.exit.peel

bb.g:                                             ; preds = %bb.e
  %i.s = lshr i64 %i.f, 6                         ; 2 uses
  %i.t = and i64 %1, 63                           ; 4 uses
  %i.u = add nuw nsw i64 %i.n, %i.t
  %i.v = icmp samesign ult i64 %i.u, 65
  br i1 %i.v, label %bb.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.w = sub nuw nsw i64 64, %i.t                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s ; 2 uses
  %notmask.i23.i.i.peel = shl nsw i64 -1, %i.w
  %i.y = xor i64 %notmask.i23.i.i.peel, -1
  %i.z = shl i64 %i.y, %i.t                       ; 2 uses
  %i.aa = atomicrmw or ptr %i.x, i64 %i.z acq_rel, align 8
  %.pre.i25.i.i.peel = and i64 %i.aa, %i.z
  %i.ab = icmp eq i64 %.pre.i25.i.i.peel, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = sub nuw nsw i64 %i.n, %i.w
  %notmask.i26.i.i.peel = shl nsw i64 -1, %i.ad
  %i.ae = xor i64 %notmask.i26.i.i.peel, -1       ; 2 uses
  %i.af = atomicrmw or ptr %i.ac, i64 %i.ae acq_rel, align 8
  %.pre.i28.i.i.peel = and i64 %i.af, %i.ae
  %i.ag = icmp eq i64 %.pre.i28.i.i.peel, 0
  %i.ah = select i1 %i.ab, i1 %i.ag, i1 false
  br label %mi_bchunk_setN.exit.peel

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %.not.i.peel = icmp eq i64 %i.n, 64
  %notmask.i.i.i.peel = shl nsw i64 -1, %i.n
  %i.aj = xor i64 %notmask.i.i.i.peel, -1
  %i.ak = select i1 %.not.i.peel, i64 -1, i64 %i.aj
  %i.al = shl i64 %i.ak, %i.t                     ; 2 uses
  %i.am = atomicrmw or ptr %i.ai, i64 %i.al acq_rel, align 8
  %.pre.i.i.i.peel = and i64 %i.am, %i.al
  %i.an = icmp eq i64 %.pre.i.i.i.peel, 0
  br label %mi_bchunk_setN.exit.peel

bb.j:                                             ; preds = %.lr.ph
  %i.ao = lshr i64 %i.f, 6
  %i.ap = and i64 %1, 63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao
  %i.ar = shl nuw i64 1, %i.ap                    ; 2 uses
  %i.as = atomicrmw or ptr %i.aq, i64 %i.ar acq_rel, align 8
  %i.at = and i64 %i.as, %i.ar
  %i.au = icmp eq i64 %i.at, 0
  br label %mi_bchunk_setN.exit.peel

mi_bchunk_setN.exit.peel:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.0.i.peel = phi i1 [ %i.r, %bb.f ], [ %i.ah, %bb.h ], [ %i.au, %bb.j ], [ %i.an, %bb.i ] ; 2 uses
  %i.av = load atomic i64, ptr %i.o monotonic, align 8
  %.not.i.i.peel = icmp eq i64 %i.av, -1
  br i1 %.not.i.i.peel, label %bb.k, label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

bb.k:                                             ; preds = %mi_bchunk_setN.exit.peel
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8
  %.not.1.i.i.peel = icmp eq i64 %i.ax, -1
  br i1 %.not.1.i.i.peel, label %bb.l, label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.az = load atomic i64, ptr %i.ay monotonic, align 8
  %.not.2.i.i.peel = icmp eq i64 %i.az, -1
  br i1 %.not.2.i.i.peel, label %bb.m, label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8
  %.not.3.i.i.peel = icmp eq i64 %i.bb, -1
  br i1 %.not.3.i.i.peel, label %bb.n, label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %.not.4.i.i.peel = icmp eq i64 %i.bd, -1
  br i1 %.not.4.i.i.peel, label %bb.o, label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.bf = load atomic i64, ptr %i.be monotonic, align 8
  %.not.5.i.i.peel = icmp eq i64 %i.bf, -1
  br i1 %.not.5.i.i.peel, label %bb.p, label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  %.not.6.i.i.peel = icmp eq i64 %i.bh, -1
  br i1 %.not.6.i.i.peel, label %mi_bchunk_all_are_set_relaxed.exit.i.peel, label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

mi_bchunk_all_are_set_relaxed.exit.i.peel:        ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.bj = load atomic i64, ptr %i.bi monotonic, align 8
  %.not.7.i.i.peel = icmp eq i64 %i.bj, -1
  br i1 %.not.7.i.i.peel, label %bb.q, label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

bb.q:                                             ; preds = %mi_bchunk_all_are_set_relaxed.exit.i.peel
  tail call fastcc void @mi_bbitmap_set_chunk_bin(ptr noundef nonnull %0, i64 noundef %i.g, i32 noundef 5) #15
  br label %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel

mi_bchunk_all_are_set_relaxed.exit.thread.i.peel: ; preds = %bb.q, %mi_bchunk_all_are_set_relaxed.exit.i.peel, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %mi_bchunk_setN.exit.peel
  %i.bk = lshr i64 %1, 15
  %i.bl = and i64 %i.g, 63
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bk
  %i.bn = shl nuw i64 1, %i.bl
  %i.bo = atomicrmw or ptr %i.bm, i64 %i.bn acq_rel, align 8 ; 0 uses
  %i.bp = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.bq = icmp ugt i64 %i.g, %i.bp
  br i1 %i.bq, label %bb.r, label %mi_bbitmap_chunkmap_set.exit.peel, !prof !10

bb.r:                                             ; preds = %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel
  %i.br = cmpxchg ptr %i.j, i64 %i.bp, i64 %i.g monotonic monotonic, align 8 ; 0 uses
  br label %mi_bbitmap_chunkmap_set.exit.peel

mi_bbitmap_chunkmap_set.exit.peel:                ; preds = %bb.r, %mi_bchunk_all_are_set_relaxed.exit.thread.i.peel
  %i.bs = sub i64 %.029, %i.n                     ; 2 uses
  %.not32.peel = icmp eq i64 %i.bs, 0
  br i1 %.not32.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %mi_bbitmap_chunkmap_set.exit.peel, %mi_bbitmap_chunkmap_set.exit
  %.02637 = phi i1 [ %i.cf, %mi_bbitmap_chunkmap_set.exit ], [ %.0.i.peel, %mi_bbitmap_chunkmap_set.exit.peel ]
  %.02835.in = phi i64 [ %.02835, %mi_bbitmap_chunkmap_set.exit ], [ %i.g, %mi_bbitmap_chunkmap_set.exit.peel ]
  %.134 = phi i64 [ %i.dd, %mi_bbitmap_chunkmap_set.exit ], [ %i.bs, %mi_bbitmap_chunkmap_set.exit.peel ] ; 5 uses
  %.02835 = add i64 %.02835.in, 1                 ; 7 uses
  %i.bt = tail call i64 @llvm.umin.i64(i64 %.134, i64 512) ; 3 uses
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.02835 ; 11 uses
  %i.bv = icmp eq i64 %.134, 1
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.peel.next
  %i.bw = atomicrmw or ptr %i.bu, i64 1 acq_rel, align 8
  %i.bx = and i64 %i.bw, 1
  %i.by = icmp eq i64 %i.bx, 0
  br label %mi_bchunk_setN.exit

bb.t:                                             ; preds = %.peel.next
  %i.bz = icmp ult i64 %.134, 65
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not.i = icmp eq i64 %.134, 64
  %notmask.i.i.i = shl nsw i64 -1, %i.bt
  %i.ca = xor i64 %notmask.i.i.i, -1
  %i.cb = select i1 %.not.i, i64 -1, i64 %i.ca    ; 2 uses
  %i.cc = atomicrmw or ptr %i.bu, i64 %i.cb acq_rel, align 8
  %.pre.i.i.i = and i64 %i.cc, %i.cb
  %i.cd = icmp eq i64 %.pre.i.i.i, 0
  br label %mi_bchunk_setN.exit

bb.v:                                             ; preds = %bb.t
  %i.ce = tail call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.bu, i64 noundef range(i64 0, 36028797018963968) 0, i64 noundef %i.bt, ptr noundef null, ptr noundef null) #15
  br label %mi_bchunk_setN.exit

mi_bchunk_setN.exit:                              ; preds = %bb.s, %bb.u, %bb.v
  %.0.i = phi i1 [ %i.ce, %bb.v ], [ %i.cd, %bb.u ], [ %i.by, %bb.s ]
  %i.cf = select i1 %.0.i, i1 %.02637, i1 false   ; 2 uses
  %i.cg = load atomic i64, ptr %i.bu monotonic, align 8
  %.not.i.i = icmp eq i64 %i.cg, -1
  br i1 %.not.i.i, label %bb.w, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.w:                                             ; preds = %mi_bchunk_setN.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ci = load atomic i64, ptr %i.ch monotonic, align 8
  %.not.1.i.i = icmp eq i64 %i.ci, -1
  br i1 %.not.1.i.i, label %bb.x, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ck = load atomic i64, ptr %i.cj monotonic, align 8
  %.not.2.i.i = icmp eq i64 %i.ck, -1
  br i1 %.not.2.i.i, label %bb.y, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cm = load atomic i64, ptr %i.cl monotonic, align 8
  %.not.3.i.i = icmp eq i64 %i.cm, -1
  br i1 %.not.3.i.i, label %bb.z, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.co = load atomic i64, ptr %i.cn monotonic, align 8
  %.not.4.i.i = icmp eq i64 %i.co, -1
  br i1 %.not.4.i.i, label %bb.aa, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.cq = load atomic i64, ptr %i.cp monotonic, align 8
  %.not.5.i.i = icmp eq i64 %i.cq, -1
  br i1 %.not.5.i.i, label %bb.ab, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 8
  %.not.6.i.i = icmp eq i64 %i.cs, -1
  br i1 %.not.6.i.i, label %mi_bchunk_all_are_set_relaxed.exit.i, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

mi_bchunk_all_are_set_relaxed.exit.i:             ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.cu = load atomic i64, ptr %i.ct monotonic, align 8
  %.not.7.i.i = icmp eq i64 %i.cu, -1
  br i1 %.not.7.i.i, label %bb.ac, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.ac:                                            ; preds = %mi_bchunk_all_are_set_relaxed.exit.i
  tail call fastcc void @mi_bbitmap_set_chunk_bin(ptr noundef nonnull %0, i64 noundef %.02835, i32 noundef 5) #15
  br label %mi_bchunk_all_are_set_relaxed.exit.thread.i

mi_bchunk_all_are_set_relaxed.exit.thread.i:      ; preds = %bb.ac, %mi_bchunk_all_are_set_relaxed.exit.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %mi_bchunk_setN.exit
  %i.cv = lshr i64 %.02835, 6
  %i.cw = and i64 %.02835, 63
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cv
  %i.cy = shl nuw i64 1, %i.cw
  %i.cz = atomicrmw or ptr %i.cx, i64 %i.cy acq_rel, align 8 ; 0 uses
  %i.da = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.db = icmp ugt i64 %.02835, %i.da
  br i1 %i.db, label %bb.ad, label %mi_bbitmap_chunkmap_set.exit, !prof !10

bb.ad:                                            ; preds = %mi_bchunk_all_are_set_relaxed.exit.thread.i
  %i.dc = cmpxchg ptr %i.j, i64 %i.da, i64 %.02835 monotonic monotonic, align 8 ; 0 uses
  br label %mi_bbitmap_chunkmap_set.exit

mi_bbitmap_chunkmap_set.exit:                     ; preds = %mi_bchunk_all_are_set_relaxed.exit.thread.i, %bb.ad
  %i.dd = sub i64 %.134, %i.bt                    ; 2 uses
  %.not32 = icmp eq i64 %i.dd, 0
  br i1 %.not32, label %.loopexit, label %.peel.next, !llvm.loop !41

.loopexit:                                        ; preds = %mi_bbitmap_chunkmap_set.exit, %mi_bbitmap_chunkmap_set.exit.peel, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ %.0.i.peel, %mi_bbitmap_chunkmap_set.exit.peel ], [ %i.cf, %mi_bbitmap_chunkmap_set.exit ]
  ret i1 %.0
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden noundef zeroext i1 @mi_bbitmap_try_clearNC(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = lshr i64 %1, 9                           ; 5 uses
  %i.d = and i64 %1, 511                          ; 3 uses
  %i.e = add i64 %i.d, %2
  %i.f = icmp ugt i64 %i.e, 512
  br i1 %i.f, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i8 0, ptr %i.b, align 1, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.c ; 3 uses
  %i.i = icmp ult i64 %2, 65
  br i1 %i.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.d, 6                         ; 2 uses
  %i.k = and i64 %1, 63                           ; 4 uses
  %i.l = add nuw nsw i64 %i.k, %2
  %i.m = icmp samesign ult i64 %i.l, 65
  br i1 %i.m, label %bb.d, label %bb.i, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j ; 3 uses
  %.not = icmp eq i64 %2, 64
  %notmask.i.i = shl nsw i64 -1, %2
  %i.o = xor i64 %notmask.i.i, -1
  %i.p = select i1 %.not, i64 -1, i64 %i.o
  %i.q = shl i64 %i.p, %i.k                       ; 5 uses
  %i.r = load atomic i64, ptr %i.n monotonic, align 8 ; 2 uses
  %i.s = and i64 %i.r, %i.q
  %i.t = icmp eq i64 %i.s, %i.q
  br i1 %i.t, label %bb.e, label %mi_bfield_atomic_try_clear_mask_optimistic.exit.i.i.thread

bb.e:                                             ; preds = %bb.d
  %i.u = xor i64 %i.q, -1                         ; 2 uses
  %i.v = atomicrmw and ptr %i.n, i64 %i.u acq_rel, align 8 ; 4 uses
  %i.w = and i64 %i.v, %i.q                       ; 3 uses
  %i.x = icmp eq i64 %i.w, %i.q
  br i1 %i.x, label %bb.h, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %mi_bfield_atomic_try_clear_mask_optimistic.exit.i.i.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw or ptr %i.n, i64 %i.w acq_rel, align 8 ; 0 uses
  store i8 1, ptr %i.b, align 1, !tbaa !16
  br label %mi_bfield_atomic_try_clear_mask_optimistic.exit.i.i.thread

bb.h:                                             ; preds = %bb.e
  %i.z = and i64 %i.v, %i.u
  br label %mi_bfield_atomic_try_clear_mask_optimistic.exit.i.i.thread

mi_bfield_atomic_try_clear_mask_optimistic.exit.i.i.thread: ; preds = %bb.g, %bb.f, %bb.d, %bb.h
  %.0.i.i24 = phi i1 [ true, %bb.h ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  %i.aa = phi i64 [ %i.z, %bb.h ], [ %i.r, %bb.d ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  %i.ab = icmp eq i64 %i.aa, 0
  br label %mi_bchunk_try_clearN.exit

bb.i:                                             ; preds = %bb.c
  %i.ac = sub nuw nsw i64 64, %i.k                ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j ; 4 uses
  %notmask.i32.i = shl nsw i64 -1, %i.ac
  %i.ae = xor i64 %notmask.i32.i, -1
  %i.af = shl i64 %i.ae, %i.k                     ; 8 uses
  %i.ag = load atomic i64, ptr %i.ad monotonic, align 8
  %i.ah = and i64 %i.ag, %i.af
  %i.ai = icmp eq i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.j, label %mi_bbitmap_chunkmap_set.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = xor i64 %i.af, -1                       ; 2 uses
  %i.ak = atomicrmw and ptr %i.ad, i64 %i.aj acq_rel, align 8 ; 2 uses
  %i.al = and i64 %i.ak, %i.af                    ; 3 uses
  %i.am = icmp eq i64 %i.al, %i.af
  br i1 %i.am, label %bb.l, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %.not.i.i18 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i18, label %mi_bbitmap_chunkmap_set.exit, label %mi_bchunk_try_clearN.exit.thread.thread.sink.split

bb.l:                                             ; preds = %bb.j
  %i.an = and i64 %i.ak, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ap = sub nuw nsw i64 %2, %i.ac
  %notmask.i33.i = shl nsw i64 -1, %i.ap          ; 4 uses
  %i.aq = load atomic i64, ptr %i.ao monotonic, align 8
  %i.ar = or i64 %i.aq, %notmask.i33.i
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.m, label %mi_bchunk_try_clearN.exit.thread.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %i.at = xor i64 %notmask.i33.i, -1              ; 2 uses
  %i.au = atomicrmw and ptr %i.ao, i64 %notmask.i33.i acq_rel, align 8 ; 2 uses
  %i.av = and i64 %i.au, %i.at                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, %i.at
  br i1 %i.aw, label %bb.p, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %mi_bchunk_try_clearN.exit.thread.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = atomicrmw or ptr %i.ao, i64 %i.av acq_rel, align 8 ; 0 uses
  br label %mi_bchunk_try_clearN.exit.thread.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ay = and i64 %i.au, %notmask.i33.i
  %i.az = or i64 %i.ay, %i.an
  %narrow = icmp eq i64 %i.az, 0
  br label %mi_bchunk_try_clearN.exit

bb.q:                                             ; preds = %bb.b
  %i.ba = call fastcc zeroext i1 @mi_bchunk_try_clearNC(ptr noundef nonnull %i.h, i64 noundef range(i64 0, 513) %i.d, i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %.pre = load i8, ptr %i.a, align 1, !range !18
  %i.bb = trunc nuw i8 %.pre to i1
  br label %mi_bchunk_try_clearN.exit

end_hunk_1
