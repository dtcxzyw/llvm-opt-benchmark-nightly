Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/bitmap?download=true
inline.NumInlined: 201
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 40
begin_hunk_0_@mi_bchunks_unsafe_setN:bb.a
  %i.q = xor i64 %notmask.i.i.i, -1
  %i.r = select i1 %.not.i, i64 -1, i64 %i.q
  %i.s = shl i64 %i.r, %i.m
  %i.t = atomicrmw or ptr %i.p, i64 %i.s acq_rel, align 8 ; 0 uses
  br label %mi_bchunk_setN.exit

bb.f:                                             ; preds = %bb.d
  %i.u = sub nuw nsw i64 64, %i.m                 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l ; 2 uses
  %notmask.i23.i.i = shl nsw i64 -1, %i.u
  %i.w = xor i64 %notmask.i23.i.i, -1
  %i.x = shl i64 %i.w, %i.m
  %i.y = atomicrmw or ptr %i.v, i64 %i.x acq_rel, align 8 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = sub nuw nsw i64 %i.d, %i.u
  %notmask.i26.i.i = shl nsw i64 -1, %i.aa
  %i.ab = xor i64 %notmask.i26.i.i, -1
  %i.ac = atomicrmw or ptr %i.z, i64 %i.ab acq_rel, align 8 ; 0 uses
  br label %mi_bchunk_setN.exit

bb.g:                                             ; preds = %bb.c
  %i.ad = tail call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef %1, i64 noundef range(i64 0, 36028797018963968) %i.a, i64 noundef %i.d, ptr noundef null, ptr noundef null) #15 ; 0 uses
  br label %mi_bchunk_setN.exit

mi_bchunk_setN.exit:                              ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %i.ae = sub nuw nsw i64 512, %i.b
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %3) ; 8 uses
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.a ; 4 uses
  %i.ag = icmp eq i64 %spec.select, 1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %mi_bchunk_setN.exit
  %i.ah = lshr i64 %i.b, 6
  %i.ai = and i64 %2, 63
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  %i.ak = shl nuw i64 1, %i.ai
  %i.al = atomicrmw or ptr %i.aj, i64 %i.ak acq_rel, align 8 ; 0 uses
  br label %mi_bchunk_setN.exit43

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
  %i.bl = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !9
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
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp ult i64 %i.n, 65
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.o, i64 noundef range(i64 0, 36028797018963968) %i.g, i64 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef null) #15
  %.pre = load i64, ptr %i.a, align 8, !tbaa !9
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
  %4 = xor i64 %notmask.i23.i.i.peel, -1
  %5 = shl i64 %4, %i.t                           ; 2 uses
  %6 = xor i64 %notmask.i26.i.i.peel, -1          ; 2 uses
  %7 = atomicrmw or ptr %i.x, i64 %5 acq_rel, align 8
  %8 = atomicrmw or ptr %i.y, i64 %6 acq_rel, align 8
  %.pre.i25.i.i.peel = and i64 %7, %5             ; 2 uses
  %.pre.i28.i.i.peel = and i64 %8, %6             ; 2 uses
  %9 = icmp eq i64 %.pre.i25.i.i.peel, 0
  %i.aa = icmp eq i64 %.pre.i28.i.i.peel, 0
  %i.ab = insertelement <2 x i64> poison, i64 %.pre.i28.i.i.peel, i64 0
  %i.ac = insertelement <2 x i64> %i.ab, i64 %.pre.i25.i.i.peel, i64 1
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ac)
  %i.ae = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ad) ; 2 uses
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !9
  %i.af = select i1 %9, i1 %i.aa, i1 false
  br label %mi_bchunk_setN.exit.peel

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %.not.i.peel = icmp eq i64 %i.n, 64
  %notmask.i.i.i.peel = shl nsw i64 -1, %i.n
  %i.ah = xor i64 %notmask.i.i.i.peel, -1
  %i.ai = select i1 %.not.i.peel, i64 -1, i64 %i.ah
  %i.aj = shl i64 %i.ai, %i.t                     ; 2 uses
  %i.ak = atomicrmw or ptr %i.ag, i64 %i.aj acq_rel, align 8
  %.pre.i.i.i.peel = and i64 %i.ak, %i.aj         ; 2 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.pre.i.i.i.peel) ; 2 uses
  store i64 %i.al, ptr %i.a, align 8, !tbaa !9
  %i.am = icmp eq i64 %.pre.i.i.i.peel, 0
  br label %mi_bchunk_setN.exit.peel

bb.j:                                             ; preds = %.lr.ph
  %i.an = lshr i64 %i.g, 6
  %i.ao = and i64 %1, 63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.an
  %i.aq = shl nuw i64 1, %i.ao                    ; 2 uses
  %i.ar = atomicrmw or ptr %i.ap, i64 %i.aq acq_rel, align 8
  %i.as = and i64 %i.ar, %i.aq
  %i.at = icmp eq i64 %i.as, 0                    ; 2 uses
  %not..i.i.peel = xor i1 %i.at, true
  %i.au = zext i1 %not..i.i.peel to i64           ; 2 uses
  store i64 %i.au, ptr %i.a, align 8, !tbaa !9
  br label %mi_bchunk_setN.exit.peel

