Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3ExecuteStage:bb.a
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @325, i64 %i.y, i64 %i.z) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.aa = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.p, i32 %4), !nosanitize !9 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 0, !nosanitize !9 ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.aa, 1, !nosanitize !9
  br i1 %i.ac, label %bb.n, label %bb.o, !prof !97, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  %i.ad = zext i32 %i.p to i64, !nosanitize !9
  %i.ae = zext i32 %4 to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @326, i64 %i.ad, i64 %i.ae) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.af = tail call noundef i32 @llvm.smin.i32(i32 %i.w, i32 %4) ; 2 uses
  %i.ag = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ab, i32 %i.af), !nosanitize !9 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1, !nosanitize !9
  br i1 %i.ah, label %bb.p, label %bb.q, !prof !97, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  %i.ai = zext i32 %i.ab to i64, !nosanitize !9
  %i.aj = zext i32 %i.af to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @327, i64 %i.ai, i64 %i.aj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.ak = extractvalue { i32, i1 } %i.ag, 0, !nosanitize !9
  br label %GetWorkerStartIndex.exit

GetWorkerStartIndex.exit:                         ; preds = %bb.f, %bb.q
  %.0.i = phi i32 [ %i.ak, %bb.q ], [ %4, %bb.f ] ; 4 uses
  %i.al = icmp eq i32 %.0.i, -1
  br i1 %i.al, label %GetWorkerStartIndex.exit.thread, label %.preheader

.preheader:                                       ; preds = %GetWorkerStartIndex.exit
  %i.am = icmp sgt i32 %i.h, 0
  br i1 %i.am, label %.lr.ph, label %b3AtomicFetchAddInt.exit

.lr.ph:                                           ; preds = %.preheader
  %i.an = ptrtoint ptr %.fr65 to i64, !nosanitize !9 ; 3 uses
  %.not66 = icmp eq ptr %.fr65, null, !nosanitize !9
  br i1 %.not66, label %.lr.ph.split.us, label %.lr.ph.split, !prof !97

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ao = sext i32 %.0.i to i64
  %i.ap = mul nsw i64 %i.ao, 12
  %i.aq = icmp eq i32 %.0.i, 0
  br i1 %i.aq, label %.split63, label %.split.us, !prof !10, !nosanitize !9

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.x
  %.060 = phi i32 [ %i.bo, %bb.x ], [ 0, %.lr.ph ]
  %.02459 = phi i32 [ %spec.store.select, %bb.x ], [ %.0.i, %.lr.ph ] ; 4 uses
  %.02558 = phi i32 [ %.1, %bb.x ], [ 0, %.lr.ph ] ; 3 uses
  %i.ar = sext i32 %.02459 to i64                 ; 2 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %.fr65, i64 %i.ar ; 3 uses
  %i.at = mul nsw i64 %i.ar, 12
  %i.au = add i64 %i.at, %i.an, !nosanitize !9    ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = icmp uge i64 %i.au, %i.an, !nosanitize !9
  %i.ax = icmp slt i32 %.02459, 0
  %i.ay = xor i1 %i.ax, %i.aw
  %i.az = and i1 %i.av, %i.ay, !nosanitize !9
  br i1 %i.az, label %bb.r, label %.split.us, !prof !10, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi61 = phi i64 [ %i.ap, %.lr.ph.split.us ], [ %i.au, %.lr.ph.split ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @319, i64 %i.an, i64 %.us-phi61) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %.lr.ph.split
  %i.ba = ptrtoint ptr %i.as to i64, !nosanitize !9 ; 2 uses
  %i.bb = and i64 %i.ba, 3, !nosanitize !9
  %i.bc = icmp eq i64 %i.bb, 0, !nosanitize !9
  br i1 %i.bc, label %b3AtomicCompareExchangeInt.exit, label %.split63, !prof !10, !nosanitize !9

.split63:                                         ; preds = %bb.r, %.lr.ph.split.us
  %.us-phi64 = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ba, %bb.r ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @320, i64 %.us-phi64) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3AtomicCompareExchangeInt.exit:                  ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.be = cmpxchg ptr %i.bd, i32 %2, i32 %3 seq_cst seq_cst, align 4
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.s, label %bb.v

