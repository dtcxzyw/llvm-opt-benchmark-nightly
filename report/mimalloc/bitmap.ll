Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/bitmap?download=true
inline.NumInlined: 201
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 40
begin_hunk_0_@mi_bchunks_unsafe_setN:bb.a
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
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !9
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
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !9
  %i.as = icmp eq i64 %.pre.i.i.i.peel, 0
  br label %mi_bchunk_setN.exit.peel

bb.j:                                             ; preds = %.lr.ph
  %i.at = lshr i64 %i.g, 6
  %i.au = and i64 %1, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.at
  %i.aw = shl nuw i64 1, %i.au                    ; 2 uses
  %i.ax = atomicrmw or ptr %i.av, i64 %i.aw acq_rel, align 8
  %i.ay = and i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, 0                    ; 2 uses
  %not..i.i.peel = xor i1 %i.az, true
  %i.ba = zext i1 %not..i.i.peel to i64           ; 2 uses
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !9
  br label %mi_bchunk_setN.exit.peel

mi_bchunk_setN.exit.peel:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.bb = phi i64 [ %.pre, %bb.f ], [ %i.ba, %bb.j ], [ %i.ak, %bb.h ], [ %i.ar, %bb.i ] ; 2 uses
  %.0.i.peel = phi i1 [ %i.r, %bb.f ], [ %i.az, %bb.j ], [ %i.al, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %i.bc = lshr i64 %1, 15
  %i.bd = and i64 %i.h, 63
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bc
  %i.bf = shl nuw i64 1, %i.bd
  %i.bg = atomicrmw or ptr %i.be, i64 %i.bf acq_rel, align 8 ; 0 uses
  %i.bh = sub i64 %.034, %i.n                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not38.peel = icmp eq i64 %i.bh, 0
  br i1 %.not38.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %mi_bchunk_setN.exit.peel, %mi_bchunk_setN.exit
  %.03045 = phi i64 [ %i.bv, %mi_bchunk_setN.exit ], [ %i.bb, %mi_bchunk_setN.exit.peel ]
  %.03144 = phi i1 [ %i.bu, %mi_bchunk_setN.exit ], [ %.0.i.peel, %mi_bchunk_setN.exit.peel ]
  %.03342.in = phi i64 [ %.03342, %mi_bchunk_setN.exit ], [ %i.h, %mi_bchunk_setN.exit.peel ]
  %.141 = phi i64 [ %i.cb, %mi_bchunk_setN.exit ], [ %i.bh, %mi_bchunk_setN.exit.peel ] ; 5 uses
  %.03342 = add i64 %.03342.in, 1                 ; 4 uses
  %i.bi = call i64 @llvm.umin.i64(i64 %.141, i64 512) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.03342 ; 3 uses
  %i.bk = icmp eq i64 %.141, 1
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next
  %i.bl = atomicrmw or ptr %i.bj, i64 1 acq_rel, align 8
  %4 = and i64 %i.bl, 1
  %5 = icmp eq i64 %4, 0                          ; 2 uses
  %not..i.i = xor i1 %5, true
  %6 = zext i1 %not..i.i to i64                   ; 2 uses
  store i64 %6, ptr %i.a, align 8, !tbaa !9
  br label %mi_bchunk_setN.exit

bb.l:                                             ; preds = %.peel.next
  %i.bm = icmp ult i64 %.141, 65
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i64 %.141, 64
  %notmask.i.i.i = shl nsw i64 -1, %i.bi
  %i.bn = xor i64 %notmask.i.i.i, -1
  %i.bo = select i1 %.not.i, i64 -1, i64 %i.bn    ; 2 uses
  %i.bp = atomicrmw or ptr %i.bj, i64 %i.bo acq_rel, align 8
  %.pre.i.i.i = and i64 %i.bp, %i.bo              ; 2 uses
  %i.bq = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.pre.i.i.i) ; 2 uses
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !9
  %i.br = icmp eq i64 %.pre.i.i.i, 0
  br label %mi_bchunk_setN.exit

bb.n:                                             ; preds = %bb.l
  %i.bs = call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.bj, i64 noundef range(i64 0, 36028797018963968) 0, i64 noundef %i.bi, ptr noundef nonnull %i.a, ptr noundef null) #15
  %.pre49 = load i64, ptr %i.a, align 8, !tbaa !9
  br label %mi_bchunk_setN.exit

mi_bchunk_setN.exit:                              ; preds = %bb.k, %bb.m, %bb.n
  %i.bt = phi i64 [ %.pre49, %bb.n ], [ %6, %bb.k ], [ %i.bq, %bb.m ]
  %.0.i = phi i1 [ %i.bs, %bb.n ], [ %5, %bb.k ], [ %i.br, %bb.m ]
  %i.bu = select i1 %.0.i, i1 %.03144, i1 false   ; 2 uses
  %i.bv = add i64 %i.bt, %.03045                  ; 2 uses
  %i.bw = lshr i64 %.03342, 6
  %i.bx = and i64 %.03342, 63
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bw
  %i.bz = shl nuw i64 1, %i.bx
  %i.ca = atomicrmw or ptr %i.by, i64 %i.bz acq_rel, align 8 ; 0 uses
  %i.cb = sub i64 %.141, %i.bi                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not38 = icmp eq i64 %i.cb, 0
  br i1 %.not38, label %._crit_edge, label %.peel.next, !llvm.loop !24

._crit_edge:                                      ; preds = %mi_bchunk_setN.exit, %mi_bchunk_setN.exit.peel, %bb.d
  %.031.lcssa = phi i1 [ true, %bb.d ], [ %.0.i.peel, %mi_bchunk_setN.exit.peel ], [ %i.bu, %mi_bchunk_setN.exit ] ; 2 uses
  %.030.lcssa = phi i64 [ 0, %bb.d ], [ %i.bb, %mi_bchunk_setN.exit.peel ], [ %i.bv, %mi_bchunk_setN.exit ]
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
begin_hunk_1_@mi_bitmap_popcountN:bb.a
  %i.am = xor i64 %notmask.i.i, -1
  %i.an = select i1 %.not43, i64 -1, i64 %i.am
  %i.ao = load atomic i64, ptr %i.ah acquire, align 8
  %i.ap = and i64 %i.ao, %i.an
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ap)
  br label %mi_bchunk_popcountN.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = tail call fastcc i64 @mi_bchunk_popcountNC(ptr noundef nonnull %i.ah, i64 noundef 0, i64 noundef 0, i64 noundef range(i64 1, 0) %i.ag) #15
  br label %mi_bchunk_popcountN.exit