mi_bchunk_setN.exit.peel:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.av = phi i64 [ %.pre, %bb.f ], [ %i.au, %bb.j ], [ %i.ae, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.0.i.peel = phi i1 [ %i.r, %bb.f ], [ %i.at, %bb.j ], [ %i.af, %bb.h ], [ %i.am, %bb.i ] ; 2 uses
  %i.aw = lshr i64 %1, 15
  %i.ax = and i64 %i.h, 63
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aw
  %i.az = shl nuw i64 1, %i.ax
  %i.ba = atomicrmw or ptr %i.ay, i64 %i.az acq_rel, align 8 ; 0 uses
  %i.bb = sub i64 %.034, %i.n                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not38.peel = icmp eq i64 %i.bb, 0
  br i1 %.not38.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %mi_bchunk_setN.exit.peel, %mi_bchunk_setN.exit
  %.03045 = phi i64 [ %i.bs, %mi_bchunk_setN.exit ], [ %i.av, %mi_bchunk_setN.exit.peel ]
  %.03144 = phi i1 [ %i.br, %mi_bchunk_setN.exit ], [ %.0.i.peel, %mi_bchunk_setN.exit.peel ]
  %.03342.in = phi i64 [ %.03342, %mi_bchunk_setN.exit ], [ %i.h, %mi_bchunk_setN.exit.peel ]
  %.141 = phi i64 [ %i.by, %mi_bchunk_setN.exit ], [ %i.bb, %mi_bchunk_setN.exit.peel ] ; 5 uses
  %.03342 = add i64 %.03342.in, 1                 ; 4 uses
  %i.bc = call i64 @llvm.umin.i64(i64 %.141, i64 512) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.03342 ; 3 uses
  %i.be = icmp eq i64 %.141, 1
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next
  %i.bf = atomicrmw or ptr %i.bd, i64 1 acq_rel, align 8
  %i.bg = and i64 %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, 0                    ; 2 uses
  %not..i.i = xor i1 %i.bh, true
  %i.bi = zext i1 %not..i.i to i64                ; 2 uses
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !9
  br label %mi_bchunk_setN.exit

bb.l:                                             ; preds = %.peel.next
  %i.bj = icmp ult i64 %.141, 65
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i64 %.141, 64
  %notmask.i.i.i = shl nsw i64 -1, %i.bc
  %i.bk = xor i64 %notmask.i.i.i, -1
  %i.bl = select i1 %.not.i, i64 -1, i64 %i.bk    ; 2 uses
  %i.bm = atomicrmw or ptr %i.bd, i64 %i.bl acq_rel, align 8
  %.pre.i.i.i = and i64 %i.bm, %i.bl              ; 2 uses
  %i.bn = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.pre.i.i.i) ; 2 uses
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !9
  %i.bo = icmp eq i64 %.pre.i.i.i, 0
  br label %mi_bchunk_setN.exit

bb.n:                                             ; preds = %bb.l
  %i.bp = call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.bd, i64 noundef range(i64 0, 36028797018963968) 0, i64 noundef %i.bc, ptr noundef nonnull %i.a, ptr noundef null) #15
  %.pre49 = load i64, ptr %i.a, align 8, !tbaa !9
  br label %mi_bchunk_setN.exit

mi_bchunk_setN.exit:                              ; preds = %bb.k, %bb.m, %bb.n
  %i.bq = phi i64 [ %.pre49, %bb.n ], [ %i.bi, %bb.k ], [ %i.bn, %bb.m ]
  %.0.i = phi i1 [ %i.bp, %bb.n ], [ %i.bh, %bb.k ], [ %i.bo, %bb.m ]
  %i.br = select i1 %.0.i, i1 %.03144, i1 false   ; 2 uses
  %i.bs = add i64 %i.bq, %.03045                  ; 2 uses
  %i.bt = lshr i64 %.03342, 6
  %i.bu = and i64 %.03342, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bt
  %i.bw = shl nuw i64 1, %i.bu
  %i.bx = atomicrmw or ptr %i.bv, i64 %i.bw acq_rel, align 8 ; 0 uses
  %i.by = sub i64 %.141, %i.bc                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not38 = icmp eq i64 %i.by, 0
  br i1 %.not38, label %._crit_edge, label %.peel.next, !llvm.loop !24

._crit_edge:                                      ; preds = %mi_bchunk_setN.exit, %mi_bchunk_setN.exit.peel, %bb.d
  %.031.lcssa = phi i1 [ true, %bb.d ], [ %.0.i.peel, %mi_bchunk_setN.exit.peel ], [ %i.br, %mi_bchunk_setN.exit ] ; 2 uses
  %.030.lcssa = phi i64 [ 0, %bb.d ], [ %i.av, %mi_bchunk_setN.exit.peel ], [ %i.bs, %mi_bchunk_setN.exit ]
  %.not39 = icmp eq ptr %3, null
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  store i64 %.030.lcssa, ptr %3, align 8, !tbaa !9
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
  %.pre = load i8, ptr %i.a, align 1, !tbaa !16, !range !17
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
end_hunk_0
