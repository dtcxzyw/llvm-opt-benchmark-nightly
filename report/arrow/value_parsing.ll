inline.NumInlined: 865
inline.NumDeleted: 342
begin_hunk_0_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  %i.qs = load i64, ptr %0, align 8, !tbaa !72
  %i.qt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qs, i64 %.5264.lcssa) ; 2 uses
  %i.qu = extractvalue { i64, i1 } %i.qt, 1
  %i.qv = extractvalue { i64, i1 } %i.qt, 0
  store i64 %i.qv, ptr %0, align 8, !tbaa !72
  br i1 %i.qu, label %.peel.next.i189.preheader, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit195

.peel.next.i189.preheader:                        ; preds = %.lr.ph.i.i186
  %exitcond.not.i.i191600 = icmp eq i16 %i.qq, 1
  br i1 %exitcond.not.i.i191600, label %.critedge.i.i192, label %.lr.ph602

.peel.next.i189:                                  ; preds = %.lr.ph602
  %i.qw = add nuw nsw i64 %.01421.i.i190601, 1    ; 2 uses
  %exitcond.not.i.i191 = icmp eq i64 %i.qw, %i.qr
  br i1 %exitcond.not.i.i191, label %.critedge.i.i192, label %.lr.ph602, !llvm.loop !94

.lr.ph602:                                        ; preds = %.peel.next.i189.preheader, %.peel.next.i189
  %.01421.i.i190601 = phi i64 [ %i.qw, %.peel.next.i189 ], [ 1, %.peel.next.i189.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i190601 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !72
  %i.qz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qy, i64 1) ; 2 uses
  %i.ra = extractvalue { i64, i1 } %i.qz, 1
  %i.rb = extractvalue { i64, i1 } %i.qz, 0
  store i64 %i.rb, ptr %i.qx, align 8, !tbaa !72
  br i1 %i.ra, label %.peel.next.i189, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit195, !llvm.loop !94

.critedge.i.i192:                                 ; preds = %.peel.next.i189, %.peel.next.i189.preheader
  %i.rc = icmp ult i16 %i.qq, 62
  br i1 %i.rc, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i193, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit195

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i193: ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit184.thread, %.critedge.i.i192
  %i.rd = phi i64 [ %i.qr, %.critedge.i.i192 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit184.thread ]
  %i.re = phi i16 [ %i.qq, %.critedge.i.i192 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit184.thread ]
  %.022.i.lcssa7.i194 = phi i64 [ 1, %.critedge.i.i192 ], [ %.5264.lcssa, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit184.thread ]
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.rd
  store i64 %.022.i.lcssa7.i194, ptr %i.rf, align 8, !tbaa !72
  %i.rg = add nuw nsw i16 %i.re, 1
  store i16 %i.rg, ptr %i.jc, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit195

_ZN14arrow_vendored10fast_float6bigint3addEm.exit195: ; preds = %.lr.ph602, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit184.thread, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit184, %.lr.ph.i.i186, %.critedge.i.i192, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i193
  %.not60 = icmp eq ptr %.6.lcssa, %i.io
  br i1 %.not60, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.preheader295, !llvm.loop !101

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split: ; preds = %.lr.ph599, %.lr.ph608, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i172, %.critedge.i.i171, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit164, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i110, %.critedge.i.i109, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit102
  %i.rh = load i64, ptr %3, align 8, !tbaa !72
  %i.ri = add i64 %i.rh, 1
  store i64 %i.ri, ptr %3, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit: ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit195, %bb.w, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split, %._crit_edge377, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit85.thread, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit, %.preheader, %._crit_edge358, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit, %bb.l
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
  %i.g = load i16, ptr %i.f, align 8, !tbaa !91   ; 5 uses
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
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !91 ; 3 uses
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
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !91
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
  store i16 %i.aq, ptr %i.ad, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit: ; preds = %bb.f, %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i, %bb.a, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !91 ; 4 uses
  %i.at = zext i16 %i.as to i64                   ; 5 uses
  switch i16 %i.as, label %bb.k [
    i16 0, label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit
    i16 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.au = getelementptr i8, ptr %0, i64 -8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72 ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = shl i64 %i.aw, %i.ax
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

bb.k:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.az = getelementptr i8, ptr %0, i64 -8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !72 ; 3 uses
  %i.bc = getelementptr i8, ptr %0, i64 -16
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.at
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72 ; 3 uses
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true) ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = shl i64 %i.be, %i.bf
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.be, i64 %i.bf)
  br label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i