mi_bchunk_popcountN.exit:                         ; preds = %bb.i, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ak, %bb.i ], [ %i.aq, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = add i64 %.0.i, %.02435                  ; 2 uses
  %i.at = sub i64 %.132, %i.ag                    ; 2 uses
  %.not30 = icmp eq i64 %i.at, 0
  br i1 %.not30, label %.loopexit, label %.peel.next, !llvm.loop !26

.loopexit:                                        ; preds = %mi_bchunk_popcountN.exit, %mi_bchunk_popcountN.exit.peel, %bb.d, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %.0.i.peel, %mi_bchunk_popcountN.exit.peel ], [ %i.as, %mi_bchunk_popcountN.exit ]
  ret i64 %.0
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden zeroext i1 @mi_bitmap_set(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @mi_bitmap_setN(ptr noundef %0, i64 noundef %1, i64 noundef 1, ptr noundef null) #15
  ret i1 %i.a
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden zeroext i1 @mi_bitmap_clear(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @mi_bitmap_clearN(ptr noundef %0, i64 noundef %1, i64 noundef 1) #15
  ret i1 %i.a
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic i64, ptr %1 monotonic, align 64
  %i.b = shl i64 %i.a, 9                          ; 3 uses
  %i.c = add i64 %3, %2
  %i.d = icmp ugt i64 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %2, %i.b
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %i.b, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.029 = phi i64 [ %i.e, %bb.c ], [ %3, %bb.a ]  ; 5 uses
  %.not35 = icmp eq i64 %.029, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.f = and i64 %2, 511                          ; 3 uses
  %i.g = lshr i64 %2, 9                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.i = add i64 %i.f, %.029
  %i.j = icmp ugt i64 %i.i, 512
  %i.k = sub nuw nsw i64 512, %i.f
  %i.l = select i1 %i.j, i64 %i.k, i64 %.029      ; 11 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.g ; 6 uses
  %i.n = lshr i64 %i.f, 6                         ; 6 uses
  %i.o = and i64 %2, 63                           ; 8 uses
  %i.p = icmp eq i64 %i.l, 1                      ; 2 uses
  br i1 %0, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.preheader
  %i.q = add i64 %i.l, %i.o
  %i.r = icmp ult i64 %i.q, 65
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call fastcc zeroext i1 @mi_bchunk_is_xsetNC(i1 noundef zeroext false, ptr noundef nonnull %i.m, i64 noundef %i.n, i64 noundef %i.o, i64 noundef range(i64 1, 0) %i.l) #15
  br label %mi_bchunk_is_xsetN.exit.peel

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.u = icmp ult i64 %i.l, 64
  %notmask.i.i.peel = shl nsw i64 -1, %i.l
  %i.v = xor i64 %notmask.i.i.peel, -1
  %i.w = select i1 %i.u, i64 %i.v, i64 -1
  %i.x = shl i64 %i.w, %i.o
  %i.y = load atomic i64, ptr %i.t acquire, align 8
  %i.z = and i64 %i.y, %i.x
  %i.aa = icmp eq i64 %i.z, 0
  br label %mi_bchunk_is_xsetN.exit.peel

bb.h:                                             ; preds = %.lr.ph.split.preheader
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8
  %i.ad = shl nuw i64 1, %i.o
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = icmp eq i64 %i.ae, 0
  br label %mi_bchunk_is_xsetN.exit.peel

mi_bchunk_is_xsetN.exit.peel:                     ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.peel = phi i1 [ %i.af, %bb.h ], [ %i.aa, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %i.ag = sub i64 %.029, %i.l                     ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i1 %.0.i.peel, i1 false
  br i1 %i.ai, label %.lr.ph.split, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.p, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.preheader
  %i.aj = add i64 %i.l, %i.o
  %i.ak = icmp ult i64 %i.aj, 65
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call fastcc zeroext i1 @mi_bchunk_is_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.m, i64 noundef %i.n, i64 noundef %i.o, i64 noundef range(i64 1, 0) %i.l) #15
  br label %mi_bchunk_is_xsetN.exit.us.peel

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.an = icmp ult i64 %i.l, 64
  %notmask.i.i.us.peel = shl nsw i64 -1, %i.l
  %i.ao = xor i64 %notmask.i.i.us.peel, -1
  %i.ap = select i1 %i.an, i64 %i.ao, i64 -1
  %i.aq = shl i64 %i.ap, %i.o                     ; 2 uses
  %i.ar = load atomic i64, ptr %i.am acquire, align 8
  %i.as = and i64 %i.ar, %i.aq
  %i.at = icmp eq i64 %i.as, %i.aq
  br label %mi_bchunk_is_xsetN.exit.us.peel

bb.l:                                             ; preds = %.lr.ph.split.us.preheader
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.av = load atomic i64, ptr %i.au acquire, align 8
  %i.aw = shl nuw i64 1, %i.o
  %i.ax = and i64 %i.av, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  br label %mi_bchunk_is_xsetN.exit.us.peel

mi_bchunk_is_xsetN.exit.us.peel:                  ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.us.peel = phi i1 [ %i.ay, %bb.l ], [ %i.at, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %i.az = sub i64 %.029, %i.l                     ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = select i1 %i.ba, i1 %.0.i.us.peel, i1 false
  br i1 %i.bb, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split.us:                                  ; preds = %mi_bchunk_is_xsetN.exit.us.peel, %mi_bchunk_is_xsetN.exit.us
  %.02833.us.in = phi i64 [ %.02833.us, %mi_bchunk_is_xsetN.exit.us ], [ %i.g, %mi_bchunk_is_xsetN.exit.us.peel ]
  %.132.us = phi i64 [ %i.bn, %mi_bchunk_is_xsetN.exit.us ], [ %i.az, %mi_bchunk_is_xsetN.exit.us.peel ] ; 5 uses
  %.02833.us = add i64 %.02833.us.in, 1           ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %.132.us, i64 512) ; 3 uses
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.02833.us ; 3 uses
  %i.be = icmp eq i64 %.132.us, 1
  br i1 %i.be, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.bf = icmp ult i64 %.132.us, 65
  br i1 %i.bf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call fastcc zeroext i1 @mi_bchunk_is_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.bd, i64 noundef 0, i64 noundef 0, i64 noundef range(i64 1, 0) %i.bc) #15
  br label %mi_bchunk_is_xsetN.exit.us

bb.o:                                             ; preds = %bb.m
  %.not50 = icmp eq i64 %.132.us, 64
  %notmask.i.i.us = shl nsw i64 -1, %i.bc
  %i.bh = load atomic i64, ptr %i.bd acquire, align 8
  %i.bi = select i1 %.not50, i64 0, i64 %notmask.i.i.us
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = icmp eq i64 %i.bj, -1
  br label %mi_bchunk_is_xsetN.exit.us

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.bl = load atomic i64, ptr %i.bd acquire, align 8
  %i.bm = trunc i64 %i.bl to i1
  br label %mi_bchunk_is_xsetN.exit.us

mi_bchunk_is_xsetN.exit.us:                       ; preds = %bb.o, %bb.p, %bb.n
  %.0.i.us = phi i1 [ %i.bm, %bb.p ], [ %i.bk, %bb.o ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bn = sub i64 %.132.us, %i.bc                 ; 2 uses
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i1 %.0.i.us, i1 false
  br i1 %i.bp, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !27

.lr.ph.split:                                     ; preds = %mi_bchunk_is_xsetN.exit.peel, %mi_bchunk_is_xsetN.exit
  %.02833.in = phi i64 [ %.02833, %mi_bchunk_is_xsetN.exit ], [ %i.g, %mi_bchunk_is_xsetN.exit.peel ]
  %.132 = phi i64 [ %i.cb, %mi_bchunk_is_xsetN.exit ], [ %i.ag, %mi_bchunk_is_xsetN.exit.peel ] ; 5 uses
  %.02833 = add i64 %.02833.in, 1                 ; 2 uses
  %i.bq = tail call i64 @llvm.umin.i64(i64 %.132, i64 512) ; 3 uses
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.02833 ; 3 uses
  %i.bs = icmp eq i64 %.132, 1
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split
  %i.bt = load atomic i64, ptr %i.br acquire, align 8
  %4 = and i64 %i.bt, 1
  %5 = icmp eq i64 %4, 0
  br label %mi_bchunk_is_xsetN.exit

bb.r:                                             ; preds = %.lr.ph.split
  %i.bu = icmp ult i64 %.132, 65
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.not49 = icmp eq i64 %.132, 64
  %notmask.i.i = shl nsw i64 -1, %i.bq
  %i.bv = xor i64 %notmask.i.i, -1
  %i.bw = select i1 %.not49, i64 -1, i64 %i.bv
  %i.bx = load atomic i64, ptr %i.br acquire, align 8
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = icmp eq i64 %i.by, 0
  br label %mi_bchunk_is_xsetN.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = tail call fastcc zeroext i1 @mi_bchunk_is_xsetNC(i1 noundef zeroext false, ptr noundef nonnull %i.br, i64 noundef 0, i64 noundef 0, i64 noundef range(i64 1, 0) %i.bq) #15
  br label %mi_bchunk_is_xsetN.exit

mi_bchunk_is_xsetN.exit:                          ; preds = %bb.q, %bb.s, %bb.t
  %.0.i = phi i1 [ %5, %bb.q ], [ %i.bz, %bb.s ], [ %i.ca, %bb.t ] ; 2 uses
  %i.cb = sub i64 %.132, %i.bq                    ; 2 uses
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i1 %.0.i, i1 false
  br i1 %i.cd, label %.lr.ph.split, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %mi_bchunk_is_xsetN.exit, %mi_bchunk_is_xsetN.exit.us, %mi_bchunk_is_xsetN.exit.peel, %mi_bchunk_is_xsetN.exit.us.peel, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ %.0.i.us, %mi_bchunk_is_xsetN.exit.us ], [ %.0.i.us.peel, %mi_bchunk_is_xsetN.exit.us.peel ], [ %.0.i.peel, %mi_bchunk_is_xsetN.exit.peel ], [ %.0.i, %mi_bchunk_is_xsetN.exit ]
  ret i1 %.0
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden zeroext i1 @mi_bitmap_is_all_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 64
  %i.b = shl i64 %i.a, 9
  %i.c = tail call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext false, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.b) #15
  ret i1 %i.c
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @mi_bitmap_try_find_and_claim(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = load atomic i64, ptr %0 monotonic, align 64
  %i.d = add i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not5213.not.i = icmp eq i64 %i.e, 0
  br i1 %.not5213.not.i, label %mi_bitmap_find.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = trunc i64 %1 to i8
  %.lhs.trunc.i = and i8 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.critedge54.i, %.lr.ph.i
  %.05114.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bu, %.critedge54.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05114.i ; 4 uses
  %i.j = load atomic i64, ptr %i.i monotonic, align 8 ; 5 uses
  %.not.i.i.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.not.i, label %.critedge54.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %.rhs.trunc.i = trunc nuw nsw i64 %i.l to i8
  %i.m = urem i8 %.lhs.trunc.i, %.rhs.trunc.i
  %i.n = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.o = sub nuw nsw i64 %i.l, %i.n               ; 2 uses
  %i.p = icmp samesign ult i64 %i.o, 64
  %notmask.i.i = shl nsw i64 -1, %i.o
  %i.q = xor i64 %notmask.i.i, -1
  %i.r = select i1 %i.p, i64 %i.q, i64 -1
  %i.s = shl i64 %i.r, %i.n                       ; 2 uses
  %i.t = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.j)
  %i.u = and i64 %i.s, %i.j
  %i.v = xor i64 %i.s, -1
  %i.w = and i64 %i.j, %i.v
  %i.x = shl nuw i64 %.05114.i, 6
  br label %mi_bfield_find_least_bit.exit.i

