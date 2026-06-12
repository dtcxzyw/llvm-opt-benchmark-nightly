inline.NumInlined: 136
inline.NumDeleted: 16
begin_hunk_0_@_ZN6icu_7817double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE:bb.a
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
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i26
  %i.fd = phi i16 [ %.pr.i, %.lr.ph.i26 ], [ %i.fk, %bb.e ] ; 3 uses
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = add nuw nsw i64 %i.fe, 4294967295
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.e, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.e:                                             ; preds = %bb.d
  %i.fk = add nsw i16 %i.fd, -1                   ; 2 uses
  store i16 %i.fk, ptr %0, align 4
  %i.fl = icmp sgt i16 %i.fd, 1
  br i1 %i.fl, label %bb.d, label %.critedge.thread3.i, !llvm.loop !10

.critedge.i:                                      ; preds = %_ZN6icu_7817double_conversion6Bignum9AddUInt64Em.exit25
  %i.fm = icmp eq i16 %.pr.i, 0
  br i1 %i.fm, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.e, %.critedge.i
  store i16 0, ptr %i.a, align 2
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.d, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = icmp eq i32 %1, 0
  %i.a = load i16, ptr %0, align 4                ; 5 uses
  %i.b = icmp eq i16 %i.a, 0
  %or.cond = select i1 %2, i1 true, i1 %i.b
  br i1 %or.cond, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %.preheader34

.preheader34:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 26
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = icmp sgt i16 %i.a, 0
  br i1 %i.e, label %.lr.ph.split, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader: ; preds = %.lr.ph
  %i.f = add nsw i32 %1, -27
  %i.g = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 53)
  %i.h = add nuw i32 %i.g, 26                     ; 2 uses
  %i.i = urem i32 %i.h, 27
  %.neg = sub nsw i32 %i.i, %i.h
  %i.j = add nsw i32 %.neg, %i.f
  br label %.preheader

.preheader:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader, %.preheader34
  %i.k = phi i16 [ %i.a, %.preheader34 ], [ %i.a, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader ], [ %i.bt, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ] ; 4 uses
  %.0.lcssa = phi i32 [ %1, %.preheader34 ], [ %i.j, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit.us.preheader ], [ %i.bu, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ]
  %.0.lcssa.fr = freeze i32 %.0.lcssa             ; 5 uses
  %i.l = icmp sgt i32 %.0.lcssa.fr, 12
  br i1 %i.l, label %.lr.ph43, label %._crit_edge

.lr.ph43:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.n = icmp sgt i16 %i.k, 0
  br i1 %i.n, label %.lr.ph43.split, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit.us.preheader

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit.us.preheader: ; preds = %.lr.ph43
  %i.o = add nsw i32 %.0.lcssa.fr, -13
  %i.p = tail call i32 @llvm.usub.sat.i32(i32 %.0.lcssa.fr, i32 25)
  %i.q = add nuw i32 %i.p, 12                     ; 2 uses
  %i.r = urem i32 %i.q, 13
  %.neg74 = sub i32 %i.r, %i.q
  %i.s = add i32 %.neg74, %i.o
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit
  %i.t = phi i16 [ %i.bt, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ], [ %i.a, %.lr.ph ] ; 7 uses
  %.041 = phi i32 [ %i.bu, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit ], [ %1, %.lr.ph ] ; 2 uses
  %i.u = icmp sgt i16 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %wide.trip.count.i = zext nneg i16 %i.t to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.v = icmp eq i16 %i.t, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 32766
  br label %bb.b