_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i: ; preds = %bb.l, %bb.k
  %.in.in.i = phi i64 [ %i.bh, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  %.0.i.i = phi i64 [ %i.bi, %bb.l ], [ %i.bb, %bb.k ] ; 2 uses
  %.in.i = icmp ne i64 %.in.in.i, 0
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.bj = icmp ugt i16 %i.as, 2
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ 2, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bk = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bk
  %i.bl = load i64, ptr %gep.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bl, 0
  %i.bm = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bm, %i.at
  %or.cond = select i1 %.not.not.i.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, label %.lr.ph.i.i, !llvm.loop !107

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit: ; preds = %.lr.ph.i.i
  %i.bn = or i64 %i.bl, %.in.in.i
  %i.bo = icmp ne i64 %i.bn, 0
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread: ; preds = %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, %bb.j, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i
  %.pre-phi = phi i64 [ %i.bf, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.ax, %bb.j ], [ %i.bf, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.0.i431 = phi i64 [ %.0.i.i, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.ay, %bb.j ], [ %.0.i.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.029 = phi i1 [ %i.bo, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ false, %bb.j ], [ %.in.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %i.bp = trunc nuw nsw i64 %.pre-phi to i32
  br label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit

_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit: ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread
  %.0.i432 = phi i64 [ %.0.i431, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ] ; 2 uses
  %.030 = phi i1 [ %.029, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ false, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ]
  %.0.i.i5 = phi i32 [ %i.bp, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ]
  %.tr.i = zext i16 %i.as to i32
  %i.bq = shl nuw nsw i32 %.tr.i, 6
  %i.br = sub nsw i32 %i.bq, %.0.i.i5
  %i.bs = lshr i64 %.0.i432, 40                   ; 2 uses
  %i.bt = and i64 %.0.i432, 1099511627775         ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 549755813888         ; 2 uses
  %i.bv = icmp samesign ugt i64 %i.bt, 549755813888
  %i.bw = trunc i64 %i.bs to i1
  %or.cond.i.i8 = and i1 %.030, %i.bu
  %or.cond6.i.i9 = select i1 %i.bv, i1 true, i1 %or.cond.i.i8
  %i.bx = and i1 %i.bu, %i.bw
  %i.by = or i1 %i.bx, %or.cond6.i.i9
  %i.bz = zext i1 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bs, %i.bz            ; 2 uses
  %.not14.i = icmp samesign ult i64 %i.ca, 16777216 ; 2 uses
  %.sroa.13.0.v = select i1 %.not14.i, i32 126, i32 127
  %.sroa.13.0 = add nsw i32 %.sroa.13.0.v, %i.br  ; 2 uses
  %i.cb = and i64 %i.ca, 25165823
  %.not15.i = icmp samesign ult i32 %.sroa.13.0, 255
  %.sroa.13.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.13.0, i32 255)
  %i.cc = select i1 %.not15.i, i1 %.not14.i, i1 false
  %.sroa.0.1 = select i1 %i.cc, i64 %i.cb, i64 0
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
  store i16 1, ptr %i.u, align 8, !tbaa !91
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
  %i.ae = load i16, ptr %i.u, align 8, !tbaa !91  ; 5 uses
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

middle.block146:                                  ; preds = %vector.body140
  %vector.recur.extract147 = extractelement <2 x i64> %wide.load144, i64 1 ; 2 uses
  %cmp.n148 = icmp eq i64 %n.vec135, %i.af
  br i1 %cmp.n148, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader152

.lr.ph.i.i.i.preheader152:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block146
  %.01622.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %vector.recur.extract147, %middle.block146 ]
  %.01721.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec135, %middle.block146 ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block146
  %.lcssa = phi i64 [ %vector.recur.extract147, %middle.block146 ], [ %i.at, %.lr.ph.i.i.i ]
  %i.ar = lshr i64 %.lcssa, %i.ad                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader152, %.lr.ph.i.i.i
  %.01622.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i ], [ %.01622.i.i.i.ph, %.lr.ph.i.i.i.preheader152 ]
  %.01721.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i ], [ %.01721.i.i.i.ph, %.lr.ph.i.i.i.preheader152 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01721.i.i.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !72 ; 3 uses
  %i.au = shl i64 %i.at, %i.ab
  %i.av = lshr i64 %.01622.i.i.i, %i.ad
  %i.aw = or disjoint i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !72
  %i.ax = add nuw nsw i64 %.01721.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !109

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = icmp ult i16 %i.ae, 62
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float6bigint4pow5Ej:bb.a
  %i.o = add nuw nsw i128 %i.m, %i.n              ; 2 uses
  %i.p = lshr i128 %i.o, 64                       ; 2 uses
  %i.q = trunc nuw nsw i128 %i.p to i64
  %i.r = trunc i128 %i.o to i64
  store i64 %i.r, ptr %i.j, align 8, !tbaa !72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa65 = phi i128 [ %i.ag, %._crit_edge.i.unr-lcssa ], [ %i.p, %.lr.ph.i.epil.preheader ]
  %.lcssa64 = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.lr.ph.i.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa65, 0
  br i1 %.not.i, label %bb.e, label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 7450580596923828125
  %i.w = zext nneg i64 %.01215.i to i128
  %i.x = add nuw nsw i128 %i.v, %i.w              ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = trunc i128 %i.x to i64
  store i64 %i.z, ptr %i.s, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 7450580596923828125
  %i.af = add nuw nsw i128 %i.ae, %i.y            ; 2 uses
  %i.ag = lshr i128 %i.af, 64                     ; 2 uses
  %i.ah = trunc nuw nsw i128 %i.ag to i64         ; 3 uses
  %i.ai = trunc i128 %i.af to i64
  store i64 %i.ai, ptr %i.ab, align 8, !tbaa !72
  %i.aj = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !93

bb.d:                                             ; preds = %._crit_edge.i
  %i.ak = icmp ult i16 %i.g, 62
  br i1 %i.ak, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %.lcssa64, ptr %i.al, align 8, !tbaa !72
  %i.am = add nuw nsw i16 %i.g, 1                 ; 2 uses
  store i16 %i.am, ptr %i.c, align 8, !tbaa !91
  br label %bb.e

bb.e:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, %._crit_edge.i, %bb.c
  %i.an = phi i16 [ %i.am, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ], [ %i.g, %._crit_edge.i ], [ 0, %bb.c ]
  %i.ao = add nsw i32 %.11233, -27                ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 26
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.112.lcssa = phi i32 [ %.011.lcssa, %.preheader ], [ %i.ao, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.112.lcssa, 0
  br i1 %.not, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !91 ; 6 uses
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %.not19.i13 = icmp eq i16 %i.ar, 0
  br i1 %.not19.i13, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.f
  %i.at = zext nneg i32 %.112.lcssa to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_float11pow5_tablesIvE16small_power_of_5E, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !72
  %i.aw = zext i64 %i.av to i128                  ; 3 uses
  %xtraiter72 = and i64 %i.as, 1
  %i.ax = icmp eq i16 %i.ar, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter77 = and i64 %i.as, 65534
  br label %bb.g

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i14
  %.016.i15.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.by, %._crit_edge.i18.unr-lcssa ]
  %.01215.i16.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.bw, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod76 = trunc i16 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15.epil.init ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !72
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, %i.aw
  %i.bc = zext i64 %.01215.i16.epil.init to i128
  %i.bd = add nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64                     ; 2 uses
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = trunc i128 %i.bd to i64
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !72
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %.lcssa63 = phi i128 [ %i.bv, %._crit_edge.i18.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.lcssa = phi i64 [ %i.bw, %._crit_edge.i18.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.not.i19 = icmp eq i128 %.lcssa63, 0
  br i1 %.not.i19, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %.016.i15 = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.by, %bb.g ] ; 3 uses
  %.01215.i16 = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.bw, %bb.g ]
  %niter78 = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter78.next.1, %bb.g ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !72
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, %i.aw
  %i.bl = zext i64 %.01215.i16 to i128
  %i.bm = add nuw i128 %i.bk, %i.bl               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = trunc i128 %i.bm to i64
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !72
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !72
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.aw
  %i.bu = add nuw i128 %i.bt, %i.bn               ; 2 uses
  %i.bv = lshr i128 %i.bu, 64                     ; 2 uses
  %i.bw = trunc nuw i128 %i.bv to i64             ; 3 uses
  %i.bx = trunc i128 %i.bu to i64
  store i64 %i.bx, ptr %i.bq, align 8, !tbaa !72
  %i.by = add nuw nsw i64 %.016.i15, 2            ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.g, !llvm.loop !93

bb.h:                                             ; preds = %._crit_edge.i18
  %i.bz = icmp ult i16 %i.ar, 62
  br i1 %i.bz, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %.lcssa, ptr %i.ca, align 8, !tbaa !72
  %i.cb = add nuw nsw i16 %i.ar, 1
  store i16 %i.cb, ptr %i.aq, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit: ; preds = %.lr.ph, %bb.d, %bb.f, %._crit_edge.i18, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21, %._crit_edge, %bb.h
  %.1 = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.h ], [ true, %._crit_edge ], [ true, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21 ], [ true, %._crit_edge.i18 ], [ false, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN14arrow_vendored10fast_float8long_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::fast_float::stackvec", align 8 ; 9 uses
  %4 = alloca %"struct.arrow_vendored::fast_float::stackvec", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !91   ; 10 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.496..496..496..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 0, ptr %.496..496..496..sroa_idx, align 8, !tbaa !91
  %.not.i.i = icmp ult i16 %i.b, 63
  br i1 %.not.i.i, label %bb.b, label %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit

bb.b:                                             ; preds = %bb.a
  switch i16 %i.b, label %bb.c [
    i16 0, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i
    i16 1, label %bb.d
  ], !prof !115

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.c, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(498) %3, ptr nonnull align 8 %0, i64 %.idx.i.i.i.i.i, i1 false)
  %.496..496..496..sroa_idx121.a = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.496..496..496..pre.i.i.i = load i16, ptr %.496..496..496..sroa_idx121.a, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8, !tbaa !72
  store i64 %i.d, ptr %3, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i