mi_bfield_find_least_bit.exit.i:                  ; preds = %mi_bitmap_try_find_and_claim_visit.exit.i, %bb.c
  %.012.i = phi i64 [ %i.u, %bb.c ], [ %i.ac, %mi_bitmap_try_find_and_claim_visit.exit.i ] ; 2 uses
  %.04411.i = phi i64 [ %i.t, %bb.c ], [ %i.y, %mi_bitmap_try_find_and_claim_visit.exit.i ]
  %.0210.i = phi i64 [ 0, %bb.c ], [ %spec.select.i, %mi_bitmap_try_find_and_claim_visit.exit.i ]
  %i.y = add nsw i64 %.04411.i, -1                ; 2 uses
  %i.z = icmp eq i64 %.012.i, 0
  %.1.i = select i1 %i.z, i64 %i.w, i64 %.012.i   ; 4 uses
  %.not.i.i57.not.i = icmp eq i64 %.1.i, 0
  %i.aa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i, i1 true)
  %spec.select.i = select i1 %.not.i.i57.not.i, i64 %.0210.i, i64 %i.aa ; 4 uses
  %i.ab = add i64 %.1.i, -1
  %i.ac = and i64 %i.ab, %.1.i
  %i.ad = or disjoint i64 %spec.select.i, %i.x    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.ad ; 11 uses
  %i.af = call fastcc zeroext i1 @mi_bchunk_try_find_and_clear(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a) #15
  br i1 %i.af, label %bb.d, label %bb.g, !prof !12

bb.d:                                             ; preds = %mi_bfield_find_least_bit.exit.i
  %i.ag = shl i64 %i.ad, 9
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.ai = add i64 %i.ah, %i.ag                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i8 1, ptr %i.b, align 1, !tbaa !16
  %i.aj = call zeroext i1 %3(i64 noundef %i.ai, ptr noundef %4, ptr noundef nonnull %i.b) #16, !inline_history !29
  br i1 %i.aj, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.b, align 1, !tbaa !16, !range !17, !noundef !18
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.am = lshr i64 %i.ah, 6
  %i.an = and i64 %i.ah, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.am
  %i.ap = shl nuw i64 1, %i.an
  %i.aq = atomicrmw or ptr %i.ao, i64 %i.ap acq_rel, align 8 ; 0 uses
  %i.ar = shl nuw i64 1, %spec.select.i
  %i.as = atomicrmw or ptr %i.i, i64 %i.ar acq_rel, align 8 ; 0 uses
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %mi_bitmap_try_find_and_claim_visit.exit.i

bb.g:                                             ; preds = %mi_bfield_find_least_bit.exit.i
  %i.at = load atomic i64, ptr %i.ae monotonic, align 8
  %.not.i.i58.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i58.i, label %bb.h, label %mi_bitmap_try_find_and_claim_visit.exit.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.av = load atomic i64, ptr %i.au monotonic, align 8
  %.not.1.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.1.i.i.i, label %bb.i, label %mi_bitmap_try_find_and_claim_visit.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8
  %.not.2.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.2.i.i.i, label %bb.j, label %mi_bitmap_try_find_and_claim_visit.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.az = load atomic i64, ptr %i.ay monotonic, align 8
  %.not.3.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.3.i.i.i, label %bb.k, label %mi_bitmap_try_find_and_claim_visit.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8
  %.not.4.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.4.i.i.i, label %bb.l, label %mi_bitmap_try_find_and_claim_visit.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %.not.5.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.5.i.i.i, label %bb.m, label %mi_bitmap_try_find_and_claim_visit.exit.i

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.bf = load atomic i64, ptr %i.be monotonic, align 8
  %.not.6.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.6.i.i.i, label %mi_bchunk_all_are_clear_relaxed.exit.i.i, label %mi_bitmap_try_find_and_claim_visit.exit.i

mi_bchunk_all_are_clear_relaxed.exit.i.i:         ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  %.not.7.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.7.i.i.i, label %bb.n, label %mi_bitmap_try_find_and_claim_visit.exit.i

bb.n:                                             ; preds = %mi_bchunk_all_are_clear_relaxed.exit.i.i
  %i.bi = shl nuw i64 1, %spec.select.i           ; 2 uses
  %i.bj = xor i64 %i.bi, -1
  %i.bk = atomicrmw and ptr %i.i, i64 %i.bj acq_rel, align 8 ; 0 uses
  %i.bl = load atomic i64, ptr %i.ae monotonic, align 8
  %.not.i8.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i8.i.i, label %bb.o, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.i

bb.o:                                             ; preds = %bb.n
  %i.bm = load atomic i64, ptr %i.au monotonic, align 8
  %.not.1.i10.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.1.i10.i.i, label %bb.p, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.i

bb.p:                                             ; preds = %bb.o
  %i.bn = load atomic i64, ptr %i.aw monotonic, align 8
  %.not.2.i11.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.2.i11.i.i, label %bb.q, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.bo = load atomic i64, ptr %i.ay monotonic, align 8
  %.not.3.i12.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.3.i12.i.i, label %bb.r, label %mi_bchunk_all_are_clear_relaxed.exit17.thread.i.i
end_hunk_1
begin_hunk_2_@mi_bbitmap_debug_get_bin:bb.a
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
  %.02637 = phi i1 [ %i.cd, %mi_bbitmap_chunkmap_set.exit ], [ %.0.i.peel, %mi_bbitmap_chunkmap_set.exit.peel ]
  %.02835.in = phi i64 [ %.02835, %mi_bbitmap_chunkmap_set.exit ], [ %i.g, %mi_bbitmap_chunkmap_set.exit.peel ]
  %.134 = phi i64 [ %i.db, %mi_bbitmap_chunkmap_set.exit ], [ %i.bs, %mi_bbitmap_chunkmap_set.exit.peel ] ; 5 uses
  %.02835 = add i64 %.02835.in, 1                 ; 7 uses
  %i.bt = tail call i64 @llvm.umin.i64(i64 %.134, i64 512) ; 3 uses
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.02835 ; 11 uses
  %i.bv = icmp eq i64 %.134, 1
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.peel.next
  %i.bw = atomicrmw or ptr %i.bu, i64 1 acq_rel, align 8
  %3 = and i64 %i.bw, 1
  %4 = icmp eq i64 %3, 0
  br label %mi_bchunk_setN.exit

bb.t:                                             ; preds = %.peel.next
  %i.bx = icmp ult i64 %.134, 65
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not.i = icmp eq i64 %.134, 64
  %notmask.i.i.i = shl nsw i64 -1, %i.bt
  %i.by = xor i64 %notmask.i.i.i, -1
  %i.bz = select i1 %.not.i, i64 -1, i64 %i.by    ; 2 uses
  %i.ca = atomicrmw or ptr %i.bu, i64 %i.bz acq_rel, align 8
  %.pre.i.i.i = and i64 %i.ca, %i.bz
  %i.cb = icmp eq i64 %.pre.i.i.i, 0
  br label %mi_bchunk_setN.exit

