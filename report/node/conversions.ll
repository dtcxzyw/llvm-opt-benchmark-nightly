inline.NumInlined: 1643
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  %brmerge.i.i177 = or i1 %i.mw, %.not.i.i176
  br i1 %brmerge.i.i177, label %_ZN10fast_float6bigint3mulEm.exit180, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i178

bb.am:                                            ; preds = %bb.am, %.lr.ph.i.i172
  %.016.i.i173 = phi i64 [ 0, %.lr.ph.i.i172 ], [ %i.ng, %bb.am ] ; 2 uses
  %.01215.i.i174 = phi i64 [ 0, %.lr.ph.i.i172 ], [ %i.ne, %bb.am ]
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i173 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = zext i64 %i.my to i128
  %i.na = mul nuw i128 %i.mz, %i.mv
  %i.nb = zext i64 %.01215.i.i174 to i128
  %i.nc = add nuw i128 %i.na, %i.nb               ; 2 uses
  %i.nd = lshr i128 %i.nc, 64                     ; 2 uses
  %i.ne = trunc nuw i128 %i.nd to i64             ; 2 uses
  %i.nf = trunc i128 %i.nc to i64
  store i64 %i.nf, ptr %i.mx, align 8
  %i.ng = add nuw nsw i64 %.016.i.i173, 1         ; 2 uses
  %i.nh = load i16, ptr %i.ho, align 8            ; 3 uses
  %i.ni = zext i16 %i.nh to i64                   ; 2 uses
  %i.nj = icmp samesign ult i64 %i.ng, %i.ni
  br i1 %i.nj, label %bb.am, label %._crit_edge.i.i175, !llvm.loop !170

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i178: ; preds = %._crit_edge.i.i175
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ni
  store i64 %i.ne, ptr %i.nk, align 8
  %i.nl = load i16, ptr %i.ho, align 8
  %i.nm = add i16 %i.nl, 1                        ; 2 uses
  store i16 %i.nm, ptr %i.ho, align 8
  br label %_ZN10fast_float6bigint3mulEm.exit180

_ZN10fast_float6bigint3mulEm.exit180:             ; preds = %._crit_edge.i.i175, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i178
  %i.nn = phi i16 [ %i.nm, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i178 ], [ %i.nh, %._crit_edge.i.i175 ]
  %.not20.i.i181 = icmp eq i64 %.5262.lcssa, 0
  br i1 %.not20.i.i181, label %_ZN10fast_float6bigint3addEm.exit191, label %.lr.ph.i.i182

_ZN10fast_float6bigint3mulEm.exit180.thread:      ; preds = %bb.al
  %.not20.i.i181559 = icmp eq i64 %.5262.lcssa, 0
  br i1 %.not20.i.i181559, label %_ZN10fast_float6bigint3addEm.exit191, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i188

.lr.ph.i.i182:                                    ; preds = %_ZN10fast_float6bigint3mulEm.exit180
  %.not.i183 = icmp eq i16 %i.nn, 0
  br i1 %.not.i183, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i188, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i182
  %i.no = load i64, ptr %0, align 8
  %i.np = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.no, i64 %.5262.lcssa) ; 2 uses
  %i.nq = extractvalue { i64, i1 } %i.np, 1
  %i.nr = extractvalue { i64, i1 } %i.np, 0
  store i64 %i.nr, ptr %0, align 8
  br i1 %i.nq, label %.peel.next.i185, label %_ZN10fast_float6bigint3addEm.exit191

.peel.next.i185:                                  ; preds = %bb.an, %bb.ao
  %.01421.i.i186 = phi i64 [ %i.oa, %bb.ao ], [ 1, %bb.an ] ; 3 uses
  %i.ns = load i16, ptr %i.ho, align 8            ; 2 uses
  %i.nt = zext i16 %i.ns to i64                   ; 2 uses
  %i.nu = icmp samesign ult i64 %.01421.i.i186, %i.nt
  br i1 %i.nu, label %bb.ao, label %.critedge.i.i187