_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = phi i16 [ %i.b, %bb.b ], [ 0, %bb.d ], [ %.496..496..496..pre.i.i.i, %bb.c ]
  %i.f = add i16 %i.e, %i.b
  %i.g = freeze i16 %i.f                          ; 2 uses
  %.496..496..496..sroa_idx122 = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 %i.g, ptr %.496..496..496..sroa_idx122, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit: ; preds = %bb.a, %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i
  %.496..496. = phi i16 [ 0, %bb.a ], [ %i.g, %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i ] ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.critedge34, label %bb.e

bb.e:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit
  %.not19.i = icmp eq i16 %i.b, 0
  br i1 %.not19.i, label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.h = load i64, ptr %1, align 8, !tbaa !72
  %i.i = zext i64 %i.h to i128                    ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.j = icmp eq i16 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.c, 65534
  br label %bb.f

._crit_edge.i.unr-lcssa:                          ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod112 = trunc i16 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, %i.i
  %i.o = zext i64 %.01215.i.epil.init to i128
  %i.p = add nuw i128 %i.n, %i.o                  ; 2 uses
  %i.q = lshr i128 %i.p, 64                       ; 2 uses
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = trunc i128 %i.p to i64
  store i64 %i.s, ptr %i.k, align 8, !tbaa !72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa109 = phi i128 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.epil.preheader ]
  %.lcssa108 = phi i64 [ %i.ai, %._crit_edge.i.unr-lcssa ], [ %i.r, %.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa109, 0
  br i1 %.not.i, label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ak, %bb.f ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ai, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.i
  %i.x = zext i64 %.01215.i to i128
  %i.y = add nuw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = trunc i128 %i.y to i64
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !72
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, %i.i
  %i.ag = add nuw i128 %i.af, %i.z                ; 2 uses
  %i.ah = lshr i128 %i.ag, 64                     ; 2 uses
  %i.ai = trunc nuw i128 %i.ah to i64             ; 3 uses
  %i.aj = trunc i128 %i.ag to i64
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !72
  %i.ak = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.f, !llvm.loop !93

bb.g:                                             ; preds = %._crit_edge.i
  %i.al = icmp ult i16 %i.b, 62
  br i1 %i.al, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %.critedge32

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  store i64 %.lcssa108, ptr %i.am, align 8, !tbaa !72
  %i.an = add nuw nsw i16 %i.b, 1
  store i16 %i.an, ptr %i.a, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit

_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit: ; preds = %bb.e, %._crit_edge.i, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i
  %.not30.not68.not = icmp eq i64 %2, 1
  br i1 %.not30.not68.not, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 2 uses
  %.not.i35 = icmp ult i16 %.496..496., 63
  %.0..0..0. = load i64, ptr %3, align 8
  %i.ap = shl nuw nsw i16 %.496..496., 3
  %.idx.i.i.i.i = zext nneg i16 %i.ap to i64
  br i1 %.not.i35, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.promoted = load i16, ptr %i.a, align 8
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.critedge.us
  %.02769.us = phi i64 [ %i.dm, %.critedge.us ], [ 1, %.lr.ph.split.us.preheader ] ; 7 uses
  %i.aq = phi i16 [ %i.dl, %.critedge.us ], [ %.promoted, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769.us
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not29.us = icmp eq i64 %i.as, 0
  br i1 %.not29.us, label %.critedge.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i16 0, ptr %i.ao, align 8, !tbaa !91
  switch i16 %.496..496., label %bb.j [
    i16 0, label %bb.k
    i16 1, label %bb.i
  ], !prof !115

bb.i:                                             ; preds = %bb.h
  store i64 %.0..0..0., ptr %4, align 8, !tbaa !72
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %3, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.us = load i16, ptr %i.ao, align 8, !tbaa !91
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.at = phi i16 [ %.496..496., %bb.h ], [ 0, %bb.i ], [ %.pre.i.i.us, %bb.j ]
  %i.au = add i16 %i.at, %.496..496.              ; 7 uses
  %i.av = zext i16 %i.au to i64                   ; 3 uses
  %.not19.i36.us = icmp eq i16 %i.au, 0
  br i1 %.not19.i36.us, label %bb.n, label %.lr.ph.i37.us

.lr.ph.i37.us:                                    ; preds = %bb.k
  %i.aw = zext i64 %i.as to i128                  ; 3 uses
  %xtraiter114 = and i64 %i.av, 1
  %i.ax = icmp eq i16 %i.au, 1
  br i1 %i.ax, label %.epil.preheader113, label %.lr.ph.i37.us.new

.lr.ph.i37.us.new:                                ; preds = %.lr.ph.i37.us
  %unroll_iter119 = and i64 %i.av, 65534
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i37.us.new
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bp, %bb.l ] ; 3 uses
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bn, %bb.l ]
  %niter120 = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %niter120.next.1, %bb.l ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !72
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, %i.aw
  %i.bc = zext i64 %.01215.i39.us to i128
  %i.bd = add nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = trunc i128 %i.bd to i64
  store i64 %i.bf, ptr %i.ay, align 8, !tbaa !72
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !72
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, %i.aw
  %i.bl = add nuw i128 %i.bk, %i.be               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64                     ; 2 uses
  %i.bn = trunc nuw i128 %i.bm to i64             ; 3 uses
  %i.bo = trunc i128 %i.bl to i64
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !72
  %i.bp = add nuw nsw i64 %.016.i38.us, 2         ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %bb.l, !llvm.loop !93