bb.v:                                             ; preds = %bb.t
  %i.cc = tail call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.bu, i64 noundef range(i64 0, 36028797018963968) 0, i64 noundef %i.bt, ptr noundef null, ptr noundef null) #15
  br label %mi_bchunk_setN.exit

mi_bchunk_setN.exit:                              ; preds = %bb.s, %bb.u, %bb.v
  %.0.i = phi i1 [ %i.cc, %bb.v ], [ %i.cb, %bb.u ], [ %4, %bb.s ]
  %i.cd = select i1 %.0.i, i1 %.02637, i1 false   ; 2 uses
  %i.ce = load atomic i64, ptr %i.bu monotonic, align 8
  %.not.i.i = icmp eq i64 %i.ce, -1
  br i1 %.not.i.i, label %bb.w, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.w:                                             ; preds = %mi_bchunk_setN.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cg = load atomic i64, ptr %i.cf monotonic, align 8
  %.not.1.i.i = icmp eq i64 %i.cg, -1
  br i1 %.not.1.i.i, label %bb.x, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ci = load atomic i64, ptr %i.ch monotonic, align 8
  %.not.2.i.i = icmp eq i64 %i.ci, -1
  br i1 %.not.2.i.i, label %bb.y, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ck = load atomic i64, ptr %i.cj monotonic, align 8
  %.not.3.i.i = icmp eq i64 %i.ck, -1
  br i1 %.not.3.i.i, label %bb.z, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cm = load atomic i64, ptr %i.cl monotonic, align 8
  %.not.4.i.i = icmp eq i64 %i.cm, -1
  br i1 %.not.4.i.i, label %bb.aa, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.co = load atomic i64, ptr %i.cn monotonic, align 8
  %.not.5.i.i = icmp eq i64 %i.co, -1
  br i1 %.not.5.i.i, label %bb.ab, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.cq = load atomic i64, ptr %i.cp monotonic, align 8
  %.not.6.i.i = icmp eq i64 %i.cq, -1
  br i1 %.not.6.i.i, label %mi_bchunk_all_are_set_relaxed.exit.i, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

mi_bchunk_all_are_set_relaxed.exit.i:             ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 8
  %.not.7.i.i = icmp eq i64 %i.cs, -1
  br i1 %.not.7.i.i, label %bb.ac, label %mi_bchunk_all_are_set_relaxed.exit.thread.i

bb.ac:                                            ; preds = %mi_bchunk_all_are_set_relaxed.exit.i
  tail call fastcc void @mi_bbitmap_set_chunk_bin(ptr noundef nonnull %0, i64 noundef %.02835, i32 noundef 5) #15
  br label %mi_bchunk_all_are_set_relaxed.exit.thread.i

mi_bchunk_all_are_set_relaxed.exit.thread.i:      ; preds = %bb.ac, %mi_bchunk_all_are_set_relaxed.exit.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %mi_bchunk_setN.exit
  %i.ct = lshr i64 %.02835, 6
  %i.cu = and i64 %.02835, 63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ct
  %i.cw = shl nuw i64 1, %i.cu
  %i.cx = atomicrmw or ptr %i.cv, i64 %i.cw acq_rel, align 8 ; 0 uses
  %i.cy = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.cz = icmp ugt i64 %.02835, %i.cy
  br i1 %i.cz, label %bb.ad, label %mi_bbitmap_chunkmap_set.exit, !prof !10

bb.ad:                                            ; preds = %mi_bchunk_all_are_set_relaxed.exit.thread.i
  %i.da = cmpxchg ptr %i.j, i64 %i.cy, i64 %.02835 monotonic monotonic, align 8 ; 0 uses
  br label %mi_bbitmap_chunkmap_set.exit

mi_bbitmap_chunkmap_set.exit:                     ; preds = %mi_bchunk_all_are_set_relaxed.exit.thread.i, %bb.ad
  %i.db = sub i64 %.134, %i.bt                    ; 2 uses
  %.not32 = icmp eq i64 %i.db, 0
  br i1 %.not32, label %.loopexit, label %.peel.next, !llvm.loop !41

.loopexit:                                        ; preds = %mi_bbitmap_chunkmap_set.exit, %mi_bbitmap_chunkmap_set.exit.peel, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ %.0.i.peel, %mi_bbitmap_chunkmap_set.exit.peel ], [ %i.cd, %mi_bbitmap_chunkmap_set.exit ]
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
end_hunk_2
begin_hunk_3_@mi_bbitmap_chunkmap_try_clear:bb.a
  %i.ac = load atomic i64, ptr %i.j monotonic, align 8
  %.not.4.i15 = icmp eq i64 %i.ac, 0
  br i1 %.not.4.i15, label %bb.m, label %mi_bchunk_all_are_clear_relaxed.exit19.thread

bb.m:                                             ; preds = %bb.l
  %i.ad = load atomic i64, ptr %i.l monotonic, align 8
  %.not.5.i16 = icmp eq i64 %i.ad, 0
  br i1 %.not.5.i16, label %bb.n, label %mi_bchunk_all_are_clear_relaxed.exit19.thread

bb.n:                                             ; preds = %bb.m
  %i.ae = load atomic i64, ptr %i.n monotonic, align 8
  %.not.6.i17 = icmp eq i64 %i.ae, 0
  br i1 %.not.6.i17, label %mi_bchunk_all_are_clear_relaxed.exit19, label %mi_bchunk_all_are_clear_relaxed.exit19.thread

mi_bchunk_all_are_clear_relaxed.exit19:           ; preds = %bb.n
  %i.af = load atomic i64, ptr %i.p monotonic, align 8
  %.not.7.i18 = icmp eq i64 %i.af, 0
  br i1 %.not.7.i18, label %bb.o, label %mi_bchunk_all_are_clear_relaxed.exit19.thread

mi_bchunk_all_are_clear_relaxed.exit19.thread:    ; preds = %bb.n, %bb.k, %bb.m, %bb.j, %bb.i, %bb.l, %bb.h, %mi_bchunk_all_are_clear_relaxed.exit19
  %i.ag = atomicrmw or ptr %i.u, i64 %i.v acq_rel, align 8 ; 0 uses
  br label %mi_bbitmap_chunkmap_set_max.exit

bb.o:                                             ; preds = %mi_bchunk_all_are_clear_relaxed.exit19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8 ; 2 uses
  %i.aj = icmp ugt i64 %1, %i.ai
  br i1 %i.aj, label %bb.p, label %mi_bbitmap_chunkmap_set_max.exit, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.ak = cmpxchg ptr %i.ah, i64 %i.ai, i64 %1 monotonic monotonic, align 8 ; 0 uses
  br label %mi_bbitmap_chunkmap_set_max.exit

