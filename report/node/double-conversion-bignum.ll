inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_7817double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE:bb.a
  %i.ag = add nsw i64 %i.af, -48
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i64
  %i.am = mul nsw i64 %i.ah, 10
  %i.an = add nsw i64 %i.am, -48
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i64
  %i.at = mul nsw i64 %i.ao, 10
  %i.au = add nsw i64 %i.at, -48
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = sext i8 %i.ay to i64
  %i.ba = mul nsw i64 %i.av, 10
  %i.bb = add nsw i64 %i.ba, -48
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = sext i8 %i.bf to i64
  %i.bh = mul nsw i64 %i.bc, 10
  %i.bi = add nsw i64 %i.bh, -48
  %i.bj = add nsw i64 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = sext i8 %i.bm to i64
  %i.bo = mul nsw i64 %i.bj, 10
  %i.bp = add nsw i64 %i.bo, -48
  %i.bq = add nsw i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = sext i8 %i.bt to i64
  %i.bv = mul nsw i64 %i.bq, 10
  %i.bw = add nsw i64 %i.bv, -48
  %i.bx = add nsw i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = sext i8 %i.ca to i64
  %i.cc = mul nsw i64 %i.bx, 10
  %i.cd = add nsw i64 %i.cc, -48
  %i.ce = add nsw i64 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = sext i8 %i.ch to i64
  %i.cj = mul nsw i64 %i.ce, 10
  %i.ck = add nsw i64 %i.cj, -48
  %i.cl = add nsw i64 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 13
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = sext i8 %i.co to i64
  %i.cq = mul nsw i64 %i.cl, 10
  %i.cr = add nsw i64 %i.cq, -48
  %i.cs = add nsw i64 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 14
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = sext i8 %i.cv to i64
  %i.cx = mul nsw i64 %i.cs, 10
  %i.cy = add nsw i64 %i.cx, -48
  %i.cz = add nsw i64 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = sext i8 %i.dc to i64
  %i.de = mul nsw i64 %i.cz, 10
  %i.df = add nsw i64 %i.de, -48
  %i.dg = add nsw i64 %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = sext i8 %i.dj to i64
  %i.dl = mul nsw i64 %i.dg, 10
  %i.dm = add nsw i64 %i.dl, -48
  %i.dn = add nsw i64 %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 17
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = sext i8 %i.dq to i64
  %i.ds = mul i64 %i.dn, 10
  %i.dt = add i64 %i.ds, -48
  %i.du = add i64 %i.dt, %i.dr
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 18
  %i.dx = load i8, ptr %i.dw, align 1
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
  store i32 %i.ef, ptr %i.eg, align 4
  %i.eh = lshr i64 %.057.i.i, 28                  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i, label %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i, label %bb.b, !llvm.loop !5

_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i: ; preds = %bb.b
  %indvars.i = trunc i64 %indvars.iv.next.i.i to i16
  store i16 %indvars.i, ptr %4, align 4
  call void @_ZN6icu_7817double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit

_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit: ; preds = %.lr.ph.i, %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i
  %i.ei = icmp samesign ugt i32 %.032, 37
  br i1 %i.ei, label %.lr.ph.i, label %._crit_edge.loopexit, !llvm.loop !8

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
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = sext i8 %i.ep to i64
  %i.er = mul i64 %.011.i15, 10
  %i.es = add i64 %i.er, -48
  %i.et = add i64 %i.es, %i.eq                    ; 3 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.eu = icmp samesign ult i64 %indvars.iv.next.i16, %i.en
  br i1 %i.eu, label %.lr.ph.i13, label %_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17, !llvm.loop !9

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
  store i32 %i.ey, ptr %i.ez, align 4
  %i.fa = lshr i64 %.057.i.i20, 28                ; 2 uses
  %indvars.iv.next.i.i21 = add nuw nsw i64 %indvars.iv.i.i19, 1 ; 2 uses
  %.not.i.i22 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i22, label %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i23, label %bb.c, !llvm.loop !5

_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i23: ; preds = %bb.c
  %indvars.i24 = trunc i64 %indvars.iv.next.i.i21 to i16
  store i16 %indvars.i24, ptr %3, align 4
  call void @_ZN6icu_7817double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25

_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25: ; preds = %_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17.thread, %_ZN6icu_7817double_conversionL10ReadUInt64ENS0_6VectorIKcEEii.exit17, %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit.i23
  %.pr.i = load i16, ptr %0, align 4              ; 3 uses
  %i.fb = icmp sgt i16 %.pr.i, 0
  br i1 %i.fb, label %.lr.ph.i26, label %.critedge.i

.lr.ph.i26:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i26
  %i.fc = phi i16 [ %.pr.i, %.lr.ph.i26 ], [ %i.fh, %bb.e ] ; 3 uses
  %i.fd = zext nneg i16 %i.fc to i64
  %6 = add nuw nsw i64 %i.fd, 4294967295
  %7 = and i64 %6, 4294967295
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %7
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.e, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.e:                                             ; preds = %bb.d
  %i.fh = add nsw i16 %i.fc, -1                   ; 2 uses
  store i16 %i.fh, ptr %0, align 4
  %i.fi = icmp sgt i16 %i.fc, 1
  br i1 %i.fi, label %bb.d, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25
  %i.fj = icmp eq i16 %.pr.i, 0
  br i1 %i.fj, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.e, %.critedge.i
  store i16 0, ptr %i.a, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.d, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = load i16, ptr %0, align 4                ; 5 uses
  %i.c = icmp eq i16 %i.b, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.c
  br i1 %or.cond, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %.preheader34

.preheader34:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 26
  br i1 %i.d, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp sgt i16 %i.b, 0
  br i1 %i.f, label %.lr.ph.split, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader: ; preds = %.lr.ph
  %i.g = add nsw i32 %1, -27
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 53)
  %i.i = add nuw i32 %i.h, 26                     ; 2 uses
  %i.j = urem i32 %i.i, 27
  %.neg = sub nsw i32 %i.j, %i.i
  %i.k = add nsw i32 %.neg, %i.g
  br label %.preheader

.preheader:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader, %.preheader34
  %i.l = phi i16 [ %i.b, %.preheader34 ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader ], [ %i.bu, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 4 uses
  %.0.lcssa = phi i32 [ %1, %.preheader34 ], [ %i.k, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader ], [ %i.bv, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ]
  %.0.lcssa.fr = freeze i32 %.0.lcssa             ; 5 uses
  %i.m = icmp sgt i32 %.0.lcssa.fr, 12
  br i1 %i.m, label %.lr.ph43, label %._crit_edge

.lr.ph43:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.o = icmp sgt i16 %i.l, 0
  br i1 %i.o, label %.lr.ph43.split, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit.us.preheader

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit.us.preheader: ; preds = %.lr.ph43
  %i.p = add nsw i32 %.0.lcssa.fr, -13
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 %.0.lcssa.fr, i32 25)
  %i.r = add nuw i32 %i.q, 12                     ; 2 uses
  %i.s = urem i32 %i.r, 13
  %.neg74 = sub i32 %i.s, %i.r
  %i.t = add i32 %.neg74, %i.p
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit
  %i.u = phi i16 [ %i.bu, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ], [ %i.b, %.lr.ph ] ; 7 uses
  %.041 = phi i32 [ %i.bv, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ], [ %1, %.lr.ph ] ; 2 uses
  %i.v = icmp sgt i16 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %wide.trip.count.i = zext nneg i16 %i.u to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.w = icmp eq i16 %i.u, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 32766
  br label %bb.b

.preheader.i.unr-lcssa:                           ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ]
  %.023.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bk, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod113 = trunc i16 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = mul nuw i64 %i.z, 4195354525
  %i.ab = and i64 %.023.i.epil.init, 268435455
  %i.ac = add nuw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 268435455
  store i32 %i.ae, ptr %i.x, align 4
  %i.af = lshr i64 %.023.i.epil.init, 28
  %i.ag = lshr i64 %i.ac, 28
  %i.ah = mul i64 %i.z, 27755575600
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = add i64 %i.ai, %i.ag
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa108 = phi i64 [ %i.bk, %.preheader.i.unr-lcssa ], [ %i.aj, %.epil.preheader ] ; 2 uses
  %.not24.i = icmp eq i64 %.lcssa108, 0
  br i1 %.not24.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %.023.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bk, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = mul nuw i64 %i.am, 4195354525
  %i.ao = and i64 %.023.i, 268435455
  %i.ap = add nuw i64 %i.an, %i.ao                ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 268435455
  store i32 %i.ar, ptr %i.ak, align 4
  %i.as = lshr i64 %.023.i, 28
  %i.at = lshr i64 %i.ap, 28
  %i.au = mul i64 %i.am, 27755575600
  %i.av = add i64 %i.au, %i.as
  %i.aw = add i64 %i.av, %i.at                    ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = mul nuw i64 %i.ba, 4195354525
  %i.bc = and i64 %i.aw, 268435455
  %i.bd = add nuw i64 %i.bb, %i.bc                ; 2 uses
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 268435455
  store i32 %i.bf, ptr %i.ay, align 4
  %i.bg = lshr i64 %i.aw, 28
  %i.bh = lshr i64 %i.bd, 28
  %i.bi = mul i64 %i.ba, 27755575600
  %i.bj = add i64 %i.bi, %i.bg
  %i.bk = add i64 %i.bj, %i.bh                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.b, !llvm.loop !11

