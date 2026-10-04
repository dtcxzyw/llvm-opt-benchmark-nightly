Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cputlb?download=true
inline.NumInlined: 904
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@do_st_leN:bb.a
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = shl i64 %i.ar, 3
  %i.at = and i64 %i.as, 56                       ; 2 uses
  %i.au = sub i32 64, %i.aq
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = lshr i64 -1, %i.av
  %i.ax = shl i64 %2, %i.at
  %i.ay = shl i64 %i.aw, %i.at
  %i.az = and i64 %i.ar, 7
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ap, i64 %i.ba ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 8) ]
  %i.bc = load atomic i64, ptr %i.bb monotonic, align 8
  %i.bd = xor i64 %i.ay, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.i.i = phi i64 [ %i.bc, %bb.p ], [ %i.bi, %bb.q ] ; 2 uses
  %i.be = and i64 %.0.i.i, %i.bd
  %i.bf = or i64 %i.be, %i.ax
  %i.bg = cmpxchg weak ptr %i.bb, i64 %.0.i.i, i64 %i.bf monotonic monotonic, align 8 ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  br i1 %i.bh, label %store_whole_le8.exit, label %bb.q, !llvm.loop !4

store_whole_le8.exit:                             ; preds = %bb.q
  %i.bj = zext nneg i32 %i.aq to i64
  %i.bk = lshr i64 %2, %i.bj
  br label %store_parts_leN.exit

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.e, %bb.e, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bo = load i32, ptr %i.bn, align 4            ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.preheader.i, label %store_parts_leN.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %wide.trip.count.i = zext nneg i32 %i.bo to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bq = icmp ult i32 %i.bo, 4
  br i1 %i.bq, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.089.i = phi i64 [ %2, %.lr.ph.preheader.i.new ], [ %i.cf, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.br = trunc i64 %.089.i to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = lshr i64 %.089.i, 8
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bu, ptr %i.bw, align 1
  %i.bx = lshr i64 %.089.i, 16
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.by, ptr %i.ca, align 1
  %i.cb = lshr i64 %.089.i, 24
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.cc, ptr %i.ce, align 1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.cf = lshr i64 %.089.i, 32                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %store_parts_leN.exit.loopexit46.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

bb.s:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 2567, ptr noundef nonnull @__func__.do_st_leN, ptr noundef null) #28
  unreachable

store_parts_leN.exit.loopexit46.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %store_parts_leN.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %store_parts_leN.exit.loopexit46.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %store_parts_leN.exit.loopexit46.unr-lcssa ]
  %.089.i.epil.init = phi i64 [ %2, %.lr.ph.preheader.i ], [ %i.cf, %store_parts_leN.exit.loopexit46.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.089.i.epil = phi i64 [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ci, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.cg = trunc i64 %.089.i.epil to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i.epil
  store i8 %i.cg, ptr %i.ch, align 1
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.ci = lshr i64 %.089.i.epil, 8                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %store_parts_leN.exit, label %.lr.ph.i.epil, !llvm.loop !197

store_parts_leN.exit:                             ; preds = %store_parts_leN.exit.loopexit46.unr-lcssa, %.lr.ph.i.epil, %bb.l, %bb.r, %store_whole_le8.exit, %bb.d, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.o, %bb.d ], [ %i.ac, %bb.l ], [ %i.bk, %store_whole_le8.exit ], [ %2, %bb.r ], [ %i.cf, %store_parts_leN.exit.loopexit46.unr-lcssa ], [ %i.ci, %.lr.ph.i.epil ]
  ret i64 %.0
}