mi_bbitmap_chunkmap_set_max.exit:                 ; preds = %bb.g, %bb.d, %bb.f, %bb.c, %bb.b, %bb.e, %bb.a, %bb.p, %bb.o, %mi_bchunk_all_are_clear_relaxed.exit, %mi_bchunk_all_are_clear_relaxed.exit19.thread
  ret void
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden zeroext i1 @mi_bbitmap_is_xsetN(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic i64, ptr %1 monotonic, align 64
  %i.b = shl i64 %i.a, 9                          ; 3 uses
  %i.c = add i64 %3, %2
  %i.d = icmp ugt i64 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %2, %i.b
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %i.b, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.029 = phi i64 [ %i.e, %bb.c ], [ %3, %bb.a ]  ; 5 uses
  %.not35 = icmp eq i64 %.029, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.f = and i64 %2, 511                          ; 3 uses
  %i.g = lshr i64 %2, 9                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 3 uses
  %i.i = add i64 %i.f, %.029
  %i.j = icmp ugt i64 %i.i, 512
  %i.k = sub nuw nsw i64 512, %i.f
  %i.l = select i1 %i.j, i64 %i.k, i64 %.029      ; 11 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.g ; 6 uses
  %i.n = lshr i64 %i.f, 6                         ; 6 uses
  %i.o = and i64 %2, 63                           ; 8 uses
  %i.p = icmp eq i64 %i.l, 1                      ; 2 uses
  br i1 %0, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.preheader
  %i.q = add i64 %i.l, %i.o
  %i.r = icmp ult i64 %i.q, 65
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call fastcc zeroext i1 @mi_bchunk_is_xsetNC(i1 noundef zeroext false, ptr noundef nonnull %i.m, i64 noundef %i.n, i64 noundef %i.o, i64 noundef range(i64 1, 0) %i.l) #15
  br label %mi_bchunk_is_xsetN.exit.peel

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.u = icmp ult i64 %i.l, 64
  %notmask.i.i.peel = shl nsw i64 -1, %i.l
  %i.v = xor i64 %notmask.i.i.peel, -1
  %i.w = select i1 %i.u, i64 %i.v, i64 -1
  %i.x = shl i64 %i.w, %i.o
  %i.y = load atomic i64, ptr %i.t acquire, align 8
  %i.z = and i64 %i.y, %i.x
  %i.aa = icmp eq i64 %i.z, 0
  br label %mi_bchunk_is_xsetN.exit.peel

bb.h:                                             ; preds = %.lr.ph.split.preheader
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8
  %i.ad = shl nuw i64 1, %i.o
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = icmp eq i64 %i.ae, 0
  br label %mi_bchunk_is_xsetN.exit.peel

mi_bchunk_is_xsetN.exit.peel:                     ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.peel = phi i1 [ %i.af, %bb.h ], [ %i.aa, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %i.ag = sub i64 %.029, %i.l                     ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i1 %.0.i.peel, i1 false
  br i1 %i.ai, label %.lr.ph.split, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.p, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.preheader
  %i.aj = add i64 %i.l, %i.o
  %i.ak = icmp ult i64 %i.aj, 65
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call fastcc zeroext i1 @mi_bchunk_is_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.m, i64 noundef %i.n, i64 noundef %i.o, i64 noundef range(i64 1, 0) %i.l) #15
  br label %mi_bchunk_is_xsetN.exit.us.peel

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.an = icmp ult i64 %i.l, 64
  %notmask.i.i.us.peel = shl nsw i64 -1, %i.l
  %i.ao = xor i64 %notmask.i.i.us.peel, -1
  %i.ap = select i1 %i.an, i64 %i.ao, i64 -1
  %i.aq = shl i64 %i.ap, %i.o                     ; 2 uses
  %i.ar = load atomic i64, ptr %i.am acquire, align 8
  %i.as = and i64 %i.ar, %i.aq
  %i.at = icmp eq i64 %i.as, %i.aq
  br label %mi_bchunk_is_xsetN.exit.us.peel

bb.l:                                             ; preds = %.lr.ph.split.us.preheader
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.av = load atomic i64, ptr %i.au acquire, align 8
  %i.aw = shl nuw i64 1, %i.o
  %i.ax = and i64 %i.av, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  br label %mi_bchunk_is_xsetN.exit.us.peel

mi_bchunk_is_xsetN.exit.us.peel:                  ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.us.peel = phi i1 [ %i.ay, %bb.l ], [ %i.at, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %i.az = sub i64 %.029, %i.l                     ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = select i1 %i.ba, i1 %.0.i.us.peel, i1 false
  br i1 %i.bb, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split.us:                                  ; preds = %mi_bchunk_is_xsetN.exit.us.peel, %mi_bchunk_is_xsetN.exit.us
  %.02833.us.in = phi i64 [ %.02833.us, %mi_bchunk_is_xsetN.exit.us ], [ %i.g, %mi_bchunk_is_xsetN.exit.us.peel ]
  %.132.us = phi i64 [ %i.bn, %mi_bchunk_is_xsetN.exit.us ], [ %i.az, %mi_bchunk_is_xsetN.exit.us.peel ] ; 5 uses
  %.02833.us = add i64 %.02833.us.in, 1           ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %.132.us, i64 512) ; 3 uses
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.02833.us ; 3 uses
  %i.be = icmp eq i64 %.132.us, 1
  br i1 %i.be, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.bf = icmp ult i64 %.132.us, 65
  br i1 %i.bf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call fastcc zeroext i1 @mi_bchunk_is_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.bd, i64 noundef 0, i64 noundef 0, i64 noundef range(i64 1, 0) %i.bc) #15
  br label %mi_bchunk_is_xsetN.exit.us

bb.o:                                             ; preds = %bb.m
  %.not50 = icmp eq i64 %.132.us, 64
  %notmask.i.i.us = shl nsw i64 -1, %i.bc
  %i.bh = load atomic i64, ptr %i.bd acquire, align 8
  %i.bi = select i1 %.not50, i64 0, i64 %notmask.i.i.us
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = icmp eq i64 %i.bj, -1
  br label %mi_bchunk_is_xsetN.exit.us

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.bl = load atomic i64, ptr %i.bd acquire, align 8
  %i.bm = trunc i64 %i.bl to i1
  br label %mi_bchunk_is_xsetN.exit.us

mi_bchunk_is_xsetN.exit.us:                       ; preds = %bb.o, %bb.p, %bb.n
  %.0.i.us = phi i1 [ %i.bm, %bb.p ], [ %i.bk, %bb.o ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bn = sub i64 %.132.us, %i.bc                 ; 2 uses
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i1 %.0.i.us, i1 false
  br i1 %i.bp, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !42

.lr.ph.split:                                     ; preds = %mi_bchunk_is_xsetN.exit.peel, %mi_bchunk_is_xsetN.exit
  %.02833.in = phi i64 [ %.02833, %mi_bchunk_is_xsetN.exit ], [ %i.g, %mi_bchunk_is_xsetN.exit.peel ]
  %.132 = phi i64 [ %i.cb, %mi_bchunk_is_xsetN.exit ], [ %i.ag, %mi_bchunk_is_xsetN.exit.peel ] ; 5 uses
  %.02833 = add i64 %.02833.in, 1                 ; 2 uses
  %i.bq = tail call i64 @llvm.umin.i64(i64 %.132, i64 512) ; 3 uses
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.02833 ; 3 uses
  %i.bs = icmp eq i64 %.132, 1
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split
  %i.bt = load atomic i64, ptr %i.br acquire, align 8
  %4 = and i64 %i.bt, 1
  %5 = icmp eq i64 %4, 0
  br label %mi_bchunk_is_xsetN.exit

bb.r:                                             ; preds = %.lr.ph.split
  %i.bu = icmp ult i64 %.132, 65
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.not49 = icmp eq i64 %.132, 64
  %notmask.i.i = shl nsw i64 -1, %i.bq
  %i.bv = xor i64 %notmask.i.i, -1
  %i.bw = select i1 %.not49, i64 -1, i64 %i.bv
  %i.bx = load atomic i64, ptr %i.br acquire, align 8
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = icmp eq i64 %i.by, 0
  br label %mi_bchunk_is_xsetN.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = tail call fastcc zeroext i1 @mi_bchunk_is_xsetNC(i1 noundef zeroext false, ptr noundef nonnull %i.br, i64 noundef 0, i64 noundef 0, i64 noundef range(i64 1, 0) %i.bq) #15
  br label %mi_bchunk_is_xsetN.exit

mi_bchunk_is_xsetN.exit:                          ; preds = %bb.q, %bb.s, %bb.t
  %.0.i = phi i1 [ %5, %bb.q ], [ %i.bz, %bb.s ], [ %i.ca, %bb.t ] ; 2 uses
  %i.cb = sub i64 %.132, %i.bq                    ; 2 uses
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i1 %.0.i, i1 false
  br i1 %i.cd, label %.lr.ph.split, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %mi_bchunk_is_xsetN.exit, %mi_bchunk_is_xsetN.exit.us, %mi_bchunk_is_xsetN.exit.peel, %mi_bchunk_is_xsetN.exit.us.peel, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ %.0.i.us, %mi_bchunk_is_xsetN.exit.us ], [ %.0.i.us.peel, %mi_bchunk_is_xsetN.exit.us.peel ], [ %.0.i.peel, %mi_bchunk_is_xsetN.exit.peel ], [ %.0.i, %mi_bchunk_is_xsetN.exit ]
  ret i1 %.0
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @mi_bbitmap_try_find_and_clear_generic(ptr noundef %0, i64 noundef %1, i64 noundef 1, ptr noundef %2, ptr noundef nonnull @mi_bchunk_try_find_and_clear_1) #15
  ret i1 %i.a
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_bbitmap_try_find_and_clear_generic(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = load atomic i64, ptr %0 monotonic, align 64
  %i.e = add i64 %i.d, 63                         ; 2 uses
  %i.f = lshr i64 %i.e, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = lshr i64 %i.h, 6                         ; 2 uses
  %i.j = and i64 %i.h, 63
  %i.k = add nuw nsw i64 %i.j, 1
  %i.l = icmp ult i64 %i.e, 4096
  %notmask.i = shl nsw i64 -1, %i.f
  %i.m = xor i64 %notmask.i, -1
  %i.n = select i1 %i.l, i64 %i.m, i64 -1         ; 4 uses
  %i.o = add nuw nsw i64 %i.i, 1                  ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %mi_chunkbin_of.exit
    i64 8, label %bb.b
    i64 64, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %mi_chunkbin_of.exit

bb.c:                                             ; preds = %bb.a
  br label %mi_chunkbin_of.exit

bb.d:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %2, 512
  %..i = select i1 %i.p, i32 4, i32 1
  br label %mi_chunkbin_of.exit

mi_chunkbin_of.exit:                              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ %..i, %bb.d ] ; 2 uses
  %i.q = trunc i64 %1 to i32                      ; 2 uses
  %.not135 = icmp eq i64 %i.n, 0
  br i1 %.not135, label %._crit_edge, label %mi_bfield_find_least_bit.exit.lr.ph

