Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE1fENS_7Vector3IfEES5_NS_13TransportModeE:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i896 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i897 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i898 = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i899 = getelementptr inbounds nuw i8, ptr %12, i64 28 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i674 = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 28 ; 2 uses
  br label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

._crit_edge:                                      ; preds = %bb.bw, %bb.e
  %.sroa.23.1.lcssa = phi <2 x float> [ %.sroa.23.0, %bb.e ], [ %.sroa.23.13, %bb.bw ]
  %.sroa.01298.1.lcssa = phi <2 x float> [ %.sroa.01298.0, %bb.e ], [ %.sroa.01298.13, %bb.bw ]
  %.lcssa1440 = phi i32 [ %i.aw, %bb.e ], [ %i.yy, %bb.bw ]
  %i.cm = sitofp i32 %.lcssa1440 to float
  %i.cn = shufflevector <2 x float> %.sroa.01298.1.lcssa, <2 x float> %.sroa.23.1.lcssa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cq = fdiv <4 x float> %i.cn, %i.cp           ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i386 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cr, 0
  %.fca.1.insert.i387 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i386, <2 x float> %i.cs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i387

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph, %bb.bw
  %.01464 = phi i32 [ 0, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph ], [ %i.yx, %bb.bw ]
  %.sroa.01298.11463 = phi <2 x float> [ %.sroa.01298.0, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph ], [ %.sroa.01298.13, %bb.bw ] ; 11 uses
  %.sroa.23.11462 = phi <2 x float> [ %.sroa.23.0, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph ], [ %.sroa.23.13, %bb.bw ] ; 11 uses
  %.sroa.0.01461 = phi i64 [ %i.bq, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph ], [ %.sroa.0.8, %bb.bw ] ; 4 uses
  %i.ct = mul i64 %.sroa.0.01461, 6364136223846793005
  %i.cu = lshr i64 %.sroa.0.01461, 45
  %i.cv = lshr i64 %.sroa.0.01461, 27
  %i.cw = xor i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = lshr i64 %.sroa.0.01461, 59
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = call noundef i32 @llvm.fshr.i32(i32 %i.cx, i32 %i.cx, i32 %i.cz)
  %i.db = uitofp i32 %i.da to float
  %i.dc = fmul nnan float %i.db, f0x2F800000      ; 2 uses
  %i.dd = fcmp olt float %i.dc, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.dd, float %i.dc, float f0x3F7FFFFF
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.de = add i64 %i.ct, %i.au                    ; 2 uses
  %i.df = mul i64 %i.de, 6364136223846793005
  %i.dg = add i64 %i.df, %i.au                    ; 2 uses
  %i.dh = mul i64 %i.dg, 6364136223846793005
  %i.di = add i64 %i.dh, %i.au                    ; 8 uses
  %i.dj = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %i.dk = insertelement <2 x i64> %i.dj, i64 %i.dg, i64 1 ; 3 uses
  %i.dl = lshr <2 x i64> %i.dk, splat (i64 45)
  %i.dm = lshr <2 x i64> %i.dk, splat (i64 27)
  %i.dn = xor <2 x i64> %i.dl, %i.dm
  %i.do = trunc <2 x i64> %i.dn to <2 x i32>      ; 2 uses
  %i.dp = lshr <2 x i64> %i.dk, splat (i64 59)
  %i.dq = trunc nuw nsw <2 x i64> %i.dp to <2 x i32>
  %i.dr = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.do, <2 x i32> %i.do, <2 x i32> %i.dq)
  %i.ds = uitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = fmul nnan <2 x float> %i.ds, splat (float f0x2F800000) ; 2 uses
  %i.du = fcmp olt <2 x float> %i.dt, splat (float f0x3F7FFFFF)
  %i.dv = select <2 x i1> %i.du, <2 x float> %i.dt, <2 x float> splat (float f0x3F7FFFFF)
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %8, ptr noundef nonnull align 4 dereferenceable(12) %0, <2 x float> %.sroa.01372.0, float %.sroa.10.0, float noundef %.sroa.speculated.i.i, <2 x float> %i.dv, i32 noundef %5, i32 noundef 2)
  %i.dw = load i8, ptr %i.br, align 4, !tbaa !55, !range !56, !noundef !57
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.f, label %bb.bw

bb.f:                                             ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  %i.dy = load <4 x float>, ptr %8, align 16
  %.fr = freeze <4 x float> %i.dy
  %i.dz = fcmp une <4 x float> %.fr, zeroinitializer
  %i.ea = bitcast <4 x i1> %i.dz to i4
  %.not = icmp eq i4 %i.ea, 0
  br i1 %.not, label %bb.bw, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit392

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit392: ; preds = %bb.f
  %i.eb = load float, ptr %i.bt, align 4, !tbaa !62 ; 2 uses
  %i.ec = fcmp oeq float %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.bw, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit394

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit394: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit392
  %i.ed = load float, ptr %i.bu, align 8, !tbaa !63 ; 3 uses
  %i.ee = fcmp oeq float %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.bw, label %bb.g

bb.g:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit394
  %i.ef = mul i64 %i.di, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.eg = add i64 %i.ef, %i.au                    ; 2 uses
  %i.eh = mul i64 %i.eg, 6364136223846793005
  %i.ei = add i64 %i.eh, %i.au                    ; 2 uses
  %i.ej = mul i64 %i.ei, 6364136223846793005
  %i.ek = add i64 %i.ej, %i.au                    ; 7 uses
  %i.el = load ptr, ptr %6, align 8, !tbaa !47, !noalias !224 ; 2 uses
  %.not.i398 = icmp eq ptr %i.el, null
  br i1 %.not.i398, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit400.thread, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit400

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit400: ; preds = %bb.g
  %i.em = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.en = insertelement <2 x i64> %i.em, i64 %i.ei, i64 1 ; 3 uses
  %i.eo = lshr <2 x i64> %i.en, splat (i64 45)
  %i.ep = lshr <2 x i64> %i.en, splat (i64 27)
  %i.eq = lshr <2 x i64> %i.en, splat (i64 59)
  %i.er = xor <2 x i64> %i.eo, %i.ep
  %i.es = trunc <2 x i64> %i.er to <2 x i32>      ; 2 uses
  %i.et = trunc nuw nsw <2 x i64> %i.eq to <2 x i32>
  %i.eu = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.es, <2 x i32> %i.es, <2 x i32> %i.et)
  %i.ev = uitofp <2 x i32> %i.eu to <2 x float>
  %i.ew = fmul nnan <2 x float> %i.ev, splat (float f0x2F800000) ; 2 uses
  %i.ex = fcmp olt <2 x float> %i.ew, splat (float f0x3F7FFFFF)
  %i.ey = select <2 x i1> %i.ex, <2 x float> %i.ew, <2 x float> splat (float f0x3F7FFFFF)
  %i.ez = lshr i64 %i.di, 45
  %i.fa = lshr i64 %i.di, 27
  %i.fb = xor i64 %i.ez, %i.fa
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  %i.fd = lshr i64 %i.di, 59
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = call noundef i32 @llvm.fshr.i32(i32 %i.fc, i32 %i.fc, i32 %i.fe)
  %i.fg = uitofp i32 %i.ff to float
  %i.fh = fmul nnan float %i.fg, f0x2F800000      ; 2 uses
  %i.fi = fcmp olt float %i.fh, f0x3F7FFFFF
  %.sroa.speculated.i.i395 = select i1 %i.fi, float %i.fh, float f0x3F7FFFFF
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %9, ptr noundef nonnull align 4 dereferenceable(12) %i.el, <2 x float> %.sroa.01361.0, float %.sroa.14.0, float noundef %.sroa.speculated.i.i395, <2 x float> %i.ey, i32 noundef %i.bw, i32 noundef 2)
  %.pre = load i8, ptr %i.bx, align 4, !tbaa !55, !range !56
  %i.fj = trunc nuw i8 %.pre to i1
  br i1 %i.fj, label %bb.h, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit400.thread