.lr.ph26.i:                                       ; preds = %.preheader.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %i.bl = phi i16 [ %i.bs, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %i.u, %.preheader.i ] ; 2 uses
  %.125.i = phi i64 [ %i.bt, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %.lcssa108, %.preheader.i ] ; 2 uses
  %i.bm = icmp sgt i16 %i.bl, 127
  br i1 %i.bm, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %.lr.ph26.i
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %.lr.ph26.i
  %i.bn = trunc i64 %.125.i to i32
  %i.bo = and i32 %i.bn, 268435455
  %i.bp = sext i16 %i.bl to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4
  %i.br = load i16, ptr %0, align 4
  %i.bs = add i16 %i.br, 1                        ; 3 uses
  store i16 %i.bs, ptr %0, align 4
  %i.bt = lshr i64 %.125.i, 28                    ; 2 uses
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i, !llvm.loop !12

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %.lr.ph.split, %.preheader.i
  %i.bu = phi i16 [ %i.u, %.preheader.i ], [ %i.u, %.lr.ph.split ], [ %i.bs, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ] ; 2 uses
  %i.bv = add nsw i32 %.041, -27                  ; 2 uses
  %i.bw = icmp sgt i32 %.041, 53
  br i1 %i.bw, label %.lr.ph.split, label %.preheader, !llvm.loop !13

.lr.ph43.split:                                   ; preds = %.lr.ph43, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %i.bx = phi i16 [ %i.di, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ], [ %i.l, %.lr.ph43 ] ; 7 uses
  %.142 = phi i32 [ %i.dj, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ], [ %.0.lcssa.fr, %.lr.ph43 ] ; 2 uses
  %i.by = icmp sgt i16 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i11, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit

.lr.ph.i11:                                       ; preds = %.lr.ph43.split
  %wide.trip.count.i12 = zext nneg i16 %i.bx to i64 ; 2 uses
  %xtraiter115 = and i64 %wide.trip.count.i12, 1
  %i.bz = icmp eq i16 %i.bx, 1
  br i1 %i.bz, label %.epil.preheader114, label %.lr.ph.i11.new

.lr.ph.i11.new:                                   ; preds = %.lr.ph.i11
  %unroll_iter119 = and i64 %wide.trip.count.i12, 32766
  br label %bb.d

.preheader.i16.unr-lcssa:                         ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a
.preheader.i25:                                   ; preds = %.preheader.i25.unr-lcssa, %.epil.preheader121
  %.lcssa103 = phi i64 [ %i.et, %.preheader.i25.unr-lcssa ], [ %i.ec, %.epil.preheader121 ] ; 2 uses
  %.not18.i26 = icmp eq i64 %.lcssa103, 0
  br i1 %.not18.i26, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75, label %.lr.ph20.i27

