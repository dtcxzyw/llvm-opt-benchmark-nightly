Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/double-conversion-bignum?download=true
inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6icu_7817double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !23
  %i.ci = sext i8 %i.ch to i64
  %i.cj = mul nsw i64 %i.ce, 10
  %i.ck = add nsw i64 %i.cj, -48
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
  tail call void @_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef 19)
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit, label %.lr.ph.i.i

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
  br i1 %.not.i.i, label %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i, label %bb.b, !llvm.loop !0

_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i: ; preds = %bb.b
  %indvars.i = trunc i64 %indvars.iv.next.i.i to i16
  store i16 %indvars.i, ptr %4, align 4, !tbaa !17
  call void @_ZN6icu_7817double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit

_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit: ; preds = %.lr.ph.i, %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i
  %i.ei = icmp samesign ugt i32 %.032, 37
  br i1 %i.ei, label %.lr.ph.i, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit
  %i.ej = trunc nuw nsw i64 %indvars.iv.next38 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %i.ej, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %i.ec, %._crit_edge.loopexit ] ; 4 uses
  %i.ek = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ek, label %.lr.ph.preheader.i, label %_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17.thread

_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17.thread: ; preds = %._crit_edge
  tail call void @_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef %.0.lcssa)
  br label %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25

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
  br i1 %i.eu, label %.lr.ph.i13, label %_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17, !llvm.loop !29

_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17: ; preds = %.lr.ph.i13
  tail call void @_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef %.0.lcssa)
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17
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
  br i1 %.not.i.i22, label %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i23, label %bb.c, !llvm.loop !0

_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i23: ; preds = %bb.c
  %indvars.i24 = trunc i64 %indvars.iv.next.i.i21 to i16
  store i16 %indvars.i24, ptr %3, align 4, !tbaa !17
  call void @_ZN6icu_7817double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25

_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25: ; preds = %_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17.thread, %_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17, %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i23
  %.pr.i = load i16, ptr %0, align 4, !tbaa !17   ; 3 uses
  %i.fb = icmp sgt i16 %.pr.i, 0
  br i1 %i.fb, label %.lr.ph.i26, label %.critedge.i

.lr.ph.i26:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25, %bb.d
  %i.fc = phi i16 [ %i.fh, %bb.d ], [ %.pr.i, %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25 ] ; 3 uses
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = getelementptr [4 x i8], ptr %0, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !19
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.d:                                             ; preds = %.lr.ph.i26
  %i.fh = add nsw i16 %i.fc, -1                   ; 2 uses
  store i16 %i.fh, ptr %0, align 4, !tbaa !17
  %i.fi = icmp sgt i16 %i.fc, 1
  br i1 %i.fi, label %.lr.ph.i26, label %.critedge.thread3.i, !llvm.loop !1

.critedge.i:                                      ; preds = %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25
  %i.fj = icmp eq i16 %.pr.i, 0
  br i1 %i.fj, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.d, %.critedge.i
  store i16 0, ptr %i.a, align 2, !tbaa !18
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %.lr.ph.i26, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = load i16, ptr %0, align 4                ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.c
  br i1 %or.cond, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %.preheader35

