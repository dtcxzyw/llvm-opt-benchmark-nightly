Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/height_field?download=true
inline.NumInlined: 198
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3CollideMoverAndHeightField:bb.a
bb.x:                                             ; preds = %bb.w
  %i.eh = sext i32 %i.ef to i64                   ; 2 uses
  %i.ei = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ba, i64 %i.eh), !nosanitize !9 ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1, !nosanitize !9
  br i1 %i.ej, label %.split687.us, label %bb.y, !prof !20, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  %i.ek = extractvalue { i64, i1 } %i.ei, 0, !nosanitize !9
  %i.el = inttoptr i64 %i.ek to ptr
  br label %b3GetHeightFieldMaterialIndices.exit.us

b3GetHeightFieldMaterialIndices.exit.us:          ; preds = %bb.y, %bb.w
  %.0.i.us = phi ptr [ %i.el, %bb.y ], [ null, %bb.w ] ; 3 uses
  %i.em = sext i32 %i.ed to i64                   ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.0.i.us, i64 %i.em ; 2 uses
  %i.eo = ptrtoint ptr %.0.i.us to i64, !nosanitize !9 ; 3 uses
  %i.ep = add i64 %i.eo, %i.em, !nosanitize !9    ; 3 uses
  %i.eq = icmp ne ptr %.0.i.us, null, !nosanitize !9 ; 2 uses
  %i.er = icmp eq i64 %i.ep, 0
  %i.es = xor i1 %i.eq, %i.er
  %i.et = icmp uge i64 %i.ep, %i.eo, !nosanitize !9
  %i.eu = icmp slt i32 %i.ed, 0
  %i.ev = xor i1 %i.eu, %i.et
  %i.ew = and i1 %i.es, %i.ev, !nosanitize !9
  br i1 %i.ew, label %bb.z, label %.split690.us, !prof !10, !nosanitize !9

bb.z:                                             ; preds = %b3GetHeightFieldMaterialIndices.exit.us
  br i1 %i.eq, label %bb.aa, label %.split694.us, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  %i.ex = load i8, ptr %i.en, align 1, !tbaa !41  ; 2 uses
  %i.ey = zext i8 %i.ex to i32                    ; 2 uses
  %i.ez = icmp eq i8 %i.ex, -1
  br i1 %i.ez, label %.thread256.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call fastcc void @b3GetHeightFieldCellCorners(ptr noundef %2, i32 noundef %.0141665.us, i32 noundef %.0129660.us, ptr noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 16 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %i.cr, i64 12, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  br i1 %.not187, label %.split697.us, label %bb.ac, !prof !20, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.cs, i64 12, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  br i1 %.not188, label %.split699.us, label %bb.ad, !prof !20, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.ct, i64 12, i1 false), !tbaa.struct !26
  br i1 %.not182, label %_mm_load_sd.exit.i198.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.cr, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %i.cs, i64 12, i1 false)
  br label %_mm_load_sd.exit.i198.us

_mm_load_sd.exit.i198.us:                         ; preds = %bb.ae, %bb.ad
  br i1 %.not, label %.split701.us, label %b3LoadV.exit199.us, !prof !20, !nosanitize !9

b3LoadV.exit199.us:                               ; preds = %_mm_load_sd.exit.i198.us
  %i.fa = load double, ptr %7, align 8            ; 2 uses
  %i.fb = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fc = bitcast <2 x double> %i.fb to <4 x float>
  %i.fd = load float, ptr %i.cu, align 8, !tbaa !41 ; 3 uses
  %i.fe = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.fd, i64 0
  %i.ff = shufflevector <4 x float> %i.fc, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fg = bitcast double %i.fa to <2 x float>     ; 4 uses
  br i1 %.not1478, label %.split703.us, label %b3LoadV.exit201.us, !prof !20, !nosanitize !9

b3LoadV.exit201.us:                               ; preds = %b3LoadV.exit199.us
  %i.fh = load double, ptr %8, align 8            ; 2 uses
  %i.fi = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fj = bitcast <2 x double> %i.fi to <4 x float>
  %i.fk = load float, ptr %i.cv, align 8, !tbaa !41 ; 3 uses
  %i.fl = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.fk, i64 0
  %i.fm = shufflevector <4 x float> %i.fj, <4 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fn = bitcast double %i.fh to <2 x float>     ; 4 uses
  br i1 %.not1479, label %.split705.us, label %b3LoadV.exit203.us, !prof !20, !nosanitize !9

