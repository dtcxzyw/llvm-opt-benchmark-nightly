inline.NumInlined: 299
inline.NumDeleted: 99
begin_hunk_0_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  %i.qs = load i64, ptr %0, align 8, !tbaa !25
  %i.qt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qs, i64 %.5264.lcssa) ; 2 uses
  %i.qu = extractvalue { i64, i1 } %i.qt, 1
  %i.qv = extractvalue { i64, i1 } %i.qt, 0
  store i64 %i.qv, ptr %0, align 8, !tbaa !25
  br i1 %i.qu, label %.peel.next.i189.preheader, label %_ZN10fast_float6bigint3addEm.exit195

.peel.next.i189.preheader:                        ; preds = %.lr.ph.i.i186
  %exitcond.not.i.i191600 = icmp eq i16 %i.qq, 1
  br i1 %exitcond.not.i.i191600, label %.critedge.i.i192, label %.lr.ph602

.peel.next.i189:                                  ; preds = %.lr.ph602
  %i.qw = add nuw nsw i64 %.01421.i.i190601, 1    ; 2 uses
  %exitcond.not.i.i191 = icmp eq i64 %i.qw, %i.qr
  br i1 %exitcond.not.i.i191, label %.critedge.i.i192, label %.lr.ph602, !llvm.loop !54

.lr.ph602:                                        ; preds = %.peel.next.i189.preheader, %.peel.next.i189
  %.01421.i.i190601 = phi i64 [ %i.qw, %.peel.next.i189 ], [ 1, %.peel.next.i189.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i190601 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !25
  %i.qz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qy, i64 1) ; 2 uses
  %i.ra = extractvalue { i64, i1 } %i.qz, 1
  %i.rb = extractvalue { i64, i1 } %i.qz, 0
  store i64 %i.rb, ptr %i.qx, align 8, !tbaa !25
  br i1 %i.ra, label %.peel.next.i189, label %_ZN10fast_float6bigint3addEm.exit195, !llvm.loop !54

.critedge.i.i192:                                 ; preds = %.peel.next.i189, %.peel.next.i189.preheader
  %i.rc = icmp ult i16 %i.qq, 62
  br i1 %i.rc, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i193, label %_ZN10fast_float6bigint3addEm.exit195

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i193: ; preds = %_ZN10fast_float6bigint3mulEm.exit184.thread, %.critedge.i.i192
  %i.rd = phi i64 [ %i.qr, %.critedge.i.i192 ], [ 0, %_ZN10fast_float6bigint3mulEm.exit184.thread ]
  %i.re = phi i16 [ %i.qq, %.critedge.i.i192 ], [ 0, %_ZN10fast_float6bigint3mulEm.exit184.thread ]
  %.022.i.lcssa7.i194 = phi i64 [ 1, %.critedge.i.i192 ], [ %.5264.lcssa, %_ZN10fast_float6bigint3mulEm.exit184.thread ]
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.rd
  store i64 %.022.i.lcssa7.i194, ptr %i.rf, align 8, !tbaa !25
  %i.rg = add nuw nsw i16 %i.re, 1
  store i16 %i.rg, ptr %i.jc, align 8, !tbaa !50
  br label %_ZN10fast_float6bigint3addEm.exit195

_ZN10fast_float6bigint3addEm.exit195:             ; preds = %.lr.ph602, %_ZN10fast_float6bigint3mulEm.exit184.thread, %_ZN10fast_float6bigint3mulEm.exit184, %.lr.ph.i.i186, %.critedge.i.i192, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i193
  %.not60 = icmp eq ptr %.6.lcssa, %i.io
  br i1 %.not60, label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit, label %.preheader295, !llvm.loop !61

_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit.sink.split: ; preds = %.lr.ph599, %.lr.ph608, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i172, %.critedge.i.i171, %_ZN10fast_float6bigint3mulEm.exit164, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i110, %.critedge.i.i109, %_ZN10fast_float6bigint3mulEm.exit102
  %i.rh = load i64, ptr %3, align 8, !tbaa !25
  %i.ri = add i64 %i.rh, 1
  store i64 %i.ri, ptr %3, align 8, !tbaa !25
  br label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit

