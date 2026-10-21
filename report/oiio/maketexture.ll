Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/maketexture?download=true
inline.NumInlined: 6377
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN11OpenImageIO4v3_1L15interppixel_NDCIiEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE:bb.a

scalar.ph14:                                      ; preds = %scalar.ph14.preheader, %scalar.ph14
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph14 ], [ %indvars.iv110.ph, %scalar.ph14.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv110
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !50
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = fmul nnan float %i.cm, f0x30000000
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv110
  store float %i.cn, ptr %i.co, align 4, !tbaa !153
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph14, !llvm.loop !1493

._crit_edge103:                                   ; preds = %scalar.ph26, %middle.block35, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph26 ], [ %indvars.iv115.ph, %scalar.ph26.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv115
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !50
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = fmul nnan float %i.cr, f0x30000000
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv115
  store float %i.cs, ptr %i.ct, align 4, !tbaa !153
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph26, !llvm.loop !1494

bb.d:                                             ; preds = %._crit_edge103
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !167 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !137
  %i.cy = add i32 %i.cv, -1
  %i.cz = add i32 %i.cy, %i.cx                    ; 2 uses
  %i.da = fsub float 1.000000e+00, %i.ae
  %i.db = add nsw i32 %i.ad, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.db)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.cz)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.ad)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.cz)
  %i.dc = insertelement <2 x i32> poison, i32 %.1.i82, i64 0
  %i.dd = insertelement <2 x i32> %i.dc, i32 %.1.i, i64 1
  %i.de = sitofp <2 x i32> %i.dd to <2 x float>
  %i.df = fadd nnan <2 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = fmul nnan <2 x float> %i.df, splat (float f0x40490FDB)
  %i.dh = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fdiv <2 x float> %i.dg, %i.dh
  %i.dj = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %i.di)
  %i.dk = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.da, i64 1
  %i.dm = fmul <2 x float> %i.dl, %i.dj           ; 2 uses
  %i.dn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dm)
  %i.do = extractelement <2 x float> %i.dm, i64 0
  %i.dp = fdiv float %i.do, %i.dn
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.077 = phi float [ %i.dp, %bb.d ], [ %i.ae, %._crit_edge103 ] ; 3 uses
  %i.dq = fsub float 1.000000e+00, %i.ab          ; 3 uses
  %i.dr = fsub float 1.000000e+00, %.077          ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.l to i64  ; 3 uses
  %min.iters.check39 = icmp ult i32 %i.l, 4
  br i1 %min.iters.check39, label %.lr.ph.i.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.preheader.i
  %n.vec41 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.dq, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert44 = insertelement <4 x float> poison, float %.077, i64 0
  %broadcast.splat45 = shufflevector <4 x float> %broadcast.splatinsert44, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.dr, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph40
  %index49 = phi i64 [ 0, %vector.ph40 ], [ %index.next54, %vector.body48 ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index49
  %wide.load50 = load <4 x float>, ptr %i.ds, align 16, !tbaa !153
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index49
  %wide.load51 = load <4 x float>, ptr %i.dt, align 4, !tbaa !153
  %i.du = fmul <4 x float> %broadcast.splat, %wide.load51
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load50, <4 x float> %broadcast.splat43, <4 x float> %i.du)
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index49
  %wide.load52 = load <4 x float>, ptr %i.dw, align 4, !tbaa !153
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index49
  %wide.load53 = load <4 x float>, ptr %i.dx, align 4, !tbaa !153
  %i.dy = fmul <4 x float> %broadcast.splat, %wide.load53
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load52, <4 x float> %broadcast.splat43, <4 x float> %i.dy)
  %i.ea = fmul <4 x float> %broadcast.splat45, %i.dz
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat47, <4 x float> %i.dv, <4 x float> %i.ea)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index49
  store <4 x float> %i.eb, ptr %i.ec, align 4, !tbaa !153
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.ed = icmp eq i64 %index.next54, %n.vec41
  br i1 %i.ed, label %middle.block55, label %vector.body48, !llvm.loop !1495