bb.h:                                             ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit400
  %i.fk = load <2 x float>, ptr %9, align 8       ; 3 uses
  %i.fl = load <2 x float>, ptr %i.by, align 8    ; 3 uses
  %i.fm = shufflevector <2 x float> %i.fk, <2 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1527 = freeze <4 x float> %i.fm
  %i.fn = fcmp une <4 x float> %.fr1527, zeroinitializer
  %i.fo = bitcast <4 x i1> %i.fn to i4
  %.not1528 = icmp eq i4 %i.fo, 0
  br i1 %.not1528, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit400.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit407

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit407: ; preds = %bb.h
  %i.fp = load float, ptr %i.bz, align 4, !tbaa !62 ; 4 uses
  %i.fq = fcmp oeq float %i.fp, 0.000000e+00
  br i1 %i.fq, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit400.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit409

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit409: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit407
  %i.fr = load float, ptr %i.ca, align 8, !tbaa !63 ; 7 uses
  %i.fs = fcmp oeq float %i.fr, 0.000000e+00
  br i1 %i.fs, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit400.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit409
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %8, align 16
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %i.bs, align 8, !tbaa !21
  %i.ft = load float, ptr %i.cc, align 4, !tbaa !28
  %.sroa.01118.0.copyload = load <2 x float>, ptr %i.cb, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.fu = load float, ptr %i.cd, align 4, !tbaa !29
  store float %i.fu, ptr %10, align 4, !tbaa !65
  %i.fv = load i32, ptr %i.ce, align 4, !tbaa !31
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.i
  %i.fx = call noundef float @llvm.fabs.f32(float %i.ed)
  %i.fy = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = fmul <2 x float> %i.fz, %.sroa.6.0.copyload.i
  %i.gb = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = fdiv <2 x float> %i.ga, %i.gc
  %i.ge = fmul <2 x float> %i.fz, %.sroa.0.0.copyload.i
  %i.gf = fdiv <2 x float> %i.ge, %i.gc
  %i.gg = fneg float %i.fr                        ; 4 uses
  %i.gh = load <2 x float>, ptr %i.ch, align 8
  %i.gi = fneg <2 x float> %i.gh                  ; 4 uses
  %i.gj = call float @llvm.fabs.f32(float %i.fr)  ; 2 uses
  %i.gk = fmul float %i.gj, f0x3EA2F983
  %i.gl = fmul float %i.fp, %i.fp                 ; 5 uses
  %i.gm = call float @llvm.fabs.f32(float %i.gl)
  %i.gn = fcmp oeq float %i.gm, +inf              ; 2 uses
  %.sroa.0142.0.copyload = load <2 x float>, ptr %i.ch, align 8
  %i.go = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gq = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.thread1411
  %.03341454 = phi float [ %i.ft, %.lr.ph ], [ %.4338, %.thread1411 ] ; 5 uses
  %.03391453 = phi i32 [ 0, %.lr.ph ], [ %i.yu, %.thread1411 ] ; 2 uses
  %.sroa.01118.01451 = phi <2 x float> [ %.sroa.01118.0.copyload, %.lr.ph ], [ %.sroa.01118.4, %.thread1411 ] ; 8 uses
  %.sroa.30.01449 = phi float [ %i.ed, %.lr.ph ], [ %.sroa.30.4, %.thread1411 ] ; 15 uses
  %.sroa.01181.01448 = phi <2 x float> [ %i.gf, %.lr.ph ], [ %.sroa.01181.5, %.thread1411 ] ; 5 uses
  %.sroa.32.01447 = phi <2 x float> [ %i.gd, %.lr.ph ], [ %.sroa.32.5, %.thread1411 ] ; 5 uses
  %.sroa.01298.21446 = phi <2 x float> [ %.sroa.01298.11463, %.lr.ph ], [ %.sroa.01298.10, %.thread1411 ] ; 7 uses
  %.sroa.23.21445 = phi <2 x float> [ %.sroa.23.11462, %.lr.ph ], [ %.sroa.23.10, %.thread1411 ] ; 7 uses
  %.sroa.0.11444 = phi i64 [ %i.ek, %.lr.ph ], [ %.sroa.0.5, %.thread1411 ] ; 6 uses
  %i.gs = icmp samesign ugt i32 %.03391453, 3
  br i1 %i.gs, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.sroa.01181.0.vec.extract = extractelement <2 x float> %.sroa.01181.01448, i64 0 ; 2 uses
  %.sroa.01181.4.vec.extract = extractelement <2 x float> %.sroa.01181.01448, i64 1 ; 2 uses
  %i.gt = fcmp olt float %.sroa.01181.0.vec.extract, %.sroa.01181.4.vec.extract
  %.sroa.speculated.i = select i1 %i.gt, float %.sroa.01181.4.vec.extract, float %.sroa.01181.0.vec.extract ; 2 uses
  %.sroa.32.8.vec.extract = extractelement <2 x float> %.sroa.32.01447, i64 0 ; 2 uses
  %i.gu = fcmp olt float %.sroa.speculated.i, %.sroa.32.8.vec.extract
  %.sroa.speculated.1.i = select i1 %i.gu, float %.sroa.32.8.vec.extract, float %.sroa.speculated.i ; 2 uses
  %.sroa.32.12.vec.extract = extractelement <2 x float> %.sroa.32.01447, i64 1 ; 2 uses
  %i.gv = fcmp olt float %.sroa.speculated.1.i, %.sroa.32.12.vec.extract
  %.sroa.speculated.2.i = select i1 %i.gv, float %.sroa.32.12.vec.extract, float %.sroa.speculated.1.i ; 2 uses
  %i.gw = fcmp olt float %.sroa.speculated.2.i, 2.500000e-01
  br i1 %i.gw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.gx = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.gy = fcmp ogt float %i.gx, 0.000000e+00
  %.sroa.speculated = select i1 %i.gy, float %i.gx, float 0.000000e+00 ; 2 uses
  %i.gz = mul i64 %.sroa.0.11444, 6364136223846793005
  %i.ha = add i64 %i.gz, %i.au                    ; 2 uses
  %i.hb = lshr i64 %.sroa.0.11444, 45
  %i.hc = lshr i64 %.sroa.0.11444, 27
  %i.hd = xor i64 %i.hb, %i.hc
  %i.he = trunc i64 %i.hd to i32                  ; 2 uses
  %i.hf = lshr i64 %.sroa.0.11444, 59
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  %i.hh = call noundef i32 @llvm.fshr.i32(i32 %i.he, i32 %i.he, i32 %i.hg)
  %i.hi = uitofp i32 %i.hh to float
  %i.hj = fmul nnan float %i.hi, f0x2F800000      ; 2 uses
  %i.hk = fcmp olt float %i.hj, f0x3F7FFFFF
  %.sroa.speculated.i.i440 = select i1 %i.hk, float %i.hj, float f0x3F7FFFFF
  %i.hl = fcmp uge float %.sroa.speculated.i.i440, %.sroa.speculated
  br i1 %i.hl, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.hm = fsub float 1.000000e+00, %.sroa.speculated
  %i.hn = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hp = fdiv <2 x float> %.sroa.01181.01448, %i.ho
  %i.hq = fdiv <2 x float> %.sroa.32.01447, %i.ho
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.ha, %bb.m ], [ %.sroa.0.11444, %bb.k ], [ %.sroa.0.11444, %bb.j ] ; 5 uses
  %.sroa.32.1 = phi <2 x float> [ %i.hq, %bb.m ], [ %.sroa.32.01447, %bb.k ], [ %.sroa.32.01447, %bb.j ] ; 6 uses
  %.sroa.01181.1 = phi <2 x float> [ %i.hp, %bb.m ], [ %.sroa.01181.01448, %bb.k ], [ %.sroa.01181.01448, %bb.j ] ; 6 uses
  %i.hr = load <4 x float>, ptr %i.cf, align 4
  %.fr1529 = freeze <4 x float> %i.hr
  %i.hs = fcmp une <4 x float> %.fr1529, zeroinitializer
  %i.ht = bitcast <4 x i1> %i.hs to i4
  %.not1530 = icmp eq i4 %i.ht, 0
  br i1 %.not1530, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.hu = load float, ptr %i.cc, align 4, !tbaa !28 ; 4 uses
  %i.hv = fcmp oeq float %.03341454, %i.hu
  %spec.select = select i1 %i.hv, float 0.000000e+00, float %i.hu
  %i.hw = call noundef float @llvm.fabs.f32(float %i.hu)
  %i.hx = fcmp ugt float %i.hw, f0x00800000
  br i1 %i.hx, label %bb.p, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit

bb.p:                                             ; preds = %bb.o
  %i.hy = fdiv float %i.hu, %.sroa.30.01449
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy)
  %i.ia = fmul float %i.hz, f0xBFB8AA3B           ; 2 uses
  %i.ib = call noundef float @llvm.floor.f32(float %i.ia) ; 2 uses
  %i.ic = fsub float %i.ia, %i.ib                 ; 3 uses
  %i.id = fptosi float %i.ib to i32
  %i.ie = call noundef float @llvm.fma.f32(float %i.ic, float f0x3DA00AC9, float f0x3E679A0B)
  %i.if = call noundef float @llvm.fma.f32(float %i.ic, float %i.ie, float f0x3F321004)
  %i.ig = call noundef float @llvm.fma.f32(float %i.ic, float %i.if, float 1.000000e+00)
  %i.ih = bitcast float %i.ig to i32              ; 2 uses
  %i.ii = lshr i32 %i.ih, 23
  %i.ij = add i32 %i.id, -127
  %i.ik = add i32 %i.ij, %i.ii                    ; 3 uses
  %i.il = icmp slt i32 %i.ik, -126
  br i1 %i.il, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.im = icmp sgt i32 %i.ik, 127
  br i1 %i.im, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.in = and i32 %i.ih, -2139095041
  %i.io = shl nsw i32 %i.ik, 23
  %i.ip = add nsw i32 %i.io, 1065353216
  %i.iq = or i32 %i.ip, %i.in
  %i.ir = bitcast i32 %i.iq to float
  br label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit

_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i = phi float [ 1.000000e+00, %bb.o ], [ %i.ir, %bb.r ], [ 0.000000e+00, %bb.p ], [ +inf, %bb.q ]
  %i.is = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iu = fmul <2 x float> %.sroa.01181.1, %i.it
  %i.iv = fmul <2 x float> %.sroa.32.1, %i.it
  br label %bb.af