_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit:   ; preds = %_ZN10fast_float6bigint3addEm.exit195, %bb.w, %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit.sink.split, %._crit_edge377, %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit85.thread, %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit, %.preheader, %._crit_edge358, %_ZN10fast_float12is_truncatedIcEEbNS_4spanIKT_EE.exit, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #10
  br i1 %i.a, label %bb.b, label %_ZN10fast_float6bigint5pow10Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = and i64 %i.b, 63                         ; 4 uses
  %i.d = lshr i64 %i.b, 6                         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 64, %i.c                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !50   ; 5 uses
  %i.h = zext i16 %i.g to i64                     ; 4 uses
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 65532                    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load53, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !25 ; 3 uses
  %wide.load53 = load <2 x i64>, ptr %i.j, align 8, !tbaa !25 ; 4 uses
  %i.k = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.l = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load53, <2 x i32> <i32 1, i32 2>
  %i.m = shl <2 x i64> %wide.load, %broadcast.splat
  %i.n = shl <2 x i64> %wide.load53, %broadcast.splat
  %i.o = lshr <2 x i64> %i.k, %broadcast.splat52
  %i.p = lshr <2 x i64> %i.l, %broadcast.splat52
  %i.q = or disjoint <2 x i64> %i.m, %i.o
  %i.r = or disjoint <2 x i64> %i.n, %i.p
  store <2 x i64> %i.q, ptr %i.i, align 8, !tbaa !25
  store <2 x i64> %i.r, ptr %i.j, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load53, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader54

.lr.ph.i.i.i.i.preheader54:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.01622.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.01721.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa50 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.t = lshr i64 %.lcssa50, %i.e                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.d

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader54, %.lr.ph.i.i.i.i
  %.01622.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %.01622.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader54 ]
  %.01721.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.01721.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader54 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01721.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25   ; 3 uses
  %i.w = shl i64 %i.v, %i.c
  %i.x = lshr i64 %.01622.i.i.i.i, %i.e
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.u, align 8, !tbaa !25
  %i.z = add nuw nsw i64 %.01721.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !65

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = icmp ult i16 %i.g, 62
  br i1 %i.aa, label %bb.e, label %_ZN10fast_float6bigint5pow10Ej.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !25
  %i.ac = add nuw nsw i16 %i.g, 1
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !50
  br label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !50 ; 3 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.d, %i.af
  %i.ah = icmp samesign ult i64 %i.ag, 63
  %i.ai = icmp ne i16 %i.ae, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %_ZN10fast_float6bigint5pow10Ej.exit

bb.g:                                             ; preds = %bb.f
  %.idx12.i.i.i.i = shl nuw nsw i64 %i.d, 3       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i.i ; 2 uses
  %i.ak = icmp ugt i16 %i.ae, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !50
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %0, align 8, !tbaa !25
  store i64 %i.an, ptr %i.am, align 8, !tbaa !25
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i: ; preds = %bb.i, %bb.h
  %i.ao = phi i16 [ %.pre.i.i.i, %bb.h ], [ 1, %bb.i ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i.i, i1 false), !tbaa !25
  %i.ap = trunc nuw i64 %i.d to i16
  %i.aq = add i16 %i.ao, %i.ap
  store i16 %i.aq, ptr %i.ad, align 8, !tbaa !50
  br label %_ZN10fast_float6bigint5pow10Ej.exit

_ZN10fast_float6bigint5pow10Ej.exit:              ; preds = %bb.f, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i, %bb.a, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !50 ; 4 uses
  %i.at = zext i16 %i.as to i64                   ; 5 uses
  switch i16 %i.as, label %bb.l [
    i16 0, label %_ZNK10fast_float6bigint10bit_lengthEv.exit
    i16 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN10fast_float6bigint5pow10Ej.exit
  %i.au = getelementptr i8, ptr %0, i64 -8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25 ; 4 uses
  %.not.i.i.i4 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i4, label %bb.k, label %_ZN10fast_float11uint64_hi64EmRb.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 370, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10fast_float14leading_zeroesEm) #13
  unreachable

_ZN10fast_float11uint64_hi64EmRb.exit.i:          ; preds = %bb.j
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = shl i64 %i.aw, %i.ax
  br label %_ZN10fast_float14leading_zeroesEm.exit.i.i7

