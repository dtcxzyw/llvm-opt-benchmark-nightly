inline.NumInlined: 1643
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN10fast_float8long_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE:bb.a
bb.e:                                             ; preds = %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit
  %.not19.i = icmp eq i16 %i.b, 0
  br i1 %.not19.i, label %.critedge63.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.h = load i64, ptr %1, align 8
  %i.i = zext i64 %i.h to i128
  br label %bb.f

._crit_edge.i:                                    ; preds = %bb.f
  %i.j = icmp ugt i16 %i.u, 61
  %.not.i = icmp eq i128 %i.q, 0                  ; 2 uses
  %brmerge.i = or i1 %i.j, %.not.i
  br i1 %brmerge.i, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.016.i = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %bb.f ] ; 2 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %bb.f ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, %i.i
  %i.o = zext i64 %.01215.i to i128
  %i.p = add nuw i128 %i.n, %i.o                  ; 2 uses
  %i.q = lshr i128 %i.p, 64                       ; 2 uses
  %i.r = trunc nuw i128 %i.q to i64               ; 2 uses
  %i.s = trunc i128 %i.p to i64
  store i64 %i.s, ptr %i.k, align 8
  %i.t = add nuw nsw i64 %.016.i, 1               ; 2 uses
  %i.u = load i16, ptr %i.a, align 8              ; 3 uses
  %i.v = zext i16 %i.u to i64                     ; 2 uses
  %i.w = icmp samesign ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %._crit_edge.i, !llvm.loop !170

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  store i64 %i.r, ptr %i.x, align 8
  %i.y = load i16, ptr %i.a, align 8
  %i.z = add i16 %i.y, 1                          ; 2 uses
  store i16 %i.z, ptr %i.a, align 8
  br label %.critedge63.preheader

_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit: ; preds = %._crit_edge.i
  br i1 %.not.i, label %.critedge63.preheader, label %.critedge32

.critedge63.preheader:                            ; preds = %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, %bb.e
  %.promoted.i96 = phi i16 [ %i.u, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit ], [ %i.z, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ], [ 0, %bb.e ] ; 2 uses
  %.not30.not75.not = icmp eq i64 %2, 1
  br i1 %.not30.not75.not, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge63.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 6 uses
  %.not.i35 = icmp ult i16 %.496..496., 63
  %.0..0..0. = load i64, ptr %3, align 8
  %i.ab = shl nuw nsw i16 %.496..496., 3
  %.idx.i.i.i.i = zext nneg i16 %i.ab to i64
  br i1 %.not.i35, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %.02776.us = phi i64 [ %i.cc, %.critedge.us ], [ 1, %.lr.ph ] ; 7 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02776.us
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.not29.us = icmp eq i64 %i.ad, 0
  br i1 %.not29.us, label %.critedge.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  store i16 0, ptr %i.aa, align 8
  switch i16 %.496..496., label %bb.i [
    i16 0, label %bb.j
    i16 1, label %bb.h
  ], !prof !184

bb.h:                                             ; preds = %bb.g
  store i64 %.0..0..0., ptr %4, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %3, i64 %.idx.i.i.i.i, i1 false)
  %.pre = load i16, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ae = phi i16 [ %.pre, %bb.i ], [ 0, %bb.h ], [ %.496..496., %bb.g ]
  %i.af = add i16 %i.ae, %.496..496.              ; 2 uses
  store i16 %i.af, ptr %i.aa, align 8
  %.not19.i36.us = icmp eq i16 %i.af, 0
  br i1 %.not19.i36.us, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.thread.us, label %.lr.ph.i37.us

.lr.ph.i37.us:                                    ; preds = %bb.j
  %i.ag = zext i64 %i.ad to i128
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i37.us
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.aq, %bb.k ] ; 2 uses
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.ao, %bb.k ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = zext i64 %i.ai to i128
  %i.ak = mul nuw i128 %i.aj, %i.ag
  %i.al = zext i64 %.01215.i39.us to i128
  %i.am = add nuw i128 %i.ak, %i.al               ; 2 uses
  %i.an = lshr i128 %i.am, 64                     ; 2 uses
  %i.ao = trunc nuw i128 %i.an to i64             ; 2 uses
  %i.ap = trunc i128 %i.am to i64
  store i64 %i.ap, ptr %i.ah, align 8
  %i.aq = add nuw nsw i64 %.016.i38.us, 1         ; 2 uses
  %i.ar = load i16, ptr %i.aa, align 8            ; 3 uses
  %i.as = zext i16 %i.ar to i64                   ; 2 uses
  %i.at = icmp samesign ult i64 %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %._crit_edge.i40.us, !llvm.loop !170