.preheader35:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 26
  br i1 %i.d, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit, %.preheader35
  %.promoted47 = phi i16 [ %i.b, %.preheader35 ], [ %i.bg, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %.preheader35 ], [ %i.bh, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 3 uses
  %i.f = icmp sgt i32 %.0.lcssa, 12
  br i1 %i.f, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit
  %.043 = phi i32 [ %1, %.lr.ph ], [ %i.bh, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
  %i.h = phi i16 [ %i.b, %.lr.ph ], [ %i.bg, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 7 uses
  %i.i = icmp sgt i16 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit

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
  %.lcssa118 = phi i64 [ %i.ay, %.preheader.i.unr-lcssa ], [ %i.w, %.epil.preheader ] ; 2 uses
  %.not24.i = icmp eq i64 %.lcssa118, 0
  br i1 %.not24.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %.preheader.i
  %i.x = icmp sgt i16 %i.h, 127
  br i1 %i.x, label %.lr.ph26.i.preheader._crit_edge, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
  %.023.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ay, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = mul nuw i64 %i.aa, 4195354525
  %i.ac = and i64 %.023.i, 268435455
  %i.ad = add nuw i64 %i.ab, %i.ac                ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 268435455
  store i32 %i.af, ptr %i.y, align 4, !tbaa !19
  %i.ag = lshr i64 %.023.i, 28
  %i.ah = lshr i64 %i.ad, 28
  %i.ai = mul i64 %i.aa, 27755575600
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !19
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = mul nuw i64 %i.ao, 4195354525
  %i.aq = and i64 %i.ak, 268435455
  %i.ar = add nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 268435455
  store i32 %i.at, ptr %i.am, align 4, !tbaa !19
  %i.au = lshr i64 %i.ak, 28
  %i.av = lshr i64 %i.ar, 28
  %i.aw = mul i64 %i.ao, 27755575600
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %i.ax, %i.av                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.c, !llvm.loop !2

.lr.ph26.i:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %i.az = trunc nuw i64 %indvars.iv.next to i16
  %i.ba = icmp sgt i16 %i.az, 127
  br i1 %i.ba, label %.lr.ph26.i.preheader._crit_edge.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, !llvm.loop !3

.lr.ph26.i.preheader._crit_edge.loopexit:         ; preds = %.lr.ph26.i
  store i16 %i.be, ptr %0, align 4, !tbaa !17
  br label %.lr.ph26.i.preheader._crit_edge

.lr.ph26.i.preheader._crit_edge:                  ; preds = %.lr.ph26.i.preheader, %.lr.ph26.i.preheader._crit_edge.loopexit
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %.lr.ph26.i.preheader, %.lr.ph26.i
  %.125.i98 = phi i64 [ %i.bf, %.lr.ph26.i ], [ %.lcssa118, %.lr.ph26.i.preheader ] ; 2 uses
  %indvars.iv97 = phi i64 [ %indvars.iv.next, %.lr.ph26.i ], [ %wide.trip.count.i, %.lr.ph26.i.preheader ] ; 2 uses
  %i.bb = trunc i64 %.125.i98 to i32
  %i.bc = and i32 %i.bb, 268435455
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv97
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv97, 1 ; 3 uses
  %i.be = trunc nuw i64 %indvars.iv.next to i16   ; 3 uses
  %i.bf = lshr i64 %.125.i98, 28                  ; 2 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit, label %.lr.ph26.i, !llvm.loop !3

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  store i16 %i.be, ptr %0, align 4, !tbaa !17
  br label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit, %bb.b, %.preheader.i
  %i.bg = phi i16 [ %i.h, %.preheader.i ], [ %i.h, %bb.b ], [ %i.be, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit ] ; 2 uses
  %i.bh = add nsw i32 %.043, -27                  ; 2 uses
  %i.bi = icmp sgt i32 %.043, 53
  br i1 %i.bi, label %bb.b, label %.preheader, !llvm.loop !30

bb.d:                                             ; preds = %.lr.ph45, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %i.bj = phi i16 [ %.promoted47, %.lr.ph45 ], [ %2, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 7 uses
  %.144 = phi i32 [ %.0.lcssa, %.lr.ph45 ], [ %i.ct, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.bk = icmp sgt i16 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i11, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit

.lr.ph.i11:                                       ; preds = %bb.d
  %wide.trip.count.i12 = zext nneg i16 %i.bj to i64 ; 3 uses
  %xtraiter126 = and i64 %wide.trip.count.i12, 1
  %i.bl = icmp eq i16 %i.bj, 1
  br i1 %i.bl, label %.epil.preheader125, label %.lr.ph.i11.new

.lr.ph.i11.new:                                   ; preds = %.lr.ph.i11
  %unroll_iter130 = and i64 %wide.trip.count.i12, 32766
  br label %bb.e

.preheader.i16.unr-lcssa:                         ; preds = %bb.e
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.preheader.i16, label %.epil.preheader125

.epil.preheader125:                               ; preds = %.preheader.i16.unr-lcssa, %.lr.ph.i11
  %indvars.iv.i13.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %indvars.iv.next.i14.1, %.preheader.i16.unr-lcssa ]
  %.017.i.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %i.cl, %.preheader.i16.unr-lcssa ]
  %lcmp.mod129 = trunc i16 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13.epil.init ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !19
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, 1220703125
  %i.bq = add nuw nsw i64 %i.bp, %.017.i.epil.init ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.br, 268435455
  store i32 %i.bs, ptr %i.bm, align 4, !tbaa !19
  %i.bt = lshr i64 %i.bq, 28
  br label %.preheader.i16

.preheader.i16:                                   ; preds = %.preheader.i16.unr-lcssa, %.epil.preheader125
  %.lcssa112 = phi i64 [ %i.cl, %.preheader.i16.unr-lcssa ], [ %i.bt, %.epil.preheader125 ] ; 2 uses
  %.not18.i = icmp eq i64 %.lcssa112, 0
  br i1 %.not18.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i16
  %i.bu = icmp sgt i16 %i.bj, 127
  br i1 %i.bu, label %.lr.ph20.i.preheader._crit_edge, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i17

bb.e:                                             ; preds = %bb.e, %.lr.ph.i11.new
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i11.new ], [ %indvars.iv.next.i14.1, %bb.e ] ; 3 uses
  %.017.i = phi i64 [ 0, %.lr.ph.i11.new ], [ %i.cl, %bb.e ]
  %niter131 = phi i64 [ 0, %.lr.ph.i11.new ], [ %niter131.next.1, %bb.e ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !19
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul nuw nsw i64 %i.bx, 1220703125
  %i.bz = add nuw nsw i64 %i.by, %.017.i          ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 268435455
  store i32 %i.cb, ptr %i.bv, align 4, !tbaa !19
  %i.cc = lshr i64 %i.bz, 28
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !19
  %i.cg = zext i32 %i.cf to i64
  %i.ch = mul nuw nsw i64 %i.cg, 1220703125
  %i.ci = add nuw nsw i64 %i.ch, %i.cc            ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 268435455
  store i32 %i.ck, ptr %i.ce, align 4, !tbaa !19
  %i.cl = lshr i64 %i.ci, 28                      ; 3 uses
  %indvars.iv.next.i14.1 = add nuw nsw i64 %indvars.iv.i13, 2 ; 2 uses
  %niter131.next.1 = add i64 %niter131, 2         ; 2 uses
  %niter131.ncmp.1 = icmp eq i64 %niter131.next.1, %unroll_iter130
  br i1 %niter131.ncmp.1, label %.preheader.i16.unr-lcssa, label %bb.e, !llvm.loop !4

.lr.ph20.i:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i17
  %i.cm = trunc nuw i64 %indvars.iv.next59 to i16
  %i.cn = icmp sgt i16 %i.cm, 127
  br i1 %i.cn, label %.lr.ph20.i.preheader._crit_edge.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i17, !llvm.loop !5

.lr.ph20.i.preheader._crit_edge.loopexit:         ; preds = %.lr.ph20.i
  store i16 %i.cr, ptr %0, align 4, !tbaa !17
  br label %.lr.ph20.i.preheader._crit_edge

.lr.ph20.i.preheader._crit_edge:                  ; preds = %.lr.ph20.i.preheader, %.lr.ph20.i.preheader._crit_edge.loopexit
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i17: ; preds = %.lr.ph20.i.preheader, %.lr.ph20.i
  %.119.i100 = phi i64 [ %i.cs, %.lr.ph20.i ], [ %.lcssa112, %.lr.ph20.i.preheader ] ; 2 uses
  %indvars.iv5899 = phi i64 [ %indvars.iv.next59, %.lr.ph20.i ], [ %wide.trip.count.i12, %.lr.ph20.i.preheader ] ; 2 uses
  %i.co = trunc i64 %.119.i100 to i32
  %i.cp = and i32 %i.co, 268435455
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv5899
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !19
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv5899, 1 ; 3 uses
  %i.cr = trunc nuw i64 %indvars.iv.next59 to i16 ; 3 uses
  %i.cs = lshr i64 %.119.i100, 28                 ; 2 uses
  %.not.i18 = icmp eq i64 %i.cs, 0
  br i1 %.not.i18, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit, label %.lr.ph20.i, !llvm.loop !5

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i17
  store i16 %i.cr, ptr %0, align 4, !tbaa !17
  br label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit, %bb.d, %.preheader.i16
  %2 = phi i16 [ %i.bj, %.preheader.i16 ], [ %i.bj, %bb.d ], [ %i.cr, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit.loopexit ] ; 2 uses
  %i.ct = add nsw i32 %.144, -13                  ; 2 uses
  %i.cu = icmp sgt i32 %.144, 25
  br i1 %i.cu, label %bb.d, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit, %.preheader
  %.pr = phi i16 [ %.promoted47, %.preheader ], [ %2, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 8 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.ct, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.cv = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.cv, label %bb.f, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33

bb.f:                                             ; preds = %._crit_edge
  %i.cw = zext nneg i32 %.1.lcssa to i64
  %i.cx = getelementptr [4 x i8], ptr @_ZZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEiE12kFive1_to_12, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !19 ; 2 uses
  switch i32 %i.cz, label %bb.g [
    i32 1, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33
    i32 0, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread
  ]

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread: ; preds = %bb.f
  store i16 0, ptr %0, align 4, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.da, align 2, !tbaa !18
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

bb.g:                                             ; preds = %bb.f
  %i.db = icmp sgt i16 %.pr, 0
  br i1 %i.db, label %.lr.ph.i19, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32.thread

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32.thread: ; preds = %bb.g
  %i.dc = sdiv i32 %1, 28
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !18
  %i.df = trunc i32 %i.dc to i16
  %i.dg = add i16 %i.de, %i.df
  store i16 %i.dg, ptr %i.dd, align 2, !tbaa !18
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i19:                                       ; preds = %bb.g
  %wide.trip.count.i20 = zext nneg i16 %.pr to i64 ; 3 uses
  %i.dh = zext i32 %i.cz to i64                   ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %xtraiter133 = and i64 %wide.trip.count.i20, 1
  %i.dj = icmp eq i16 %.pr, 1
  br i1 %i.dj, label %.epil.preheader132, label %.lr.ph.i19.new

.lr.ph.i19.new:                                   ; preds = %.lr.ph.i19
  %unroll_iter137 = and i64 %wide.trip.count.i20, 32766
  br label %bb.h

.preheader.i25.unr-lcssa:                         ; preds = %bb.h
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.preheader.i25, label %.epil.preheader132

.epil.preheader132:                               ; preds = %.preheader.i25.unr-lcssa, %.lr.ph.i19
  %indvars.iv.i21.epil.init = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i23.1, %.preheader.i25.unr-lcssa ]
  %.017.i22.epil.init = phi i64 [ 0, %.lr.ph.i19 ], [ %i.ej, %.preheader.i25.unr-lcssa ]
  %lcmp.mod136 = trunc i16 %.pr to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i21.epil.init ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !19
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw i64 %i.dm, %i.dh
  %i.do = add i64 %i.dn, %.017.i22.epil.init      ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = and i32 %i.dp, 268435455
  store i32 %i.dq, ptr %i.dk, align 4, !tbaa !19
  %i.dr = lshr i64 %i.do, 28
  br label %.preheader.i25

.preheader.i25:                                   ; preds = %.preheader.i25.unr-lcssa, %.epil.preheader132
  %.lcssa110 = phi i64 [ %i.ej, %.preheader.i25.unr-lcssa ], [ %i.dr, %.epil.preheader132 ] ; 2 uses
  %.not18.i26 = icmp eq i64 %.lcssa110, 0
  br i1 %.not18.i26, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33, label %.lr.ph20.i27.preheader

.lr.ph20.i27.preheader:                           ; preds = %.preheader.i25
  %i.ds = icmp sgt i16 %.pr, 127
  br i1 %i.ds, label %.lr.ph20.i27._crit_edge, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29

bb.h:                                             ; preds = %bb.h, %.lr.ph.i19.new
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i19.new ], [ %indvars.iv.next.i23.1, %bb.h ] ; 3 uses
  %.017.i22 = phi i64 [ 0, %.lr.ph.i19.new ], [ %i.ej, %bb.h ]
  %niter138 = phi i64 [ 0, %.lr.ph.i19.new ], [ %niter138.next.1, %bb.h ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i21 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !19
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.dv, %i.dh
  %i.dx = add i64 %i.dw, %.017.i22                ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 268435455
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !19
  %i.ea = lshr i64 %i.dx, 28
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i21
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !19
  %i.ee = zext i32 %i.ed to i64
  %i.ef = mul nuw i64 %i.ee, %i.dh
  %i.eg = add i64 %i.ef, %i.ea                    ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 268435455
  store i32 %i.ei, ptr %i.ec, align 4, !tbaa !19
  %i.ej = lshr i64 %i.eg, 28                      ; 3 uses
  %indvars.iv.next.i23.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %.preheader.i25.unr-lcssa, label %bb.h, !llvm.loop !4

.lr.ph20.i27:                                     ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29
  %i.ek = trunc nuw i64 %indvars.iv.next62 to i16
  %i.el = icmp sgt i16 %i.ek, 127
  br i1 %i.el, label %.lr.ph20.i27._crit_edge.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29, !llvm.loop !5

.lr.ph20.i27._crit_edge.loopexit:                 ; preds = %.lr.ph20.i27
  store i16 %i.ep, ptr %0, align 4, !tbaa !17
  br label %.lr.ph20.i27._crit_edge

.lr.ph20.i27._crit_edge:                          ; preds = %.lr.ph20.i27._crit_edge.loopexit, %.lr.ph20.i27.preheader
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29: ; preds = %.lr.ph20.i27.preheader, %.lr.ph20.i27
  %.119.i28102 = phi i64 [ %i.eq, %.lr.ph20.i27 ], [ %.lcssa110, %.lr.ph20.i27.preheader ] ; 2 uses
  %indvars.iv61101 = phi i64 [ %indvars.iv.next62, %.lr.ph20.i27 ], [ %wide.trip.count.i20, %.lr.ph20.i27.preheader ] ; 2 uses
  %i.em = trunc i64 %.119.i28102 to i32
  %i.en = and i32 %i.em, 268435455
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv61101
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !19
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61101, 1 ; 3 uses
  %i.ep = trunc nuw i64 %indvars.iv.next62 to i16 ; 3 uses
  %i.eq = lshr i64 %.119.i28102, 28               ; 2 uses
  %.not.i30 = icmp eq i64 %i.eq, 0
  br i1 %.not.i30, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33.loopexit, label %.lr.ph20.i27, !llvm.loop !5

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33.loopexit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29
  store i16 %i.ep, ptr %0, align 4, !tbaa !17
  br label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33: ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33.loopexit, %._crit_edge, %bb.f, %.preheader.i25
  %3 = phi i16 [ %.pr, %._crit_edge ], [ %.pr, %.preheader.i25 ], [ %.pr, %bb.f ], [ %i.ep, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33.loopexit ] ; 5 uses
  %i.er = sdiv i32 %1, 28
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !18
  %i.eu = trunc i32 %i.er to i16
  %i.ev = add i16 %i.et, %i.eu
  store i16 %i.ev, ptr %i.es, align 2, !tbaa !18
  %i.ew = srem i32 %1, 28                         ; 3 uses
  %i.ex = icmp sgt i16 %3, 127
  br i1 %i.ex, label %bb.i, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32

bb.i:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32: ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread33
  %i.ey = icmp sgt i16 %3, 0
  br i1 %i.ey, label %.lr.ph.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i.i:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32
  %wide.trip.count.i.i = zext nneg i16 %3 to i64  ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.fa = sub nsw i32 28, %i.ew                   ; 2 uses
  %min.iters.check = icmp ult i16 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 32760    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert103 = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat104 = shufflevector <4 x i32> %broadcast.splatinsert103, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.fe, %vector.body ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %index ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fb, align 4, !tbaa !19 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !19 ; 2 uses
  %i.fd = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.fe = lshr <4 x i32> %wide.load105, %broadcast.splat ; 3 uses
  %i.ff = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.fd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fg = shufflevector <4 x i32> %i.fd, <4 x i32> %i.fe, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fh = shl <4 x i32> %wide.load, %broadcast.splat104
  %i.fi = shl <4 x i32> %wide.load105, %broadcast.splat104
  %i.fj = add <4 x i32> %i.fh, %i.ff
  %i.fk = add <4 x i32> %i.fi, %i.fg
  %i.fl = and <4 x i32> %i.fj, splat (i32 268435455)
  %i.fm = and <4 x i32> %i.fk, splat (i32 268435455)
  store <4 x i32> %i.fl, ptr %i.fb, align 4, !tbaa !19
  store <4 x i32> %i.fm, ptr %i.fc, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.fe, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.fq, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.fq, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i.i ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !19 ; 2 uses
  %i.fq = lshr i32 %i.fp, %i.fa                   ; 2 uses
  %i.fr = shl i32 %i.fp, %i.ew
  %i.fs = add i32 %i.fr, %.014.i.i
  %i.ft = and i32 %i.fs, 268435455
  store i32 %i.ft, ptr %i.fo, align 4, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !33

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.fu, align 4, !tbaa !19
  %i.fv = add nuw nsw i16 %3, 1
  store i16 %i.fv, ptr %0, align 4, !tbaa !17
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32.thread, %bb.j, %._crit_edge.i.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN6icu_7817double_conversion6Bignum9AddUInt64Em(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::double_conversion::Bignum", align 4 ; 6 uses
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
  br i1 %.not.i, label %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit, label %bb.b, !llvm.loop !0

_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit: ; preds = %bb.b
  %indvars = trunc i64 %indvars.iv.next.i to i16
  store i16 %indvars, ptr %2, align 4, !tbaa !17
  call void @_ZN6icu_7817double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6icu_7817double_conversion6Bignum5ClampEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #4 align 2 {
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
define void @_ZN6icu_7817double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  store i16 0, ptr %0, align 4, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 0, ptr %i.a, align 2, !tbaa !18
  %i.b = icmp sgt i32 %2, 896
  br i1 %i.b, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %.critedge.thread3.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = sext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %.not = icmp eq i64 %.19, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.f = phi i16 [ 0, %.lr.ph ], [ %i.ad, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 2 uses
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 4 uses
  %.0816 = phi i64 [ 0, %.lr.ph ], [ %.19, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.g = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !23
  %i.j = sext i8 %i.i to i32                      ; 4 uses
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.k, 10
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.k to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.j, -97
  %or.cond3.i = icmp ult i32 %i.m, 6
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.j, -87
  %i.o = zext nneg i32 %i.n to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

bb.g:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.j, -55
  %i.q = sext i32 %i.p to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

_ZN6icu_7817double_conversionL12HexCharValueEi.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.l, %bb.d ], [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = zext nneg i32 %.017 to i64
  %i.s = shl i64 %.0.i, %i.r
  %i.t = or i64 %i.s, %.0816                      ; 3 uses
  %i.u = add nsw i32 %.017, 4
  %i.v = icmp sgt i32 %.017, 23
  br i1 %i.v, label %bb.h, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.h:                                             ; preds = %_ZN6icu_7817double_conversionL12HexCharValueEi.exit
  %i.w = trunc i64 %i.t to i32
  %i.x = and i32 %i.w, 268435455
  %i.y = add i16 %i.f, 1                          ; 2 uses
  store i16 %i.y, ptr %0, align 4, !tbaa !17
  %i.z = sext i16 %i.f to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !19
  %i.ab = add nsw i32 %.017, -24
  %i.ac = lshr i64 %i.t, 28
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversionL12HexCharValueEi.exit, %bb.h
  %i.ad = phi i16 [ %i.y, %bb.h ], [ %i.f, %_ZN6icu_7817double_conversionL12HexCharValueEi.exit ] ; 4 uses
  %.19 = phi i64 [ %i.ac, %bb.h ], [ %i.t, %_ZN6icu_7817double_conversionL12HexCharValueEi.exit ] ; 3 uses
  %.1 = phi i32 [ %i.ab, %bb.h ], [ %i.u, %_ZN6icu_7817double_conversionL12HexCharValueEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.ae, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge, label %bb.c, !llvm.loop !34

bb.i:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %i.af = trunc i64 %.19 to i32
  %i.ag = and i32 %i.af, 268435455
  %i.ah = add i16 %i.ad, 1                        ; 2 uses
  store i16 %i.ah, ptr %0, align 4, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = sext i16 %i.ad to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %.pr.i = phi i16 [ %i.ah, %bb.i ], [ %i.ad, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge ] ; 3 uses
  %i.al = icmp sgt i16 %.pr.i, 0
  br i1 %i.al, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.am = phi i16 [ %i.ar, %bb.k ], [ %.pr.i, %bb.j ] ; 3 uses
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.k:                                             ; preds = %.lr.ph.i
  %i.ar = add nsw i16 %i.am, -1                   ; 2 uses
  store i16 %i.ar, ptr %0, align 4, !tbaa !17
  %i.as = icmp sgt i16 %i.am, 1
  br i1 %i.as, label %.lr.ph.i, label %.critedge.thread3.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.j
  %i.at = icmp eq i16 %.pr.i, 0
  br i1 %i.at, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.k, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader, %.critedge.i
  store i16 0, ptr %i.a, align 2, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i32 %1, 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !18
  %i.f = trunc i32 %i.c to i16
  %i.g = add i16 %i.e, %i.f
  store i16 %i.g, ptr %i.d, align 2, !tbaa !18
  %i.h = srem i32 %1, 28                          ; 3 uses
  %i.i = icmp sgt i16 %i.a, 127
  br i1 %i.i, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %bb.b
  %i.j = icmp sgt i16 %i.a, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %wide.trip.count.i = zext nneg i16 %i.a to i64  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = sub nsw i32 28, %i.h                     ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 32760      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert4 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat5 = shufflevector <4 x i32> %broadcast.splatinsert4, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !19 ; 2 uses
  %wide.load6 = load <4 x i32>, ptr %i.n, align 4, !tbaa !19 ; 2 uses
  %i.o = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.p = lshr <4 x i32> %wide.load6, %broadcast.splat ; 3 uses
  %i.q = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.o, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.r = shufflevector <4 x i32> %i.o, <4 x i32> %i.p, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.s = shl <4 x i32> %wide.load, %broadcast.splat5
  %i.t = shl <4 x i32> %wide.load6, %broadcast.splat5
  %i.u = add <4 x i32> %i.s, %i.q
  %i.v = add <4 x i32> %i.t, %i.r
  %i.w = and <4 x i32> %i.u, splat (i32 268435455)
  %i.x = and <4 x i32> %i.v, splat (i32 268435455)
  store <4 x i32> %i.w, ptr %i.m, align 4, !tbaa !19
  store <4 x i32> %i.x, ptr %i.n, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !45

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
  br i1 %.not.i, label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i = phi i32 [ %i.ab, %scalar.ph ], [ %.014.i.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !19  ; 2 uses
  %i.ab = lshr i32 %i.aa, %i.l                    ; 2 uses
  %i.ac = shl i32 %i.aa, %i.h
  %i.ad = add i32 %i.ac, %.014.i
  %i.ae = and i32 %i.ad, 268435455
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !46

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %wide.trip.count.i
  store i32 %.lcssa, ptr %i.af, align 4, !tbaa !19
  %i.ag = add nuw nsw i16 %i.a, 1
  store i16 %i.ag, ptr %0, align 4, !tbaa !17
  br label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit

_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit: ; preds = %bb.d, %._crit_edge.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !17     ; 5 uses
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
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !19 ; 2 uses
  %wide.load21 = load <4 x i32>, ptr %i.f, align 4, !tbaa !19 ; 2 uses
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
  store <4 x i32> %i.o, ptr %i.e, align 4, !tbaa !19
  store <4 x i32> %i.p, ptr %i.f, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !47

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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19   ; 2 uses
  %i.t = lshr i32 %i.s, %i.d                      ; 2 uses
  %i.u = shl i32 %i.s, %1
  %i.v = add i32 %i.u, %.014
  %i.w = and i32 %i.v, 268435455
  store i32 %i.w, ptr %i.r, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !48

bb.b:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = zext nneg i16 %i.a to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  store i32 %.lcssa, ptr %i.z, align 4, !tbaa !19
  %i.aa = add nuw i16 %i.a, 1
  store i16 %i.aa, ptr %0, align 4, !tbaa !17
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 1, label %.loopexit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !18
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !17     ; 6 uses
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
  %.017.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ag, %.preheader.unr-lcssa ]
  %lcmp.mod28 = trunc i16 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw i64 %i.i, %i.d
  %i.k = add i64 %i.j, %.017.epil.init            ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 268435455
  store i32 %i.m, ptr %i.g, align 4, !tbaa !19
  %i.n = lshr i64 %i.k, 28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ag, %.preheader.unr-lcssa ], [ %i.n, %.epil.preheader ] ; 2 uses
  %.not18 = icmp eq i64 %.lcssa, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = icmp sgt i16 %i.b, 127
  br i1 %i.p, label %._crit_edge, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.017 = phi i64 [ 0, %.lr.ph.new ], [ %i.ag, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw i64 %i.s, %i.d
  %i.u = add i64 %i.t, %.017                      ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 268435455
  store i32 %i.w, ptr %i.q, align 4, !tbaa !19
  %i.x = lshr i64 %i.u, 28
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !19
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul nuw i64 %i.ab, %i.d
  %i.ad = add i64 %i.ac, %i.x                     ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 268435455
  store i32 %i.af, ptr %i.z, align 4, !tbaa !19
  %i.ag = lshr i64 %i.ad, 28                      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.d, !llvm.loop !4

bb.e:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %2 = icmp sgt i16 %3, 126
  br i1 %2, label %._crit_edge.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !5

._crit_edge.loopexit:                             ; preds = %bb.e
  store i16 %i.al, ptr %0, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph20
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %.lr.ph20, %bb.e
  %.11926 = phi i64 [ %i.am, %bb.e ], [ %.lcssa, %.lr.ph20 ] ; 2 uses
  %3 = phi i16 [ %i.al, %bb.e ], [ %i.b, %.lr.ph20 ] ; 3 uses
  %i.ah = trunc i64 %.11926 to i32
  %i.ai = and i32 %i.ah, 268435455
  %i.aj = zext nneg i16 %3 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !19
  %i.al = add nuw nsw i16 %3, 1                   ; 3 uses
  %i.am = lshr i64 %.11926, 28                    ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %.loopexit.loopexit, label %bb.e, !llvm.loop !5

.loopexit.loopexit:                               ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  store i16 %i.al, ptr %0, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 1, label %.loopexit
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !18
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !17     ; 7 uses
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
  %.023.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ay, %.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i16 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil.init ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = mul nuw i64 %i.d, %i.l
  %i.n = and i64 %.023.epil.init, 268435455
  %i.o = add nuw i64 %i.m, %i.n                   ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 268435455
  store i32 %i.q, ptr %i.j, align 4, !tbaa !19
  %i.r = lshr i64 %.023.epil.init, 28
  %i.s = lshr i64 %i.o, 28
  %i.t = mul i64 %i.h, %i.l
  %i.u = add i64 %i.t, %i.r
  %i.v = add i64 %i.u, %i.s
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ay, %.preheader.unr-lcssa ], [ %i.v, %.epil.preheader ] ; 2 uses
  %.not24 = icmp eq i64 %.lcssa, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = icmp sgt i16 %i.b, 127
  br i1 %i.x, label %._crit_edge, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.023 = phi i64 [ 0, %.lr.ph.new ], [ %i.ay, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = mul nuw i64 %i.d, %i.aa
  %i.ac = and i64 %.023, 268435455
  %i.ad = add nuw i64 %i.ab, %i.ac                ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 268435455
  store i32 %i.af, ptr %i.y, align 4, !tbaa !19
  %i.ag = lshr i64 %.023, 28
  %i.ah = lshr i64 %i.ad, 28
  %i.ai = mul i64 %i.h, %i.aa
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !19
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = mul nuw i64 %i.d, %i.ao
  %i.aq = and i64 %i.ak, 268435455
  %i.ar = add nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 268435455
  store i32 %i.at, ptr %i.am, align 4, !tbaa !19
  %i.au = lshr i64 %i.ak, 28
  %i.av = lshr i64 %i.ar, 28
  %i.aw = mul i64 %i.h, %i.ao
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %i.ax, %i.av                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.e, !llvm.loop !2

bb.f:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.az = icmp sgt i16 %i.ba, 126
  br i1 %i.az, label %._crit_edge.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !3

._crit_edge.loopexit:                             ; preds = %bb.f
  store i16 %i.bf, ptr %0, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph26
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %.lr.ph26, %bb.f
  %.12532 = phi i64 [ %i.bg, %bb.f ], [ %.lcssa, %.lr.ph26 ] ; 2 uses
  %i.ba = phi i16 [ %i.bf, %bb.f ], [ %i.b, %.lr.ph26 ] ; 3 uses
  %i.bb = trunc i64 %.12532 to i32
  %i.bc = and i32 %i.bb, 268435455
  %i.bd = zext nneg i16 %i.ba to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bd
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !19
  %i.bf = add nuw nsw i16 %i.ba, 1                ; 3 uses
  %i.bg = lshr i64 %.12532, 28                    ; 2 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit.loopexit, label %bb.f, !llvm.loop !3

.loopexit.loopexit:                               ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  store i16 %i.bf, ptr %0, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %.preheader, %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN6icu_7817double_conversion6Bignum6SquareEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !17     ; 5 uses
  %i.b = sext i16 %i.a to i32                     ; 6 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp sgt i16 %i.a, 64
  br i1 %i.d, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.e = icmp sgt i16 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = zext nneg i32 %i.b to i64                ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 17 uses
  %min.iters.check = icmp ult i16 %i.a, 8
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader169, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 32760                    ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !19
  %wide.load123 = load <4 x i32>, ptr %i.h, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  store <4 x i32> %wide.load, ptr %invariant.gep, align 4, !tbaa !19
  store <4 x i32> %wide.load123, ptr %i.i, align 4, !tbaa !19
  %i.j = icmp eq i64 %n.vec, 8
  br i1 %i.j, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %wide.load.1 = load <4 x i32>, ptr %i.k, align 4, !tbaa !19
  %wide.load123.1 = load <4 x i32>, ptr %i.l, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  store <4 x i32> %wide.load.1, ptr %i.m, align 4, !tbaa !19
  store <4 x i32> %wide.load123.1, ptr %i.n, align 4, !tbaa !19
  %i.o = icmp eq i64 %n.vec, 16
  br i1 %i.o, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.load.2 = load <4 x i32>, ptr %i.p, align 4, !tbaa !19
  %wide.load123.2 = load <4 x i32>, ptr %i.q, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  store <4 x i32> %wide.load.2, ptr %i.r, align 4, !tbaa !19
  store <4 x i32> %wide.load123.2, ptr %i.s, align 4, !tbaa !19
  %i.t = icmp eq i64 %n.vec, 24
  br i1 %i.t, label %middle.block, label %vector.body.3
end_hunk_1
