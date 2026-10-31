Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_exr?download=true
inline.NumInlined: 317
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dt_imageio_open_exr:bb.a
bb.bw:                                            ; preds = %bb.bv, %bb.bt, %.thread, %bb.ai, %bb.ac
  %i.ee = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_16Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.y)
          to label %bb.bx unwind label %bb.ca     ; 3 uses

bb.bx:                                            ; preds = %bb.bw
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 5 uses
  %i.ei = load <2 x i32>, ptr %i.ee, align 4, !tbaa !33 ; 3 uses
  %i.ej = load i32, ptr %i.eg, align 4, !tbaa !188
  %i.ek = load <2 x i32>, ptr %i.ef, align 4, !tbaa !33
  %i.el = sub <2 x i32> %i.ek, %i.ei
  %i.em = add <2 x i32> %i.el, splat (i32 1)
  store <2 x i32> %i.em, ptr %i.eh, align 4, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store i32 4, ptr %i.en, align 16, !tbaa !189
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store i32 1, ptr %i.eo, align 4, !tbaa !190
  %i.ep = invoke ptr @dt_mipmap_cache_alloc(ptr noundef %2, ptr noundef nonnull %0)
          to label %bb.by unwind label %bb.ca     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %.not162 = icmp eq ptr %i.ep, null
  br i1 %.not162, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1124
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.eq)
          to label %bb.ei unwind label %bb.ca

