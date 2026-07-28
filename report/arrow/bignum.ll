inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN14arrow_vendored17double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE:bb.a
  %i.ag = add nsw i64 %i.af, -48
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19
  %i.al = sext i8 %i.ak to i64
  %i.am = mul nsw i64 %i.ah, 10
  %i.an = add nsw i64 %i.am, -48
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = sext i8 %i.ar to i64
  %i.at = mul nsw i64 %i.ao, 10
  %i.au = add nsw i64 %i.at, -48
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = sext i8 %i.ay to i64
  %i.ba = mul nsw i64 %i.av, 10
  %i.bb = add nsw i64 %i.ba, -48
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19
  %i.bg = sext i8 %i.bf to i64
  %i.bh = mul nsw i64 %i.bc, 10
  %i.bi = add nsw i64 %i.bh, -48
  %i.bj = add nsw i64 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = sext i8 %i.bm to i64
  %i.bo = mul nsw i64 %i.bj, 10
  %i.bp = add nsw i64 %i.bo, -48
  %i.bq = add nsw i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !19
  %i.bu = sext i8 %i.bt to i64
  %i.bv = mul nsw i64 %i.bq, 10
  %i.bw = add nsw i64 %i.bv, -48
  %i.bx = add nsw i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !19
  %i.cb = sext i8 %i.ca to i64
  %i.cc = mul nsw i64 %i.bx, 10
  %i.cd = add nsw i64 %i.cc, -48
  %i.ce = add nsw i64 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !19
  %i.ci = sext i8 %i.ch to i64
  %i.cj = mul nsw i64 %i.ce, 10
  %i.ck = add nsw i64 %i.cj, -48
  %i.cl = add nsw i64 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 13
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !19
  %i.cp = sext i8 %i.co to i64
  %i.cq = mul nsw i64 %i.cl, 10
  %i.cr = add nsw i64 %i.cq, -48
  %i.cs = add nsw i64 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 14
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cw = sext i8 %i.cv to i64
  %i.cx = mul nsw i64 %i.cs, 10
  %i.cy = add nsw i64 %i.cx, -48
  %i.cz = add nsw i64 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !19
  %i.dd = sext i8 %i.dc to i64
  %i.de = mul nsw i64 %i.cz, 10
  %i.df = add nsw i64 %i.de, -48
  %i.dg = add nsw i64 %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !19
  %i.dk = sext i8 %i.dj to i64
  %i.dl = mul nsw i64 %i.dg, 10
  %i.dm = add nsw i64 %i.dl, -48
  %i.dn = add nsw i64 %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 17
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !19
  %i.dr = sext i8 %i.dq to i64
  %i.ds = mul i64 %i.dn, 10
  %i.dt = add i64 %i.ds, -48
  %i.du = add i64 %i.dt, %i.dr
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 18
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !19
  %i.dy = sext i8 %i.dx to i64
  %i.dz = mul i64 %i.du, 10
  %i.ea = add i64 %i.dz, -48
  %i.eb = add i64 %i.ea, %i.dy                    ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 19 ; 2 uses
  %i.ec = add nsw i32 %.032, -19                  ; 2 uses
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %0, i32 noundef 19)
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit, label %.lr.ph.i.i

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
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i26
  %i.fc = phi i16 [ %.pr.i, %.lr.ph.i26 ], [ %i.fh, %bb.e ] ; 3 uses
  %i.fd = zext nneg i16 %i.fc to i64
  %6 = add nuw nsw i64 %i.fd, 4294967295
  %7 = and i64 %6, 4294967295
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %7
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.e, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.e:                                             ; preds = %bb.d
  %i.fh = add nsw i16 %i.fc, -1                   ; 2 uses
  store i16 %i.fh, ptr %0, align 4, !tbaa !7
  %i.fi = icmp sgt i16 %i.fc, 1
  br i1 %i.fi, label %bb.d, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit25
  %i.fj = icmp eq i16 %.pr.i, 0
  br i1 %i.fj, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

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
  br i1 %or.cond, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 26
  br i1 %i.d, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit, %.preheader39
  %.promoted51 = phi i16 [ %i.b, %.preheader39 ], [ %i.be, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %.preheader39 ], [ %i.bf, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 3 uses
  %i.f = icmp sgt i32 %.0.lcssa, 12
  br i1 %i.f, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit
  %.047 = phi i32 [ %1, %.lr.ph ], [ %i.bf, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 2 uses
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
  %lcmp.mod128 = trunc i16 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
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
  %.lcssa122 = phi i64 [ %i.ay, %.preheader.i.unr-lcssa ], [ %i.w, %.epil.preheader ] ; 2 uses
  %.not24.i = icmp eq i64 %.lcssa122, 0
  br i1 %.not24.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.preheader.i
  %i.x = tail call i16 @llvm.umax.i16(i16 %i.h, i16 128)
  %wide.trip.count31.i = zext nneg i16 %i.x to i64
  %exitcond32.i95 = icmp ugt i16 %i.h, 127
  br i1 %exitcond32.i95, label %.lr.ph26.i._crit_edge, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

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
  %exitcond32.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.i, label %.lr.ph26.i._crit_edge.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, !llvm.loop !24

.lr.ph26.i._crit_edge.loopexit:                   ; preds = %bb.d
  store i16 %i.bc, ptr %0, align 4, !tbaa !7
  br label %.lr.ph26.i._crit_edge

.lr.ph26.i._crit_edge:                            ; preds = %.lr.ph26.i, %.lr.ph26.i._crit_edge.loopexit
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %.lr.ph26.i, %bb.d
  %.125.i97 = phi i64 [ %i.bd, %bb.d ], [ %.lcssa122, %.lr.ph26.i ] ; 2 uses
  %indvars.iv28.i96 = phi i64 [ %indvars.iv.next29.i, %bb.d ], [ %wide.trip.count.i, %.lr.ph26.i ] ; 2 uses
  %i.az = trunc i64 %.125.i97 to i32
  %i.ba = and i32 %i.az, 268435455
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv28.i96
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i96, 1 ; 3 uses
  %i.bc = trunc nsw i64 %indvars.iv.next29.i to i16 ; 3 uses
  %i.bd = lshr i64 %.125.i97, 28                  ; 2 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit, label %bb.d, !llvm.loop !24

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  store i16 %i.bc, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit, %bb.b, %.preheader.i
  %i.be = phi i16 [ %i.h, %.preheader.i ], [ %i.h, %bb.b ], [ %i.bc, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em.exit.loopexit ] ; 2 uses
  %i.bf = add nsw i32 %.047, -27                  ; 2 uses
  %i.bg = icmp sgt i32 %.047, 53
  br i1 %i.bg, label %bb.b, label %.preheader, !llvm.loop !25

bb.e:                                             ; preds = %.lr.ph49, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %i.bh = phi i16 [ %.promoted51, %.lr.ph49 ], [ %i.cp, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 8 uses
  %.148 = phi i32 [ %.0.lcssa, %.lr.ph49 ], [ %i.cq, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 2 uses
  %i.bi = icmp sgt i16 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i11, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit

.lr.ph.i11:                                       ; preds = %bb.e
  %wide.trip.count.i12 = zext nneg i16 %i.bh to i64 ; 3 uses
  %xtraiter130 = and i64 %wide.trip.count.i12, 1
  %i.bj = icmp eq i16 %i.bh, 1
  br i1 %i.bj, label %.epil.preheader129, label %.lr.ph.i11.new

.lr.ph.i11.new:                                   ; preds = %.lr.ph.i11
  %unroll_iter134 = and i64 %wide.trip.count.i12, 32766
  br label %bb.f

.preheader.i16.unr-lcssa:                         ; preds = %bb.f
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.preheader.i16, label %.epil.preheader129

.epil.preheader129:                               ; preds = %.preheader.i16.unr-lcssa, %.lr.ph.i11
  %indvars.iv.i13.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %indvars.iv.next.i14.1, %.preheader.i16.unr-lcssa ]
  %.017.i.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %i.cj, %.preheader.i16.unr-lcssa ]
  %lcmp.mod133 = trunc i16 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i13.epil.init ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
bb.j:                                             ; preds = %bb.j, %.lr.ph.i19.new
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i19.new ], [ %indvars.iv.next.i23.1, %bb.j ] ; 3 uses
  %.017.i22 = phi i64 [ 0, %.lr.ph.i19.new ], [ %i.eb, %bb.j ]
  %niter142 = phi i64 [ 0, %.lr.ph.i19.new ], [ %niter142.next.1, %bb.j ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i21 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.cz
  %i.dp = add i64 %i.do, %.017.i22                ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 268435455
  store i32 %i.dr, ptr %i.dl, align 4, !tbaa !3
  %i.ds = lshr i64 %i.dp, 28
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i21
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = zext i32 %i.dv to i64
  %i.dx = mul nuw i64 %i.dw, %i.cz
  %i.dy = add i64 %i.dx, %i.ds                    ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 268435455
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !3
  %i.eb = lshr i64 %i.dy, 28                      ; 3 uses
  %indvars.iv.next.i23.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter142.next.1 = add i64 %niter142, 2         ; 2 uses
  %niter142.ncmp.1 = icmp eq i64 %niter142.next.1, %unroll_iter141
  br i1 %niter142.ncmp.1, label %.preheader.i25.unr-lcssa, label %bb.j, !llvm.loop !26

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i32
  %exitcond26.i31 = icmp eq i64 %indvars.iv.next23.i33, %wide.trip.count25.i28
  br i1 %exitcond26.i31, label %._crit_edge106.loopexit, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i32, !llvm.loop !27

._crit_edge106.loopexit:                          ; preds = %bb.k
  store i16 %i.ef, ptr %0, align 4, !tbaa !7
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %.lr.ph20.i27
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i32: ; preds = %.lr.ph20.i27, %bb.k
  %.119.i30105 = phi i64 [ %i.eg, %bb.k ], [ %.lcssa114, %.lr.ph20.i27 ] ; 2 uses
  %indvars.iv22.i29104 = phi i64 [ %indvars.iv.next23.i33, %bb.k ], [ %wide.trip.count.i20, %.lr.ph20.i27 ] ; 2 uses
  %i.ec = trunc i64 %.119.i30105 to i32
  %i.ed = and i32 %i.ec, 268435455
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv22.i29104
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  %indvars.iv.next23.i33 = add nuw nsw i64 %indvars.iv22.i29104, 1 ; 3 uses
  %i.ef = trunc nsw i64 %indvars.iv.next23.i33 to i16 ; 3 uses
  %i.eg = lshr i64 %.119.i30105, 28               ; 2 uses
  %.not.i34 = icmp eq i64 %i.eg, 0
  br i1 %.not.i34, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37.loopexit, label %bb.k, !llvm.loop !27

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35: ; preds = %bb.h, %._crit_edge, %bb.i
  %i.eh = icmp eq i16 %.pr, 0
  br i1 %i.eh, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37.loopexit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i32
  store i16 %i.ef, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37.loopexit, %.preheader.i25, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35
  %i.ei = phi i16 [ %.pr, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35 ], [ %.pr, %.preheader.i25 ], [ %i.ef, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37.loopexit ] ; 5 uses
  %i.ej = sdiv i32 %1, 28
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !10
  %i.em = trunc i32 %i.ej to i16
  %i.en = add i16 %i.el, %i.em
  store i16 %i.en, ptr %i.ek, align 2, !tbaa !10
  %i.eo = srem i32 %1, 28                         ; 3 uses
  %i.ep = icmp sgt i16 %i.ei, 127
  br i1 %i.ep, label %bb.l, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i36

bb.l:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i36: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread37
  %i.eq = icmp sgt i16 %i.ei, 0
  br i1 %i.eq, label %.lr.ph.i.i, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i36
  %wide.trip.count.i.i = zext nneg i16 %i.ei to i64 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.es = sub nsw i32 28, %i.eo                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.ei, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 32760    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert107 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat108 = shufflevector <4 x i32> %broadcast.splatinsert107, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.ew, %vector.body ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %index ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.et, align 4, !tbaa !3 ; 2 uses
  %wide.load109 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !3 ; 2 uses
  %i.ev = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.ew = lshr <4 x i32> %wide.load109, %broadcast.splat ; 3 uses
  %i.ex = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ev, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ey = shufflevector <4 x i32> %i.ev, <4 x i32> %i.ew, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ez = shl <4 x i32> %wide.load, %broadcast.splat108
  %i.fa = shl <4 x i32> %wide.load109, %broadcast.splat108
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

_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit: ; preds = %bb.m, %._crit_edge.i.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i36, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit35.thread, %bb.a
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
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.b = phi i16 [ %.pr, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %i.c = zext nneg i16 %i.b to i64
  %2 = add nuw nsw i64 %i.c, 4294967295
  %3 = and i64 %2, 4294967295
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i16 %i.b, -1                     ; 2 uses
  store i16 %i.g, ptr %0, align 4, !tbaa !7
  %i.h = icmp sgt i16 %i.b, 1
  br i1 %i.h, label %bb.b, label %.critedge.thread3, !llvm.loop !22

.critedge:                                        ; preds = %bb.a
  %i.i = icmp eq i16 %.pr, 0
  br i1 %i.i, label %.critedge.thread3, label %.critedge.thread

.critedge.thread3:                                ; preds = %bb.c, %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.j, align 2, !tbaa !10
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge.thread3, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 0, ptr %i.a, align 2, !tbaa !10
  %i.b = icmp sgt i32 %2, 896
  br i1 %i.b, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %.critedge.thread3.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = sext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %.not = icmp eq i64 %.19, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ] ; 2 uses
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ] ; 4 uses
  %.0816 = phi i64 [ 0, %.lr.ph ], [ %.19, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.f = phi i16 [ 0, %.lr.ph ], [ %i.ad, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ] ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = sext i8 %i.i to i32                      ; 4 uses
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.k, 10
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.k to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.j, -97
  %or.cond3.i = icmp ult i32 %i.m, 6
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.j, -87
  %i.o = zext nneg i32 %i.n to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

bb.g:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.j, -55
  %i.q = sext i32 %i.p to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.l, %bb.d ], [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = zext nneg i32 %.017 to i64
  %i.s = shl i64 %.0.i, %i.r
  %i.t = or i64 %i.s, %.0816                      ; 3 uses
  %i.u = add nsw i32 %.017, 4
  %i.v = icmp sgt i32 %.017, 23
  br i1 %i.v, label %bb.h, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.h:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit
  %i.w = trunc i64 %i.t to i32
  %i.x = and i32 %i.w, 268435455
  %i.y = add i16 %i.f, 1                          ; 2 uses
  store i16 %i.y, ptr %0, align 4, !tbaa !7
  %i.z = sext i16 %i.f to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !3
  %i.ab = add nsw i32 %.017, -24
  %i.ac = lshr i64 %i.t, 28
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit, %bb.h
  %i.ad = phi i16 [ %i.y, %bb.h ], [ %i.f, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ] ; 4 uses
  %.19 = phi i64 [ %i.ac, %bb.h ], [ %i.t, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ] ; 3 uses
  %.1 = phi i32 [ %i.ab, %bb.h ], [ %i.u, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.ae, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge, label %bb.c, !llvm.loop !31

bb.i:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %i.af = trunc i64 %.19 to i32
  %i.ag = and i32 %i.af, 268435455
  %i.ah = add i16 %i.ad, 1                        ; 2 uses
  store i16 %i.ah, ptr %0, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = sext i16 %i.ad to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %.pr.i = phi i16 [ %i.ah, %bb.i ], [ %i.ad, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge ] ; 3 uses
  %i.al = icmp sgt i16 %.pr.i, 0
  br i1 %i.al, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.j
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %i.am = phi i16 [ %.pr.i, %.lr.ph.i ], [ %i.ar, %bb.l ] ; 3 uses
  %i.an = zext nneg i16 %i.am to i64
  %4 = add nuw nsw i64 %i.an, 4294967295
  %5 = and i64 %4, 4294967295
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %5
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i16 %i.am, -1                   ; 2 uses
  store i16 %i.ar, ptr %0, align 4, !tbaa !7
  %i.as = icmp sgt i16 %i.am, 1
  br i1 %i.as, label %bb.k, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.j
  %i.at = icmp eq i16 %.pr.i, 0
  br i1 %i.at, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.l, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader, %.critedge.i
  store i16 0, ptr %i.a, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.k, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum9AddBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  %.pre = load i16, ptr %0, align 4, !tbaa !7     ; 6 uses
  br i1 %i.e, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = sext i16 %.pre to i32
  %i.j = add nsw i32 %i.h, %i.i
  %i.k = icmp sgt i32 %i.j, 128
  br i1 %i.k, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.l = icmp sgt i16 %.pre, 0
  br i1 %i.l, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.m = zext nneg i16 %.pre to i64               ; 6 uses
  %i.n = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %min.iters.check = icmp ult i16 %.pre, 16
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = sext i16 %i.d to i64
  %i.p = sext i16 %i.b to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, -1
  %diff.check = icmp ult i64 %i.s, 31
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 32760                    ; 2 uses
  %i.t = and i64 %i.m, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = sub i64 %i.m, %index                     ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -12
  %i.x = getelementptr i8, ptr %i.v, i64 -28
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !3
  %wide.load74 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %i.y = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %i.aa = getelementptr i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4, !tbaa !3
  store <4 x i32> %wide.load74, ptr %i.aa, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i ], [ %i.t, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = zext nneg i32 %i.h to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ae, i1 false), !tbaa !3
  %i.af = trunc i32 %i.h to i16                   ; 2 uses
  %i.ag = add i16 %.pre, %i.af                    ; 2 uses
  store i16 %i.ag, ptr %0, align 4, !tbaa !7
  %i.ah = sub i16 %i.b, %i.af                     ; 2 uses
  store i16 %i.ah, ptr %i.a, align 2, !tbaa !10
  %.pre66 = load i16, ptr %i.c, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.aj, ptr %gep.i, align 4, !tbaa !3
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ak, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !33

_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.al = phi i16 [ %i.d, %bb.a ], [ %.pre66, %.lr.ph20.i ]
  %i.am = phi i16 [ %i.b, %bb.a ], [ %i.ah, %.lr.ph20.i ]
  %i.an = phi i16 [ %.pre, %bb.a ], [ %i.ag, %.lr.ph20.i ] ; 4 uses
  %i.ao = sext i16 %i.an to i32                   ; 4 uses
  %i.ap = sext i16 %i.am to i32                   ; 4 uses
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = load i16, ptr %1, align 4, !tbaa !7     ; 4 uses
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = sext i16 %i.al to i32                   ; 3 uses
  %i.au = add nsw i32 %i.at, %i.as
  %.sroa.speculated35 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.au)
  %reass.sub = sub nsw i32 %.sroa.speculated35, %i.ap
  %i.av = icmp sgt i32 %reass.sub, 127
  br i1 %i.av, label %bb.d, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  %i.aw = sub nsw i32 %i.at, %i.ap                ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, %i.ao
  br i1 %i.ax, label %.lr.ph, label %.preheader42

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.ay = sext i16 %i.an to i64
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = getelementptr i8, ptr %0, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 4
  %i.bb = xor i32 %i.ap, -1
  %i.bc = add nsw i32 %i.bb, %i.at
  %i.bd = sub nsw i32 %i.bc, %i.ao
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false), !tbaa !3
  br label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.bh = icmp sgt i16 %i.ar, 0
  br i1 %i.bh, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader42
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bk = sext i32 %i.aw to i64                   ; 2 uses
  %i.bl = sext i16 %i.an to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bm = icmp eq i16 %i.ar, 1
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph47.new