bb.l:                                             ; preds = %_ZN10fast_float6bigint5pow10Ej.exit
  %i.az = getelementptr i8, ptr %0, i64 -8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !25 ; 6 uses
  %i.bc = getelementptr i8, ptr %0, i64 -16
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.at
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !25 ; 3 uses
  %.not.i.i6.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i6.i, label %bb.m, label %_ZN10fast_float14leading_zeroesEm.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 370, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10fast_float14leading_zeroesEm) #13
  unreachable

_ZN10fast_float14leading_zeroesEm.exit.i.i:       ; preds = %bb.l
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true) ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN10fast_float11uint64_hi64EmmRb.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN10fast_float14leading_zeroesEm.exit.i.i
  %i.bh = shl i64 %i.be, %i.bf
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.be, i64 %i.bf)
  br label %_ZN10fast_float11uint64_hi64EmmRb.exit.i

_ZN10fast_float11uint64_hi64EmmRb.exit.i:         ; preds = %bb.n, %_ZN10fast_float14leading_zeroesEm.exit.i.i
  %.in.in.i = phi i64 [ %i.bh, %bb.n ], [ %i.be, %_ZN10fast_float14leading_zeroesEm.exit.i.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.bi, %bb.n ], [ %i.bb, %_ZN10fast_float14leading_zeroesEm.exit.i.i ] ; 2 uses
  %.in.i = icmp ne i64 %.in.in.i, 0
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.bj = icmp ugt i16 %i.as, 2
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZN10fast_float14leading_zeroesEm.exit.i.i7

.lr.ph.i.i:                                       ; preds = %_ZN10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ 2, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bk = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bk
  %i.bl = load i64, ptr %gep.i.i, align 8, !tbaa !25 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bl, 0
  %i.bm = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bm, %i.at
  %or.cond = select i1 %.not.not.i.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %_ZNK10fast_float6bigint4hi64ERb.exit, label %.lr.ph.i.i, !llvm.loop !67

_ZNK10fast_float6bigint4hi64ERb.exit:             ; preds = %.lr.ph.i.i
  %i.bn = or i64 %i.bl, %.in.in.i
  %i.bo = icmp ne i64 %i.bn, 0
  br label %_ZN10fast_float14leading_zeroesEm.exit.i.i7

_ZN10fast_float14leading_zeroesEm.exit.i.i7:      ; preds = %_ZN10fast_float11uint64_hi64EmmRb.exit.i, %_ZN10fast_float11uint64_hi64EmRb.exit.i, %_ZNK10fast_float6bigint4hi64ERb.exit
  %i.bp = phi i64 [ %i.bb, %_ZNK10fast_float6bigint4hi64ERb.exit ], [ %i.bb, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ], [ %i.aw, %_ZN10fast_float11uint64_hi64EmRb.exit.i ]
  %.0.i534 = phi i64 [ %.0.i.i, %_ZNK10fast_float6bigint4hi64ERb.exit ], [ %.0.i.i, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ], [ %i.ay, %_ZN10fast_float11uint64_hi64EmRb.exit.i ]
  %.032 = phi i1 [ %i.bo, %_ZNK10fast_float6bigint4hi64ERb.exit ], [ %.in.i, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ], [ false, %_ZN10fast_float11uint64_hi64EmRb.exit.i ]
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  br label %_ZNK10fast_float6bigint10bit_lengthEv.exit