mi_bfield_find_least_bit.exit.lr.ph:              ; preds = %mi_chunkbin_of.exit
  %i.r = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.n)
  %i.s = trunc i64 %i.o to i32
  %i.t = urem i32 %i.q, %i.s
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = sub nsw i64 %i.o, %i.u                   ; 2 uses
  %i.w = icmp ult i64 %i.v, 64
  %notmask.i113 = shl nsw i64 -1, %i.v
  %i.x = xor i64 %notmask.i113, -1
  %i.y = select i1 %i.w, i64 %i.x, i64 -1
  %i.z = shl i64 %i.y, %i.u                       ; 2 uses
  %i.aa = and i64 %i.z, %i.n
  %i.ab = xor i64 %i.z, -1
  %i.ac = and i64 %i.n, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %mi_bfield_find_least_bit.exit

mi_bfield_find_least_bit.exit:                    ; preds = %mi_bfield_find_least_bit.exit.lr.ph, %.backedge
  %.0107138 = phi i64 [ %i.aa, %mi_bfield_find_least_bit.exit.lr.ph ], [ %i.ap, %.backedge ] ; 2 uses
  %.0109137 = phi i64 [ %i.r, %mi_bfield_find_least_bit.exit.lr.ph ], [ %i.al, %.backedge ]
  %.0124136 = phi i64 [ 0, %mi_bfield_find_least_bit.exit.lr.ph ], [ %spec.select, %.backedge ]
  %i.al = add nsw i64 %.0109137, -1               ; 2 uses
  %i.am = icmp eq i64 %.0107138, 0
  %.1108 = select i1 %i.am, i64 %i.ac, i64 %.0107138 ; 4 uses
  %.not.i.i.not = icmp eq i64 %.1108, 0
  %i.an = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1108, i1 true)
  %spec.select = select i1 %.not.i.i.not, i64 %.0124136, i64 %i.an ; 5 uses
  %i.ao = add i64 %.1108, -1
  %i.ap = and i64 %i.ao, %.1108
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %spec.select ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq monotonic, align 8 ; 7 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.backedge, label %.preheader, !llvm.loop !44

.preheader:                                       ; preds = %mi_bfield_find_least_bit.exit
  %.not111 = icmp eq i64 %spec.select, %i.i
  %i.at = select i1 %.not111, i64 %i.k, i64 64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %spec.select ; 5 uses
  %i.au = load atomic i64, ptr %invariant.gep monotonic, align 8 ; 2 uses
  %i.av = and i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.a, align 16, !tbaa !9
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.aw = load atomic i64, ptr %gep.1 monotonic, align 8 ; 2 uses
  %i.ax = and i64 %i.aw, %i.ar
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !9
  %i.ay = or i64 %i.au, %i.aw
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  %i.az = load atomic i64, ptr %gep.2 monotonic, align 8 ; 2 uses
  %i.ba = and i64 %i.az, %i.ar
  store i64 %i.ba, ptr %i.ai, align 16, !tbaa !9
  %i.bb = or i64 %i.ay, %i.az
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %i.bc = load atomic i64, ptr %gep.3 monotonic, align 8 ; 2 uses
  %i.bd = and i64 %i.bc, %i.ar
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !9
  %i.be = or i64 %i.bb, %i.bc
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 256
  %i.bf = load atomic i64, ptr %gep.4 monotonic, align 8 ; 2 uses
  %i.bg = and i64 %i.bf, %i.ar
  store i64 %i.bg, ptr %i.ak, align 16, !tbaa !9
  %i.bh = or i64 %i.be, %i.bf
  %i.bi = xor i64 %i.bh, -1
  %i.bj = and i64 %i.ar, %i.bi
  store i64 %i.bj, ptr %i.ae, align 8, !tbaa !9
  %i.bk = trunc nuw nsw i64 %i.at to i32
  %i.bl = urem i32 %i.q, %i.bk
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = sub nuw nsw i64 %i.at, %i.bm            ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bn, 64
  %notmask.i114 = shl nsw i64 -1, %i.bn
  %i.bp = xor i64 %notmask.i114, -1
  %i.bq = select i1 %i.bo, i64 %i.bp, i64 -1
  %i.br = shl i64 %i.bq, %i.bm                    ; 2 uses
  %i.bs = xor i64 %i.br, -1
  %i.bt = shl nuw nsw i64 %spec.select, 6
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge
  %.098134 = phi i32 [ 0, %.preheader ], [ %spec.select127, %.critedge ] ; 4 uses
  %i.bu = zext nneg i32 %.098134 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !9  ; 4 uses
  %.not112130 = icmp eq i64 %i.bw, 0
  br i1 %.not112130, label %.critedge, label %mi_bfield_find_least_bit.exit116.lr.ph

mi_bfield_find_least_bit.exit116.lr.ph:           ; preds = %bb.e
  %i.bx = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.bw)
  %i.by = and i64 %i.br, %i.bw
  %i.bz = and i64 %i.bw, %i.bs
  br label %mi_bfield_find_least_bit.exit116