b3LoadV.exit203.us:                               ; preds = %b3LoadV.exit201.us
  %i.fo = load double, ptr %9, align 8            ; 2 uses
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = bitcast <2 x double> %i.fp to <4 x float>
  %i.fr = load float, ptr %i.cw, align 8, !tbaa !41 ; 3 uses
  %i.fs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.fr, i64 0
  %i.ft = shufflevector <4 x float> %i.fq, <4 x float> %i.fs, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fu = bitcast double %i.fo to <2 x float>     ; 4 uses
  br i1 %.not1480, label %.split707.us, label %b3LoadV.exit205.us, !prof !20, !nosanitize !9

b3LoadV.exit205.us:                               ; preds = %b3LoadV.exit203.us
  %i.fv = load double, ptr %10, align 8           ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fx = bitcast <2 x double> %i.fw to <4 x float>
  %i.fy = load float, ptr %i.cx, align 8, !tbaa !41 ; 3 uses
  %i.fz = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.fy, i64 0
  %i.ga = shufflevector <4 x float> %i.fx, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gb = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.au, <4 x float> noundef %i.av, <4 x float> noundef %i.ff, <4 x float> noundef %i.ft, <4 x float> noundef %i.fm) #14
  %i.gc = bitcast double %i.fv to <2 x float>     ; 4 uses
  br i1 %i.gb, label %bb.af, label %.thread.us