bb.ca:                                            ; preds = %bb.as, %bb.at, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %_ZNK7Imf_3_16Header18findTypedAttributeINS_14TypedAttributeINS_4BlobEEEEEPKT_PKc.exit.thread, %.thread, %bb.ab, %bb.bw, %bb.o, %bb.p, %bb.a, %bb.n, %bb.ct, %bb.cs, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.bz, %bb.bx
  %.sroa.0217.1 = phi ptr [ %.sroa.0217.0, %bb.bz ], [ %.sroa.0217.0, %bb.cn ], [ %.sroa.0217.0, %bb.cm ], [ %.sroa.0217.0, %bb.cl ], [ %.sroa.0217.0, %bb.ck ], [ %.sroa.0217.0, %bb.ct ], [ %.sroa.0217.0, %bb.cs ], [ %.sroa.0217.0, %bb.bx ], [ %.sroa.0217.0, %bb.bw ], [ %.sroa.0217.0, %bb.bu ], [ %.sroa.0217.0, %bb.bs ], [ %.sroa.0217.0, %bb.bq ], [ %.sroa.0217.0, %bb.bo ], [ %.sroa.0217.0, %bb.bm ], [ %.sroa.0217.0, %bb.bk ], [ %.sroa.0217.0, %bb.bi ], [ %.sroa.0217.0, %bb.bg ], [ %.sroa.0217.0, %bb.be ], [ %.sroa.0217.0, %bb.bc ], [ %.sroa.0217.0, %bb.ba ], [ %.sroa.0217.0, %bb.az ], [ %.sroa.0217.0, %bb.ax ], [ %.sroa.0217.0, %bb.av ], [ %.sroa.0217.0, %bb.at ], [ %.sroa.0217.0, %bb.as ], [ %.sroa.0217.0, %bb.aq ], [ %.sroa.0217.0, %bb.ap ], [ %.sroa.0217.0, %bb.ao ], [ %.sroa.0217.0, %bb.am ], [ %.sroa.0217.0, %bb.al ], [ %.sroa.0217.0, %bb.ak ], [ %.sroa.0217.0, %_ZNK7Imf_3_16Header18findTypedAttributeINS_14TypedAttributeINS_4BlobEEEEEPKT_PKc.exit.thread ], [ %.sroa.0217.0, %.thread ], [ %.sroa.0217.0, %bb.ab ], [ %.sroa.0217.0, %bb.o ], [ %.sroa.0217.0, %bb.p ], [ null, %bb.n ], [ null, %bb.a ]
  %.sroa.0223.1 = phi ptr [ %.sroa.0223.0, %bb.bz ], [ %.sroa.0223.0, %bb.cn ], [ %.sroa.0223.0, %bb.cm ], [ %.sroa.0223.0, %bb.cl ], [ %.sroa.0223.0, %bb.ck ], [ %.sroa.0223.0, %bb.ct ], [ %.sroa.0223.0, %bb.cs ], [ %.sroa.0223.0, %bb.bx ], [ %.sroa.0223.0, %bb.bw ], [ %.sroa.0223.0, %bb.bu ], [ %.sroa.0223.0, %bb.bs ], [ %.sroa.0223.0, %bb.bq ], [ %.sroa.0223.0, %bb.bo ], [ %.sroa.0223.0, %bb.bm ], [ %.sroa.0223.0, %bb.bk ], [ %.sroa.0223.0, %bb.bi ], [ %.sroa.0223.0, %bb.bg ], [ %.sroa.0223.0, %bb.be ], [ %.sroa.0223.0, %bb.bc ], [ %.sroa.0223.0, %bb.ba ], [ %.sroa.0223.0, %bb.az ], [ %.sroa.0223.0, %bb.ax ], [ %.sroa.0223.0, %bb.av ], [ %.sroa.0223.0, %bb.at ], [ %.sroa.0223.0, %bb.as ], [ %.sroa.0223.0, %bb.aq ], [ %.sroa.0223.0, %bb.ap ], [ %.sroa.0223.0, %bb.ao ], [ %.sroa.0223.0, %bb.am ], [ %.sroa.0223.0, %bb.al ], [ %.sroa.0223.0, %bb.ak ], [ %.sroa.0223.0, %_ZNK7Imf_3_16Header18findTypedAttributeINS_14TypedAttributeINS_4BlobEEEEEPKT_PKc.exit.thread ], [ %.sroa.0223.0, %.thread ], [ %.sroa.0223.0, %bb.ab ], [ %.sroa.0223.0, %bb.o ], [ %.sroa.0223.0, %bb.p ], [ null, %bb.n ], [ null, %bb.a ]
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.by
  %i.es = load i32, ptr %i.eh, align 4, !tbaa !191 ; 2 uses
  %i.et = shl i32 %i.es, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.eu = extractelement <2 x i32> %i.ei, i64 0
  %i.ev = shl nsw i32 %i.eu, 2
  %i.ew = sext i32 %i.ev to i64
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.ex ; 4 uses
  %i.ez = extractelement <2 x i32> %i.ei, i64 1   ; 2 uses
  %i.fa = shl i32 %i.ez, 2                        ; 4 uses
  %i.fb = mul i32 %i.fa, %i.es
  %i.fc = sext i32 %i.fb to i64
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = zext i32 %i.et to i64                   ; 4 uses
  invoke void @_ZN7Imf_3_15SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %6, i32 noundef 2, ptr noundef nonnull %i.fe, i64 noundef 16, i64 noundef %i.ff, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.cc unwind label %bb.co

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN7Imf_3_111FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(50) %6)
          to label %bb.cd unwind label %bb.co

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.fg = load i32, ptr %i.eh, align 4, !tbaa !191
  %i.fh = mul i32 %i.fa, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  invoke void @_ZN7Imf_3_15SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %7, i32 noundef 2, ptr noundef nonnull %i.fl, i64 noundef 16, i64 noundef %i.ff, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.ce unwind label %bb.cp

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN7Imf_3_111FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(50) %7)
          to label %bb.cf unwind label %bb.cp

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.fm = load i32, ptr %i.eh, align 4, !tbaa !191
  %i.fn = mul i32 %i.fa, %i.fm
  %i.fo = sext i32 %i.fn to i64
  %i.fp = sub nsw i64 0, %i.fo
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  invoke void @_ZN7Imf_3_15SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %8, i32 noundef 2, ptr noundef nonnull %i.fr, i64 noundef 16, i64 noundef %i.ff, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.cg unwind label %bb.cq

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN7Imf_3_111FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %bb.ch unwind label %bb.cq

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.fs = load i32, ptr %i.eh, align 4, !tbaa !191
  %i.ft = mul i32 %i.fa, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  invoke void @_ZN7Imf_3_15SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %9, i32 noundef 2, ptr noundef nonnull %i.fx, i64 noundef 16, i64 noundef %i.ff, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.ci unwind label %bb.cr

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN7Imf_3_111FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(50) %9)
          to label %bb.cj unwind label %bb.cr

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.fy = load i8, ptr %i.b, align 1, !tbaa !138, !range !143, !noundef !87
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.ck, label %bb.cs

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN7Imf_3_114TiledInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0223.0, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.cl unwind label %bb.ca

bb.cl:                                            ; preds = %bb.ck
  %i.ga = invoke noundef i32 @_ZNK7Imf_3_114TiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0223.0, i32 noundef 0)
          to label %bb.cm unwind label %bb.ca