._crit_edge.i41.us.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge.i41.us, label %.epil.preheader113

.epil.preheader113:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bp, %._crit_edge.i41.us.unr-lcssa ]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bn, %._crit_edge.i41.us.unr-lcssa ]
  %lcmp.mod118 = trunc i16 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !72
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.aw
  %i.bu = zext i64 %.01215.i39.us.epil.init to i128
  %i.bv = add nuw i128 %i.bt, %i.bu               ; 2 uses
  %i.bw = lshr i128 %i.bv, 64                     ; 2 uses
  %i.bx = trunc nuw i128 %i.bw to i64
  %i.by = trunc i128 %i.bv to i64
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !72
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader113
  %.lcssa105 = phi i128 [ %i.bm, %._crit_edge.i41.us.unr-lcssa ], [ %i.bw, %.epil.preheader113 ]
  %.lcssa = phi i64 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader113 ]
  %.not.i42.us = icmp eq i128 %.lcssa105, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.bz = icmp ult i16 %i.au, 62
  br i1 %i.bz, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  store i64 %.lcssa, ptr %i.ca, align 8, !tbaa !72
  %i.cb = add nuw nsw i16 %i.au, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cc = phi i16 [ %i.cb, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.au, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
  %i.cd = zext i16 %i.cc to i64                   ; 4 uses
  %i.ce = zext i16 %i.aq to i64                   ; 5 uses
  %i.cf = icmp ugt i64 %.02769.us, %i.ce
  %i.cg = sub nsw i64 %i.ce, %.02769.us
  %i.ch = icmp ult i64 %i.cg, %i.cd
  %or.cond.i.us = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond.i.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ci = add i64 %.02769.us, %i.cd               ; 4 uses
  %i.cj = icmp ult i64 %i.ci, 63
  br i1 %i.cj, label %bb.p, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp samesign ugt i64 %i.ci, %i.ce
  br i1 %i.ck, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cl = getelementptr [8 x i8], ptr %0, i64 %i.ce
  %i.cm = sub nuw nsw i64 %i.ci, %i.ce
  %i.cn = shl nuw nsw i64 %i.cm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cn, i1 false), !tbaa !72
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.ci to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !91
  br label %bb.q