bb.af:                                            ; preds = %b3LoadV.exit205.us
  %.sroa.0.4.vec.extract.i.i.us = extractelement <2 x float> %i.fg, i64 1
  %i.gd = fsub float %i.m, %.sroa.0.4.vec.extract.i.i.us
  %i.ge = fsub <2 x float> %i.fu, %i.fg           ; 2 uses
  %i.gf = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gg = insertelement <2 x float> %i.gf, float %i.fr, i64 1
  %i.gh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gi = insertelement <2 x float> %i.gh, float %i.fd, i64 1 ; 2 uses
  %i.gj = fsub <2 x float> %i.gg, %i.gi           ; 2 uses
  %i.gk = fsub <2 x float> %i.fn, %i.fg           ; 2 uses
  %i.gl = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = insertelement <2 x float> %i.gl, float %i.fk, i64 1
  %i.gn = fsub <2 x float> %i.gm, %i.gi           ; 2 uses
  %shift = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.gk
  %shift1482 = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1483 = fmul <2 x float> %i.ge, %shift1482
  %foldExtExtBinop1485 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop1483
  %i.go = extractelement <2 x float> %foldExtExtBinop1485, i64 0
  %i.gp = fmul <2 x float> %i.ge, %i.gn
  %i.gq = fmul <2 x float> %i.gj, %i.gk
  %i.gr = fsub <2 x float> %i.gp, %i.gq
  %i.gs = insertelement <2 x float> %i.gh, float %i.fd, i64 0
  %i.gt = fsub <2 x float> %i.t, %i.gs
  %i.gu = fmul float %i.gd, %i.go
  %i.gv = fmul <2 x float> %i.gt, %i.gr           ; 2 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 1
  %i.gx = fadd float %i.gw, %i.gu
  %i.gy = extractelement <2 x float> %i.gv, i64 0
  %i.gz = fadd float %i.gy, %i.gx
  %i.ha = fcmp ult float %i.gz, 0.000000e+00
  br i1 %i.ha, label %.thread.us, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cy, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cz, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !26
  store ptr %11, ptr %4, align 8, !tbaa !43
  store i32 3, ptr %.sroa.2226.0..sroa_idx, align 8, !tbaa !44
  store float 0.000000e+00, ptr %.sroa.3227.0..sroa_idx, align 4, !tbaa !25
  store i16 0, ptr %i.da, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %12, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #14
  %i.hb = load float, ptr %i.db, align 4, !tbaa !59 ; 3 uses
  %i.hc = fcmp oeq float %i.hb, 0.000000e+00
  br i1 %i.hc, label %.thread237.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hd = load float, ptr %i.h, align 4, !tbaa !123 ; 2 uses
  %i.he = fcmp ugt float %i.hb, %i.hd
  br i1 %i.he, label %.thread237.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hf = shl nsw i32 %i.ed, 1
  %i.hg = add i32 %i.ed, 1073741824
  %i.hh = icmp sgt i32 %i.hg, -1
  br i1 %i.hh, label %bb.aj, label %.split709.us, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.hi = fsub float %i.hd, %i.hb
  %i.hj = sext i32 %.1143659.us to i64            ; 2 uses
  %i.hk = getelementptr inbounds [40 x i8], ptr %0, i64 %i.hj ; 7 uses
  %i.hl = mul nsw i64 %i.hj, 40
  %i.hm = add i64 %i.hl, %i.dd, !nosanitize !9    ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 0
  %i.ho = xor i1 %i.de, %i.hn
  %i.hp = icmp uge i64 %i.hm, %i.dd, !nosanitize !9
  %i.hq = icmp slt i32 %.1143659.us, 0
  %i.hr = xor i1 %i.hq, %i.hp
  %i.hs = and i1 %i.ho, %i.hr, !nosanitize !9
  br i1 %i.hs, label %bb.ak, label %.split712.us, !prof !10, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  %i.ht = ptrtoint ptr %i.hk to i64, !nosanitize !9 ; 2 uses
  %i.hu = and i64 %i.ht, 3, !nosanitize !9
  %i.hv = icmp eq i64 %i.hu, 0, !nosanitize !9
  %i.hw = and i1 %i.de, %i.hv
  br i1 %i.hw, label %bb.al, label %.split716.us, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hk, ptr noundef nonnull align 4 dereferenceable(12) %i.dc, i64 12, i1 false)
  %.sroa.2220.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store float %i.hi, ptr %.sroa.2220.0..sroa_idx.us, align 4, !tbaa !25
  %.sroa.3221.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3221.0..sroa_idx.us, ptr noundef nonnull align 4 dereferenceable(12) %12, i64 12, i1 false)
  %.sroa.4222.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.hk, i64 28
  store i32 %i.hf, ptr %.sroa.4222.0..sroa_idx.us, align 4, !tbaa !44
  %.sroa.5223.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  store i32 0, ptr %.sroa.5223.0..sroa_idx.us, align 4, !tbaa !44
  %.sroa.6224.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  store i32 %i.ey, ptr %.sroa.6224.0..sroa_idx.us, align 4, !tbaa !44
  %i.hx = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.1143659.us, i32 1), !nosanitize !9 ; 2 uses
  %i.hy = extractvalue { i32, i1 } %i.hx, 1, !nosanitize !9
  br i1 %i.hy, label %.split719.us, label %bb.am, !prof !20, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  %i.hz = extractvalue { i32, i1 } %i.hx, 0, !nosanitize !9 ; 2 uses
  %.not189.not.us = icmp eq i32 %i.hz, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br i1 %.not189.not.us, label %.split722.us, label %.thread.us

.thread237.us:                                    ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %.thread.us

.thread.us:                                       ; preds = %.thread237.us, %bb.am, %bb.af, %b3LoadV.exit205.us
  %.6148.us = phi i32 [ %i.hz, %bb.am ], [ %.1143659.us, %b3LoadV.exit205.us ], [ %.1143659.us, %.thread237.us ], [ %.1143659.us, %bb.af ]
  %.6148.fr.us = freeze i32 %.6148.us             ; 7 uses
  %i.ia = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.au, <4 x float> noundef %i.av, <4 x float> noundef %i.ft, <4 x float> noundef %i.ga, <4 x float> noundef %i.fm) #14
  br i1 %i.ia, label %bb.an, label %.thread261.us