.lr.ph47.new:                                     ; preds = %.lr.ph47
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.f

.preheader.unr-lcssa:                             ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph47
  %indvars.iv58.epil.init = phi i64 [ %i.bk, %.lr.ph47 ], [ %indvars.iv.next59.1, %.preheader.unr-lcssa ] ; 4 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ]
  %.046.epil.init = phi i32 [ 0, %.lr.ph47 ], [ %i.cx, %.preheader.unr-lcssa ]
  %lcmp.mod77 = trunc i16 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.bn = icmp slt i64 %indvars.iv58.epil.init, %i.bl
  br i1 %i.bn, label %bb.e, label %.preheader.epilog-lcssa

bb.e:                                             ; preds = %.epil.preheader
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv58.epil.init
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  br label %.preheader.epilog-lcssa

.preheader.epilog-lcssa:                          ; preds = %bb.e, %.epil.preheader
  %i.bq = phi i32 [ %i.bp, %bb.e ], [ 0, %.epil.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.epil.init
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = add i32 %i.bq, %.046.epil.init
  %i.bu = add i32 %i.bt, %i.bs                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_:bb.a

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum14SubtractBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = load i16, ptr %0, align 4, !tbaa !7      ; 5 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.h, %i.j
  %i.l = icmp sgt i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.m = icmp sgt i16 %i.i, 0
  br i1 %i.m, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.n = zext nneg i16 %i.i to i64                ; 6 uses
  %i.o = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp ult i16 %i.i, 16
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = shl nsw i64 %i.r, 2
  %i.t = add nsw i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 32760                    ; 2 uses
  %i.u = and i64 %i.n, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = sub i64 %i.n, %index                     ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -12
  %i.y = getelementptr i8, ptr %i.w, i64 -28
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %wide.load46 = load <4 x i32>, ptr %i.y, align 4, !tbaa !3
  %i.z = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.v ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -28
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !3
  store <4 x i32> %wide.load46, ptr %i.ab, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i ], [ %i.u, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = zext nneg i32 %i.h to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.af, i1 false), !tbaa !3
  %i.ag = trunc i32 %i.h to i16                   ; 2 uses
  %i.ah = add i16 %i.i, %i.ag
  store i16 %i.ah, ptr %0, align 4, !tbaa !7
  %i.ai = sub i16 %i.b, %i.ag                     ; 2 uses
  store i16 %i.ai, ptr %i.a, align 2, !tbaa !10
  %.pre = load i16, ptr %i.c, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ak, ptr %gep.i, align 4, !tbaa !3
  %i.al = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.al, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !39