bb.q:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.co = phi i16 [ %i.aq, %bb.n ], [ %storemerge.i.i.i.us, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cc, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02434.i.us = phi i64 [ %i.cz, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02533.i.us = phi i1 [ %.0.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02434.i.us ; 2 uses
  %i.cp = load i64, ptr %gep.i.us, align 8, !tbaa !72
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02434.i.us
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !72
  %i.cs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cp, i64 %i.cr) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1       ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.cs, 0       ; 2 uses
  br i1 %.02533.i.us, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i47.us
  %i.cv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cu, i64 1) ; 2 uses
  %i.cw = extractvalue { i64, i1 } %i.cv, 1
  %i.cx = extractvalue { i64, i1 } %i.cv, 0
  %i.cy = or i1 %i.ct, %i.cw
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i47.us
  %.0.in.i.us = phi i1 [ %i.cy, %bb.r ], [ %i.ct, %.lr.ph.i47.us ] ; 2 uses
  %.023.i.us = phi i64 [ %i.cx, %bb.r ], [ %i.cu, %.lr.ph.i47.us ]
  store i64 %.023.i.us, ptr %gep.i.us, align 8, !tbaa !72
  %i.cz = add nuw nsw i64 %.02434.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.cz, %i.cd
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !116

._crit_edge.i49.us:                               ; preds = %bb.s
  br i1 %.0.in.i.us, label %bb.t, label %.critedge.us

bb.t:                                             ; preds = %._crit_edge.i49.us
  %i.da = add i64 %.02769.us, %i.cd               ; 3 uses
  %i.db = zext i16 %i.co to i64                   ; 3 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.db)
  %exitcond.not.i.i.us102.not = icmp ult i64 %i.da, %i.db
  br i1 %exitcond.not.i.i.us102.not, label %.lr.ph104, label %.critedge.i.i.us

bb.u:                                             ; preds = %.lr.ph104
  %i.dc = add i64 %.01421.i.i.us103, 1            ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dc, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph104, !llvm.loop !117