bb.s:                                             ; preds = %bb.n
  %i.iw = mul i64 %.sroa.0.2, 6364136223846793005
  %i.ix = add i64 %i.iw, %i.au                    ; 4 uses
  %i.iy = lshr i64 %.sroa.0.2, 45
  %i.iz = lshr i64 %.sroa.0.2, 27
  %i.ja = xor i64 %i.iy, %i.iz
  %i.jb = trunc i64 %i.ja to i32                  ; 2 uses
  %i.jc = lshr i64 %.sroa.0.2, 59
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = call noundef i32 @llvm.fshr.i32(i32 %i.jb, i32 %i.jb, i32 %i.jd)
  %i.jf = uitofp i32 %i.je to float
  %i.jg = fmul nnan float %i.jf, f0x2F800000      ; 2 uses
  %i.jh = fcmp olt float %i.jg, f0x3F7FFFFF
  %.sroa.speculated.i.i444 = select i1 %i.jh, float %i.jg, float f0x3F7FFFFF
  %i.ji = call noundef float @llvm.fabs.f32(float %.sroa.30.01449)
  %i.jj = fdiv float 1.000000e+00, %i.ji
  %i.jk = fsub float 1.000000e+00, %.sroa.speculated.i.i444
  %i.jl = call noundef float @logf(float noundef %i.jk) #31
  %i.jm = fneg float %i.jl
  %i.jn = fdiv float %i.jm, %i.jj                 ; 2 uses
  %i.jo = fcmp ogt float %.sroa.30.01449, 0.000000e+00
  %i.jp = fneg float %i.jn
  %.p = select i1 %i.jo, float %i.jn, float %i.jp
  %i.jq = fadd float %.03341454, %.p              ; 13 uses
  %i.jr = fcmp oeq float %.03341454, %i.jq
  br i1 %i.jr, label %.thread1411, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.js = fcmp ogt float %i.jq, 0.000000e+00
  %.pre1476 = load float, ptr %i.cc, align 4, !tbaa !28 ; 3 uses
  %i.jt = fcmp olt float %i.jq, %.pre1476
  %or.cond1519 = select i1 %i.js, i1 %i.jt, i1 false
  br i1 %or.cond1519, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.ju = call noundef i32 @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE5FlagsEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.jv = and i32 %i.ju, 16
  %.not1425 = icmp eq i32 %i.jv, 0
  br i1 %.not1425, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %13 = fneg <2 x float> %.sroa.01118.01451
  %14 = fneg float %.sroa.30.01449
  %i.jw = call noundef float @_ZNK4pbrt15HGPhaseFunction3PDFENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(4) %10, <2 x float> %13, float %14, <2 x float> %i.gi, float %i.gg) ; 2 uses
  br i1 %i.gn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jx = fmul float %i.jw, %i.jw
  %i.jy = fadd float %i.gl, %i.jx
  %i.jz = fdiv float %i.gl, %i.jy
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %.0340 = phi float [ 1.000000e+00, %bb.u ], [ %i.jz, %bb.w ], [ 1.000000e+00, %bb.v ]
  %15 = fneg <2 x float> %.sroa.01118.01451       ; 2 uses
  %16 = fneg float %.sroa.30.01449                ; 2 uses
  %i.ka = fsub float %i.jq, %i.z                  ; 2 uses
  %i.kb = load <2 x float>, ptr %i.cg, align 4, !tbaa !20
  %i.kc = fmul <2 x float> %.sroa.32.1, %i.kb
  %i.kd = insertelement <2 x float> poison, float %.0340, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kf = load <2 x float>, ptr %i.cf, align 4, !tbaa !20
  %i.kg = fmul <2 x float> %.sroa.01181.1, %i.kf
  %i.kh = call noundef float @_ZNK4pbrt15HGPhaseFunction1pENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(4) %10, <2 x float> %15, float %16, <2 x float> %i.gi, float %i.gg)
  %i.ki = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kk = fmul <2 x float> %i.kg, %i.kj
  %i.kl = fmul <2 x float> %i.kc, %i.kj
  %i.km = fmul <2 x float> %i.ke, %i.kk
  %i.kn = fmul <2 x float> %i.ke, %i.kl
  %i.ko = call noundef float @_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE(float noundef %i.ka, <2 x float> %.sroa.0142.0.copyload, float %i.fr)
  %i.kp = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kr = fmul <2 x float> %i.kq, %i.km
  %i.ks = fmul <2 x float> %i.kq, %i.kn
  %i.kt = fmul <2 x float> %i.fk, %i.kr
  %i.ku = fmul <2 x float> %i.fl, %i.ks
  %i.kv = fdiv <2 x float> %i.kt, %i.gp
  %i.kw = fdiv <2 x float> %i.ku, %i.gp
  %i.kx = fadd <2 x float> %.sroa.01298.21446, %i.kv ; 5 uses
  %i.ky = fadd <2 x float> %.sroa.23.21445, %i.kw ; 5 uses
  %i.kz = mul i64 %i.ix, 6364136223846793005
  %i.la = add i64 %i.kz, %i.au                    ; 2 uses
  %i.lb = mul i64 %i.la, 6364136223846793005
  %i.lc = add i64 %i.lb, %i.au                    ; 5 uses
  %i.ld = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %i.le = insertelement <2 x i64> %i.ld, i64 %i.la, i64 1 ; 3 uses
  %i.lf = lshr <2 x i64> %i.le, splat (i64 45)
  %i.lg = lshr <2 x i64> %i.le, splat (i64 27)
  %i.lh = xor <2 x i64> %i.lf, %i.lg
  %i.li = trunc <2 x i64> %i.lh to <2 x i32>      ; 2 uses
  %i.lj = lshr <2 x i64> %i.le, splat (i64 59)
  %i.lk = trunc nuw nsw <2 x i64> %i.lj to <2 x i32>
  %i.ll = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.li, <2 x i32> %i.li, <2 x i32> %i.lk)
  %i.lm = uitofp <2 x i32> %i.ll to <2 x float>
  %i.ln = fmul nnan <2 x float> %i.lm, splat (float f0x2F800000) ; 2 uses
  %i.lo = fcmp olt <2 x float> %i.ln, splat (float f0x3F7FFFFF)
  %i.lp = select <2 x i1> %i.lo, <2 x float> %i.ln, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !225
  %i.lq = load float, ptr %10, align 4, !tbaa !65, !noalias !225
  %i.lr = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> %15, float %16, float noundef %i.lq, <2 x float> %i.lp, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.lr, 0 ; 6 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.lr, 1 ; 9 uses
  %i.ls = load float, ptr %i.a, align 4, !tbaa !20, !noalias !225 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !225
  %i.lt = fcmp oeq float %i.ls, 0.000000e+00
  %i.lu = fcmp oeq float %.fca.1.extract.i, 0.000000e+00
  %or.cond1421 = select i1 %i.lt, i1 true, i1 %i.lu
  br i1 %or.cond1421, label %.thread1411, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.copyload.i565 = load <2 x float>, ptr %i.cf, align 4
  %.sroa.6.0.copyload.i567 = load <2 x float>, ptr %i.cg, align 4, !tbaa !21
  %i.lv = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lx = fmul <2 x float> %i.lw, %.sroa.0.0.copyload.i565
  %i.ly = fdiv <2 x float> %i.lx, %i.lw
  %i.lz = fmul <2 x float> %.sroa.01181.1, %i.ly  ; 5 uses
  %i.ma = fmul <2 x float> %i.lw, %.sroa.6.0.copyload.i567
  %i.mb = fdiv <2 x float> %i.ma, %i.lw
  %i.mc = fmul <2 x float> %.sroa.32.1, %i.mb     ; 5 uses
  %i.md = fcmp olt float %i.jq, %i.z
  %i.me = fcmp ogt float %.fca.1.extract.i, 0.000000e+00
  %or.cond = select i1 %i.md, i1 %i.me, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mf = fcmp ogt float %i.jq, %i.z
  %i.mg = fcmp olt float %.fca.1.extract.i, 0.000000e+00
  %or.cond7 = select i1 %i.mf, i1 %i.mg, i1 false
  br i1 %or.cond7, label %bb.aa, label %.thread1411

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.mh = call noundef i32 @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE5FlagsEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.mi = and i32 %i.mh, 16
  %.not1426 = icmp eq i32 %i.mi, 0
  br i1 %.not1426, label %bb.ab, label %.thread1411

bb.ab:                                            ; preds = %bb.aa
  %i.mj = fneg <2 x float> %.fca.0.extract.i      ; 2 uses
  %i.mk = fneg float %.fca.1.extract.i            ; 2 uses
  %i.ml = call { <2 x float>, <2 x float> } @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE1fENS_7Vector3IfEES5_NS_13TransportModeE(ptr noundef nonnull align 8 dereferenceable(16) %6, <2 x float> %i.mj, float %i.mk, <2 x float> %.sroa.01361.0, float %.sroa.14.0, i32 noundef %5) ; 2 uses
  %i.mm = extractvalue { <2 x float>, <2 x float> } %i.ml, 0 ; 2 uses
  %i.mn = extractvalue { <2 x float>, <2 x float> } %i.ml, 1 ; 2 uses
  %i.mo = shufflevector <2 x float> %i.mm, <2 x float> %i.mn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1537 = freeze <4 x float> %i.mo
  %i.mp = fcmp une <4 x float> %.fr1537, zeroinitializer
  %i.mq = bitcast <4 x i1> %i.mp to i4
  %.not1538 = icmp eq i4 %i.mq, 0
  br i1 %.not1538, label %.thread1411, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mr = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %.not.i606 = icmp eq ptr %i.mr, null
  br i1 %.not.i606, label %_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit609, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ms = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.mr, <2 x float> %i.mj, float %i.mk, <2 x float> %.sroa.01361.0, float %.sroa.14.0, i32 poison, i32 noundef 2) ; 2 uses
  %i.mt = fmul float %i.ms, %i.ms
  br label %_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit609