bb.s:                                             ; preds = %b3AtomicCompareExchangeInt.exit
  %i.bg = load i64, ptr %i.as, align 4
  tail call fastcc void @b3ExecuteBlock(ptr noundef %0, ptr noundef %1, i64 %i.bg, i32 noundef %4)
  %i.bh = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.02558, i32 1), !nosanitize !9 ; 2 uses
  %i.bi = extractvalue { i32, i1 } %i.bh, 1, !nosanitize !9
  br i1 %i.bi, label %bb.t, label %bb.u, !prof !97, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  %i.bj = zext nneg i32 %.02558 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @321, i64 %i.bj, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.bk = extractvalue { i32, i1 } %i.bh, 0, !nosanitize !9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %b3AtomicCompareExchangeInt.exit
  %.1 = phi i32 [ %i.bk, %bb.u ], [ %.02558, %b3AtomicCompareExchangeInt.exit ] ; 2 uses
  %i.bl = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.02459, i32 1), !nosanitize !9 ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 1, !nosanitize !9
  br i1 %i.bm, label %bb.w, label %bb.x, !prof !97, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  %i.bn = zext nneg i32 %.02459 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @322, i64 %i.bn, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.bo = add nuw nsw i32 %.060, 1                ; 2 uses
  %i.bp = extractvalue { i32, i1 } %i.bl, 0, !nosanitize !9 ; 2 uses
  %.not = icmp slt i32 %i.bp, %i.h
  %spec.store.select = select i1 %.not, i32 %i.bp, i32 0
  %exitcond.not = icmp eq i32 %i.bo, %i.h
  br i1 %exitcond.not, label %b3AtomicFetchAddInt.exit, label %.lr.ph.split, !llvm.loop !365

b3AtomicFetchAddInt.exit:                         ; preds = %bb.x, %.preheader
  %.025.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %bb.x ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.br = atomicrmw add ptr %i.bq, i32 %.025.lcssa seq_cst, align 4 ; 0 uses
  br label %GetWorkerStartIndex.exit.thread

GetWorkerStartIndex.exit.thread:                  ; preds = %bb.f, %GetWorkerStartIndex.exit, %b3AtomicFetchAddInt.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3ExecuteBlock(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 %2, i32 noundef %3) unnamed_addr #0 !func_sanitize !370 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %2, 48
  %.sroa.1.0.extract.trunc = trunc i64 %.sroa.1.0.extract.shift to i8 ; 4 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 56      ; 2 uses
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @274, i64 %i.a) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111
  switch i32 %i.e, label %b3PrepareJointsTask.exit [
    i32 0, label %bb.d
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
    i32 4, label %bb.ar
    i32 5, label %bb.bd
    i32 6, label %bb.bh
    i32 7, label %bb.bs
    i32 8, label %bb.bw
    i32 9, label %bb.bz
    i32 10, label %bb.ca
  ]

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i = trunc i64 %2 to i32 ; 4 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %2, 32    ; 2 uses
  %i.f = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !9
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !9
  br i1 %i.h, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @275, i64 %i.f) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !119
  %.fr98.i = freeze ptr %i.j                      ; 5 uses
  %i.k = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.l = and i32 %i.k, 65535
  %i.m = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 %i.l), !nosanitize !9 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 0, !nosanitize !9 ; 3 uses
  %i.o = extractvalue { i32, i1 } %i.m, 1, !nosanitize !9
  br i1 %i.o, label %bb.g, label %.preheader31.i, !prof !97, !nosanitize !9

.preheader31.i:                                   ; preds = %bb.f
  %i.p = ptrtoint ptr %.fr98.i to i64             ; 9 uses
  %.not99.i = icmp eq ptr %.fr98.i, null
  br i1 %.not99.i, label %.split88.us.i, label %.preheader31.split.i.preheader, !prof !97

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %2, 4294967295
  %i.r = and i64 %.sroa.2.0.extract.shift.i, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @276, i64 %i.q, i64 %i.r) #11, !nosanitize !9
  unreachable, !nosanitize !9