; Function Attrs: norecurse nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @store_whole_le16(ptr noundef %0, i32 noundef %1, i128 noundef %2) unnamed_addr #23 {
bb.a:
  %i.a = shl i32 %1, 3                            ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 3
  %i.e = and i32 %i.d, 120
  %i.f = icmp slt i32 %i.a, 65                    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub i32 64, %i.a
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h
  %i.j = zext i64 %i.i to i128
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = sub nsw i32 128, %i.a
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = shl nuw i128 %i.n, 64
  %i.p = or disjoint i128 %i.o, 18446744073709551615
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i128 [ %i.j, %bb.b ], [ %i.p, %bb.c ]
  %i.q = zext nneg i32 %i.e to i128               ; 2 uses
  %i.r = shl i128 %2, %i.q
  %i.s = shl i128 %.0, %i.q
  %i.t = and i64 %i.b, 15
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.v, i64 16) ]
  %i.w = load i128, ptr %i.v, align 16
  %i.x = xor i128 %i.s, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.0.i = phi i128 [ %i.w, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %i.y = and i128 %.sroa.03.0.i, %i.x
  %i.z = or i128 %i.y, %i.r
  %i.aa = cmpxchg weak ptr %i.v, i128 %.sroa.03.0.i, i128 %i.z monotonic monotonic, align 16 ; 2 uses
  %i.ab = extractvalue { i128, i1 } %i.aa, 1
  %i.ac = extractvalue { i128, i1 } %i.aa, 0
  br i1 %i.ab, label %store_atom_insert_al16.exit, label %bb.e, !llvm.loop !5

store_atom_insert_al16.exit:                      ; preds = %bb.e
  %i.ad = lshr i128 %2, 64
  %i.ae = trunc nuw i128 %i.ad to i64
  %i.af = add nsw i32 %i.a, -64
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = ashr i64 %i.ae, %i.ag
  %.017 = select i1 %i.f, i64 0, i64 %i.ah
  ret i64 %.017
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_st_8(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %4, 16
  %.not18 = icmp eq i32 %i.d, 0
  %i.e = tail call i64 @llvm.bswap.i64(i64 %2)
  %spec.select = select i1 %.not18, i64 %2, i64 %i.e
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call fastcc i64 @do_st_mmio_leN(ptr noundef %0, ptr noundef %i.f, i64 noundef %spec.select, i64 noundef %i.h, i32 noundef 8, i32 noundef %3, i64 noundef %5) ; 0 uses
  br label %store_atom_8.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.b, 8
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %bb.d, label %store_atom_8.exit, !prof !95

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %4, 16
  %.not17 = icmp eq i32 %i.k, 0
  %i.l = tail call i64 @llvm.bswap.i64(i64 %2)
  %spec.select19 = select i1 %.not17, i64 %2, i64 %i.l ; 19 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 23 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 5 uses
  %i.p = and i64 %i.o, 7                          ; 17 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f, !prof !95

bb.e:                                             ; preds = %bb.d
  store atomic i64 %spec.select19, ptr %i.n monotonic, align 8
  br label %store_atom_8.exit

bb.f:                                             ; preds = %bb.d
  %i.r = tail call fastcc i32 @required_atomicity(ptr noundef %0, i64 noundef %i.o, i32 noundef %4)
  switch i32 %i.r, label %bb.q [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 -2, label %bb.j
    i32 3, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  store i64 %spec.select19, ptr %i.n, align 1
  br label %store_atom_8.exit

bb.h:                                             ; preds = %bb.f
  %i.s = trunc i64 %spec.select19 to i16
  store atomic i16 %i.s, ptr %i.n monotonic, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.u = lshr i64 %spec.select19, 16
  %i.v = trunc i64 %i.u to i16
  store atomic i16 %i.v, ptr %i.t monotonic, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.x = lshr i64 %spec.select19, 32
  %i.y = trunc i64 %i.x to i16
  store atomic i16 %i.y, ptr %i.w monotonic, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %sum.shift.i.i = lshr i64 %spec.select19, 48
  %i.aa = trunc nuw i64 %sum.shift.i.i to i16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 2) ]
  store atomic i16 %i.aa, ptr %i.z monotonic, align 2
  br label %store_atom_8.exit

bb.i:                                             ; preds = %bb.f
  %i.ab = trunc i64 %spec.select19 to i32
  store atomic i32 %i.ab, ptr %i.n monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ad = lshr i64 %spec.select19, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 4) ]
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %store_atom_8.exit

bb.j:                                             ; preds = %bb.f
  %i.af = trunc nuw nsw i64 %i.p to i32           ; 2 uses
  %i.ag = sub nuw nsw i32 8, %i.af                ; 3 uses
  switch i32 %i.af, label %bb.n [
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 5, label %.lr.ph.i35.i
    i32 6, label %.lr.ph.i35.i
    i32 7, label %.lr.ph.i35.i
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.ah = shl nuw nsw i32 %i.ag, 3                ; 2 uses
  %i.ai = shl i64 %i.o, 3
  %i.aj = and i64 %i.ai, 56                       ; 2 uses
  %i.ak = sub nuw nsw i32 64, %i.ah
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = lshr i64 -1, %i.al
  %i.an = shl i64 %spec.select19, %i.aj
  %i.ao = shl i64 %i.am, %i.aj
  %i.ap = sub nsw i64 0, %i.p
  %i.aq = getelementptr inbounds i8, ptr %i.n, i64 %i.ap ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 8) ]
  %i.ar = load atomic i64, ptr %i.aq monotonic, align 8
  %i.as = xor i64 %i.ao, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.ar, %bb.k ], [ %i.ax, %bb.l ] ; 2 uses
  %i.at = and i64 %.0.i.i.i, %i.as
  %i.au = or i64 %i.at, %i.an
  %i.av = cmpxchg weak ptr %i.aq, i64 %.0.i.i.i, i64 %i.au monotonic monotonic, align 8 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  %i.ax = extractvalue { i64, i1 } %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader.i.i, label %bb.l, !llvm.loop !4

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.ay = zext nneg i32 %i.ag to i64
  %6 = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ay ; 7 uses
  %i.az = zext nneg i32 %i.ah to i64
  %7 = lshr i64 %spec.select19, %i.az             ; 7 uses
  %8 = trunc i64 %7 to i8
  store i8 %8, ptr %6, align 1
  %exitcond.not.i.i = icmp eq i64 %i.p, 1
  br i1 %exitcond.not.i.i, label %store_atom_8.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.preheader.i.i
  %9 = lshr i64 %7, 8
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %10, ptr %11, align 1
  %exitcond.not.i.i.1 = icmp eq i64 %i.p, 2
  br i1 %exitcond.not.i.i.1, label %store_atom_8.exit, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %12 = lshr i64 %7, 16
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %13, ptr %14, align 1
  %exitcond.not.i.i.2 = icmp eq i64 %i.p, 3
  br i1 %exitcond.not.i.i.2, label %store_atom_8.exit, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %15 = lshr i64 %7, 24
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %16, ptr %17, align 1
  %exitcond.not.i.i.3 = icmp eq i64 %i.p, 4
  br i1 %exitcond.not.i.i.3, label %store_atom_8.exit, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.i.i.3
  %18 = lshr i64 %7, 32
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %19, ptr %20, align 1
  %exitcond.not.i.i.4 = icmp eq i64 %i.p, 5
  br i1 %exitcond.not.i.i.4, label %store_atom_8.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i.new
  %i.ba = lshr i64 %7, 40
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.bb, ptr %i.bc, align 1
  %niter.ncmp.3 = icmp eq i64 %i.p, 6
  br i1 %niter.ncmp.3, label %store_atom_8.exit, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i
  %21 = lshr i64 %7, 48
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i8 %22, ptr %23, align 1
  br label %store_atom_8.exit