bb.an:                                            ; preds = %.thread.us
  %.sroa.0.4.vec.extract.i.i209.us = extractelement <2 x float> %i.gc, i64 1
  %i.ib = fsub float %i.m, %.sroa.0.4.vec.extract.i.i209.us
  %i.ic = fsub <2 x float> %i.fn, %i.gc           ; 2 uses
  %i.id = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ie = insertelement <2 x float> %i.id, float %i.fk, i64 1
  %i.if = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ig = insertelement <2 x float> %i.if, float %i.fy, i64 1 ; 2 uses
  %i.ih = fsub <2 x float> %i.ie, %i.ig           ; 2 uses
  %i.ii = fsub <2 x float> %i.fu, %i.gc           ; 2 uses
  %i.ij = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ik = insertelement <2 x float> %i.ij, float %i.fr, i64 1
  %i.il = fsub <2 x float> %i.ik, %i.ig           ; 2 uses
  %shift1487 = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1488 = fmul <2 x float> %shift1487, %i.ii
  %shift1490 = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1491 = fmul <2 x float> %i.ic, %shift1490
  %foldExtExtBinop1493 = fsub <2 x float> %foldExtExtBinop1488, %foldExtExtBinop1491
  %i.im = extractelement <2 x float> %foldExtExtBinop1493, i64 0
  %i.in = fmul <2 x float> %i.ic, %i.il
  %i.io = fmul <2 x float> %i.ih, %i.ii
  %i.ip = fsub <2 x float> %i.in, %i.io
  %i.iq = insertelement <2 x float> %i.if, float %i.fy, i64 0
  %i.ir = fsub <2 x float> %i.t, %i.iq
  %i.is = fmul float %i.ib, %i.im
  %i.it = fmul <2 x float> %i.ir, %i.ip           ; 2 uses
  %i.iu = extractelement <2 x float> %i.it, i64 1
  %i.iv = fadd float %i.iu, %i.is
  %i.iw = extractelement <2 x float> %i.it, i64 0
  %i.ix = fadd float %i.iw, %i.iv
  %i.iy = fcmp ult float %i.ix, 0.000000e+00
  br i1 %i.iy, label %.thread261.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dg, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !26
  store ptr %13, ptr %4, align 8, !tbaa !43
  store i32 3, ptr %.sroa.2226.0..sroa_idx, align 8, !tbaa !44
  store float 0.000000e+00, ptr %.sroa.3227.0..sroa_idx, align 4, !tbaa !25
  store i16 0, ptr %i.da, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %14, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #14
  %i.iz = load float, ptr %i.dh, align 4, !tbaa !59 ; 3 uses
  %i.ja = fcmp oeq float %i.iz, 0.000000e+00
  br i1 %i.ja, label %.thread251.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jb = load float, ptr %i.h, align 4, !tbaa !123 ; 2 uses
  %i.jc = fcmp ugt float %i.iz, %i.jb
  br i1 %i.jc, label %.thread251.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jd = add i32 %i.ed, 1073741824
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %bb.ar, label %.split725.us, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  %i.jf = shl nsw i32 %i.ed, 1
  %i.jg = or disjoint i32 %i.jf, 1
  %i.jh = fsub float %i.jb, %i.iz
  %i.ji = sext i32 %.6148.fr.us to i64            ; 2 uses
  %i.jj = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ji ; 7 uses
  %i.jk = mul nsw i64 %i.ji, 40
  %i.jl = add i64 %i.jk, %i.dd, !nosanitize !9    ; 3 uses
  %i.jm = icmp eq i64 %i.jl, 0
  %i.jn = xor i1 %i.de, %i.jm
  %i.jo = icmp uge i64 %i.jl, %i.dd, !nosanitize !9
  %i.jp = icmp slt i32 %.6148.fr.us, 0
  %i.jq = xor i1 %i.jp, %i.jo
  %i.jr = and i1 %i.jn, %i.jq, !nosanitize !9
  br i1 %i.jr, label %bb.as, label %.split728.us, !prof !10, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  %i.js = ptrtoint ptr %i.jj to i64, !nosanitize !9 ; 2 uses
  %i.jt = and i64 %i.js, 3, !nosanitize !9
  %i.ju = icmp eq i64 %i.jt, 0, !nosanitize !9
  %i.jv = and i1 %i.de, %i.ju
  br i1 %i.jv, label %bb.at, label %.split732.us, !prof !10, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jj, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false)
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store float %i.jh, ptr %.sroa.2.0..sroa_idx.us, align 4, !tbaa !25
  %.sroa.3.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx.us, ptr noundef nonnull align 4 dereferenceable(12) %14, i64 12, i1 false)
  %.sroa.4.0..sroa_idx215.us = getelementptr inbounds nuw i8, ptr %i.jj, i64 28
  store i32 %i.jg, ptr %.sroa.4.0..sroa_idx215.us, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  store i32 0, ptr %.sroa.5.0..sroa_idx.us, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jj, i64 36
  store i32 %i.ey, ptr %.sroa.6.0..sroa_idx.us, align 4, !tbaa !44
  %i.jw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.6148.fr.us, i32 1), !nosanitize !9 ; 2 uses
  %i.jx = extractvalue { i32, i1 } %i.jw, 1, !nosanitize !9
  br i1 %i.jx, label %.split735.us, label %bb.au, !prof !20, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  %i.jy = extractvalue { i32, i1 } %i.jw, 0, !nosanitize !9 ; 2 uses
  %.not190.not.us = icmp eq i32 %i.jy, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br i1 %.not190.not.us, label %.split722.us, label %.thread261.us

