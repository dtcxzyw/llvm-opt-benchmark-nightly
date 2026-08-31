Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_:bb.a
  %i.de = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %.preheader308, label %scalar.ph

.preheader308:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader309
  %i.dg = icmp slt i32 %spec.select.i, %10        ; 2 uses
  br i1 %i.dg, label %.lr.ph312, label %._crit_edge

.lr.ph312:                                        ; preds = %.preheader308
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.di = tail call i32 @llvm.umin.i32(i32 %10, i32 %spec.select.i) ; 4 uses
  %i.dj = zext nneg i32 %i.di to i64              ; 3 uses
  %i.dk = add nuw nsw i32 %10, %i.di
  %i.dl = sub i32 %i.dk, %.1.i
  %.pre = load float, ptr %i.dh, align 8, !tbaa !259 ; 2 uses
  %i.dm = add i32 %10, %i.di
  %i.dn = xor i32 %.1.i, -1
  %i.do = add i32 %i.dm, %i.dn
  %i.dp = sub i32 %i.do, %i.di                    ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check343 = icmp ult i32 %i.dp, 7
  br i1 %min.iters.check343, label %scalar.ph342.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %.lr.ph312
  %n.vec345 = and i64 %i.dr, 8589934584           ; 3 uses
  %i.ds = add nuw nsw i64 %n.vec345, %i.dj
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep352 = getelementptr [4 x i8], ptr %11, i64 %i.dj
  br label %vector.body346

vector.body346:                                   ; preds = %vector.body346, %vector.ph344
  %index347 = phi i64 [ 0, %vector.ph344 ], [ %index.next348, %vector.body346 ] ; 2 uses
  %gep353 = getelementptr [4 x i8], ptr %invariant.gep352, i64 %index347 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %gep353, i64 16
  store <4 x float> %broadcast.splat, ptr %gep353, align 4, !tbaa !26
  store <4 x float> %broadcast.splat, ptr %i.dt, align 4, !tbaa !26
  %index.next348 = add nuw i64 %index347, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next348, %n.vec345
  br i1 %i.du, label %middle.block349, label %vector.body346, !llvm.loop !260

middle.block349:                                  ; preds = %vector.body346
  %cmp.n350 = icmp eq i64 %i.dr, %n.vec345
  br i1 %cmp.n350, label %._crit_edge, label %scalar.ph342.preheader

scalar.ph342.preheader:                           ; preds = %.lr.ph312, %middle.block349
  %indvars.iv321.ph = phi i64 [ %i.dj, %.lr.ph312 ], [ %i.ds, %middle.block349 ]
  br label %scalar.ph342

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dv = load float, ptr %gep, align 4, !tbaa !26
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv
  store float %i.dv, ptr %i.dw, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dx = load float, ptr %gep.1, align 4, !tbaa !26
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next
  store float %i.dx, ptr %i.dy, align 4, !tbaa !26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dz = load float, ptr %gep.2, align 4, !tbaa !26
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.1
  store float %i.dz, ptr %i.ea, align 4, !tbaa !26
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.eb = load float, ptr %gep.3, align 4, !tbaa !26
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.2
  store float %i.eb, ptr %i.ec, align 4, !tbaa !26
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader308, label %scalar.ph, !llvm.loop !261

._crit_edge:                                      ; preds = %scalar.ph342, %middle.block349, %.preheader308
  %.not248 = icmp ne ptr %12, null
  %i.ed = icmp sgt i32 %10, 0
  %or.cond319 = and i1 %.not248, %i.ed
  br i1 %or.cond319, label %.lr.ph314.preheader, label %.loopexit

.lr.ph314.preheader:                              ; preds = %._crit_edge
  %i.ee = zext nneg i32 %10 to i64
  %i.ef = shl nuw nsw i64 %i.ee, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %12, i8 0, i64 %i.ef, i1 false), !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %i.ef, i1 false), !tbaa !26
  br label %.loopexit