.preheader.i.unr-lcssa:                           ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ]
  %.023.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bj, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod113 = trunc i16 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nuw i64 %i.y, 4195354525
  %i.aa = and i64 %.023.i.epil.init, 268435455
  %i.ab = add nuw i64 %i.z, %i.aa                 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 268435455
  store i32 %i.ad, ptr %i.w, align 4
  %i.ae = lshr i64 %.023.i.epil.init, 28
  %i.af = lshr i64 %i.ab, 28
  %i.ag = mul i64 %i.y, 27755575600
  %i.ah = add i64 %i.ag, %i.ae
  %i.ai = add i64 %i.ah, %i.af
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa108 = phi i64 [ %i.bj, %.preheader.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %.not24.i = icmp eq i64 %.lcssa108, 0
  br i1 %.not24.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %.023.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bj, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = mul nuw i64 %i.al, 4195354525
  %i.an = and i64 %.023.i, 268435455
  %i.ao = add nuw i64 %i.am, %i.an                ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 268435455
  store i32 %i.aq, ptr %i.aj, align 4
  %i.ar = lshr i64 %.023.i, 28
  %i.as = lshr i64 %i.ao, 28
  %i.at = mul i64 %i.al, 27755575600
  %i.au = add i64 %i.at, %i.ar
  %i.av = add i64 %i.au, %i.as                    ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul nuw i64 %i.az, 4195354525
  %i.bb = and i64 %i.av, 268435455
  %i.bc = add nuw i64 %i.ba, %i.bb                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 268435455
  store i32 %i.be, ptr %i.ax, align 4
  %i.bf = lshr i64 %i.av, 28
  %i.bg = lshr i64 %i.bc, 28
  %i.bh = mul i64 %i.az, 27755575600
  %i.bi = add i64 %i.bh, %i.bf
  %i.bj = add i64 %i.bi, %i.bg                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.b, !llvm.loop !11

.lr.ph26.i:                                       ; preds = %.preheader.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %i.bk = phi i16 [ %i.br, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %i.t, %.preheader.i ] ; 2 uses
  %.125.i = phi i64 [ %i.bs, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %.lcssa108, %.preheader.i ] ; 2 uses
  %i.bl = icmp sgt i16 %i.bk, 127
  br i1 %i.bl, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %.lr.ph26.i
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %.lr.ph26.i
  %i.bm = trunc i64 %.125.i to i32
  %i.bn = and i32 %i.bm, 268435455
  %i.bo = sext i16 %i.bk to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bo
  store i32 %i.bn, ptr %i.bp, align 4
  %i.bq = load i16, ptr %0, align 4
  %i.br = add i16 %i.bq, 1                        ; 3 uses
  store i16 %i.br, ptr %0, align 4
  %i.bs = lshr i64 %.125.i, 28                    ; 2 uses
  %.not.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit, label %.lr.ph26.i, !llvm.loop !12

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt64Em.exit: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %.lr.ph.split, %.preheader.i
  %i.bt = phi i16 [ %i.t, %.preheader.i ], [ %i.t, %.lr.ph.split ], [ %i.br, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ] ; 2 uses
  %i.bu = add nsw i32 %.041, -27                  ; 2 uses
  %i.bv = icmp sgt i32 %.041, 53
  br i1 %i.bv, label %.lr.ph.split, label %.preheader, !llvm.loop !13

.lr.ph43.split:                                   ; preds = %.lr.ph43, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %i.bw = phi i16 [ %i.dh, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ], [ %i.k, %.lr.ph43 ] ; 7 uses
  %.142 = phi i32 [ %i.di, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit ], [ %.0.lcssa.fr, %.lr.ph43 ] ; 2 uses
  %i.bx = icmp sgt i16 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i11, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit

.lr.ph.i11:                                       ; preds = %.lr.ph43.split
  %wide.trip.count.i12 = zext nneg i16 %i.bw to i64 ; 2 uses
  %xtraiter115 = and i64 %wide.trip.count.i12, 1
  %i.by = icmp eq i16 %i.bw, 1
  br i1 %i.by, label %.epil.preheader114, label %.lr.ph.i11.new

.lr.ph.i11.new:                                   ; preds = %.lr.ph.i11
  %unroll_iter119 = and i64 %wide.trip.count.i12, 32766
  br label %bb.d

.preheader.i16.unr-lcssa:                         ; preds = %bb.d
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.preheader.i16, label %.epil.preheader114

.epil.preheader114:                               ; preds = %.preheader.i16.unr-lcssa, %.lr.ph.i11
  %indvars.iv.i13.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %indvars.iv.next.i14.1, %.preheader.i16.unr-lcssa ]
  %.017.i.epil.init = phi i64 [ 0, %.lr.ph.i11 ], [ %i.cx, %.preheader.i16.unr-lcssa ]
  %lcmp.mod118 = trunc i16 %i.bw to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i13.epil.init ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = mul nuw nsw i64 %i.cb, 1220703125
  %i.cd = add nuw nsw i64 %i.cc, %.017.i.epil.init ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 268435455
  store i32 %i.cf, ptr %i.bz, align 4
  %i.cg = lshr i64 %i.cd, 28
  br label %.preheader.i16

.preheader.i16:                                   ; preds = %.preheader.i16.unr-lcssa, %.epil.preheader114
  %.lcssa104 = phi i64 [ %i.cx, %.preheader.i16.unr-lcssa ], [ %i.cg, %.epil.preheader114 ] ; 2 uses
  %.not18.i = icmp eq i64 %.lcssa104, 0
  br i1 %.not18.i, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit, label %.lr.ph20.i