middle.block55:                                   ; preds = %vector.body48
  %cmp.n56 = icmp eq i64 %n.vec41, %wide.trip.count.i
  br i1 %cmp.n56, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block55
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec41, %middle.block55 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !153
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !153
  %i.ei = fmul float %i.ab, %i.eh
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.dq, float %i.ei)
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.el = load float, ptr %i.ek, align 4, !tbaa !153
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.en = load float, ptr %i.em, align 4, !tbaa !153
  %i.eo = fmul float %i.ab, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.el, float %i.dq, float %i.eo)
  %i.eq = fmul float %.077, %i.ep
  %i.er = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.ej, float %i.eq)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.er, ptr %i.es, align 4, !tbaa !153
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1496

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block55, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIdEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.d = load <2 x i32>, ptr %i.b, align 8, !tbaa !50
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !50
  %i.f = sitofp <2 x i32> %i.d to <2 x float>
  %i.g = sitofp <2 x i32> %i.e to <2 x float>     ; 2 uses
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = insertelement <2 x float> %i.h, float %2, i64 1
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.g, <2 x float> %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !151  ; 14 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = alloca i8, i64 %i.o, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.r = sext i32 %i.l to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.r ; 5 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.r ; 4 uses
  %i.v = extractelement <2 x float> %i.j, i64 0
  %i.w = fadd float %i.v, -5.000000e-01           ; 2 uses
  %i.x = extractelement <2 x float> %i.j, i64 1
  %i.y = fadd float %i.x, -5.000000e-01           ; 2 uses
  %i.z = tail call noundef float @llvm.floor.f32(float %i.w) ; 2 uses
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fsub float %i.w, %i.z                   ; 4 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 4 uses
  %i.ae = fsub float %i.y, %i.ac                  ; 3 uses
  %i.af = add nsw i32 %i.aa, 2
  %i.ag = add nsw i32 %i.ad, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.aa, i32 noundef %i.af, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ah = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.ah, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !410 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 9 uses
  %min.iters.check = icmp ult i32 %i.l, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !78
  %wide.load1 = load <2 x double>, ptr %i.al, align 8, !tbaa !78
  %7 = fptrunc <2 x double> %wide.load to <2 x float>
  %8 = fptrunc <2 x double> %wide.load1 to <2 x float>
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store <2 x float> %7, ptr %i.am, align 16, !tbaa !153
  store <2 x float> %8, ptr %9, align 8, !tbaa !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !410 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.l to i64
  %min.iters.check3 = icmp ult i32 %i.l, 4
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec5 = and i64 %wide.trip.count, 2147483644  ; 3 uses
  br label %vector.body6

vector.body6:                                     ; preds = %vector.body6, %vector.ph4
  %index7 = phi i64 [ 0, %vector.ph4 ], [ %index.next10, %vector.body6 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index7 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load8 = load <2 x double>, ptr %i.aq, align 8, !tbaa !78
  %wide.load9 = load <2 x double>, ptr %i.ar, align 8, !tbaa !78
  %10 = fptrunc <2 x double> %wide.load8 to <2 x float>
  %11 = fptrunc <2 x double> %wide.load9 to <2 x float>
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index7 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store <2 x float> %10, ptr %i.as, align 4, !tbaa !153
  store <2 x float> %11, ptr %12, align 4, !tbaa !153
  %index.next10 = add nuw i64 %index7, 4          ; 2 uses
  %i.at = icmp eq i64 %index.next10, %n.vec5
  br i1 %i.at, label %middle.block11, label %vector.body6, !llvm.loop !1498

middle.block11:                                   ; preds = %vector.body6
  %cmp.n12 = icmp eq i64 %n.vec5, %wide.trip.count
  br i1 %cmp.n12, label %.lr.ph98, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %.lr.ph94, %middle.block11
  %indvars.iv105.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec5, %middle.block11 ]
  br label %scalar.ph2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.av = load double, ptr %i.au, align 8, !tbaa !78
  %i.aw = fptrunc double %i.av to float
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store float %i.aw, ptr %i.ax, align 4, !tbaa !153
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %scalar.ph, !llvm.loop !1499