scalar.ph342:                                     ; preds = %scalar.ph342.preheader, %scalar.ph342
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %scalar.ph342 ], [ %indvars.iv321.ph, %scalar.ph342.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv321
  store float %.pre, ptr %i.eg, align 4, !tbaa !26
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next322 to i32
  %exitcond323.not = icmp eq i32 %i.dl, %lftr.wideiv
  br i1 %exitcond323.not, label %._crit_edge, label %scalar.ph342, !llvm.loop !262

.loopexit:                                        ; preds = %.lr.ph314.preheader, %._crit_edge
  %i.eh = icmp eq i32 %i.bf, 0
  %or.cond301 = select i1 %i.dg, i1 %i.eh, i1 false
  br i1 %or.cond301, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.loopexit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !111, !range !62, !noundef !63
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.bc, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 3 uses
  %i.em = load i8, ptr %i.el, align 2, !tbaa !112, !range !62, !noundef !63
  %i.en = trunc nuw i8 %i.em to i1                ; 3 uses
  %i.eo = fsub float 1.000000e+00, %.0202
  %i.ep = fneg float %7
  %i.eq = fneg float %9
  %.0225 = select i1 %i.en, float %i.eq, float %9 ; 2 uses
  %.0210 = select i1 %i.en, float %i.ep, float %7 ; 2 uses
  %.1203 = select i1 %i.en, float %i.eo, float %.0202 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.es = load i8, ptr %i.er, align 4, !tbaa !263, !range !62, !noundef !63
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.ew = load <4 x float>, ptr %i.eu, align 8, !tbaa !26 ; 3 uses
  %i.ex = load float, ptr %i.ev, align 8, !tbaa !264 ; 2 uses
  %i.ey = extractelement <4 x float> %i.ew, i64 0 ; 2 uses
  %i.ez = fmul float %6, %i.ey
  %i.fa = fmul float %8, %i.ey
  %i.fb = insertelement <2 x float> poison, float %.0200, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %.1203, i64 1
  %i.fd = shufflevector <4 x float> %i.ew, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.fe = shufflevector <4 x float> %i.ew, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fd, <2 x float> %i.fe) ; 2 uses
  %i.fg = fmul float %.0210, %i.ex
  %i.fh = fmul float %.0225, %i.ex
  %i.fi = extractelement <2 x float> %i.ff, i64 0
  %i.fj = extractelement <2 x float> %i.ff, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0227 = phi float [ %8, %bb.aa ], [ %i.fa, %bb.ab ] ; 2 uses
  %.1226 = phi float [ %.0225, %bb.aa ], [ %i.fh, %bb.ab ] ; 2 uses
  %.1211 = phi float [ %.0210, %bb.aa ], [ %i.fg, %bb.ab ] ; 2 uses
  %.0205 = phi float [ %6, %bb.aa ], [ %i.ez, %bb.ab ] ; 2 uses
  %.2204 = phi float [ %.1203, %bb.aa ], [ %i.fj, %bb.ab ] ; 2 uses
  %.1201 = phi float [ %.0200, %bb.aa ], [ %i.fi, %bb.ab ] ; 2 uses
  %.not242 = icmp ne i32 %10, 4
  %i.fk = ptrtoint ptr %11 to i64
  %i.fl = ptrtoint ptr %12 to i64
  %i.fm = or i64 %i.fl, %i.fk
  %i.fn = ptrtoint ptr %13 to i64
  %i.fo = or i64 %i.fm, %i.fn
  %i.fp = and i64 %i.fo, 15
  %i.fq = icmp ne i64 %i.fp, 0
  %or.cond262 = or i1 %.not242, %i.fq
  br i1 %or.cond262, label %.critedge257, label %bb.ao