bb.d:                                             ; preds = %bb.d, %.lr.ph.i11.new
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i11.new ], [ %indvars.iv.next.i14.1, %bb.d ] ; 3 uses
  %.017.i = phi i64 [ 0, %.lr.ph.i11.new ], [ %i.cx, %bb.d ]
  %niter120 = phi i64 [ 0, %.lr.ph.i11.new ], [ %niter120.next.1, %bb.d ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i13 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4
end_hunk_0
begin_hunk_1_@_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi:bb.a/@_ZN6icu_7817double_conversion6Bignum20MultiplyByPowerOfTenEi
    i32 0, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread
  ]

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread: ; preds = %bb.f
  store i16 0, ptr %0, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.dp, align 2
  br label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

bb.g:                                             ; preds = %bb.f
  %i.dq = icmp sgt i16 %.pr, 0
  br i1 %i.dq, label %.lr.ph.i19, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31

.lr.ph.i19:                                       ; preds = %bb.g
  %wide.trip.count.i20 = zext nneg i16 %.pr to i64 ; 2 uses
  %i.dr = zext i32 %i.do to i64                   ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %xtraiter122 = and i64 %wide.trip.count.i20, 1
  %i.dt = icmp eq i16 %.pr, 1
  br i1 %i.dt, label %.epil.preheader121, label %.lr.ph.i19.new

.lr.ph.i19.new:                                   ; preds = %.lr.ph.i19
  %unroll_iter126 = and i64 %wide.trip.count.i20, 32766
  br label %bb.h

.preheader.i25.unr-lcssa:                         ; preds = %bb.h
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.preheader.i25, label %.epil.preheader121

.epil.preheader121:                               ; preds = %.preheader.i25.unr-lcssa, %.lr.ph.i19
  %indvars.iv.i21.epil.init = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i23.1, %.preheader.i25.unr-lcssa ]
  %.017.i22.epil.init = phi i64 [ 0, %.lr.ph.i19 ], [ %i.es, %.preheader.i25.unr-lcssa ]
  %lcmp.mod125 = trunc i16 %.pr to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i21.epil.init ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = mul nuw i64 %i.dw, %i.dr
  %i.dy = add i64 %i.dx, %.017.i22.epil.init      ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 268435455
  store i32 %i.ea, ptr %i.du, align 4
  %i.eb = lshr i64 %i.dy, 28
  br label %.preheader.i25

.preheader.i25:                                   ; preds = %.preheader.i25.unr-lcssa, %.epil.preheader121
  %.lcssa103 = phi i64 [ %i.es, %.preheader.i25.unr-lcssa ], [ %i.eb, %.epil.preheader121 ] ; 2 uses
  %.not18.i26 = icmp eq i64 %.lcssa103, 0
  br i1 %.not18.i26, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75, label %.lr.ph20.i27