.preheader31.split.i:                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i586, 1
  %exitcond = icmp eq i64 %indvars.iv.next.i586, 2147483647
  br i1 %exitcond, label %.split.us.i, label %.preheader31.split.i.preheader, !prof !172, !llvm.loop !367, !nosanitize !9

.split.us.i:                                      ; preds = %.preheader31.split.i
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @277, i64 2147483647, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

.preheader31.split.i.preheader:                   ; preds = %.preheader31.i, %.preheader31.split.i
  %indvars.iv.next.i586 = phi i64 [ %indvars.iv.next.i, %.preheader31.split.i ], [ 1, %.preheader31.i ] ; 5 uses
  %indvars.iv.i585 = phi i64 [ %indvars.iv.next.i586, %.preheader31.split.i ], [ 0, %.preheader31.i ]
  %sext = shl i64 %indvars.iv.next.i586, 32       ; 2 uses
  %4 = ashr exact i64 %sext, 28
  %5 = getelementptr inbounds i8, ptr %.fr98.i, i64 %4 ; 2 uses
  %6 = ashr exact i64 %sext, 28
  %i.s = add i64 %6, %i.p, !nosanitize !9         ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = icmp uge i64 %i.s, %i.p, !nosanitize !9
  %7 = and i64 %indvars.iv.next.i586, 2147483648
  %8 = icmp ne i64 %7, 0
  %i.v = xor i1 %8, %i.u
  %i.w = and i1 %i.t, %i.v, !nosanitize !9
  br i1 %i.w, label %bb.h, label %.split88.us.i, !prof !10, !nosanitize !9

.split88.us.i:                                    ; preds = %.preheader31.split.i.preheader, %.preheader31.i
  %.us-phi90.i = phi i64 [ 16, %.preheader31.i ], [ %i.s, %.preheader31.split.i.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @278, i64 %i.p, i64 %.us-phi90.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.preheader31.split.i.preheader
  %i.x = ptrtoint ptr %5 to i64, !nosanitize !9   ; 2 uses
  %i.y = and i64 %i.x, 7, !nosanitize !9
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !9
  br i1 %i.z, label %bb.i, label %.split92.i, !prof !10, !nosanitize !9

.split92.i:                                       ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @279, i64 %i.x) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %5, align 8, !tbaa !105
  %.not.i = icmp sgt i32 %i.aa, %.sroa.0.0.extract.trunc.i
  br i1 %.not.i, label %.preheader.i, label %.preheader31.split.i, !llvm.loop !367

.preheader.i:                                     ; preds = %bb.i
  %i.ab = icmp sgt i32 %i.n, %.sroa.0.0.extract.trunc.i
  br i1 %i.ab, label %.lr.ph97.i, label %b3PrepareJointsTask.exit

.loopexit.i:                                      ; preds = %bb.x, %bb.s
  %.123.lcssa.i = phi i32 [ %.02295.i, %bb.s ], [ %i.ax, %bb.x ] ; 2 uses
  %i.ac = icmp slt i32 %.123.lcssa.i, %i.n
  br i1 %i.ac, label %.lr.ph97.i, label %b3PrepareJointsTask.exit, !llvm.loop !368