bb.ao:                                            ; preds = %.peel.next.i185
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i186 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nw, i64 1) ; 2 uses
  %i.ny = extractvalue { i64, i1 } %i.nx, 1
  %i.nz = extractvalue { i64, i1 } %i.nx, 0
  store i64 %i.nz, ptr %i.nv, align 8
  %i.oa = add nuw nsw i64 %.01421.i.i186, 1
  br i1 %i.ny, label %.peel.next.i185, label %_ZN10fast_float6bigint3addEm.exit191, !llvm.loop !171

.critedge.i.i187:                                 ; preds = %.peel.next.i185
  %i.ob = icmp ult i16 %i.ns, 62
  br i1 %i.ob, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i188, label %_ZN10fast_float6bigint3addEm.exit191

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i188: ; preds = %_ZN10fast_float6bigint3mulEm.exit180.thread, %.critedge.i.i187, %.lr.ph.i.i182
  %.lcssa16.i189 = phi i64 [ %i.nt, %.critedge.i.i187 ], [ 0, %.lr.ph.i.i182 ], [ 0, %_ZN10fast_float6bigint3mulEm.exit180.thread ]
  %.022.i.lcssa15.i190 = phi i64 [ 1, %.critedge.i.i187 ], [ %.5262.lcssa, %.lr.ph.i.i182 ], [ %.5262.lcssa, %_ZN10fast_float6bigint3mulEm.exit180.thread ]
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa16.i189
  store i64 %.022.i.lcssa15.i190, ptr %i.oc, align 8
  %i.od = load i16, ptr %i.ho, align 8
  %i.oe = add i16 %i.od, 1
  store i16 %i.oe, ptr %i.ho, align 8
  br label %_ZN10fast_float6bigint3addEm.exit191

_ZN10fast_float6bigint3addEm.exit191:             ; preds = %bb.ao, %_ZN10fast_float6bigint3mulEm.exit180.thread, %_ZN10fast_float6bigint3mulEm.exit180, %bb.an, %.critedge.i.i187, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i188
  %.not60 = icmp eq ptr %.6.lcssa, %i.ha
  br i1 %.not60, label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit, label %.preheader279, !llvm.loop !177

_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit.sink.split: ; preds = %bb.r, %bb.ak, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i167, %.critedge.i.i166, %bb.aj, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i105, %.critedge.i.i104, %bb.q
  %i.of = load i64, ptr %3, align 8
  %i.og = add i64 %i.of, 1
  store i64 %i.og, ptr %3, align 8
  br label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit

_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit:   ; preds = %_ZN10fast_float6bigint3addEm.exit191, %bb.ai, %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit.sink.split, %._crit_edge397, %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit81.thread, %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit, %.preheader, %._crit_edge378, %_ZN10fast_float12is_truncatedIcEEbNS_4spanIKT_EE.exit, %bb.p
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #21
  br i1 %i.a, label %bb.b, label %_ZN10fast_float6bigint5pow10Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = and i64 %i.b, 63                         ; 3 uses
  %i.d = lshr i64 %i.b, 6                         ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 64, %i.c                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.g = load i16, ptr %i.f, align 8
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.h = icmp ugt i16 %i.p, 61
  %i.i = lshr i64 %i.k, %i.e                      ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.i, 0             ; 2 uses
  %brmerge.i.i.i.i = or i1 %.not.i.i.i.i, %i.h
  br i1 %brmerge.i.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.i.i.i, label %bb.d

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.01622.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.01721.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01721.i.i.i.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = shl i64 %i.k, %i.c
  %i.m = lshr i64 %.01622.i.i.i.i, %i.e
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.j, align 8
  %i.o = add nuw nsw i64 %.01721.i.i.i.i, 1       ; 2 uses
  %i.p = load i16, ptr %i.f, align 8              ; 3 uses
  %i.q = zext i16 %i.p to i64                     ; 3 uses
  %i.r = icmp samesign ult i64 %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !178

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  store i64 %i.i, ptr %i.s, align 8
  %i.t = load i16, ptr %i.f, align 8
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %i.f, align 8
  br label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN10fast_float6bigint8shl_bitsEm.exit.i.i.i:     ; preds = %._crit_edge.i.i.i.i
  %.not9.i.i.i = icmp ne i64 %i.d, 0
  %or.cond.not = and i1 %.not9.i.i.i, %.not.i.i.i.i
  br i1 %or.cond.not, label %bb.e, label %_ZN10fast_float6bigint5pow10Ej.exit