bb.h:                                             ; preds = %bb.h, %.lr.ph.i19.new
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i19.new ], [ %indvars.iv.next.i23.1, %bb.h ] ; 3 uses
  %.017.i22 = phi i64 [ 0, %.lr.ph.i19.new ], [ %i.et, %bb.h ]
  %niter127 = phi i64 [ 0, %.lr.ph.i19.new ], [ %niter127.next.1, %bb.h ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i21 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = zext i32 %i.ee to i64
  %i.eg = mul nuw i64 %i.ef, %i.ds
  %i.eh = add i64 %i.eg, %.017.i22                ; 2 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = and i32 %i.ei, 268435455
  store i32 %i.ej, ptr %i.ed, align 4
  %i.ek = lshr i64 %i.eh, 28
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i21
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = zext i32 %i.en to i64
  %i.ep = mul nuw i64 %i.eo, %i.ds
  %i.eq = add i64 %i.ep, %i.ek                    ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.er, 268435455
  store i32 %i.es, ptr %i.em, align 4
  %i.et = lshr i64 %i.eq, 28                      ; 3 uses
  %indvars.iv.next.i23.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter127.next.1 = add i64 %niter127, 2         ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %.preheader.i25.unr-lcssa, label %bb.h, !llvm.loop !15

.lr.ph20.i27:                                     ; preds = %.preheader.i25, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29
  %i.eu = phi i16 [ %i.fb, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29 ], [ %.pr, %.preheader.i25 ] ; 2 uses
  %.119.i28 = phi i64 [ %i.fc, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29 ], [ %.lcssa103, %.preheader.i25 ] ; 2 uses
  %i.ev = icmp sgt i16 %i.eu, 127
  br i1 %i.ev, label %bb.i, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29

bb.i:                                             ; preds = %.lr.ph20.i27
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29: ; preds = %.lr.ph20.i27
  %i.ew = trunc i64 %.119.i28 to i32
  %i.ex = and i32 %i.ew, 268435455
  %i.ey = sext i16 %i.eu to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ey
  store i32 %i.ex, ptr %i.ez, align 4
  %i.fa = load i16, ptr %0, align 4
  %i.fb = add i16 %i.fa, 1                        ; 3 uses
  store i16 %i.fb, ptr %0, align 4
  %i.fc = lshr i64 %.119.i28, 28                  ; 2 uses
  %.not.i30 = icmp eq i64 %i.fc, 0
  br i1 %.not.i30, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31, label %.lr.ph20.i27, !llvm.loop !16

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29, %bb.f, %._crit_edge, %bb.g
  %i.fd = phi i16 [ %.pr, %bb.f ], [ %.pr, %bb.g ], [ %.pr, %._crit_edge ], [ %i.fb, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29 ] ; 2 uses
  %i.fe = icmp eq i16 %i.fd, 0
  br i1 %i.fe, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75: ; preds = %.preheader.i25, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31
  %i.ff = phi i16 [ %i.fd, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31 ], [ %.pr, %.preheader.i25 ] ; 5 uses
  %i.fg = sdiv i32 %1, 28
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2
  %i.fj = trunc i32 %i.fg to i16
  %i.fk = add i16 %i.fi, %i.fj
  store i16 %i.fk, ptr %i.fh, align 2
  %i.fl = srem i32 %1, 28                         ; 3 uses
  %i.fm = icmp sgt i16 %i.ff, 127
  br i1 %i.fm, label %bb.j, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32

bb.j:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32: ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75
  %i.fn = icmp sgt i16 %i.ff, 0
  br i1 %i.fn, label %.lr.ph.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i.i:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32
  %wide.trip.count.i.i = zext nneg i16 %i.ff to i64 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.fp = sub nsw i32 28, %i.fl                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.ff, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 32760    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert97 = insertelement <4 x i32> poison, i32 %i.fl, i64 0
  %broadcast.splat98 = shufflevector <4 x i32> %broadcast.splatinsert97, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.ft, %vector.body ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fq, align 4 ; 2 uses
  %wide.load99 = load <4 x i32>, ptr %i.fr, align 4 ; 2 uses
  %i.fs = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.ft = lshr <4 x i32> %wide.load99, %broadcast.splat ; 3 uses
  %i.fu = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.fs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fv = shufflevector <4 x i32> %i.fs, <4 x i32> %i.ft, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fw = shl <4 x i32> %wide.load, %broadcast.splat98
  %i.fx = shl <4 x i32> %wide.load99, %broadcast.splat98
  %i.fy = add <4 x i32> %i.fw, %i.fu
  %i.fz = add <4 x i32> %i.fx, %i.fv
  %i.ga = and <4 x i32> %i.fy, splat (i32 268435455)
  %i.gb = and <4 x i32> %i.fz, splat (i32 268435455)
  store <4 x i32> %i.ga, ptr %i.fq, align 4
  store <4 x i32> %i.gb, ptr %i.fr, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ft, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.gf, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %bb.k

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.gf, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.i ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  %i.gf = lshr i32 %i.ge, %i.fp                   ; 2 uses
  %i.gg = shl i32 %i.ge, %i.fl
  %i.gh = add i32 %i.gg, %.014.i.i
  %i.gi = and i32 %i.gh, 268435455
  store i32 %i.gi, ptr %i.gd, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !21

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.gj, align 4
  %i.gk = add nuw nsw i16 %i.ff, 1
  store i16 %i.gk, ptr %0, align 4
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit: ; preds = %bb.k, %._crit_edge.i.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum9AddUInt64Em(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
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
  store i32 %i.d, ptr %i.e, align 4
  %i.f = lshr i64 %.057.i, 28                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit, label %bb.b, !llvm.loop !5

_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit: ; preds = %bb.b
  %indvars = trunc i64 %indvars.iv.next.i to i16
  store i16 %indvars, ptr %2, align 4
  call void @_ZN6icu_7817double_conversion6Bignum9AddBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN6icu_7817double_conversion6Bignum12AssignUInt64Em.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum5ClampEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.pr = load i16, ptr %0, align 4                ; 3 uses
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
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i16 %i.b, -1                     ; 2 uses
  store i16 %i.g, ptr %0, align 4
  %i.h = icmp sgt i16 %i.b, 1
  br i1 %i.h, label %bb.b, label %.critedge.thread3, !llvm.loop !10

.critedge:                                        ; preds = %bb.a
  %i.i = icmp eq i16 %.pr, 0
  br i1 %i.i, label %.critedge.thread3, label %.critedge.thread

.critedge.thread3:                                ; preds = %bb.c, %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.j, align 2
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge.thread3, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  store i16 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 0, ptr %i.a, align 2
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
  %.pr.i.pre19.pre = load i16, ptr %0, align 4    ; 3 uses
  %.not = icmp eq i64 %.19, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 2 uses
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ] ; 4 uses
  %.0816 = phi i64 [ 0, %.lr.ph ], [ %.19, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.f = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = sext i8 %i.h to i32                      ; 4 uses
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.j, 10
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.j to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

bb.e:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.i, -97
  %or.cond3.i = icmp ult i32 %i.l, 6
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.i, -87
  %i.n = zext nneg i32 %i.m to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

bb.g:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.i, -55
  %i.p = sext i32 %i.o to i64
  br label %_ZN6icu_7817double_conversionL12HexCharValueEi.exit

_ZN6icu_7817double_conversionL12HexCharValueEi.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.k, %bb.d ], [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  %i.q = zext nneg i32 %.017 to i64
  %i.r = shl i64 %.0.i, %i.q
  %i.s = or i64 %i.r, %.0816                      ; 3 uses
  %i.t = add nsw i32 %.017, 4
  %i.u = icmp sgt i32 %.017, 23
  br i1 %i.u, label %bb.h, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.h:                                             ; preds = %_ZN6icu_7817double_conversionL12HexCharValueEi.exit
  %i.v = trunc i64 %i.s to i32
  %i.w = and i32 %i.v, 268435455
  %i.x = load i16, ptr %0, align 4                ; 2 uses
  %i.y = add i16 %i.x, 1
  store i16 %i.y, ptr %0, align 4
  %i.z = sext i16 %i.x to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  store i32 %i.w, ptr %i.aa, align 4
  %i.ab = add nsw i32 %.017, -24
  %i.ac = lshr i64 %i.s, 28
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversionL12HexCharValueEi.exit, %bb.h
  %.19 = phi i64 [ %i.ac, %bb.h ], [ %i.s, %_ZN6icu_7817double_conversionL12HexCharValueEi.exit ] ; 3 uses
  %.1 = phi i32 [ %i.ab, %bb.h ], [ %i.t, %_ZN6icu_7817double_conversionL12HexCharValueEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ad = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.ad, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge, label %bb.c, !llvm.loop !22

bb.i:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %i.ae = trunc i64 %.19 to i32
  %i.af = and i32 %i.ae, 268435455
  %i.ag = add i16 %.pr.i.pre19.pre, 1
  store i16 %i.ag, ptr %0, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = sext i16 %.pr.i.pre19.pre to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  store i32 %i.af, ptr %i.aj, align 4
  %.pr.i.pre = load i16, ptr %0, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %.pr.i = phi i16 [ %.pr.i.pre, %bb.i ], [ %.pr.i.pre19.pre, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge ] ; 3 uses
  %i.ak = icmp sgt i16 %.pr.i, 0
  br i1 %i.ak, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.j
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %i.al = phi i16 [ %.pr.i, %.lr.ph.i ], [ %i.aq, %bb.l ] ; 3 uses
  %i.am = zext nneg i16 %i.al to i64
  %4 = add nuw nsw i64 %i.am, 4294967295
  %5 = and i64 %4, 4294967295
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %5
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i16 %i.al, -1                   ; 2 uses
  store i16 %i.aq, ptr %0, align 4
  %i.ar = icmp sgt i16 %i.al, 1
  br i1 %i.ar, label %bb.k, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.j
  %i.as = icmp eq i16 %.pr.i, 0
  br i1 %i.as, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.l, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader, %.critedge.i
  store i16 0, ptr %i.a, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.k, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum9AddBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2              ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  %.pre67 = load i16, ptr %0, align 4             ; 6 uses
  br i1 %i.e, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = sext i16 %.pre67 to i32
  %i.j = add nsw i32 %i.h, %i.i
  %i.k = icmp sgt i32 %i.j, 128
  br i1 %i.k, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.l = icmp sgt i16 %.pre67, 0
  br i1 %i.l, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.m = zext nneg i16 %.pre67 to i64             ; 6 uses
  %i.n = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %min.iters.check = icmp ult i16 %.pre67, 16
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = sext i16 %i.d to i64
  %i.p = sext i16 %i.b to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, -1
  %diff.check = icmp ult i64 %i.s, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.w, align 4
  %wide.load77 = load <4 x i32>, ptr %i.x, align 4
  %i.y = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %i.aa = getelementptr i8, ptr %i.y, i64 -28
  store <4 x i32> %wide.load, ptr %i.z, align 4
  store <4 x i32> %wide.load77, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i ], [ %i.t, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre66 = load i16, ptr %i.a, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ac = phi i16 [ %.pre66, %.lr.ph20.i.loopexit ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ad = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %.pre67, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = zext nneg i32 %i.h to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ag, i1 false)
  %i.ah = trunc i32 %i.h to i16                   ; 2 uses
  %i.ai = add i16 %i.ad, %i.ah                    ; 2 uses
  store i16 %i.ai, ptr %0, align 4
  %i.aj = sub i16 %i.ac, %i.ah                    ; 2 uses
  store i16 %i.aj, ptr %i.a, align 2
  %.pre68 = load i16, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.al, ptr %gep.i, align 4
  %i.am = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.am, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !24

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.an = phi i16 [ %i.d, %bb.a ], [ %.pre68, %.lr.ph20.i ]
  %i.ao = phi i16 [ %i.b, %bb.a ], [ %i.aj, %.lr.ph20.i ]
  %i.ap = phi i16 [ %.pre67, %bb.a ], [ %i.ai, %.lr.ph20.i ] ; 2 uses
  %i.aq = sext i16 %i.ap to i32                   ; 3 uses
  %i.ar = sext i16 %i.ao to i32                   ; 4 uses
  %i.as = add nsw i32 %i.ar, %i.aq
  %i.at = load i16, ptr %1, align 4               ; 2 uses
  %i.au = sext i16 %i.at to i32
  %i.av = sext i16 %i.an to i32                   ; 3 uses
  %i.aw = add nsw i32 %i.av, %i.au
  %.sroa.speculated35 = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.aw)
  %reass.sub = sub nsw i32 %.sroa.speculated35, %i.ar
  %i.ax = icmp sgt i32 %reass.sub, 127
  br i1 %i.ax, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %i.ay = sub nsw i32 %i.av, %i.ar                ; 3 uses
  %i.az = icmp sgt i32 %i.ay, %i.aq
  br i1 %i.az, label %.lr.ph, label %.preheader42

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.ba = sext i16 %i.ap to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = getelementptr i8, ptr %0, i64 %i.bb
  %scevgep = getelementptr i8, ptr %i.bc, i64 4
  %i.bd = xor i32 %i.ar, -1
  %i.be = add nsw i32 %i.bd, %i.av
  %i.bf = sub nsw i32 %i.be, %i.aq
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bi, i1 false)
  %.pre69 = load i16, ptr %1, align 4
  br label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.bj = phi i16 [ %.pre69, %.lr.ph ], [ %i.at, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.bk = icmp sgt i16 %i.bj, 0
  br i1 %i.bk, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader42
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = sext i32 %i.ay to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.g
  %i.bo = trunc nsw i64 %indvars.iv.next59 to i32
  %.not49 = icmp eq i32 %i.cc, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph47, %bb.g
  %indvars.iv58 = phi i64 [ %i.bn, %.lr.ph47 ], [ %indvars.iv.next59, %bb.g ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.046 = phi i32 [ 0, %.lr.ph47 ], [ %i.cc, %bb.g ]
  %i.bq = load i16, ptr %0, align 4
  %i.br = sext i16 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv58, %i.br
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %indvars.iv58
  %i.bu = load i32, ptr %i.bt, align 4
  br label %bb.g

end_hunk_1
begin_hunk_2_@_ZN6icu_7817double_conversion6Bignum5AlignERKS1_:bb.a
  unreachable

.preheader:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.ad = icmp sgt i32 %i.h, 0
  br i1 %i.ad, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = zext nneg i32 %i.h to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ag, i1 false)
  br label %._crit_edge

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader29 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ai, ptr %gep, align 4
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %i.ak = load i16, ptr %0, align 4
  %i.al = trunc i32 %i.h to i16                   ; 2 uses
  %i.am = add i16 %i.ak, %i.al
  store i16 %i.am, ptr %0, align 4
  %i.an = load i16, ptr %i.a, align 2
  %i.ao = sub i16 %i.an, %i.al
  store i16 %i.ao, ptr %i.a, align 2
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum14SubtractBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.b = load i16, ptr %i.a, align 2              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2              ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = load i16, ptr %0, align 4                ; 5 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.h, %i.j
  %i.l = icmp sgt i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.m = icmp sgt i16 %i.i, 0
  br i1 %i.m, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.n = zext nneg i16 %i.i to i64                ; 6 uses
  %i.o = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp ult i16 %i.i, 16
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = shl nsw i64 %i.r, 2
  %i.t = add nsw i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.x, align 4
  %wide.load49 = load <4 x i32>, ptr %i.y, align 4
  %i.z = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.v ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -28
  store <4 x i32> %wide.load, ptr %i.aa, align 4
  store <4 x i32> %wide.load49, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i ], [ %i.u, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre39 = load i16, ptr %i.a, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ad = phi i16 [ %.pre39, %.lr.ph20.i.loopexit ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ae = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %i.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = zext nneg i32 %i.h to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.af, i8 0, i64 %i.ah, i1 false)
  %i.ai = trunc i32 %i.h to i16                   ; 2 uses
  %i.aj = add i16 %i.ae, %i.ai
  store i16 %i.aj, ptr %0, align 4
  %i.ak = sub i16 %i.ad, %i.ai                    ; 2 uses
  store i16 %i.ak, ptr %i.a, align 2
  %.pre40 = load i16, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.al = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.am = load i32, ptr %i.al, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.am, ptr %gep.i, align 4
  %i.an = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.an, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !30

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.ao = phi i16 [ %i.b, %bb.a ], [ %i.ak, %.lr.ph20.i ]
  %i.ap = phi i16 [ %i.d, %bb.a ], [ %.pre40, %.lr.ph20.i ]
  %i.aq = sext i16 %i.ap to i32
  %i.ar = sext i16 %i.ao to i32
  %i.as = sub nsw i32 %i.aq, %i.ar                ; 2 uses
  %i.at = load i16, ptr %1, align 4
  %i.au = icmp sgt i16 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = sext i32 %i.as to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.av, i64 %i.ax
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.ay = icmp sgt i32 %i.bf, -1
  br i1 %i.ay, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ba = sext i32 %i.as to i64
  %invariant.gep47 = getelementptr [4 x i8], ptr %i.az, i64 %i.ba
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.028 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %bb.d ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bb = load i32, ptr %gep, align 4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = add i32 %.028, %i.bd
  %i.bf = sub i32 %i.bb, %i.be                    ; 3 uses
  %i.bg = and i32 %i.bf, 268435455
  store i32 %i.bg, ptr %gep, align 4
  %i.bh = lshr i32 %i.bf, 31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = load i16, ptr %1, align 4
  %i.bj = sext i16 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.d, label %.preheader, !llvm.loop !31

bb.e:                                             ; preds = %.lr.ph32, %bb.e
  %indvars.iv36 = phi i64 [ %indvars.iv.next, %.lr.ph32 ], [ %indvars.iv.next37, %bb.e ] ; 2 uses
  %gep48 = getelementptr [4 x i8], ptr %invariant.gep47, i64 %indvars.iv36 ; 2 uses
  %i.bl = load i32, ptr %gep48, align 4
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  %i.bn = and i32 %i.bm, 268435455
  store i32 %i.bn, ptr %gep48, align 4
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %.not = icmp sgt i32 %i.bm, -1
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.e, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit, %.preheader
  %.pr.i = load i16, ptr %0, align 4              ; 3 uses
  %i.bo = icmp sgt i16 %.pr.i, 0
  br i1 %i.bo, label %.lr.ph.i25, label %.critedge.i

.lr.ph.i25:                                       ; preds = %._crit_edge
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i25
  %i.bp = phi i16 [ %.pr.i, %.lr.ph.i25 ], [ %i.bu, %bb.g ] ; 3 uses
  %i.bq = zext nneg i16 %i.bp to i64
  %3 = add nuw nsw i64 %i.bq, 4294967295
  %4 = and i64 %3, 4294967295
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.bu = add nsw i16 %i.bp, -1                   ; 2 uses
  store i16 %i.bu, ptr %0, align 4
  %i.bv = icmp sgt i16 %i.bp, 1
  br i1 %i.bv, label %bb.f, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %._crit_edge
  %i.bw = icmp eq i16 %.pr.i, 0
  br i1 %i.bw, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.g, %.critedge.i
  store i16 0, ptr %i.a, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.f, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 6 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i32 %1, 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = trunc i32 %i.c to i16
  %i.g = add i16 %i.e, %i.f
  store i16 %i.g, ptr %i.d, align 2
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
  %wide.load = load <4 x i32>, ptr %i.m, align 4  ; 2 uses
  %wide.load6 = load <4 x i32>, ptr %i.n, align 4 ; 2 uses
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
  store <4 x i32> %i.w, ptr %i.m, align 4
  store <4 x i32> %i.x, ptr %i.n, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !33

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
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = lshr i32 %i.aa, %i.l                    ; 2 uses
  %i.ac = shl i32 %i.aa, %i.h
  %i.ad = add i32 %i.ac, %.014.i
  %i.ae = and i32 %i.ad, 268435455
  store i32 %i.ae, ptr %i.z, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !34

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %wide.trip.count.i
  store i32 %.lcssa, ptr %i.af, align 4
  %i.ag = add nuw nsw i16 %i.a, 1
  store i16 %i.ag, ptr %0, align 4
  br label %_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit

_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi.exit: ; preds = %bb.d, %._crit_edge.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum15BigitsShiftLeftEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 4 uses
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
  %wide.load = load <4 x i32>, ptr %i.e, align 4  ; 2 uses
  %wide.load21 = load <4 x i32>, ptr %i.f, align 4 ; 2 uses
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
  store <4 x i32> %i.o, ptr %i.e, align 4
  store <4 x i32> %i.p, ptr %i.f, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !35

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
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = lshr i32 %i.s, %i.d                      ; 2 uses
  %i.u = shl i32 %i.s, %1
  %i.v = add i32 %i.u, %.014
  %i.w = and i32 %i.v, 268435455
  store i32 %i.w, ptr %i.r, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !36

end_hunk_2
begin_hunk_3_@_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em:bb.a
_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %bb.f
  %i.ba = trunc i64 %.125 to i32
  %i.bb = and i32 %i.ba, 268435455
  %i.bc = sext i16 %i.ay to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.bc
  store i32 %i.bb, ptr %i.bd, align 4
  %i.be = load i16, ptr %0, align 4
  %i.bf = add i16 %i.be, 1                        ; 2 uses
  store i16 %i.bf, ptr %0, align 4
  %i.bg = lshr i64 %.125, 28                      ; 2 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !12

.loopexit:                                        ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %bb.d, %.preheader, %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum6SquareEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 7 uses
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp sgt i16 %i.a, 64
  br i1 %i.d, label %bb.b, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.e = icmp sgt i16 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = zext nneg i16 %i.a to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.h = load i16, ptr %0, align 4                ; 4 uses
  %i.i = sext i16 %i.h to i64                     ; 2 uses
  %i.j = tail call i64 @llvm.smax.i64(i64 %i.i, i64 1) ; 2 uses
  %min.iters.check = icmp slt i16 %i.h, 8
  %diff.check = icmp ult i16 %i.a, 8
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.j, 32760                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4
  %wide.load123 = load <4 x i32>, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %wide.load, ptr %i.m, align 4
  store <4 x i32> %wide.load123, ptr %i.n, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader52, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader171

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader171: ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

.preheader52:                                     ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block
  %i.p = sext i16 %i.h to i32                     ; 3 uses
  %i.q = icmp sgt i16 %i.h, 0
  br i1 %i.q, label %.preheader51.lr.ph, label %.preheader

.preheader51.lr.ph:                               ; preds = %.preheader52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.s = zext nneg i16 %i.a to i64                ; 2 uses
  %wide.trip.count90 = zext nneg i32 %i.p to i64
  %invariant.gep113 = getelementptr [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %invariant.gep115 = getelementptr [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  br label %.preheader51

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader171, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader171 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.u, ptr %gep, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.v, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader52, !llvm.loop !38

.preheader51:                                     ; preds = %.preheader51.lr.ph, %.loopexit
  %indvars.iv85 = phi i64 [ 1, %.preheader51.lr.ph ], [ %indvars.iv.next86, %.loopexit ] ; 5 uses
  %indvars.iv74 = phi i64 [ 0, %.preheader51.lr.ph ], [ %indvars.iv.next75, %.loopexit ] ; 5 uses
  %.058 = phi i64 [ 0, %.preheader51.lr.ph ], [ %i.bb, %.loopexit ] ; 2 uses
  %min.iters.check125 = icmp samesign ult i64 %indvars.iv85, 4
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.preheader51
  %n.vec128 = and i64 %indvars.iv85, 9223372036854775804 ; 4 uses
  %i.w = sub nsw i64 %indvars.iv74, %n.vec128
  %i.x = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.058, i64 0
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next137, %vector.body129 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.x, %vector.ph126 ], [ %i.ak, %vector.body129 ]
  %vec.phi131 = phi <2 x i64> [ zeroinitializer, %vector.ph126 ], [ %i.al, %vector.body129 ]
  %i.y = sub i64 %indvars.iv74, %index130
  %i.z = getelementptr [4 x i8], ptr %invariant.gep113, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = getelementptr i8, ptr %i.z, i64 -12
  %wide.load132 = load <2 x i32>, ptr %i.aa, align 4
  %wide.load133 = load <2 x i32>, ptr %i.ab, align 4
  %reverse = shufflevector <2 x i32> %wide.load132, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse134 = shufflevector <2 x i32> %wide.load133, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = getelementptr [4 x i8], ptr %invariant.gep115, i64 %index130 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %wide.load135 = load <2 x i32>, ptr %i.ac, align 4
  %wide.load136 = load <2 x i32>, ptr %i.ad, align 4
  %i.ae = zext <2 x i32> %reverse to <2 x i64>
  %i.af = zext <2 x i32> %reverse134 to <2 x i64>
  %i.ag = zext <2 x i32> %wide.load135 to <2 x i64>
  %i.ah = zext <2 x i32> %wide.load136 to <2 x i64>
  %i.ai = mul nuw <2 x i64> %i.ag, %i.ae
  %i.aj = mul nuw <2 x i64> %i.ah, %i.af
  %i.ak = add <2 x i64> %i.ai, %vec.phi           ; 2 uses
  %i.al = add <2 x i64> %i.aj, %vec.phi131        ; 2 uses
  %index.next137 = add nuw i64 %index130, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next137, %n.vec128
  br i1 %i.am, label %middle.block138, label %vector.body129, !llvm.loop !39

middle.block138:                                  ; preds = %vector.body129
  %bin.rdx = add <2 x i64> %i.al, %i.ak
  %i.an = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n139 = icmp eq i64 %indvars.iv85, %n.vec128
  br i1 %cmp.n139, label %.loopexit, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.preheader51, %middle.block138
  %indvars.iv78.ph = phi i64 [ 0, %.preheader51 ], [ %n.vec128, %middle.block138 ]
  %indvars.iv76.ph = phi i64 [ %indvars.iv74, %.preheader51 ], [ %i.w, %middle.block138 ]
  %.156.ph = phi i64 [ %.058, %.preheader51 ], [ %i.an, %middle.block138 ]
  br label %scalar.ph124

.preheader:                                       ; preds = %.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader, %.preheader52
  %.lcssa109 = phi i32 [ %i.p, %.preheader52 ], [ %i.b, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader ], [ %i.p, %.loopexit ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %.preheader52 ], [ 0, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader ], [ %i.bb, %.loopexit ]
  %i.ao = icmp slt i32 %.lcssa109, %i.c
  br i1 %i.ao, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aq = sext i16 %i.a to i64                    ; 2 uses
  %i.ar = sext i32 %.lcssa109 to i64
  %wide.trip.count = sext i32 %i.c to i64
  %invariant.gep117 = getelementptr [4 x i8], ptr %0, i64 %i.aq ; 2 uses
  %invariant.gep119 = getelementptr [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  br label %bb.e

scalar.ph124:                                     ; preds = %scalar.ph124.preheader, %scalar.ph124
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %scalar.ph124 ], [ %indvars.iv78.ph, %scalar.ph124.preheader ] ; 2 uses
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %scalar.ph124 ], [ %indvars.iv76.ph, %scalar.ph124.preheader ] ; 2 uses
  %.156 = phi i64 [ %i.ax, %scalar.ph124 ], [ %.156.ph, %scalar.ph124.preheader ]
  %gep114 = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv76
  %i.as = load i32, ptr %gep114, align 4
  %gep116 = getelementptr [4 x i8], ptr %invariant.gep115, i64 %indvars.iv78
  %i.at = load i32, ptr %gep116, align 4
  %i.au = zext i32 %i.as to i64
  %i.av = zext i32 %i.at to i64
  %i.aw = mul nuw i64 %i.av, %i.au
  %i.ax = add i64 %i.aw, %.156                    ; 2 uses
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, -1
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %indvars.iv85
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph124, !llvm.loop !40

.loopexit:                                        ; preds = %scalar.ph124, %middle.block138
  %.lcssa121 = phi i64 [ %i.an, %middle.block138 ], [ %i.ax, %scalar.ph124 ] ; 2 uses
  %i.ay = trunc i64 %.lcssa121 to i32
  %i.az = and i32 %i.ay, 268435455
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv74
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = lshr i64 %.lcssa121, 28                 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count90
  br i1 %exitcond91.not, label %.preheader, label %.preheader51, !llvm.loop !41

._crit_edge68:                                    ; preds = %._crit_edge, %.preheader
  %i.bc = trunc i32 %i.c to i16                   ; 4 uses
  store i16 %i.bc, ptr %0, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = shl i16 %i.be, 1
  store i16 %i.bf, ptr %i.bd, align 2
  %i.bg = icmp sgt i16 %i.bc, 0
  br i1 %i.bg, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %._crit_edge68
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.bh = phi i16 [ %i.bc, %.lr.ph.i ], [ %i.bm, %bb.d ] ; 5 uses
  %i.bi = zext nneg i16 %i.bh to i64
  %2 = add nuw nsw i64 %i.bi, 4294967295
  %3 = and i64 %2, 4294967295
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %4, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

4:                                                ; preds = %bb.c
  %5 = add nsw i16 %i.bh, -1
  store i16 %5, ptr %0, align 4
  %6 = sext i16 %i.bh to i64
  %7 = add nsw i64 %6, 4294967294
  %8 = and i64 %7, 4294967294
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.d:                                             ; preds = %4
  %i.bm = add nsw i16 %i.bh, -2                   ; 2 uses
  store i16 %i.bm, ptr %0, align 4
  %i.bn = icmp sgt i16 %i.bh, 2
  br i1 %i.bn, label %bb.c, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %._crit_edge68
  %i.bo = icmp eq i16 %i.bc, 0
  br i1 %i.bo, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.d, %.critedge.i
  store i16 0, ptr %i.bd, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.c, %4, %.critedge.i, %.critedge.thread3.i
  ret void

bb.e:                                             ; preds = %.lr.ph67, %._crit_edge
  %indvars.iv101 = phi i64 [ %i.ar, %.lr.ph67 ], [ %indvars.iv.next102, %._crit_edge ] ; 3 uses
  %indvars.iv92.in = phi i32 [ %.lcssa109, %.lr.ph67 ], [ %indvars.iv92, %._crit_edge ]
  %.266 = phi i64 [ %.0.lcssa, %.lr.ph67 ], [ %i.db, %._crit_edge ] ; 3 uses
  %indvars.iv92 = add i32 %indvars.iv92.in, 1     ; 2 uses
  %indvars103 = trunc i64 %indvars.iv101 to i32
  %i.bp = load i16, ptr %0, align 4               ; 3 uses
  %i.bq = sext i16 %i.bp to i32                   ; 3 uses
  %i.br = add nsw i32 %i.bq, -1
  %i.bs = sub nsw i32 %indvars103, %i.br
  %i.bt = icmp slt i32 %i.bs, %i.bq
  br i1 %i.bt, label %.lr.ph63.preheader, label %._crit_edge

.lr.ph63.preheader:                               ; preds = %bb.e
  %i.bu = sub i32 %indvars.iv92, %i.bq
  %i.bv = sext i32 %i.bu to i64                   ; 4 uses
  %i.bw = sext i16 %i.bp to i64                   ; 2 uses
  %i.bx = sext i16 %i.bp to i64                   ; 3 uses
  %i.by = sub nsw i64 %i.bw, %i.bv                ; 3 uses
  %min.iters.check143 = icmp ult i64 %i.by, 4
  br i1 %min.iters.check143, label %.lr.ph63.preheader164, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph63.preheader
  %n.vec146 = and i64 %i.by, -4                   ; 4 uses
  %i.bz = sub nsw i64 %i.bx, %n.vec146
  %i.ca = add nsw i64 %n.vec146, %i.bv
  %i.cb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.266, i64 0
  %invariant.gep178 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %i.bv
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next157, %vector.body147 ] ; 3 uses
  %vec.phi149 = phi <2 x i64> [ %i.cb, %vector.ph144 ], [ %i.cn, %vector.body147 ]
  %vec.phi150 = phi <2 x i64> [ zeroinitializer, %vector.ph144 ], [ %i.co, %vector.body147 ]
  %i.cc = sub i64 %i.bx, %index148
  %i.cd = getelementptr [4 x i8], ptr %invariant.gep117, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = getelementptr i8, ptr %i.cd, i64 -12
  %wide.load151 = load <2 x i32>, ptr %i.ce, align 4
  %wide.load152 = load <2 x i32>, ptr %i.cf, align 4
  %reverse153 = shufflevector <2 x i32> %wide.load151, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse154 = shufflevector <2 x i32> %wide.load152, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %gep179 = getelementptr [4 x i8], ptr %invariant.gep178, i64 %index148 ; 2 uses
  %i.cg = getelementptr i8, ptr %gep179, i64 8
  %wide.load155 = load <2 x i32>, ptr %gep179, align 4
  %wide.load156 = load <2 x i32>, ptr %i.cg, align 4
  %i.ch = zext <2 x i32> %reverse153 to <2 x i64>
  %i.ci = zext <2 x i32> %reverse154 to <2 x i64>
  %i.cj = zext <2 x i32> %wide.load155 to <2 x i64>
  %i.ck = zext <2 x i32> %wide.load156 to <2 x i64>
  %i.cl = mul nuw <2 x i64> %i.cj, %i.ch
  %i.cm = mul nuw <2 x i64> %i.ck, %i.ci
  %i.cn = add <2 x i64> %i.cl, %vec.phi149        ; 2 uses
  %i.co = add <2 x i64> %i.cm, %vec.phi150        ; 2 uses
  %index.next157 = add nuw i64 %index148, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next157, %n.vec146
  br i1 %i.cp, label %middle.block158, label %vector.body147, !llvm.loop !42

middle.block158:                                  ; preds = %vector.body147
  %bin.rdx159 = add <2 x i64> %i.co, %i.cn
  %i.cq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx159) ; 2 uses
  %cmp.n160 = icmp eq i64 %i.by, %n.vec146
  br i1 %cmp.n160, label %._crit_edge, label %.lr.ph63.preheader164