_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.am = phi i16 [ %i.b, %bb.a ], [ %i.ai, %.lr.ph20.i ]
  %i.an = phi i16 [ %i.d, %bb.a ], [ %.pre, %.lr.ph20.i ]
  %i.ao = sext i16 %i.an to i32
  %i.ap = sext i16 %i.am to i32
  %i.aq = sub nsw i32 %i.ao, %i.ap                ; 2 uses
  %i.ar = load i16, ptr %1, align 4, !tbaa !7     ; 4 uses
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = icmp sgt i16 %i.ar, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.aw = sext i32 %i.aq to i64
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.au, i64 %i.aw ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ax = icmp eq i16 %i.ar, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.d

.preheader.unr-lcssa:                             ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ] ; 2 uses
  %.028.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bv, %.preheader.unr-lcssa ]
  %lcmp.mod48 = trunc i16 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.ay = load i32, ptr %gep.epil, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = add i32 %.028.epil.init, %i.ba
  %i.bc = sub i32 %i.ay, %i.bb                    ; 2 uses
  %i.bd = and i32 %i.bc, 268435455
  store i32 %i.bd, ptr %gep.epil, align 4, !tbaa !3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.bt, %.preheader.unr-lcssa ], [ %i.bc, %.epil.preheader ]
  %i.be = icmp sgt i32 %.lcssa, -1
  br i1 %i.be, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader
  %i.bf = zext nneg i32 %i.as to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = sext i32 %i.aq to i64
  %invariant.gep44 = getelementptr [4 x i8], ptr %i.bg, i64 %i.bh
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.028 = phi i32 [ 0, %.lr.ph.new ], [ %i.bv, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bi = load i32, ptr %gep, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = add i32 %.028, %i.bk
  %i.bm = sub i32 %i.bi, %i.bl                    ; 2 uses
  %i.bn = and i32 %i.bm, 268435455
  store i32 %i.bn, ptr %gep, align 4, !tbaa !3
  %i.bo = lshr i32 %i.bm, 31
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bp = load i32, ptr %gep.1, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add i32 %i.bo, %i.br
  %i.bt = sub i32 %i.bp, %i.bs                    ; 3 uses
  %i.bu = and i32 %i.bt, 268435455
  store i32 %i.bu, ptr %gep.1, align 4, !tbaa !3
  %i.bv = lshr i32 %i.bt, 31                      ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.d, !llvm.loop !40

bb.e:                                             ; preds = %.lr.ph32, %bb.e
  %indvars.iv36 = phi i64 [ %i.bf, %.lr.ph32 ], [ %indvars.iv.next37, %bb.e ] ; 2 uses
  %gep45 = getelementptr [4 x i8], ptr %invariant.gep44, i64 %indvars.iv36 ; 2 uses
  %i.bw = load i32, ptr %gep45, align 4, !tbaa !3
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  %i.by = and i32 %i.bx, 268435455
  store i32 %i.by, ptr %gep45, align 4, !tbaa !3
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %.not = icmp sgt i32 %i.bx, -1
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.e, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit, %.preheader
  %.pr.i = load i16, ptr %0, align 4, !tbaa !7    ; 3 uses
  %i.bz = icmp sgt i16 %.pr.i, 0
  br i1 %i.bz, label %.lr.ph.i25, label %.critedge.i

.lr.ph.i25:                                       ; preds = %._crit_edge
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i25
  %i.ca = phi i16 [ %.pr.i, %.lr.ph.i25 ], [ %i.cf, %bb.g ] ; 3 uses
  %i.cb = zext nneg i16 %i.ca to i64
  %3 = add nuw nsw i64 %i.cb, 4294967295
  %4 = and i64 %3, 4294967295
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.g, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.cf = add nsw i16 %i.ca, -1                   ; 2 uses
  store i16 %i.cf, ptr %0, align 4, !tbaa !7
  %i.cg = icmp sgt i16 %i.ca, 1
  br i1 %i.cg, label %bb.f, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %._crit_edge
  %i.ch = icmp eq i16 %.pr.i, 0
  br i1 %i.ch, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.g, %.critedge.i
  store i16 0, ptr %i.a, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.f, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7      ; 6 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %_ZN14arrow_vendored17double_conversion6Bignum15BigitsShiftLeftEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i32 %1, 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !10
  %i.f = trunc i32 %i.c to i16
  %i.g = add i16 %i.e, %i.f
  store i16 %i.g, ptr %i.d, align 2, !tbaa !10
  %i.h = srem i32 %1, 28                          ; 3 uses
  %i.i = icmp sgt i16 %i.a, 127
  br i1 %i.i, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %bb.b
  %i.j = icmp sgt i16 %i.a, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN14arrow_vendored17double_conversion6Bignum15BigitsShiftLeftEi.exit

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
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
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !3 ; 2 uses
  %wide.load6 = load <4 x i32>, ptr %i.n, align 4, !tbaa !3 ; 2 uses
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

end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored17double_conversion6Bignum6SquareEv:bb.a
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
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %wide.load135 = load <2 x i32>, ptr %i.bc, align 4, !tbaa !3
  %wide.load136 = load <2 x i32>, ptr %i.bd, align 4, !tbaa !3
  %i.be = zext <2 x i32> %reverse to <2 x i64>
  %i.bf = zext <2 x i32> %reverse134 to <2 x i64>
  %i.bg = zext <2 x i32> %wide.load135 to <2 x i64>
  %i.bh = zext <2 x i32> %wide.load136 to <2 x i64>
  %i.bi = mul nuw <2 x i64> %i.bg, %i.be
  %i.bj = mul nuw <2 x i64> %i.bh, %i.bf
  %i.bk = add <2 x i64> %i.bi, %vec.phi           ; 2 uses
  %i.bl = add <2 x i64> %i.bj, %vec.phi131        ; 2 uses
  %index.next137 = add nuw i64 %index130, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next137, %n.vec128
  br i1 %i.bm, label %middle.block138, label %vector.body129, !llvm.loop !47

middle.block138:                                  ; preds = %vector.body129
  %bin.rdx = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n139 = icmp eq i64 %indvars.iv84, %n.vec128
  br i1 %cmp.n139, label %.loopexit, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.preheader51, %middle.block138
  %indvars.iv75.ph = phi i64 [ 0, %.preheader51 ], [ %n.vec128, %middle.block138 ]
  %indvars.iv73.ph = phi i64 [ %indvars.iv71, %.preheader51 ], [ %i.aw, %middle.block138 ]
  %.156.ph = phi i64 [ %.058, %.preheader51 ], [ %i.bn, %middle.block138 ]
  br label %scalar.ph124

.preheader:                                       ; preds = %.loopexit, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %.0.lcssa = phi i64 [ 0, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader ], [ %i.cc, %.loopexit ]
  %i.bo = icmp sgt i32 %i.c, %i.b
  br i1 %i.bo, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %.preheader
  %i.bp = add nsw i32 %i.b, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.br = sext i16 %i.a to i64                    ; 7 uses
  %i.bs = sext i32 %i.bp to i64
  %wide.trip.count105 = sext i32 %i.c to i64
  %invariant.op = add nsw i64 %i.bs, %i.br
  %wide.trip.count100 = zext i32 %i.b to i64      ; 2 uses
  %invariant.gep117 = getelementptr [4 x i8], ptr %0, i64 %i.br ; 2 uses
  %invariant.gep119 = getelementptr [4 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  br label %bb.e

scalar.ph124:                                     ; preds = %scalar.ph124.preheader, %scalar.ph124
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph124 ], [ %indvars.iv75.ph, %scalar.ph124.preheader ] ; 2 uses
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %scalar.ph124 ], [ %indvars.iv73.ph, %scalar.ph124.preheader ] ; 2 uses
  %.156 = phi i64 [ %i.by, %scalar.ph124 ], [ %.156.ph, %scalar.ph124.preheader ]
  %gep114 = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv73
  %i.bt = load i32, ptr %gep114, align 4, !tbaa !3
  %gep116 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep115, i64 %indvars.iv75
  %i.bu = load i32, ptr %gep116, align 4, !tbaa !3
  %i.bv = zext i32 %i.bt to i64
  %i.bw = zext i32 %i.bu to i64
  %i.bx = mul nuw i64 %i.bw, %i.bv
  %i.by = add i64 %i.bx, %.156                    ; 2 uses
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next76, %indvars.iv84
  br i1 %exitcond83.not, label %.loopexit, label %scalar.ph124, !llvm.loop !48

