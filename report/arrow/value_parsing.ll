inline.NumInlined: 865
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread: ; preds = %bb.ab
  %.not20.i.i181502 = icmp eq i64 %.5260.lcssa, 0
  br i1 %.not20.i.i181502, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189

.lr.ph.i.i182:                                    ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180
  %i.qq = zext i16 %i.qp to i64                   ; 2 uses
  %i.qr = load i64, ptr %0, align 8, !tbaa !72
  %i.qs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qr, i64 %.5260.lcssa) ; 2 uses
  %i.qt = extractvalue { i64, i1 } %i.qs, 1
  %i.qu = extractvalue { i64, i1 } %i.qs, 0
  store i64 %i.qu, ptr %0, align 8, !tbaa !72
  br i1 %i.qt, label %.peel.next.i185.preheader, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191

.peel.next.i185.preheader:                        ; preds = %.lr.ph.i.i182
  %exitcond.not.i.i187565 = icmp eq i16 %i.qp, 1
  br i1 %exitcond.not.i.i187565, label %.critedge.i.i188, label %.lr.ph567

.peel.next.i185:                                  ; preds = %.lr.ph567
  %i.qv = add nuw nsw i64 %.01421.i.i186566, 1    ; 2 uses
  %exitcond.not.i.i187 = icmp eq i64 %i.qv, %i.qq
  br i1 %exitcond.not.i.i187, label %.critedge.i.i188, label %.lr.ph567, !llvm.loop !94

.lr.ph567:                                        ; preds = %.peel.next.i185.preheader, %.peel.next.i185
  %.01421.i.i186566 = phi i64 [ %i.qv, %.peel.next.i185 ], [ 1, %.peel.next.i185.preheader ] ; 2 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i186566 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !72
  %i.qy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qx, i64 1) ; 2 uses
  %i.qz = extractvalue { i64, i1 } %i.qy, 1
  %i.ra = extractvalue { i64, i1 } %i.qy, 0
  store i64 %i.ra, ptr %i.qw, align 8, !tbaa !72
  br i1 %i.qz, label %.peel.next.i185, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191, !llvm.loop !94

.critedge.i.i188:                                 ; preds = %.peel.next.i185, %.peel.next.i185.preheader
  %i.rb = icmp ult i16 %i.qp, 62
  br i1 %i.rb, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189: ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread, %.critedge.i.i188
  %i.rc = phi i64 [ %i.qq, %.critedge.i.i188 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread ]
  %i.rd = phi i16 [ %i.qp, %.critedge.i.i188 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread ]
  %.022.i.lcssa7.i190 = phi i64 [ 1, %.critedge.i.i188 ], [ %.5260.lcssa, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread ]
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.rc
  store i64 %.022.i.lcssa7.i190, ptr %i.re, align 8, !tbaa !72
  %i.rf = add nuw nsw i16 %i.rd, 1                ; 2 uses
  store i16 %i.rf, ptr %i.jc, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191

_ZN14arrow_vendored10fast_float6bigint3addEm.exit191: ; preds = %.lr.ph567, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180, %.lr.ph.i.i182, %.critedge.i.i188, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189
  %i.rg = phi i16 [ %i.rf, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189 ], [ %i.jd, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread ], [ %i.qp, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180 ], [ %i.qp, %.lr.ph.i.i182 ], [ %i.qp, %.critedge.i.i188 ], [ %i.qp, %.lr.ph567 ]
  %.not60 = icmp eq ptr %.6.lcssa, %i.io
  br i1 %.not60, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.preheader287, !llvm.loop !101

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split: ; preds = %.lr.ph564, %.lr.ph573, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i168, %.critedge.i.i167, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106, %.critedge.i.i105, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98
  %i.rh = load i64, ptr %3, align 8, !tbaa !72
  %i.ri = add i64 %i.rh, 1
  store i64 %i.ri, ptr %3, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit: ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191, %bb.aa, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split, %._crit_edge369, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81.thread, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit, %.preheader, %._crit_edge350, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN14arrow_vendored10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #19
  br i1 %i.a, label %bb.b, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = and i64 %i.b, 63                         ; 4 uses
  %i.d = lshr i64 %i.b, 6                         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 64, %i.c                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !90   ; 5 uses
  %i.h = zext i16 %i.g to i64                     ; 4 uses
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 65532                    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat47 = shufflevector <2 x i64> %broadcast.splatinsert46, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load48, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !72 ; 3 uses
  %wide.load48 = load <2 x i64>, ptr %i.j, align 8, !tbaa !72 ; 4 uses
  %i.k = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.l = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load48, <2 x i32> <i32 1, i32 2>
  %i.m = shl <2 x i64> %wide.load, %broadcast.splat
  %i.n = shl <2 x i64> %wide.load48, %broadcast.splat
  %i.o = lshr <2 x i64> %i.k, %broadcast.splat47
  %i.p = lshr <2 x i64> %i.l, %broadcast.splat47
  %i.q = or disjoint <2 x i64> %i.m, %i.o
  %i.r = or disjoint <2 x i64> %i.n, %i.p
  store <2 x i64> %i.q, ptr %i.i, align 8, !tbaa !72
  store <2 x i64> %i.r, ptr %i.j, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load48, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader49