.lr.ph63.preheader164:                            ; preds = %.lr.ph63.preheader, %middle.block158
  %indvars.iv96.in.ph = phi i64 [ %i.bx, %.lr.ph63.preheader ], [ %i.bz, %middle.block158 ]
  %indvars.iv94.ph = phi i64 [ %i.bv, %.lr.ph63.preheader ], [ %i.ca, %middle.block158 ]
  %.362.ph = phi i64 [ %.266, %.lr.ph63.preheader ], [ %i.cq, %middle.block158 ]
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader164, %.lr.ph63
  %indvars.iv96.in = phi i64 [ %indvars.iv96, %.lr.ph63 ], [ %indvars.iv96.in.ph, %.lr.ph63.preheader164 ] ; 2 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.lr.ph63 ], [ %indvars.iv94.ph, %.lr.ph63.preheader164 ] ; 2 uses
  %.362 = phi i64 [ %i.cw, %.lr.ph63 ], [ %.362.ph, %.lr.ph63.preheader164 ]
  %indvars.iv96 = add nsw i64 %indvars.iv96.in, -1
  %gep118 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %indvars.iv96.in
  %i.cr = load i32, ptr %gep118, align 4
  %gep120 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %indvars.iv94
  %i.cs = load i32, ptr %gep120, align 4
  %i.ct = zext i32 %i.cr to i64
  %i.cu = zext i32 %i.cs to i64
  %i.cv = mul nuw i64 %i.cu, %i.ct
  %i.cw = add i64 %i.cv, %.362                    ; 2 uses
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.cx = icmp slt i64 %indvars.iv.next95, %i.bw
  br i1 %i.cx, label %.lr.ph63, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph63, %middle.block158, %bb.e
  %.3.lcssa = phi i64 [ %.266, %bb.e ], [ %i.cq, %middle.block158 ], [ %i.cw, %.lr.ph63 ] ; 2 uses
  %i.cy = trunc i64 %.3.lcssa to i32
  %i.cz = and i32 %i.cy, 268435455
  %i.da = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv101
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = lshr i64 %.3.lcssa, 28
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count
  br i1 %exitcond104.not, label %._crit_edge68, label %bb.e, !llvm.loop !44
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum17AssignPowerUInt16Eti(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.c, align 4
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit.sink.split

bb.c:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  store i16 0, ptr %i.d, align 2
  %i.e = zext i16 %1 to i32                       ; 2 uses
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.h = mul nsw i32 %i.j, %2
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.077 = phi i16 [ %i.i, %.lr.ph ], [ %1, %bb.c ]
  %.03976 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.c ]
  %i.i = lshr exact i16 %.077, 1                  ; 3 uses
  %i.j = add nuw nsw i32 %.03976, 1               ; 2 uses
  %i.k = zext nneg i16 %i.i to i32                ; 2 uses
  %i.l = and i32 %i.k, 1
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !45