.lr.ph97.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %.loopexit.i ], [ %indvars.iv.i585, %.preheader.i ] ; 4 uses
  %.02295.i = phi i32 [ %.123.lcssa.i, %.loopexit.i ], [ %.sroa.0.0.extract.trunc.i, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.fr98.i, i64 %indvars.iv165.i ; 3 uses
  %i.ae = shl nuw nsw i64 %indvars.iv165.i, 4
  %i.af = add i64 %i.ae, %i.p, !nosanitize !9     ; 2 uses
  %.not100.i = icmp ult i64 %i.af, %i.p, !nosanitize !9
  br i1 %.not100.i, label %bb.j, label %bb.k, !prof !97, !nosanitize !9

bb.j:                                             ; preds = %.lr.ph97.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @280, i64 %i.p, i64 %i.af) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %.lr.ph97.i
  %i.ag = ptrtoint ptr %i.ad to i64, !nosanitize !9 ; 2 uses
  %i.ah = and i64 %i.ag, 7, !nosanitize !9
  %i.ai = icmp eq i64 %i.ah, 0, !nosanitize !9
  br i1 %i.ai, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @281, i64 %i.ag) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !105 ; 2 uses
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 3 uses
  %exitcond168.i = icmp eq i64 %indvars.iv165.i, 2147483647
  br i1 %exitcond168.i, label %bb.n, label %bb.o, !prof !97, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @282, i64 2147483647, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %sext.i = shl nuw i64 %indvars.iv.next166.i, 32
  %i.ak = ashr exact i64 %sext.i, 28              ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.fr98.i, i64 %i.ak ; 2 uses
  %i.am = add i64 %i.ak, %i.p, !nosanitize !9     ; 3 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = icmp uge i64 %i.am, %i.p, !nosanitize !9
  %i.ap = and i64 %indvars.iv.next166.i, 2147483648
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = xor i1 %i.aq, %i.ao
  %i.as = and i1 %i.an, %i.ar, !nosanitize !9
  br i1 %i.as, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @283, i64 %i.p, i64 %i.am) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.at = ptrtoint ptr %i.al to i64, !nosanitize !9 ; 2 uses
  %i.au = and i64 %i.at, 7, !nosanitize !9
  %i.av = icmp eq i64 %i.au, 0, !nosanitize !9
  br i1 %i.av, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @284, i64 %i.at) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !105
  %i.ax = tail call noundef i32 @llvm.smin.i32(i32 %i.aw, i32 %i.n) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !107 ; 3 uses
  %i.ba = icmp slt i32 %.02295.i, %i.ax
  br i1 %i.ba, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = icmp ne ptr %i.az, null
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i
  %.12394.i = phi i32 [ %.02295.i, %.lr.ph.i ], [ %i.bs, %bb.x ] ; 3 uses
  %i.bd = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.12394.i, i32 %i.aj), !nosanitize !9 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1, !nosanitize !9
  br i1 %i.be, label %bb.u, label %bb.v, !prof !97, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  %i.bf = zext i32 %.12394.i to i64, !nosanitize !9
  %i.bg = zext i32 %i.aj to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @285, i64 %i.bf, i64 %i.bg) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.bh = extractvalue { i32, i1 } %i.bd, 0, !nosanitize !9 ; 2 uses
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = mul nsw i64 %i.bi, 444
  %i.bk = add i64 %i.bj, %i.bb, !nosanitize !9    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = xor i1 %i.bc, %i.bl
  %i.bn = icmp uge i64 %i.bk, %i.bb, !nosanitize !9
  %i.bo = icmp slt i32 %i.bh, 0
  %i.bp = xor i1 %i.bo, %i.bn
  %i.bq = and i1 %i.bm, %i.bp, !nosanitize !9
  br i1 %i.bq, label %bb.x, label %bb.w, !prof !10, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @286, i64 %i.bb, i64 %i.bk) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds [444 x i8], ptr %i.az, i64 %i.bi
  tail call void @b3PrepareJoint(ptr noundef %i.br, ptr noundef nonnull %1) #12
  %i.bs = add nsw i32 %.12394.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bs, %i.ax
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.t, !llvm.loop !369

bb.y:                                             ; preds = %bb.c
  tail call void @b3PrepareContacts_Convex(i64 %2, ptr noundef nonnull %1) #12
  br label %b3PrepareJointsTask.exit

bb.z:                                             ; preds = %bb.c
  tail call void @b3PrepareContacts_Mesh(i64 %2, ptr noundef nonnull %1) #12
  br label %b3PrepareJointsTask.exit