_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit609: ; preds = %bb.ac, %bb.ad
  %i.mu = phi float [ %i.mt, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  %i.mv = fmul float %i.ls, %i.ls                 ; 3 uses
  %i.mw = call float @llvm.fabs.f32(float %i.mv)
  %i.mx = fcmp oeq float %i.mw, +inf
  %i.my = fadd float %i.mv, %i.mu
  %i.mz = fdiv float %i.mv, %i.my
  %.0.i610 = select i1 %i.mx, float 1.000000e+00, float %i.mz
  %i.na = call noundef float @_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE(float noundef %i.ka, <2 x float> %.fca.0.extract.i, float %.fca.1.extract.i)
  %i.nb = insertelement <2 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nd = fmul <2 x float> %i.lz, %i.nc
  %i.ne = fmul <2 x float> %i.mm, %i.nd
  %i.nf = insertelement <2 x float> poison, float %.0.i610, i64 0
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nh = fmul <2 x float> %i.ng, %i.ne
  %i.ni = fadd <2 x float> %i.kx, %i.nh
  %i.nj = fmul <2 x float> %i.mc, %i.nc
  %i.nk = fmul <2 x float> %i.mn, %i.nj
  %i.nl = fmul <2 x float> %i.ng, %i.nk
  %i.nm = fadd <2 x float> %i.ky, %i.nl
  br label %.thread1411

bb.ae:                                            ; preds = %bb.t
  %i.nn = fcmp olt float %i.jq, 0.000000e+00
  %i.no = fcmp ogt float %i.jq, %.pre1476
  %..i653 = select i1 %i.no, float %.pre1476, float %i.jq
  %.0.i654 = select i1 %i.nn, float 0.000000e+00, float %..i653
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit
  %.sroa.0.4 = phi i64 [ %i.ix, %bb.ae ], [ %.sroa.0.2, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 8 uses
  %.sroa.32.4 = phi <2 x float> [ %.sroa.32.1, %bb.ae ], [ %i.iv, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 3 uses
  %.sroa.01181.4 = phi <2 x float> [ %.sroa.01181.1, %bb.ae ], [ %i.iu, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 3 uses
  %.3337 = phi float [ %.0.i654, %bb.ae ], [ %spec.select, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 3 uses
  %i.np = fcmp oeq float %.3337, %i.z
  br i1 %i.np, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.nq = mul i64 %.sroa.0.4, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.nr = add i64 %i.nq, %i.au                    ; 2 uses
  %i.ns = mul i64 %i.nr, 6364136223846793005
  %i.nt = add i64 %i.ns, %i.au                    ; 2 uses
  %i.nu = insertelement <2 x i64> poison, i64 %i.nr, i64 0
  %i.nv = insertelement <2 x i64> %i.nu, i64 %i.nt, i64 1 ; 3 uses
  %i.nw = lshr <2 x i64> %i.nv, splat (i64 45)
  %i.nx = lshr <2 x i64> %i.nv, splat (i64 27)
  %i.ny = xor <2 x i64> %i.nw, %i.nx
  %i.nz = trunc <2 x i64> %i.ny to <2 x i32>      ; 2 uses
  %i.oa = lshr <2 x i64> %i.nv, splat (i64 59)
  %i.ob = trunc nuw nsw <2 x i64> %i.oa to <2 x i32>
  %i.oc = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.nz, <2 x i32> %i.nz, <2 x i32> %i.ob)
  %i.od = uitofp <2 x i32> %i.oc to <2 x float>
  %i.oe = fmul nnan <2 x float> %i.od, splat (float f0x2F800000) ; 2 uses
  %i.of = fcmp olt <2 x float> %i.oe, splat (float f0x3F7FFFFF)
  %i.og = mul i64 %i.nt, 6364136223846793005
  %i.oh = add i64 %i.og, %i.au                    ; 2 uses
  %i.oi = select <2 x i1> %i.of, <2 x float> %i.oe, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.oj = load ptr, ptr %6, align 8, !tbaa !47, !noalias !226 ; 2 uses
  %.not.i662 = icmp eq ptr %i.oj, null
  br i1 %.not.i662, label %bb.ah, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit676

bb.ah:                                            ; preds = %bb.ag
  %i.ok = load ptr, ptr %i.ck, align 8, !tbaa !46, !noalias !226 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.ol = fmul nnan <2 x float> %i.oi, splat (float 2.000000e+00)
  %i.om = fadd <2 x float> %i.ol, splat (float -1.000000e+00) ; 3 uses
  %i.on = extractelement <2 x float> %i.om, i64 0 ; 4 uses
  %i.oo = fcmp oeq float %i.on, 0.000000e+00
  %i.op = extractelement <2 x float> %i.om, i64 1 ; 4 uses
  %i.oq = fcmp oeq float %i.op, 0.000000e+00
  %or.cond.i.i.i.i = select i1 %i.oo, i1 %i.oq, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit676.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.or = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.om) ; 2 uses
  %shift = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.os = fcmp ogt <2 x float> %i.or, %shift
  %i.ot = extractelement <2 x i1> %i.os, i64 0
  br i1 %i.ot, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ou = fdiv float %i.op, %i.on
  %i.ov = fmul float %i.ou, f0x3F490FDB
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ow = fdiv float %i.on, %i.op
  %i.ox = fmul float %i.ow, f0x3F490FDB
  %i.oy = fsub float f0x3FC90FDB, %i.ox
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.024.i.i.i.i = phi float [ %i.ov, %bb.aj ], [ %i.oy, %bb.ak ] ; 2 uses
  %.0.i.i.i.i = phi float [ %i.on, %bb.aj ], [ %i.op, %bb.ak ] ; 2 uses
  %i.oz = call noundef float @cosf(float noundef %.024.i.i.i.i) #31, !noalias !228
  %i.pa = call noundef float @sinf(float noundef %.024.i.i.i.i) #31, !noalias !228
  %i.pb = fmul float %.0.i.i.i.i, %i.oz
  %i.pc = fmul float %.0.i.i.i.i, %i.pa
  %.sroa.0.0.vec.insert.i.i29.i.i.i.i = insertelement <2 x float> poison, float %i.pb, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i.i.i, float %i.pc, i64 1
  br label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit676.thread

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit676.thread: ; preds = %bb.ah, %bb.al
  %.sroa.035.0.i.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i.i.i, %bb.al ], [ zeroinitializer, %bb.ah ] ; 3 uses
  %i.pd = fmul <2 x float> %.sroa.035.0.i.i.i.i, %.sroa.035.0.i.i.i.i ; 2 uses
  %i.pe = extractelement <2 x float> %i.pd, i64 0
  %i.pf = fsub float 1.000000e+00, %i.pe
  %i.pg = extractelement <2 x float> %i.pd, i64 1
  %i.ph = fsub float %i.pf, %i.pg                 ; 2 uses
  %i.pi = fcmp ogt float %i.ph, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.pi, float %i.ph, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.pj = fcmp ogt float %.sroa.30.01449, 0.000000e+00
  %i.pk = fneg float %sqrt.i.i.i.i
  %spec.select.i.i = select i1 %i.pj, float %i.pk, float %sqrt.i.i.i.i
  %i.pl = call float @llvm.fabs.f32(float %sqrt.i.i.i.i)
  %i.pm = fmul float %i.pl, f0x3EA2F983
  %.sroa.0.0.copyload.i.i.i663 = load <2 x float>, ptr %i.ok, align 4, !noalias !228
  %.sroa.6.0..sroa_idx.i.i.i664 = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %.sroa.6.0.copyload.i.i.i665 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i664, align 4, !tbaa !21, !noalias !228
  %i.pn = fmul <2 x float> %.sroa.0.0.copyload.i.i.i663, splat (float f0x3EA2F983)
  %i.po = fmul <2 x float> %.sroa.6.0.copyload.i.i.i665, splat (float f0x3EA2F983)
  store i8 1, ptr %i.cl, align 4, !tbaa !55, !alias.scope !228
  store <2 x float> %i.pn, ptr %11, align 16, !alias.scope !228
  store <2 x float> %i.po, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !228
  store <2 x float> %.sroa.035.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !alias.scope !228
  store float %spec.select.i.i, ptr %.sroa.6.0..sroa_idx.i.i674, align 8, !alias.scope !228
  store float %i.pm, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !228
  br label %bb.am

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit676: ; preds = %bb.ag
  %i.pp = fneg float %.sroa.30.01449
  %i.pq = fneg <2 x float> %.sroa.01118.01451
  %i.pr = lshr i64 %.sroa.0.4, 45
  %i.ps = lshr i64 %.sroa.0.4, 27
  %i.pt = xor i64 %i.pr, %i.ps
  %i.pu = trunc i64 %i.pt to i32                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE1fENS_7Vector3IfEES5_NS_13TransportModeE:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 28 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

._crit_edge:                                      ; preds = %bb.bq, %bb.e
  %.sroa.23.1.lcssa = phi <2 x float> [ %.sroa.23.0, %bb.e ], [ %.sroa.23.13, %bb.bq ]
  %.sroa.01205.1.lcssa = phi <2 x float> [ %.sroa.01205.0, %bb.e ], [ %.sroa.01205.13, %bb.bq ]
  %.lcssa1351 = phi i32 [ %i.aw, %bb.e ], [ %i.ya, %bb.bq ]
  %i.cu = sitofp i32 %.lcssa1351 to float
  %i.cv = shufflevector <2 x float> %.sroa.01205.1.lcssa, <2 x float> %.sroa.23.1.lcssa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cw = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cy = fdiv <4 x float> %i.cv, %i.cx           ; 2 uses
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i380 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cz, 0
  %.fca.1.insert.i381 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i380, <2 x float> %i.da, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i381

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph, %bb.bq
  %.01381 = phi i32 [ 0, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph ], [ %i.xz, %bb.bq ]
  %.sroa.01205.11380 = phi <2 x float> [ %.sroa.01205.0, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph ], [ %.sroa.01205.13, %bb.bq ] ; 11 uses
  %.sroa.23.11379 = phi <2 x float> [ %.sroa.23.0, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph ], [ %.sroa.23.13, %bb.bq ] ; 11 uses
  %.sroa.0.01378 = phi i64 [ %i.bq, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.lr.ph ], [ %.sroa.0.8, %bb.bq ] ; 4 uses
  %i.db = mul i64 %.sroa.0.01378, 6364136223846793005
  %i.dc = lshr i64 %.sroa.0.01378, 45
  %i.dd = lshr i64 %.sroa.0.01378, 27
  %i.de = xor i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = lshr i64 %.sroa.0.01378, 59
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = call noundef i32 @llvm.fshr.i32(i32 %i.df, i32 %i.df, i32 %i.dh)
  %i.dj = uitofp i32 %i.di to float
  %i.dk = fmul nnan float %i.dj, f0x2F800000      ; 2 uses
  %i.dl = fcmp olt float %i.dk, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.dl, float %i.dk, float f0x3F7FFFFF
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.dm = add i64 %i.db, %i.au                    ; 2 uses
  %i.dn = mul i64 %i.dm, 6364136223846793005
  %i.do = add i64 %i.dn, %i.au                    ; 2 uses
  %i.dp = mul i64 %i.do, 6364136223846793005
  %i.dq = add i64 %i.dp, %i.au                    ; 8 uses
  %i.dr = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %i.ds = insertelement <2 x i64> %i.dr, i64 %i.do, i64 1 ; 3 uses
  %i.dt = lshr <2 x i64> %i.ds, splat (i64 45)
  %i.du = lshr <2 x i64> %i.ds, splat (i64 27)
  %i.dv = xor <2 x i64> %i.dt, %i.du
  %i.dw = trunc <2 x i64> %i.dv to <2 x i32>      ; 2 uses
  %i.dx = lshr <2 x i64> %i.ds, splat (i64 59)
  %i.dy = trunc nuw nsw <2 x i64> %i.dx to <2 x i32>
  %i.dz = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dw, <2 x i32> %i.dw, <2 x i32> %i.dy)
  %i.ea = uitofp <2 x i32> %i.dz to <2 x float>
  %i.eb = fmul nnan <2 x float> %i.ea, splat (float f0x2F800000) ; 2 uses
  %i.ec = fcmp olt <2 x float> %i.eb, splat (float f0x3F7FFFFF)
  %i.ed = select <2 x i1> %i.ec, <2 x float> %i.eb, <2 x float> splat (float f0x3F7FFFFF)
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %8, ptr noundef nonnull align 4 dereferenceable(12) %0, <2 x float> %.sroa.01279.0, float %.sroa.10.0, float noundef %.sroa.speculated.i.i, <2 x float> %i.ed, i32 noundef %5, i32 noundef 2)
  %i.ee = load i8, ptr %i.br, align 4, !tbaa !55, !range !56, !noundef !57
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.f, label %bb.bq