.thread251.us:                                    ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %.thread261.us

.thread261.us:                                    ; preds = %.thread251.us, %bb.au, %bb.an, %.thread.us
  %.13155.ph.us = phi i32 [ %.6148.fr.us, %bb.an ], [ %.6148.fr.us, %.thread251.us ], [ %.6148.fr.us, %.thread.us ], [ %i.jy, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.thread256.us

.thread256.us:                                    ; preds = %.thread261.us, %bb.aa, %bb.t, %.preheader.us
  %.15157.us = phi i32 [ %.1143659.us, %.preheader.us ], [ %.1143659.us, %bb.t ], [ %.13155.ph.us, %.thread261.us ], [ %.1143659.us, %bb.aa ] ; 2 uses
  %i.jz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0129660.us, i32 1), !nosanitize !9 ; 2 uses
  %i.ka = extractvalue { i32, i1 } %i.jz, 1, !nosanitize !9
  br i1 %i.ka, label %.split738.us, label %bb.av, !prof !20, !nosanitize !9

bb.av:                                            ; preds = %.thread256.us
  %i.kb = extractvalue { i32, i1 } %i.jz, 0, !nosanitize !9 ; 2 uses
  %.not185.us = icmp sgt i32 %i.kb, %i.cl
  br i1 %.not185.us, label %.thread265.us, label %.preheader.us, !llvm.loop !120

.thread265.us:                                    ; preds = %bb.av, %bb.r, %.lr.ph667.split.us.split
  %.17159.us = phi i32 [ %.0142664.us, %.lr.ph667.split.us.split ], [ %.0142664.us, %bb.r ], [ %.15157.us, %bb.av ] ; 2 uses
  %i.kc = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0141665.us, i32 1), !nosanitize !9 ; 2 uses
  %i.kd = extractvalue { i32, i1 } %i.kc, 1, !nosanitize !9
  br i1 %i.kd, label %.split741.us, label %bb.aw, !prof !20, !nosanitize !9

bb.aw:                                            ; preds = %.thread265.us
  %i.ke = extractvalue { i32, i1 } %i.kc, 0, !nosanitize !9 ; 2 uses
  %.not183.us = icmp sgt i32 %i.ke, %i.bv
  br i1 %.not183.us, label %.loopexit, label %.lr.ph667.split.us.split, !llvm.loop !119