bb.aa:                                            ; preds = %bb.c
  %.sroa.0359.0.extract.trunc.i = trunc i64 %2 to i32 ; 6 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 32    ; 2 uses
  %i.bt = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.bu = and i64 %i.bt, 7, !nosanitize !9
  %i.bv = icmp eq i64 %i.bu, 0, !nosanitize !9
  br i1 %i.bv, label %bb.ac, label %bb.ab, !prof !10, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @287, i64 %i.bt) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !96
  %.fr494.i = freeze ptr %i.bx                    ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !95
  %.fr.i = freeze ptr %i.bz                       ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !160 ; 4 uses
  %i.cc = icmp ne ptr %i.cb, null, !nosanitize !9
  %i.cd = ptrtoint ptr %i.cb to i64, !nosanitize !9 ; 2 uses
  %i.ce = and i64 %i.cd, 7, !nosanitize !9
  %i.cf = icmp eq i64 %i.ce, 0, !nosanitize !9
  %i.cg = and i1 %i.cc, %i.cf, !nosanitize !9
  br i1 %i.cg, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @288, i64 %i.cd) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 4428
  %.sroa.0230.0.copyload.i = load <2 x float>, ptr %i.ch, align 4, !tbaa !146
  %.sroa.4231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 4436
  %.sroa.4231.0.copyload.i = load float, ptr %.sroa.4231.0..sroa_idx.i, align 4, !tbaa !146
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !371 ; 6 uses
  %i.ck = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.cl = and i32 %i.ck, 65535
  %i.cm = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0359.0.extract.trunc.i, i32 %i.cl), !nosanitize !9 ; 2 uses
  %i.cn = extractvalue { i32, i1 } %i.cm, 1, !nosanitize !9
  br i1 %i.cn, label %._crit_edge.i, label %.lr.ph.i38, !prof !173, !nosanitize !9

.lr.ph.i38:                                       ; preds = %bb.ae
  %i.co = extractvalue { i32, i1 } %i.cm, 0, !nosanitize !9 ; 3 uses
  %i.cp = ptrtoint ptr %.fr.i to i64              ; 6 uses
  %i.cq = icmp ne ptr %.fr.i, null                ; 2 uses
  %i.cr = ptrtoint ptr %.fr494.i to i64           ; 5 uses
  %.not.i39 = icmp eq ptr %.fr494.i, null
  br i1 %.not.i39, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !97

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i38
  %i.cs = icmp sgt i32 %i.co, %.sroa.0359.0.extract.trunc.i
  br i1 %i.cs, label %bb.af, label %b3PrepareJointsTask.exit

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %sext.i44 = shl i64 %2, 32                      ; 2 uses
  %i.ct = ashr exact i64 %sext.i44, 32            ; 2 uses
  %i.cu = mul nsw i64 %i.ct, 216
  %i.cv = add i64 %i.cu, %i.cp, !nosanitize !9    ; 3 uses
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = xor i1 %i.cq, %i.cw
  %i.cy = icmp uge i64 %i.cv, %i.cp, !nosanitize !9
  %i.cz = icmp slt i32 %.sroa.0359.0.extract.trunc.i, 0 ; 2 uses
  %i.da = xor i1 %i.cz, %i.cy
  %i.db = and i1 %i.cx, %i.da, !nosanitize !9
  br i1 %i.db, label %bb.ag, label %.split467.us.i, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dc = mul nsw i64 %i.ct, 56                   ; 2 uses
  %i.dd = icmp eq i64 %sext.i44, 0
  %i.de = icmp uge i64 %i.dc, %i.cr, !nosanitize !9
  %i.df = xor i1 %i.cz, %i.de
  %i.dg = and i1 %i.dd, %i.df, !nosanitize !9
  br i1 %i.dg, label %.split474.i, label %.split470.us.i, !prof !10, !nosanitize !9

.lr.ph.split.i:                                   ; preds = %.lr.ph.i38
  br i1 %i.cq, label %.lr.ph.split.split.preheader.i, label %.lr.ph.split.split.us.i, !prof !10

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %sext559.i = shl i64 %2, 32
  %i.dh = ashr exact i64 %sext559.i, 32           ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.co, i32 %.sroa.0359.0.extract.trunc.i)
  %wide.trip.count.i = sext i32 %smax.i to i64    ; 2 uses
  %exitcond.not.i42206 = icmp eq i64 %i.dh, %wide.trip.count.i
end_hunk_0