bb.f:                                             ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  %i.eg = load <4 x float>, ptr %8, align 16
  %.fr = freeze <4 x float> %i.eg
  %i.eh = fcmp une <4 x float> %.fr, zeroinitializer
  %i.ei = bitcast <4 x i1> %i.eh to i4
  %.not1486 = icmp eq i4 %i.ei, 0
  br i1 %.not1486, label %bb.bq, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit386

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit386: ; preds = %bb.f
  %i.ej = load float, ptr %i.bt, align 4, !tbaa !62 ; 2 uses
  %i.ek = fcmp oeq float %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.bq, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit388

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit388: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit386
  %i.el = load float, ptr %i.bu, align 8, !tbaa !63 ; 3 uses
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.bq, label %bb.g

bb.g:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit388
  %i.en = mul i64 %i.dq, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.eo = add i64 %i.en, %i.au                    ; 2 uses
  %i.ep = mul i64 %i.eo, 6364136223846793005
  %i.eq = add i64 %i.ep, %i.au                    ; 2 uses
  %i.er = mul i64 %i.eq, 6364136223846793005
  %i.es = add i64 %i.er, %i.au                    ; 7 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !82, !noalias !275 ; 2 uses
  %.not.i392 = icmp eq ptr %i.et, null
  br i1 %.not.i392, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit395.thread, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit395

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit395: ; preds = %bb.g
  %i.eu = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %i.ev = insertelement <2 x i64> %i.eu, i64 %i.eq, i64 1 ; 3 uses
  %i.ew = lshr <2 x i64> %i.ev, splat (i64 45)
  %i.ex = lshr <2 x i64> %i.ev, splat (i64 27)
  %i.ey = lshr <2 x i64> %i.ev, splat (i64 59)
  %i.ez = xor <2 x i64> %i.ew, %i.ex
  %i.fa = trunc <2 x i64> %i.ez to <2 x i32>      ; 2 uses
  %i.fb = trunc nuw nsw <2 x i64> %i.ey to <2 x i32>
  %i.fc = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fa, <2 x i32> %i.fa, <2 x i32> %i.fb)
  %i.fd = uitofp <2 x i32> %i.fc to <2 x float>
  %i.fe = fmul nnan <2 x float> %i.fd, splat (float f0x2F800000) ; 2 uses
  %i.ff = fcmp olt <2 x float> %i.fe, splat (float f0x3F7FFFFF)
  %i.fg = select <2 x i1> %i.ff, <2 x float> %i.fe, <2 x float> splat (float f0x3F7FFFFF)
  %i.fh = lshr i64 %i.dq, 45
  %i.fi = lshr i64 %i.dq, 27
  %i.fj = xor i64 %i.fh, %i.fi
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %i.fl = lshr i64 %i.dq, 59
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %i.fn = call noundef i32 @llvm.fshr.i32(i32 %i.fk, i32 %i.fk, i32 %i.fm)
  %i.fo = uitofp i32 %i.fn to float
  %i.fp = fmul nnan float %i.fo, f0x2F800000      ; 2 uses
  %i.fq = fcmp olt float %i.fp, f0x3F7FFFFF
  %.sroa.speculated.i.i389 = select i1 %i.fq, float %i.fp, float f0x3F7FFFFF
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %9, ptr noundef nonnull align 4 dereferenceable(12) %i.et, <2 x float> %.sroa.01268.0, float %.sroa.14.0, float noundef %.sroa.speculated.i.i389, <2 x float> %i.fg, i32 noundef %i.bw, i32 noundef 2)
  %.pre = load i8, ptr %i.bx, align 4, !tbaa !55, !range !56
  %i.fr = trunc nuw i8 %.pre to i1
  br i1 %i.fr, label %bb.h, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit395.thread