.split.us:                                        ; preds = %bb.q, %bb.o
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @210, i64 2147483648, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split673.us:                                     ; preds = %bb.s
  %i.kf = zext i32 %i.dv to i64, !nosanitize !9
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @211, i64 %i.kf, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split676.us:                                     ; preds = %bb.u
  %i.kg = zext nneg i32 %.0141665.us to i64, !nosanitize !9
  %i.kh = zext nneg i32 %i.dx to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @212, i64 %i.kg, i64 %i.kh) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split680.us:                                     ; preds = %bb.v
  %i.ki = zext i32 %i.eb to i64, !nosanitize !9
  %i.kj = zext nneg i32 %.0129660.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @213, i64 %i.ki, i64 %i.kj) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split687.us:                                     ; preds = %bb.x
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @299, i64 %i.ba, i64 %i.eh) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split690.us:                                     ; preds = %b3GetHeightFieldMaterialIndices.exit.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @214, i64 %i.eo, i64 %i.ep) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split694.us:                                     ; preds = %bb.z
  %i.kk = ptrtoint ptr %i.en to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @215, i64 %i.kk) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split697.us:                                     ; preds = %bb.ab
  %i.kl = ptrtoint ptr %6 to i64, !nosanitize !9  ; 2 uses
  %i.km = add i64 %i.kl, 24, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @216, i64 %i.kl, i64 %i.km) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split699.us:                                     ; preds = %bb.ac
  %i.kn = ptrtoint ptr %6 to i64, !nosanitize !9  ; 2 uses
  %i.ko = add i64 %i.kn, 36, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @217, i64 %i.kn, i64 %i.ko) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split701.us:                                     ; preds = %_mm_load_sd.exit.i198.us
  %i.kp = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.kq = add i64 %i.kp, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @302, i64 %i.kp, i64 %i.kq) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split703.us:                                     ; preds = %b3LoadV.exit199.us
  %i.kr = ptrtoint ptr %8 to i64, !nosanitize !9  ; 2 uses
  %i.ks = add i64 %i.kr, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @302, i64 %i.kr, i64 %i.ks) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split705.us:                                     ; preds = %b3LoadV.exit201.us
  %i.kt = ptrtoint ptr %9 to i64, !nosanitize !9  ; 2 uses
  %i.ku = add i64 %i.kt, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @302, i64 %i.kt, i64 %i.ku) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split707.us:                                     ; preds = %b3LoadV.exit203.us
  %i.kv = ptrtoint ptr %10 to i64, !nosanitize !9 ; 2 uses
  %i.kw = add i64 %i.kv, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @302, i64 %i.kv, i64 %i.kw) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split709.us:                                     ; preds = %bb.ai
  %i.kx = zext i32 %i.ed to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @218, i64 2, i64 %i.kx) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split712.us:                                     ; preds = %bb.aj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @219, i64 %i.dd, i64 %i.hm) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split716.us:                                     ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @221, i64 %i.ht) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split719.us:                                     ; preds = %bb.al
  %i.ky = zext nneg i32 %.1143659.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @222, i64 %i.ky, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split725.us:                                     ; preds = %bb.aq
  %i.kz = zext i32 %i.ed to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @223, i64 2, i64 %i.kz) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split728.us:                                     ; preds = %bb.ar
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @224, i64 %i.dd, i64 %i.jl) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split732.us:                                     ; preds = %bb.as
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @225, i64 %i.js) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split735.us:                                     ; preds = %bb.at
  %i.la = zext nneg i32 %.6148.fr.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @226, i64 %i.la, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split738.us:                                     ; preds = %.thread256.us
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @227, i64 2147483647, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split722.us:                                     ; preds = %bb.am, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.loopexit

.split741.us:                                     ; preds = %.thread265.us, %.thread265.us.us
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @228, i64 2147483647, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

.loopexit:                                        ; preds = %bb.aw, %bb.p, %bb.n, %.split722.us
  %spec.select = phi i32 [ %1, %.split722.us ], [ 0, %bb.n ], [ 0, %bb.p ], [ %.17159.us, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define nonnull ptr @b3CreateGrid(i32 noundef %0, i32 noundef %1, <2 x float> %2, float %3, i1 noundef zeroext %4) local_unnamed_addr #0 !func_sanitize !128 {
bb.a:
  %5 = alloca %struct.b3HeightFieldDef, align 8   ; 11 uses
  %i.a = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 %1), !nosanitize !9 ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1, !nosanitize !9
  br i1 %i.b, label %bb.b, label %bb.c, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %0 to i64, !nosanitize !9
  %i.d = zext i32 %1 to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @229, i64 %i.c, i64 %i.d) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { i32, i1 } %i.a, 0, !nosanitize !9
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = tail call ptr @b3Alloc(i64 noundef %i.g) #14
  %.fr346 = freeze ptr %i.h                       ; 5 uses
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.preheader55.lr.ph, label %._crit_edge124

.preheader55.lr.ph:                               ; preds = %bb.c
  %i.j = icmp sgt i32 %1, 0
  %i.k = ptrtoint ptr %.fr346 to i64              ; 3 uses
  br i1 %i.j, label %.preheader55.lr.ph.split.us, label %._crit_edge124

