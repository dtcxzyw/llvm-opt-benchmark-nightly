inline.NumInlined: 735
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN14arrow_vendored10fast_float6bigint4pow5Ej:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15.epil.init ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, %i.aw
  %i.bc = zext i64 %.01215.i16.epil.init to i128
  %i.bd = add nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64                     ; 2 uses
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = trunc i128 %i.bd to i64
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !19
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
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, %i.aw
  %i.bl = zext i64 %.01215.i16 to i128
  %i.bm = add nuw i128 %i.bk, %i.bl               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = trunc i128 %i.bm to i64
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !19
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.aw
  %i.bu = add nuw i128 %i.bt, %i.bn               ; 2 uses
  %i.bv = lshr i128 %i.bu, 64                     ; 2 uses
  %i.bw = trunc nuw i128 %i.bv to i64             ; 3 uses
  %i.bx = trunc i128 %i.bu to i64
  store i64 %i.bx, ptr %i.bq, align 8, !tbaa !19
  %i.by = add nuw nsw i64 %.016.i15, 2            ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.g, !llvm.loop !80

bb.h:                                             ; preds = %._crit_edge.i18
  %i.bz = icmp ult i16 %i.ar, 62
  br i1 %i.bz, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %.lcssa, ptr %i.ca, align 8, !tbaa !19
  %i.cb = add nuw nsw i16 %i.ar, 1
  store i16 %i.cb, ptr %i.aq, align 8, !tbaa !77
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 5 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !77   ; 12 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.496..496..496..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 0, ptr %.496..496..496..sroa_idx, align 8, !tbaa !77
  %.not.i.i = icmp ult i16 %i.b, 63
  br i1 %.not.i.i, label %bb.b, label %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit

bb.b:                                             ; preds = %bb.a
  switch i16 %i.b, label %bb.c [
    i16 0, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i
    i16 1, label %bb.d
  ], !prof !101

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.c, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(498) %3, ptr nonnull align 8 %0, i64 %.idx.i.i.i.i.i, i1 false)
  %.496..496..496..sroa_idx125 = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.496..496..496..pre.i.i.i = load i16, ptr %.496..496..496..sroa_idx125, align 8, !tbaa !77
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8, !tbaa !19
  store i64 %i.d, ptr %3, align 8, !tbaa !19
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i

_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = phi i16 [ %i.b, %bb.b ], [ 0, %bb.d ], [ %.496..496..496..pre.i.i.i, %bb.c ]
  %i.f = add i16 %i.e, %i.b
  %i.g = freeze i16 %i.f                          ; 2 uses
  %.496..496..496..sroa_idx126 = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 %i.g, ptr %.496..496..496..sroa_idx126, align 8, !tbaa !77
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit: ; preds = %bb.a, %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i
  %.496..496. = phi i16 [ 0, %bb.a ], [ %i.g, %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i ] ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.critedge34, label %bb.e