bb.h:                                             ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit395
  %i.fs = load <2 x float>, ptr %9, align 8       ; 3 uses
  %i.ft = load <2 x float>, ptr %i.by, align 8    ; 3 uses
  %i.fu = shufflevector <2 x float> %i.fs, <2 x float> %i.ft, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1487 = freeze <4 x float> %i.fu
  %i.fv = fcmp une <4 x float> %.fr1487, zeroinitializer
  %i.fw = bitcast <4 x i1> %i.fv to i4
  %.not1488 = icmp eq i4 %i.fw, 0
  br i1 %.not1488, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit395.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit402

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit402: ; preds = %bb.h
  %i.fx = load float, ptr %i.bz, align 4, !tbaa !62 ; 4 uses
  %i.fy = fcmp oeq float %i.fx, 0.000000e+00
  br i1 %i.fy, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit395.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit404

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit404: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit402
  %i.fz = load float, ptr %i.ca, align 8, !tbaa !63 ; 5 uses
  %i.ga = fcmp oeq float %i.fz, 0.000000e+00
  br i1 %i.ga, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit395.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit404
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %8, align 16
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %i.bs, align 8, !tbaa !21
  %i.gb = load float, ptr %i.cc, align 4, !tbaa !75
  %.sroa.01025.0.copyload = load <2 x float>, ptr %i.cb, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.gc = load float, ptr %i.cd, align 4, !tbaa !76
  store float %i.gc, ptr %10, align 4, !tbaa !65
  %i.gd = load i32, ptr %i.ce, align 4, !tbaa !77
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.i
  %i.gf = call noundef float @llvm.fabs.f32(float %i.el)
  %i.gg = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gi = fmul <2 x float> %i.gh, %.sroa.6.0.copyload.i
  %i.gj = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gl = fdiv <2 x float> %i.gi, %i.gk
  %i.gm = fmul <2 x float> %i.gh, %.sroa.0.0.copyload.i
  %i.gn = fdiv <2 x float> %i.gm, %i.gk
  %i.go = load <2 x float>, ptr %i.cj, align 8
  %i.gp = fneg <2 x float> %i.go                  ; 5 uses
  %i.gq = fneg float %i.fz                        ; 5 uses
  %i.gr = fmul float %i.fx, %i.fx                 ; 5 uses
  %i.gs = call float @llvm.fabs.f32(float %i.gr)
  %i.gt = fcmp oeq float %i.gs, +inf              ; 2 uses
  %i.gu = call float @llvm.fabs.f32(float %i.fz)
  %.sroa.0142.0.copyload = load <2 x float>, ptr %i.cj, align 8
  %i.gv = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gx = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.thread1318
  %.03321371 = phi float [ %i.gb, %.lr.ph ], [ %.4336, %.thread1318 ] ; 5 uses
  %.03371370 = phi i32 [ 0, %.lr.ph ], [ %i.xw, %.thread1318 ] ; 2 uses
  %.sroa.01025.01368 = phi <2 x float> [ %.sroa.01025.0.copyload, %.lr.ph ], [ %.sroa.01025.4, %.thread1318 ] ; 7 uses
  %.sroa.30.01366 = phi float [ %i.el, %.lr.ph ], [ %.sroa.30.4, %.thread1318 ] ; 10 uses
  %.sroa.01088.01365 = phi <2 x float> [ %i.gn, %.lr.ph ], [ %.sroa.01088.5, %.thread1318 ] ; 5 uses
  %.sroa.32.01364 = phi <2 x float> [ %i.gl, %.lr.ph ], [ %.sroa.32.5, %.thread1318 ] ; 5 uses
  %.sroa.01205.21363 = phi <2 x float> [ %.sroa.01205.11380, %.lr.ph ], [ %.sroa.01205.10, %.thread1318 ] ; 7 uses
  %.sroa.23.21362 = phi <2 x float> [ %.sroa.23.11379, %.lr.ph ], [ %.sroa.23.10, %.thread1318 ] ; 7 uses
  %.sroa.0.11361 = phi i64 [ %i.es, %.lr.ph ], [ %.sroa.0.5, %.thread1318 ] ; 6 uses
  %i.gz = icmp samesign ugt i32 %.03371370, 3
  br i1 %i.gz, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.sroa.01088.0.vec.extract = extractelement <2 x float> %.sroa.01088.01365, i64 0 ; 2 uses
  %.sroa.01088.4.vec.extract = extractelement <2 x float> %.sroa.01088.01365, i64 1 ; 2 uses
  %i.ha = fcmp olt float %.sroa.01088.0.vec.extract, %.sroa.01088.4.vec.extract
  %.sroa.speculated.i = select i1 %i.ha, float %.sroa.01088.4.vec.extract, float %.sroa.01088.0.vec.extract ; 2 uses
  %.sroa.32.8.vec.extract = extractelement <2 x float> %.sroa.32.01364, i64 0 ; 2 uses
  %i.hb = fcmp olt float %.sroa.speculated.i, %.sroa.32.8.vec.extract
  %.sroa.speculated.1.i = select i1 %i.hb, float %.sroa.32.8.vec.extract, float %.sroa.speculated.i ; 2 uses
  %.sroa.32.12.vec.extract = extractelement <2 x float> %.sroa.32.01364, i64 1 ; 2 uses
  %i.hc = fcmp olt float %.sroa.speculated.1.i, %.sroa.32.12.vec.extract
  %.sroa.speculated.2.i = select i1 %i.hc, float %.sroa.32.12.vec.extract, float %.sroa.speculated.1.i ; 2 uses
  %i.hd = fcmp olt float %.sroa.speculated.2.i, 2.500000e-01
  br i1 %i.hd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.he = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.hf = fcmp ogt float %i.he, 0.000000e+00
  %.sroa.speculated = select i1 %i.hf, float %i.he, float 0.000000e+00 ; 2 uses
  %i.hg = mul i64 %.sroa.0.11361, 6364136223846793005
  %i.hh = add i64 %i.hg, %i.au                    ; 2 uses
  %i.hi = lshr i64 %.sroa.0.11361, 45
  %i.hj = lshr i64 %.sroa.0.11361, 27
  %i.hk = xor i64 %i.hi, %i.hj
  %i.hl = trunc i64 %i.hk to i32                  ; 2 uses
  %i.hm = lshr i64 %.sroa.0.11361, 59
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = call noundef i32 @llvm.fshr.i32(i32 %i.hl, i32 %i.hl, i32 %i.hn)
  %i.hp = uitofp i32 %i.ho to float
  %i.hq = fmul nnan float %i.hp, f0x2F800000      ; 2 uses
  %i.hr = fcmp olt float %i.hq, f0x3F7FFFFF
  %.sroa.speculated.i.i435 = select i1 %i.hr, float %i.hq, float f0x3F7FFFFF
  %i.hs = fcmp uge float %.sroa.speculated.i.i435, %.sroa.speculated
  br i1 %i.hs, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ht = fsub float 1.000000e+00, %.sroa.speculated
  %i.hu = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hw = fdiv <2 x float> %.sroa.01088.01365, %i.hv
  %i.hx = fdiv <2 x float> %.sroa.32.01364, %i.hv
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.hh, %bb.m ], [ %.sroa.0.11361, %bb.k ], [ %.sroa.0.11361, %bb.j ] ; 5 uses
  %.sroa.32.1 = phi <2 x float> [ %i.hx, %bb.m ], [ %.sroa.32.01364, %bb.k ], [ %.sroa.32.01364, %bb.j ] ; 6 uses
  %.sroa.01088.1 = phi <2 x float> [ %i.hw, %bb.m ], [ %.sroa.01088.01365, %bb.k ], [ %.sroa.01088.01365, %bb.j ] ; 6 uses
  %i.hy = load <4 x float>, ptr %i.cf, align 4
  %.fr1489 = freeze <4 x float> %i.hy
  %i.hz = fcmp une <4 x float> %.fr1489, zeroinitializer
  %i.ia = bitcast <4 x i1> %i.hz to i4
  %.not1490 = icmp eq i4 %i.ia, 0
  br i1 %.not1490, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ib = load float, ptr %i.cc, align 4, !tbaa !75 ; 4 uses
  %i.ic = fcmp oeq float %.03321371, %i.ib
  %spec.select = select i1 %i.ic, float 0.000000e+00, float %i.ib
  %i.id = call noundef float @llvm.fabs.f32(float %i.ib)
  %i.ie = fcmp ugt float %i.id, f0x00800000
  br i1 %i.ie, label %bb.p, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit

bb.p:                                             ; preds = %bb.o
  %i.if = fdiv float %i.ib, %.sroa.30.01366
  %i.ig = call noundef float @llvm.fabs.f32(float %i.if)
  %i.ih = fmul float %i.ig, f0xBFB8AA3B           ; 2 uses
  %i.ii = call noundef float @llvm.floor.f32(float %i.ih) ; 2 uses
  %i.ij = fsub float %i.ih, %i.ii                 ; 3 uses
  %i.ik = fptosi float %i.ii to i32
  %i.il = call noundef float @llvm.fma.f32(float %i.ij, float f0x3DA00AC9, float f0x3E679A0B)
  %i.im = call noundef float @llvm.fma.f32(float %i.ij, float %i.il, float f0x3F321004)
  %i.in = call noundef float @llvm.fma.f32(float %i.ij, float %i.im, float 1.000000e+00)
  %i.io = bitcast float %i.in to i32              ; 2 uses
  %i.ip = lshr i32 %i.io, 23
  %i.iq = add i32 %i.ik, -127
  %i.ir = add i32 %i.iq, %i.ip                    ; 3 uses
  %i.is = icmp slt i32 %i.ir, -126
  br i1 %i.is, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.it = icmp sgt i32 %i.ir, 127
  br i1 %i.it, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.iu = and i32 %i.io, -2139095041
  %i.iv = shl nsw i32 %i.ir, 23
  %i.iw = add nsw i32 %i.iv, 1065353216
  %i.ix = or i32 %i.iw, %i.iu
  %i.iy = bitcast i32 %i.ix to float
  br label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit

_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i = phi float [ 1.000000e+00, %bb.o ], [ %i.iy, %bb.r ], [ 0.000000e+00, %bb.p ], [ +inf, %bb.q ]
  %i.iz = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jb = fmul <2 x float> %.sroa.01088.1, %i.ja
  %i.jc = fmul <2 x float> %.sroa.32.1, %i.ja
  br label %bb.ad