.preheader55.lr.ph.split.us:                      ; preds = %.preheader55.lr.ph
  %.not = icmp eq ptr %.fr346, null
  br i1 %.not, label %.split111, label %.preheader55.us.us, !prof !20

.preheader55.us.us:                               ; preds = %.preheader55.lr.ph.split.us, %._crit_edge.us.us
  %.046123.us.us = phi i32 [ %i.ae, %._crit_edge.us.us ], [ 0, %.preheader55.lr.ph.split.us ] ; 3 uses
  %i.l = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.046123.us.us, i32 %1), !nosanitize !9 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 0, !nosanitize !9 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.l, 1, !nosanitize !9
  br i1 %i.n, label %.split128.us, label %.lr.ph.split.us.us, !prof !20, !nosanitize !9

.lr.ph.split.us.us:                               ; preds = %.preheader55.us.us, %bb.f
  %.045104.us126.us = phi i32 [ %i.ad, %bb.f ], [ 0, %.preheader55.us.us ] ; 3 uses
  %i.o = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.m, i32 %.045104.us126.us), !nosanitize !9 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1, !nosanitize !9
  br i1 %i.p, label %.split.us, label %bb.d, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %.lr.ph.split.us.us
  %i.q = extractvalue { i32, i1 } %i.o, 0, !nosanitize !9 ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.fr346, i64 %i.r ; 2 uses
  %i.t = shl nsw i64 %i.r, 2
  %i.u = add i64 %i.t, %i.k, !nosanitize !9       ; 3 uses
  %i.v = icmp ne i64 %i.u, 0
  %i.w = icmp uge i64 %i.u, %i.k, !nosanitize !9
  %i.x = icmp slt i32 %i.q, 0
  %i.y = xor i1 %i.x, %i.w
  %i.z = and i1 %i.v, %i.y, !nosanitize !9
  br i1 %i.z, label %bb.e, label %.split107.us, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.s to i64, !nosanitize !9 ; 2 uses
  %i.ab = and i64 %i.aa, 3, !nosanitize !9
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !9
  br i1 %i.ac, label %bb.f, label %.split111, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !25
  %i.ad = add nuw nsw i32 %.045104.us126.us, 1    ; 2 uses
  %exitcond491.not = icmp eq i32 %i.ad, %1
  br i1 %exitcond491.not, label %._crit_edge.us.us, label %.lr.ph.split.us.us, !llvm.loop !124

._crit_edge.us.us:                                ; preds = %bb.f
  %i.ae = add nuw nsw i32 %.046123.us.us, 1       ; 2 uses
  %exitcond492.not = icmp eq i32 %i.ae, %0
  br i1 %exitcond492.not, label %._crit_edge124, label %.preheader55.us.us, !llvm.loop !125

._crit_edge124:                                   ; preds = %._crit_edge.us.us, %.preheader55.lr.ph, %bb.c
  %i.af = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 -1) ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 0, !nosanitize !9 ; 5 uses
  %i.ah = extractvalue { i32, i1 } %i.af, 1, !nosanitize !9
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !20, !nosanitize !9

.split128.us:                                     ; preds = %.preheader55.us.us
  %i.ai = zext nneg i32 %.046123.us.us to i64, !nosanitize !9
  %i.aj = zext nneg i32 %1 to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @230, i64 %i.ai, i64 %i.aj) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split.us.us
  %i.ak = zext i32 %i.m to i64, !nosanitize !9
  %i.al = zext nneg i32 %.045104.us126.us to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @231, i64 %i.ak, i64 %i.al) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split107.us:                                     ; preds = %bb.d
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @232, i64 %i.k, i64 %i.u) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split111:                                        ; preds = %bb.e, %.preheader55.lr.ph.split.us
  %.us-phi112 = phi i64 [ 0, %.preheader55.lr.ph.split.us ], [ %i.aa, %bb.e ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @233, i64 %.us-phi112) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %._crit_edge124
  %i.am = zext i32 %0 to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @234, i64 %i.am, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %._crit_edge124
  %i.an = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 -1) ; 2 uses
  %i.ao = extractvalue { i32, i1 } %i.an, 0, !nosanitize !9 ; 8 uses
  %i.ap = extractvalue { i32, i1 } %i.an, 1, !nosanitize !9
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !20, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  %i.aq = zext i32 %1 to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @235, i64 %i.aq, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.ar = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ag, i32 %i.ao), !nosanitize !9 ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1, !nosanitize !9
  br i1 %i.as, label %bb.k, label %bb.l, !prof !20, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  %i.at = zext i32 %i.ag to i64, !nosanitize !9
  %i.au = zext i32 %i.ao to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @236, i64 %i.at, i64 %i.au) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.av = extractvalue { i32, i1 } %i.ar, 0, !nosanitize !9
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = tail call ptr @b3Alloc(i64 noundef %i.aw) #14
  %.fr = freeze ptr %i.ax                         ; 7 uses
  %i.ay = icmp sgt i32 %i.ag, 0
  br i1 %i.ay, label %.preheader.lr.ph, label %._crit_edge192