._crit_edge.i40.us:                               ; preds = %bb.k
  %i.au = icmp ugt i16 %i.ar, 61
  %.not.i41.us = icmp eq i128 %i.an, 0            ; 2 uses
  %brmerge.i42.us = or i1 %i.au, %.not.i41.us
  br i1 %brmerge.i42.us, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.us, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i43.us

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i43.us: ; preds = %._crit_edge.i40.us
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.as
  store i64 %i.ao, ptr %i.av, align 8
  %i.aw = load i16, ptr %i.aa, align 8
  %i.ax = add i16 %i.aw, 1                        ; 2 uses
  store i16 %i.ax, ptr %i.aa, align 8
  br label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.thread.us

_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.us: ; preds = %._crit_edge.i40.us
  br i1 %.not.i41.us, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.thread.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.thread.us: ; preds = %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.us, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i43.us, %bb.j
  %i.ay = phi i16 [ %i.ar, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.us ], [ %i.ax, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i43.us ], [ 0, %bb.j ] ; 2 uses
  %i.az = zext i16 %i.ay to i64                   ; 4 uses
  %i.ba = load i16, ptr %i.a, align 8
  %i.bb = zext i16 %i.ba to i64                   ; 5 uses
  %i.bc = icmp ugt i64 %.02776.us, %i.bb
  %i.bd = sub nsw i64 %i.bb, %.02776.us
  %i.be = icmp ult i64 %i.bd, %i.az
  %or.cond.i.us = select i1 %i.bc, i1 true, i1 %i.be
  br i1 %or.cond.i.us, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.thread.us
  %i.bf = add i64 %.02776.us, %i.az               ; 4 uses
  %i.bg = icmp ult i64 %i.bf, 63
  br i1 %i.bg, label %bb.m, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = icmp samesign ugt i64 %i.bf, %i.bb
  br i1 %i.bh, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.m
  %i.bi = getelementptr [8 x i8], ptr %0, i64 %i.bb
  %i.bj = sub nuw nsw i64 %i.bf, %i.bb
  %i.bk = shl nuw nsw i64 %i.bj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bk, i1 false)
  br label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.m
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.bf to i16
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.thread.us
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02776.us
  %.not.i46.us = icmp eq i16 %i.ay, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.n, %bb.p
  %.02437.i.us = phi i64 [ %i.bv, %bb.p ], [ 0, %bb.n ] ; 3 uses
  %.02536.i.us = phi i1 [ %.0.in.i.us, %bb.p ], [ false, %bb.n ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02437.i.us ; 2 uses
  %i.bl = load i64, ptr %gep.i.us, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02437.i.us
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bl, i64 %i.bn) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1       ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bo, 0       ; 2 uses
  br i1 %.02536.i.us, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i47.us
  %i.br = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bq, i64 1) ; 2 uses
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  %i.bt = extractvalue { i64, i1 } %i.br, 0
  %i.bu = or i1 %i.bp, %i.bs
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i47.us
  %.0.in.i.us = phi i1 [ %i.bu, %bb.o ], [ %i.bp, %.lr.ph.i47.us ] ; 2 uses
  %.023.i.us = phi i64 [ %i.bt, %bb.o ], [ %i.bq, %.lr.ph.i47.us ]
  store i64 %.023.i.us, ptr %gep.i.us, align 8
  %i.bv = add nuw nsw i64 %.02437.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bv, %i.az
  br i1 %exitcond.not.i.us, label %._crit_edge.i48.us, label %.lr.ph.i47.us, !llvm.loop !185

._crit_edge.i48.us:                               ; preds = %bb.p
  br i1 %.0.in.i.us, label %bb.q, label %.critedge.us

bb.q:                                             ; preds = %._crit_edge.i48.us
  %i.bw = add i64 %.02776.us, %i.az
  br label %bb.r

bb.r:                                             ; preds = %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a, %bb.q
  %.01421.i.i.us = phi i64 [ %i.bw, %bb.q ], [ %9, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a ] ; 3 uses
  %i.bx = load i16, ptr %i.a, align 8             ; 2 uses
  %i.by = zext i16 %i.bx to i64                   ; 2 uses
  %i.bz = icmp ult i64 %.01421.i.i.us, %i.by
  br i1 %i.bz, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a, label %.critedge.i.i.us

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a: ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us ; 2 uses
  %5 = load i64, ptr %i.ca, align 8
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 1) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  store i64 %8, ptr %i.ca, align 8
  %9 = add nuw nsw i64 %.01421.i.i.us, 1
  br i1 %7, label %bb.r, label %.critedge.us, !llvm.loop !186