._crit_edge:                                      ; preds = %.preheader.loopexit, %bb.c
  %.039.lcssa = phi i32 [ 0, %bb.c ], [ %i.h, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi i16 [ %1, %bb.c ], [ %i.i, %.preheader.loopexit ] ; 3 uses
  %.lcssa75 = phi i32 [ %i.e, %bb.c ], [ %i.k, %.preheader.loopexit ]
  %i.n = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %.lcssa75, i1 true) ; 2 uses
  %i.o = sub nuw nsw i32 32, %i.n
  %i.p = mul nsw i32 %i.o, %2
  %i.q = icmp sgt i32 %i.p, 3555
  br i1 %i.q, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %._crit_edge, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %.045 = phi i32 [ %i.r, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit ], [ 1, %._crit_edge ] ; 3 uses
  %.not50 = icmp slt i32 %2, %.045
  %i.r = shl i32 %.045, 1
  br i1 %.not50, label %bb.e, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit, !llvm.loop !46

bb.e:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit
  %i.s = ashr i32 %.045, 2                        ; 2 uses
  %i.t = zext i16 %.0.lcssa to i64                ; 9 uses
  %.not98 = icmp eq i32 %i.s, 0
  br i1 %.not98, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.e
  %i.u = or disjoint i32 %i.n, 32
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph89, %bb.h
  %.04187 = phi i1 [ false, %.lr.ph89 ], [ %.2, %bb.h ] ; 2 uses
  %.04286 = phi i64 [ %i.t, %.lr.ph89 ], [ %.244, %bb.h ] ; 2 uses
  %.14685 = phi i32 [ %i.s, %.lr.ph89 ], [ %i.ab, %bb.h ] ; 2 uses
  %i.w = mul nuw i64 %.04286, %.04286             ; 3 uses
  %i.x = and i32 %.14685, %2
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i64 %i.w, %i.v
  %i.z = icmp ne i64 %i.y, 0                      ; 2 uses
  %i.aa = select i1 %i.z, i64 1, i64 %i.t
  %.143 = mul i64 %i.aa, %i.w
  %.1 = select i1 %i.z, i1 true, i1 %.04187
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.244 = phi i64 [ %.143, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %.2 = phi i1 [ %.1, %bb.g ], [ %.04187, %bb.f ] ; 2 uses
  %i.ab = ashr i32 %.14685, 1                     ; 3 uses
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp ult i64 %.244, 4294967296
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.f, label %._crit_edge90, !llvm.loop !47

._crit_edge90:                                    ; preds = %bb.h, %bb.e
  %.146.lcssa = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.h ] ; 2 uses
  %.042.lcssa = phi i64 [ %i.t, %bb.e ], [ %.244, %bb.h ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6icu_7817double_conversion6Bignum17AssignPowerUInt16Eti:bb.a
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.dp, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.eb, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %bb.w

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.eb, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = lshr i32 %i.ea, %i.dl                   ; 2 uses
  %i.ec = shl i32 %i.ea, %i.dh
  %i.ed = add i32 %i.ec, %.014.i.i
  %i.ee = and i32 %i.ed, 268435455
  store i32 %i.ee, ptr %i.dz, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !50

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.ef, align 4
  %i.eg = add nuw nsw i16 %i.db, 1
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit.sink.split

_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit.sink.split: ; preds = %bb.b, %bb.w
  %.sink = phi i16 [ %i.eg, %bb.w ], [ 1, %bb.b ]
  store i16 %.sink, ptr %0, align 4
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit.sink.split, %._crit_edge.i.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i71, %._crit_edge97
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7817double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 6 uses
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.d = load i16, ptr %i.c, align 2              ; 4 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, %i.b                   ; 2 uses
  %i.g = load i16, ptr %1, align 4                ; 2 uses
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2              ; 3 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 2 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i16 %i.d, %i.j
  br i1 %i.n, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.p = add nsw i32 %i.o, %i.b
  %i.q = icmp sgt i32 %i.p, 128
  br i1 %i.q, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.c
  %i.r = icmp sgt i16 %i.a, 0
  br i1 %i.r, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.s = zext nneg i16 %i.a to i64                ; 6 uses
  %i.t = sext i32 %i.o to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 16
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.u = sext i16 %i.j to i64
  %i.v = sext i16 %i.d to i64
  %i.w = sub nsw i64 %i.u, %i.v
  %i.x = shl nsw i64 %i.w, 2
  %i.y = add nsw i64 %i.x, -1
  %diff.check = icmp ult i64 %i.y, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %i.ac, align 4
  %wide.load86 = load <4 x i32>, ptr %i.ad, align 4
  %i.ae = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aa ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -12
  %i.ag = getelementptr i8, ptr %i.ae, i64 -28
  store <4 x i32> %wide.load, ptr %i.af, align 4
  store <4 x i32> %wide.load86, ptr %i.ag, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br i1 %cmp.n, label %.lr.ph20.i.loopexit, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i ], [ %i.z, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #14
  unreachable

.lr.ph20.i.loopexit:                              ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block
  %.pre = load i16, ptr %0, align 4
  %.pre49 = load i16, ptr %i.c, align 2
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.loopexit, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ai = phi i16 [ %.pre49, %.lr.ph20.i.loopexit ], [ %i.d, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.aj = phi i16 [ %.pre, %.lr.ph20.i.loopexit ], [ %i.a, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = zext nneg i32 %i.o to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.am, i1 false)
  %i.an = trunc i32 %i.o to i16                   ; 2 uses
  %i.ao = add i16 %i.aj, %i.an                    ; 3 uses
  store i16 %i.ao, ptr %0, align 4
  %i.ap = sub i16 %i.ai, %i.an                    ; 2 uses
  store i16 %i.ap, ptr %i.c, align 2
  %.pre50 = load i16, ptr %1, align 4             ; 2 uses
  %.pre51 = load i16, ptr %i.i, align 2
  %.pre52 = sext i16 %i.ao to i32
  %.pre53 = sext i16 %i.ap to i32
  %.pre55 = add nsw i32 %.pre53, %.pre52
  %.pre57 = sext i16 %.pre50 to i32
  %.pre59 = sext i16 %.pre51 to i32
  %.pre61 = add nsw i32 %.pre59, %.pre57
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.aq = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ar = load i32, ptr %i.aq, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ar, ptr %gep.i, align 4
  %i.as = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.as, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i.loopexit, !llvm.loop !52

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.b, %.lr.ph20.i
  %.pre-phi62 = phi i32 [ %i.l, %bb.b ], [ %.pre61, %.lr.ph20.i ]
  %.pre-phi56 = phi i32 [ %i.f, %bb.b ], [ %.pre55, %.lr.ph20.i ]
  %i.at = phi i16 [ %i.g, %bb.b ], [ %.pre50, %.lr.ph20.i ]
  %i.au = phi i16 [ %i.a, %bb.b ], [ %i.ao, %.lr.ph20.i ] ; 2 uses
  %i.av = icmp sgt i32 %.pre-phi56, %.pre-phi62
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit, %.lr.ph
  %i.aw = phi i16 [ %i.bc, %.lr.ph ], [ %i.au, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ]
  %.03141 = phi i16 [ %i.bb, %.lr.ph ], [ 0, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ]
  %i.ax = sext i16 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = trunc i32 %i.az to i16
  %i.bb = add i16 %.03141, %i.ba                  ; 2 uses
  tail call void @_ZN6icu_7817double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.az)
  %i.bc = load i16, ptr %0, align 4               ; 3 uses
  %i.bd = sext i16 %i.bc to i32
  %i.be = load i16, ptr %i.c, align 2
  %i.bf = sext i16 %i.be to i32
  %i.bg = add nsw i32 %i.bf, %i.bd
  %i.bh = load i16, ptr %1, align 4               ; 2 uses
  %i.bi = sext i16 %i.bh to i32
  %i.bj = load i16, ptr %i.i, align 2
  %i.bk = sext i16 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, %i.bi
  %i.bm = icmp sgt i32 %i.bg, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %.031.lcssa = phi i16 [ 0, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.lcssa40 = phi i16 [ %i.au, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.bc, %.lr.ph ]
  %.lcssa = phi i16 [ %i.at, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.bh, %.lr.ph ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bo = sext i16 %.lcssa40 to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4     ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4            ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bt = sext i16 %.lcssa to i64
  %i.bu = getelementptr [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4            ; 5 uses
  %i.bx = icmp eq i16 %.lcssa, 1
  br i1 %i.bx, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.by = udiv i32 %i.br, %i.bw                   ; 2 uses
  %i.bz = mul i32 %i.by, %i.bw                    ; 0 uses
  %.recomposed = urem i32 %i.br, %i.bw
  store i32 %.recomposed, ptr %i.bq, align 4
  %i.ca = trunc i32 %i.by to i16
  %i.cb = add i16 %.031.lcssa, %i.ca              ; 3 uses
  %.pr.i = load i16, ptr %0, align 4              ; 3 uses
  %i.cc = icmp sgt i16 %.pr.i, 0
  br i1 %i.cc, label %.lr.ph.i33, label %.critedge.i

.lr.ph.i33:                                       ; preds = %bb.e, %bb.f
  %i.cd = phi i16 [ %i.ci, %bb.f ], [ %.pr.i, %bb.e ] ; 3 uses
  %i.ce = zext nneg i16 %i.cd to i64
  %2 = add nuw nsw i64 %i.ce, 4294967295
  %3 = and i64 %2, 4294967295
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %3
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.f, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.f:                                             ; preds = %.lr.ph.i33
  %i.ci = add nsw i16 %i.cd, -1                   ; 2 uses
  store i16 %i.ci, ptr %0, align 4
  %i.cj = icmp sgt i16 %i.cd, 1
  br i1 %i.cj, label %.lr.ph.i33, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.e
  %i.ck = icmp eq i16 %.pr.i, 0
  br i1 %i.ck, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.f, %.critedge.i
  store i16 0, ptr %i.c, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %._crit_edge
  %i.cl = add i32 %i.bw, 1
  %i.cm = udiv i32 %i.br, %i.cl                   ; 3 uses
  %i.cn = trunc i32 %i.cm to i16
  %i.co = add i16 %.031.lcssa, %i.cn              ; 2 uses
  tail call void @_ZN6icu_7817double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.cm)
  %i.cp = add nsw i32 %i.cm, 1
  %i.cq = mul i32 %i.cp, %i.bw
  %i.cr = icmp ugt i32 %i.cq, %i.br
  br i1 %i.cr, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread
  %.132 = phi i16 [ %i.dr, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread ], [ %i.co, %bb.g ] ; 3 uses
  %i.cs = load i16, ptr %1, align 4
  %i.ct = sext i16 %i.cs to i32
  %i.cu = load i16, ptr %i.i, align 2             ; 2 uses
  %i.cv = sext i16 %i.cu to i32                   ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.ct                ; 5 uses
  %i.cx = load i16, ptr %0, align 4
  %i.cy = sext i16 %i.cx to i32
  %i.cz = load i16, ptr %i.c, align 2             ; 2 uses
  %i.da = sext i16 %i.cz to i32                   ; 3 uses
  %i.db = add nsw i32 %i.da, %i.cy                ; 3 uses
  %i.dc = icmp slt i32 %i.cw, %i.db
  br i1 %i.dc, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.dd = icmp sgt i32 %i.cw, %i.db
  br i1 %i.dd, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h
  %i.de = tail call i16 @llvm.smin.i16(i16 %i.cz, i16 %i.cu)
  %i.df = sext i16 %i.de to i32                   ; 2 uses
  %.not.not.not.i.i81 = icmp sgt i32 %i.cw, %i.df
  br i1 %.not.not.not.i.i81, label %.lr.ph85, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread

bb.i:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i
  %.not.not.not.i.i = icmp sgt i32 %.024.i.i84, %i.df
  br i1 %.not.not.not.i.i, label %.lr.ph85, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, !llvm.loop !54

.lr.ph85:                                         ; preds = %.preheader.i.i, %bb.i
  %.0.i.i83 = phi i32 [ %.1.i.i, %bb.i ], [ undef, %.preheader.i.i ]
  %.024.in.i.i82 = phi i32 [ %.024.i.i84, %bb.i ], [ %i.cw, %.preheader.i.i ] ; 5 uses
  %.024.i.i84 = add nsw i32 %.024.in.i.i82, -1    ; 4 uses
  %.not.i.i.i = icmp sgt i32 %.024.in.i.i82, %i.cw
  %i.dg = icmp sle i32 %.024.in.i.i82, %i.cv
  %or.cond.i.i.i = or i1 %i.dg, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph85
  %i.dh = sub nsw i32 %.024.i.i84, %i.cv
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i: ; preds = %bb.j, %.lr.ph85
  %.0.i.i.i = phi i32 [ %i.dk, %bb.j ], [ 0, %.lr.ph85 ] ; 3 uses
  %.not.i29.i.i = icmp sgt i32 %.024.in.i.i82, %i.db
  %i.dl = icmp sle i32 %.024.in.i.i82, %i.da
  %or.cond.i30.i.i = or i1 %i.dl, %.not.i29.i.i
  br i1 %or.cond.i30.i.i, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i
  %i.dm = sub nsw i32 %.024.i.i84, %i.da
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i: ; preds = %bb.k, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i
  %.0.i31.i.i = phi i32 [ %i.dp, %bb.k ], [ 0, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i ] ; 3 uses
  %.not.i.i = icmp ult i32 %.0.i.i.i, %.0.i31.i.i
  %.not33.i.i = icmp ugt i32 %.0.i.i.i, %.0.i31.i.i
  %..0.i.i = select i1 %.not33.i.i, i32 1, i32 %.0.i.i83
  %cond1.i.i = icmp eq i32 %.0.i.i.i, %.0.i31.i.i
  %.1.i.i = select i1 %.not.i.i, i32 -1, i32 %..0.i.i ; 2 uses
  br i1 %cond1.i.i, label %bb.i, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit, !llvm.loop !54

_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit: ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i
  %i.dq = icmp slt i32 %.1.i.i, 1
  br i1 %i.dq, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread: ; preds = %bb.i, %.preheader.i.i, %.preheader, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit
  tail call void @_ZN6icu_7817double_conversion6Bignum14SubtractBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1)
  %i.dr = add i16 %.132, 1
  br label %.preheader, !llvm.loop !55

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.h, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit, %.lr.ph.i33, %.critedge.thread3.i, %.critedge.i, %bb.g, %bb.a
  %.2 = phi i16 [ 0, %bb.a ], [ %i.cb, %.critedge.thread3.i ], [ %i.co, %bb.g ], [ %i.cb, %.lr.ph.i33 ], [ %i.cb, %.critedge.i ], [ %.132, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit ], [ %.132, %bb.h ]
  ret i16 %.2
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum13SubtractTimesERKS1_i(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph54, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.lr.ph54:                                         ; preds = %.preheader, %.lr.ph54
  %.053 = phi i32 [ %i.c, %.lr.ph54 ], [ 0, %.preheader ]
  tail call void @_ZN6icu_7817double_conversion6Bignum14SubtractBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1)
  %i.c = add nuw nsw i32 %.053, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %2
  br i1 %exitcond.not, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %.lr.ph54, !llvm.loop !56

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = sext i16 %i.h to i32
  %i.j = sub nsw i32 %i.f, %i.i                   ; 2 uses
  %i.k = load i16, ptr %1, align 4                ; 2 uses
  %i.l = icmp sgt i16 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = sext i32 %i.j to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.o, i64 %i.p
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.035.lcssa = phi i32 [ 0, %bb.b ], [ %i.aj, %bb.c ]
  %.lcssa43.in = phi i16 [ %i.k, %bb.b ], [ %i.ak, %bb.c ]
  %.lcssa43 = sext i16 %.lcssa43.in to i32
  %i.q = add nsw i32 %i.j, %.lcssa43              ; 2 uses
  %i.r = load i16, ptr %0, align 4                ; 2 uses
  %i.s = sext i16 %i.r to i32
  %.not47 = icmp slt i32 %i.q, %i.s
  br i1 %.not47, label %.lr.ph51, label %.critedge

.lr.ph51:                                         ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = sext i32 %i.q to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.03545 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %bb.c ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, %i.m
  %i.z = zext i32 %.03545 to i64
  %i.aa = add nuw nsw i64 %i.y, %i.z              ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ab = load i32, ptr %gep, align 4
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = and i32 %i.ac, 268435455
  %i.ae = sub i32 %i.ab, %i.ad                    ; 2 uses
  %i.af = and i32 %i.ae, 268435455
  store i32 %i.af, ptr %gep, align 4
  %i.ag = lshr i32 %i.ae, 31
  %i.ah = lshr i64 %i.aa, 28
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add i32 %i.ag, %i.ai                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i16, ptr %1, align 4               ; 2 uses
  %i.al = sext i16 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.c, label %._crit_edge, !llvm.loop !57

bb.d:                                             ; preds = %.lr.ph51, %bb.e
  %indvars.iv61 = phi i64 [ %i.u, %.lr.ph51 ], [ %indvars.iv.next62, %bb.e ] ; 2 uses
  %.148 = phi i32 [ %.035.lcssa, %.lr.ph51 ], [ %i.as, %bb.e ] ; 2 uses
  %i.an = icmp eq i32 %.148, 0
  br i1 %i.an, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv61 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sub i32 %i.ap, %.148                    ; 2 uses
  %i.ar = and i32 %i.aq, 268435455
  store i32 %i.ar, ptr %i.ao, align 4
  %i.as = lshr i32 %i.aq, 31
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.at = load i16, ptr %0, align 4               ; 2 uses
  %i.au = sext i16 %i.at to i64
  %.not = icmp slt i64 %indvars.iv.next62, %i.au
  br i1 %.not, label %bb.d, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %bb.e, %._crit_edge
  %.lcssa = phi i16 [ %i.r, %._crit_edge ], [ %i.at, %bb.e ] ; 3 uses
  %i.av = icmp sgt i16 %.lcssa, 0
  br i1 %i.av, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.critedge
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.aw = phi i16 [ %.lcssa, %.lr.ph.i ], [ %i.bb, %bb.g ] ; 3 uses
  %i.ax = zext nneg i16 %i.aw to i64
  %4 = add nuw nsw i64 %i.ax, 4294967295
  %5 = and i64 %4, 4294967295
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %5
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.g, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.bb = add nsw i16 %i.aw, -1                   ; 2 uses
  store i16 %i.bb, ptr %0, align 4
  %i.bc = icmp sgt i16 %i.aw, 1
  br i1 %i.bc, label %bb.f, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %.critedge
  %i.bd = icmp eq i16 %.lcssa, 0
  br i1 %i.bd, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.g, %.critedge.i
  store i16 0, ptr %i.g, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.d, %bb.f, %.lr.ph54, %.preheader, %.critedge.thread3.i, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7817double_conversion6Bignum11ToHexStringEPci(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 3 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 2
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %1, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.d, align 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.e = sext i16 %i.a to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2
  %i.h = sext i16 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.e
  %i.j = mul nsw i32 %i.i, 7
  %i.k = add nsw i32 %i.j, -7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.m = sext i16 %i.a to i64
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not5.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i, label %_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.d ]
  %.046.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.p, %bb.d ]
  %i.q = lshr i32 %.046.i, 4                      ; 2 uses
  %i.r = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i, !llvm.loop !59

_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.r, %.lr.ph.i ]
  %i.s = add nsw i32 %i.k, %.0.lcssa.i            ; 3 uses
  %.not = icmp slt i32 %i.s, %2
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  store i8 0, ptr %i.v, align 1
  %i.w = load i16, ptr %i.f, align 2
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep62, i8 48, i64 7, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, -7  ; 2 uses
  %i.z = add nuw nsw i32 %.03345, 1               ; 2 uses
  %i.aa = load i16, ptr %i.f, align 2
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.preheader40, label %.preheader.loopexit, !llvm.loop !60