bb.e:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit
  %.not19.i = icmp eq i16 %i.b, 0
  br i1 %.not19.i, label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.h = load i64, ptr %1, align 8, !tbaa !19
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
  %lcmp.mod116 = trunc i16 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, %i.i
  %i.o = zext i64 %.01215.i.epil.init to i128
  %i.p = add nuw i128 %i.n, %i.o                  ; 2 uses
  %i.q = lshr i128 %i.p, 64                       ; 2 uses
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = trunc i128 %i.p to i64
  store i64 %i.s, ptr %i.k, align 8, !tbaa !19
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa113 = phi i128 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.epil.preheader ]
  %.lcssa112 = phi i64 [ %i.ai, %._crit_edge.i.unr-lcssa ], [ %i.r, %.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa113, 0
  br i1 %.not.i, label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ak, %bb.f ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ai, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.i
  %i.x = zext i64 %.01215.i to i128
  %i.y = add nuw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = trunc i128 %i.y to i64
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, %i.i
  %i.ag = add nuw i128 %i.af, %i.z                ; 2 uses
  %i.ah = lshr i128 %i.ag, 64                     ; 2 uses
  %i.ai = trunc nuw i128 %i.ah to i64             ; 3 uses
  %i.aj = trunc i128 %i.ag to i64
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !19
  %i.ak = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.f, !llvm.loop !80

bb.g:                                             ; preds = %._crit_edge.i
  %i.al = icmp ult i16 %i.b, 62
  br i1 %i.al, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %.critedge32

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  store i64 %.lcssa112, ptr %i.am, align 8, !tbaa !19
  %i.an = add nuw nsw i16 %i.b, 1                 ; 2 uses
  store i16 %i.an, ptr %i.a, align 8, !tbaa !77
  br label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit

_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit: ; preds = %bb.e, %._crit_edge.i, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i
  %i.ao = phi i16 [ 0, %bb.e ], [ %i.b, %._crit_edge.i ], [ %i.an, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ] ; 3 uses
  %.not30.not68.not = icmp eq i64 %2, 1
  br i1 %.not30.not68.not, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 2 uses
  %.not.i35 = icmp ult i16 %.496..496., 63
  %.0..0..0. = load i64, ptr %3, align 8
  %i.aq = shl nuw nsw i16 %.496..496., 3
  %.idx.i.i.i.i = zext nneg i16 %i.aq to i64
  br i1 %.not.i35, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %i.ar = phi i16 [ %i.dm, %.critedge.us ], [ %i.ao, %.lr.ph ] ; 3 uses
  %.02769.us = phi i64 [ %i.dn, %.critedge.us ], [ 1, %.lr.ph ] ; 7 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769.us
  %i.at = load i64, ptr %i.as, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.not29.us = icmp eq i64 %i.at, 0
  br i1 %.not29.us, label %.critedge.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i16 0, ptr %i.ap, align 8, !tbaa !77
  switch i16 %.496..496., label %bb.j [
    i16 0, label %bb.k
    i16 1, label %bb.i
  ], !prof !101

bb.i:                                             ; preds = %bb.h
  store i64 %.0..0..0., ptr %4, align 8, !tbaa !19
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %3, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.us = load i16, ptr %i.ap, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.au = phi i16 [ %.496..496., %bb.h ], [ 0, %bb.i ], [ %.pre.i.i.us, %bb.j ]
  %i.av = add i16 %i.au, %.496..496.              ; 7 uses
  %i.aw = zext i16 %i.av to i64                   ; 3 uses
  %.not19.i36.us = icmp eq i16 %i.av, 0
  br i1 %.not19.i36.us, label %bb.n, label %.lr.ph.i37.us

.lr.ph.i37.us:                                    ; preds = %bb.k
  %i.ax = zext i64 %i.at to i128                  ; 3 uses
  %xtraiter118 = and i64 %i.aw, 1
  %i.ay = icmp eq i16 %i.av, 1
  br i1 %i.ay, label %.epil.preheader117, label %.lr.ph.i37.us.new

.lr.ph.i37.us.new:                                ; preds = %.lr.ph.i37.us
  %unroll_iter123 = and i64 %i.aw, 65534
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i37.us.new
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bq, %bb.l ] ; 3 uses
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bo, %bb.l ]
  %niter124 = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %niter124.next.1, %bb.l ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw i128 %i.bb, %i.ax
  %i.bd = zext i64 %.01215.i39.us to i128
  %i.be = add nuw i128 %i.bc, %i.bd               ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = trunc i128 %i.be to i64
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.bk = zext i64 %i.bj to i128
  %i.bl = mul nuw i128 %i.bk, %i.ax
  %i.bm = add nuw i128 %i.bl, %i.bf               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64                     ; 2 uses
  %i.bo = trunc nuw i128 %i.bn to i64             ; 3 uses
  %i.bp = trunc i128 %i.bm to i64
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !19
  %i.bq = add nuw nsw i64 %.016.i38.us, 2         ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %bb.l, !llvm.loop !80

._crit_edge.i41.us.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %._crit_edge.i41.us, label %.epil.preheader117

.epil.preheader117:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bq, %._crit_edge.i41.us.unr-lcssa ]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bo, %._crit_edge.i41.us.unr-lcssa ]
  %lcmp.mod122 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !19
  %i.bt = zext i64 %i.bs to i128
  %i.bu = mul nuw i128 %i.bt, %i.ax
  %i.bv = zext i64 %.01215.i39.us.epil.init to i128
  %i.bw = add nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64                     ; 2 uses
  %i.by = trunc nuw i128 %i.bx to i64
  %i.bz = trunc i128 %i.bw to i64
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !19
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader117
  %.lcssa108 = phi i128 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader117 ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i41.us.unr-lcssa ], [ %i.by, %.epil.preheader117 ]
  %.not.i42.us = icmp eq i128 %.lcssa108, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.ca = icmp ult i16 %i.av, 62
  br i1 %i.ca, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  store i64 %.lcssa, ptr %i.cb, align 8, !tbaa !19
  %i.cc = add nuw nsw i16 %i.av, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cd = phi i16 [ %i.cc, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.av, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
  %i.ce = zext i16 %i.cd to i64                   ; 4 uses
  %i.cf = zext i16 %i.ar to i64                   ; 5 uses
  %i.cg = icmp ugt i64 %.02769.us, %i.cf
  %i.ch = sub nsw i64 %i.cf, %.02769.us
  %i.ci = icmp ult i64 %i.ch, %i.ce
  %or.cond.i.us = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.02769.us, %i.ce               ; 4 uses
  %i.ck = icmp ult i64 %i.cj, 63
  br i1 %i.ck, label %bb.p, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ugt i64 %i.cj, %i.cf
  br i1 %i.cl, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cm = getelementptr [8 x i8], ptr %0, i64 %i.cf
  %i.cn = sub nuw nsw i64 %i.cj, %i.cf
  %i.co = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.co, i1 false), !tbaa !19
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.cj to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !77
  br label %bb.q