_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.not9.i.i.i.old = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i.old, label %_ZN10fast_float6bigint5pow10Ej.exit, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i._crit_edge

_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i._crit_edge: ; preds = %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.pre = load i16, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre42 = zext i16 %.pre to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i._crit_edge, %_ZN10fast_float6bigint8shl_bitsEm.exit.i.i.i
  %.pre-phi43 = phi i64 [ %.pre42, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i._crit_edge ], [ %i.q, %_ZN10fast_float6bigint8shl_bitsEm.exit.i.i.i ] ; 3 uses
  %i.v = phi i16 [ %.pre, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i._crit_edge ], [ %i.p, %_ZN10fast_float6bigint8shl_bitsEm.exit.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.x = add nuw nsw i64 %i.d, %.pre-phi43
  %i.y = icmp samesign ult i64 %i.x, 63
  %i.z = icmp ne i16 %i.v, 0
  %or.cond.not.i.i.i.i = and i1 %i.z, %i.y
  br i1 %or.cond.not.i.i.i.i, label %bb.f, label %_ZN10fast_float6bigint5pow10Ej.exit

bb.f:                                             ; preds = %bb.e
  %.idx12.i.i.i.i = shl nuw nsw i64 %i.d, 3       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i.i ; 2 uses
  %i.ab = icmp ugt i16 %i.v, 1
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !72

bb.g:                                             ; preds = %bb.f
  %.idx.i.i.i.i = shl nuw nsw i64 %.pre-phi43, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre-phi43
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load i64, ptr %0, align 8
  store i64 %i.ae, ptr %i.ad, align 8
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i: ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i.i, i1 false)
  %i.af = load i16, ptr %i.w, align 8
  %i.ag = trunc nuw i64 %i.d to i16
  %i.ah = add i16 %i.af, %i.ag
  store i16 %i.ah, ptr %i.w, align 8
  br label %_ZN10fast_float6bigint5pow10Ej.exit

_ZN10fast_float6bigint5pow10Ej.exit:              ; preds = %bb.e, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i, %bb.a, %_ZN10fast_float6bigint8shl_bitsEm.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aj = load i16, ptr %i.ai, align 8            ; 4 uses
  switch i16 %i.aj, label %bb.j [
    i16 0, label %_ZNK10fast_float6bigint10bit_lengthEv.exit
    i16 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN10fast_float6bigint5pow10Ej.exit
  %i.ak = load i64, ptr %0, align 8               ; 2 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true) ; 2 uses
  %i.am = shl i64 %i.ak, %i.al
  br label %_ZNK10fast_float6bigint4hi64ERb.exit.thread

bb.j:                                             ; preds = %_ZN10fast_float6bigint5pow10Ej.exit
  %2 = zext i16 %i.aj to i64                      ; 4 uses
  %i.an = getelementptr i8, ptr %0, i64 -8
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %2
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr i8, ptr %0, i64 -16
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %2
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true) ; 5 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN10fast_float11uint64_hi64EmmRb.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = shl i64 %i.as, %i.at
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.as, i64 %i.at)
  br label %_ZN10fast_float11uint64_hi64EmmRb.exit.i

_ZN10fast_float11uint64_hi64EmmRb.exit.i:         ; preds = %bb.k, %bb.j
  %.in.in.i = phi i64 [ %i.av, %bb.k ], [ %i.as, %bb.j ] ; 2 uses
  %.0.i.i = phi i64 [ %i.aw, %bb.k ], [ %i.ap, %bb.j ] ; 2 uses
  %.in.i = icmp ne i64 %.in.in.i, 0
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %0, i64 %2
  %i.ax = icmp ugt i16 %i.aj, 2
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZNK10fast_float6bigint4hi64ERb.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ 2, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.ay = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ay
  %i.az = load i64, ptr %gep.i.i, align 8         ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.az, 0
  %i.ba = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %2
  %or.cond = select i1 %.not.not.i.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %_ZNK10fast_float6bigint4hi64ERb.exit, label %.lr.ph.i.i, !llvm.loop !179