.preheader.loopexit:                              ; preds = %.preheader40
  %indvars = trunc i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.034.lcssa = phi i32 [ %i.t, %bb.e ], [ %indvars, %.preheader.loopexit ] ; 2 uses
  %i.ad = load i16, ptr %0, align 4               ; 2 uses
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
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not3853 = icmp eq i32 %i.ai, 0
  br i1 %.not3853, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %i.aj = sext i32 %.2.lcssa to i64
  br label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv71 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next72, %.lr.ph ] ; 5 uses
  %indvars.iv69 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next70, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv69
  %i.al = load i32, ptr %i.ak, align 4            ; 7 uses
  %i.am = and i32 %i.al, 15                       ; 2 uses
  %i.an = icmp samesign ult i32 %i.am, 10
  %i.ao = trunc nuw nsw i32 %i.am to i8           ; 2 uses
  %i.ap = or disjoint i8 %i.ao, 48
  %i.aq = add nuw nsw i8 %i.ao, 55
  %.0.i = select i1 %i.an, i8 %i.ap, i8 %i.aq
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %indvars.iv71
  store i8 %.0.i, ptr %i.ar, align 1
  %i.as = lshr i32 %i.al, 4
  %i.at = and i32 %i.as, 15                       ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 10
  %i.av = trunc nuw nsw i32 %i.at to i8           ; 2 uses
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = add nuw nsw i8 %i.av, 55
  %.0.i.1 = select i1 %i.au, i8 %i.aw, i8 %i.ax
  %i.ay = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  store i8 %.0.i.1, ptr %i.az, align 1
  %i.ba = lshr i32 %i.al, 8
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, 10
  %i.bd = trunc nuw nsw i32 %i.bb to i8           ; 2 uses
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = add nuw nsw i8 %i.bd, 55
  %.0.i.2 = select i1 %i.bc, i8 %i.be, i8 %i.bf
  %i.bg = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  store i8 %.0.i.2, ptr %i.bh, align 1
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
  store <4 x i8> %i.bx, ptr %i.bj, align 1
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -7 ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.by = load i16, ptr %0, align 4
  %i.bz = sext i16 %i.by to i64
  %i.ca = add nsw i64 %i.bz, -1                   ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next70, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !61

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
  store i8 %.0.i39, ptr %i.ch, align 1
end_hunk_4