_ZNK10fast_float6bigint10bit_lengthEv.exit:       ; preds = %_ZN10fast_float6bigint5pow10Ej.exit, %_ZN10fast_float14leading_zeroesEm.exit.i.i7
  %.0.i535 = phi i64 [ %.0.i534, %_ZN10fast_float14leading_zeroesEm.exit.i.i7 ], [ 0, %_ZN10fast_float6bigint5pow10Ej.exit ] ; 2 uses
  %.033 = phi i1 [ %.032, %_ZN10fast_float14leading_zeroesEm.exit.i.i7 ], [ false, %_ZN10fast_float6bigint5pow10Ej.exit ]
  %.0.i.i8 = phi i32 [ %i.br, %_ZN10fast_float14leading_zeroesEm.exit.i.i7 ], [ 0, %_ZN10fast_float6bigint5pow10Ej.exit ]
  %.tr.i = zext i16 %i.as to i32
  %i.bs = shl nuw nsw i32 %.tr.i, 6
  %i.bt = sub nsw i32 %i.bs, %.0.i.i8
  %i.bu = lshr i64 %.0.i535, 11                   ; 2 uses
  %i.bv = and i64 %.0.i535, 2047                  ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 1024                 ; 2 uses
  %i.bx = icmp samesign ugt i64 %i.bv, 1024
  %i.by = trunc i64 %i.bu to i1
  %or.cond.i.i11 = and i1 %.033, %i.bw
  %or.cond6.i.i12 = select i1 %i.bx, i1 true, i1 %or.cond.i.i11
  %i.bz = and i1 %i.bw, %i.by
  %i.ca = or i1 %i.bz, %or.cond6.i.i12
  %i.cb = zext i1 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.bu, %i.cb            ; 2 uses
  %.not14.i = icmp samesign ult i64 %i.cc, 9007199254740992 ; 2 uses
  %.sroa.13.0.v = select i1 %.not14.i, i32 1022, i32 1023
  %.sroa.13.0 = add nsw i32 %.sroa.13.0.v, %i.bt  ; 2 uses
  %i.cd = and i64 %i.cc, 13510798882111487
  %.not15.i = icmp samesign ult i32 %.sroa.13.0, 2047
  %.sroa.13.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.13.0, i32 2047)
  %i.ce = select i1 %.not15.i, i1 %.not14.i, i1 false
  %.sroa.0.1 = select i1 %i.ce, i64 %i.cd, i64 0
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.13.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %0, i64 %1, i32 %2, i32 noundef %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fast_float::bigint", align 8 ; 14 uses
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
  %spec.select95 = select i1 %.not15.i, i64 %i.h, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.14.1 = phi i32 [ %spec.select, %bb.c ], [ %i.f, %bb.b ]
  %.sroa.0.1 = phi i64 [ %spec.select95, %bb.c ], [ %storemerge.i.i, %bb.b ] ; 3 uses
  %i.j = zext nneg i32 %.sroa.14.1 to i64
  %i.k = shl nuw nsw i64 %i.j, 52
  %.sroa.0.1.masked = and i64 %.sroa.0.1, 9218868437227405312
  %i.l = or i64 %i.k, %.sroa.0.1.masked           ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %.sroa.0.1, 4503599627370495
  br label %_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = lshr exact i64 %i.l, 52
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i64 %.sroa.0.1, 4503599627370495
  %i.r = or disjoint i64 %i.q, 4503599627370496
  %i.s = add nsw i32 %i.p, -1076
  br label %_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit

_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit: ; preds = %bb.e, %bb.f
  %.sroa.4.0 = phi i32 [ -1075, %bb.e ], [ %i.s, %bb.f ]
  %storemerge.i = phi i64 [ %i.n, %bb.e ], [ %i.r, %bb.f ]
  %i.t = shl nuw nsw i64 %storemerge.i, 1
  %i.u = or disjoint i64 %i.t, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.w, i8 0, i64 496, i1 false)
  store i64 %i.u, ptr %4, align 8, !tbaa !25
  store i16 1, ptr %i.v, align 8, !tbaa !50
  %i.x = sub nsw i32 %.sroa.4.0, %3               ; 4 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit
  %i.y = sub nsw i32 0, %3
  %i.z = call noundef zeroext i1 @_ZN10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %4, i32 noundef %i.y) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN10fast_float11to_extendedIdEENS_17adjusted_mantissaET_.exit
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ab = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ac = and i64 %i.ab, 63                       ; 4 uses
  %i.ad = lshr i64 %i.ab, 6                       ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nuw nsw i64 64, %i.ac               ; 3 uses
  %i.af = load i16, ptr %i.v, align 8, !tbaa !50  ; 5 uses
  %i.ag = zext i16 %i.af to i64                   ; 4 uses
  %.not25.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not25.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %min.iters.check130 = icmp ult i16 %i.af, 4
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.preheader150, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec133 = and i64 %i.ag, 65532                ; 3 uses
  %broadcast.splatinsert134 = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat135 = shufflevector <2 x i64> %broadcast.splatinsert134, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert136 = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat137 = shufflevector <2 x i64> %broadcast.splatinsert136, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph131
  %index139 = phi i64 [ 0, %vector.ph131 ], [ %index.next143, %vector.body138 ] ; 2 uses
  %vector.recur140 = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph131 ], [ %wide.load142, %vector.body138 ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index139 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load141 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !25 ; 3 uses
  %wide.load142 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !25 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur140, <2 x i64> %wide.load141, <2 x i32> <i32 1, i32 2>
  %i.ak = shufflevector <2 x i64> %wide.load141, <2 x i64> %wide.load142, <2 x i32> <i32 1, i32 2>
  %i.al = shl <2 x i64> %wide.load141, %broadcast.splat135
  %i.am = shl <2 x i64> %wide.load142, %broadcast.splat135
  %i.an = lshr <2 x i64> %i.aj, %broadcast.splat137
  %i.ao = lshr <2 x i64> %i.ak, %broadcast.splat137
  %i.ap = or disjoint <2 x i64> %i.al, %i.an
  %i.aq = or disjoint <2 x i64> %i.am, %i.ao
  store <2 x i64> %i.ap, ptr %i.ah, align 8, !tbaa !25
  store <2 x i64> %i.aq, ptr %i.ai, align 8, !tbaa !25
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next143, %n.vec133
  br i1 %i.ar, label %middle.block144, label %vector.body138, !llvm.loop !68

middle.block144:                                  ; preds = %vector.body138
  %vector.recur.extract145 = extractelement <2 x i64> %wide.load142, i64 1 ; 2 uses
  %cmp.n146 = icmp eq i64 %n.vec133, %i.ag
  br i1 %cmp.n146, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader150

.lr.ph.i.i.i.preheader150:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block144
  %.01622.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %vector.recur.extract145, %middle.block144 ]
  %.01721.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec133, %middle.block144 ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block144
  %.lcssa = phi i64 [ %vector.recur.extract145, %middle.block144 ], [ %i.au, %.lr.ph.i.i.i ]
  %i.as = lshr i64 %.lcssa, %i.ae                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i, label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader150, %.lr.ph.i.i.i
  %.01622.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.01622.i.i.i.ph, %.lr.ph.i.i.i.preheader150 ]
  %.01721.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %.01721.i.i.i.ph, %.lr.ph.i.i.i.preheader150 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01721.i.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25 ; 3 uses
  %i.av = shl i64 %i.au, %i.ac
  %i.aw = lshr i64 %.01622.i.i.i, %i.ae
  %i.ax = or disjoint i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !25
  %i.ay = add nuw nsw i64 %.01721.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.ag
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !69

end_hunk_0
begin_hunk_1_@_ZN10fast_float6bigint4pow5Ej:bb.a
  %i.o = add nuw nsw i128 %i.m, %i.n              ; 2 uses
  %i.p = lshr i128 %i.o, 64                       ; 2 uses
  %i.q = trunc nuw nsw i128 %i.p to i64
  %i.r = trunc i128 %i.o to i64
  store i64 %i.r, ptr %i.j, align 8, !tbaa !25
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
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 7450580596923828125
  %i.w = zext nneg i64 %.01215.i to i128
  %i.x = add nuw nsw i128 %i.v, %i.w              ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = trunc i128 %i.x to i64
  store i64 %i.z, ptr %i.s, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 7450580596923828125
  %i.af = add nuw nsw i128 %i.ae, %i.y            ; 2 uses
  %i.ag = lshr i128 %i.af, 64                     ; 2 uses
  %i.ah = trunc nuw nsw i128 %i.ag to i64         ; 3 uses
  %i.ai = trunc i128 %i.af to i64
  store i64 %i.ai, ptr %i.ab, align 8, !tbaa !25
  %i.aj = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !53