bb.h:                                             ; preds = %bb.h, %.lr.ph.i19.new
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i19.new ], [ %indvars.iv.next.i23.1, %bb.h ] ; 3 uses
  %.017.i22 = phi i64 [ 0, %.lr.ph.i19.new ], [ %i.es, %bb.h ]
  %niter127 = phi i64 [ 0, %.lr.ph.i19.new ], [ %niter127.next.1, %bb.h ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i21 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = zext i32 %i.ed to i64
  %i.ef = mul nuw i64 %i.ee, %i.dr
  %i.eg = add i64 %i.ef, %.017.i22                ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 268435455
  store i32 %i.ei, ptr %i.ec, align 4
  %i.ej = lshr i64 %i.eg, 28
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i21
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4
  %i.en = zext i32 %i.em to i64
  %i.eo = mul nuw i64 %i.en, %i.dr
  %i.ep = add i64 %i.eo, %i.ej                    ; 2 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = and i32 %i.eq, 268435455
  store i32 %i.er, ptr %i.el, align 4
  %i.es = lshr i64 %i.ep, 28                      ; 3 uses
  %indvars.iv.next.i23.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter127.next.1 = add i64 %niter127, 2         ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %.preheader.i25.unr-lcssa, label %bb.h, !llvm.loop !15

.lr.ph20.i27:                                     ; preds = %.preheader.i25, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29
  %i.et = phi i16 [ %i.fa, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29 ], [ %.pr, %.preheader.i25 ] ; 2 uses
  %.119.i28 = phi i64 [ %i.fb, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29 ], [ %.lcssa103, %.preheader.i25 ] ; 2 uses
  %i.eu = icmp sgt i16 %i.et, 127
  br i1 %i.eu, label %bb.i, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29

bb.i:                                             ; preds = %.lr.ph20.i27
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29: ; preds = %.lr.ph20.i27
  %i.ev = trunc i64 %.119.i28 to i32
  %i.ew = and i32 %i.ev, 268435455
  %i.ex = sext i16 %i.et to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.ex
  store i32 %i.ew, ptr %i.ey, align 4
  %i.ez = load i16, ptr %0, align 4
  %i.fa = add i16 %i.ez, 1                        ; 3 uses
  store i16 %i.fa, ptr %0, align 4
  %i.fb = lshr i64 %.119.i28, 28                  ; 2 uses
  %.not.i30 = icmp eq i64 %i.fb, 0
  br i1 %.not.i30, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31, label %.lr.ph20.i27, !llvm.loop !16

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29, %bb.f, %._crit_edge, %bb.g
  %i.fc = phi i16 [ %.pr, %bb.f ], [ %.pr, %bb.g ], [ %.pr, %._crit_edge ], [ %i.fa, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i29 ] ; 2 uses
  %i.fd = icmp eq i16 %i.fc, 0
  br i1 %i.fd, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75

_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75: ; preds = %.preheader.i25, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31
  %i.fe = phi i16 [ %i.fc, %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31 ], [ %.pr, %.preheader.i25 ] ; 5 uses
  %i.ff = sdiv i32 %1, 28
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = trunc i32 %i.ff to i16
  %i.fj = add i16 %i.fh, %i.fi
  store i16 %i.fj, ptr %i.fg, align 2
  %i.fk = srem i32 %1, 28                         ; 3 uses
  %i.fl = icmp sgt i16 %i.fe, 127
  br i1 %i.fl, label %bb.j, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32

bb.j:                                             ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75
  tail call void @abort() #14
  unreachable

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32: ; preds = %_ZN6icu_7817double_conversion6Bignum16MultiplyByUInt32Ej.exit31.thread75
  %i.fm = icmp sgt i16 %i.fe, 0
  br i1 %i.fm, label %.lr.ph.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i.i:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i32
  %wide.trip.count.i.i = zext nneg i16 %i.fe to i64 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.fo = sub nsw i32 28, %i.fk                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.fe, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 32760    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert97 = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %broadcast.splat98 = shufflevector <4 x i32> %broadcast.splatinsert97, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.fs, %vector.body ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %index ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fp, align 4 ; 2 uses
  %wide.load99 = load <4 x i32>, ptr %i.fq, align 4 ; 2 uses
  %i.fr = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.fs = lshr <4 x i32> %wide.load99, %broadcast.splat ; 3 uses
  %i.ft = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.fr, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fu = shufflevector <4 x i32> %i.fr, <4 x i32> %i.fs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fv = shl <4 x i32> %wide.load, %broadcast.splat98
  %i.fw = shl <4 x i32> %wide.load99, %broadcast.splat98
  %i.fx = add <4 x i32> %i.fv, %i.ft
  %i.fy = add <4 x i32> %i.fw, %i.fu
  %i.fz = and <4 x i32> %i.fx, splat (i32 268435455)
  %i.ga = and <4 x i32> %i.fy, splat (i32 268435455)
  store <4 x i32> %i.fz, ptr %i.fp, align 4
  store <4 x i32> %i.ga, ptr %i.fq, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.fs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.ge, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN6icu_7817double_conversion6Bignum9ShiftLeftEi.exit, label %bb.k

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.ge, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i.i ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4            ; 2 uses
  %i.ge = lshr i32 %i.gd, %i.fo                   ; 2 uses
  %i.gf = shl i32 %i.gd, %i.fk
  %i.gg = add i32 %i.gf, %.014.i.i
  %i.gh = and i32 %i.gg, 268435455
  store i32 %i.gh, ptr %i.gc, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !21

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.gi, align 4
  %i.gj = add nuw nsw i16 %i.fe, 1
  store i16 %i.gj, ptr %0, align 4
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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.c = phi i16 [ %.pr, %.lr.ph ], [ %i.j, %bb.c ] ; 3 uses
  %i.d = zext nneg i16 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 4294967295
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i16 %i.c, -1                     ; 2 uses
  store i16 %i.j, ptr %0, align 4
  %i.k = icmp sgt i16 %i.c, 1
  br i1 %i.k, label %bb.b, label %.critedge.thread3, !llvm.loop !10

.critedge:                                        ; preds = %bb.a
  %i.l = icmp eq i16 %.pr, 0
  br i1 %i.l, label %.critedge.thread3, label %.critedge.thread

.critedge.thread3:                                ; preds = %bb.c, %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.m, align 2
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
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %i.am = phi i16 [ %.pr.i, %.lr.ph.i ], [ %i.at, %bb.l ] ; 3 uses
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 4294967295
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i16 %i.am, -1                   ; 2 uses
  store i16 %i.at, ptr %0, align 4
end_hunk_1