bb.cm:                                            ; preds = %bb.cl
  %i.gb = invoke noundef i32 @_ZNK7Imf_3_114TiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0223.0, i32 noundef 0)
          to label %bb.cn unwind label %bb.ca

bb.cn:                                            ; preds = %bb.cm
  %i.gc = add nsw i32 %i.ga, -1
  %i.gd = add nsw i32 %i.gb, -1
  invoke void @_ZN7Imf_3_114TiledInputFile9readTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0223.0, i32 noundef 0, i32 noundef %i.gc, i32 noundef 0, i32 noundef %i.gd, i32 noundef 0)
          to label %bb.cu unwind label %bb.ca

bb.co:                                            ; preds = %bb.cc, %bb.cb
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.loopexit.split-lp

bb.cp:                                            ; preds = %bb.ce, %bb.cd
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cg, %bb.cf
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.loopexit.split-lp

bb.cr:                                            ; preds = %bb.ci, %bb.ch
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.loopexit.split-lp

bb.cs:                                            ; preds = %bb.cj
  invoke void @_ZN7Imf_3_19InputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0217.0, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.ct unwind label %bb.ca

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN7Imf_3_19InputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0217.0, i32 noundef %i.ez, i32 noundef %i.ej)
          to label %bb.cu unwind label %bb.ca

bb.cu:                                            ; preds = %bb.ct, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store <2 x float> <float 6.400000e-01, float 3.300000e-01>, ptr %11, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store <2 x float> <float 3.000000e-01, float 6.000000e-01>, ptr %12, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %13, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store <2 x float> <float 3.127000e-01, float 3.290000e-01>, ptr %14, align 8, !tbaa !179
  invoke void @_ZN7Imf_3_114ChromaticitiesC1ERKN9Imath_3_14Vec2IfEES5_S5_S5_(ptr noundef nonnull align 4 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14)
          to label %bb.cv unwind label %bb.dk

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.gi = invoke noundef zeroext i1 @_ZN7Imf_3_117hasChromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.y)
          to label %bb.cw unwind label %bb.dl

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.gi, label %bb.cx, label %bb.eb

bb.cx:                                            ; preds = %bb.cw
  %i.gj = invoke noundef nonnull align 4 dereferenceable(32) ptr @_ZN7Imf_3_114chromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.y)
          to label %bb.cy unwind label %bb.dl

bb.cy:                                            ; preds = %bb.cx
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.gn = load <8 x float>, ptr %i.gj, align 4, !tbaa !179 ; 2 uses
  store <8 x float> %i.gn, ptr %10, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.go = shufflevector <8 x float> %i.gn, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gp = fpext <2 x float> %i.go to <2 x double>
  store <2 x double> %i.gp, ptr %15, align 16, !tbaa !192
  %i.gq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double 1.000000e+00, ptr %i.gq, align 16, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @cmsxyY2XYZ(ptr noundef nonnull %16, ptr noundef nonnull %15)
          to label %bb.cz unwind label %bb.dm

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.gr = load <2 x float>, ptr %i.gk, align 8, !tbaa !179
  %i.gs = fpext <2 x float> %i.gr to <2 x double>
  store <2 x double> %i.gs, ptr %17, align 16, !tbaa !192
  %i.gt = getelementptr inbounds nuw i8, ptr %17, i64 16
  store double 1.000000e+00, ptr %i.gt, align 16, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  invoke void @cmsxyY2XYZ(ptr noundef nonnull %18, ptr noundef nonnull %17)
          to label %bb.da unwind label %bb.dn

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.gu = load <2 x float>, ptr %i.gl, align 8, !tbaa !179
  %i.gv = fpext <2 x float> %i.gu to <2 x double>
  store <2 x double> %i.gv, ptr %19, align 16, !tbaa !192
  %i.gw = getelementptr inbounds nuw i8, ptr %19, i64 16
  store double 1.000000e+00, ptr %i.gw, align 16, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @cmsxyY2XYZ(ptr noundef nonnull %20, ptr noundef nonnull %19)
          to label %bb.db unwind label %bb.do

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.gx = load <2 x float>, ptr %i.gm, align 8, !tbaa !179
  %i.gy = fpext <2 x float> %i.gx to <2 x double>
  store <2 x double> %i.gy, ptr %21, align 16, !tbaa !192
  %i.gz = getelementptr inbounds nuw i8, ptr %21, i64 16
  store double 1.000000e+00, ptr %i.gz, align 16, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  invoke void @cmsxyY2XYZ(ptr noundef nonnull %22, ptr noundef nonnull %21)
          to label %bb.dc unwind label %bb.dp

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) @__const.dt_imageio_open_exr.d65_xy, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  invoke void @cmsxyY2XYZ(ptr noundef nonnull %24, ptr noundef nonnull %23)
          to label %bb.dd unwind label %bb.dq

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.ha = invoke i32 @cmsAdaptToIlluminant(ptr noundef nonnull %25, ptr noundef nonnull %22, ptr noundef nonnull %24, ptr noundef nonnull %16)
          to label %bb.de unwind label %bb.dr     ; 0 uses

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.hb = invoke i32 @cmsAdaptToIlluminant(ptr noundef nonnull %26, ptr noundef nonnull %22, ptr noundef nonnull %24, ptr noundef nonnull %18)
          to label %bb.df unwind label %bb.ds     ; 0 uses

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.hc = invoke i32 @cmsAdaptToIlluminant(ptr noundef nonnull %27, ptr noundef nonnull %22, ptr noundef nonnull %24, ptr noundef nonnull %20)
          to label %bb.dg unwind label %bb.dt     ; 0 uses