.preheader.lr.ph:                                 ; preds = %bb.l
  %i.az = icmp sgt i32 %i.ao, 0
  %i.ba = ptrtoint ptr %.fr to i64                ; 8 uses
  %.not350 = icmp eq ptr %.fr, null               ; 2 uses
  br i1 %i.az, label %.preheader.lr.ph.split.us, label %._crit_edge192

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  br i1 %4, label %.preheader.lr.ph.split.us.split.us, label %.preheader.lr.ph.split.us.split

.preheader.lr.ph.split.us.split.us:               ; preds = %.preheader.lr.ph.split.us
  br i1 %.not350, label %.split163.us, label %.preheader.us.us.us, !prof !20

.preheader.us.us.us:                              ; preds = %.preheader.lr.ph.split.us.split.us, %._crit_edge.split.us198.us.split.us293
  %.044191.us.us.us = phi i32 [ %i.bw, %._crit_edge.split.us198.us.split.us293 ], [ 0, %.preheader.lr.ph.split.us.split.us ] ; 3 uses
  %i.bb = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.044191.us.us.us, i32 %i.ao), !nosanitize !9 ; 2 uses
  %i.bc = extractvalue { i32, i1 } %i.bb, 0, !nosanitize !9 ; 2 uses
  %i.bd = extractvalue { i32, i1 } %i.bb, 1, !nosanitize !9
  br i1 %i.bd, label %.split200.us, label %.lr.ph.split.split.us196.us.split.us290.split, !prof !20, !nosanitize !9

.lr.ph.split.split.us196.us.split.us290.split:    ; preds = %.preheader.us.us.us, %bb.r
  %.0152.us197.us.us291 = phi i32 [ %i.bv, %bb.r ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %i.be = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bc, i32 %.0152.us197.us.us291), !nosanitize !9 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 0, !nosanitize !9 ; 5 uses
  %i.bg = extractvalue { i32, i1 } %i.be, 1, !nosanitize !9
  br i1 %i.bg, label %.split155.us, label %bb.m, !prof !20, !nosanitize !9

bb.m:                                             ; preds = %.lr.ph.split.split.us196.us.split.us290.split
  %i.bh = icmp sgt i32 %i.bf, 0
  %i.bi = and i32 %i.bf, 15
  %i.bj = icmp eq i32 %i.bi, 0
  %or.cond54.us.us.us292 = and i1 %i.bh, %i.bj
  br i1 %or.cond54.us.us.us292, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = sext i32 %i.bf to i64                   ; 2 uses
  %i.bl = add i64 %i.bk, %i.ba, !nosanitize !9    ; 3 uses
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = icmp uge i64 %i.bl, %i.ba, !nosanitize !9
  %i.bo = icmp slt i32 %i.bf, 0
  %i.bp = xor i1 %i.bo, %i.bn
  %i.bq = and i1 %i.bm, %i.bp, !nosanitize !9
  br i1 %i.bq, label %bb.o, label %.split159.us, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds i8, ptr %.fr, i64 %i.bk
  store i8 0, ptr %i.br, align 1, !tbaa !41
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.bs = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bt = add i64 %i.bs, %i.ba, !nosanitize !9    ; 2 uses
  %.not353 = icmp ult i64 %i.bt, %i.ba, !nosanitize !9
  br i1 %.not353, label %.split225.us, label %bb.q, !prof !20, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.fr, i64 %i.bs
  store i8 -1, ptr %i.bu, align 1, !tbaa !41
  br label %bb.r
end_hunk_0
