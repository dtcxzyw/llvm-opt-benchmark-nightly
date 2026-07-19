inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN14arrow_vendored17double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %.057.i.i = phi i64 [ %i.eb, %.lr.ph.i.i ], [ %i.eh, %bb.b ] ; 2 uses
  %i.ee = trunc i64 %.057.i.i to i32
  %i.ef = and i32 %i.ee, 268435455
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !3
  %i.eh = lshr i64 %.057.i.i, 28                  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit.i, label %bb.b, !llvm.loop !11

_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit.i: ; preds = %bb.b
  %indvars.i = trunc i64 %indvars.iv.next.i.i to i16
  store i16 %indvars.i, ptr %4, align 4, !tbaa !7
  call void @_ZN14arrow_vendored17double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit

_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit: ; preds = %.lr.ph.i, %_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit.i
  %i.ei = icmp samesign ugt i32 %.032, 37
  br i1 %i.ei, label %.lr.ph.i, label %._crit_edge.loopexit, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit
  %i.ej = trunc nuw nsw i64 %indvars.iv.next38 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %i.ej, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %i.ec, %._crit_edge.loopexit ] ; 4 uses
  %i.ek = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ek, label %.lr.ph.preheader.i, label %_ZN14arrow_vendored17double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17.thread

_ZN14arrow_vendored17double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17.thread: ; preds = %._crit_edge
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef %.0.lcssa)
  br label %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit25

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.el = add nuw nsw i32 %.0.lcssa, %.012.lcssa
  %i.em = zext nneg i32 %.012.lcssa to i64
  %i.en = zext nneg i32 %i.el to i64
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13, %.lr.ph.preheader.i
  %indvars.iv.i14 = phi i64 [ %i.em, %.lr.ph.preheader.i ], [ %indvars.iv.next.i16, %.lr.ph.i13 ] ; 2 uses
  %.011.i15 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.et, %.lr.ph.i13 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i14
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !19
  %i.eq = sext i8 %i.ep to i64
  %i.er = mul i64 %.011.i15, 10
  %i.es = add i64 %i.er, -48
  %i.et = add i64 %i.es, %i.eq                    ; 3 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.eu = icmp samesign ult i64 %indvars.iv.next.i16, %i.en
  br i1 %i.eu, label %.lr.ph.i13, label %_ZN14arrow_vendored17double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17, !llvm.loop !21

_ZN14arrow_vendored17double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17: ; preds = %.lr.ph.i13
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef %.0.lcssa)
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit25, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %_ZN14arrow_vendored17double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i18
  %indvars.iv.i.i19 = phi i64 [ 0, %.lr.ph.i.i18 ], [ %indvars.iv.next.i.i21, %bb.c ] ; 2 uses
  %.057.i.i20 = phi i64 [ %i.et, %.lr.ph.i.i18 ], [ %i.fa, %bb.c ] ; 2 uses
  %i.ex = trunc i64 %.057.i.i20 to i32
  %i.ey = and i32 %i.ex, 268435455
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i.i19
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !3
  %i.fa = lshr i64 %.057.i.i20, 28                ; 2 uses
  %indvars.iv.next.i.i21 = add nuw nsw i64 %indvars.iv.i.i19, 1 ; 2 uses
  %.not.i.i22 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i22, label %_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit.i23, label %bb.c, !llvm.loop !11

_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit.i23: ; preds = %bb.c
  %indvars.i24 = trunc i64 %indvars.iv.next.i.i21 to i16
  store i16 %indvars.i24, ptr %3, align 4, !tbaa !7
  call void @_ZN14arrow_vendored17double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit25

_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit25: ; preds = %_ZN14arrow_vendored17double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17.thread, %_ZN14arrow_vendored17double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17, %_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit.i23
  %.pr.i = load i16, ptr %0, align 4, !tbaa !7    ; 3 uses
  %i.fb = icmp sgt i16 %.pr.i, 0
  br i1 %i.fb, label %.lr.ph.i26, label %.critedge.i

.lr.ph.i26:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit25
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i26
  %i.fd = phi i16 [ %.pr.i, %.lr.ph.i26 ], [ %i.fk, %bb.e ] ; 3 uses
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = add nuw nsw i64 %i.fe, 4294967295
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.e, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.e:                                             ; preds = %bb.d
  %i.fk = add nsw i16 %i.fd, -1                   ; 2 uses
  store i16 %i.fk, ptr %0, align 4, !tbaa !7
  %i.fl = icmp sgt i16 %i.fd, 1
  br i1 %i.fl, label %bb.d, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit25
  %i.fm = icmp eq i16 %.pr.i, 0
  br i1 %i.fm, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.e, %.critedge.i
  store i16 0, ptr %i.a, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.d, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = load i16, ptr %0, align 4                ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.c
  br i1 %or.cond, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit, label %.preheader40