bb.d:                                             ; preds = %._crit_edge.i
  %i.ak = icmp ult i16 %i.g, 62
  br i1 %i.ak, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %.lcssa64, ptr %i.al, align 8, !tbaa !25
  %i.am = add nuw nsw i16 %i.g, 1                 ; 2 uses
  store i16 %i.am, ptr %i.c, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, %._crit_edge.i, %bb.c
  %i.an = phi i16 [ %i.am, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ], [ %i.g, %._crit_edge.i ], [ 0, %bb.c ]
  %i.ao = add nsw i32 %.11233, -27                ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 26
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.112.lcssa = phi i32 [ %.011.lcssa, %.preheader ], [ %i.ao, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.112.lcssa, 0
  br i1 %.not, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !50 ; 6 uses
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %.not19.i13 = icmp eq i16 %i.ar, 0
  br i1 %.not19.i13, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.f
  %i.at = zext nneg i32 %.112.lcssa to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float11pow5_tablesIvE16small_power_of_5E, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !25
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
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, %i.aw
  %i.bc = zext i64 %.01215.i16.epil.init to i128
  %i.bd = add nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64                     ; 2 uses
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = trunc i128 %i.bd to i64
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !25
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %.lcssa63 = phi i128 [ %i.bv, %._crit_edge.i18.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.lcssa = phi i64 [ %i.bw, %._crit_edge.i18.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.not.i19 = icmp eq i128 %.lcssa63, 0
  br i1 %.not.i19, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %.016.i15 = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.by, %bb.g ] ; 3 uses
  %.01215.i16 = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.bw, %bb.g ]
  %niter78 = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter78.next.1, %bb.g ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, %i.aw
  %i.bl = zext i64 %.01215.i16 to i128
  %i.bm = add nuw i128 %i.bk, %i.bl               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = trunc i128 %i.bm to i64
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.aw
  %i.bu = add nuw i128 %i.bt, %i.bn               ; 2 uses
  %i.bv = lshr i128 %i.bu, 64                     ; 2 uses
  %i.bw = trunc nuw i128 %i.bv to i64             ; 3 uses
  %i.bx = trunc i128 %i.bu to i64
  store i64 %i.bx, ptr %i.bq, align 8, !tbaa !25
  %i.by = add nuw nsw i64 %.016.i15, 2            ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.g, !llvm.loop !53

bb.h:                                             ; preds = %._crit_edge.i18
  %i.bz = icmp ult i16 %i.ar, 62
  br i1 %i.bz, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %.lcssa, ptr %i.ca, align 8, !tbaa !25
  %i.cb = add nuw nsw i16 %i.ar, 1
  store i16 %i.cb, ptr %i.aq, align 8, !tbaa !50
  br label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit

_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit: ; preds = %.lr.ph, %bb.d, %bb.f, %._crit_edge.i18, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21, %._crit_edge, %bb.h
  %.1 = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.h ], [ true, %._crit_edge ], [ true, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21 ], [ true, %._crit_edge.i18 ], [ false, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10fast_float8long_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fast_float::stackvec", align 8 ; 9 uses
  %4 = alloca %"struct.fast_float::stackvec", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !50   ; 10 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.496..496..496..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 0, ptr %.496..496..496..sroa_idx, align 8, !tbaa !50
  %.not.i.i = icmp ult i16 %i.b, 63
  br i1 %.not.i.i, label %bb.b, label %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit

bb.b:                                             ; preds = %bb.a
  switch i16 %i.b, label %bb.c [
    i16 0, label %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i
    i16 1, label %bb.d
  ], !prof !75

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.c, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(498) %3, ptr nonnull align 8 %0, i64 %.idx.i.i.i.i.i, i1 false)
  %.496..496..496..sroa_idx121.a = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.496..496..496..pre.i.i.i = load i16, ptr %.496..496..496..sroa_idx121.a, align 8, !tbaa !50
  br label %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8, !tbaa !25
  store i64 %i.d, ptr %3, align 8, !tbaa !25
  br label %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i

_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = phi i16 [ %i.b, %bb.b ], [ 0, %bb.d ], [ %.496..496..496..pre.i.i.i, %bb.c ]
  %i.f = add i16 %i.e, %i.b
  %i.g = freeze i16 %i.f                          ; 2 uses
  %.496..496..496..sroa_idx122 = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 %i.g, ptr %.496..496..496..sroa_idx122, align 8, !tbaa !50
  br label %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit: ; preds = %bb.a, %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i
  %.496..496. = phi i16 [ 0, %bb.a ], [ %i.g, %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i ] ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.critedge34, label %bb.e