.loopexit:                                        ; preds = %scalar.ph124, %middle.block138
  %.lcssa121 = phi i64 [ %i.bn, %middle.block138 ], [ %i.by, %scalar.ph124 ] ; 2 uses
  %i.bz = trunc i64 %.lcssa121 to i32
  %i.ca = and i32 %i.bz, 268435455
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv71
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  %i.cc = lshr i64 %.lcssa121, 28                 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next72, %i.at
  br i1 %exitcond90.not, label %.preheader, label %.preheader51, !llvm.loop !49

._crit_edge67:                                    ; preds = %._crit_edge, %.preheader
  %i.cd = trunc i32 %i.c to i16                   ; 4 uses
  store i16 %i.cd, ptr %0, align 4, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !10
  %i.cg = shl i16 %i.cf, 1
  store i16 %i.cg, ptr %i.ce, align 2, !tbaa !10
  %i.ch = icmp sgt i16 %i.cd, 0
  br i1 %i.ch, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %._crit_edge67
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.ci = phi i16 [ %i.cd, %.lr.ph.i ], [ %i.cn, %bb.d ] ; 5 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %2 = add nuw nsw i64 %i.cj, 4294967295
  %3 = and i64 %2, 4294967295
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %4, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

4:                                                ; preds = %bb.c
  %5 = add nsw i16 %i.ci, -1
  store i16 %5, ptr %0, align 4, !tbaa !7
  %6 = sext i16 %i.ci to i64
  %7 = add nsw i64 %6, 4294967294
  %8 = and i64 %7, 4294967294
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %bb.d, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.d:                                             ; preds = %4
  %i.cn = add nsw i16 %i.ci, -2                   ; 2 uses
  store i16 %i.cn, ptr %0, align 4, !tbaa !7
  %i.co = icmp sgt i16 %i.ci, 2
  br i1 %i.co, label %bb.c, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %._crit_edge67
  %i.cp = icmp eq i16 %i.cd, 0
  br i1 %i.cp, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.d, %.critedge.i
  store i16 0, ptr %i.ce, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.c, %4, %.critedge.i, %.critedge.thread3.i
  ret void