.preheader40:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 26
  br i1 %i.d, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit, %.preheader40
  %.promoted52 = phi i16 [ %i.b, %.preheader40 ], [ %i.be, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %.preheader40 ], [ %i.bf, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 3 uses
  %i.f = icmp sgt i32 %.0.lcssa, 12
  br i1 %i.f, label %.lr.ph50, label %._crit_edge

.lr.ph50:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit
  %.048 = phi i32 [ %1, %.lr.ph ], [ %i.bf, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
  %i.h = phi i16 [ %i.b, %.lr.ph ], [ %i.be, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 8 uses
  %i.i = icmp sgt i16 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i16 %i.h to i64  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.j = icmp eq i16 %i.h, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 32766
  br label %bb.c

.preheader.i.unr-lcssa:                           ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ]
  %.023.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ay, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod129 = trunc i16 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = mul nuw i64 %i.m, 4195354525
  %i.o = and i64 %.023.i.epil.init, 268435455
  %i.p = add nuw i64 %i.n, %i.o                   ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 268435455
  store i32 %i.r, ptr %i.k, align 4, !tbaa !3
  %i.s = lshr i64 %.023.i.epil.init, 28
  %i.t = lshr i64 %i.p, 28
  %i.u = mul i64 %i.m, 27755575600
  %i.v = add i64 %i.u, %i.s
  %i.w = add i64 %i.v, %i.t
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa123 = phi i64 [ %i.ay, %.preheader.i.unr-lcssa ], [ %i.w, %.epil.preheader ] ; 2 uses
  %.not24.i = icmp eq i64 %.lcssa123, 0
  br i1 %.not24.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.preheader.i
  %i.x = tail call i16 @llvm.umax.i16(i16 %i.h, i16 128)
  %exitcond31.i96 = icmp ugt i16 %i.h, 127
  br i1 %exitcond31.i96, label %.lr.ph26.i._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
  %.023.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ay, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = mul nuw i64 %i.aa, 4195354525
  %i.ac = and i64 %.023.i, 268435455
  %i.ad = add nuw i64 %i.ab, %i.ac                ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 268435455
  store i32 %i.af, ptr %i.y, align 4, !tbaa !3
  %i.ag = lshr i64 %.023.i, 28
  %i.ah = lshr i64 %i.ad, 28
  %i.ai = mul i64 %i.aa, 27755575600
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = mul nuw i64 %i.ao, 4195354525
  %i.aq = and i64 %i.ak, 268435455
  %i.ar = add nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 268435455
  store i32 %i.at, ptr %i.am, align 4, !tbaa !3
  %i.au = lshr i64 %i.ak, 28
  %i.av = lshr i64 %i.ar, 28
  %i.aw = mul i64 %i.ao, 27755575600
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %i.ax, %i.av                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.c, !llvm.loop !23

bb.d:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %lftr.wideiv.i = trunc i64 %indvars.iv.next29.i to i16
  %exitcond31.i = icmp eq i16 %i.x, %lftr.wideiv.i
  br i1 %exitcond31.i, label %.lr.ph26.i._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, !llvm.loop !24

.lr.ph26.i._crit_edge.loopexit:                   ; preds = %bb.d
  store i16 %i.bc, ptr %0, align 4, !tbaa !7
  br label %.lr.ph26.i._crit_edge

.lr.ph26.i._crit_edge:                            ; preds = %.lr.ph26.i, %.lr.ph26.i._crit_edge.loopexit
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %.lr.ph26.i, %bb.d
  %.125.i98 = phi i64 [ %i.bd, %bb.d ], [ %.lcssa123, %.lr.ph26.i ] ; 2 uses
  %indvars.iv28.i97 = phi i64 [ %indvars.iv.next29.i, %bb.d ], [ %wide.trip.count.i, %.lr.ph26.i ] ; 2 uses
  %i.az = trunc i64 %.125.i98 to i32
  %i.ba = and i32 %i.az, 268435455
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv28.i97
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i97, 1 ; 3 uses
  %i.bc = trunc nsw i64 %indvars.iv.next29.i to i16 ; 3 uses
  %i.bd = lshr i64 %.125.i98, 28                  ; 2 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit, label %bb.d, !llvm.loop !24

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  store i16 %i.bc, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit, %bb.b, %.preheader.i
  %i.be = phi i16 [ %i.h, %.preheader.i ], [ %i.h, %bb.b ], [ %i.bc, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit ] ; 2 uses
  %i.bf = add nsw i32 %.048, -27                  ; 2 uses
  %i.bg = icmp sgt i32 %.048, 53
  br i1 %i.bg, label %bb.b, label %.preheader, !llvm.loop !25

bb.e:                                             ; preds = %.lr.ph50, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %i.bh = phi i16 [ %.promoted52, %.lr.ph50 ], [ %i.cp, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 8 uses
  %.149 = phi i32 [ %.0.lcssa, %.lr.ph50 ], [ %i.cq, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.bi = icmp sgt i16 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i11, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit

.lr.ph.i11:                                       ; preds = %bb.e
  %wide.trip.count.i12 = zext nneg i16 %i.bh to i64 ; 3 uses
  %xtraiter131 = and i64 %wide.trip.count.i12, 1
  %i.bj = icmp eq i16 %i.bh, 1
  br i1 %i.bj, label %.epil.preheader130, label %.lr.ph.i11.new

.lr.ph.i11.new:                                   ; preds = %.lr.ph.i11
  %unroll_iter135 = and i64 %wide.trip.count.i12, 32766
  br label %bb.f

.preheader.i16.unr-lcssa:                         ; preds = %bb.f
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.preheader.i16, label %.epil.preheader130

.epil.preheader130:                               ; preds = %.preheader.i16.unr-lcssa, %.lr.ph.i11
  %indvars.iv.i13.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %indvars.iv.next.i14.1, %.preheader.i16.unr-lcssa ]
  %.017.i.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %i.cj, %.preheader.i16.unr-lcssa ]
  %lcmp.mod134 = trunc i16 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13.epil.init ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw nsw i64 %i.bm, 1220703125
  %i.bo = add nuw nsw i64 %i.bn, %.017.i.epil.init ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 268435455
  store i32 %i.bq, ptr %i.bk, align 4, !tbaa !3
  %i.br = lshr i64 %i.bo, 28
  br label %.preheader.i16

.preheader.i16:                                   ; preds = %.preheader.i16.unr-lcssa, %.epil.preheader130
  %.lcssa117 = phi i64 [ %i.cj, %.preheader.i16.unr-lcssa ], [ %i.br, %.epil.preheader130 ] ; 2 uses
  %.not18.i = icmp eq i64 %.lcssa117, 0
  br i1 %.not18.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.preheader.i16
  %i.bs = tail call i16 @llvm.umax.i16(i16 %i.bh, i16 128)
  %exitcond25.i100 = icmp ugt i16 %i.bh, 127
  br i1 %exitcond25.i100, label %.lr.ph20.i._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i18

bb.f:                                             ; preds = %bb.f, %.lr.ph.i11.new
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i11.new ], [ %indvars.iv.next.i14.1, %bb.f ] ; 3 uses
  %.017.i = phi i64 [ 0, %.lr.ph.i11.new ], [ %i.cj, %bb.f ]
  %niter136 = phi i64 [ 0, %.lr.ph.i11.new ], [ %niter136.next.1, %bb.f ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw nsw i64 %i.bv, 1220703125
  %i.bx = add nuw nsw i64 %i.bw, %.017.i          ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = and i32 %i.by, 268435455
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !3
  %i.ca = lshr i64 %i.bx, 28
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul nuw nsw i64 %i.ce, 1220703125
  %i.cg = add nuw nsw i64 %i.cf, %i.ca            ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 268435455
  store i32 %i.ci, ptr %i.cc, align 4, !tbaa !3
  %i.cj = lshr i64 %i.cg, 28                      ; 3 uses
  %indvars.iv.next.i14.1 = add nuw nsw i64 %indvars.iv.i13, 2 ; 2 uses
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %.preheader.i16.unr-lcssa, label %bb.f, !llvm.loop !26

bb.g:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i18
  %lftr.wideiv.i17 = trunc i64 %indvars.iv.next23.i to i16
  %exitcond25.i = icmp eq i16 %i.bs, %lftr.wideiv.i17
  br i1 %exitcond25.i, label %.lr.ph20.i._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i18, !llvm.loop !27

.lr.ph20.i._crit_edge.loopexit:                   ; preds = %bb.g
  store i16 %i.cn, ptr %0, align 4, !tbaa !7
  br label %.lr.ph20.i._crit_edge

.lr.ph20.i._crit_edge:                            ; preds = %.lr.ph20.i, %.lr.ph20.i._crit_edge.loopexit
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i18: ; preds = %.lr.ph20.i, %bb.g
  %.119.i102 = phi i64 [ %i.co, %bb.g ], [ %.lcssa117, %.lr.ph20.i ] ; 2 uses
  %indvars.iv22.i101 = phi i64 [ %indvars.iv.next23.i, %bb.g ], [ %wide.trip.count.i12, %.lr.ph20.i ] ; 2 uses
  %i.ck = trunc i64 %.119.i102 to i32
  %i.cl = and i32 %i.ck, 268435455
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv22.i101
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i101, 1 ; 3 uses
  %i.cn = trunc nsw i64 %indvars.iv.next23.i to i16 ; 3 uses
  %i.co = lshr i64 %.119.i102, 28                 ; 2 uses
  %.not.i19 = icmp eq i64 %i.co, 0
  br i1 %.not.i19, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit, label %bb.g, !llvm.loop !27

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i18
  store i16 %i.cn, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit, %bb.e, %.preheader.i16
  %i.cp = phi i16 [ %i.bh, %.preheader.i16 ], [ %i.bh, %bb.e ], [ %i.cn, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit ] ; 2 uses
  %i.cq = add nsw i32 %.149, -13                  ; 2 uses
  %i.cr = icmp sgt i32 %.149, 25
  br i1 %i.cr, label %bb.e, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit, %.preheader
  %.pr = phi i16 [ %.promoted52, %.preheader ], [ %i.cp, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 9 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.cq, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.cs = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.cs, label %bb.h, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36

bb.h:                                             ; preds = %._crit_edge
  %i.ct = zext nneg i32 %.1.lcssa to i64
  %i.cu = getelementptr [4 x i8], ptr @_ZZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEiE12kFive1_to_12, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  switch i32 %i.cw, label %bb.i [
    i32 1, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36
    i32 0, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread
  ]

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread: ; preds = %bb.h
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.cx, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit

bb.i:                                             ; preds = %bb.h
  %i.cy = icmp sgt i16 %.pr, 0
  br i1 %i.cy, label %.lr.ph.i20, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36

.lr.ph.i20:                                       ; preds = %bb.i
  %wide.trip.count.i21 = zext nneg i16 %.pr to i64 ; 3 uses
  %i.cz = zext i32 %i.cw to i64                   ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %xtraiter138 = and i64 %wide.trip.count.i21, 1
  %i.db = icmp eq i16 %.pr, 1
  br i1 %i.db, label %.epil.preheader137, label %.lr.ph.i20.new

.lr.ph.i20.new:                                   ; preds = %.lr.ph.i20
  %unroll_iter142 = and i64 %wide.trip.count.i21, 32766
  br label %bb.j

.preheader.i26.unr-lcssa:                         ; preds = %bb.j
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.preheader.i26, label %.epil.preheader137

.epil.preheader137:                               ; preds = %.preheader.i26.unr-lcssa, %.lr.ph.i20
  %indvars.iv.i22.epil.init = phi i64 [ 0, %.lr.ph.i20 ], [ %indvars.iv.next.i24.1, %.preheader.i26.unr-lcssa ]
  %.017.i23.epil.init = phi i64 [ 0, %.lr.ph.i20 ], [ %i.eb, %.preheader.i26.unr-lcssa ]
  %lcmp.mod141 = trunc i16 %.pr to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i22.epil.init ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = zext i32 %i.dd to i64
  %i.df = mul nuw i64 %i.de, %i.cz
  %i.dg = add i64 %i.df, %.017.i23.epil.init      ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i32 %i.dh, 268435455
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !3
  %i.dj = lshr i64 %i.dg, 28
  br label %.preheader.i26

.preheader.i26:                                   ; preds = %.preheader.i26.unr-lcssa, %.epil.preheader137
  %.lcssa115 = phi i64 [ %i.eb, %.preheader.i26.unr-lcssa ], [ %i.dj, %.epil.preheader137 ] ; 2 uses
  %.not18.i27 = icmp eq i64 %.lcssa115, 0
  br i1 %.not18.i27, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38, label %.lr.ph20.i28

.lr.ph20.i28:                                     ; preds = %.preheader.i26
  %i.dk = tail call i16 @llvm.umax.i16(i16 %.pr, i16 128)
  %exitcond25.i32104 = icmp ugt i16 %.pr, 127
  br i1 %exitcond25.i32104, label %._crit_edge107, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i33

bb.j:                                             ; preds = %bb.j, %.lr.ph.i20.new
  %indvars.iv.i22 = phi i64 [ 0, %.lr.ph.i20.new ], [ %indvars.iv.next.i24.1, %bb.j ] ; 3 uses
  %.017.i23 = phi i64 [ 0, %.lr.ph.i20.new ], [ %i.eb, %bb.j ]
  %niter143 = phi i64 [ 0, %.lr.ph.i20.new ], [ %niter143.next.1, %bb.j ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i22 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.cz
  %i.dp = add i64 %i.do, %.017.i23                ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 268435455
  store i32 %i.dr, ptr %i.dl, align 4, !tbaa !3
  %i.ds = lshr i64 %i.dp, 28
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = zext i32 %i.dv to i64
  %i.dx = mul nuw i64 %i.dw, %i.cz
  %i.dy = add i64 %i.dx, %i.ds                    ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 268435455
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !3
  %i.eb = lshr i64 %i.dy, 28                      ; 3 uses
  %indvars.iv.next.i24.1 = add nuw nsw i64 %indvars.iv.i22, 2 ; 2 uses
  %niter143.next.1 = add i64 %niter143, 2         ; 2 uses
  %niter143.ncmp.1 = icmp eq i64 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %.preheader.i26.unr-lcssa, label %bb.j, !llvm.loop !26

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i33
  %lftr.wideiv.i31 = trunc i64 %indvars.iv.next23.i34 to i16
  %exitcond25.i32 = icmp eq i16 %i.dk, %lftr.wideiv.i31
  br i1 %exitcond25.i32, label %._crit_edge107.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i33, !llvm.loop !27

._crit_edge107.loopexit:                          ; preds = %bb.k
  store i16 %i.ef, ptr %0, align 4, !tbaa !7
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %._crit_edge107.loopexit, %.lr.ph20.i28
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i33: ; preds = %.lr.ph20.i28, %bb.k
  %.119.i30106 = phi i64 [ %i.eg, %bb.k ], [ %.lcssa115, %.lr.ph20.i28 ] ; 2 uses
  %indvars.iv22.i29105 = phi i64 [ %indvars.iv.next23.i34, %bb.k ], [ %wide.trip.count.i21, %.lr.ph20.i28 ] ; 2 uses
  %i.ec = trunc i64 %.119.i30106 to i32
  %i.ed = and i32 %i.ec, 268435455
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv22.i29105
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  %indvars.iv.next23.i34 = add nuw nsw i64 %indvars.iv22.i29105, 1 ; 3 uses
  %i.ef = trunc nsw i64 %indvars.iv.next23.i34 to i16 ; 3 uses
  %i.eg = lshr i64 %.119.i30106, 28               ; 2 uses
  %.not.i35 = icmp eq i64 %i.eg, 0
  br i1 %.not.i35, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38.loopexit, label %bb.k, !llvm.loop !27

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36: ; preds = %bb.h, %._crit_edge, %bb.i
  %i.eh = icmp eq i16 %.pr, 0
  br i1 %i.eh, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38.loopexit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i33
  store i16 %i.ef, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38.loopexit, %.preheader.i26, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36
  %i.ei = phi i16 [ %.pr, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36 ], [ %.pr, %.preheader.i26 ], [ %i.ef, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38.loopexit ] ; 5 uses
  %i.ej = sdiv i32 %1, 28
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !10
  %i.em = trunc i32 %i.ej to i16
  %i.en = add i16 %i.el, %i.em
  store i16 %i.en, ptr %i.ek, align 2, !tbaa !10
  %i.eo = srem i32 %1, 28                         ; 3 uses
  %i.ep = icmp sgt i16 %i.ei, 127
  br i1 %i.ep, label %bb.l, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i37

bb.l:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i37: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread38
  %i.eq = icmp sgt i16 %i.ei, 0
  br i1 %i.eq, label %.lr.ph.i.i, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i37
  %wide.trip.count.i.i = zext nneg i16 %i.ei to i64 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.es = sub nsw i32 28, %i.eo                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.ei, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 32760    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.ew, %vector.body ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %index ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.et, align 4, !tbaa !3 ; 2 uses
  %wide.load110 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !3 ; 2 uses
  %i.ev = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.ew = lshr <4 x i32> %wide.load110, %broadcast.splat ; 3 uses
  %i.ex = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ev, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ey = shufflevector <4 x i32> %i.ev, <4 x i32> %i.ew, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ez = shl <4 x i32> %wide.load, %broadcast.splat109
  %i.fa = shl <4 x i32> %wide.load110, %broadcast.splat109
  %i.fb = add <4 x i32> %i.ez, %i.ex
  %i.fc = add <4 x i32> %i.fa, %i.ey
  %i.fd = and <4 x i32> %i.fb, splat (i32 268435455)
  %i.fe = and <4 x i32> %i.fc, splat (i32 268435455)
  store <4 x i32> %i.fd, ptr %i.et, align 4, !tbaa !3
  store <4 x i32> %i.fe, ptr %i.eu, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ew, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.fi, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit, label %bb.m

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.fi, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv.i.i ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3  ; 2 uses
  %i.fi = lshr i32 %i.fh, %i.es                   ; 2 uses
  %i.fj = shl i32 %i.fh, %i.eo
  %i.fk = add i32 %i.fj, %.014.i.i
  %i.fl = and i32 %i.fk, 268435455
  store i32 %i.fl, ptr %i.fg, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !30

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.fm, align 4, !tbaa !3
  %i.fn = add nuw nsw i16 %i.ei, 1
  store i16 %i.fn, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit

_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit: ; preds = %bb.m, %._crit_edge.i.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i37, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit36.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 6 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.c, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %2, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.057.i = phi i64 [ %1, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.c = trunc i64 %.057.i to i32
  %i.d = and i32 %i.c, 268435455
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.d, ptr %i.e, align 4, !tbaa !3
  %i.f = lshr i64 %.057.i, 28                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit, label %bb.b, !llvm.loop !11

_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit: ; preds = %bb.b
  %indvars = trunc i64 %indvars.iv.next.i to i16
  store i16 %indvars, ptr %2, align 4, !tbaa !7
  call void @_ZN14arrow_vendored17double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum5ClampEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.pr = load i16, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.a = icmp sgt i16 %.pr, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.c = phi i16 [ %.pr, %.lr.ph ], [ %i.j, %bb.c ] ; 3 uses
  %i.d = zext nneg i16 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 4294967295
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i16 %i.c, -1                     ; 2 uses
  store i16 %i.j, ptr %0, align 4, !tbaa !7
  %i.k = icmp sgt i16 %i.c, 1
  br i1 %i.k, label %bb.b, label %.critedge.thread3, !llvm.loop !22

.critedge:                                        ; preds = %bb.a
  %i.l = icmp eq i16 %.pr, 0
  br i1 %i.l, label %.critedge.thread3, label %.critedge.thread

.critedge.thread3:                                ; preds = %bb.c, %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.m, align 2, !tbaa !10
  br label %.critedge.thread
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi:bb.a
  %i.q = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.o, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.r = shufflevector <4 x i32> %i.o, <4 x i32> %i.p, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.s = shl <4 x i32> %wide.load, %broadcast.splat5
  %i.t = shl <4 x i32> %wide.load6, %broadcast.splat5
  %i.u = add <4 x i32> %i.s, %i.q
  %i.v = add <4 x i32> %i.t, %i.r
  %i.w = and <4 x i32> %i.u, splat (i32 268435455)
  %i.x = and <4 x i32> %i.v, splat (i32 268435455)
  store <4 x i32> %i.w, ptr %i.m, align 4, !tbaa !3
  store <4 x i32> %i.x, ptr %i.n, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.p, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.014.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.ab, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN14arrow_vendored17double_conversion6Bignum15BigitsShiftLeftEi.exit, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i = phi i32 [ %i.ab, %scalar.ph ], [ %.014.i.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = lshr i32 %i.aa, %i.l                    ; 2 uses
  %i.ac = shl i32 %i.aa, %i.h
  %i.ad = add i32 %i.ac, %.014.i
  %i.ae = and i32 %i.ad, 268435455
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !43

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %wide.trip.count.i
  store i32 %.lcssa, ptr %i.af, align 4, !tbaa !3
  %i.ag = add nuw nsw i16 %i.a, 1
  store i16 %i.ag, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum15BigitsShiftLeftEi.exit

_ZN14arrow_vendored17double_conversion6Bignum15BigitsShiftLeftEi.exit: ; preds = %bb.d, %._crit_edge.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum15BigitsShiftLeftEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7      ; 5 uses
  %i.b = icmp sgt i16 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i16 %i.a to i64    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = sub nsw i32 28, %1                       ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 32760        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert19 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat20 = shufflevector <4 x i32> %broadcast.splatinsert19, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.h, %vector.body ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !3 ; 2 uses
  %wide.load21 = load <4 x i32>, ptr %i.f, align 4, !tbaa !3 ; 2 uses
  %i.g = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.h = lshr <4 x i32> %wide.load21, %broadcast.splat ; 3 uses
  %i.i = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.g, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.j = shufflevector <4 x i32> %i.g, <4 x i32> %i.h, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.k = shl <4 x i32> %wide.load, %broadcast.splat20
  %i.l = shl <4 x i32> %wide.load21, %broadcast.splat20
  %i.m = add <4 x i32> %i.k, %i.i
  %i.n = add <4 x i32> %i.l, %i.j
  %i.o = and <4 x i32> %i.m, splat (i32 268435455)
  %i.p = and <4 x i32> %i.n, splat (i32 268435455)
  store <4 x i32> %i.o, ptr %i.e, align 4, !tbaa !3
  store <4 x i32> %i.p, ptr %i.f, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.h, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.014.ph = phi i32 [ 0, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.t, %scalar.ph ] ; 2 uses
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.014 = phi i32 [ %i.t, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = lshr i32 %i.s, %i.d                      ; 2 uses
  %i.u = shl i32 %i.s, %1
  %i.v = add i32 %i.u, %.014
  %i.w = and i32 %i.v, 268435455
  store i32 %i.w, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !45

bb.b:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = zext nneg i16 %i.a to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  store i32 %.lcssa, ptr %i.z, align 4, !tbaa !3
  %i.aa = add nuw i16 %i.a, 1
  store i16 %i.aa, ptr %0, align 4, !tbaa !7
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 1, label %.loopexit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !10
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !7      ; 7 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %wide.trip.count = zext nneg i16 %i.b to i64    ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i16 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.d

.preheader.unr-lcssa:                             ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ]
  %.017.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %.preheader.unr-lcssa ]
  %lcmp.mod33 = trunc i16 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw i64 %i.i, %i.d
  %i.k = add i64 %i.j, %.017.epil.init            ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 268435455
  store i32 %i.m, ptr %i.g, align 4, !tbaa !3
  %i.n = lshr i64 %i.k, 28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ah, %.preheader.unr-lcssa ], [ %i.n, %.epil.preheader ] ; 2 uses
  %.not18 = icmp eq i64 %.lcssa, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = tail call i16 @llvm.umax.i16(i16 %i.b, i16 128)
  %exitcond2529 = icmp ugt i16 %i.b, 127
  br i1 %exitcond2529, label %._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph: ; preds = %.lr.ph20
  %i.q = zext nneg i16 %i.b to i64
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.017 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64
  %i.u = mul nuw i64 %i.t, %i.d
  %i.v = add i64 %i.u, %.017                      ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 268435455
  store i32 %i.x, ptr %i.r, align 4, !tbaa !3
  %i.y = lshr i64 %i.v, 28
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.d
  %i.ae = add i64 %i.ad, %i.y                     ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 268435455
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !3
  %i.ah = lshr i64 %i.ae, 28                      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.d, !llvm.loop !26

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %lftr.wideiv = trunc i64 %indvars.iv.next23 to i16
  %exitcond25 = icmp eq i16 %i.p, %lftr.wideiv
  br i1 %exitcond25, label %._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %bb.e
  store i16 %i.al, ptr %0, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph20
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph, %bb.e
  %.11931 = phi i64 [ %.lcssa, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph ], [ %i.am, %bb.e ] ; 2 uses
  %indvars.iv2230 = phi i64 [ %i.q, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph ], [ %indvars.iv.next23, %bb.e ] ; 2 uses
  %i.ai = trunc i64 %.11931 to i32
  %i.aj = and i32 %i.ai, 268435455
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv2230
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv2230, 1 ; 3 uses
  %i.al = trunc nsw i64 %indvars.iv.next23 to i16 ; 2 uses
  %i.am = lshr i64 %.11931, 28                    ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %.loopexit.loopexit, label %bb.e, !llvm.loop !27

.loopexit.loopexit:                               ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  store i16 %i.al, ptr %0, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 1, label %.loopexit
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !10
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !7      ; 8 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = and i64 %1, 4294967295                   ; 3 uses
  %i.e = icmp sgt i16 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %wide.trip.count = zext nneg i16 %i.b to i64    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = lshr i64 %1, 28
  %i.h = and i64 %i.g, 68719476720                ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i16 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.e

.preheader.unr-lcssa:                             ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ]
  %.023.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.az, %.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i16 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil.init ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = mul nuw i64 %i.d, %i.l
  %i.n = and i64 %.023.epil.init, 268435455
  %i.o = add nuw i64 %i.m, %i.n                   ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 268435455
  store i32 %i.q, ptr %i.j, align 4, !tbaa !3
  %i.r = lshr i64 %.023.epil.init, 28
  %i.s = lshr i64 %i.o, 28
  %i.t = mul i64 %i.h, %i.l
  %i.u = add i64 %i.t, %i.r
  %i.v = add i64 %i.u, %i.s
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.az, %.preheader.unr-lcssa ], [ %i.v, %.epil.preheader ] ; 2 uses
  %.not24 = icmp eq i64 %.lcssa, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = tail call i16 @llvm.umax.i16(i16 %i.b, i16 128)
  %exitcond3135 = icmp ugt i16 %i.b, 127
  br i1 %exitcond3135, label %._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph: ; preds = %.lr.ph26
  %i.y = zext nneg i16 %i.b to i64
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.023 = phi i64 [ 0, %.lr.ph.new ], [ %i.az, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = mul nuw i64 %i.d, %i.ab
  %i.ad = and i64 %.023, 268435455
  %i.ae = add nuw i64 %i.ac, %i.ad                ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 268435455
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !3
  %i.ah = lshr i64 %.023, 28
  %i.ai = lshr i64 %i.ae, 28
  %i.aj = mul i64 %i.h, %i.ab
  %i.ak = add i64 %i.aj, %i.ah
  %i.al = add i64 %i.ak, %i.ai                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = mul nuw i64 %i.d, %i.ap
  %i.ar = and i64 %i.al, 268435455
  %i.as = add nuw i64 %i.aq, %i.ar                ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 268435455
  store i32 %i.au, ptr %i.an, align 4, !tbaa !3
  %i.av = lshr i64 %i.al, 28
  %i.aw = lshr i64 %i.as, 28
  %i.ax = mul i64 %i.h, %i.ap
  %i.ay = add i64 %i.ax, %i.av
  %i.az = add i64 %i.ay, %i.aw                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.e, !llvm.loop !23

bb.f:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %lftr.wideiv = trunc i64 %indvars.iv.next29 to i16
  %exitcond31 = icmp eq i16 %i.x, %lftr.wideiv
  br i1 %exitcond31, label %._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.f
  store i16 %i.bd, ptr %0, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph26
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph, %bb.f
  %.12537 = phi i64 [ %.lcssa, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph ], [ %i.be, %bb.f ] ; 2 uses
  %indvars.iv2836 = phi i64 [ %i.y, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.lr.ph ], [ %indvars.iv.next29, %bb.f ] ; 2 uses
  %i.ba = trunc i64 %.12537 to i32
  %i.bb = and i32 %i.ba, 268435455
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv2836
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv2836, 1 ; 3 uses
  %i.bd = trunc nsw i64 %indvars.iv.next29 to i16 ; 2 uses
  %i.be = lshr i64 %.12537, 28                    ; 2 uses
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %.loopexit.loopexit, label %bb.f, !llvm.loop !24

.loopexit.loopexit:                               ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  store i16 %i.bd, ptr %0, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %.preheader, %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum6SquareEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7      ; 5 uses
  %i.b = sext i16 %i.a to i32                     ; 6 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp sgt i16 %i.a, 64
  br i1 %i.d, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.e = icmp sgt i16 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = zext nneg i32 %i.b to i64                ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 17 uses
  %min.iters.check = icmp ult i16 %i.a, 8
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 32760                    ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !3
  %wide.load123 = load <4 x i32>, ptr %i.h, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  store <4 x i32> %wide.load, ptr %invariant.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load123, ptr %i.i, align 4, !tbaa !3
  %i.j = icmp eq i64 %n.vec, 8
  br i1 %i.j, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.k, align 4, !tbaa !3
  %wide.load123.1 = load <4 x i32>, ptr %i.l, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  store <4 x i32> %wide.load.1, ptr %i.m, align 4, !tbaa !3
  store <4 x i32> %wide.load123.1, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp eq i64 %n.vec, 16
  br i1 %i.o, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.p, align 4, !tbaa !3
  %wide.load123.2 = load <4 x i32>, ptr %i.q, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  store <4 x i32> %wide.load.2, ptr %i.r, align 4, !tbaa !3
  store <4 x i32> %wide.load123.2, ptr %i.s, align 4, !tbaa !3
  %i.t = icmp eq i64 %n.vec, 24
  br i1 %i.t, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 116
  %wide.load.3 = load <4 x i32>, ptr %i.u, align 4, !tbaa !3
  %wide.load123.3 = load <4 x i32>, ptr %i.v, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  store <4 x i32> %wide.load.3, ptr %i.w, align 4, !tbaa !3
  store <4 x i32> %wide.load123.3, ptr %i.x, align 4, !tbaa !3
  %i.y = icmp eq i64 %n.vec, 32
  br i1 %i.y, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 148
  %wide.load.4 = load <4 x i32>, ptr %i.z, align 4, !tbaa !3
  %wide.load123.4 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  store <4 x i32> %wide.load.4, ptr %i.ab, align 4, !tbaa !3
  store <4 x i32> %wide.load123.4, ptr %i.ac, align 4, !tbaa !3
  %i.ad = icmp eq i64 %n.vec, 40
  br i1 %i.ad, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 180
  %wide.load.5 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !3
  %wide.load123.5 = load <4 x i32>, ptr %i.af, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 176
  store <4 x i32> %wide.load.5, ptr %i.ag, align 4, !tbaa !3
  store <4 x i32> %wide.load123.5, ptr %i.ah, align 4, !tbaa !3
  %i.ai = icmp eq i64 %n.vec, 48
  br i1 %i.ai, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 212
  %wide.load.6 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !3
  %wide.load123.6 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 208
  store <4 x i32> %wide.load.6, ptr %i.al, align 4, !tbaa !3
  store <4 x i32> %wide.load123.6, ptr %i.am, align 4, !tbaa !3
  %i.an = icmp eq i64 %n.vec, 56
  br i1 %i.an, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 244
  %wide.load.7 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %wide.load123.7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 224
  %i.ar = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  store <4 x i32> %wide.load.7, ptr %i.aq, align 4, !tbaa !3
  store <4 x i32> %wide.load123.7, ptr %i.ar, align 4, !tbaa !3
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.preheader51.lr.ph, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader171

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader171: ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

.preheader51.lr.ph:                               ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.at = zext nneg i32 %i.b to i64               ; 3 uses
  %invariant.gep113 = getelementptr [4 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %invariant.gep115 = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at ; 2 uses
  br label %.preheader51

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader171, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader171 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.av, ptr %gep, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %.preheader51.lr.ph, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !46

.preheader51:                                     ; preds = %.preheader51.lr.ph, %.loopexit
  %indvars.iv84 = phi i64 [ 1, %.preheader51.lr.ph ], [ %indvars.iv.next85, %.loopexit ] ; 5 uses
  %indvars.iv71 = phi i64 [ 0, %.preheader51.lr.ph ], [ %indvars.iv.next72, %.loopexit ] ; 5 uses
  %.058 = phi i64 [ 0, %.preheader51.lr.ph ], [ %i.cc, %.loopexit ] ; 2 uses
  %min.iters.check125 = icmp samesign ult i64 %indvars.iv84, 4
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.preheader51
  %n.vec128 = and i64 %indvars.iv84, 9223372036854775804 ; 4 uses
  %i.aw = sub nsw i64 %indvars.iv71, %n.vec128
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.058, i64 0
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next137, %vector.body129 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph126 ], [ %i.bk, %vector.body129 ]
  %vec.phi131 = phi <2 x i64> [ zeroinitializer, %vector.ph126 ], [ %i.bl, %vector.body129 ]
  %i.ay = sub i64 %indvars.iv71, %index130
  %i.az = getelementptr [4 x i8], ptr %invariant.gep113, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = getelementptr i8, ptr %i.az, i64 -12
  %wide.load132 = load <2 x i32>, ptr %i.ba, align 4, !tbaa !3
  %wide.load133 = load <2 x i32>, ptr %i.bb, align 4, !tbaa !3
  %reverse = shufflevector <2 x i32> %wide.load132, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse134 = shufflevector <2 x i32> %wide.load133, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep115, i64 %index130 ; 2 uses
end_hunk_1