.lr.ph.i35.i:                                     ; preds = %bb.j, %bb.j, %bb.j
  %wide.trip.count.i.i = zext nneg i32 %i.ag to i64
  %i.bd = trunc i64 %spec.select19 to i8
  store i8 %i.bd, ptr %i.n, align 1
  %i.be = lshr i64 %spec.select19, 8              ; 2 uses
  %exitcond.not.i39.i = icmp eq i64 %i.p, 7
  br i1 %exitcond.not.i39.i, label %store_bytes_leN.exit40.i, label %.lr.ph.i35.i.1

.lr.ph.i35.i.1:                                   ; preds = %.lr.ph.i35.i
  %i.bf = trunc i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = lshr i64 %spec.select19, 16             ; 2 uses
  %exitcond.not.i39.i.1 = icmp eq i64 %i.p, 6
  br i1 %exitcond.not.i39.i.1, label %store_bytes_leN.exit40.i, label %.lr.ph.i35.i.2

.lr.ph.i35.i.2:                                   ; preds = %.lr.ph.i35.i.1
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = lshr i64 %spec.select19, 24             ; 2 uses
  %exitcond.not.i39.i.2 = icmp eq i64 %i.p, 5
  br i1 %exitcond.not.i39.i.2, label %store_bytes_leN.exit40.i, label %.lr.ph.i35.i.3

.lr.ph.i35.i.3:                                   ; preds = %.lr.ph.i35.i.2
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = lshr i64 %spec.select19, 32             ; 2 uses
  %exitcond.not.i39.i.3 = icmp eq i64 %i.p, 4
  br i1 %exitcond.not.i39.i.3, label %store_bytes_leN.exit40.i, label %.lr.ph.i35.i.4

.lr.ph.i35.i.4:                                   ; preds = %.lr.ph.i35.i.3
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = lshr i64 %spec.select19, 40             ; 2 uses
  %exitcond.not.i39.i.4 = icmp eq i64 %i.p, 3
  br i1 %exitcond.not.i39.i.4, label %store_bytes_leN.exit40.i, label %.lr.ph.i35.i.5

.lr.ph.i35.i.5:                                   ; preds = %.lr.ph.i35.i.4
  %i.br = trunc i64 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = lshr i64 %spec.select19, 48             ; 2 uses
  %exitcond.not.i39.i.5 = icmp eq i64 %i.p, 2
  br i1 %exitcond.not.i39.i.5, label %store_bytes_leN.exit40.i, label %.lr.ph.i35.i.6

.lr.ph.i35.i.6:                                   ; preds = %.lr.ph.i35.i.5
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = lshr i64 %spec.select19, 56             ; 2 uses
  %exitcond.not.i39.i.6 = icmp eq i64 %i.p, 1
  br i1 %exitcond.not.i39.i.6, label %store_bytes_leN.exit40.i, label %.lr.ph.i35.i.7

.lr.ph.i35.i.7:                                   ; preds = %.lr.ph.i35.i.6
  %i.bx = trunc nuw i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  store i8 %i.bx, ptr %i.by, align 1
  br label %store_bytes_leN.exit40.i

store_bytes_leN.exit40.i:                         ; preds = %.lr.ph.i35.i.7, %.lr.ph.i35.i.6, %.lr.ph.i35.i.5, %.lr.ph.i35.i.4, %.lr.ph.i35.i.3, %.lr.ph.i35.i.2, %.lr.ph.i35.i.1, %.lr.ph.i35.i
  %.lcssa = phi i64 [ %i.be, %.lr.ph.i35.i ], [ %i.bh, %.lr.ph.i35.i.1 ], [ %i.bk, %.lr.ph.i35.i.2 ], [ %i.bn, %.lr.ph.i35.i.3 ], [ %i.bq, %.lr.ph.i35.i.4 ], [ %i.bt, %.lr.ph.i35.i.5 ], [ %i.bw, %.lr.ph.i35.i.6 ], [ 0, %.lr.ph.i35.i.7 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 %wide.trip.count.i.i ; 2 uses
  %i.ca = shl nuw nsw i64 %i.p, 3
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = shl i64 %i.cb, 3
  %i.cd = and i64 %i.cc, 56                       ; 2 uses
  %i.ce = sub nuw nsw i64 64, %i.ca
  %i.cf = lshr i64 -1, %i.ce
  %i.cg = shl i64 %.lcssa, %i.cd
  %i.ch = shl i64 %i.cf, %i.cd
  %i.ci = and i64 %i.cb, 7
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.bz, i64 %i.cj ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ck, i64 8) ]
  %i.cl = load atomic i64, ptr %i.ck monotonic, align 8
  %i.cm = xor i64 %i.ch, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %store_bytes_leN.exit40.i
  %.0.i.i41.i = phi i64 [ %i.cl, %store_bytes_leN.exit40.i ], [ %i.cr, %bb.m ] ; 2 uses
  %i.cn = and i64 %.0.i.i41.i, %i.cm
  %i.co = or i64 %i.cn, %i.cg
  %i.cp = cmpxchg weak ptr %i.ck, i64 %.0.i.i41.i, i64 %i.co monotonic monotonic, align 8 ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  %i.cr = extractvalue { i64, i1 } %i.cp, 0
  br i1 %i.cq, label %store_atom_8.exit, label %bb.m, !llvm.loop !4