bb.e:                                             ; preds = %.lr.ph66, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph66 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.br, %.lr.ph66 ], [ %indvars.iv.next103, %._crit_edge ] ; 3 uses
  %indvars.iv91 = phi i64 [ 1, %.lr.ph66 ], [ %indvars.iv.next92, %._crit_edge ] ; 4 uses
  %.265 = phi i64 [ %.0.lcssa, %.lr.ph66 ], [ %i.dw, %._crit_edge ] ; 3 uses
  %i.cq = xor i64 %indvar, -1
  %i.cr = add i64 %i.cq, %wide.trip.count100      ; 3 uses
  %i.cs = icmp slt i64 %indvars.iv102, %invariant.op
  br i1 %i.cs, label %.lr.ph62.preheader, label %._crit_edge

.lr.ph62.preheader:                               ; preds = %bb.e
  %min.iters.check143 = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check143, label %.lr.ph62.preheader164, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph62.preheader
  %n.vec146 = and i64 %i.cr, -4                   ; 4 uses
  %i.ct = sub i64 %i.br, %n.vec146
  %i.cu = add i64 %indvars.iv91, %n.vec146
  %i.cv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.265, i64 0
  %i.cw = getelementptr [4 x i8], ptr %invariant.gep119, i64 %indvars.iv91
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next157, %vector.body147 ] ; 3 uses
  %vec.phi149 = phi <2 x i64> [ %i.cv, %vector.ph144 ], [ %i.dj, %vector.body147 ]
  %vec.phi150 = phi <2 x i64> [ zeroinitializer, %vector.ph144 ], [ %i.dk, %vector.body147 ]
  %i.cx = sub i64 %i.br, %index148
  %i.cy = getelementptr [4 x i8], ptr %invariant.gep117, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  %i.da = getelementptr i8, ptr %i.cy, i64 -12
  %wide.load151 = load <2 x i32>, ptr %i.cz, align 4, !tbaa !3
  %wide.load152 = load <2 x i32>, ptr %i.da, align 4, !tbaa !3
  %reverse153 = shufflevector <2 x i32> %wide.load151, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse154 = shufflevector <2 x i32> %wide.load152, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.db = getelementptr [4 x i8], ptr %i.cw, i64 %index148 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %wide.load155 = load <2 x i32>, ptr %i.db, align 4, !tbaa !3
  %wide.load156 = load <2 x i32>, ptr %i.dc, align 4, !tbaa !3
  %i.dd = zext <2 x i32> %reverse153 to <2 x i64>
  %i.de = zext <2 x i32> %reverse154 to <2 x i64>
  %i.df = zext <2 x i32> %wide.load155 to <2 x i64>
  %i.dg = zext <2 x i32> %wide.load156 to <2 x i64>
  %i.dh = mul nuw <2 x i64> %i.df, %i.dd
  %i.di = mul nuw <2 x i64> %i.dg, %i.de
  %i.dj = add <2 x i64> %i.dh, %vec.phi149        ; 2 uses
  %i.dk = add <2 x i64> %i.di, %vec.phi150        ; 2 uses
  %index.next157 = add nuw i64 %index148, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next157, %n.vec146
  br i1 %i.dl, label %middle.block158, label %vector.body147, !llvm.loop !50

middle.block158:                                  ; preds = %vector.body147
  %bin.rdx159 = add <2 x i64> %i.dk, %i.dj
  %i.dm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx159) ; 2 uses
  %cmp.n160 = icmp eq i64 %i.cr, %n.vec146
  br i1 %cmp.n160, label %._crit_edge, label %.lr.ph62.preheader164

.lr.ph62.preheader164:                            ; preds = %.lr.ph62.preheader, %middle.block158
  %indvars.iv95.in.ph = phi i64 [ %i.br, %.lr.ph62.preheader ], [ %i.ct, %middle.block158 ]
  %indvars.iv93.ph = phi i64 [ %indvars.iv91, %.lr.ph62.preheader ], [ %i.cu, %middle.block158 ]
  %.361.ph = phi i64 [ %.265, %.lr.ph62.preheader ], [ %i.dm, %middle.block158 ]
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader164, %.lr.ph62
  %indvars.iv95.in = phi i64 [ %indvars.iv95, %.lr.ph62 ], [ %indvars.iv95.in.ph, %.lr.ph62.preheader164 ] ; 2 uses
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %.lr.ph62 ], [ %indvars.iv93.ph, %.lr.ph62.preheader164 ] ; 2 uses
  %.361 = phi i64 [ %i.ds, %.lr.ph62 ], [ %.361.ph, %.lr.ph62.preheader164 ]
  %indvars.iv95 = add nsw i64 %indvars.iv95.in, -1
  %gep118 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv95.in
  %i.dn = load i32, ptr %gep118, align 4, !tbaa !3
  %gep120 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %indvars.iv93
  %i.do = load i32, ptr %gep120, align 4, !tbaa !3
  %i.dp = zext i32 %i.dn to i64
  %i.dq = zext i32 %i.do to i64
  %i.dr = mul nuw i64 %i.dq, %i.dp
  %i.ds = add i64 %i.dr, %.361                    ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge, label %.lr.ph62, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph62, %middle.block158, %bb.e
  %.3.lcssa = phi i64 [ %.265, %bb.e ], [ %i.dm, %middle.block158 ], [ %i.ds, %.lr.ph62 ] ; 2 uses
  %i.dt = trunc i64 %.3.lcssa to i32
  %i.du = and i32 %i.dt, 268435455
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %indvars.iv102
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !3
  %i.dw = lshr i64 %.3.lcssa, 28
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond106.not, label %._crit_edge67, label %bb.e, !llvm.loop !52
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum17AssignPowerUInt16Eti(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.b, align 2, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit.sink.split

bb.c:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  store i16 0, ptr %i.d, align 2, !tbaa !10
  %i.e = zext i16 %1 to i32                       ; 2 uses
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.h = mul nsw i32 %i.j, %2
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.081 = phi i16 [ %i.i, %.lr.ph ], [ %1, %bb.c ]
  %.03980 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.c ]
  %i.i = lshr exact i16 %.081, 1                  ; 3 uses
  %i.j = add nuw nsw i32 %.03980, 1               ; 2 uses
  %i.k = zext nneg i16 %i.i to i32                ; 2 uses
  %i.l = and i32 %i.k, 1
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !53

._crit_edge:                                      ; preds = %.preheader.loopexit, %bb.c
  %.039.lcssa = phi i32 [ 0, %bb.c ], [ %i.h, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi i16 [ %1, %bb.c ], [ %i.i, %.preheader.loopexit ] ; 3 uses
  %.lcssa79 = phi i32 [ %i.e, %bb.c ], [ %i.k, %.preheader.loopexit ]
  %i.n = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %.lcssa79, i1 true) ; 2 uses
  %i.o = sub nuw nsw i32 32, %i.n
  %i.p = mul nsw i32 %i.o, %2
  %i.q = icmp sgt i32 %i.p, 3555
  br i1 %i.q, label %bb.d, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %._crit_edge, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %.045 = phi i32 [ %i.r, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ], [ 1, %._crit_edge ] ; 3 uses
  %.not50 = icmp slt i32 %2, %.045
  %i.r = shl i32 %.045, 1
  br i1 %.not50, label %bb.e, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !54

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.s = ashr i32 %.045, 2                        ; 2 uses
  %i.t = zext i16 %.0.lcssa to i64                ; 9 uses
  %.not102 = icmp eq i32 %i.s, 0
  br i1 %.not102, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.e
  %i.u = or disjoint i32 %i.n, 32
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph93, %bb.h
  %.04191 = phi i1 [ false, %.lr.ph93 ], [ %.2, %bb.h ] ; 2 uses
  %.04290 = phi i64 [ %i.t, %.lr.ph93 ], [ %.244, %bb.h ] ; 2 uses
  %.14689 = phi i32 [ %i.s, %.lr.ph93 ], [ %i.ab, %bb.h ] ; 2 uses
  %i.w = mul nuw i64 %.04290, %.04290             ; 3 uses
  %i.x = and i32 %.14689, %2
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i64 %i.w, %i.v
  %i.z = icmp ne i64 %i.y, 0                      ; 2 uses
  %i.aa = select i1 %i.z, i64 1, i64 %i.t
  %.143 = mul i64 %i.aa, %i.w
  %.1 = select i1 %i.z, i1 true, i1 %.04191
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.244 = phi i64 [ %.143, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %.2 = phi i1 [ %.1, %bb.g ], [ %.04191, %bb.f ] ; 2 uses
  %i.ab = ashr i32 %.14689, 1                     ; 3 uses
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp ult i64 %.244, 4294967296
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.f, label %._crit_edge94, !llvm.loop !55

._crit_edge94:                                    ; preds = %bb.h, %bb.e
  %.146.lcssa = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.h ] ; 2 uses
  %.042.lcssa = phi i64 [ %i.t, %bb.e ], [ %.244, %bb.h ] ; 2 uses
  %.041.lcssa = phi i1 [ false, %bb.e ], [ %.2, %bb.h ]
  %.not6.i = icmp eq i64 %.042.lcssa, 0
  br i1 %.not6.i, label %_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge94
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored17double_conversion6Bignum17AssignPowerUInt16Eti:bb.a
  %i.ds = add <4 x i32> %i.dq, %i.do
  %i.dt = add <4 x i32> %i.dr, %i.dp
  %i.du = and <4 x i32> %i.ds, splat (i32 268435455)
  %i.dv = and <4 x i32> %i.dt, splat (i32 268435455)
  store <4 x i32> %i.du, ptr %i.dk, align 4, !tbaa !3
  store <4 x i32> %i.dv, ptr %i.dl, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.dn, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.dz, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit, label %bb.w

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.dz, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i.i ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3  ; 2 uses
  %i.dz = lshr i32 %i.dy, %i.dj                   ; 2 uses
  %i.ea = shl i32 %i.dy, %i.df
  %i.eb = add i32 %i.ea, %.014.i.i
  %i.ec = and i32 %i.eb, 268435455
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !58

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.ed, align 4, !tbaa !3
  %i.ee = add nuw nsw i16 %i.cz, 1
  br label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit.sink.split