.critedge257:                                     ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %.not246 = icmp eq ptr %12, null                ; 3 uses
  %spec.select258 = select i1 %.not246, ptr null, ptr %16 ; 2 uses
  %spec.select259 = select i1 %.not246, ptr %13, ptr %17 ; 2 uses
  %i.fr = inttoptr i64 %.unpack to ptr
  %i.fs = call noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %i.ac, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, i32 noundef %.1.i, float noundef %.1201, float noundef %.2204, float noundef %.0205, float noundef %.1211, float noundef %.0227, float noundef %.1226, ptr noundef nonnull %15, ptr noundef %spec.select258, ptr noundef %spec.select259)
  %i.ft = icmp slt i32 %spec.select.i, %10
  br i1 %i.ft, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.critedge257
  %i.fu = load i32, ptr %3, align 8, !tbaa !187
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !111, !range !62, !noundef !63
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.bc, i32 noundef %10, ptr noundef nonnull %15, ptr noundef %spec.select258, ptr noundef %spec.select259, ptr noundef null)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %.critedge257
  switch i32 %10, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264 [
    i32 1, label %bb.ah
    i32 2, label %bb.ai
    i32 3, label %bb.aj
    i32 4, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %18 = load float, ptr %15, align 16, !tbaa !34
  store float %18, ptr %11, align 1, !tbaa !34
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.ai:                                            ; preds = %bb.ag
  %19 = load double, ptr %15, align 16, !tbaa !34
  store double %19, ptr %11, align 1, !tbaa !34
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.aj:                                            ; preds = %bb.ag
  %i.fz = load <2 x float>, ptr %15, align 16, !tbaa !34
  store <2 x float> %i.fz, ptr %11, align 4, !tbaa !26
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gb = load float, ptr %i.ga, align 8, !tbaa !34
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.gb, ptr %i.gc, align 4, !tbaa !26
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.ak:                                            ; preds = %bb.ag
  %i.gd = load <4 x float>, ptr %15, align 16, !tbaa !34
  store <4 x float> %i.gd, ptr %11, align 1, !tbaa !34
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264: ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  br i1 %.not246, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264
  %i.ge = load i8, ptr %i.el, align 2, !tbaa !112, !range !62, !noundef !63
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gg = load <4 x float>, ptr %17, align 16, !tbaa !34
  %i.gh = fsub <4 x float> zeroinitializer, %i.gg
  store <4 x float> %i.gh, ptr %17, align 16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  switch i32 %10, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit [
    i32 1, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread
    i32 2, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread298
    i32 3, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread299
    i32 4, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread300
  ]

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread: ; preds = %bb.an
  %20 = load float, ptr %16, align 16, !tbaa !34
  store float %20, ptr %12, align 1, !tbaa !34
  %21 = load float, ptr %17, align 16, !tbaa !34
  store float %21, ptr %13, align 1, !tbaa !34
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread298: ; preds = %bb.an
  %22 = load double, ptr %16, align 16, !tbaa !34
  store double %22, ptr %12, align 1, !tbaa !34
  %23 = load double, ptr %17, align 16, !tbaa !34
  store double %23, ptr %13, align 1, !tbaa !34
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread299: ; preds = %bb.an
  %i.gi = load <2 x float>, ptr %16, align 16, !tbaa !34
  store <2 x float> %i.gi, ptr %12, align 4, !tbaa !26
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gk = load float, ptr %i.gj, align 8, !tbaa !34
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %i.gk, ptr %i.gl, align 4, !tbaa !26
  %i.gm = load <2 x float>, ptr %17, align 16, !tbaa !34
  store <2 x float> %i.gm, ptr %13, align 4, !tbaa !26
  %i.gn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.go = load float, ptr %i.gn, align 8, !tbaa !34
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.go, ptr %i.gp, align 4, !tbaa !26
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread300: ; preds = %bb.an
  %i.gq = load <4 x float>, ptr %16, align 16, !tbaa !34
  store <4 x float> %i.gq, ptr %12, align 1, !tbaa !34
  %i.gr = load <4 x float>, ptr %17, align 16, !tbaa !34
  store <4 x float> %i.gr, ptr %13, align 1, !tbaa !34
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit: ; preds = %bb.an, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread300, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread299, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread298, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %.critedge

bb.ao:                                            ; preds = %bb.ac
  %i.gs = inttoptr i64 %.unpack to ptr
  %i.gt = tail call noundef zeroext i1 %i.gs(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %i.ac, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef 4, i32 noundef %.1.i, float noundef %.1201, float noundef %.2204, float noundef %.0205, float noundef %.1211, float noundef %.0227, float noundef %.1226, ptr noundef %11, ptr noundef %12, ptr noundef %13) ; 2 uses
  %i.gu = icmp slt i32 %i.bg, 4
  br i1 %i.gu, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.gv = load i32, ptr %3, align 8, !tbaa !187
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !111, !range !62, !noundef !63
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.bc, i32 noundef 4, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.ha = load i8, ptr %i.el, align 2, !tbaa !112, !range !62, !noundef !63
  %i.hb = trunc nuw i8 %i.ha to i1
  %i.hc = icmp ne ptr %13, null
  %or.cond = and i1 %i.hc, %i.hb
  br i1 %or.cond, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.hd = load <4 x float>, ptr %13, align 16, !tbaa !34
  %i.he = fsub <4 x float> zeroinitializer, %i.hd
  store <4 x float> %i.he, ptr %13, align 16
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.m, %bb.j, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit, %bb.at, %bb.as, %.loopexit, %bb.y, %bb.z, %bb.e
  %.6 = phi i1 [ true, %bb.e ], [ %i.fs, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit ], [ %i.gt, %bb.as ], [ %i.aj, %bb.j ], [ %i.au, %bb.m ], [ true, %.loopexit ], [ true, %bb.z ], [ true, %bb.y ], [ %i.gt, %bb.at ], [ false, %bb.c ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr nofree noundef writeonly captures(none) %13) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr noundef null) ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_ZN11OpenImageIO4v3_117TextureSystemImpl7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.g = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.f, ptr noundef null)
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.j = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.i, ptr %1, ptr noundef %i.h, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_SA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %i.j, ptr noundef %i.e, ptr noundef nonnull readonly align 64 dereferenceable(512) %2, i64 noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef readonly %7, ptr noundef readonly %8, ptr noundef readonly %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr %1, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr nofree noundef writeonly captures(none) %13) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr noundef null) ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr noundef null)
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.h = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.g, ptr %1, ptr noundef %i.f, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_SA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %i.h, ptr noundef %i.c, ptr noundef nonnull align 64 dereferenceable(512) %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem7textureEPNS1_13TextureHandleEPNS1_9PerthreadERNS0_18TextureOptBatch_v1EmPKfS9_S9_S9_S9_S9_iPfSA_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, i32 noundef %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_SA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 64 dereferenceable(512) %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_SA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, i32 noundef %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) local_unnamed_addr #7 align 2 {
bb.a:
  %15 = alloca %"class.OpenImageIO::v3_1::TextureOpt_v2", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  %i.a = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %15, i64 21
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 22
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 28 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 4 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 5 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i32 0, ptr %i.m, align 8, !tbaa !265
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.o = load <2 x i32>, ptr %i.n, align 64, !tbaa !3
  store <2 x i32> %i.o, ptr %15, align 8, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.r = load i64, ptr %i.p, align 8, !tbaa !108
  store i64 %i.r, ptr %i.q, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.t = load i32, ptr %i.s, align 16, !tbaa !266
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 %i.u, ptr %i.v, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 468
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 %i.y, ptr %i.z, align 1, !tbaa !248
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 476
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !269
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 19
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !193
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.af = load i32, ptr %i.ae, align 32, !tbaa !270
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.a, align 4, !tbaa !271
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 484
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !272
  %i.aj = trunc i32 %i.ai to i16
  store i16 %i.aj, ptr %i.d, align 2, !tbaa !273
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !274
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.c, align 1, !tbaa !275
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 492
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !276
  store float %i.ap, ptr %i.i, align 8, !tbaa !259
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !277
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !278
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 504
  %i.at = load i32, ptr %i.as, align 8, !tbaa !279
  store i32 %i.at, ptr %i.l, align 4, !tbaa !252
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = mul nsw i32 %11, 3
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = alloca i8, i64 %i.aw, align 16          ; 13 uses
  %i.ay = sext i32 %11 to i64                     ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay ; 6 uses
end_hunk_0