bb.s:                                             ; preds = %bb.n
  %i.jd = mul i64 %.sroa.0.2, 6364136223846793005
  %i.je = add i64 %i.jd, %i.au                    ; 4 uses
  %i.jf = lshr i64 %.sroa.0.2, 45
  %i.jg = lshr i64 %.sroa.0.2, 27
  %i.jh = xor i64 %i.jf, %i.jg
  %i.ji = trunc i64 %i.jh to i32                  ; 2 uses
  %i.jj = lshr i64 %.sroa.0.2, 59
  %i.jk = trunc nuw nsw i64 %i.jj to i32
  %i.jl = call noundef i32 @llvm.fshr.i32(i32 %i.ji, i32 %i.ji, i32 %i.jk)
  %i.jm = uitofp i32 %i.jl to float
  %i.jn = fmul nnan float %i.jm, f0x2F800000      ; 2 uses
  %i.jo = fcmp olt float %i.jn, f0x3F7FFFFF
  %.sroa.speculated.i.i439 = select i1 %i.jo, float %i.jn, float f0x3F7FFFFF
  %i.jp = call noundef float @llvm.fabs.f32(float %.sroa.30.01366)
  %i.jq = fdiv float 1.000000e+00, %i.jp
  %i.jr = fsub float 1.000000e+00, %.sroa.speculated.i.i439
  %i.js = call noundef float @logf(float noundef %i.jr) #31
  %i.jt = fneg float %i.js
  %i.ju = fdiv float %i.jt, %i.jq                 ; 2 uses
  %i.jv = fcmp ogt float %.sroa.30.01366, 0.000000e+00
  %i.jw = fneg float %i.ju
  %.p = select i1 %i.jv, float %i.ju, float %i.jw
  %i.jx = fadd float %.03321371, %.p              ; 13 uses
  %i.jy = fcmp oeq float %.03321371, %i.jx
  br i1 %i.jy, label %.thread1318, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jz = fcmp ogt float %i.jx, 0.000000e+00
  %.pre1403 = load float, ptr %i.cc, align 4, !tbaa !75 ; 3 uses
  %i.ka = fcmp olt float %i.jx, %.pre1403
  %or.cond1469 = select i1 %i.jz, i1 %i.ka, i1 false
  br i1 %or.cond1469, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.kb = call noundef i32 @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE5FlagsEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.kc = and i32 %i.kb, 16
  %.not1332 = icmp eq i32 %i.kc, 0
  br i1 %.not1332, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %13 = fneg <2 x float> %.sroa.01025.01368
  %14 = fneg float %.sroa.30.01366
  %i.kd = call noundef float @_ZNK4pbrt15HGPhaseFunction3PDFENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(4) %10, <2 x float> %13, float %14, <2 x float> %i.gp, float %i.gq) ; 2 uses
  br i1 %i.gt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ke = fmul float %i.kd, %i.kd
  %i.kf = fadd float %i.gr, %i.ke
  %i.kg = fdiv float %i.gr, %i.kf
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %.0338 = phi float [ 1.000000e+00, %bb.u ], [ %i.kg, %bb.w ], [ 1.000000e+00, %bb.v ]
  %15 = fneg <2 x float> %.sroa.01025.01368       ; 2 uses
  %16 = fneg float %.sroa.30.01366                ; 2 uses
  %i.kh = fsub float %i.jx, %i.z                  ; 2 uses
  %i.ki = load <2 x float>, ptr %i.cg, align 4, !tbaa !20
  %i.kj = fmul <2 x float> %.sroa.32.1, %i.ki
  %i.kk = insertelement <2 x float> poison, float %.0338, i64 0
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.km = load <2 x float>, ptr %i.cf, align 4, !tbaa !20
  %i.kn = fmul <2 x float> %.sroa.01088.1, %i.km
  %i.ko = call noundef float @_ZNK4pbrt15HGPhaseFunction1pENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(4) %10, <2 x float> %15, float %16, <2 x float> %i.gp, float %i.gq)
  %i.kp = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kr = fmul <2 x float> %i.kn, %i.kq
  %i.ks = fmul <2 x float> %i.kj, %i.kq
  %i.kt = fmul <2 x float> %i.kl, %i.kr
  %i.ku = fmul <2 x float> %i.kl, %i.ks
  %i.kv = call noundef float @_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE(float noundef %i.kh, <2 x float> %.sroa.0142.0.copyload, float %i.fz)
  %i.kw = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ky = fmul <2 x float> %i.kx, %i.kt
  %i.kz = fmul <2 x float> %i.kx, %i.ku
  %i.la = fmul <2 x float> %i.fs, %i.ky
  %i.lb = fmul <2 x float> %i.ft, %i.kz
  %i.lc = fdiv <2 x float> %i.la, %i.gw
  %i.ld = fdiv <2 x float> %i.lb, %i.gw
  %i.le = fadd <2 x float> %.sroa.01205.21363, %i.lc ; 5 uses
  %i.lf = fadd <2 x float> %.sroa.23.21362, %i.ld ; 5 uses
  %i.lg = mul i64 %i.je, 6364136223846793005
  %i.lh = add i64 %i.lg, %i.au                    ; 2 uses
  %i.li = mul i64 %i.lh, 6364136223846793005
  %i.lj = add i64 %i.li, %i.au                    ; 5 uses
  %i.lk = insertelement <2 x i64> poison, i64 %i.je, i64 0
  %i.ll = insertelement <2 x i64> %i.lk, i64 %i.lh, i64 1 ; 3 uses
  %i.lm = lshr <2 x i64> %i.ll, splat (i64 45)
  %i.ln = lshr <2 x i64> %i.ll, splat (i64 27)
  %i.lo = xor <2 x i64> %i.lm, %i.ln
  %i.lp = trunc <2 x i64> %i.lo to <2 x i32>      ; 2 uses
  %i.lq = lshr <2 x i64> %i.ll, splat (i64 59)
  %i.lr = trunc nuw nsw <2 x i64> %i.lq to <2 x i32>
  %i.ls = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.lp, <2 x i32> %i.lp, <2 x i32> %i.lr)
  %i.lt = uitofp <2 x i32> %i.ls to <2 x float>
  %i.lu = fmul nnan <2 x float> %i.lt, splat (float f0x2F800000) ; 2 uses
  %i.lv = fcmp olt <2 x float> %i.lu, splat (float f0x3F7FFFFF)
  %i.lw = select <2 x i1> %i.lv, <2 x float> %i.lu, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !276
  %i.lx = load float, ptr %10, align 4, !tbaa !65, !noalias !276
  %i.ly = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> %15, float %16, float noundef %i.lx, <2 x float> %i.lw, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.ly, 0 ; 6 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.ly, 1 ; 9 uses
  %i.lz = load float, ptr %i.a, align 4, !tbaa !20, !noalias !276 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !276
  %i.ma = fcmp oeq float %i.lz, 0.000000e+00
  %i.mb = fcmp oeq float %.fca.1.extract.i, 0.000000e+00
  %or.cond1328 = select i1 %i.ma, i1 true, i1 %i.mb
  br i1 %or.cond1328, label %.thread1318, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.copyload.i560 = load <2 x float>, ptr %i.cf, align 4
  %.sroa.6.0.copyload.i562 = load <2 x float>, ptr %i.cg, align 4, !tbaa !21
  %i.mc = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.me = fmul <2 x float> %i.md, %.sroa.0.0.copyload.i560
  %i.mf = fdiv <2 x float> %i.me, %i.md
  %i.mg = fmul <2 x float> %.sroa.01088.1, %i.mf  ; 5 uses
  %i.mh = fmul <2 x float> %i.md, %.sroa.6.0.copyload.i562
  %i.mi = fdiv <2 x float> %i.mh, %i.md
  %i.mj = fmul <2 x float> %.sroa.32.1, %i.mi     ; 5 uses
  %i.mk = fcmp olt float %i.jx, %i.z
  %i.ml = fcmp ogt float %.fca.1.extract.i, 0.000000e+00
  %or.cond = select i1 %i.mk, i1 %i.ml, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mm = fcmp ogt float %i.jx, %i.z
  %i.mn = fcmp olt float %.fca.1.extract.i, 0.000000e+00
  %or.cond7 = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %or.cond7, label %bb.aa, label %.thread1318

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.mo = call noundef i32 @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE5FlagsEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.mp = and i32 %i.mo, 16
  %.not1333 = icmp eq i32 %i.mp, 0
  br i1 %.not1333, label %bb.ab, label %.thread1318

bb.ab:                                            ; preds = %bb.aa
  %i.mq = fneg <2 x float> %.fca.0.extract.i      ; 2 uses
  %i.mr = fneg float %.fca.1.extract.i            ; 2 uses
  %i.ms = call { <2 x float>, <2 x float> } @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE1fENS_7Vector3IfEES5_NS_13TransportModeE(ptr noundef nonnull align 8 dereferenceable(16) %6, <2 x float> %i.mq, float %i.mr, <2 x float> %.sroa.01268.0, float %.sroa.14.0, i32 noundef %5) ; 2 uses
  %i.mt = extractvalue { <2 x float>, <2 x float> } %i.ms, 0 ; 2 uses
  %i.mu = extractvalue { <2 x float>, <2 x float> } %i.ms, 1 ; 2 uses
  %i.mv = shufflevector <2 x float> %i.mt, <2 x float> %i.mu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1497.a = freeze <4 x float> %i.mv
  %i.mw = fcmp une <4 x float> %.fr1497.a, zeroinitializer
  %i.mx = bitcast <4 x i1> %i.mw to i4
  %.not1498.a = icmp eq i4 %i.mx, 0
  br i1 %.not1498.a, label %.thread1318, label %_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit602