mi_bfield_find_least_bit.exit116:                 ; preds = %mi_bfield_find_least_bit.exit116.lr.ph, %mi_bbitmap_chunkmap_set.exit
  %.0133 = phi i64 [ %i.by, %mi_bfield_find_least_bit.exit116.lr.ph ], [ %i.ce, %mi_bbitmap_chunkmap_set.exit ] ; 2 uses
  %.097132 = phi i64 [ %i.bx, %mi_bfield_find_least_bit.exit116.lr.ph ], [ %i.ca, %mi_bbitmap_chunkmap_set.exit ]
  %.0122131 = phi i64 [ 0, %mi_bfield_find_least_bit.exit116.lr.ph ], [ %spec.select126, %mi_bbitmap_chunkmap_set.exit ]
  %i.ca = add nsw i64 %.097132, -1                ; 2 uses
  %i.cb = icmp eq i64 %.0133, 0
  %.1 = select i1 %i.cb, i64 %i.bz, i64 %.0133    ; 4 uses
  %.not.i.i115.not = icmp eq i64 %.1, 0
  %i.cc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1, i1 true)
  %spec.select126 = select i1 %.not.i.i115.not, i64 %.0122131, i64 %i.cc ; 4 uses
  %i.cd = add i64 %.1, -1
  %i.ce = and i64 %i.cd, %.1
  %i.cf = or disjoint i64 %spec.select126, %i.bt  ; 7 uses
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.cf ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i8 0, ptr %i.c, align 1, !tbaa !16
  %i.ch = call zeroext i1 %4(ptr noundef nonnull %i.cg, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16, !callees !46
  br i1 %i.ch, label %bb.f, label %bb.h

end_hunk_3
begin_hunk_4_@mi_bchunk_try_clearNX:bb.a
bb.g:                                             ; preds = %mi_bfield_atomic_try_clear_mask_optimistic.exit.i
  %i.t = xor i64 %i.k, -1
  %i.u = select i1 %.0.i, i64 %i.t, i64 -1
  %i.v = and i64 %i.u, %.014.i
  %i.w = icmp eq i64 %i.v, 0
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %3, align 1, !tbaa !16
  br label %mi_bfield_atomic_try_clear_mask.exit

bb.h:                                             ; preds = %bb.a
  %i.y = sub nuw nsw i64 64, %i.d                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 3 uses
  %.not35 = icmp eq i64 %i.d, 0
  %notmask.i32 = shl nsw i64 -1, %i.y
  %i.aa = xor i64 %notmask.i32, -1
  %i.ab = select i1 %.not35, i64 -1, i64 %i.aa
  %i.ac = shl i64 %i.ab, %i.d                     ; 2 uses
  %i.ad = call fastcc zeroext i1 @mi_bfield_atomic_try_clear_mask(ptr noundef %i.z, i64 noundef %i.ac, ptr noundef nonnull %i.a, ptr noundef %4) #15
  br i1 %i.ad, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = sub nuw nsw i64 %2, %i.y
  %notmask.i33 = shl nsw i64 -1, %i.af
  %i.ag = xor i64 %notmask.i33, -1
  %i.ah = call fastcc zeroext i1 @mi_bfield_atomic_try_clear_mask(ptr noundef nonnull %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.b, ptr noundef %4) #15 ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = atomicrmw or ptr %i.z, i64 %i.ac acq_rel, align 8 ; 0 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %4, align 1, !tbaa !16
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !16, !range !17, !noundef !18
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load i8, ptr %i.b, align 1, !range !17
  %i.am = select i1 %i.ak, i8 %i.al, i8 0
  store i8 %i.am, ptr %3, align 1, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n
  %.1 = phi i1 [ %i.ah, %bb.n ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %mi_bfield_atomic_try_clear_mask.exit

mi_bfield_atomic_try_clear_mask.exit:             ; preds = %bb.g, %mi_bfield_atomic_try_clear_mask_optimistic.exit.i, %bb.o
  %.2 = phi i1 [ %.1, %bb.o ], [ %.0.i, %mi_bfield_atomic_try_clear_mask_optimistic.exit.i ], [ %.0.i, %bb.g ]
  ret i1 %.2
}

; Function Attrs: noinline nooutline norecurse nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_bchunk_try_clearNC(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 513) %1, i64 noundef range(i64 65, 0) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %3, align 1, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.a = and i64 %1, 63                           ; 3 uses
  %i.b = lshr i64 %1, 6                           ; 10 uses
  %i.c = sub nuw nsw i64 64, %i.a                 ; 2 uses
  %.not100 = icmp eq i64 %i.a, 0
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %i.e = select i1 %.not100, i64 -1, i64 %i.d
  %i.f = shl i64 %i.e, %i.a                       ; 8 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 6 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = and i64 %i.h, %i.f
  %i.j = icmp eq i64 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = xor i64 %i.f, -1                         ; 2 uses
  %i.l = atomicrmw and ptr %i.g, i64 %i.k acq_rel, align 8 ; 2 uses
  %i.m = and i64 %i.l, %i.f                       ; 3 uses
  %i.n = icmp eq i64 %i.m, %i.f
  br i1 %i.n, label %bb.h, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = atomicrmw or ptr %i.g, i64 %i.m acq_rel, align 8 ; 0 uses
  %.not21.i.i = icmp eq ptr %4, null
  br i1 %.not21.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %4, align 1, !tbaa !16
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  %i.p = and i64 %i.l, %i.k
  %i.q = icmp eq i64 %i.p, 0
  %i.r = zext i1 %i.q to i8                       ; 2 uses
  %i.s = sub nuw i64 %2, %i.c                     ; 3 uses
  %i.t = icmp ugt i64 %i.s, 63
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.047104 = phi i64 [ %i.u, %bb.i ], [ %i.b, %bb.h ]
  %.051103 = phi i64 [ %i.aa, %bb.i ], [ %i.s, %bb.h ]
  %i.u = add nuw nsw i64 %.047104, 1              ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = load atomic i64, ptr %i.v monotonic, align 8
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %mi_bfield_atomic_try_clearX.exit, label %.thread86

mi_bfield_atomic_try_clearX.exit:                 ; preds = %.lr.ph
  %i.y = cmpxchg ptr %i.v, i64 -1, i64 0 acq_rel acquire, align 8
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.i, label %.thread86

bb.i:                                             ; preds = %mi_bfield_atomic_try_clearX.exit
  %i.aa = add i64 %.051103, -64                   ; 4 uses
  %i.ab = icmp ugt i64 %i.aa, 63
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.not61 = icmp eq i64 %i.aa, 0
  br i1 %.not61, label %bb.m, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge
  %.047.lcssa127 = phi i64 [ %i.u, %._crit_edge ], [ %i.b, %bb.h ]
  %.051.lcssa126 = phi i64 [ %i.aa, %._crit_edge ], [ %i.s, %bb.h ]
  %i.ac = add i64 %.047.lcssa127, 1               ; 5 uses
  %notmask.i64 = shl nsw i64 -1, %.051.lcssa126   ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 3 uses
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8
  %i.af = or i64 %i.ae, %notmask.i64
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %bb.j, label %.thread86

bb.j:                                             ; preds = %._crit_edge.thread
  %i.ah = xor i64 %notmask.i64, -1                ; 2 uses
  %i.ai = atomicrmw and ptr %i.ad, i64 %notmask.i64 acq_rel, align 8 ; 2 uses
  %i.aj = and i64 %i.ai, %i.ah                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, %i.ah
  br i1 %i.ak, label %.thread97, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %.not.i.i67 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i67, label %.thread86, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = atomicrmw or ptr %i.ad, i64 %i.aj acq_rel, align 8 ; 0 uses
  %.not21.i.i68 = icmp eq ptr %4, null
  br i1 %.not21.i.i68, label %.thread86.thread, label %.thread86.thread131

.thread97:                                        ; preds = %bb.j
  %i.am = and i64 %i.ai, %notmask.i64
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i8 %i.r, i8 0
  br label %bb.m

bb.m:                                             ; preds = %.thread97, %._crit_edge
  %.3 = phi i8 [ %i.r, %._crit_edge ], [ %i.ao, %.thread97 ]
  br i1 %.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %.3, ptr %3, align 1, !tbaa !16
  br label %.loopexit

.thread86:                                        ; preds = %.lr.ph, %mi_bfield_atomic_try_clearX.exit, %._crit_edge.thread, %bb.k
  %.148 = phi i64 [ %i.ac, %bb.k ], [ %i.ac, %._crit_edge.thread ], [ %i.u, %mi_bfield_atomic_try_clearX.exit ], [ %i.u, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq ptr %4, null
  br i1 %.not62, label %.thread86.thread, label %.thread86.thread131

.thread86.thread131:                              ; preds = %bb.l, %.thread86
  %.148134 = phi i64 [ %.148, %.thread86 ], [ %i.ac, %bb.l ]
  store i8 1, ptr %4, align 1, !tbaa !16
  br label %.thread86.thread

.thread86.thread:                                 ; preds = %bb.l, %.thread86.thread131, %.thread86
  %.148130 = phi i64 [ %.148, %.thread86 ], [ %.148134, %.thread86.thread131 ], [ %i.ac, %bb.l ] ; 5 uses
  %i.ap = icmp ugt i64 %.148130, %i.b
  br i1 %i.ap, label %.lr.ph108.preheader, label %.loopexit

.lr.ph108.preheader:                              ; preds = %.thread86.thread
  %i.aq = sub nuw i64 %.148130, %i.b
  %.neg = add nuw nsw i64 %i.b, 1
  %xtraiter = and i64 %i.aq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph108.prol.loopexit, label %.lr.ph108.prol

.lr.ph108.prol:                                   ; preds = %.lr.ph108.preheader
  %i.ar = add i64 %.148130, -1                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, %i.b
  br i1 %i.as, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph108.prol
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar
  %i.au = atomicrmw xchg ptr %i.at, i64 -1 release, align 8 ; 0 uses
  br label %.lr.ph108.prol.loopexit

bb.p:                                             ; preds = %.lr.ph108.prol
  %i.av = atomicrmw or ptr %i.g, i64 %i.f acq_rel, align 8 ; 0 uses
  br label %.lr.ph108.prol.loopexit

.lr.ph108.prol.loopexit:                          ; preds = %bb.o, %bb.p, %.lr.ph108.preheader
  %.2106.unr = phi i64 [ %.148130, %.lr.ph108.preheader ], [ %i.ar, %bb.p ], [ %i.ar, %bb.o ]
  %i.aw = icmp eq i64 %.148130, %.neg
  br i1 %i.aw, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.prol.loopexit, %bb.u
  %.2106 = phi i64 [ %i.bc, %bb.u ], [ %.2106.unr, %.lr.ph108.prol.loopexit ] ; 2 uses
  %i.ax = add i64 %.2106, -1                      ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.b
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph108
  %i.az = atomicrmw or ptr %i.g, i64 %i.f acq_rel, align 8 ; 0 uses
  br label %.lr.ph108.1

bb.r:                                             ; preds = %.lr.ph108
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  %i.bb = atomicrmw xchg ptr %i.ba, i64 -1 release, align 8 ; 0 uses
  br label %.lr.ph108.1

.lr.ph108.1:                                      ; preds = %bb.r, %bb.q
  %i.bc = add i64 %.2106, -2                      ; 4 uses
  %i.bd = icmp eq i64 %i.bc, %i.b
  br i1 %i.bd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph108.1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc
  %i.bf = atomicrmw xchg ptr %i.be, i64 -1 release, align 8 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph108.1
  %i.bg = atomicrmw or ptr %i.g, i64 %i.f acq_rel, align 8 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = icmp ugt i64 %i.bc, %i.b
  br i1 %i.bh, label %.lr.ph108, label %.loopexit, !llvm.loop !59

.loopexit:                                        ; preds = %.lr.ph108.prol.loopexit, %bb.u, %.thread86.thread, %bb.g, %bb.f, %bb.e, %bb.c, %bb.m, %bb.n
  %.049 = phi i1 [ false, %bb.g ], [ true, %bb.m ], [ true, %bb.n ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.f ], [ false, %.thread86.thread ], [ false, %bb.u ], [ false, %.lr.ph108.prol.loopexit ]
  ret i1 %.049
}

; Function Attrs: inlinehint mustprogress nooutline norecurse nounwind willreturn uwtable
define internal fastcc noundef zeroext i1 @mi_bfield_atomic_try_clear_mask(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #13 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %i.b = and i64 %i.a, %1
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %mi_bfield_atomic_try_clear_mask_optimistic.exit

bb.b:                                             ; preds = %bb.a
  %i.d = xor i64 %1, -1
  %i.e = atomicrmw and ptr %0, i64 %i.d acq_rel, align 8 ; 5 uses
  %i.f = and i64 %i.e, %1                         ; 3 uses
  %i.g = icmp eq i64 %i.f, %1
  br i1 %i.g, label %mi_bfield_atomic_try_clear_mask_optimistic.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %mi_bfield_atomic_try_clear_mask_optimistic.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw or ptr %0, i64 %i.f acq_rel, align 8 ; 0 uses
  %.not21.i = icmp eq ptr %3, null
  br i1 %.not21.i, label %mi_bfield_atomic_try_clear_mask_optimistic.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %3, align 1, !tbaa !16
  br label %mi_bfield_atomic_try_clear_mask_optimistic.exit

mi_bfield_atomic_try_clear_mask_optimistic.exit:  ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.014 = phi i64 [ %i.a, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ]
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %mi_bfield_atomic_try_clear_mask_optimistic.exit
  %i.i = xor i64 %1, -1
  %i.j = select i1 %.0, i64 %i.i, i64 -1
  %i.k = and i64 %i.j, %.014
  %i.l = icmp eq i64 %i.k, 0
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr %2, align 1, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mi_bfield_atomic_try_clear_mask_optimistic.exit
  ret i1 %.0
}

; Function Attrs: noinline nooutline norecurse nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_bchunk_try_find_and_clear8(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #7 {
bb.a:
  %.not21.i.i.i = icmp eq ptr %2, null
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 5 uses
  %i.b = icmp eq i64 %i.a, 0                      ; 2 uses
  br i1 %.not21.i.i.i, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.b, label %.loopexit12, label %.preheader.split.i

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.b, label %.loopexit.us, label %.preheader.split.us.i.us

.preheader.split.us.i.us:                         ; preds = %.split.us.preheader
  %i.c = sub i64 -72340172838076674, %i.a
  %i.d = and i64 %i.a, -9187201950435737472
  %i.e = and i64 %i.d, %i.c                       ; 2 uses
  %.not.i.i.not.us.i.us = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.not.us.i.us, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us.i.us
  %i.f = lshr exact i64 %i.e, 7
  %i.g = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.f, i1 true) ; 2 uses
  %i.h = shl nuw i64 255, %i.g                    ; 3 uses
  %i.i = xor i64 %i.h, -1
  %i.j = atomicrmw and ptr %0, i64 %i.i acq_rel, align 8 ; 4 uses
  %i.k = and i64 %i.j, %i.h                       ; 3 uses
  %i.l = icmp eq i64 %i.k, %i.h
  br i1 %i.l, label %.loopexit11, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %.not.i.i15.us.i.us = icmp eq i64 %i.k, 0
  br i1 %.not.i.i15.us.i.us, label %mi_bfield_find_least_bit.exit.us.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = atomicrmw or ptr %0, i64 %i.k acq_rel, align 8 ; 0 uses
  br label %mi_bfield_find_least_bit.exit.us.i.us

mi_bfield_find_least_bit.exit.us.i.us:            ; preds = %bb.d, %bb.c
  %.not.us.i.us.not = icmp eq i64 %i.j, 0
  br i1 %.not.us.i.us.not, label %.loopexit.us, label %.preheader.split.us.i.us.1268

.preheader.split.us.i.us.1268:                    ; preds = %mi_bfield_find_least_bit.exit.us.i.us
  %i.n = sub i64 -72340172838076674, %i.j
  %i.o = and i64 %i.j, -9187201950435737472
  %i.p = and i64 %i.o, %i.n                       ; 2 uses
  %.not.i.i.not.us.i.us.1267 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.not.us.i.us.1267, label %.loopexit.us, label %bb.e

bb.e:                                             ; preds = %.preheader.split.us.i.us.1268
  %i.q = lshr exact i64 %i.p, 7
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true) ; 2 uses
  %i.s = shl nuw i64 255, %i.r                    ; 3 uses
  %i.t = xor i64 %i.s, -1
  %i.u = atomicrmw and ptr %0, i64 %i.t acq_rel, align 8 ; 4 uses
  %i.v = and i64 %i.u, %i.s                       ; 3 uses
  %i.w = icmp eq i64 %i.v, %i.s
  br i1 %i.w, label %.loopexit11, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %.not.i.i15.us.i.us.1269 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i15.us.i.us.1269, label %mi_bfield_find_least_bit.exit.us.i.us.1272, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = atomicrmw or ptr %0, i64 %i.v acq_rel, align 8 ; 0 uses
  br label %mi_bfield_find_least_bit.exit.us.i.us.1272