_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit.sink.split: ; preds = %bb.b, %bb.w
  %.sink = phi i16 [ %i.ee, %bb.w ], [ 1, %bb.b ]
  store i16 %.sink, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit

_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit.sink.split, %._crit_edge.i.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i75, %._crit_edge101
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7      ; 6 uses
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 4 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, %i.b                   ; 2 uses
  %i.g = load i16, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !10   ; 3 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 2 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i16 %i.d, %i.j
  br i1 %i.n, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.p = add nsw i32 %i.o, %i.b
  %i.q = icmp sgt i32 %i.p, 128
  br i1 %i.q, label %bb.d, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.c
  %i.r = icmp sgt i16 %i.a, 0
  br i1 %i.r, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.s = zext nneg i16 %i.a to i64                ; 6 uses
  %i.t = sext i32 %i.o to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 16
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.u = sext i16 %i.j to i64
  %i.v = sext i16 %i.d to i64
  %i.w = sub nsw i64 %i.u, %i.v
  %i.x = shl nsw i64 %i.w, 2
  %i.y = add nsw i64 %i.x, -1
  %diff.check = icmp ult i64 %i.y, 31
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 32760                    ; 2 uses
  %i.z = and i64 %i.s, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = sub i64 %i.s, %index                    ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr i8, ptr %i.ab, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !3
  %wide.load83 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !3
  %i.ae = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aa ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -12
  %i.ag = getelementptr i8, ptr %i.ae, i64 -28
  store <4 x i32> %wide.load, ptr %i.af, align 4, !tbaa !3
  store <4 x i32> %wide.load83, ptr %i.ag, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i ], [ %i.z, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = zext nneg i32 %i.o to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.ak, i1 false), !tbaa !3
  %i.al = trunc i32 %i.o to i16                   ; 2 uses
  %i.am = add i16 %i.a, %i.al                     ; 3 uses
  store i16 %i.am, ptr %0, align 4, !tbaa !7
  %i.an = sub i16 %i.d, %i.al                     ; 2 uses
  store i16 %i.an, ptr %i.c, align 2, !tbaa !10
  %.pre = load i16, ptr %1, align 4, !tbaa !7     ; 2 uses
  %.pre49 = load i16, ptr %i.i, align 2, !tbaa !10
  %.pre50 = sext i16 %i.am to i32
  %.pre51 = sext i16 %i.an to i32
  %.pre53 = add nsw i32 %.pre51, %.pre50
  %.pre55 = sext i16 %.pre to i32
  %.pre57 = sext i16 %.pre49 to i32
  %.pre59 = add nsw i32 %.pre57, %.pre55
  br label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ap, ptr %gep.i, align 4, !tbaa !3
  %i.aq = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.aq, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !60