_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit602: ; preds = %bb.ab
  %i.my = call noundef float @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(16) %6, <2 x float> %i.mq, float %i.mr, <2 x float> %.sroa.01268.0, float %.sroa.14.0, i32 noundef %5, i32 noundef 2) ; 2 uses
  %i.mz = fmul float %i.lz, %i.lz                 ; 3 uses
  %i.na = call float @llvm.fabs.f32(float %i.mz)
  %i.nb = fcmp oeq float %i.na, +inf
  %i.nc = fmul float %i.my, %i.my
  %i.nd = fadd float %i.mz, %i.nc
  %i.ne = fdiv float %i.mz, %i.nd
  %.0.i603 = select i1 %i.nb, float 1.000000e+00, float %i.ne
  %i.nf = call noundef float @_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE(float noundef %i.kh, <2 x float> %.fca.0.extract.i, float %.fca.1.extract.i)
  %i.ng = insertelement <2 x float> poison, float %i.nf, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ni = fmul <2 x float> %i.mg, %i.nh
  %i.nj = fmul <2 x float> %i.mt, %i.ni
  %i.nk = insertelement <2 x float> poison, float %.0.i603, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nm = fmul <2 x float> %i.nj, %i.nl
  %i.nn = fadd <2 x float> %i.le, %i.nm
  %i.no = fmul <2 x float> %i.mj, %i.nh
  %i.np = fmul <2 x float> %i.mu, %i.no
  %i.nq = fmul <2 x float> %i.np, %i.nl
  %i.nr = fadd <2 x float> %i.lf, %i.nq
  br label %.thread1318

bb.ac:                                            ; preds = %bb.t
  %i.ns = fcmp olt float %i.jx, 0.000000e+00
  %i.nt = fcmp ogt float %i.jx, %.pre1403
  %..i646 = select i1 %i.nt, float %.pre1403, float %i.jx
  %.0.i647 = select i1 %i.ns, float 0.000000e+00, float %..i646
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit
  %.sroa.0.4 = phi i64 [ %i.je, %bb.ac ], [ %.sroa.0.2, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 8 uses
  %.sroa.32.4 = phi <2 x float> [ %.sroa.32.1, %bb.ac ], [ %i.jc, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 3 uses
  %.sroa.01088.4 = phi <2 x float> [ %.sroa.01088.1, %bb.ac ], [ %i.jb, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 3 uses
  %.3335 = phi float [ %.0.i647, %bb.ac ], [ %spec.select, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 3 uses
  %i.nu = fcmp oeq float %.3335, %i.z
  br i1 %i.nu, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.nv = mul i64 %.sroa.0.4, 6364136223846793005
  %i.nw = lshr i64 %.sroa.0.4, 45
  %i.nx = lshr i64 %.sroa.0.4, 27
  %i.ny = xor i64 %i.nw, %i.nx
  %i.nz = trunc i64 %i.ny to i32                  ; 2 uses
  %i.oa = lshr i64 %.sroa.0.4, 59
  %i.ob = trunc nuw nsw i64 %i.oa to i32
  %i.oc = call noundef i32 @llvm.fshr.i32(i32 %i.nz, i32 %i.nz, i32 %i.ob)
  %i.od = uitofp i32 %i.oc to float
  %i.oe = fmul nnan float %i.od, f0x2F800000      ; 2 uses
  %i.of = fcmp olt float %i.oe, f0x3F7FFFFF
  %.sroa.speculated.i.i648 = select i1 %i.of, float %i.oe, float f0x3F7FFFFF ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.og = fneg <2 x float> %.sroa.01025.01368     ; 2 uses
  %i.oh = fneg float %.sroa.30.01366              ; 2 uses
  %i.oi = add i64 %i.nv, %i.au                    ; 2 uses
  %i.oj = mul i64 %i.oi, 6364136223846793005
  %i.ok = add i64 %i.oj, %i.au                    ; 2 uses
  %i.ol = mul i64 %i.ok, 6364136223846793005
  %i.om = add i64 %i.ol, %i.au                    ; 2 uses
  %i.on = insertelement <2 x i64> poison, i64 %i.oi, i64 0
  %i.oo = insertelement <2 x i64> %i.on, i64 %i.ok, i64 1 ; 3 uses
  %i.op = lshr <2 x i64> %i.oo, splat (i64 45)
  %i.oq = lshr <2 x i64> %i.oo, splat (i64 27)
  %i.or = xor <2 x i64> %i.op, %i.oq
  %i.os = trunc <2 x i64> %i.or to <2 x i32>      ; 2 uses
  %i.ot = lshr <2 x i64> %i.oo, splat (i64 59)
  %i.ou = trunc nuw nsw <2 x i64> %i.ot to <2 x i32>
  %i.ov = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.os, <2 x i32> %i.os, <2 x i32> %i.ou)
  %i.ow = uitofp <2 x i32> %i.ov to <2 x float>
  %i.ox = fmul nnan <2 x float> %i.ow, splat (float f0x2F800000) ; 2 uses
  %i.oy = fcmp olt <2 x float> %i.ox, splat (float f0x3F7FFFFF)
  %i.oz = select <2 x i1> %i.oy, <2 x float> %i.ox, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.pa = load ptr, ptr %6, align 8, !tbaa !82, !noalias !277 ; 2 uses
  %.not.i655 = icmp eq ptr %i.pa, null
  br i1 %.not.i655, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %11, ptr noundef nonnull align 4 dereferenceable(12) %i.pa, <2 x float> %i.og, float %i.oh, float noundef %.sroa.speculated.i.i648, <2 x float> %i.oz, i32 noundef %5, i32 noundef 1)
  br label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit658

bb.ag:                                            ; preds = %bb.ae
  %i.pb = load ptr, ptr %i.ci, align 8, !tbaa !81, !noalias !277
  call void @_ZNK4pbrt13ConductorBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %11, ptr noundef nonnull align 4 dereferenceable(40) %i.pb, <2 x float> %i.og, float %i.oh, float noundef %.sroa.speculated.i.i648, <2 x float> %i.oz, i32 noundef %5, i32 noundef 1)
  br label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit658

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit658: ; preds = %bb.ag, %bb.af
  %i.pc = load i8, ptr %i.cp, align 4, !tbaa !55, !range !56, !noundef !57
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit658
  %i.pe = load <4 x float>, ptr %11, align 16
  %.fr1495.a = freeze <4 x float> %i.pe
  %i.pf = fcmp une <4 x float> %.fr1495.a, zeroinitializer
  %i.pg = bitcast <4 x i1> %i.pf to i4
  %.not1496.a = icmp eq i4 %i.pg, 0
  br i1 %.not1496.a, label %bb.ai, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit665

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit665: ; preds = %bb.ah
  %i.ph = load float, ptr %i.cr, align 4, !tbaa !62 ; 2 uses
  %i.pi = fcmp oeq float %i.ph, 0.000000e+00
  br i1 %i.pi, label %bb.ai, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit667

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit667: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit665
  %i.pj = load float, ptr %i.cs, align 8, !tbaa !63 ; 3 uses
  %i.pk = fcmp oeq float %i.pj, 0.000000e+00
  br i1 %i.pk, label %bb.ai, label %.critedge371

.critedge371:                                     ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit667
  %i.pl = call noundef float @llvm.fabs.f32(float %i.pj)
  %.sroa.0.0.copyload.i672 = load <2 x float>, ptr %11, align 16
  %.sroa.6.0.copyload.i674 = load <2 x float>, ptr %i.cq, align 8, !tbaa !21
  %i.pm = insertelement <2 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.po = fmul <2 x float> %i.pn, %.sroa.0.0.copyload.i672
  %i.pp = insertelement <2 x float> poison, float %i.ph, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pr = fdiv <2 x float> %i.po, %i.pq
  %i.ps = fmul <2 x float> %.sroa.01088.4, %i.pr
  %i.pt = fmul <2 x float> %i.pn, %.sroa.6.0.copyload.i674
  %i.pu = fdiv <2 x float> %i.pt, %i.pq
  %i.pv = fmul <2 x float> %.sroa.32.4, %i.pu
  %.sroa.01025.0.copyload1047 = load <2 x float>, ptr %i.ct, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.thread1318

bb.ai:                                            ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit658, %bb.ah, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit665, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit667
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.critedge

bb.aj:                                            ; preds = %bb.ad
  %i.pw = load ptr, ptr %7, align 8, !tbaa !82    ; 5 uses
  %.not.i702 = icmp eq ptr %i.pw, null
  br i1 %.not.i702, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.px = load float, ptr %i.pw, align 4, !tbaa !67
  %i.py = fcmp oeq float %i.px, 1.000000e+00
  %spec.select.i.i = select i1 %i.py, i32 2, i32 3
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.qb = load float, ptr %i.pz, align 4, !tbaa !20 ; 2 uses
  %i.qc = load float, ptr %i.qa, align 4, !tbaa !20 ; 2 uses
  %i.qd = fcmp olt float %i.qb, %i.qc
  %i.qe = select i1 %i.qd, float %i.qc, float %i.qb
  %i.qf = fcmp olt float %i.qe, 1.000000e-03
  %i.qg = select i1 %i.qf, i32 16, i32 8
  %i.qh = or disjoint i32 %i.qg, %spec.select.i.i
  br label %bb.am
end_hunk_1