mi_bfield_find_least_bit.exit.us.i.us.1272:       ; preds = %bb.g, %bb.f
  %.not.us.i.us.1270.not = icmp eq i64 %i.u, 0
  br i1 %.not.us.i.us.1270.not, label %.loopexit.us, label %.preheader.split.us.i.us.2276

.preheader.split.us.i.us.2276:                    ; preds = %mi_bfield_find_least_bit.exit.us.i.us.1272
  %i.y = sub i64 -72340172838076674, %i.u
  %i.z = and i64 %i.u, -9187201950435737472
  %i.aa = and i64 %i.z, %i.y                      ; 2 uses
  %.not.i.i.not.us.i.us.2275 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.not.us.i.us.2275, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %.preheader.split.us.i.us.2276
  %i.ab = lshr exact i64 %i.aa, 7
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true) ; 2 uses
  %i.ad = shl nuw i64 255, %i.ac                  ; 3 uses
  %i.ae = xor i64 %i.ad, -1
  %i.af = atomicrmw and ptr %0, i64 %i.ae acq_rel, align 8 ; 4 uses
  %i.ag = and i64 %i.af, %i.ad                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, %i.ad
  br i1 %i.ah, label %.loopexit11, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %.not.i.i15.us.i.us.2277 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i15.us.i.us.2277, label %mi_bfield_find_least_bit.exit.us.i.us.2280, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = atomicrmw or ptr %0, i64 %i.ag acq_rel, align 8 ; 0 uses
end_hunk_4