.lr.ph.i.i.i.i.preheader49:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.01622.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.01721.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa45 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.t = lshr i64 %.lcssa45, %i.e                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.d

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader49, %.lr.ph.i.i.i.i
  %.01622.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %.01622.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ]
  %.01721.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.01721.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01721.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72   ; 3 uses
  %i.w = shl i64 %i.v, %i.c
  %i.x = lshr i64 %.01622.i.i.i.i, %i.e
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.u, align 8, !tbaa !72
  %i.z = add nuw nsw i64 %.01721.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = icmp ult i16 %i.g, 62
  br i1 %i.aa, label %bb.e, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !72
  %i.ac = add nuw nsw i16 %i.g, 1
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.d, %i.af
  %i.ah = icmp samesign ult i64 %i.ag, 63
  %i.ai = icmp ne i16 %i.ae, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.g:                                             ; preds = %bb.f
  %.idx12.i.i.i.i = shl nuw nsw i64 %i.d, 3       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i.i ; 2 uses
  %i.ak = icmp ugt i16 %i.ae, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !106

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %0, align 8, !tbaa !72
  store i64 %i.an, ptr %i.am, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i: ; preds = %bb.i, %bb.h
  %i.ao = phi i16 [ %.pre.i.i.i, %bb.h ], [ 1, %bb.i ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i.i, i1 false), !tbaa !72
  %i.ap = trunc nuw i64 %i.d to i16
  %i.aq = add i16 %i.ao, %i.ap
  store i16 %i.aq, ptr %i.ad, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit: ; preds = %bb.f, %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i, %bb.a, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !90 ; 4 uses
  %i.at = zext i16 %i.as to i64                   ; 4 uses
  switch i16 %i.as, label %bb.k [
    i16 0, label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit
    i16 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.au = load i64, ptr %0, align 8, !tbaa !72    ; 2 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true) ; 2 uses
  %i.aw = shl i64 %i.au, %i.av
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

bb.k:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.ax = getelementptr i8, ptr %0, i64 -8
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %i.at
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !72 ; 3 uses
  %i.ba = getelementptr i8, ptr %0, i64 -16
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.at
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !72 ; 3 uses
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 true) ; 5 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = shl i64 %i.bc, %i.bd
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.bc, i64 %i.bd)
  br label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i