.lr.ph104:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us103 = phi i64 [ %i.dc, %bb.u ], [ %i.da, %bb.t ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us103 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !72
  %i.df = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.de, i64 1) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 1
  %i.dh = extractvalue { i64, i1 } %i.df, 0
  store i64 %i.dh, ptr %i.dd, align 8, !tbaa !72
  br i1 %i.dg, label %bb.u, label %.critedge.us, !llvm.loop !117

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.di = icmp ult i16 %i.co, 62
  br i1 %i.di, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.db
  store i64 1, ptr %i.dj, align 8, !tbaa !72
  %i.dk = add nuw nsw i16 %i.co, 1                ; 2 uses
  store i16 %i.dk, ptr %i.a, align 8, !tbaa !91
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph104, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dl = phi i16 [ %i.aq, %.lr.ph.split.us ], [ %i.co, %bb.q ], [ %i.dk, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.co, %._crit_edge.i49.us ], [ %i.co, %.lr.ph104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dm = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dm, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dp, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not29 = icmp eq i64 %i.do, 0
  br i1 %.not29, label %.critedge, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dp = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !118

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit
  %.promoted.i = load i16, ptr %i.a, align 8, !tbaa !91 ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dq = getelementptr i8, ptr %0, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %5 = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %8, %bb.w ] ; 2 uses
  %6 = zext i16 %5 to i64
  %7 = getelementptr [8 x i8], ptr %i.dq, i64 %6
  %i.dr = load i64, ptr %7, align 8, !tbaa !72
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %8 = add i16 %5, -1                             ; 3 uses
  store i16 %8, ptr %i.a, align 8, !tbaa !91
  %.not.i51 = icmp eq i16 %8, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !119

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 11 uses
  %5 = alloca %"struct.arrow_vendored::fast_float::parsed_number_string_t", align 8 ; 14 uses
  %i.b = or i64 %3, 128
  %i.c = and i64 %3, 256
  %.not = icmp eq i64 %i.c, 0
  %.not33253 = icmp eq ptr %0, %1
  %or.cond368 = or i1 %.not, %.not33253
  br i1 %or.cond368, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.a, %i.d
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0254 = phi ptr [ %i.k, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.f = load i8, ptr %.0254, align 1, !tbaa !29
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN14arrow_vendored10fast_float9space_lutIvE5valueE, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !49, !range !50, !noundef !51
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.0254, i64 1 ; 2 uses
  %.not33 = icmp eq ptr %i.k, %1
  br i1 %.not33, label %.critedge, label %.lr.ph, !llvm.loop !120

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.0254, %.lr.ph ], [ %scevgep, %bb.b ] ; 9 uses
  %i.l = icmp eq ptr %.1, %1
  br i1 %i.l, label %bb.az, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.m = and i64 %3, 32
  %.not34 = icmp eq i64 %i.m, 0
  %.sroa.2.8.extract.trunc.i36 = trunc i64 %4 to i8 ; 5 uses
  %i.n = load i8, ptr %.1, align 1, !tbaa !29, !noalias !51 ; 3 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 2 uses
  %i.p = zext i1 %i.o to i8
  br i1 %.not34, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %.lr.ph261.preheader

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.q, align 1, !tbaa !29, !noalias !121 ; 2 uses
  %i.t = add i8 %i.s, -48
  %i.u = icmp ult i8 %i.t, 10
  br i1 %i.u, label %.lr.ph261.preheader, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65

.lr.ph261.preheader:                              ; preds = %bb.f, %bb.d
  %i.v = phi i8 [ %i.s, %bb.f ], [ %i.n, %bb.d ]
  %.0190 = phi ptr [ %i.q, %bb.f ], [ %.1, %bb.d ] ; 9 uses
  %.0190384 = ptrtoint ptr %.0190 to i64          ; 2 uses
  %i.w = sub i64 %i.a, %.0190384
  %scevgep385 = getelementptr i8, ptr %.0190, i64 %i.w
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.g
  %.0182259 = phi i64 [ %i.ad, %bb.g ], [ 0, %.lr.ph261.preheader ] ; 2 uses
  %.1191258 = phi ptr [ %i.ae, %bb.g ], [ %.0190, %.lr.ph261.preheader ] ; 3 uses
  %i.x = load i8, ptr %.1191258, align 1, !tbaa !29, !noalias !121 ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10                     ; 2 uses
  br i1 %i.z, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.lr.ph261
  %i.aa = mul i64 %.0182259, 10
  %i.ab = zext nneg i8 %i.x to i64
  %i.ac = add i64 %i.aa, -48
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1191258, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph261, !llvm.loop !56

.critedge.i:                                      ; preds = %bb.g, %.lr.ph261
  %.1191.lcssa.ph = phi ptr [ %scevgep385, %bb.g ], [ %.1191258, %.lr.ph261 ] ; 7 uses
  %.0182.lcssa.ph = phi i64 [ %i.ad, %bb.g ], [ %.0182259, %.lr.ph261 ] ; 4 uses
  %i.af = ptrtoint ptr %.1191.lcssa.ph to i64     ; 2 uses
  %i.ag = sub i64 %i.af, %.0190384                ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 48
  %i.aj = icmp sgt i64 %i.ag, 1
  %or.cond.i = and i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.z, label %.thread210, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %.1191.lcssa.ph, align 1, !tbaa !29, !noalias !121
  %i.al = icmp eq i8 %i.ak, %.sroa.2.8.extract.trunc.i36
  br i1 %i.al, label %bb.k, label %.thread210

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.1191.lcssa.ph, i64 1 ; 4 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 4 uses
  %i.ao = sub i64 %i.a, %i.an
  %i.ap = icmp sgt i64 %i.ao, 7
  br i1 %i.ap, label %.lr.ph271, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69

