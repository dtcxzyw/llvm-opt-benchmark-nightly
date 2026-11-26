Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/bignum?download=true
inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN17double_conversion6Bignum19AssignDecimalStringENS_6VectorIKcEE:bb.a
  %i.cl = add nsw i64 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 13
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !23
  %i.cp = sext i8 %i.co to i64
  %i.cq = mul nsw i64 %i.cl, 10
  %i.cr = add nsw i64 %i.cq, -48
  %i.cs = add nsw i64 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 14
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !23
  %i.cw = sext i8 %i.cv to i64
  %i.cx = mul nsw i64 %i.cs, 10
  %i.cy = add nsw i64 %i.cx, -48
  %i.cz = add nsw i64 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !23
  %i.dd = sext i8 %i.dc to i64
  %i.de = mul nsw i64 %i.cz, 10
  %i.df = add nsw i64 %i.de, -48
  %i.dg = add nsw i64 %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !23
  %i.dk = sext i8 %i.dj to i64
  %i.dl = mul nsw i64 %i.dg, 10
  %i.dm = add nsw i64 %i.dl, -48
  %i.dn = add nsw i64 %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 17
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !23
  %i.dr = sext i8 %i.dq to i64
  %i.ds = mul i64 %i.dn, 10
  %i.dt = add i64 %i.ds, -48
  %i.du = add i64 %i.dt, %i.dr
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 18
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !23
  %i.dy = sext i8 %i.dx to i64
  %i.dz = mul i64 %i.du, 10
  %i.ea = add i64 %i.dz, -48
  %i.eb = add i64 %i.ea, %i.dy                    ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 19 ; 2 uses
  %i.ec = add nsw i32 %.032, -19                  ; 2 uses
  tail call void @_ZN17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef 19)
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %_ZN17double_conversion6Bignum9AddUInt64Em.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %.057.i.i = phi i64 [ %i.eb, %.lr.ph.i.i ], [ %i.eh, %bb.b ] ; 2 uses
  %i.ee = trunc i64 %.057.i.i to i32
  %i.ef = and i32 %i.ee, 268435455
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !19
  %i.eh = lshr i64 %.057.i.i, 28                  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i, label %_ZN17double_conversion6Bignum12AssignUInt64Em.exit.i, label %bb.b, !llvm.loop !0

_ZN17double_conversion6Bignum12AssignUInt64Em.exit.i: ; preds = %bb.b
  %indvars.i = trunc i64 %indvars.iv.next.i.i to i16
  store i16 %indvars.i, ptr %4, align 4, !tbaa !17
  call void @_ZN17double_conversion6Bignum9AddBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN17double_conversion6Bignum9AddUInt64Em.exit

_ZN17double_conversion6Bignum9AddUInt64Em.exit:   ; preds = %.lr.ph.i, %_ZN17double_conversion6Bignum12AssignUInt64Em.exit.i
  %i.ei = icmp samesign ugt i32 %.032, 37
  br i1 %i.ei, label %.lr.ph.i, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %_ZN17double_conversion6Bignum9AddUInt64Em.exit
  %i.ej = trunc nuw nsw i64 %indvars.iv.next38 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %i.ej, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %i.ec, %._crit_edge.loopexit ] ; 4 uses
  %i.ek = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ek, label %.lr.ph.preheader.i, label %_ZN17double_conversionL10ReadUInt64ENS_6VectorIKcEEii.exit17.thread

_ZN17double_conversionL10ReadUInt64ENS_6VectorIKcEEii.exit17.thread: ; preds = %._crit_edge
  tail call void @_ZN17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef %.0.lcssa)
  br label %_ZN17double_conversion6Bignum9AddUInt64Em.exit25

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.el = add nuw nsw i32 %.0.lcssa, %.012.lcssa
  %i.em = zext nneg i32 %.012.lcssa to i64
  %i.en = zext nneg i32 %i.el to i64
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13, %.lr.ph.preheader.i
  %indvars.iv.i14 = phi i64 [ %i.em, %.lr.ph.preheader.i ], [ %indvars.iv.next.i16, %.lr.ph.i13 ] ; 2 uses
  %.011.i15 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.et, %.lr.ph.i13 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i14
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !23
  %i.eq = sext i8 %i.ep to i64
  %i.er = mul i64 %.011.i15, 10
  %i.es = add i64 %i.er, -48
  %i.et = add i64 %i.es, %i.eq                    ; 3 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.eu = icmp samesign ult i64 %indvars.iv.next.i16, %i.en
  br i1 %i.eu, label %.lr.ph.i13, label %_ZN17double_conversionL10ReadUInt64ENS_6VectorIKcEEii.exit17, !llvm.loop !29