bb.n:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 922, ptr noundef nonnull @__func__.store_atom_8, ptr noundef null) #28
  unreachable

bb.o:                                             ; preds = %bb.f
  %i.cs = zext i64 %spec.select19 to i128
  %i.ct = trunc i64 %i.o to i32
  %i.cu = shl i32 %i.ct, 3
  %i.cv = and i32 %i.cu, 120
  %i.cw = zext nneg i32 %i.cv to i128             ; 2 uses
  %i.cx = shl i128 %i.cs, %i.cw
  %i.cy = shl i128 18446744073709551615, %i.cw
  %i.cz = and i64 %i.o, 15
  %i.da = sub nsw i64 0, %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.n, i64 %i.da ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.db, i64 16) ]
  %i.dc = load i128, ptr %i.db, align 16
  %i.dd = xor i128 %i.cy, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.sroa.03.0.i.i.i = phi i128 [ %i.dc, %bb.o ], [ %i.di, %bb.p ] ; 2 uses
  %i.de = and i128 %.sroa.03.0.i.i.i, %i.dd
  %i.df = or i128 %i.de, %i.cx
  %i.dg = cmpxchg weak ptr %i.db, i128 %.sroa.03.0.i.i.i, i128 %i.df monotonic monotonic, align 16 ; 2 uses
  %i.dh = extractvalue { i128, i1 } %i.dg, 1
  %i.di = extractvalue { i128, i1 } %i.dg, 0
  br i1 %i.dh, label %store_atom_8.exit, label %bb.p, !llvm.loop !5

bb.q:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 933, ptr noundef nonnull @__func__.store_atom_8, ptr noundef null) #28
  unreachable

store_atom_8.exit:                                ; preds = %bb.p, %bb.m, %.lr.ph.preheader.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.preheader.i.i.new, %.lr.ph.i.i, %.lr.ph.i.i.6, %bb.i, %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 0, 72057594037927936) i64 @do_st16_mmio_leN(ptr noundef initializes((616, 624)) %0, ptr nofree noundef readonly captures(none) %1, i128 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %4, -9
  %or.cond = icmp ult i32 %i.a, 8
  tail call void @llvm.assume(i1 %or.cond)
  %.val = load i64, ptr %1, align 8
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 %6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16480
  %i.e = load i8, ptr %i.d, align 16, !range !93, !noundef !94
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %io_prepare.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @cpu_io_recompile(ptr noundef nonnull %0, i64 noundef %6) #28
  unreachable

io_prepare.exit:                                  ; preds = %bb.a
  %i.g = add i64 %.val, %3                        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.i = load ptr, ptr %i.h, align 16             ; 2 uses
  %i.j = tail call zeroext i1 @bql_locked() #25   ; 2 uses
  br i1 %i.j, label %bql_auto_lock.exit, label %bb.c

bb.c:                                             ; preds = %io_prepare.exit
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.1, i32 noundef 2516) #25
  br label %bql_auto_lock.exit

bql_auto_lock.exit:                               ; preds = %io_prepare.exit, %bb.c
  %i.k = trunc i128 %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bql_auto_lock.exit
  %.036.i = phi i32 [ 8, %bql_auto_lock.exit ], [ %i.aa, %bb.g ] ; 2 uses
  %.034.i = phi i64 [ %3, %bql_auto_lock.exit ], [ %i.y, %bb.g ] ; 3 uses
  %.032.i = phi i64 [ %i.k, %bql_auto_lock.exit ], [ %i.w, %bb.g ] ; 2 uses
  %.029.i = phi i64 [ %i.g, %bql_auto_lock.exit ], [ %i.z, %bb.g ] ; 2 uses
  %i.m = trunc i64 %.034.i to i32
  %i.n = or i32 %.036.i, %i.m
  %i.o = or i32 %i.n, 8
  %i.p = tail call range(i32 0, 4) i32 @llvm.cttz.i32(i32 %i.o, i1 true) ; 4 uses
  %i.q = shl nuw nsw i32 1, %i.p                  ; 3 uses
  %i.r = load i64, ptr %i.l, align 8
  %i.s = tail call i32 @memory_region_dispatch_write(ptr noundef %i.i, i64 noundef %.029.i, i64 noundef %.032.i, i32 noundef %i.p, i64 %i.r) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !95

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @io_failed(ptr noundef %0, ptr noundef nonnull readonly %1, i64 noundef %.034.i, i32 noundef %i.q, i32 noundef 1, i32 noundef %5, i32 noundef %i.s, i64 noundef %6)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = icmp eq i32 %i.p, 3
  br i1 %i.t, label %int_st_mmio_leN.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw nsw i32 8, %i.p
  %i.v = zext nneg i32 %i.u to i64
  %i.w = lshr i64 %.032.i, %i.v
  %i.x = zext nneg i32 %i.q to i64                ; 2 uses
  %i.y = add i64 %.034.i, %i.x
  %i.z = add i64 %.029.i, %i.x
  %i.aa = sub i32 %.036.i, %i.q                   ; 2 uses
  %.not40.i = icmp eq i32 %i.aa, 0
  br i1 %.not40.i, label %int_st_mmio_leN.exit, label %bb.d, !llvm.loop !76