.lr.ph98:                                         ; preds = %scalar.ph2, %middle.block11
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !410 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.l to i64
  %min.iters.check15 = icmp ult i32 %i.l, 4
  br i1 %min.iters.check15, label %scalar.ph14.preheader, label %vector.ph16

vector.ph16:                                      ; preds = %.lr.ph98
  %n.vec17 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph16
  %index19 = phi i64 [ 0, %vector.ph16 ], [ %index.next22, %vector.body18 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index19 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load20 = load <2 x double>, ptr %i.ba, align 8, !tbaa !78
  %wide.load21 = load <2 x double>, ptr %i.bb, align 8, !tbaa !78
  %13 = fptrunc <2 x double> %wide.load20 to <2 x float>
  %14 = fptrunc <2 x double> %wide.load21 to <2 x float>
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index19 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store <2 x float> %13, ptr %i.bc, align 4, !tbaa !153
  store <2 x float> %14, ptr %15, align 4, !tbaa !153
  %index.next22 = add nuw i64 %index19, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.bd, label %middle.block23, label %vector.body18, !llvm.loop !1500

middle.block23:                                   ; preds = %vector.body18
  %cmp.n24 = icmp eq i64 %n.vec17, %wide.trip.count
  br i1 %cmp.n24, label %.lr.ph102, label %scalar.ph14.preheader

scalar.ph14.preheader:                            ; preds = %.lr.ph98, %middle.block23
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph98 ], [ %n.vec17, %middle.block23 ]
  br label %scalar.ph14

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph2 ], [ %indvars.iv105.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv105
  %i.bf = load double, ptr %i.be, align 8, !tbaa !78
  %i.bg = fptrunc double %i.bf to float
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv105
  store float %i.bg, ptr %i.bh, align 4, !tbaa !153
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.lr.ph98, label %scalar.ph2, !llvm.loop !1501

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %scalar.ph14, %middle.block23
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !410 ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.l to i64
  %min.iters.check27 = icmp ult i32 %i.l, 4
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph102
  %n.vec29 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next34, %vector.body30 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index31 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load32 = load <2 x double>, ptr %i.bk, align 8, !tbaa !78
  %wide.load33 = load <2 x double>, ptr %i.bl, align 8, !tbaa !78
  %16 = fptrunc <2 x double> %wide.load32 to <2 x float>
  %17 = fptrunc <2 x double> %wide.load33 to <2 x float>
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index31 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store <2 x float> %16, ptr %i.bm, align 4, !tbaa !153
  store <2 x float> %17, ptr %18, align 4, !tbaa !153
  %index.next34 = add nuw i64 %index31, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.bn, label %middle.block35, label %vector.body30, !llvm.loop !1502

middle.block35:                                   ; preds = %vector.body30
  %cmp.n36 = icmp eq i64 %n.vec29, %wide.trip.count
  br i1 %cmp.n36, label %._crit_edge103, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph102, %middle.block35
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec29, %middle.block35 ]
  br label %scalar.ph26