_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i: ; preds = %bb.l, %bb.k
  %.in.in.i = phi i64 [ %i.bf, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %.0.i.i = phi i64 [ %i.bg, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  %.in.i = icmp ne i64 %.in.in.i, 0
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.bh = icmp ugt i16 %i.as, 2
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ 2, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bi = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bi
  %i.bj = load i64, ptr %gep.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bj, 0
  %i.bk = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.at
  %or.cond = select i1 %.not.not.i.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, label %.lr.ph.i.i, !llvm.loop !107

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit: ; preds = %.lr.ph.i.i
  %i.bl = or i64 %i.bj, %.in.in.i
  %i.bm = icmp ne i64 %i.bl, 0
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread: ; preds = %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, %bb.j, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i
  %.pre-phi = phi i64 [ %i.bd, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.av, %bb.j ], [ %i.bd, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.0.i431 = phi i64 [ %.0.i.i, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.aw, %bb.j ], [ %.0.i.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.029 = phi i1 [ %i.bm, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ false, %bb.j ], [ %.in.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %i.bn = trunc nuw nsw i64 %.pre-phi to i32
  br label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit

_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit: ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread
  %.0.i432 = phi i64 [ %.0.i431, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ] ; 2 uses
  %.030 = phi i1 [ %.029, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ false, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ]
  %.0.i.i5 = phi i32 [ %i.bn, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ]
  %.tr.i = zext i16 %i.as to i32
  %i.bo = shl nuw nsw i32 %.tr.i, 6
  %i.bp = sub nsw i32 %i.bo, %.0.i.i5
  %i.bq = lshr i64 %.0.i432, 40                   ; 2 uses
  %i.br = and i64 %.0.i432, 1099511627775         ; 2 uses
  %i.bs = icmp eq i64 %i.br, 549755813888         ; 2 uses
  %i.bt = icmp samesign ugt i64 %i.br, 549755813888
  %i.bu = trunc i64 %i.bq to i1
  %or.cond.i.i8 = and i1 %.030, %i.bs
  %or.cond6.i.i9 = select i1 %i.bt, i1 true, i1 %or.cond.i.i8
  %i.bv = and i1 %i.bs, %i.bu
  %i.bw = or i1 %i.bv, %or.cond6.i.i9
  %i.bx = zext i1 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bq, %i.bx            ; 2 uses
  %.not14.i = icmp samesign ult i64 %i.by, 16777216 ; 2 uses
  %.sroa.13.0.v = select i1 %.not14.i, i32 126, i32 127
  %.sroa.13.0 = add nsw i32 %.sroa.13.0.v, %i.bp  ; 2 uses
  %i.bz = and i64 %i.by, 25165823
  %.not15.i = icmp samesign ult i32 %.sroa.13.0, 255
  %.sroa.13.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.13.0, i32 255)
  %i.ca = select i1 %.not15.i, i1 %.not14.i, i1 false
  %.sroa.0.1 = select i1 %i.ca, i64 %i.bz, i64 0
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.13.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN14arrow_vendored10fast_float19negative_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintES2_i(ptr noundef nonnull align 8 dereferenceable(504) %0, i64 %1, i32 %2, i32 noundef %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow_vendored::fast_float::bigint", align 8 ; 14 uses
  %.not.i = icmp sgt i32 %2, -40                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub i32 1, %2                            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.a, i32 64)
  %i.b = icmp sgt i32 %i.a, 63
  %i.c = zext nneg i32 %.sroa.speculated to i64
  %i.d = lshr i64 %1, %i.c
  %storemerge.i.i = select i1 %i.b, i64 0, i64 %i.d ; 2 uses
  %i.e = icmp ugt i64 %storemerge.i.i, 8388607
  %i.f = zext i1 %i.e to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %1, 40
  %i.h = and i64 %i.g, 8388607
  %.not15.i = icmp slt i32 %2, 215
  %i.i = tail call i32 @llvm.smin.i32(i32 %2, i32 215)
  %spec.select = add nsw i32 %i.i, 40
  %spec.select97 = select i1 %.not15.i, i64 %i.h, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.14.1 = phi i32 [ %spec.select, %bb.c ], [ %i.f, %bb.b ]
  %.sroa.0.1 = phi i64 [ %spec.select97, %bb.c ], [ %storemerge.i.i, %bb.b ] ; 3 uses
  %i.j = trunc i64 %.sroa.0.1 to i32
  %i.k = shl nuw nsw i32 %.sroa.14.1, 23
  %.masked = and i32 %i.j, 2139095040
  %i.l = or i32 %i.k, %.masked                    ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %.sroa.0.1, 8388607
  br label %_ZN14arrow_vendored10fast_float11to_extendedIfEENS0_17adjusted_mantissaET_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = lshr exact i32 %i.l, 23
  %i.p = and i64 %.sroa.0.1, 8388607
  %i.q = or disjoint i64 %i.p, 8388608
  %i.r = add nsw i32 %i.o, -151
  br label %_ZN14arrow_vendored10fast_float11to_extendedIfEENS0_17adjusted_mantissaET_.exit

_ZN14arrow_vendored10fast_float11to_extendedIfEENS0_17adjusted_mantissaET_.exit: ; preds = %bb.e, %bb.f
  %.sroa.4.0 = phi i32 [ -150, %bb.e ], [ %i.r, %bb.f ]
  %storemerge.in.i = phi i64 [ %i.n, %bb.e ], [ %i.q, %bb.f ]
  %i.s = shl nuw nsw i64 %storemerge.in.i, 1
  %i.t = or disjoint i64 %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.v, i8 0, i64 496, i1 false)
  store i64 %i.t, ptr %4, align 8, !tbaa !72
  store i16 1, ptr %i.u, align 8, !tbaa !90
  %i.w = sub nsw i32 %.sroa.4.0, %3               ; 4 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN14arrow_vendored10fast_float11to_extendedIfEENS0_17adjusted_mantissaET_.exit
  %i.x = sub nsw i32 0, %3
  %i.y = call noundef zeroext i1 @_ZN14arrow_vendored10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %4, i32 noundef %i.x) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN14arrow_vendored10fast_float11to_extendedIfEENS0_17adjusted_mantissaET_.exit
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %i.w to i64               ; 2 uses
  %i.ab = and i64 %i.aa, 63                       ; 4 uses
  %i.ac = lshr i64 %i.aa, 6                       ; 4 uses
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = sub nuw nsw i64 64, %i.ab               ; 3 uses
  %i.ae = load i16, ptr %i.u, align 8, !tbaa !90  ; 5 uses
  %i.af = zext i16 %i.ae to i64                   ; 4 uses
  %.not25.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not25.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %min.iters.check132 = icmp ult i16 %i.ae, 4
  br i1 %min.iters.check132, label %.lr.ph.i.i.i.preheader152, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec135 = and i64 %i.af, 65532                ; 3 uses
  %broadcast.splatinsert136 = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat137 = shufflevector <2 x i64> %broadcast.splatinsert136, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert138 = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat139 = shufflevector <2 x i64> %broadcast.splatinsert138, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph133
  %index141 = phi i64 [ 0, %vector.ph133 ], [ %index.next145, %vector.body140 ] ; 2 uses
  %vector.recur142 = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph133 ], [ %wide.load144, %vector.body140 ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load143 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !72 ; 3 uses
  %wide.load144 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !72 ; 4 uses
  %i.ai = shufflevector <2 x i64> %vector.recur142, <2 x i64> %wide.load143, <2 x i32> <i32 1, i32 2>
  %i.aj = shufflevector <2 x i64> %wide.load143, <2 x i64> %wide.load144, <2 x i32> <i32 1, i32 2>
  %i.ak = shl <2 x i64> %wide.load143, %broadcast.splat137
  %i.al = shl <2 x i64> %wide.load144, %broadcast.splat137
  %i.am = lshr <2 x i64> %i.ai, %broadcast.splat139
  %i.an = lshr <2 x i64> %i.aj, %broadcast.splat139
  %i.ao = or disjoint <2 x i64> %i.ak, %i.am
  %i.ap = or disjoint <2 x i64> %i.al, %i.an
  store <2 x i64> %i.ao, ptr %i.ag, align 8, !tbaa !72
  store <2 x i64> %i.ap, ptr %i.ah, align 8, !tbaa !72
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next145, %n.vec135
  br i1 %i.aq, label %middle.block146, label %vector.body140, !llvm.loop !108
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EERNS0_22parsed_number_string_tIS3_EERT_:bb.a
_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.gy, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.ha = add nsw i32 %.2.i.lcssa.i, 1
  %i.hb = load i64, ptr %i.a, align 8, !tbaa !72
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = sub i32 %i.ha, %i.hc                    ; 3 uses
  %i.he = icmp sgt i32 %i.hd, -1
  br i1 %i.he, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.hf = call { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.hd) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

bb.ak:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.hg = add nsw i32 %i.gl, 1075
  %i.hh = call { i64, i32 } @_ZN14arrow_vendored10fast_float19negative_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintES2_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.gi, i32 %i.hg, i32 noundef %i.hd) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit: ; preds = %bb.aj, %bb.ak
  %.pn.i = phi { i64, i32 } [ %i.hf, %bb.aj ], [ %i.hh, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  %.pre156 = load i64, ptr %i.ai, align 8, !tbaa !81
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, %bb.ah, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit
  %i.hi = phi i64 [ %.pre156, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %.pre.pre, %bb.ah ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.gm, %bb.ah ], [ %.sroa.1899.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.1899.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ] ; 3 uses
  %.sroa.080.1 = phi i64 [ %.fca.0.extract, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.gi, %bb.ah ], [ %.sroa.094.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.094.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !82, !range !50, !noundef !51
  %i.hl = zext nneg i8 %i.hk to i64
  %i.hm = zext i32 %.sroa.9.1 to i64
  %i.hn = shl i64 %i.hm, 52
  %i.ho = shl nuw i64 %i.hl, 63
  %i.hp = or i64 %i.hn, %i.ho
  %i.hq = or i64 %i.hp, %.sroa.080.1
  store i64 %i.hq, ptr %1, align 8, !tbaa !127
  %i.hr = icmp ne i64 %i.hi, 0
  %i.hs = icmp eq i64 %.sroa.080.1, 0
  %or.cond5 = select i1 %i.hr, i1 %i.hs, i1 false
  %i.ht = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.ht, i1 false
  %i.hu = icmp eq i32 %.sroa.9.1, 2047
  %or.cond130 = select i1 %or.cond8, i1 true, i1 %i.hu
  %spec.select135 = select i1 %or.cond130, i32 34, i32 0
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit: ; preds = %.thread, %bb.n, %bb.m, %bb.i, %bb.h
  %.sroa.247.1 = phi i32 [ 0, %bb.n ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.m ], [ %spec.select135, %.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.247.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN14arrow_vendored10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #19
  br i1 %i.a, label %bb.b, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = and i64 %i.b, 63                         ; 4 uses
  %i.d = lshr i64 %i.b, 6                         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 64, %i.c                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !90   ; 5 uses
  %i.h = zext i16 %i.g to i64                     ; 4 uses
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 65532                    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat47 = shufflevector <2 x i64> %broadcast.splatinsert46, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load48, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !72 ; 3 uses
  %wide.load48 = load <2 x i64>, ptr %i.j, align 8, !tbaa !72 ; 4 uses
  %i.k = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.l = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load48, <2 x i32> <i32 1, i32 2>
  %i.m = shl <2 x i64> %wide.load, %broadcast.splat
  %i.n = shl <2 x i64> %wide.load48, %broadcast.splat
  %i.o = lshr <2 x i64> %i.k, %broadcast.splat47
  %i.p = lshr <2 x i64> %i.l, %broadcast.splat47
  %i.q = or disjoint <2 x i64> %i.m, %i.o
  %i.r = or disjoint <2 x i64> %i.n, %i.p
  store <2 x i64> %i.q, ptr %i.i, align 8, !tbaa !72
  store <2 x i64> %i.r, ptr %i.j, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load48, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader49

.lr.ph.i.i.i.i.preheader49:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.01622.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.01721.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa45 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.t = lshr i64 %.lcssa45, %i.e                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.d

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader49, %.lr.ph.i.i.i.i
  %.01622.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %.01622.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ]
  %.01721.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.01721.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01721.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72   ; 3 uses
  %i.w = shl i64 %i.v, %i.c
  %i.x = lshr i64 %.01622.i.i.i.i, %i.e
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.u, align 8, !tbaa !72
  %i.z = add nuw nsw i64 %.01721.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !131

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = icmp ult i16 %i.g, 62
  br i1 %i.aa, label %bb.e, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !72
  %i.ac = add nuw nsw i16 %i.g, 1
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.d, %i.af
  %i.ah = icmp samesign ult i64 %i.ag, 63
  %i.ai = icmp ne i16 %i.ae, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.g:                                             ; preds = %bb.f
  %.idx12.i.i.i.i = shl nuw nsw i64 %i.d, 3       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i.i ; 2 uses
  %i.ak = icmp ugt i16 %i.ae, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !106

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %0, align 8, !tbaa !72
  store i64 %i.an, ptr %i.am, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i: ; preds = %bb.i, %bb.h
  %i.ao = phi i16 [ %.pre.i.i.i, %bb.h ], [ 1, %bb.i ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i.i, i1 false), !tbaa !72
  %i.ap = trunc nuw i64 %i.d to i16
  %i.aq = add i16 %i.ao, %i.ap
  store i16 %i.aq, ptr %i.ad, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit: ; preds = %bb.f, %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i, %bb.a, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !90 ; 4 uses
  %i.at = zext i16 %i.as to i64                   ; 4 uses
  switch i16 %i.as, label %bb.k [
    i16 0, label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit
    i16 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.au = load i64, ptr %0, align 8, !tbaa !72    ; 2 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true) ; 2 uses
  %i.aw = shl i64 %i.au, %i.av
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

bb.k:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.ax = getelementptr i8, ptr %0, i64 -8
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %i.at
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !72 ; 3 uses
  %i.ba = getelementptr i8, ptr %0, i64 -16
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.at
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !72 ; 3 uses
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 true) ; 5 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = shl i64 %i.bc, %i.bd
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.bc, i64 %i.bd)
  br label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i

_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i: ; preds = %bb.l, %bb.k
  %.in.in.i = phi i64 [ %i.bf, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %.0.i.i = phi i64 [ %i.bg, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  %.in.i = icmp ne i64 %.in.in.i, 0
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.bh = icmp ugt i16 %i.as, 2
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ 2, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bi = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bi
  %i.bj = load i64, ptr %gep.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bj, 0
  %i.bk = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.at
  %or.cond = select i1 %.not.not.i.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, label %.lr.ph.i.i, !llvm.loop !107

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit: ; preds = %.lr.ph.i.i
  %i.bl = or i64 %i.bj, %.in.in.i
  %i.bm = icmp ne i64 %i.bl, 0
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread: ; preds = %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, %bb.j, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i
  %.pre-phi = phi i64 [ %i.bd, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.av, %bb.j ], [ %i.bd, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.0.i431 = phi i64 [ %.0.i.i, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.aw, %bb.j ], [ %.0.i.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.029 = phi i1 [ %i.bm, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ false, %bb.j ], [ %.in.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %i.bn = trunc nuw nsw i64 %.pre-phi to i32
  br label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit

_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit: ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread
  %.0.i432 = phi i64 [ %.0.i431, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ] ; 2 uses
  %.030 = phi i1 [ %.029, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ false, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ]
  %.0.i.i5 = phi i32 [ %i.bn, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ]
  %.tr.i = zext i16 %i.as to i32
  %i.bo = shl nuw nsw i32 %.tr.i, 6
  %i.bp = sub nsw i32 %i.bo, %.0.i.i5
  %i.bq = lshr i64 %.0.i432, 11                   ; 2 uses
  %i.br = and i64 %.0.i432, 2047                  ; 2 uses
  %i.bs = icmp eq i64 %i.br, 1024                 ; 2 uses
  %i.bt = icmp samesign ugt i64 %i.br, 1024
  %i.bu = trunc i64 %i.bq to i1
  %or.cond.i.i8 = and i1 %.030, %i.bs
  %or.cond6.i.i9 = select i1 %i.bt, i1 true, i1 %or.cond.i.i8
  %i.bv = and i1 %i.bs, %i.bu
  %i.bw = or i1 %i.bv, %or.cond6.i.i9
  %i.bx = zext i1 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bq, %i.bx            ; 2 uses
  %.not14.i = icmp samesign ult i64 %i.by, 9007199254740992 ; 2 uses
  %.sroa.13.0.v = select i1 %.not14.i, i32 1022, i32 1023
  %.sroa.13.0 = add nsw i32 %.sroa.13.0.v, %i.bp  ; 2 uses
  %i.bz = and i64 %i.by, 13510798882111487
  %.not15.i = icmp samesign ult i32 %.sroa.13.0, 2047
  %.sroa.13.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.13.0, i32 2047)
  %i.ca = select i1 %.not15.i, i1 %.not14.i, i1 false
  %.sroa.0.1 = select i1 %i.ca, i64 %i.bz, i64 0
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.13.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN14arrow_vendored10fast_float19negative_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintES2_i(ptr noundef nonnull align 8 dereferenceable(504) %0, i64 %1, i32 %2, i32 noundef %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow_vendored::fast_float::bigint", align 8 ; 14 uses
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
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %1, 11
  %i.h = and i64 %i.g, 4503599627370495
  %.not15.i = icmp slt i32 %2, 2036
  %i.i = tail call i32 @llvm.smin.i32(i32 %2, i32 2036)
  %spec.select = add nsw i32 %i.i, 11
  %spec.select97 = select i1 %.not15.i, i64 %i.h, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.14.1 = phi i32 [ %spec.select, %bb.c ], [ %i.f, %bb.b ]
  %.sroa.0.1 = phi i64 [ %spec.select97, %bb.c ], [ %storemerge.i.i, %bb.b ] ; 3 uses
  %i.j = zext nneg i32 %.sroa.14.1 to i64
  %i.k = shl nuw nsw i64 %i.j, 52
  %.sroa.0.1.masked = and i64 %.sroa.0.1, 9218868437227405312
  %i.l = or i64 %i.k, %.sroa.0.1.masked           ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %.sroa.0.1, 4503599627370495
  br label %_ZN14arrow_vendored10fast_float11to_extendedIdEENS0_17adjusted_mantissaET_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = lshr exact i64 %i.l, 52
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i64 %.sroa.0.1, 4503599627370495
  %i.r = or disjoint i64 %i.q, 4503599627370496
  %i.s = add nsw i32 %i.p, -1076
  br label %_ZN14arrow_vendored10fast_float11to_extendedIdEENS0_17adjusted_mantissaET_.exit

_ZN14arrow_vendored10fast_float11to_extendedIdEENS0_17adjusted_mantissaET_.exit: ; preds = %bb.e, %bb.f
  %.sroa.4.0 = phi i32 [ -1075, %bb.e ], [ %i.s, %bb.f ]
  %storemerge.i = phi i64 [ %i.n, %bb.e ], [ %i.r, %bb.f ]
  %i.t = shl nuw nsw i64 %storemerge.i, 1
  %i.u = or disjoint i64 %i.t, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.w, i8 0, i64 496, i1 false)
  store i64 %i.u, ptr %4, align 8, !tbaa !72
  store i16 1, ptr %i.v, align 8, !tbaa !90
  %i.x = sub nsw i32 %.sroa.4.0, %3               ; 4 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN14arrow_vendored10fast_float11to_extendedIdEENS0_17adjusted_mantissaET_.exit
  %i.y = sub nsw i32 0, %3
  %i.z = call noundef zeroext i1 @_ZN14arrow_vendored10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %4, i32 noundef %i.y) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN14arrow_vendored10fast_float11to_extendedIdEENS0_17adjusted_mantissaET_.exit
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ab = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ac = and i64 %i.ab, 63                       ; 4 uses
  %i.ad = lshr i64 %i.ab, 6                       ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nuw nsw i64 64, %i.ac               ; 3 uses
  %i.af = load i16, ptr %i.v, align 8, !tbaa !90  ; 5 uses
  %i.ag = zext i16 %i.af to i64                   ; 4 uses
  %.not25.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not25.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %min.iters.check132 = icmp ult i16 %i.af, 4
  br i1 %min.iters.check132, label %.lr.ph.i.i.i.preheader152, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec135 = and i64 %i.ag, 65532                ; 3 uses
  %broadcast.splatinsert136 = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat137 = shufflevector <2 x i64> %broadcast.splatinsert136, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert138 = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat139 = shufflevector <2 x i64> %broadcast.splatinsert138, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph133
  %index141 = phi i64 [ 0, %vector.ph133 ], [ %index.next145, %vector.body140 ] ; 2 uses
  %vector.recur142 = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph133 ], [ %wide.load144, %vector.body140 ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index141 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load143 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !72 ; 3 uses
  %wide.load144 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !72 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur142, <2 x i64> %wide.load143, <2 x i32> <i32 1, i32 2>
  %i.ak = shufflevector <2 x i64> %wide.load143, <2 x i64> %wide.load144, <2 x i32> <i32 1, i32 2>
  %i.al = shl <2 x i64> %wide.load143, %broadcast.splat137
  %i.am = shl <2 x i64> %wide.load144, %broadcast.splat137
  %i.an = lshr <2 x i64> %i.aj, %broadcast.splat139
  %i.ao = lshr <2 x i64> %i.ak, %broadcast.splat139
  %i.ap = or disjoint <2 x i64> %i.al, %i.an
  %i.aq = or disjoint <2 x i64> %i.am, %i.ao
  store <2 x i64> %i.ap, ptr %i.ah, align 8, !tbaa !72
  store <2 x i64> %i.aq, ptr %i.ai, align 8, !tbaa !72
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next145, %n.vec135
end_hunk_1