_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.b, %.lr.ph20.i
  %.pre-phi60 = phi i32 [ %i.l, %bb.b ], [ %.pre59, %.lr.ph20.i ]
  %.pre-phi54 = phi i32 [ %i.f, %bb.b ], [ %.pre53, %.lr.ph20.i ]
  %i.ar = phi i16 [ %i.g, %bb.b ], [ %.pre, %.lr.ph20.i ]
  %i.as = phi i16 [ %i.a, %bb.b ], [ %i.am, %.lr.ph20.i ] ; 2 uses
  %i.at = icmp sgt i32 %.pre-phi54, %.pre-phi60
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit, %.lr.ph
  %i.au = phi i16 [ %i.ba, %.lr.ph ], [ %i.as, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ]
  %.03141 = phi i16 [ %i.az, %.lr.ph ], [ 0, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ]
  %i.av = sext i16 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = trunc i32 %i.ax to i16
  %i.az = add i16 %.03141, %i.ay                  ; 2 uses
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.ax)
  %i.ba = load i16, ptr %0, align 4, !tbaa !7     ; 3 uses
  %i.bb = sext i16 %i.ba to i32
  %i.bc = load i16, ptr %i.c, align 2, !tbaa !10
  %i.bd = sext i16 %i.bc to i32
  %i.be = add nsw i32 %i.bd, %i.bb
  %i.bf = load i16, ptr %1, align 4, !tbaa !7     ; 2 uses
  %i.bg = sext i16 %i.bf to i32
  %i.bh = load i16, ptr %i.i, align 2, !tbaa !10
  %i.bi = sext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, %i.bg
  %i.bk = icmp sgt i32 %i.be, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  %.031.lcssa = phi i16 [ 0, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ], [ %i.az, %.lr.ph ] ; 2 uses
  %.lcssa40 = phi i16 [ %i.as, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ], [ %i.ba, %.lr.ph ] ; 4 uses
  %.lcssa = phi i16 [ %i.ar, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ], [ %i.bf, %.lr.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bm = sext i16 %.lcssa40 to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3  ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.br = sext i16 %.lcssa to i64
  %i.bs = getelementptr [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 5 uses
  %i.bv = icmp eq i16 %.lcssa, 1
  br i1 %i.bv, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.bw = udiv i32 %i.bp, %i.bu                   ; 2 uses
  %i.bx = mul i32 %i.bw, %i.bu                    ; 0 uses
  %.recomposed = urem i32 %i.bp, %i.bu
  store i32 %.recomposed, ptr %i.bo, align 4, !tbaa !3
  %i.by = trunc i32 %i.bw to i16
  %i.bz = add i16 %.031.lcssa, %i.by              ; 3 uses
  %i.ca = icmp sgt i16 %.lcssa40, 0
  br i1 %i.ca, label %.lr.ph.i33, label %.critedge.i

.lr.ph.i33:                                       ; preds = %bb.e, %bb.f
  %i.cb = phi i16 [ %i.cg, %bb.f ], [ %.lcssa40, %bb.e ] ; 3 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %2 = add nuw nsw i64 %i.cc, 4294967295
  %3 = and i64 %2, 4294967295
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %3
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.f, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.f:                                             ; preds = %.lr.ph.i33
  %i.cg = add nsw i16 %i.cb, -1                   ; 2 uses
  store i16 %i.cg, ptr %0, align 4, !tbaa !7
  %i.ch = icmp sgt i16 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i33, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.e
  %i.ci = icmp eq i16 %.lcssa40, 0
  br i1 %i.ci, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.f, %.critedge.i
  store i16 0, ptr %i.c, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %._crit_edge
  %i.cj = add i32 %i.bu, 1
  %i.ck = udiv i32 %i.bp, %i.cj                   ; 3 uses
  %i.cl = trunc i32 %i.ck to i16
  %i.cm = add i16 %.031.lcssa, %i.cl              ; 2 uses
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.ck)
  %i.cn = add nsw i32 %i.ck, 1
  %i.co = mul i32 %i.cn, %i.bu
  %i.cp = icmp ugt i32 %i.co, %i.bp
  br i1 %i.cp, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread
  %.132 = phi i16 [ %i.dp, %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread ], [ %i.cm, %bb.g ] ; 3 uses
  %i.cq = load i16, ptr %1, align 4, !tbaa !7
  %i.cr = sext i16 %i.cq to i32
  %i.cs = load i16, ptr %i.i, align 2, !tbaa !10  ; 2 uses
  %i.ct = sext i16 %i.cs to i32                   ; 3 uses
  %i.cu = add nsw i32 %i.ct, %i.cr                ; 5 uses
  %i.cv = load i16, ptr %0, align 4, !tbaa !7
  %i.cw = sext i16 %i.cv to i32
  %i.cx = load i16, ptr %i.c, align 2, !tbaa !10  ; 2 uses
  %i.cy = sext i16 %i.cx to i32                   ; 3 uses
  %i.cz = add nsw i32 %i.cy, %i.cw                ; 3 uses
  %i.da = icmp slt i32 %i.cu, %i.cz
  br i1 %i.da, label %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.db = icmp sgt i32 %i.cu, %i.cz
  br i1 %i.db, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h
  %i.dc = tail call i16 @llvm.smin.i16(i16 %i.cx, i16 %i.cs)
  %i.dd = sext i16 %i.dc to i32                   ; 2 uses
  %.not.not.not.i.i78 = icmp sgt i32 %i.cu, %i.dd
  br i1 %.not.not.not.i.i78, label %.lr.ph82, label %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread

bb.i:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32.i.i
  %.not.not.not.i.i = icmp sgt i32 %.024.i.i81, %i.dd
  br i1 %.not.not.not.i.i, label %.lr.ph82, label %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, !llvm.loop !62

.lr.ph82:                                         ; preds = %.preheader.i.i, %bb.i
  %.0.i.i80 = phi i32 [ %.1.i.i, %bb.i ], [ undef, %.preheader.i.i ]
  %.024.in.i.i79 = phi i32 [ %.024.i.i81, %bb.i ], [ %i.cu, %.preheader.i.i ] ; 5 uses
  %.024.i.i81 = add nsw i32 %.024.in.i.i79, -1    ; 4 uses
  %.not.i.i.i = icmp sgt i32 %.024.in.i.i79, %i.cu
  %i.de = icmp sle i32 %.024.in.i.i79, %i.ct
  %or.cond.i.i.i = or i1 %i.de, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph82
  %i.df = sub nsw i32 %.024.i.i81, %i.ct
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit.i.i

_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit.i.i: ; preds = %bb.j, %.lr.ph82
  %.0.i.i.i = phi i32 [ %i.di, %bb.j ], [ 0, %.lr.ph82 ] ; 3 uses
  %.not.i29.i.i = icmp sgt i32 %.024.in.i.i79, %i.cz
  %i.dj = icmp sle i32 %.024.in.i.i79, %i.cy
  %or.cond.i30.i.i = or i1 %i.dj, %.not.i29.i.i
  br i1 %or.cond.i30.i.i, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit.i.i
  %i.dk = sub nsw i32 %.024.i.i81, %i.cy
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  br label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32.i.i

_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32.i.i: ; preds = %bb.k, %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit.i.i
  %.0.i31.i.i = phi i32 [ %i.dn, %bb.k ], [ 0, %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit.i.i ] ; 3 uses
  %.not.i.i = icmp ult i32 %.0.i.i.i, %.0.i31.i.i
  %.not33.i.i = icmp ugt i32 %.0.i.i.i, %.0.i31.i.i
  %..0.i.i = select i1 %.not33.i.i, i32 1, i32 %.0.i.i80
  %cond1.i.i = icmp eq i32 %.0.i.i.i, %.0.i31.i.i
  %.1.i.i = select i1 %.not.i.i, i32 -1, i32 %..0.i.i ; 2 uses
  br i1 %cond1.i.i, label %bb.i, label %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit, !llvm.loop !62

_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit: ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32.i.i
  %i.do = icmp slt i32 %.1.i.i, 1
  br i1 %i.do, label %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread: ; preds = %bb.i, %.preheader.i.i, %.preheader, %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum14SubtractBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1)
  %i.dp = add i16 %.132, 1
  br label %.preheader, !llvm.loop !63

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.h, %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit, %.lr.ph.i33, %.critedge.thread3.i, %.critedge.i, %bb.g, %bb.a
  %.2 = phi i16 [ 0, %bb.a ], [ %i.bz, %.critedge.thread3.i ], [ %i.cm, %bb.g ], [ %i.bz, %.lr.ph.i33 ], [ %i.bz, %.critedge.i ], [ %.132, %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit ], [ %.132, %bb.h ]
  ret i16 %.2
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum13SubtractTimesERKS1_i(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph54, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.lr.ph54:                                         ; preds = %.preheader, %.lr.ph54
  %.053 = phi i32 [ %i.c, %.lr.ph54 ], [ 0, %.preheader ]
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum14SubtractBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1)
  %i.c = add nuw nsw i32 %.053, 1                 ; 2 uses
  %exitcond61.not = icmp eq i32 %i.c, %2
  br i1 %exitcond61.not, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %.lr.ph54, !llvm.loop !64

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !10
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = sext i16 %i.h to i32
  %i.j = sub nsw i32 %i.f, %i.i                   ; 2 uses
  %i.k = load i16, ptr %1, align 4, !tbaa !7      ; 4 uses
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = icmp sgt i16 %i.k, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.n = zext nneg i32 %2 to i64                  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = sext i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i16 %i.k, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03545.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i16 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.n
  %i.w = zext i32 %.03545.epil.init to i64
  %i.x = add nuw nsw i64 %i.v, %i.w               ; 2 uses
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.y = load i32, ptr %gep.epil, align 4, !tbaa !3
  %i.z = trunc i64 %i.x to i32
  %i.aa = and i32 %i.z, 268435455
  %i.ab = sub i32 %i.y, %i.aa                     ; 2 uses
  %i.ac = and i32 %i.ab, 268435455
  store i32 %i.ac, ptr %gep.epil, align 4, !tbaa !3
  %i.ad = lshr i32 %i.ab, 31
  %i.ae = lshr i64 %i.x, 28
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.ad, %i.af
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.035.lcssa = phi i32 [ 0, %bb.b ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %.epil.preheader ]
  %i.ah = add nsw i32 %i.j, %i.l                  ; 2 uses
  %i.ai = load i16, ptr %0, align 4, !tbaa !7     ; 5 uses
  %i.aj = sext i16 %i.ai to i32
  %.not47 = icmp slt i32 %i.ah, %i.aj
  br i1 %.not47, label %.lr.ph51, label %.critedge