.lr.ph271:                                        ; preds = %bb.k, %.noexc68
  %.7189270 = phi i64 [ %i.bf, %.noexc68 ], [ %.0182.lcssa.ph, %bb.k ] ; 2 uses
  %.11201269 = phi ptr [ %i.bg, %.noexc68 ], [ %i.am, %bb.k ] ; 4 uses
  %.0.copyload.i72 = load i64, ptr %.11201269, align 1, !noalias !121 ; 2 uses
  %i.aq = add i64 %.0.copyload.i72, 5063812098665367110
  %i.ar = add i64 %.0.copyload.i72, -3472328296227680304 ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, -9187201950435737472
  %.not.i70 = icmp eq i64 %i.at, 0
  br i1 %.not.i70, label %.noexc68, label %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge

.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge: ; preds = %.lr.ph271
  %.pre = ptrtoint ptr %.11201269 to i64
  br label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69

.noexc68:                                         ; preds = %.lr.ph271
  %i.au = mul i64 %.7189270, 100000000
  %i.av = mul i64 %i.ar, 10
  %i.aw = lshr i64 %i.ar, 8
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = and i64 %i.ax, 1095216660735
  %i.az = mul i64 %i.ay, 4294967296000100
  %i.ba = lshr i64 %i.ax, 16
  %i.bb = and i64 %i.ba, 1095216660735
  %i.bc = mul i64 %i.bb, 42949672960001
  %i.bd = add i64 %i.bc, %i.az
  %i.be = lshr i64 %i.bd, 32
  %i.bf = add i64 %i.be, %i.au                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.11201269, i64 8 ; 3 uses
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = sub i64 %i.a, %i.bh
  %i.bj = icmp sgt i64 %i.bi, 7
  br i1 %i.bj, label %.lr.ph271, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69, !llvm.loop !57

_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69: ; preds = %.noexc68, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge, %bb.k
  %.11201.lcssa386.pre-phi = phi i64 [ %i.an, %bb.k ], [ %.pre, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.bh, %.noexc68 ] ; 2 uses
  %.11201.lcssa = phi ptr [ %i.am, %bb.k ], [ %.11201269, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.bg, %.noexc68 ] ; 4 uses
  %.7189.lcssa = phi i64 [ %.0182.lcssa.ph, %bb.k ], [ %.7189270, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.bf, %.noexc68 ] ; 2 uses
  %.not105.i276 = icmp eq ptr %.11201.lcssa, %1
  br i1 %.not105.i276, label %._crit_edge, label %.lr.ph279.preheader

.lr.ph279.preheader:                              ; preds = %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69
  %i.bk = sub i64 %i.a, %.11201.lcssa386.pre-phi
  %scevgep387 = getelementptr i8, ptr %.11201.lcssa, i64 %i.bk
  br label %.lr.ph279

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %bb.l
  %.6188278 = phi i64 [ %i.br, %bb.l ], [ %.7189.lcssa, %.lr.ph279.preheader ] ; 2 uses
  %.10200277 = phi ptr [ %i.bo, %bb.l ], [ %.11201.lcssa, %.lr.ph279.preheader ] ; 3 uses
  %i.bl = load i8, ptr %.10200277, align 1, !tbaa !29, !noalias !121
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 10
  br i1 %i.bn, label %bb.l, label %._crit_edge.loopexit

bb.l:                                             ; preds = %.lr.ph279
  %i.bo = getelementptr inbounds nuw i8, ptr %.10200277, i64 1 ; 2 uses
  %i.bp = mul i64 %.6188278, 10
  %i.bq = zext nneg i8 %i.bm to i64
  %i.br = add i64 %i.bp, %i.bq                    ; 2 uses
  %.not105.i = icmp eq ptr %i.bo, %1
  br i1 %.not105.i, label %._crit_edge.loopexit, label %.lr.ph279, !llvm.loop !58

._crit_edge.loopexit:                             ; preds = %bb.l, %.lr.ph279
  %.10200.lcssa.ph = phi ptr [ %.10200277, %.lr.ph279 ], [ %scevgep387, %bb.l ] ; 2 uses
  %.6188.lcssa.ph = phi i64 [ %.6188278, %.lr.ph279 ], [ %i.br, %bb.l ]
  %.pre398 = ptrtoint ptr %.10200.lcssa.ph to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69
  %.pre-phi399 = phi i64 [ %.pre398, %._crit_edge.loopexit ], [ %.11201.lcssa386.pre-phi, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ] ; 2 uses
  %.10200.lcssa = phi ptr [ %.10200.lcssa.ph, %._crit_edge.loopexit ], [ %.11201.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ]
  %.6188.lcssa = phi i64 [ %.6188.lcssa.ph, %._crit_edge.loopexit ], [ %.7189.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ]
  %i.bs = sub i64 %i.an, %.pre-phi399             ; 3 uses
  %i.bt = sub i64 %.pre-phi399, %i.an
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EERNS0_22parsed_number_string_tIS3_EERT_:bb.a
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
  %i.g = load i16, ptr %i.f, align 8, !tbaa !91   ; 5 uses
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
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !91 ; 3 uses
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
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !91
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
  store i16 %i.aq, ptr %i.ad, align 8, !tbaa !91
  br label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit: ; preds = %bb.f, %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i, %bb.a, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !91 ; 4 uses
  %i.at = zext i16 %i.as to i64                   ; 5 uses
  switch i16 %i.as, label %bb.k [
    i16 0, label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit
    i16 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.au = getelementptr i8, ptr %0, i64 -8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72 ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = shl i64 %i.aw, %i.ax
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

bb.k:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.az = getelementptr i8, ptr %0, i64 -8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !72 ; 3 uses
  %i.bc = getelementptr i8, ptr %0, i64 -16
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.at
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72 ; 3 uses
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true) ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = shl i64 %i.be, %i.bf
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.be, i64 %i.bf)
  br label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i