_ZNK10fast_float6bigint4hi64ERb.exit:             ; preds = %.lr.ph.i.i
  %i.bb = or i64 %i.az, %.in.in.i
  %i.bc = icmp ne i64 %i.bb, 0
  br label %_ZNK10fast_float6bigint4hi64ERb.exit.thread

_ZNK10fast_float6bigint4hi64ERb.exit.thread:      ; preds = %_ZNK10fast_float6bigint4hi64ERb.exit, %bb.i, %_ZN10fast_float11uint64_hi64EmmRb.exit.i
  %.pre-phi = phi i64 [ %i.at, %_ZNK10fast_float6bigint4hi64ERb.exit ], [ %i.al, %bb.i ], [ %i.at, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ]
  %.0.i431 = phi i64 [ %.0.i.i, %_ZNK10fast_float6bigint4hi64ERb.exit ], [ %i.am, %bb.i ], [ %.0.i.i, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ]
  %.029 = phi i1 [ %i.bc, %_ZNK10fast_float6bigint4hi64ERb.exit ], [ false, %bb.i ], [ %.in.i, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ]
  %i.bd = trunc nuw nsw i64 %.pre-phi to i32
  br label %_ZNK10fast_float6bigint10bit_lengthEv.exit

_ZNK10fast_float6bigint10bit_lengthEv.exit:       ; preds = %_ZN10fast_float6bigint5pow10Ej.exit, %_ZNK10fast_float6bigint4hi64ERb.exit.thread
  %.0.i432 = phi i64 [ %.0.i431, %_ZNK10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN10fast_float6bigint5pow10Ej.exit ] ; 2 uses
  %.030 = phi i1 [ %.029, %_ZNK10fast_float6bigint4hi64ERb.exit.thread ], [ false, %_ZN10fast_float6bigint5pow10Ej.exit ]
  %.0.i.i5 = phi i32 [ %i.bd, %_ZNK10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN10fast_float6bigint5pow10Ej.exit ]
  %.tr.i = zext i16 %i.aj to i32
  %i.be = shl nuw nsw i32 %.tr.i, 6
  %i.bf = sub nsw i32 %i.be, %.0.i.i5
  %i.bg = lshr i64 %.0.i432, 11                   ; 2 uses
  %i.bh = and i64 %.0.i432, 2047                  ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 1024                 ; 2 uses
  %i.bj = icmp samesign ugt i64 %i.bh, 1024
  %i.bk = trunc i64 %i.bg to i1
  %or.cond.i.i8 = and i1 %.030, %i.bi
  %or.cond6.i.i9 = select i1 %i.bj, i1 true, i1 %or.cond.i.i8
  %i.bl = and i1 %i.bi, %i.bk
  %i.bm = or i1 %i.bl, %or.cond6.i.i9
  %i.bn = zext i1 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bg, %i.bn            ; 2 uses
  %.not14.i = icmp samesign ult i64 %i.bo, 9007199254740992 ; 2 uses
  %.sroa.13.0.v = select i1 %.not14.i, i32 1022, i32 1023
  %.sroa.13.0 = add nsw i32 %.sroa.13.0.v, %i.bf  ; 2 uses
  %i.bp = and i64 %i.bo, 13510798882111487
  %.not15.i = icmp samesign ult i32 %.sroa.13.0, 2047
  %.sroa.13.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.13.0, i32 2047)
  %i.bq = select i1 %.not15.i, i1 %.not14.i, i1 false
  %.sroa.0.1 = select i1 %i.bq, i64 %i.bp, i64 0
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.13.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %0, i64 %1, i32 %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.fast_float::bigint", align 8 ; 13 uses
  %.not.i = icmp sgt i32 %2, -11                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub i32 1, %2                            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.a, i32 64)
  %i.b = icmp sgt i32 %i.a, 63
  %i.c = zext nneg i32 %.sroa.speculated to i64
  %i.d = lshr i64 %1, %i.c
  %storemerge.i.i = select i1 %i.b, i64 0, i64 %i.d ; 2 uses
  %i.e = icmp ugt i64 %storemerge.i.i, 4503599627370495
  %i.f = zext i1 %i.e to i32
  br label %_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE_EEvS5_T0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %1, 11
  %i.h = and i64 %i.g, 4503599627370495
  %.not15.i = icmp slt i32 %2, 2036
  %i.i = tail call i32 @llvm.smin.i32(i32 %2, i32 2036)
  %spec.select = add nsw i32 %i.i, 11
  %spec.select99 = select i1 %.not15.i, i64 %i.h, i64 0
  br label %_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE_EEvS5_T0_.exit