bb.e:                                             ; preds = %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit
  %.not19.i = icmp eq i16 %i.b, 0
  br i1 %.not19.i, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.h = load i64, ptr %1, align 8, !tbaa !25
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
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, %i.i
  %i.o = zext i64 %.01215.i.epil.init to i128
  %i.p = add nuw i128 %i.n, %i.o                  ; 2 uses
  %i.q = lshr i128 %i.p, 64                       ; 2 uses
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = trunc i128 %i.p to i64
  store i64 %i.s, ptr %i.k, align 8, !tbaa !25
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa109 = phi i128 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.epil.preheader ]
  %.lcssa108 = phi i64 [ %i.ai, %._crit_edge.i.unr-lcssa ], [ %i.r, %.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa109, 0
  br i1 %.not.i, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ak, %bb.f ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ai, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !25
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.i
  %i.x = zext i64 %.01215.i to i128
  %i.y = add nuw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = trunc i128 %i.y to i64
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, %i.i
  %i.ag = add nuw i128 %i.af, %i.z                ; 2 uses
  %i.ah = lshr i128 %i.ag, 64                     ; 2 uses
  %i.ai = trunc nuw i128 %i.ah to i64             ; 3 uses
  %i.aj = trunc i128 %i.ag to i64
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !25
  %i.ak = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.f, !llvm.loop !53

bb.g:                                             ; preds = %._crit_edge.i
  %i.al = icmp ult i16 %i.b, 62
  br i1 %i.al, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %.critedge32

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  store i64 %.lcssa108, ptr %i.am, align 8, !tbaa !25
  %i.an = add nuw nsw i16 %i.b, 1
  store i16 %i.an, ptr %i.a, align 8, !tbaa !50
  br label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit

_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit: ; preds = %bb.e, %._crit_edge.i, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i
  %.not30.not68.not = icmp eq i64 %2, 1
  br i1 %.not30.not68.not, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit
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
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.not29.us = icmp eq i64 %i.as, 0
  br i1 %.not29.us, label %.critedge.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i16 0, ptr %i.ao, align 8, !tbaa !50
  switch i16 %.496..496., label %bb.j [
    i16 0, label %bb.k
    i16 1, label %bb.i
  ], !prof !75

bb.i:                                             ; preds = %bb.h
  store i64 %.0..0..0., ptr %4, align 8, !tbaa !25
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %3, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.us = load i16, ptr %i.ao, align 8, !tbaa !50
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
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, %i.aw
  %i.bc = zext i64 %.01215.i39.us to i128
  %i.bd = add nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = trunc i128 %i.bd to i64
  store i64 %i.bf, ptr %i.ay, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, %i.aw
  %i.bl = add nuw i128 %i.bk, %i.be               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64                     ; 2 uses
  %i.bn = trunc nuw i128 %i.bm to i64             ; 3 uses
  %i.bo = trunc i128 %i.bl to i64
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !25
  %i.bp = add nuw nsw i64 %.016.i38.us, 2         ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %bb.l, !llvm.loop !53

._crit_edge.i41.us.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge.i41.us, label %.epil.preheader113

.epil.preheader113:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bp, %._crit_edge.i41.us.unr-lcssa ]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bn, %._crit_edge.i41.us.unr-lcssa ]
  %lcmp.mod118 = trunc i16 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.aw
  %i.bu = zext i64 %.01215.i39.us.epil.init to i128
  %i.bv = add nuw i128 %i.bt, %i.bu               ; 2 uses
  %i.bw = lshr i128 %i.bv, 64                     ; 2 uses
  %i.bx = trunc nuw i128 %i.bw to i64
  %i.by = trunc i128 %i.bv to i64
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !25
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader113
  %.lcssa105 = phi i128 [ %i.bm, %._crit_edge.i41.us.unr-lcssa ], [ %i.bw, %.epil.preheader113 ]
  %.lcssa = phi i64 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader113 ]
  %.not.i42.us = icmp eq i128 %.lcssa105, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.bz = icmp ult i16 %i.au, 62
  br i1 %i.bz, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  store i64 %.lcssa, ptr %i.ca, align 8, !tbaa !25
  %i.cb = add nuw nsw i16 %i.au, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cc = phi i16 [ %i.cb, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.au, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
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
  br i1 %i.cj, label %bb.p, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp samesign ugt i64 %i.ci, %i.ce
  br i1 %i.ck, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cl = getelementptr [8 x i8], ptr %0, i64 %i.ce
  %i.cm = sub nuw nsw i64 %i.ci, %i.ce
  %i.cn = shl nuw nsw i64 %i.cm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cn, i1 false), !tbaa !25
  br label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.ci to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.co = phi i16 [ %i.aq, %bb.n ], [ %storemerge.i.i.i.us, %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cc, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02434.i.us = phi i64 [ %i.cz, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02533.i.us = phi i1 [ %.0.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02434.i.us ; 2 uses
  %i.cp = load i64, ptr %gep.i.us, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02434.i.us
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !25
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
  store i64 %.023.i.us, ptr %gep.i.us, align 8, !tbaa !25
  %i.cz = add nuw nsw i64 %.02434.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.cz, %i.cd
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !76

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
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph104, !llvm.loop !77

.lr.ph104:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us103 = phi i64 [ %i.dc, %bb.u ], [ %i.da, %bb.t ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us103 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !25
  %i.df = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.de, i64 1) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 1
  %i.dh = extractvalue { i64, i1 } %i.df, 0
  store i64 %i.dh, ptr %i.dd, align 8, !tbaa !25
  br i1 %i.dg, label %bb.u, label %.critedge.us, !llvm.loop !77

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.di = icmp ult i16 %i.co, 62
  br i1 %i.di, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.db
  store i64 1, ptr %i.dj, align 8, !tbaa !25
  %i.dk = add nuw nsw i16 %i.co, 1                ; 2 uses
  store i16 %i.dk, ptr %i.a, align 8, !tbaa !50
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph104, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dl = phi i16 [ %i.aq, %.lr.ph.split.us ], [ %i.co, %bb.q ], [ %i.dk, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.co, %._crit_edge.i49.us ], [ %i.co, %.lr.ph104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.dm = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dm, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !78

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dp, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.not29 = icmp eq i64 %i.do, 0
  br i1 %.not29, label %.critedge, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.dp = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !78

_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit
  %.promoted.i = load i16, ptr %i.a, align 8, !tbaa !50 ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dq = getelementptr i8, ptr %0, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %5 = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %8, %bb.w ] ; 2 uses
  %6 = zext i16 %5 to i64
  %7 = getelementptr [8 x i8], ptr %i.dq, i64 %6
  %i.dr = load i64, ptr %7, align 8, !tbaa !25
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %8 = add i16 %5, -1                             ; 3 uses
  store i16 %8, ptr %i.a, align 8, !tbaa !50
  %.not.i51 = icmp eq i16 %8, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !79

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN10fast_float19parse_number_stringIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!16 = distinct !{!16, !"_ZN10fast_float19parse_number_stringIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"bool", !6, i64 0}
!29 = distinct !{!29, !18}
!30 = !{!31, !11, i64 16}
!31 = !{!"_ZTSN10fast_float22parsed_number_string_tIcEE", !26, i64 0, !26, i64 8, !11, i64 16, !28, i64 24, !28, i64 25, !28, i64 26, !32, i64 32, !32, i64 48, !33, i64 64}
!32 = !{!"_ZTSN10fast_float4spanIKcEE", !11, i64 0, !26, i64 8}
!33 = !{!"_ZTSN10fast_float11parse_errorE", !6, i64 0}
!34 = !{!31, !26, i64 0}
!35 = !{i8 0, i8 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !6, i64 0}
!38 = !{!31, !26, i64 8}
!39 = !{!31, !28, i64 24}
!40 = !{}
!41 = !{!31, !28, i64 26}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = !{!31, !11, i64 32}
!46 = !{!32, !26, i64 8}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = !{!51, !52, i64 496}
!51 = !{!"_ZTSN10fast_float8stackvecILt62EEE", !6, i64 0, !52, i64 496}
!52 = !{!"short", !6, i64 0}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18, !55}
!55 = !{!"llvm.loop.peeled.count", i32 1}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = !{!31, !11, i64 48}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18, !63, !64}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = distinct !{!65, !18, !64, !63}
!66 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18, !63, !64}
!69 = distinct !{!69, !18, !64, !63}
!70 = distinct !{!70, !18, !63, !64}
!71 = distinct !{!71, !18, !64, !63}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
end_hunk_1