bb.dg:                                            ; preds = %bb.df
  invoke void @cmsXYZ2xyY(ptr noundef nonnull %15, ptr noundef nonnull %25)
          to label %bb.dh unwind label %bb.dt

bb.dh:                                            ; preds = %bb.dg
  %i.hd = load <2 x double>, ptr %15, align 16, !tbaa !192
  %i.he = fptrunc <2 x double> %i.hd to <2 x float>
  store <2 x float> %i.he, ptr %10, align 8, !tbaa !179
  invoke void @cmsXYZ2xyY(ptr noundef nonnull %17, ptr noundef nonnull %26)
          to label %bb.di unwind label %bb.dt

bb.di:                                            ; preds = %bb.dh
  %i.hf = load <2 x double>, ptr %17, align 16, !tbaa !192
  %i.hg = fptrunc <2 x double> %i.hf to <2 x float>
  store <2 x float> %i.hg, ptr %i.gk, align 8, !tbaa !179
  invoke void @cmsXYZ2xyY(ptr noundef nonnull %19, ptr noundef nonnull %27)
          to label %bb.dj unwind label %bb.dt

bb.dj:                                            ; preds = %bb.di
  %i.hh = load <2 x double>, ptr %19, align 16, !tbaa !192
  %i.hi = fptrunc <2 x double> %i.hh to <2 x float>
  store <2 x float> %i.hi, ptr %i.gl, align 8, !tbaa !179
  store <2 x float> <float 3.127000e-01, float 3.290000e-01>, ptr %i.gm, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.eb

bb.dk:                                            ; preds = %bb.cu
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.eh