scalar.ph14:                                      ; preds = %scalar.ph14.preheader, %scalar.ph14
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph14 ], [ %indvars.iv110.ph, %scalar.ph14.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv110
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !78
  %i.bq = fptrunc double %i.bp to float
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv110
  store float %i.bq, ptr %i.br, align 4, !tbaa !153
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph14, !llvm.loop !1503

._crit_edge103:                                   ; preds = %scalar.ph26, %middle.block35, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph26 ], [ %indvars.iv115.ph, %scalar.ph26.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv115
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !78
  %i.bu = fptrunc double %i.bt to float
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv115
  store float %i.bu, ptr %i.bv, align 4, !tbaa !153
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph26, !llvm.loop !1504

bb.d:                                             ; preds = %._crit_edge103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !167 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !137
  %i.ca = add i32 %i.bx, -1
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  %i.cc = fsub float 1.000000e+00, %i.ae
  %i.cd = add nsw i32 %i.ad, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 %i.cd)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.cb)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 %i.ad)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.cb)
  %i.ce = insertelement <2 x i32> poison, i32 %.1.i82, i64 0
  %i.cf = insertelement <2 x i32> %i.ce, i32 %.1.i, i64 1
  %i.cg = sitofp <2 x i32> %i.cf to <2 x float>
  %i.ch = fadd nnan <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = fmul nnan <2 x float> %i.ch, splat (float f0x40490FDB)
  %i.cj = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fdiv <2 x float> %i.ci, %i.cj
  %i.cl = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %i.ck)
  %i.cm = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cc, i64 1
  %i.co = fmul <2 x float> %i.cn, %i.cl           ; 2 uses
  %i.cp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.co)
  %i.cq = extractelement <2 x float> %i.co, i64 0
  %i.cr = fdiv float %i.cq, %i.cp
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.077 = phi float [ %i.cr, %bb.d ], [ %i.ae, %._crit_edge103 ] ; 3 uses
  %i.cs = fsub float 1.000000e+00, %i.ab          ; 3 uses
  %i.ct = fsub float 1.000000e+00, %.077          ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.l to i64  ; 3 uses
  %min.iters.check39 = icmp ult i32 %i.l, 4
  br i1 %min.iters.check39, label %.lr.ph.i.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.preheader.i
  %n.vec41 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.cs, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert44 = insertelement <4 x float> poison, float %.077, i64 0
  %broadcast.splat45 = shufflevector <4 x float> %broadcast.splatinsert44, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.ct, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph40
  %index49 = phi i64 [ 0, %vector.ph40 ], [ %index.next54, %vector.body48 ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index49
  %wide.load50 = load <4 x float>, ptr %i.cu, align 16, !tbaa !153
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index49
  %wide.load51 = load <4 x float>, ptr %i.cv, align 4, !tbaa !153
  %i.cw = fmul <4 x float> %broadcast.splat, %wide.load51
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load50, <4 x float> %broadcast.splat43, <4 x float> %i.cw)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index49
  %wide.load52 = load <4 x float>, ptr %i.cy, align 4, !tbaa !153
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index49
  %wide.load53 = load <4 x float>, ptr %i.cz, align 4, !tbaa !153
  %i.da = fmul <4 x float> %broadcast.splat, %wide.load53
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load52, <4 x float> %broadcast.splat43, <4 x float> %i.da)
  %i.dc = fmul <4 x float> %broadcast.splat45, %i.db
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat47, <4 x float> %i.cx, <4 x float> %i.dc)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index49
  store <4 x float> %i.dd, ptr %i.de, align 4, !tbaa !153
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.df = icmp eq i64 %index.next54, %n.vec41
  br i1 %i.df, label %middle.block55, label %vector.body48, !llvm.loop !1505

middle.block55:                                   ; preds = %vector.body48
  %cmp.n56 = icmp eq i64 %n.vec41, %wide.trip.count.i
  br i1 %cmp.n56, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block55
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec41, %middle.block55 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !153
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !153
  %i.dk = fmul float %i.ab, %i.dj
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.cs, float %i.dk)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !153
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.dp = load float, ptr %i.do, align 4, !tbaa !153
  %i.dq = fmul float %i.ab, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.cs, float %i.dq)
  %i.ds = fmul float %.077, %i.dr
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.dl, float %i.ds)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.dt, ptr %i.du, align 4, !tbaa !153
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1506

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block55, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #35
  unreachable
}

declare noundef i32 @_ZN11OpenImageIO4v3_18Filter2D11num_filtersEv() local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18Filter2D14get_filterdescEiPNS0_10FilterDescE(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr noundef dead_on_return, float noundef, float noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L14fix_latl_edgesERNS0_8ImageBufE(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 9 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 2 uses
  %i.d = alloca i8, i64 %i.c, align 16
  %i.e = alloca i8, i64 %i.c, align 16
  br label %bb.c

.lr.ph114:                                        ; preds = %._crit_edge106.1
  br i1 %i.al, label %.lr.ph110.us.preheader, label %.lr.ph114.split
end_hunk_0