.critedge.i.i.us:                                 ; preds = %bb.r
  %10 = icmp ult i16 %i.bx, 62
  br i1 %10, label %bb.s, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

bb.s:                                             ; preds = %.critedge.i.i.us
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.by
  store i64 1, ptr %i.cb, align 8
  %11 = load i16, ptr %i.a, align 8
  %12 = add i16 %11, 1
  store i16 %12, ptr %i.a, align 8
  br label %.critedge.us

.critedge.us:                                     ; preds = %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a, %bb.s, %._crit_edge.i48.us, %bb.n, %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cc = add nuw i64 %.02776.us, 1               ; 2 uses
  %exitcond90.not = icmp eq i64 %i.cc, %2
  br i1 %exitcond90.not, label %.critedge34.loopexit, label %.lr.ph.split.us, !llvm.loop !187

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02776 = phi i64 [ %i.cf, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02776
  %i.ce = load i64, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.not29 = icmp eq i64 %i.ce, 0
  br i1 %.not29, label %.critedge, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cf = add nuw i64 %.02776, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !187

_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit: ; preds = %.lr.ph.split, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit45.us, %bb.l, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge32

.critedge34.loopexit:                             ; preds = %.critedge.us
  %.promoted.i.pre = load i16, ptr %i.a, align 8
  br label %.critedge34

.critedge34:                                      ; preds = %.critedge, %.critedge34.loopexit, %.critedge63.preheader, %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit
  %.promoted.i = phi i16 [ %i.b, %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit ], [ %.promoted.i.pre, %.critedge34.loopexit ], [ %.promoted.i96, %.critedge63.preheader ], [ %.promoted.i96, %.critedge ] ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.critedge34
  %i.cg = getelementptr i8, ptr %0, i64 -8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i49
  %i.ch = phi i16 [ %.promoted.i, %.lr.ph.i49 ], [ %i.cm, %bb.u ] ; 2 uses
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.u, label %.critedge32

bb.u:                                             ; preds = %bb.t
  %i.cm = add i16 %i.ch, -1                       ; 3 uses
  store i16 %i.cm, ptr %i.a, align 8
  %.not.i50 = icmp eq i16 %i.cm, 0
  br i1 %.not.i50, label %.critedge32, label %bb.t, !llvm.loop !188

.critedge32:                                      ; preds = %bb.u, %bb.t, %.critedge34, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit
  %.6 = phi i1 [ true, %.critedge34 ], [ false, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit ], [ false, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit ], [ true, %bb.t ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN10fast_float25from_chars_float_advancedIdDsEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i64 %4) local_unnamed_addr #16 comdat {
bb.a:
  %5 = alloca %"struct.fast_float::parsed_number_string_t.673", align 8 ; 14 uses
  %i.a = and i64 %3, 256
  %.not = icmp eq i64 %i.a, 0
  %.not26107 = icmp eq ptr %0, %1
  %or.cond169 = or i1 %.not, %.not26107
  br i1 %or.cond169, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0108 = phi ptr [ %i.h, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i16, ptr %.0108, align 2            ; 2 uses
  %i.c = icmp ult i16 %i.b, 256
  br i1 %i.c, label %_ZN10fast_float8is_spaceIDsEEbT_.exit, label %.critedge

_ZN10fast_float8is_spaceIDsEEbT_.exit:            ; preds = %.lr.ph
  %i.d = zext nneg i16 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN10fast_float9space_lutIvE5valueE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !range !30, !noundef !31
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN10fast_float8is_spaceIDsEEbT_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.0108, i64 2 ; 3 uses
  %.not26 = icmp eq ptr %i.h, %1
  br i1 %.not26, label %.critedge, label %.lr.ph, !llvm.loop !189

.critedge:                                        ; preds = %bb.b, %_ZN10fast_float8is_spaceIDsEEbT_.exit, %.lr.ph, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.0108, %.lr.ph ], [ %i.h, %bb.b ], [ %.0108, %_ZN10fast_float8is_spaceIDsEEbT_.exit ] ; 7 uses
  %i.i = icmp eq ptr %.1, %1
  br i1 %i.i, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.j = load i16, ptr %.1, align 2, !noalias !190 ; 3 uses
  %i.k = icmp eq i16 %i.j, 45                     ; 2 uses
  %i.l = zext i1 %i.k to i8
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %3, 160
  %or.cond = icmp eq i64 %i.m, 128
  %i.n = icmp eq i16 %i.j, 43
  %or.cond99 = and i1 %or.cond, %i.n
  br i1 %or.cond99, label %bb.e, label %.lr.ph116.preheader

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 4 uses
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %bb.ak, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = and i64 %3, 32
  %.not110.i = icmp eq i64 %i.q, 0
  %i.r = load i16, ptr %i.o, align 2, !noalias !190 ; 4 uses
  %i.s = add i16 %i.r, -48
  %i.t = icmp ult i16 %i.s, 10                    ; 2 uses
  br i1 %.not110.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %.lr.ph116.preheader, label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.u = trunc i64 %4 to i16
  %.not111.i = icmp eq i16 %i.r, %i.u
  %or.cond100 = select i1 %i.t, i1 true, i1 %.not111.i
  br i1 %or.cond100, label %.lr.ph116.preheader, label %bb.ak

.lr.ph116.preheader:                              ; preds = %bb.d, %bb.g, %bb.h
  %i.v = phi i16 [ %i.r, %bb.h ], [ %i.j, %bb.d ], [ %i.r, %bb.g ]
  %.079 = phi ptr [ %i.o, %bb.h ], [ %.1, %bb.d ], [ %i.o, %bb.g ] ; 7 uses
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.i
  %.180114 = phi ptr [ %i.ad, %bb.i ], [ %.079, %.lr.ph116.preheader ] ; 3 uses
  %.081113 = phi i64 [ %i.ac, %bb.i ], [ 0, %.lr.ph116.preheader ] ; 2 uses
  %i.w = load i16, ptr %.180114, align 2, !noalias !190 ; 2 uses
  %i.x = add i16 %i.w, -48
  %i.y = icmp ult i16 %i.x, 10                    ; 2 uses
  br i1 %i.y, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph116
  %i.z = mul i64 %.081113, 10
  %i.aa = zext nneg i16 %i.w to i64
  %i.ab = add i64 %i.z, -48
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.180114, i64 2 ; 3 uses
  %.not112.i = icmp eq ptr %i.ad, %1
  br i1 %.not112.i, label %.critedge.i, label %.lr.ph116, !llvm.loop !193

.critedge.i:                                      ; preds = %bb.i, %.lr.ph116
  %.081.lcssa.ph = phi i64 [ %i.ac, %bb.i ], [ %.081113, %.lr.ph116 ] ; 4 uses
  %.180.lcssa.ph = phi ptr [ %i.ad, %bb.i ], [ %.180114, %.lr.ph116 ] ; 8 uses
  %i.ae = ptrtoint ptr %.180.lcssa.ph to i64      ; 2 uses
  %i.af = ptrtoint ptr %.079 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 1                 ; 5 uses
  %i.ai = and i64 %3, 32
  %.not113.i = icmp eq i64 %i.ai, 0               ; 2 uses
  br i1 %.not113.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.aj = icmp eq ptr %.180.lcssa.ph, %.079
  br i1 %i.aj, label %bb.ak, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp eq i16 %i.v, 48
  %i.al = icmp sgt i64 %i.ah, 1
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %bb.ak, label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.i
  br i1 %i.y, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i16, ptr %.180.lcssa.ph, align 2, !noalias !190
  %i.an = trunc i64 %4 to i16
  %i.ao = icmp eq i16 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.180.lcssa.ph, i64 2 ; 4 uses
  %i.aq = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp sgt i64 %i.as, 14
  br i1 %i.at, label %.lr.ph126, label %_ZN10fast_float26loop_parse_if_eight_digitsIDsTnNSt9enable_ifIXntsr3std7is_sameIT_cEE5valueEiE4typeELi0EEEvRPKS2_S6_Rm.exit

.lr.ph126:                                        ; preds = %bb.n, %bb.o
  %.11125 = phi ptr [ %i.bs, %bb.o ], [ %i.ap, %bb.n ] ; 3 uses
  %.788124 = phi i64 [ %i.br, %bb.o ], [ %.081.lcssa.ph, %bb.n ] ; 2 uses
  %i.au = load <8 x i16>, ptr %.11125, align 1, !noalias !190 ; 2 uses
  %i.av = add <8 x i16> %i.au, splat (i16 32720)
  %i.aw = icmp sgt <8 x i16> %i.av, splat (i16 -32759)
  %i.ax = sext <8 x i1> %i.aw to <8 x i16>
  %i.ay = bitcast <8 x i16> %i.ax to <16 x i8>
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %_ZN10fast_float26loop_parse_if_eight_digitsIDsTnNSt9enable_ifIXntsr3std7is_sameIT_cEE5valueEiE4typeELi0EEEvRPKS2_S6_Rm.exit

bb.o:                                             ; preds = %.lr.ph126
  %i.bc = mul i64 %.788124, 100000000
end_hunk_0