bb.dl:                                            ; preds = %bb.ed, %bb.eb, %bb.cx, %bb.cv
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.dm:                                            ; preds = %bb.cy
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dn:                                            ; preds = %bb.cz
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.do:                                            ; preds = %bb.da
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dp:                                            ; preds = %bb.db
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dq:                                            ; preds = %bb.dc
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dr:                                            ; preds = %bb.dd
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.ds:                                            ; preds = %bb.de
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn163 = phi { ptr, i32 } [ %i.hs, %bb.dt ], [ %i.hr, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dr
  %.pn163.pn = phi { ptr, i32 } [ %.pn163, %bb.du ], [ %i.hq, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dq
  %.pn163.pn.pn = phi { ptr, i32 } [ %.pn163.pn, %bb.dv ], [ %i.hp, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dp
  %.pn163.pn.pn.pn = phi { ptr, i32 } [ %.pn163.pn.pn, %bb.dw ], [ %i.ho, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.do
  %.pn163.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn163.pn.pn.pn, %bb.dx ], [ %i.hn, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dn
  %.pn163.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn163.pn.pn.pn.pn, %bb.dy ], [ %i.hm, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dm
  %.pn163.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn163.pn.pn.pn.pn.pn, %bb.dz ], [ %i.hl, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.eh

bb.eb:                                            ; preds = %bb.dj, %bb.cw
  %i.ht = invoke noundef zeroext i1 @_ZN7Imf_3_117hasWhiteLuminanceERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.y)
          to label %bb.ec unwind label %bb.dl

bb.ec:                                            ; preds = %bb.eb
  br i1 %i.ht, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.hu = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_114whiteLuminanceERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.y)
          to label %bb.ee unwind label %bb.dl

bb.ee:                                            ; preds = %bb.ed
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !179
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  %.0117 = phi nsz float [ %i.hv, %bb.ee ], [ 1.000000e+00, %bb.ec ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  invoke void @_ZN7Imf_3_18XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_1::Matrix44") align 4 %28, ptr noundef nonnull align 4 dereferenceable(32) %10, float noundef %.0117)
          to label %.preheader263 unwind label %bb.eg

.preheader263:                                    ; preds = %bb.ef
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.hx = load <10 x float>, ptr %28, align 4, !tbaa !179
  %i.hy = shufflevector <10 x float> %i.hx, <10 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6>
  store <8 x float> %i.hy, ptr %i.hw, align 16, !tbaa !179
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.hz = load float, ptr %gep.2.2, align 4, !tbaa !179
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store float %i.hz, ptr %i.ia, align 16, !tbaa !179
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 2, ptr %i.ib, align 16, !tbaa !195
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i32 0, ptr %i.ic, align 8, !tbaa !196
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !197
  %i.if = and i32 %i.ie, -131297
  %i.ig = or disjoint i32 %i.if, 128
  store i32 %i.ig, ptr %i.id, align 4, !tbaa !197
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 5, ptr %i.ih, align 8, !tbaa !198
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %bb.eh

bb.eh:                                            ; preds = %bb.dl, %bb.ea, %bb.eg, %bb.dk
  %.pn171.pn = phi { ptr, i32 } [ %i.hj, %bb.dk ], [ %i.ii, %bb.eg ], [ %i.hk, %bb.dl ], [ %.pn163.pn.pn.pn.pn.pn.pn, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.loopexit.split-lp

bb.ei:                                            ; preds = %bb.ab, %bb.bz, %.preheader263, %bb.n, %bb.b
  %.sroa.0217.2 = phi ptr [ %.sroa.0217.0, %bb.bz ], [ %.sroa.0217.0, %.preheader263 ], [ %.sroa.0217.0, %bb.ab ], [ null, %bb.n ], [ null, %bb.b ] ; 3 uses
  %.sroa.0223.2 = phi ptr [ %.sroa.0223.0, %bb.bz ], [ %.sroa.0223.0, %.preheader263 ], [ %.sroa.0223.0, %bb.ab ], [ null, %bb.n ], [ null, %bb.b ] ; 3 uses
  %.2148 = phi i32 [ 8, %bb.bz ], [ 0, %.preheader263 ], [ 5, %bb.ab ], [ 2, %bb.n ], [ 3, %bb.b ]
  %i.ij = load ptr, ptr %i.d, align 8, !tbaa !105
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_14NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ij)
          to label %_ZN7Imf_3_111FrameBufferD2Ev.exit unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #23
  unreachable

_ZN7Imf_3_111FrameBufferD2Ev.exit:                ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not.i192 = icmp eq ptr %.sroa.0217.2, null
  br i1 %.not.i192, label %_ZNSt10unique_ptrIN7Imf_3_19InputFileESt14default_deleteIS1_EED2Ev.exit194, label %_ZNKSt14default_deleteIN7Imf_3_19InputFileEEclEPS1_.exit.i193

_ZNKSt14default_deleteIN7Imf_3_19InputFileEEclEPS1_.exit.i193: ; preds = %_ZN7Imf_3_111FrameBufferD2Ev.exit
  %i.im = load ptr, ptr %.sroa.0217.2, align 8, !tbaa !26
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0217.2) #19, !call_target !203, !inline_history !134
  br label %_ZNSt10unique_ptrIN7Imf_3_19InputFileESt14default_deleteIS1_EED2Ev.exit194

_ZNSt10unique_ptrIN7Imf_3_19InputFileESt14default_deleteIS1_EED2Ev.exit194: ; preds = %_ZN7Imf_3_111FrameBufferD2Ev.exit, %_ZNKSt14default_deleteIN7Imf_3_19InputFileEEclEPS1_.exit.i193
  %.not.i195 = icmp eq ptr %.sroa.0223.2, null
  br i1 %.not.i195, label %_ZNSt10unique_ptrIN7Imf_3_114TiledInputFileESt14default_deleteIS1_EED2Ev.exit197, label %_ZNKSt14default_deleteIN7Imf_3_114TiledInputFileEEclEPS1_.exit.i196

_ZNKSt14default_deleteIN7Imf_3_114TiledInputFileEEclEPS1_.exit.i196: ; preds = %_ZNSt10unique_ptrIN7Imf_3_19InputFileESt14default_deleteIS1_EED2Ev.exit194
end_hunk_0