_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i: ; preds = %bb.l, %bb.k
  %.in.in.i = phi i64 [ %i.bh, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  %.0.i.i = phi i64 [ %i.bi, %bb.l ], [ %i.bb, %bb.k ] ; 2 uses
  %.in.i = icmp ne i64 %.in.in.i, 0
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.bj = icmp ugt i16 %i.as, 2
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ 2, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bk = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bk
  %i.bl = load i64, ptr %gep.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bl, 0
  %i.bm = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bm, %i.at
  %or.cond = select i1 %.not.not.i.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, label %.lr.ph.i.i, !llvm.loop !107

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit: ; preds = %.lr.ph.i.i
  %i.bn = or i64 %i.bl, %.in.in.i
  %i.bo = icmp ne i64 %i.bn, 0
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread: ; preds = %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, %bb.j, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i
  %.pre-phi = phi i64 [ %i.bf, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.ax, %bb.j ], [ %i.bf, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.0.i431 = phi i64 [ %.0.i.i, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.ay, %bb.j ], [ %.0.i.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.029 = phi i1 [ %i.bo, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ false, %bb.j ], [ %.in.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %i.bp = trunc nuw nsw i64 %.pre-phi to i32
  br label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit

_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit: ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread
  %.0.i432 = phi i64 [ %.0.i431, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ] ; 2 uses
  %.030 = phi i1 [ %.029, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ false, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ]
  %.0.i.i5 = phi i32 [ %i.bp, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread ], [ 0, %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit ]
  %.tr.i = zext i16 %i.as to i32
  %i.bq = shl nuw nsw i32 %.tr.i, 6
  %i.br = sub nsw i32 %i.bq, %.0.i.i5
  %i.bs = lshr i64 %.0.i432, 11                   ; 2 uses
  %i.bt = and i64 %.0.i432, 2047                  ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 1024                 ; 2 uses
  %i.bv = icmp samesign ugt i64 %i.bt, 1024
  %i.bw = trunc i64 %i.bs to i1
  %or.cond.i.i8 = and i1 %.030, %i.bu
  %or.cond6.i.i9 = select i1 %i.bv, i1 true, i1 %or.cond.i.i8
  %i.bx = and i1 %i.bu, %i.bw
  %i.by = or i1 %i.bx, %or.cond6.i.i9
  %i.bz = zext i1 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bs, %i.bz            ; 2 uses
  %.not14.i = icmp samesign ult i64 %i.ca, 9007199254740992 ; 2 uses
  %.sroa.13.0.v = select i1 %.not14.i, i32 1022, i32 1023
  %.sroa.13.0 = add nsw i32 %.sroa.13.0.v, %i.br  ; 2 uses
  %i.cb = and i64 %i.ca, 13510798882111487
  %.not15.i = icmp samesign ult i32 %.sroa.13.0, 2047
  %.sroa.13.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.13.0, i32 2047)
  %i.cc = select i1 %.not15.i, i1 %.not14.i, i1 false
  %.sroa.0.1 = select i1 %i.cc, i64 %i.cb, i64 0
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
  store i16 1, ptr %i.v, align 8, !tbaa !91
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
  %i.af = load i16, ptr %i.v, align 8, !tbaa !91  ; 5 uses
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
  br i1 %i.ar, label %middle.block146, label %vector.body140, !llvm.loop !132

middle.block146:                                  ; preds = %vector.body140
  %vector.recur.extract147 = extractelement <2 x i64> %wide.load144, i64 1 ; 2 uses
  %cmp.n148 = icmp eq i64 %n.vec135, %i.ag
  br i1 %cmp.n148, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader152

.lr.ph.i.i.i.preheader152:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block146
  %.01622.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %vector.recur.extract147, %middle.block146 ]
  %.01721.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec135, %middle.block146 ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block146
  %.lcssa = phi i64 [ %vector.recur.extract147, %middle.block146 ], [ %i.au, %.lr.ph.i.i.i ]
  %i.as = lshr i64 %.lcssa, %i.ae                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader152, %.lr.ph.i.i.i
  %.01622.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.01622.i.i.i.ph, %.lr.ph.i.i.i.preheader152 ]
  %.01721.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %.01721.i.i.i.ph, %.lr.ph.i.i.i.preheader152 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01721.i.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !72 ; 3 uses
  %i.av = shl i64 %i.au, %i.ac
  %i.aw = lshr i64 %.01622.i.i.i, %i.ae
  %i.ax = or disjoint i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !72
  %i.ay = add nuw nsw i64 %.01721.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.ag
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !133

bb.k:                                             ; preds = %._crit_edge.i.i.i
end_hunk_2