bb.q:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.cp = phi i16 [ %i.ar, %bb.n ], [ %storemerge.i.i.i.us, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cd, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02434.i.us = phi i64 [ %i.da, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02533.i.us = phi i1 [ %.0.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02434.i.us ; 2 uses
  %i.cq = load i64, ptr %gep.i.us, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02434.i.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !19
  %i.ct = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cq, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1       ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  br i1 %.02533.i.us, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i47.us
  %i.cw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cv, i64 1) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  %i.cy = extractvalue { i64, i1 } %i.cw, 0
  %i.cz = or i1 %i.cu, %i.cx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i47.us
  %.0.in.i.us = phi i1 [ %i.cz, %bb.r ], [ %i.cu, %.lr.ph.i47.us ] ; 2 uses
  %.023.i.us = phi i64 [ %i.cy, %bb.r ], [ %i.cv, %.lr.ph.i47.us ]
  store i64 %.023.i.us, ptr %gep.i.us, align 8, !tbaa !19
  %i.da = add nuw nsw i64 %.02434.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.da, %i.ce
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !102

._crit_edge.i49.us:                               ; preds = %bb.s
  br i1 %.0.in.i.us, label %bb.t, label %.critedge.us

bb.t:                                             ; preds = %._crit_edge.i49.us
  %i.db = add i64 %.02769.us, %i.ce               ; 3 uses
  %i.dc = zext i16 %i.cp to i64                   ; 3 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %exitcond.not.i.i.us105.not = icmp ult i64 %i.db, %i.dc
  br i1 %exitcond.not.i.i.us105.not, label %.lr.ph107, label %.critedge.i.i.us

bb.u:                                             ; preds = %.lr.ph107
  %i.dd = add i64 %.01421.i.i.us106, 1            ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dd, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph107, !llvm.loop !103

.lr.ph107:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us106 = phi i64 [ %i.dd, %bb.u ], [ %i.db, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us106 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !19
  %i.dg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.df, i64 1) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  store i64 %i.di, ptr %i.de, align 8, !tbaa !19
  br i1 %i.dh, label %bb.u, label %.critedge.us, !llvm.loop !103

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.dj = icmp ult i16 %i.cp, 62
  br i1 %i.dj, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  store i64 1, ptr %i.dk, align 8, !tbaa !19
  %i.dl = add nuw nsw i16 %i.cp, 1                ; 2 uses
  store i16 %i.dl, ptr %i.a, align 8, !tbaa !77
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph107, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dm = phi i16 [ %i.ar, %.lr.ph.split.us ], [ %i.dl, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.cp, %._crit_edge.i49.us ], [ %i.cp, %bb.q ], [ %i.cp, %.lr.ph107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dn = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !104

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dq, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.not29 = icmp eq i64 %i.dp, 0
  br i1 %.not29, label %.critedge, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dq = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !104

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit
  %.promoted.i = phi i16 [ %i.dm, %.critedge.us ], [ %i.b, %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit ], [ %i.ao, %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit ], [ %i.ao, %.critedge ] ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dr = getelementptr i8, ptr %0, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %i.ds = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %i.dx, %bb.w ] ; 2 uses
  %i.dt = zext i16 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !19
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %i.dx = add i16 %i.ds, -1                       ; 3 uses
  store i16 %i.dx, ptr %i.a, align 8, !tbaa !77
  %.not.i51 = icmp eq i16 %i.dx, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !105

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float6detail12parse_infnanIdEENS0_17from_chars_resultEPKcS5_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 2 uses
  %i.c = load i8, ptr %spec.select, align 1, !tbaa !10
  %i.d = icmp eq i8 %i.c, 43
  %.1.idx = zext i1 %i.d to i64
  %.1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.1.idx ; 9 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %.1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 2
  br i1 %i.h, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = load i8, ptr %.1, align 1, !tbaa !10     ; 2 uses
  %i.j = xor i8 %i.i, 78
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10    ; 2 uses
  %i.m = xor i8 %i.l, 65
  %i.n = or i8 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10    ; 2 uses
  %i.q = xor i8 %i.p, 78
  %i.r = or i8 %i.q, %i.n
  %i.s = and i8 %i.r, -33
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.b, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.u = xor i8 %i.i, 73
  %i.v = xor i8 %i.l, 78
  %i.w = or i8 %i.v, %i.u
  %i.x = xor i8 %i.p, 70
  %i.y = or i8 %i.x, %i.w
  %i.z = and i8 %i.y, -33
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 6 uses
  %i.ac = select i1 %i.b, double -qnan, double +qnan
  store double %i.ac, ptr %2, align 8, !tbaa !42
  %.not = icmp eq ptr %i.ab, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ae = icmp ne i8 %i.ad, 40
  %i.af = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 4 uses
  %.not4361 = icmp eq ptr %i.af, %1
  %or.cond64 = select i1 %i.ae, i1 true, i1 %.not4361
  br i1 %or.cond64, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 41
  br i1 %i.ah, label %.lr.ph._crit_edge, label %.lr.ph80

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.062.lcssa = phi ptr [ %i.af, %.lr.ph.preheader ], [ %.062.be, %.lr.ph.backedge ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.062.lcssa, i64 1
  br label %.loopexit

.lr.ph80:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.aj = phi i8 [ %i.ap, %.lr.ph.backedge ], [ %i.ag, %.lr.ph.preheader ] ; 3 uses
  %.06279 = phi ptr [ %.062.be, %.lr.ph.backedge ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.ak = and i8 %i.aj, -33
  %i.al = add i8 %i.ak, -65
  %or.cond57 = icmp ult i8 %i.al, 26
  br i1 %or.cond57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph80
  %i.am = add i8 %i.aj, -58
  %or.cond45 = icmp ult i8 %i.am, -10
  %i.an = icmp ne i8 %i.aj, 95
  %or.cond56.not67 = and i1 %i.an, %or.cond45
  %i.ao = getelementptr inbounds nuw i8, ptr %.06279, i64 1 ; 2 uses
  %.not43 = icmp eq ptr %i.ao, %1
  %or.cond65 = select i1 %or.cond56.not67, i1 true, i1 %.not43
  br i1 %or.cond65, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph80
  %.old = getelementptr inbounds nuw i8, ptr %.06279, i64 1 ; 2 uses
  %.not43.old = icmp eq ptr %.old, %1
  br i1 %.not43.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.062.be = phi ptr [ %.old, %bb.e ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ap = load i8, ptr %.062.be, align 1, !tbaa !10 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 41
  br i1 %i.aq, label %.lr.ph._crit_edge, label %.lr.ph80, !llvm.loop !106

bb.f:                                             ; preds = %.lr.ph.i46.preheader
  %i.ar = icmp samesign ugt i64 %i.g, 7
  br i1 %i.ar, label %.lr.ph.i51, label %bb.g

.lr.ph.i51:                                       ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.at = load <4 x i8>, ptr %i.as, align 1, !tbaa !10
  %i.au = xor <4 x i8> %i.at, <i8 73, i8 78, i8 73, i8 84>
  %i.av = getelementptr inbounds nuw i8, ptr %.1, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10
  %i.ax = xor i8 %i.aw, 89
  %i.ay = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.au)
  %op.rdx = or i8 %i.ay, %i.ax
  %i.az = and i8 %op.rdx, -33
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i51, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i51, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i51 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.1, i64 %.sink
  %i.bc = select i1 %i.b, double -inf, double +inf
  store double %i.bc, ptr %2, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i46.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.0.3 = phi ptr [ %0, %.lr.ph.i46.preheader ], [ %i.bb, %bb.h ], [ %i.ab, %bb.b ], [ %i.ab, %bb.c ], [ %i.ai, %.lr.ph._crit_edge ], [ %0, %bb.a ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ]
  %.sroa.6.0 = phi i32 [ 22, %.lr.ph.i46.preheader ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN14arrow_vendored10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #20
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
  %i.g = load i16, ptr %i.f, align 8, !tbaa !77   ; 5 uses
  %i.h = zext i16 %i.g to i64                     ; 4 uses
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 65532                    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat46 = shufflevector <2 x i64> %broadcast.splatinsert45, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