int_st_mmio_leN.exit:                             ; preds = %bb.f, %bb.g
  %i.ab = lshr i128 %2, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = add i64 %3, 8
  %i.ae = add nsw i32 %4, -8
  %i.af = add i64 %i.g, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %int_st_mmio_leN.exit
  %.036.i24 = phi i32 [ %i.ae, %int_st_mmio_leN.exit ], [ %i.au, %bb.k ] ; 2 uses
  %.034.i25 = phi i64 [ %i.ad, %int_st_mmio_leN.exit ], [ %i.as, %bb.k ] ; 3 uses
  %.032.i26 = phi i64 [ %i.ac, %int_st_mmio_leN.exit ], [ %i.aq, %bb.k ] ; 2 uses
  %.029.i27 = phi i64 [ %i.af, %int_st_mmio_leN.exit ], [ %i.at, %bb.k ] ; 2 uses
  %i.ag = trunc i64 %.034.i25 to i32
  %i.ah = or i32 %.036.i24, %i.ag
  %i.ai = or i32 %i.ah, 8
  %i.aj = tail call range(i32 0, 4) i32 @llvm.cttz.i32(i32 %i.ai, i1 true) ; 4 uses
  %i.ak = shl nuw nsw i32 1, %i.aj                ; 3 uses
  %i.al = load i64, ptr %i.l, align 8
  %i.am = tail call i32 @memory_region_dispatch_write(ptr noundef %i.i, i64 noundef %.029.i27, i64 noundef %.032.i26, i32 noundef %i.aj, i64 %i.al) #25 ; 2 uses
  %.not.i28 = icmp eq i32 %i.am, 0
  br i1 %.not.i28, label %bb.j, label %bb.i, !prof !95

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @io_failed(ptr noundef %0, ptr noundef nonnull readonly %1, i64 noundef %.034.i25, i32 noundef %i.ak, i32 noundef 1, i32 noundef %5, i32 noundef %i.am, i64 noundef %6)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = icmp eq i32 %i.aj, 3
  br i1 %i.an, label %int_st_mmio_leN.exit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = shl nuw nsw i32 8, %i.aj
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %.032.i26, %i.ap               ; 2 uses
  %i.ar = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.as = add i64 %.034.i25, %i.ar
  %i.at = add i64 %.029.i27, %i.ar
  %i.au = sub i32 %.036.i24, %i.ak                ; 2 uses
  %.not40.i29 = icmp eq i32 %i.au, 0
  br i1 %.not40.i29, label %int_st_mmio_leN.exit31, label %bb.h, !llvm.loop !76

int_st_mmio_leN.exit31:                           ; preds = %bb.j, %bb.k
  %.2.i30 = phi i64 [ %i.aq, %bb.k ], [ 0, %bb.j ]
  br i1 %i.j, label %glib_autoptr_cleanup_BQLLockAuto.exit, label %bb.l

bb.l:                                             ; preds = %int_st_mmio_leN.exit31
  tail call void @bql_unlock() #25
  br label %glib_autoptr_cleanup_BQLLockAuto.exit