.lr.ph51:                                         ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = sext i32 %i.ah to i64
  %i.am = sext i16 %i.ai to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %.03545 = phi i32 [ 0, %.lr.ph.new ], [ %i.bq, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, %i.n
  %i.ar = zext i32 %.03545 to i64
  %i.as = add nuw nsw i64 %i.aq, %i.ar            ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.at = load i32, ptr %gep, align 4, !tbaa !3
  %i.au = trunc i64 %i.as to i32
  %i.av = and i32 %i.au, 268435455
  %i.aw = sub i32 %i.at, %i.av                    ; 2 uses
  %i.ax = and i32 %i.aw, 268435455
  store i32 %i.ax, ptr %gep, align 4, !tbaa !3
  %i.ay = lshr i32 %i.aw, 31
  %i.az = lshr i64 %i.as, 28
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ay, %i.ba
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.be, %i.n
  %i.bg = zext i32 %i.bb to i64
  %i.bh = add nuw nsw i64 %i.bf, %i.bg            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bi = load i32, ptr %gep.1, align 4, !tbaa !3
  %i.bj = trunc i64 %i.bh to i32
  %i.bk = and i32 %i.bj, 268435455
  %i.bl = sub i32 %i.bi, %i.bk                    ; 2 uses
  %i.bm = and i32 %i.bl, 268435455
  store i32 %i.bm, ptr %gep.1, align 4, !tbaa !3
  %i.bn = lshr i32 %i.bl, 31
  %i.bo = lshr i64 %i.bh, 28
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.bn, %i.bp                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !65

bb.d:                                             ; preds = %.lr.ph51, %bb.e
  %indvars.iv58 = phi i64 [ %i.al, %.lr.ph51 ], [ %indvars.iv.next59, %bb.e ] ; 2 uses
  %.148 = phi i32 [ %.035.lcssa, %.lr.ph51 ], [ %i.bw, %bb.e ] ; 2 uses
  %i.br = icmp eq i32 %.148, 0
  br i1 %i.br, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv58 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = sub i32 %i.bt, %.148                    ; 2 uses
  %i.bv = and i32 %i.bu, 268435455
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  %i.bw = lshr i32 %i.bu, 31
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next59, %i.am
  br i1 %.not, label %bb.d, label %.critedge, !llvm.loop !66

.critedge:                                        ; preds = %bb.e, %._crit_edge
  %i.bx = icmp sgt i16 %i.ai, 0
  br i1 %i.bx, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.critedge
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.by = phi i16 [ %i.ai, %.lr.ph.i ], [ %i.cd, %bb.g ] ; 3 uses
  %i.bz = zext nneg i16 %i.by to i64
  %4 = add nuw nsw i64 %i.bz, 4294967295
  %5 = and i64 %4, 4294967295
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %5
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.g, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.cd = add nsw i16 %i.by, -1                   ; 2 uses
  store i16 %i.cd, ptr %0, align 4, !tbaa !7
  %i.ce = icmp sgt i16 %i.by, 1
  br i1 %i.ce, label %bb.f, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %.critedge
  %i.cf = icmp eq i16 %i.ai, 0
  br i1 %i.cf, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.g, %.critedge.i
  store i16 0, ptr %i.g, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.d, %bb.f, %.lr.ph54, %.preheader, %.critedge.thread3.i, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion6Bignum11ToHexStringEPci(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 2
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %1, align 1, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !19
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.e = sext i16 %i.a to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !10
  %i.h = sext i16 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.e
  %i.j = mul nsw i32 %i.i, 7
  %i.k = add nsw i32 %i.j, -7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.m = sext i16 %i.a to i64
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %.not5.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i, label %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.d ]
  %.046.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.p, %bb.d ]
  %i.q = lshr i32 %.046.i, 4                      ; 2 uses
  %i.r = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i, !llvm.loop !67

_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.r, %.lr.ph.i ]
  %i.s = add nsw i32 %i.k, %.0.lcssa.i            ; 3 uses
  %.not = icmp slt i32 %i.s, %2
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !19
  %i.w = load i16, ptr %i.f, align 2, !tbaa !10
  %i.x = icmp sgt i16 %i.w, 0
  br i1 %i.x, label %.preheader40.preheader, label %.preheader

.preheader40.preheader:                           ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %1, i64 -6
  %i.y = sext i32 %i.t to i64
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.preheader, %.preheader40
  %indvars.iv = phi i64 [ %i.y, %.preheader40.preheader ], [ %indvars.iv.next, %.preheader40 ] ; 2 uses
  %.03345 = phi i32 [ 0, %.preheader40.preheader ], [ %i.z, %.preheader40 ]
  %scevgep62 = getelementptr i8, ptr %scevgep, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep62, i8 48, i64 7, i1 false), !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, -7  ; 2 uses
  %i.z = add nuw nsw i32 %.03345, 1               ; 2 uses
  %i.aa = load i16, ptr %i.f, align 2, !tbaa !10
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.preheader40, label %.preheader.loopexit, !llvm.loop !68

.preheader.loopexit:                              ; preds = %.preheader40
  %indvars = trunc i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.034.lcssa = phi i32 [ %i.t, %bb.e ], [ %indvars, %.preheader.loopexit ] ; 2 uses
  %i.ad = load i16, ptr %0, align 4, !tbaa !7     ; 2 uses
  %i.ae = icmp sgt i16 %i.ad, 1
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %i.af = sext i16 %i.ad to i64
  %.pre = add nsw i64 %i.af, -1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = sext i32 %.034.lcssa to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %indvars75 = trunc i64 %indvars.iv.next72 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.ca, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.034.lcssa, %.preheader.._crit_edge_crit_edge ], [ %indvars75, %._crit_edge.loopexit ]
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %.not3853 = icmp eq i32 %i.ai, 0
  br i1 %.not3853, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %i.aj = sext i32 %.2.lcssa to i64
  br label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv71 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next72, %.lr.ph ] ; 5 uses
  %indvars.iv69 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next70, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv69
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3  ; 7 uses
  %i.am = and i32 %i.al, 15                       ; 2 uses
  %i.an = icmp samesign ult i32 %i.am, 10
  %i.ao = trunc nuw nsw i32 %i.am to i8           ; 2 uses
  %i.ap = or disjoint i8 %i.ao, 48
  %i.aq = add nuw nsw i8 %i.ao, 55
  %.0.i = select i1 %i.an, i8 %i.ap, i8 %i.aq
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %indvars.iv71
  store i8 %.0.i, ptr %i.ar, align 1, !tbaa !19
  %i.as = lshr i32 %i.al, 4
  %i.at = and i32 %i.as, 15                       ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 10
  %i.av = trunc nuw nsw i32 %i.at to i8           ; 2 uses
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = add nuw nsw i8 %i.av, 55
  %.0.i.1 = select i1 %i.au, i8 %i.aw, i8 %i.ax
  %i.ay = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  store i8 %.0.i.1, ptr %i.az, align 1, !tbaa !19
  %i.ba = lshr i32 %i.al, 8
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, 10
  %i.bd = trunc nuw nsw i32 %i.bb to i8           ; 2 uses
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = add nuw nsw i8 %i.bd, 55
  %.0.i.2 = select i1 %i.bc, i8 %i.be, i8 %i.bf
  %i.bg = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  store i8 %.0.i.2, ptr %i.bh, align 1, !tbaa !19
  %i.bi = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.bj = getelementptr i8, ptr %i.bi, i64 -6
  %i.bk = lshr i32 %i.al, 12
  %i.bl = lshr i32 %i.al, 16
  %i.bm = lshr i32 %i.al, 20
  %i.bn = lshr i32 %i.al, 24
  %i.bo = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bm, i64 1
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bl, i64 2
  %i.br = insertelement <4 x i32> %i.bq, i32 %i.bk, i64 3
  %i.bs = and <4 x i32> %i.br, splat (i32 15)     ; 2 uses
  %i.bt = icmp samesign ult <4 x i32> %i.bs, splat (i32 10)
  %i.bu = trunc nuw nsw <4 x i32> %i.bs to <4 x i8> ; 2 uses
  %i.bv = or disjoint <4 x i8> %i.bu, splat (i8 48)
  %i.bw = add nuw nsw <4 x i8> %i.bu, splat (i8 55)
  %i.bx = select <4 x i1> %i.bt, <4 x i8> %i.bv, <4 x i8> %i.bw
  store <4 x i8> %i.bx, ptr %i.bj, align 1, !tbaa !19
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -7 ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.by = load i16, ptr %0, align 4, !tbaa !7
  %i.bz = sext i16 %i.by to i64
  %i.ca = add nsw i64 %i.bz, -1                   ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next70, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !69

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %indvars.iv77 = phi i64 [ %i.aj, %.lr.ph57.preheader ], [ %indvars.iv.next78, %.lr.ph57 ] ; 2 uses
  %.055 = phi i32 [ %i.ai, %.lr.ph57.preheader ], [ %i.ci, %.lr.ph57 ] ; 2 uses
  %i.cc = and i32 %.055, 15                       ; 2 uses
  %i.cd = icmp samesign ult i32 %i.cc, 10
  %i.ce = trunc nuw nsw i32 %i.cc to i8           ; 2 uses
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = add nuw nsw i8 %i.ce, 55
  %.0.i39 = select i1 %i.cd, i8 %i.cf, i8 %i.cg
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, -1
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %indvars.iv77
  store i8 %.0.i39, ptr %i.ch, align 1, !tbaa !19
end_hunk_4