_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE_EEvS5_T0_.exit: ; preds = %bb.c, %bb.b
  %.sroa.14.1 = phi i32 [ %spec.select, %bb.c ], [ %i.f, %bb.b ]
  %.sroa.0.1 = phi i64 [ %spec.select99, %bb.c ], [ %storemerge.i.i, %bb.b ] ; 3 uses
  %i.j = zext nneg i32 %.sroa.14.1 to i64
  %i.k = shl nuw nsw i64 %i.j, 52
  %.sroa.0.1.masked = and i64 %.sroa.0.1, 9218868437227405312
  %i.l = or i64 %i.k, %.sroa.0.1.masked           ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE_EEvS5_T0_.exit
  %i.n = and i64 %.sroa.0.1, 4503599627370495
  br label %_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit

bb.e:                                             ; preds = %_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE_EEvS5_T0_.exit
  %i.o = lshr exact i64 %i.l, 52
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i64 %.sroa.0.1, 4503599627370495
  %i.r = or disjoint i64 %i.q, 4503599627370496
  %i.s = add nsw i32 %i.p, -1076
  br label %_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit

_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit: ; preds = %bb.d, %bb.e
  %.sroa.4.0 = phi i32 [ -1075, %bb.d ], [ %i.s, %bb.e ]
  %storemerge.i = phi i64 [ %i.n, %bb.d ], [ %i.r, %bb.e ]
  %i.t = shl nuw nsw i64 %storemerge.i, 1
  %i.u = or disjoint i64 %i.t, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.w, i8 0, i64 496, i1 false)
  store i64 %i.u, ptr %4, align 8
  store i16 1, ptr %i.v, align 8
  %i.x = sub nsw i32 %.sroa.4.0, %3               ; 4 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit
  %i.y = sub nsw i32 0, %3
  %i.z = call noundef zeroext i1 @_ZN10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %4, i32 noundef %i.y) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ab = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ac = and i64 %i.ab, 63                       ; 3 uses
  %i.ad = lshr i64 %i.ab, 6                       ; 5 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = sub nuw nsw i64 64, %i.ac               ; 2 uses
  %i.af = load i16, ptr %i.v, align 8
  %.not25.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not25.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.ag = icmp ugt i16 %i.ao, 61
  %i.ah = lshr i64 %i.aj, %i.ae                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ah, 0              ; 2 uses
  %brmerge.i.i.i = or i1 %.not.i.i.i, %i.ag
  br i1 %brmerge.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.i.i, label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.01622.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ 0, %bb.i ]
  %.01721.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01721.i.i.i ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = shl i64 %i.aj, %i.ac
  %i.al = lshr i64 %.01622.i.i.i, %i.ae
  %i.am = or disjoint i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.ai, align 8
  %i.an = add nuw nsw i64 %.01721.i.i.i, 1        ; 2 uses
  %i.ao = load i16, ptr %i.v, align 8             ; 3 uses
  %i.ap = zext i16 %i.ao to i64                   ; 3 uses
  %i.aq = icmp samesign ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !178

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ap
  store i64 %i.ah, ptr %i.ar, align 8
  %i.as = load i16, ptr %i.v, align 8
  %i.at = add i16 %i.as, 1
  store i16 %i.at, ptr %i.v, align 8
  br label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i

_ZN10fast_float6bigint8shl_bitsEm.exit.i.i:       ; preds = %._crit_edge.i.i.i
  %.not9.i.i = icmp ne i64 %i.ad, 0
  %or.cond.not = and i1 %.not9.i.i, %.not.i.i.i
  br i1 %or.cond.not, label %bb.k, label %_ZN10fast_float6bigint4pow2Ej.exit

_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.not9.i.i.old = icmp eq i64 %i.ad, 0
end_hunk_0