glib_autoptr_cleanup_BQLLockAuto.exit:            ; preds = %int_st_mmio_leN.exit31, %bb.l
  ret i64 %.2.i30
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @do_st16_leN(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i128 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.d, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call fastcc i64 @do_st16_mmio_leN(ptr noundef %0, ptr noundef %i.f, i128 noundef %2, i64 noundef %i.h, i32 noundef %i.b, i32 noundef %3, i64 noundef %5)
  br label %store_parts_leN.exit34

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.d, 8
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %bb.e, label %bb.d, !prof !95

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i128 %2, 64
  %i.l = trunc nuw i128 %i.k to i64
  %i.m = shl i32 %i.b, 3
  %i.n = add i32 %i.m, -64
  %i.o = zext nneg i32 %i.n to i64
  %i.p = ashr i64 %i.l, %i.o
  br label %store_parts_leN.exit34

bb.e:                                             ; preds = %bb.c
  %i.q = lshr i32 %4, 9
  %i.r = and i32 %i.q, 7
  switch i32 %i.r, label %bb.y [
    i32 4, label %bb.f
    i32 3, label %bb.s
    i32 1, label %bb.x
    i32 0, label %bb.x
    i32 2, label %bb.x
    i32 5, label %bb.x
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = trunc i128 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.f
  %.018.i = phi ptr [ %i.t, %bb.f ], [ %i.ae, %bb.l ] ; 7 uses
  %.017.i = phi i32 [ 8, %bb.f ], [ %i.af, %bb.l ] ; 2 uses
  %.016.i = phi i64 [ %i.u, %bb.f ], [ %i.ac, %bb.l ] ; 4 uses
  %i.v = ptrtoint ptr %.018.i to i64
  %i.w = zext i32 %.017.i to i64
  %i.x = or i64 %i.w, %i.v
  %i.y = and i64 %i.x, 7
  switch i64 %i.y, label %bb.j [
    i64 4, label %bb.h
    i64 2, label %bb.i
    i64 6, label %bb.i
    i64 0, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = trunc i64 %.016.i to i32
  call void @llvm.assume(i1 true) [ "align"(ptr %.018.i, i64 4) ]
  store atomic i32 %i.z, ptr %.018.i monotonic, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.aa = trunc i64 %.016.i to i16
end_hunk_0
begin_hunk_1_@do_st16_leN:bb.a
  %.sink.i = phi i64 [ 8, %bb.j ], [ 16, %bb.i ], [ 32, %bb.h ]
  %.0.i = phi i32 [ 1, %bb.j ], [ 2, %bb.i ], [ 4, %bb.h ] ; 2 uses
  %i.ac = lshr i64 %.016.i, %.sink.i
  %i.ad = zext nneg i32 %.0.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.ad
  %i.af = sub i32 %.017.i, %.0.i                  ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %store_parts_leN.exit, label %bb.g, !llvm.loop !77

store_parts_leN.exit:                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.s, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.a, align 4
  %i.aj = add i32 %i.ai, -8
  %i.ak = lshr i128 %2, 64
  %i.al = trunc nuw i128 %i.ak to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %store_parts_leN.exit
  %.018.i28 = phi ptr [ %i.ah, %store_parts_leN.exit ], [ %i.av, %bb.r ] ; 7 uses
  %.017.i29 = phi i32 [ %i.aj, %store_parts_leN.exit ], [ %i.aw, %bb.r ] ; 2 uses
  %.016.i30 = phi i64 [ %i.al, %store_parts_leN.exit ], [ %i.at, %bb.r ] ; 4 uses
  %i.am = ptrtoint ptr %.018.i28 to i64
  %i.an = zext i32 %.017.i29 to i64
  %i.ao = or i64 %i.an, %i.am
  %i.ap = and i64 %i.ao, 7
  switch i64 %i.ap, label %bb.p [
    i64 4, label %bb.n
    i64 2, label %bb.o
    i64 6, label %bb.o
    i64 0, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.aq = trunc i64 %.016.i30 to i32
  call void @llvm.assume(i1 true) [ "align"(ptr %.018.i28, i64 4) ]
  store atomic i32 %i.aq, ptr %.018.i28 monotonic, align 4
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.ar = trunc i64 %.016.i30 to i16
  call void @llvm.assume(i1 true) [ "align"(ptr %.018.i28, i64 2) ]
  store atomic i16 %i.ar, ptr %.018.i28 monotonic, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.as = trunc i64 %.016.i30 to i8
  store i8 %i.as, ptr %.018.i28, align 1
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 653, ptr noundef nonnull @__func__.store_parts_leN, ptr noundef null) #28
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sink.i31 = phi i64 [ 8, %bb.p ], [ 16, %bb.o ], [ 32, %bb.n ]
  %.0.i32 = phi i32 [ 1, %bb.p ], [ 2, %bb.o ], [ 4, %bb.n ] ; 2 uses
  %i.at = lshr i64 %.016.i30, %.sink.i31          ; 2 uses
  %i.au = zext nneg i32 %.0.i32 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i28, i64 %i.au
  %i.aw = sub i32 %.017.i29, %.0.i32              ; 2 uses
  %.not.i33 = icmp eq i32 %i.aw, 0
  br i1 %.not.i33, label %store_parts_leN.exit34, label %bb.m, !llvm.loop !77

bb.s:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = shl i32 %i.b, 3                         ; 4 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = shl i32 %i.bb, 3
  %i.bd = and i32 %i.bc, 120
  %i.be = icmp slt i32 %i.az, 65                  ; 2 uses
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = sub i32 64, %i.az
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = lshr i64 -1, %i.bg
  %i.bi = zext i64 %i.bh to i128
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bj = sub nsw i32 128, %i.az
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 -1, %i.bk
  %i.bm = zext i64 %i.bl to i128
  %i.bn = shl nuw i128 %i.bm, 64
  %i.bo = or disjoint i128 %i.bn, 18446744073709551615
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i35 = phi i128 [ %i.bi, %bb.t ], [ %i.bo, %bb.u ]
  %i.bp = zext nneg i32 %i.bd to i128             ; 2 uses
  %i.bq = shl i128 %2, %i.bp
  %i.br = shl i128 %.0.i35, %i.bp
  %i.bs = and i64 %i.ba, 15
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.ay, i64 %i.bt ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bu, i64 16) ]
  %i.bv = load i128, ptr %i.bu, align 16
  %i.bw = xor i128 %i.br, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.sroa.03.0.i.i = phi i128 [ %i.bv, %bb.v ], [ %i.cb, %bb.w ] ; 2 uses
  %i.bx = and i128 %.sroa.03.0.i.i, %i.bw
  %i.by = or i128 %i.bx, %i.bq
  %i.bz = cmpxchg weak ptr %i.bu, i128 %.sroa.03.0.i.i, i128 %i.by monotonic monotonic, align 16 ; 2 uses
  %i.ca = extractvalue { i128, i1 } %i.bz, 1
  %i.cb = extractvalue { i128, i1 } %i.bz, 0
  br i1 %i.ca, label %store_whole_le16.exit, label %bb.w, !llvm.loop !5

store_whole_le16.exit:                            ; preds = %bb.w
  %i.cc = lshr i128 %2, 64
  %i.cd = trunc nuw i128 %i.cc to i64
  %i.ce = add nsw i32 %i.az, -64
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = ashr i64 %i.cd, %i.cf
  %.017.i36 = select i1 %i.be, i64 0, i64 %i.cg
  br label %store_parts_leN.exit34

bb.x:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = trunc i128 %2 to i64
  store i64 %i.cj, ptr %i.ci, align 1
  %i.ck = load ptr, ptr %i.ch, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 5 uses
  %i.cm = load i32, ptr %i.a, align 4
  %i.cn = add i32 %i.cm, -8                       ; 3 uses
  %i.co = lshr i128 %2, 64
  %i.cp = trunc nuw i128 %i.co to i64             ; 3 uses
  %i.cq = icmp sgt i32 %i.cn, 0
  br i1 %i.cq, label %.lr.ph.preheader.i, label %store_parts_leN.exit34

.lr.ph.preheader.i:                               ; preds = %bb.x
  %wide.trip.count.i = zext nneg i32 %i.cn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cr = icmp ult i32 %i.cn, 4
  br i1 %i.cr, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.089.i = phi i64 [ %i.cp, %.lr.ph.preheader.i.new ], [ %i.dg, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cs = trunc i64 %.089.i to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = lshr i64 %.089.i, 8
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.cv, ptr %i.cx, align 1
  %i.cy = lshr i64 %.089.i, 16
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cz, ptr %i.db, align 1
  %i.dc = lshr i64 %.089.i, 24
  %i.dd = trunc i64 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  store i8 %i.dd, ptr %i.df, align 1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.dg = lshr i64 %.089.i, 32                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %store_parts_leN.exit34.loopexit49.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

bb.y:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 2619, ptr noundef nonnull @__func__.do_st16_leN, ptr noundef null) #28
  unreachable

store_parts_leN.exit34.loopexit49.unr-lcssa:      ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %store_parts_leN.exit34, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %store_parts_leN.exit34.loopexit49.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %store_parts_leN.exit34.loopexit49.unr-lcssa ]
  %.089.i.epil.init = phi i64 [ %i.cp, %.lr.ph.preheader.i ], [ %i.dg, %store_parts_leN.exit34.loopexit49.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.089.i.epil = phi i64 [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.dj, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dh = trunc i64 %.089.i.epil to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i.epil
  store i8 %i.dh, ptr %i.di, align 1
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.dj = lshr i64 %.089.i.epil, 8                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %store_parts_leN.exit34, label %.lr.ph.i.epil, !llvm.loop !198

store_parts_leN.exit34:                           ; preds = %store_parts_leN.exit34.loopexit49.unr-lcssa, %.lr.ph.i.epil, %bb.r, %bb.x, %store_whole_le16.exit, %bb.d, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.p, %bb.d ], [ %i.at, %bb.r ], [ %.017.i36, %store_whole_le16.exit ], [ %i.cp, %bb.x ], [ %i.dg, %store_parts_leN.exit34.loopexit49.unr-lcssa ], [ %i.dj, %.lr.ph.i.epil ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_store_atom16_fallback(i32 noundef %0, i64 noundef %1) unnamed_addr #24 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_STORE_ATOM16_FALLBACK_DSTATE, align 2
  %.not2 = icmp eq i16 %i.b, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef %0, i64 noundef %1) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @qemu_plugin_vcpu_mem_cb(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #12

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress norecurse nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nounwind sspstrong uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #20 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #21 = { norecurse nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { norecurse nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #24 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind memory(read) }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = distinct !{!0, !86}
!1 = distinct !{!1, !86}
!2 = distinct !{!2, !86}
!3 = distinct !{!3, !86}
!4 = distinct !{!4, !86}
!5 = distinct !{!5, !86}
!6 = distinct !{!6, !86}
!7 = distinct !{!7, !86}
!8 = distinct !{!8, !86}
!9 = distinct !{!9, !86}
!10 = distinct !{!10, !86}
!11 = distinct !{!11, !86}
!12 = distinct !{!12, !86}
!13 = distinct !{!13, !86}
!14 = distinct !{!14, !86}
!15 = distinct !{!15, !86}
!16 = distinct !{!16, !86}
!17 = distinct !{!17, !86}
!18 = distinct !{!18, !86}
!19 = distinct !{!19, !86}
!20 = distinct !{!20, !86}
!21 = distinct !{!21, !86}
!22 = distinct !{!22, !86}
!23 = distinct !{!23, !86}
!24 = distinct !{!24, !86}
!25 = distinct !{!25, !86}
!26 = distinct !{!26, !86}
!27 = distinct !{!27, !86}
!28 = distinct !{!28, !86}
!29 = distinct !{!29, !86}
!30 = distinct !{!30, !86}
!31 = distinct !{!31, !86}
!32 = distinct !{!32, !86}
!33 = distinct !{!33, !86}
!34 = distinct !{!34, !86}
!35 = distinct !{!35, !86}
!36 = distinct !{!36, !86}
!37 = distinct !{!37, !86}
!38 = distinct !{!38, !86}
!39 = distinct !{!39, !86}
!40 = distinct !{!40, !86}
!41 = distinct !{!41, !86}
!42 = distinct !{!42, !86}
!43 = distinct !{!43, !86}
!44 = distinct !{!44, !86}
!45 = distinct !{!45, !86}
!46 = distinct !{!46, !86}
!47 = distinct !{!47, !86}
!48 = distinct !{!48, !86}
!49 = distinct !{!49, !86}
!50 = distinct !{!50, !86}
!51 = distinct !{!51, !86}
!52 = distinct !{!52, !86}
!53 = distinct !{!53, !86}
!54 = distinct !{!54, !86}
!55 = distinct !{!55, !86}
!56 = distinct !{!56, !86}
!57 = distinct !{!57, !86}
!58 = distinct !{!58, !86}
!59 = distinct !{!59, !86}
!60 = distinct !{!60, !86}
!61 = distinct !{!61, !86}
!62 = distinct !{!62, !86}
!63 = distinct !{!63, !86}
!64 = distinct !{!64, !86}
!65 = distinct !{!65, !86}
!66 = distinct !{!66, !86}
!67 = distinct !{!67, !86}
!68 = distinct !{!68, !86}
!69 = distinct !{!69, !86}
!70 = distinct !{!70, !86}
!71 = distinct !{!71, !86}
!72 = distinct !{null}
!73 = distinct !{!73, !86}
!74 = distinct !{!74, !86}
!75 = distinct !{!75, !86}
!76 = distinct !{!76, !86}
!77 = distinct !{!77, !86}
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 2}
!83 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!84 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!85 = !{!"auto-init"}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"branch_weights", i32 1999, i32 1}
!88 = !{!"branch_weights", i32 1, i32 0}
!89 = !{i64 2150423470}
!90 = !{i64 2156065222}
!91 = !{i64 2156069473}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = !{i64 2156174819}
!97 = !{i64 8676281}
!98 = !{i64 8676357}
!99 = !{i64 4255268}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{i64 2156542977}
!102 = !{i64 2156694480}
!103 = !{i64 2156846099}
!104 = !{i64 2156358301}
!105 = !{i64 2156497371}
!106 = !{i64 2156434345}
!107 = !{i64 2156648602}
!108 = !{i64 2156589283}
!109 = !{i64 2156800221}
!110 = !{i64 2156740804}
!111 = !{i64 2156363866}
!112 = !{i64 2156503074}
!113 = !{i64 2156444020}
!114 = !{i64 2156654339}
!115 = !{i64 2156594917}
!116 = !{i64 2156805958}
!117 = !{i64 2156746452}
!118 = !{i64 2156369429}
!119 = !{i64 2156508775}
!120 = !{i64 2156449632}
!121 = !{i64 2156660074}
!122 = !{i64 2156600549}
!123 = !{i64 2156811693}
!124 = !{i64 2156752098}
!125 = !{i64 2156374994}
!126 = !{i64 2156514478}
!127 = !{i64 2156455246}
!128 = !{i64 2156665811}
!129 = !{i64 2156606183}
!130 = !{i64 2156817430}
!131 = !{i64 2156757746}
!132 = !{i64 2156548240}
!133 = !{i64 2156699763}
!134 = !{i64 2156851382}
!135 = !{i64 2156380557}
!136 = !{i64 2156520179}
!137 = !{i64 2156460858}
!138 = !{i64 2156671546}
!139 = !{i64 2156611815}
!140 = !{i64 2156823165}
!141 = !{i64 2156763392}
!142 = !{i64 2156386122}
!143 = !{i64 2156525882}
!144 = !{i64 2156466472}
!145 = !{i64 2156677283}
!146 = !{i64 2156617449}
!147 = !{i64 2156828902}
!148 = !{i64 2156769040}
!149 = !{i64 2156391685}
!150 = !{i64 2156531583}
!151 = !{i64 2156472084}
!152 = !{i64 2156683018}
!153 = !{i64 2156623081}
!154 = !{i64 2156834637}
!155 = !{i64 2156774686}
!156 = !{i64 2156397250}
!157 = !{i64 2156537286}
!158 = !{i64 2156477698}
!159 = !{i64 2156688755}
!160 = !{i64 2156628715}
!161 = !{i64 2156840374}
!162 = !{i64 2156780334}
!163 = distinct !{!163, !86}
!164 = distinct !{!164, !86}
!165 = distinct !{!165, !86}
!166 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!167 = distinct !{!167, !86}
!168 = !{i64 2156092402}
!169 = !{i64 2156096761}
!170 = distinct !{!170, !86}
!171 = distinct !{!171, !86}
!172 = distinct !{!172, !86, !173}
!173 = !{!"llvm.loop.unswitch.partial.disable"}
!174 = distinct !{!174, !86}
!175 = !{i64 2156110992}
!176 = !{i64 2156115351}
!177 = distinct !{!177, !86}
!178 = distinct !{!178, !86}
!179 = distinct !{!179, !86}
!180 = distinct !{null}
!181 = !{!"branch_weights", i32 2002, i32 2000}
!182 = distinct !{!182, !86}
!183 = distinct !{!183, !86}
!184 = distinct !{null}
!185 = !{i64 2156175378}
!186 = !{i64 2156175908}
!187 = !{i64 2156176464}
!188 = !{i64 2156177020}
!189 = !{!"branch_weights", i32 4000000, i32 4001}
!190 = distinct !{!190, !86}
!191 = distinct !{!191, !100}
!192 = distinct !{!192, !100}
!193 = !{i64 4255868}
!194 = distinct !{!194, !86}
!195 = distinct !{!195, !100}
!196 = distinct !{!196, !100}
!197 = distinct !{!197, !100}
!198 = distinct !{!198, !100}
end_hunk_1