_ZN17double_conversionL10ReadUInt64ENS_6VectorIKcEEii.exit17: ; preds = %.lr.ph.i13
  tail call void @_ZN17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef %.0.lcssa)
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %_ZN17double_conversion6Bignum9AddUInt64Em.exit25, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %_ZN17double_conversionL10ReadUInt64ENS_6VectorIKcEEii.exit17
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
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !19
  %i.fa = lshr i64 %.057.i.i20, 28                ; 2 uses
  %indvars.iv.next.i.i21 = add nuw nsw i64 %indvars.iv.i.i19, 1 ; 2 uses
  %.not.i.i22 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i22, label %_ZN17double_conversion6Bignum12AssignUInt64Em.exit.i23, label %bb.c, !llvm.loop !0

_ZN17double_conversion6Bignum12AssignUInt64Em.exit.i23: ; preds = %bb.c
  %indvars.i24 = trunc i64 %indvars.iv.next.i.i21 to i16
  store i16 %indvars.i24, ptr %3, align 4, !tbaa !17
  call void @_ZN17double_conversion6Bignum9AddBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN17double_conversion6Bignum9AddUInt64Em.exit25

_ZN17double_conversion6Bignum9AddUInt64Em.exit25: ; preds = %_ZN17double_conversionL10ReadUInt64ENS_6VectorIKcEEii.exit17.thread, %_ZN17double_conversionL10ReadUInt64ENS_6VectorIKcEEii.exit17, %_ZN17double_conversion6Bignum12AssignUInt64Em.exit.i23
  %.pr.i = load i16, ptr %0, align 4, !tbaa !17   ; 3 uses
  %i.fb = icmp sgt i16 %.pr.i, 0
  br i1 %i.fb, label %.lr.ph.i26, label %.critedge.i

.lr.ph.i26:                                       ; preds = %_ZN17double_conversion6Bignum9AddUInt64Em.exit25, %bb.d
  %i.fc = phi i16 [ %i.fh, %bb.d ], [ %.pr.i, %_ZN17double_conversion6Bignum9AddUInt64Em.exit25 ] ; 3 uses
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = getelementptr [4 x i8], ptr %0, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !19
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.d, label %_ZN17double_conversion6Bignum5ClampEv.exit

bb.d:                                             ; preds = %.lr.ph.i26
  %i.fh = add nsw i16 %i.fc, -1                   ; 2 uses
  store i16 %i.fh, ptr %0, align 4, !tbaa !17
  %i.fi = icmp sgt i16 %i.fc, 1
  br i1 %i.fi, label %.lr.ph.i26, label %.critedge.thread3.i, !llvm.loop !1

.critedge.i:                                      ; preds = %_ZN17double_conversion6Bignum9AddUInt64Em.exit25
  %i.fj = icmp eq i16 %.pr.i, 0
  br i1 %i.fj, label %.critedge.thread3.i, label %_ZN17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.d, %.critedge.i
  store i16 0, ptr %i.a, align 2, !tbaa !18
  br label %_ZN17double_conversion6Bignum5ClampEv.exit

_ZN17double_conversion6Bignum5ClampEv.exit:       ; preds = %.lr.ph.i26, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = load i16, ptr %0, align 4                ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.c
  br i1 %or.cond, label %_ZN17double_conversion6Bignum9ShiftLeftEi.exit, label %.preheader35

.preheader35:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 26
  br i1 %i.d, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit, %.preheader35
  %.promoted47 = phi i16 [ %i.b, %.preheader35 ], [ %i.bd, %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %.preheader35 ], [ %i.be, %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 3 uses
  %i.f = icmp sgt i32 %.0.lcssa, 12
  br i1 %i.f, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit
  %.043 = phi i32 [ %1, %.lr.ph ], [ %i.be, %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
  %i.h = phi i16 [ %i.b, %.lr.ph ], [ %i.bd, %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 8 uses
  %i.i = icmp sgt i16 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit

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
  %.023.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod124 = trunc i16 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = mul nuw i64 %i.m, 4195354525
  %i.o = and i64 %.023.i.epil.init, 268435455
  %i.p = add nuw i64 %i.n, %i.o                   ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 268435455
  store i32 %i.r, ptr %i.k, align 4, !tbaa !19
  %i.s = lshr i64 %.023.i.epil.init, 28
  %i.t = lshr i64 %i.p, 28
  %i.u = mul i64 %i.m, 27755575600
  %i.v = add i64 %i.u, %i.s
  %i.w = add i64 %i.v, %i.t
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa118 = phi i64 [ %i.ax, %.preheader.i.unr-lcssa ], [ %i.w, %.epil.preheader ] ; 2 uses
  %.not24.i = icmp eq i64 %.lcssa118, 0
  br i1 %.not24.i, label %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %.preheader.i
  %2 = tail call i16 @llvm.umax.i16(i16 %i.h, i16 128)
  %wide.trip.count = zext nneg i16 %2 to i64
  %exitcond103 = icmp ugt i16 %i.h, 127
  br i1 %exitcond103, label %.lr.ph26.i.preheader._crit_edge, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
  %.023.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ax, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = mul nuw i64 %i.z, 4195354525
  %i.ab = and i64 %.023.i, 268435455
  %i.ac = add nuw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 268435455
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !19
  %i.af = lshr i64 %.023.i, 28
  %i.ag = lshr i64 %i.ac, 28
  %i.ah = mul i64 %i.z, 27755575600
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = add i64 %i.ai, %i.ag                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = mul nuw i64 %i.an, 4195354525
  %i.ap = and i64 %i.aj, 268435455
  %i.aq = add nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 268435455
  store i32 %i.as, ptr %i.al, align 4, !tbaa !19
  %i.at = lshr i64 %i.aj, 28
  %i.au = lshr i64 %i.aq, 28
  %i.av = mul i64 %i.an, 27755575600
  %i.aw = add i64 %i.av, %i.at
  %i.ax = add i64 %i.aw, %i.au                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.c, !llvm.loop !2

.lr.ph26.i:                                       ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.lr.ph26.i.preheader._crit_edge.loopexit, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i, !llvm.loop !3

.lr.ph26.i.preheader._crit_edge.loopexit:         ; preds = %.lr.ph26.i
  store i16 %i.bb, ptr %0, align 4, !tbaa !17
  br label %.lr.ph26.i.preheader._crit_edge

.lr.ph26.i.preheader._crit_edge:                  ; preds = %.lr.ph26.i.preheader, %.lr.ph26.i.preheader._crit_edge.loopexit
  tail call void @abort() #14
  unreachable

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %.lr.ph26.i.preheader, %.lr.ph26.i
  %.125.i98 = phi i64 [ %i.bc, %.lr.ph26.i ], [ %.lcssa118, %.lr.ph26.i.preheader ] ; 2 uses
  %indvars.iv97 = phi i64 [ %indvars.iv.next, %.lr.ph26.i ], [ %wide.trip.count.i, %.lr.ph26.i.preheader ] ; 2 uses
  %i.ay = trunc i64 %.125.i98 to i32
  %i.az = and i32 %i.ay, 268435455
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv97
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv97, 1 ; 3 uses
  %i.bb = trunc nuw i64 %indvars.iv.next to i16   ; 3 uses
  %i.bc = lshr i64 %.125.i98, 28                  ; 2 uses
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit, label %.lr.ph26.i, !llvm.loop !3

_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit: ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i
  store i16 %i.bb, ptr %0, align 4, !tbaa !17
  br label %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit

_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit: ; preds = %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit, %bb.b, %.preheader.i
  %i.bd = phi i16 [ %i.h, %.preheader.i ], [ %i.h, %bb.b ], [ %i.bb, %_ZN17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit ] ; 2 uses
  %i.be = add nsw i32 %.043, -27                  ; 2 uses
  %i.bf = icmp sgt i32 %.043, 53
  br i1 %i.bf, label %bb.b, label %.preheader, !llvm.loop !30

bb.d:                                             ; preds = %.lr.ph45, %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %i.bg = phi i16 [ %.promoted47, %.lr.ph45 ], [ %i.cn, %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 8 uses
  %.144 = phi i32 [ %.0.lcssa, %.lr.ph45 ], [ %i.co, %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.bh = icmp sgt i16 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i11, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit

.lr.ph.i11:                                       ; preds = %bb.d
  %wide.trip.count.i12 = zext nneg i16 %i.bg to i64 ; 3 uses
  %xtraiter126 = and i64 %wide.trip.count.i12, 1
  %i.bi = icmp eq i16 %i.bg, 1
  br i1 %i.bi, label %.epil.preheader125, label %.lr.ph.i11.new

.lr.ph.i11.new:                                   ; preds = %.lr.ph.i11
  %unroll_iter130 = and i64 %wide.trip.count.i12, 32766
  br label %bb.e

.preheader.i16.unr-lcssa:                         ; preds = %bb.e
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.preheader.i16, label %.epil.preheader125

.epil.preheader125:                               ; preds = %.preheader.i16.unr-lcssa, %.lr.ph.i11
  %indvars.iv.i13.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %indvars.iv.next.i14.1, %.preheader.i16.unr-lcssa ]
  %.017.i.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %i.ch, %.preheader.i16.unr-lcssa ]
  %lcmp.mod129 = trunc i16 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13.epil.init ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !19
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw nsw i64 %i.bl, 1220703125
  %i.bn = add nuw nsw i64 %i.bm, %.017.i.epil.init ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 268435455
  store i32 %i.bp, ptr %i.bj, align 4, !tbaa !19
  %i.bq = lshr i64 %i.bn, 28
  br label %.preheader.i16

.preheader.i16:                                   ; preds = %.preheader.i16.unr-lcssa, %.epil.preheader125
  %.lcssa112 = phi i64 [ %i.ch, %.preheader.i16.unr-lcssa ], [ %i.bq, %.epil.preheader125 ] ; 2 uses
  %.not18.i = icmp eq i64 %.lcssa112, 0
  br i1 %.not18.i, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i16
  %3 = tail call i16 @llvm.umax.i16(i16 %i.bg, i16 128)
  %wide.trip.count62 = zext nneg i16 %3 to i64
  %exitcond63106 = icmp ugt i16 %i.bg, 127
  br i1 %exitcond63106, label %.lr.ph20.i.preheader._crit_edge, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i17

bb.e:                                             ; preds = %bb.e, %.lr.ph.i11.new
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i11.new ], [ %indvars.iv.next.i14.1, %bb.e ] ; 3 uses
  %.017.i = phi i64 [ 0, %.lr.ph.i11.new ], [ %i.ch, %bb.e ]
  %niter131 = phi i64 [ 0, %.lr.ph.i11.new ], [ %niter131.next.1, %bb.e ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !19
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 1220703125
  %i.bv = add nuw nsw i64 %i.bu, %.017.i          ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 268435455
  store i32 %i.bx, ptr %i.br, align 4, !tbaa !19
  %i.by = lshr i64 %i.bv, 28
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !19
  %i.cc = zext i32 %i.cb to i64
  %i.cd = mul nuw nsw i64 %i.cc, 1220703125
  %i.ce = add nuw nsw i64 %i.cd, %i.by            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = and i32 %i.cf, 268435455
  store i32 %i.cg, ptr %i.ca, align 4, !tbaa !19
  %i.ch = lshr i64 %i.ce, 28                      ; 3 uses
  %indvars.iv.next.i14.1 = add nuw nsw i64 %indvars.iv.i13, 2 ; 2 uses
  %niter131.next.1 = add i64 %niter131, 2         ; 2 uses
  %niter131.ncmp.1 = icmp eq i64 %niter131.next.1, %unroll_iter130
  br i1 %niter131.ncmp.1, label %.preheader.i16.unr-lcssa, label %bb.e, !llvm.loop !4

.lr.ph20.i:                                       ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i17
  %exitcond63 = icmp eq i64 %indvars.iv.next59, %wide.trip.count62
  br i1 %exitcond63, label %.lr.ph20.i.preheader._crit_edge.loopexit, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i17, !llvm.loop !5

.lr.ph20.i.preheader._crit_edge.loopexit:         ; preds = %.lr.ph20.i
  store i16 %i.cl, ptr %0, align 4, !tbaa !17
  br label %.lr.ph20.i.preheader._crit_edge

.lr.ph20.i.preheader._crit_edge:                  ; preds = %.lr.ph20.i.preheader, %.lr.ph20.i.preheader._crit_edge.loopexit
  tail call void @abort() #14
  unreachable

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i17: ; preds = %.lr.ph20.i.preheader, %.lr.ph20.i
  %.119.i100 = phi i64 [ %i.cm, %.lr.ph20.i ], [ %.lcssa112, %.lr.ph20.i.preheader ] ; 2 uses
  %indvars.iv5899 = phi i64 [ %indvars.iv.next59, %.lr.ph20.i ], [ %wide.trip.count.i12, %.lr.ph20.i.preheader ] ; 2 uses
  %i.ci = trunc i64 %.119.i100 to i32
  %i.cj = and i32 %i.ci, 268435455
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv5899
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !19
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv5899, 1 ; 3 uses
  %i.cl = trunc nuw i64 %indvars.iv.next59 to i16 ; 3 uses
  %i.cm = lshr i64 %.119.i100, 28                 ; 2 uses
  %.not.i18 = icmp eq i64 %i.cm, 0
  br i1 %.not.i18, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit, label %.lr.ph20.i, !llvm.loop !5

_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit: ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i17
  store i16 %i.cl, ptr %0, align 4, !tbaa !17
  br label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit

_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit: ; preds = %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit, %bb.d, %.preheader.i16
  %i.cn = phi i16 [ %i.bg, %.preheader.i16 ], [ %i.bg, %bb.d ], [ %i.cl, %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit ] ; 2 uses
  %i.co = add nsw i32 %.144, -13                  ; 2 uses
  %i.cp = icmp sgt i32 %.144, 25
  br i1 %i.cp, label %bb.d, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit, %.preheader
  %.pr = phi i16 [ %.promoted47, %.preheader ], [ %i.cn, %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 9 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.co, %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.cq = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.cq, label %bb.f, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33

bb.f:                                             ; preds = %._crit_edge
  %i.cr = zext nneg i32 %.1.lcssa to i64
  %i.cs = getelementptr [4 x i8], ptr @_ZZN17double_conversion6Bignum20MultiplyByPowerOfTenEiE12kFive1_to_12, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !19 ; 2 uses
  switch i32 %i.cu, label %bb.g [
    i32 1, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33
    i32 0, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread
  ]

_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread: ; preds = %bb.f
  store i16 0, ptr %0, align 4, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.cv, align 2, !tbaa !18
  br label %_ZN17double_conversion6Bignum9ShiftLeftEi.exit

bb.g:                                             ; preds = %bb.f
  %i.cw = icmp sgt i16 %.pr, 0
  br i1 %i.cw, label %.lr.ph.i19, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i32.thread

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i32.thread: ; preds = %bb.g
  %i.cx = sdiv i32 %1, 28
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !18
  %i.da = trunc i32 %i.cx to i16
  %i.db = add i16 %i.cz, %i.da
  store i16 %i.db, ptr %i.cy, align 2, !tbaa !18
  br label %_ZN17double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i19:                                       ; preds = %bb.g
  %wide.trip.count.i20 = zext nneg i16 %.pr to i64 ; 3 uses
  %i.dc = zext i32 %i.cu to i64                   ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %xtraiter133 = and i64 %wide.trip.count.i20, 1
  %i.de = icmp eq i16 %.pr, 1
  br i1 %i.de, label %.epil.preheader132, label %.lr.ph.i19.new

.lr.ph.i19.new:                                   ; preds = %.lr.ph.i19
  %unroll_iter137 = and i64 %wide.trip.count.i20, 32766
  br label %bb.h

.preheader.i25.unr-lcssa:                         ; preds = %bb.h
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.preheader.i25, label %.epil.preheader132

.epil.preheader132:                               ; preds = %.preheader.i25.unr-lcssa, %.lr.ph.i19
  %indvars.iv.i21.epil.init = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i23.1, %.preheader.i25.unr-lcssa ]
  %.017.i22.epil.init = phi i64 [ 0, %.lr.ph.i19 ], [ %i.ed, %.preheader.i25.unr-lcssa ]
  %lcmp.mod136 = trunc i16 %.pr to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i21.epil.init ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !19
  %i.dh = zext i32 %i.dg to i64
  %i.di = mul nuw i64 %i.dh, %i.dc
  %i.dj = add i64 %i.di, %.017.i22.epil.init      ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 268435455
  store i32 %i.dl, ptr %i.df, align 4, !tbaa !19
  %i.dm = lshr i64 %i.dj, 28
  br label %.preheader.i25

.preheader.i25:                                   ; preds = %.preheader.i25.unr-lcssa, %.epil.preheader132
  %.lcssa110 = phi i64 [ %i.ed, %.preheader.i25.unr-lcssa ], [ %i.dm, %.epil.preheader132 ] ; 2 uses
  %.not18.i26 = icmp eq i64 %.lcssa110, 0
  br i1 %.not18.i26, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33, label %.lr.ph20.i27.preheader

.lr.ph20.i27.preheader:                           ; preds = %.preheader.i25
  %4 = tail call i16 @llvm.umax.i16(i16 %.pr, i16 128)
  %wide.trip.count68 = zext nneg i16 %4 to i64
  %exitcond69109 = icmp ugt i16 %.pr, 127
  br i1 %exitcond69109, label %.lr.ph20.i27._crit_edge, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i29

bb.h:                                             ; preds = %bb.h, %.lr.ph.i19.new
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i19.new ], [ %indvars.iv.next.i23.1, %bb.h ] ; 3 uses
  %.017.i22 = phi i64 [ 0, %.lr.ph.i19.new ], [ %i.ed, %bb.h ]
  %niter138 = phi i64 [ 0, %.lr.ph.i19.new ], [ %niter138.next.1, %bb.h ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i21 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !19
  %i.dp = zext i32 %i.do to i64
  %i.dq = mul nuw i64 %i.dp, %i.dc
  %i.dr = add i64 %i.dq, %.017.i22                ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = and i32 %i.ds, 268435455
  store i32 %i.dt, ptr %i.dn, align 4, !tbaa !19
  %i.du = lshr i64 %i.dr, 28
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i21
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !19
  %i.dy = zext i32 %i.dx to i64
  %i.dz = mul nuw i64 %i.dy, %i.dc
  %i.ea = add i64 %i.dz, %i.du                    ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 268435455
  store i32 %i.ec, ptr %i.dw, align 4, !tbaa !19
  %i.ed = lshr i64 %i.ea, 28                      ; 3 uses
  %indvars.iv.next.i23.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %.preheader.i25.unr-lcssa, label %bb.h, !llvm.loop !4

.lr.ph20.i27:                                     ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i29
  %exitcond69 = icmp eq i64 %indvars.iv.next62, %wide.trip.count68
  br i1 %exitcond69, label %.lr.ph20.i27._crit_edge.loopexit, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i29, !llvm.loop !5

.lr.ph20.i27._crit_edge.loopexit:                 ; preds = %.lr.ph20.i27
  store i16 %i.eh, ptr %0, align 4, !tbaa !17
  br label %.lr.ph20.i27._crit_edge

.lr.ph20.i27._crit_edge:                          ; preds = %.lr.ph20.i27._crit_edge.loopexit, %.lr.ph20.i27.preheader
  tail call void @abort() #14
  unreachable

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i29: ; preds = %.lr.ph20.i27.preheader, %.lr.ph20.i27
  %.119.i28102 = phi i64 [ %i.ei, %.lr.ph20.i27 ], [ %.lcssa110, %.lr.ph20.i27.preheader ] ; 2 uses
  %indvars.iv61101 = phi i64 [ %indvars.iv.next62, %.lr.ph20.i27 ], [ %wide.trip.count.i20, %.lr.ph20.i27.preheader ] ; 2 uses
  %i.ee = trunc i64 %.119.i28102 to i32
  %i.ef = and i32 %i.ee, 268435455
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv61101
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !19
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61101, 1 ; 3 uses
  %i.eh = trunc nuw i64 %indvars.iv.next62 to i16 ; 3 uses
  %i.ei = lshr i64 %.119.i28102, 28               ; 2 uses
  %.not.i30 = icmp eq i64 %i.ei, 0
  br i1 %.not.i30, label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33.loopexit, label %.lr.ph20.i27, !llvm.loop !5

_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33.loopexit: ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i29
  store i16 %i.eh, ptr %0, align 4, !tbaa !17
  br label %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33

_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33: ; preds = %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33.loopexit, %._crit_edge, %bb.f, %.preheader.i25
  %i.ej = phi i16 [ %.pr, %._crit_edge ], [ %.pr, %.preheader.i25 ], [ %.pr, %bb.f ], [ %i.eh, %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33.loopexit ] ; 5 uses
  %i.ek = sdiv i32 %1, 28
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !18
  %i.en = trunc i32 %i.ek to i16
  %i.eo = add i16 %i.em, %i.en
  store i16 %i.eo, ptr %i.el, align 2, !tbaa !18
  %i.ep = srem i32 %1, 28                         ; 3 uses
  %i.eq = icmp sgt i16 %i.ej, 127
  br i1 %i.eq, label %bb.i, label %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i32

bb.i:                                             ; preds = %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33
  tail call void @abort() #14
  unreachable

_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i32: ; preds = %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33
  %i.er = icmp sgt i16 %i.ej, 0
  br i1 %i.er, label %.lr.ph.i.i, label %_ZN17double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i.i:                                       ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i32
  %wide.trip.count.i.i = zext nneg i16 %i.ej to i64 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.et = sub nsw i32 28, %i.ep                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.ej, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 32760    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert103 = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %broadcast.splat104 = shufflevector <4 x i32> %broadcast.splatinsert103, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.ex, %vector.body ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.eu, align 4, !tbaa !19 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !19 ; 2 uses
  %i.ew = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.ex = lshr <4 x i32> %wide.load105, %broadcast.splat ; 3 uses
  %i.ey = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ew, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ez = shufflevector <4 x i32> %i.ew, <4 x i32> %i.ex, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fa = shl <4 x i32> %wide.load, %broadcast.splat104
  %i.fb = shl <4 x i32> %wide.load105, %broadcast.splat104
  %i.fc = add <4 x i32> %i.fa, %i.ey
  %i.fd = add <4 x i32> %i.fb, %i.ez
  %i.fe = and <4 x i32> %i.fc, splat (i32 268435455)
  %i.ff = and <4 x i32> %i.fd, splat (i32 268435455)
  store <4 x i32> %i.fe, ptr %i.eu, align 4, !tbaa !19
  store <4 x i32> %i.ff, ptr %i.ev, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ex, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.fj, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN17double_conversion6Bignum9ShiftLeftEi.exit, label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.fj, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !19 ; 2 uses
  %i.fj = lshr i32 %i.fi, %i.et                   ; 2 uses
  %i.fk = shl i32 %i.fi, %i.ep
  %i.fl = add i32 %i.fk, %.014.i.i
  %i.fm = and i32 %i.fl, 268435455
  store i32 %i.fm, ptr %i.fh, align 4, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !33

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.fn, align 4, !tbaa !19
  %i.fo = add nuw nsw i16 %i.ej, 1
  store i16 %i.fo, ptr %0, align 4, !tbaa !17
  br label %_ZN17double_conversion6Bignum9ShiftLeftEi.exit

_ZN17double_conversion6Bignum9ShiftLeftEi.exit:   ; preds = %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i32.thread, %bb.j, %._crit_edge.i.i, %_ZN17double_conversion6Bignum14EnsureCapacityEi.exit.i32, %_ZN17double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN17double_conversion6Bignum9AddUInt64Em(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.double_conversion::Bignum", align 4 ; 6 uses
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
  store i32 %i.d, ptr %i.e, align 4, !tbaa !19
  %i.f = lshr i64 %.057.i, 28                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN17double_conversion6Bignum12AssignUInt64Em.exit, label %bb.b, !llvm.loop !0

_ZN17double_conversion6Bignum12AssignUInt64Em.exit: ; preds = %bb.b
  %indvars = trunc i64 %indvars.iv.next.i to i16
  store i16 %indvars, ptr %2, align 4, !tbaa !17
  call void @_ZN17double_conversion6Bignum9AddBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN17double_conversion6Bignum12AssignUInt64Em.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN17double_conversion6Bignum5ClampEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.pr = load i16, ptr %0, align 4, !tbaa !17     ; 3 uses
  %i.a = icmp sgt i16 %.pr, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i16 [ %i.g, %bb.b ], [ %.pr, %bb.a ] ; 3 uses
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nsw i16 %i.b, -1                     ; 2 uses
  store i16 %i.g, ptr %0, align 4, !tbaa !17
  %i.h = icmp sgt i16 %i.b, 1
  br i1 %i.h, label %.lr.ph, label %.critedge.thread3, !llvm.loop !1

.critedge:                                        ; preds = %bb.a
  %i.i = icmp eq i16 %.pr, 0
  br i1 %i.i, label %.critedge.thread3, label %.critedge.thread

.critedge.thread3:                                ; preds = %bb.b, %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.j, align 2, !tbaa !18
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %.critedge.thread3, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN17double_conversion6Bignum15AssignHexStringENS_6VectorIKcEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  store i16 0, ptr %0, align 4, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 0, ptr %i.a, align 2, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN17double_conversion6Bignum7CompareERKS0_S2_:bb.a
  %i.f = add nsw i32 %i.e, %i.b                   ; 4 uses
  %i.g = load i16, ptr %1, align 4, !tbaa !17
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !18   ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 3 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 2 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %i.f, %i.l
  br i1 %i.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.o = tail call i16 @llvm.smin.i16(i16 %i.j, i16 %i.d)
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not.not.not42 = icmp sgt i32 %i.f, %i.p
  br i1 %.not.not.not42, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32
  %.not.not.not = icmp sgt i32 %.045, %i.p
  br i1 %.not.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !6

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.0.in44 = phi i32 [ %.045, %bb.c ], [ %i.f, %.preheader ] ; 3 uses
  %.02343 = phi i32 [ %.124, %bb.c ], [ undef, %.preheader ]
  %.045 = add nsw i32 %.0.in44, -1                ; 4 uses
  %.not35 = icmp sgt i32 %.0.in44, %i.e
  br i1 %.not35, label %bb.d, label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit

bb.d:                                             ; preds = %.lr.ph
  %i.s = sub nsw i32 %.045, %i.e
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !19
  br label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit

_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit: ; preds = %.lr.ph, %bb.d
  %.0.i = phi i32 [ %i.v, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.not36 = icmp sgt i32 %.0.in44, %i.k
  br i1 %.not36, label %bb.e, label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32

bb.e:                                             ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit
  %i.w = sub nsw i32 %.045, %i.k
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  br label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32

_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32: ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit, %bb.e
  %.0.i31 = phi i32 [ %i.z, %bb.e ], [ 0, %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit ] ; 3 uses
  %.not = icmp ult i32 %.0.i, %.0.i31
  %.not33 = icmp ugt i32 %.0.i, %.0.i31
  %..023 = select i1 %.not33, i32 1, i32 %.02343
  %.124 = select i1 %.not, i32 -1, i32 %..023     ; 2 uses
  %cond1 = icmp eq i32 %.0.i, %.0.i31
  br i1 %cond1, label %bb.c, label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge, !llvm.loop !6

_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge: ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32
  br label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ %.124, %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -1, 2) i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.pre = load i16, ptr %0, align 4, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre97 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !18
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %i.a = phi i16 [ %.pre97, %bb.a ], [ %i.i, %tailrecurse ] ; 2 uses
  %i.b = phi i16 [ %.pre, %bb.a ], [ %i.f, %tailrecurse ]
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr65, %tailrecurse ] ; 3 uses
  %.tr65 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.c = sext i16 %i.b to i32
  %i.d = sext i16 %i.a to i32                     ; 4 uses
  %i.e = add nsw i32 %i.d, %i.c                   ; 5 uses
  %i.f = load i16, ptr %.tr65, align 4, !tbaa !17 ; 2 uses
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.tr65, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !18   ; 4 uses
  %i.j = sext i16 %i.i to i32                     ; 3 uses
  %i.k = add nsw i32 %i.j, %i.g                   ; 3 uses
  %i.l = icmp slt i32 %i.e, %i.k
  br i1 %i.l, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.n = add nsw i32 %i.e, 1
  %i.o = load i16, ptr %2, align 4, !tbaa !17
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !18   ; 2 uses
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = add nsw i32 %i.s, %i.p                   ; 5 uses
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp sgt i32 %i.e, %i.t
  br i1 %i.v, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp sle i32 %i.k, %i.d
  %i.w = icmp slt i32 %i.e, %i.t
  %or.cond = and i1 %.not, %i.w
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp slt i16 %i.i, %i.a
  %.val64 = load i16, ptr %i.m, align 2
  %i.y = select i1 %i.x, i16 %i.i, i16 %.val64
  %i.z = tail call i16 @llvm.smin.i16(i16 %i.r, i16 %i.y)
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %.not50.not.not77 = icmp sgt i32 %i.t, %i.aa
  br i1 %.not50.not.not77, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr65, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %.040.in79 = phi i32 [ %i.t, %.lr.ph ], [ %.04080, %bb.k ] ; 6 uses
  %.04178 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.k ]
  %.04080 = add nsw i32 %.040.in79, -1            ; 5 uses
  %.not.i = icmp sgt i32 %.040.in79, %i.e
  %i.ae = icmp sle i32 %.040.in79, %i.d
  %or.cond.i = or i1 %i.ae, %.not.i
  br i1 %or.cond.i, label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sub nsw i32 %.04080, %i.d
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !19
  br label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit

_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ai, %bb.g ], [ 0, %bb.f ]
  %.not.i52 = icmp sgt i32 %.040.in79, %i.k
  %i.aj = icmp sle i32 %.040.in79, %i.j
  %or.cond.i53 = or i1 %i.aj, %.not.i52
  br i1 %or.cond.i53, label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit55, label %bb.h

bb.h:                                             ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit
  %i.ak = sub nsw i32 %.04080, %i.j
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !19
  br label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit55

_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit55: ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit, %bb.h
  %.0.i54 = phi i32 [ %i.an, %bb.h ], [ 0, %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit ]
  %.not91 = icmp sgt i32 %.040.in79, %i.s
  br i1 %.not91, label %bb.i, label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit59

bb.i:                                             ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit55
  %i.ao = sub nsw i32 %.04080, %i.s
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !19
  br label %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit59

_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit59: ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit55, %bb.i
  %.0.i58 = phi i32 [ %i.ar, %bb.i ], [ 0, %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit55 ]
  %i.as = add i32 %.0.i54, %.0.i                  ; 3 uses
  %i.at = add i32 %.0.i58, %.04178                ; 3 uses
  %i.au = icmp ugt i32 %i.as, %i.at
  br i1 %i.au, label %.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit59
  %i.av = sub nuw i32 %i.at, %i.as                ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 1
  br i1 %i.aw, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = shl nuw nsw i32 %i.av, 28
  %.not50.not.not = icmp sgt i32 %.04080, %i.aa
  br i1 %.not50.not.not, label %bb.f, label %.thread.loopexit, !llvm.loop !73

.thread.loopexit:                                 ; preds = %bb.k
  %i.ay = icmp ne i32 %i.at, %i.as
  %i.az = sext i1 %i.ay to i32
  br label %.thread

.thread:                                          ; preds = %bb.j, %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit59, %bb.e, %.thread.loopexit, %bb.d, %bb.c, %bb.b
  %.4 = phi i32 [ -1, %bb.d ], [ 1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.e ], [ %i.az, %.thread.loopexit ], [ 1, %_ZNK17double_conversion6Bignum11BigitOrZeroEi.exit59 ], [ -1, %bb.j ]
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = distinct !{!4, !20}
!5 = distinct !{!5, !20}
!6 = distinct !{!6, !20}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"short", !11, i64 0}
!16 = !{!"_ZTSN17double_conversion6BignumE", !15, i64 0, !15, i64 2, !11, i64 4}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 2}
!19 = !{!12, !12, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!11, !11, i64 0}
!24 = distinct !{!24, !20, !21, !22}
!25 = distinct !{!25, !27}
!26 = distinct !{!26, !20, !21}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20, !21, !22}
!33 = distinct !{!33, !20, !22, !21}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20, !21, !22}
!36 = distinct !{!36, !20, !21}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20, !21, !22}
!40 = distinct !{!40, !20, !21}
!41 = distinct !{!41, !20, !21, !22}
!42 = distinct !{!42, !20, !21}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20, !21, !22}
!46 = distinct !{!46, !20, !22, !21}
!47 = distinct !{!47, !20, !21, !22}
!48 = distinct !{!48, !20, !22, !21}
!49 = distinct !{!49, !20, !22, !21}
!50 = distinct !{!50, !20, !21, !22}
!51 = distinct !{!51, !20, !22, !21}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20, !21, !22}
!54 = distinct !{!54, !20, !22, !21}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20, !21, !22}
!61 = distinct !{!61, !20, !22, !21}
!62 = distinct !{!62, !20, !21, !22}
!63 = distinct !{!63, !20, !21}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20}
end_hunk_1
