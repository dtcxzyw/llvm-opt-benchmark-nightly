inline.NumInlined: 483
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@_ZN8ultrahdr17kYuvBt709ToBt2100E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 1.000000e+00, float -1.696900e-02, float 9.631200e-02, float 0.000000e+00, float 9.953060e-01, float -5.119200e-02, float 0.000000e+00, float 1.150700e-02, float f0x3F805669] }, align 4
@_ZN8ultrahdr16kYuvBt601ToBt709E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 1.000000e+00, float -1.181880e-01, float -2.126850e-01, float 0.000000e+00, float 1.018640e+00, float 1.146180e-01, float 0.000000e+00, float 7.504900e-02, float f0x3F833DEA] }, align 4
@_ZN8ultrahdr17kYuvBt601ToBt2100E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 1.000000e+00, float -1.282450e-01, float -1.158790e-01, float 0.000000e+00, float f0x3F814834, float 6.159200e-02, float 0.000000e+00, float 8.696900e-02, float 1.029350e+00] }, align 4
@_ZN8ultrahdr17kYuvBt2100ToBt709E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 1.000000e+00, float 1.814900e-02, float -9.513200e-02, float 0.000000e+00, float f0x3F80871A, float 5.126700e-02, float 0.000000e+00, float -1.152400e-02, float 9.967820e-01] }, align 4
@_ZN8ultrahdr17kYuvBt2100ToBt601E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 1.000000e+00, float 1.178870e-01, float 1.055210e-01, float 0.000000e+00, float 9.952110e-01, float -5.954900e-02, float 0.000000e+00, float -8.408500e-02, float f0x3F79FD15] }, align 4
@.str = private unnamed_addr constant [106 x i8] c"destination image dimensions %dx%d and source image dimensions %dx%d are not identical for copy_raw_image\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"unsupported source / destinations color formats in copy_raw_image, src fmt %d, dst fmt %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTIPFffE = linkonce_odr constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFffE, i32 0, ptr @_ZTIFffE }, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSPFffE = linkonce_odr constant [6 x i8] c"PFffE\00", align 1
@_ZTIFffE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFffE }, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFffE = linkonce_odr constant [5 x i8] c"FffE\00", align 1
@switch.table._ZN8ultrahdr38getReferenceDisplayPeakLuminanceInNitsE19uhdr_color_transfer = private unnamed_addr constant [4 x float] [float 1.000000e+04, float 1.000000e+03, float 1.000000e+04, float 2.030000e+02], align 4
@switch.table._ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_ = private unnamed_addr constant [3 x ptr] [ptr @_ZN8ultrahdr18identityConversionENS_5ColorE, ptr @_ZN8ultrahdr9p3ToBt709ENS_5ColorE, ptr @_ZN8ultrahdr13bt2100ToBt709ENS_5ColorE], align 8
@switch.table._ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_.2 = private unnamed_addr constant [3 x ptr] [ptr @_ZN8ultrahdr9bt709ToP3ENS_5ColorE, ptr @_ZN8ultrahdr18identityConversionENS_5ColorE, ptr @_ZN8ultrahdr10bt2100ToP3ENS_5ColorE], align 8
@switch.table._ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_.3 = private unnamed_addr constant [3 x ptr] [ptr @_ZN8ultrahdr13bt709ToBt2100ENS_5ColorE, ptr @_ZN8ultrahdr10p3ToBt2100ENS_5ColorE, ptr @_ZN8ultrahdr18identityConversionENS_5ColorE], align 8
@switch.table._ZN8ultrahdr13getYuvToRgbFnE16uhdr_color_gamut = private unnamed_addr constant [3 x ptr] [ptr @_ZN8ultrahdr12srgbYuvToRgbENS_5ColorE, ptr @_ZN8ultrahdr10p3YuvToRgbENS_5ColorE, ptr @_ZN8ultrahdr14bt2100YuvToRgbENS_5ColorE], align 8
@switch.table._ZN8ultrahdr14getLuminanceFnE16uhdr_color_gamut = private unnamed_addr constant [3 x ptr] [ptr @_ZN8ultrahdr13srgbLuminanceENS_5ColorE, ptr @_ZN8ultrahdr11p3LuminanceENS_5ColorE, ptr @_ZN8ultrahdr15bt2100LuminanceENS_5ColorE], align 8
@switch.table._ZN8ultrahdr16getInverseOetfFnE19uhdr_color_transfer = private unnamed_addr constant [4 x ptr] [ptr @_ZN8ultrahdr18identityConversionENS_5ColorE, ptr @_ZN8ultrahdr13hlgInvOetfLUTENS_5ColorE, ptr @_ZN8ultrahdr12pqInvOetfLUTENS_5ColorE, ptr @_ZN8ultrahdr14srgbInvOetfLUTENS_5ColorE], align 8
@switch.table._ZN8ultrahdr9getOotfFnE19uhdr_color_transfer = private unnamed_addr constant [4 x ptr] [ptr @_ZN8ultrahdr12identityOotfENS_5ColorEPFfS0_E, ptr @_ZN8ultrahdr13hlgOotfApproxENS_5ColorEPFfS0_E, ptr @_ZN8ultrahdr12identityOotfENS_5ColorEPFfS0_E, ptr @_ZN8ultrahdr12identityOotfENS_5ColorEPFfS0_E], align 8
@switch.table._ZN8ultrahdr10getPixelFnE12uhdr_img_fmt = private unnamed_addr constant [13 x ptr] [ptr @_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm, ptr @_ZN8ultrahdr14getYuv420PixelEP14uhdr_raw_imagemm, ptr @_ZN8ultrahdr14getYuv400PixelEP14uhdr_raw_imagemm, ptr @_ZN8ultrahdr16getRgba8888PixelEP14uhdr_raw_imagemm, ptr @_ZN8ultrahdr15getRgbaF16PixelEP14uhdr_raw_imagemm, ptr @_ZN8ultrahdr19getRgba1010102PixelEP14uhdr_raw_imagemm, ptr @_ZN8ultrahdr14getYuv444PixelEP14uhdr_raw_imagemm, ptr @_ZN8ultrahdr14getYuv422PixelEP14uhdr_raw_imagemm, ptr null, ptr null, ptr null, ptr @_ZN8ultrahdr14getRgb888PixelEP14uhdr_raw_imagemm, ptr @_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm], align 8
@switch.table._ZN8ultrahdr10putPixelFnE12uhdr_img_fmt = private unnamed_addr constant [10 x ptr] [ptr @_ZN8ultrahdr14putYuv400PixelEP14uhdr_raw_imagemmRNS_5ColorE, ptr @_ZN8ultrahdr16putRgba8888PixelEP14uhdr_raw_imagemmRNS_5ColorE, ptr null, ptr null, ptr @_ZN8ultrahdr14putYuv444PixelEP14uhdr_raw_imagemmRNS_5ColorE, ptr null, ptr null, ptr null, ptr null, ptr @_ZN8ultrahdr14putRgb888PixelEP14uhdr_raw_imagemmRNS_5ColorE], align 8
@switch.table._ZN8ultrahdr16getSamplePixelFnE12uhdr_img_fmt = private unnamed_addr constant [13 x ptr] [ptr @_ZN8ultrahdr10sampleP010EP14uhdr_raw_imagemmm, ptr @_ZN8ultrahdr12sampleYuv420EP14uhdr_raw_imagemmm, ptr null, ptr @_ZN8ultrahdr14sampleRgba8888EP14uhdr_raw_imagemmm, ptr @_ZN8ultrahdr13sampleRgbaF16EP14uhdr_raw_imagemmm, ptr @_ZN8ultrahdr17sampleRgba1010102EP14uhdr_raw_imagemmm, ptr @_ZN8ultrahdr12sampleYuv444EP14uhdr_raw_imagemmm, ptr @_ZN8ultrahdr12sampleYuv422EP14uhdr_raw_imagemmm, ptr null, ptr null, ptr null, ptr null, ptr @_ZN8ultrahdr17sampleYuv44410bitEP14uhdr_raw_imagemmm], align 8
@switch.table._ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb = private unnamed_addr constant [3 x ptr] [ptr @_ZN8ultrahdr12srgbRgbToYuvENS_5ColorE, ptr @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE, ptr @_ZN8ultrahdr14bt2100RgbToYuvENS_5ColorE], align 8
@switch.table._ZN8ultrahdr14copy_raw_imageEP14uhdr_raw_imageS1_ = private unnamed_addr constant [9 x i8] c"\04\08\04\01\01\01\01\01\03", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @_ZN8ultrahdr38getReferenceDisplayPeakLuminanceInNitsE19uhdr_color_transfer(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN8ultrahdr38getReferenceDisplayPeakLuminanceInNitsE19uhdr_color_transfer, i64 %i.b
  %switch.load = load float, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi float [ %switch.load, %switch.lookup ], [ -1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @_ZN8ultrahdr11ShepardsIDW17euclideanDistanceEffff(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fsub contract float %4, %3               ; 2 uses
  %i.b = fmul contract float %i.a, %i.a
  %i.c = fsub contract float %2, %1               ; 2 uses
  %i.d = fmul contract float %i.c, %i.c
  %i.e = fadd contract float %i.d, %i.b
  %sqrt = tail call contract float @llvm.sqrt.f32(float %i.e)
  ret float %sqrt
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN8ultrahdr11ShepardsIDW15fillShepardsIDWEPfii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge71.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = uitofp nneg i32 %i.a to float            ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv73 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next74, %._crit_edge ] ; 3 uses
  %i.e = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.f = uitofp nneg i32 %i.e to float
  %i.g = mul nuw nsw i64 %indvars.iv73, %i.d
  %i.h = fdiv contract float %i.f, %i.c           ; 3 uses
  %i.i = tail call contract float @llvm.floor.f32(float %i.h)
  %i.j = fptosi float %i.i to i32                 ; 2 uses
  %i.k = sitofp i32 %i.j to float
  %i.l = add nsw i32 %3, %i.j
  %i.m = sitofp i32 %i.l to float
  %i.n = fsub contract float %i.k, %i.h           ; 2 uses
  %i.o = fsub contract float %i.m, %i.h           ; 2 uses
  %i.p = fmul contract float %i.n, %i.n           ; 2 uses
  %i.q = fmul contract float %i.o, %i.o
  %i.r = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.q, i64 1
  %i.s = insertelement <4 x float> %i.r, float %i.p, i64 2
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  br label %bb.b

._crit_edge71.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.e
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %i.d
  br i1 %exitcond77.not, label %._crit_edge71.split, label %.preheader, !llvm.loop !11

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fdiv contract float %i.v, %i.c           ; 3 uses
  %i.x = tail call contract float @llvm.floor.f32(float %i.w)
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %i.z = sitofp i32 %i.y to float
  %i.aa = fsub contract float %i.z, %i.w          ; 2 uses
  %i.ab = fmul contract float %i.aa, %i.aa        ; 2 uses
  %i.ac = fadd contract float %i.p, %i.ab         ; 2 uses
  %i.ad = add nuw nsw i64 %indvars.iv, %i.g
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = shl i32 %i.ae, 2                        ; 2 uses
  %i.ag = fcmp contract oeq float %i.ac, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ah ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = add nsw i32 %2, %i.y
  %i.al = sitofp i32 %i.ak to float
  %i.am = fsub contract float %i.al, %i.w         ; 2 uses
  %i.an = fmul contract float %i.am, %i.am
  %i.ao = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.ab, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.an, i64 2
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.as = fadd contract <4 x float> %i.t, %i.ar
  %i.at = tail call contract <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.as)
  %i.au = fdiv contract <4 x float> splat (float 1.000000e+00), %i.at ; 6 uses
  %shift = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd contract <4 x float> %i.au, %shift
  %shift83 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop84 = fadd contract <4 x float> %foldExtExtBinop, %shift83
  %shift86 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop87 = fadd contract <4 x float> %shift86, %foldExtExtBinop84
  %i.av = sext i32 %i.af to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ay = shufflevector <4 x float> %foldExtExtBinop87, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = fdiv contract <2 x float> %i.ax, %i.ay
  store <2 x float> %i.az, ptr %i.aw, align 4, !tbaa !13
  %i.ba = getelementptr i8, ptr %i.aw, i64 8
  %i.bb = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bc = fdiv contract <2 x float> %i.bb, %i.ay  ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  store float %i.bd, ptr %i.ba, align 4, !tbaa !13
  %i.be = extractelement <2 x float> %i.bc, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bf = phi i64 [ %i.av, %bb.d ], [ %i.ah, %bb.c ]
  %.sink = phi float [ %i.be, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 12
  store float %.sink, ptr %i.bh, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @_ZN8ultrahdr13srgbLuminanceENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = fmul contract <2 x float> %0, <float 2.126390e-01, float 7.151690e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul contract float %1, 7.219200e-02
  %i.d = fadd contract float %i.c, %i.b
  ret float %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr12srgbRgbToYuvENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #5 {
bb.a:
  %i.a = fmul contract <2 x float> %0, <float 2.126390e-01, float 7.151690e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul contract float %1, 7.219200e-02
  %i.d = fadd contract float %i.c, %i.b
  %.sroa.011.0.vec.insert = insertelement <2 x float> poison, float %i.d, i64 0 ; 2 uses
  %i.e = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.f = insertelement <2 x float> %i.e, float %1, i64 0
  %i.g = shufflevector <2 x float> %.sroa.011.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fsub contract <2 x float> %i.f, %i.g
  %i.i = fdiv contract <2 x float> %i.h, <float f0x3FED84D3, float f0x3FC9907E> ; 2 uses
  %i.j = shufflevector <2 x float> %.sroa.011.0.vec.insert, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.j, 0
  %i.k = extractelement <2 x float> %i.i, i64 1
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.k, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr12srgbYuvToRgbENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %i.a = fmul contract float %.sroa.03.4.vec.extract, f0x3E3FCF0A
  %i.b = fmul contract float %1, f0x3EEFB8DD
  %i.c = fsub contract float %.sroa.03.0.vec.extract, %i.a
  %i.d = fmul contract float %1, f0x3FC9907E
  %i.e = fsub contract float %i.c, %i.b
  %i.f = fadd contract float %.sroa.03.0.vec.extract, %i.d
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = insertelement <2 x float> %i.g, float %i.e, i64 1 ; 3 uses
  %i.i = fcmp contract olt <2 x float> %i.h, zeroinitializer
  %i.j = fcmp contract ogt <2 x float> %i.h, splat (float 1.000000e+00)
  %i.k = select <2 x i1> %i.j, <2 x float> splat (float 1.000000e+00), <2 x float> %i.h
  %i.l = select <2 x i1> %i.i, <2 x float> zeroinitializer, <2 x float> %i.k
  %i.m = fmul contract float %.sroa.03.4.vec.extract, f0x3FED84D3
  %i.n = fadd contract float %.sroa.03.0.vec.extract, %i.m ; 3 uses
  %i.o = fcmp contract olt float %i.n, 0.000000e+00
  %i.p = fcmp contract ogt float %i.n, 1.000000e+00
  %i.q = select contract i1 %i.p, float 1.000000e+00, float %i.n
  %i.r = select contract i1 %i.o, float 0.000000e+00, float %i.q
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.l, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.r, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef float @_ZN8ultrahdr11srgbInvOetfEf(float noundef %0) #6 {
bb.a:
  %i.a = fcmp contract ugt float %0, 4.045000e-02
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fdiv contract float %0, 1.292000e+01
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = fadd contract float %0, 5.500000e-02
  %i.d = fdiv contract float %i.c, 1.055000e+00
  %i.e = fpext contract float %i.d to double
  %i.f = tail call contract double @pow(double noundef %i.e, double noundef f0x4003333340000000) #35, !tbaa !3
  %i.g = fptrunc contract double %i.f to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.b, %bb.b ], [ %i.g, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @_ZN8ultrahdr11srgbInvOetfENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %i.a = fcmp contract ugt float %.sroa.03.0.vec.extract, 4.045000e-02
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fdiv contract float %.sroa.03.0.vec.extract, 1.292000e+01
  br label %_ZN8ultrahdr11srgbInvOetfEf.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fadd contract float %.sroa.03.0.vec.extract, 5.500000e-02
  %i.d = fdiv contract float %i.c, 1.055000e+00
  %i.e = fpext contract float %i.d to double
  %i.f = tail call contract double @pow(double noundef %i.e, double noundef f0x4003333340000000) #35, !tbaa !3
  %i.g = fptrunc contract double %i.f to float
  br label %_ZN8ultrahdr11srgbInvOetfEf.exit

_ZN8ultrahdr11srgbInvOetfEf.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.b, %bb.b ], [ %i.g, %bb.c ]
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %i.h = fcmp contract ugt float %.sroa.03.4.vec.extract, 4.045000e-02
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8ultrahdr11srgbInvOetfEf.exit
  %i.i = fdiv contract float %.sroa.03.4.vec.extract, 1.292000e+01
  br label %_ZN8ultrahdr11srgbInvOetfEf.exit8

bb.e:                                             ; preds = %_ZN8ultrahdr11srgbInvOetfEf.exit
  %i.j = fadd contract float %.sroa.03.4.vec.extract, 5.500000e-02
  %i.k = fdiv contract float %i.j, 1.055000e+00
  %i.l = fpext contract float %i.k to double
  %i.m = tail call contract double @pow(double noundef %i.l, double noundef f0x4003333340000000) #35, !tbaa !3
  %i.n = fptrunc contract double %i.m to float
  br label %_ZN8ultrahdr11srgbInvOetfEf.exit8

_ZN8ultrahdr11srgbInvOetfEf.exit8:                ; preds = %bb.d, %bb.e
  %.0.i7 = phi float [ %i.i, %bb.d ], [ %i.n, %bb.e ]
  %i.o = fcmp contract ugt float %1, 4.045000e-02
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8ultrahdr11srgbInvOetfEf.exit8
  %i.p = fdiv contract float %1, 1.292000e+01
  br label %_ZN8ultrahdr11srgbInvOetfEf.exit10

bb.g:                                             ; preds = %_ZN8ultrahdr11srgbInvOetfEf.exit8
  %i.q = fadd contract float %1, 5.500000e-02
  %i.r = fdiv contract float %i.q, 1.055000e+00
  %i.s = fpext contract float %i.r to double
  %i.t = tail call contract double @pow(double noundef %i.s, double noundef f0x4003333340000000) #35, !tbaa !3
  %i.u = fptrunc contract double %i.t to float
  br label %_ZN8ultrahdr11srgbInvOetfEf.exit10

_ZN8ultrahdr11srgbInvOetfEf.exit10:               ; preds = %bb.f, %bb.g
  %.0.i9 = phi float [ %i.p, %bb.f ], [ %i.u, %bb.g ]
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %.0.i, i64 0
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %.0.i7, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.0.i9, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN8ultrahdr14srgbInvOetfLUTEf(float noundef %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN8ultrahdr14srgbInvOetfLUTEfE8kSrgbLut acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8ultrahdr14srgbInvOetfLUTEfE8kSrgbLut) #35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit

_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit:           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN8ultrahdr11srgbInvOetfEf, ptr %1, align 8, !tbaa !17
  store ptr @_ZNSt17_Function_handlerIFffEPS0_E9_M_invokeERKSt9_Any_dataOf, ptr %i.e, align 8, !tbaa !18
  store ptr @_ZNSt17_Function_handlerIFffEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.f, align 8, !tbaa !21
  invoke void @_ZN8ultrahdr11LookUpTableC2EmSt8functionIFffEE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8ultrahdr14srgbInvOetfLUTEfE8kSrgbLut, i64 noundef 1024, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not.i6 = icmp eq ptr %i.g, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZN8ultrahdr11LookUpTableD2Ev, ptr nonnull @_ZZN8ultrahdr14srgbInvOetfLUTEfE8kSrgbLut, ptr nonnull @__dso_handle) #35 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8ultrahdr14srgbInvOetfLUTEfE8kSrgbLut) #35
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.b, %bb.a
  %i.l = fmul contract float %0, 1.023000e+03
  %i.m = fpext contract float %i.l to double
  %i.n = fadd contract double %i.m, 5.000000e-01
  %i.o = fptosi double %i.n to i32
  %i.p = call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = call i32 @llvm.umin.i32(i32 %i.p, i32 1023)
  %i.r = zext nneg i32 %i.q to i64
  %i.s = load ptr, ptr @_ZZN8ultrahdr14srgbInvOetfLUTEfE8kSrgbLut, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  ret float %i.u

bb.g:                                             ; preds = %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr11LookUpTableC2EmSt8functionIFffEE:bb.a
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.i, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #39
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !22
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !26
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.f
  %i.af = add nuw i64 %.014, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.c, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #39
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ultrahdr11LookUpTableD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #39
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define { <2 x float>, float } @_ZN8ultrahdr14srgbInvOetfLUTENS_5ColorE(<2 x float> %0, float %1) #11 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = tail call contract noundef float @_ZN8ultrahdr14srgbInvOetfLUTEf(float noundef %.sroa.03.0.vec.extract)
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %i.a, i64 0
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.b = tail call contract noundef float @_ZN8ultrahdr14srgbInvOetfLUTEf(float noundef %.sroa.03.4.vec.extract)
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %i.b, i64 1
  %i.c = tail call contract noundef float @_ZN8ultrahdr14srgbInvOetfLUTEf(float noundef %1)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.c, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef float @_ZN8ultrahdr8srgbOetfEf(float noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = fcmp contract ugt float %0, 3.130800e-03
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nnan contract float %0, 1.292000e+01
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call contract noundef float @powf(float noundef %0, float noundef f0x3ED55555) #35, !tbaa !3
  %i.d = fmul contract float %i.c, 1.055000e+00
  %i.e = fadd contract float %i.d, -5.500000e-02
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @_ZN8ultrahdr8srgbOetfENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %i.a = fcmp contract ugt float %.sroa.03.0.vec.extract, 3.130800e-03
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nnan contract float %.sroa.03.0.vec.extract, 1.292000e+01
  br label %_ZN8ultrahdr8srgbOetfEf.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call contract noundef float @powf(float noundef %.sroa.03.0.vec.extract, float noundef f0x3ED55555) #35, !tbaa !3
  %i.d = fmul contract float %i.c, 1.055000e+00
  %i.e = fadd contract float %i.d, -5.500000e-02
  br label %_ZN8ultrahdr8srgbOetfEf.exit

_ZN8ultrahdr8srgbOetfEf.exit:                     ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %i.f = fcmp contract ugt float %.sroa.03.4.vec.extract, 3.130800e-03
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8ultrahdr8srgbOetfEf.exit
  %i.g = fmul nnan contract float %.sroa.03.4.vec.extract, 1.292000e+01
  br label %_ZN8ultrahdr8srgbOetfEf.exit8

bb.e:                                             ; preds = %_ZN8ultrahdr8srgbOetfEf.exit
  %i.h = tail call contract noundef float @powf(float noundef %.sroa.03.4.vec.extract, float noundef f0x3ED55555) #35, !tbaa !3
  %i.i = fmul contract float %i.h, 1.055000e+00
  %i.j = fadd contract float %i.i, -5.500000e-02
  br label %_ZN8ultrahdr8srgbOetfEf.exit8

_ZN8ultrahdr8srgbOetfEf.exit8:                    ; preds = %bb.d, %bb.e
  %.0.i7 = phi float [ %i.g, %bb.d ], [ %i.j, %bb.e ]
  %i.k = fcmp contract ugt float %1, 3.130800e-03
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8ultrahdr8srgbOetfEf.exit8
  %i.l = fmul nnan contract float %1, 1.292000e+01
  br label %_ZN8ultrahdr8srgbOetfEf.exit10

bb.g:                                             ; preds = %_ZN8ultrahdr8srgbOetfEf.exit8
  %i.m = tail call contract noundef float @powf(float noundef %1, float noundef f0x3ED55555) #35, !tbaa !3
  %i.n = fmul contract float %i.m, 1.055000e+00
  %i.o = fadd contract float %i.n, -5.500000e-02
  br label %_ZN8ultrahdr8srgbOetfEf.exit10

_ZN8ultrahdr8srgbOetfEf.exit10:                   ; preds = %bb.f, %bb.g
  %.0.i9 = phi float [ %i.l, %bb.f ], [ %i.o, %bb.g ]
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %.0.i, i64 0
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %.0.i7, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.0.i9, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @_ZN8ultrahdr11p3LuminanceENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = fmul contract <2 x float> %0, <float f0x3E6A7851, float f0x3F3115C6> ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul contract float %1, 7.928690e-02
  %i.d = fadd contract float %i.c, %i.b
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #5 {
bb.a:
  %i.a = fmul contract <2 x float> %0, <float 2.990000e-01, float 5.870000e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul contract float %1, 1.140000e-01
  %i.d = fadd contract float %i.c, %i.b
  %.sroa.09.0.vec.insert = insertelement <2 x float> poison, float %i.d, i64 0 ; 2 uses
  %i.e = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.f = insertelement <2 x float> %i.e, float %1, i64 0
  %i.g = shufflevector <2 x float> %.sroa.09.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fsub contract <2 x float> %i.f, %i.g
  %i.i = fdiv contract <2 x float> %i.h, <float 1.772000e+00, float 1.402000e+00> ; 2 uses
  %i.j = shufflevector <2 x float> %.sroa.09.0.vec.insert, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.j, 0
  %i.k = extractelement <2 x float> %i.i, i64 1
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.k, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr10p3YuvToRgbENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %i.a = fmul contract float %.sroa.03.4.vec.extract, f0x3EB032A1
  %i.b = fmul contract float %1, f0x3F36D1A2
  %i.c = fsub contract float %.sroa.03.0.vec.extract, %i.a
  %i.d = fmul contract float %1, 1.402000e+00
  %i.e = fsub contract float %i.c, %i.b
  %i.f = fadd contract float %.sroa.03.0.vec.extract, %i.d
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = insertelement <2 x float> %i.g, float %i.e, i64 1 ; 3 uses
  %i.i = fcmp contract olt <2 x float> %i.h, zeroinitializer
  %i.j = fcmp contract ogt <2 x float> %i.h, splat (float 1.000000e+00)
  %i.k = select <2 x i1> %i.j, <2 x float> splat (float 1.000000e+00), <2 x float> %i.h
  %i.l = select <2 x i1> %i.i, <2 x float> zeroinitializer, <2 x float> %i.k
  %i.m = fmul contract float %.sroa.03.4.vec.extract, 1.772000e+00
  %i.n = fadd contract float %.sroa.03.0.vec.extract, %i.m ; 3 uses
  %i.o = fcmp contract olt float %i.n, 0.000000e+00
  %i.p = fcmp contract ogt float %i.n, 1.000000e+00
  %i.q = select contract i1 %i.p, float 1.000000e+00, float %i.n
  %i.r = select contract i1 %i.o, float 0.000000e+00, float %i.q
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.l, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.r, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @_ZN8ultrahdr15bt2100LuminanceENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = fmul contract <2 x float> %0, <float 2.627000e-01, float 6.779980e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul contract float %1, 5.930200e-02
  %i.d = fadd contract float %i.c, %i.b
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr14bt2100RgbToYuvENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #5 {
bb.a:
  %i.a = fmul contract <2 x float> %0, <float 2.627000e-01, float 6.779980e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul contract float %1, 5.930200e-02
  %i.d = fadd contract float %i.c, %i.b
  %.sroa.011.0.vec.insert = insertelement <2 x float> poison, float %i.d, i64 0 ; 2 uses
  %i.e = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.f = insertelement <2 x float> %i.e, float %1, i64 0
  %i.g = shufflevector <2 x float> %.sroa.011.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fsub contract <2 x float> %i.f, %i.g
  %i.i = fdiv contract <2 x float> %i.h, <float f0x3FF0D196, float f0x3FBCBFB2> ; 2 uses
  %i.j = shufflevector <2 x float> %.sroa.011.0.vec.insert, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.j, 0
  %i.k = extractelement <2 x float> %i.i, i64 1
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.k, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr14bt2100YuvToRgbENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %i.a = fmul contract float %.sroa.03.4.vec.extract, f0x3E28821B
  %i.b = fmul contract float %1, f0x3F124450
  %i.c = fsub contract float %.sroa.03.0.vec.extract, %i.a
  %i.d = fmul contract float %1, f0x3FBCBFB2
  %i.e = fsub contract float %i.c, %i.b
  %i.f = fadd contract float %.sroa.03.0.vec.extract, %i.d
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = insertelement <2 x float> %i.g, float %i.e, i64 1 ; 3 uses
  %i.i = fcmp contract olt <2 x float> %i.h, zeroinitializer
  %i.j = fcmp contract ogt <2 x float> %i.h, splat (float 1.000000e+00)
  %i.k = select <2 x i1> %i.j, <2 x float> splat (float 1.000000e+00), <2 x float> %i.h
  %i.l = select <2 x i1> %i.i, <2 x float> zeroinitializer, <2 x float> %i.k
  %i.m = fmul contract float %.sroa.03.4.vec.extract, f0x3FF0D196
  %i.n = fadd contract float %.sroa.03.0.vec.extract, %i.m ; 3 uses
  %i.o = fcmp contract olt float %i.n, 0.000000e+00
  %i.p = fcmp contract ogt float %i.n, 1.000000e+00
  %i.q = select contract i1 %i.p, float 1.000000e+00, float %i.n
  %i.r = select contract i1 %i.o, float 0.000000e+00, float %i.q
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.l, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.r, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define noundef float @_ZN8ultrahdr7hlgOetfEf(float noundef %0) #12 {
bb.a:
  %i.a = fcmp contract ugt float %0, f0x3DAAAAAB
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nnan contract float %0, 3.000000e+00
  %sqrtf = tail call contract float @sqrtf(float noundef %i.b) #35
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = fmul contract float %0, 1.200000e+01
  %i.d = fadd contract float %i.c, f0xBE91C020
  %i.e = fpext contract float %i.d to double
  %i.f = tail call contract double @log(double noundef %i.e) #35, !tbaa !3
  %i.g = fmul contract double %i.f, f0x3FC6E3FE00000000
  %i.h = fadd contract double %i.g, f0x3FE1EAC9E0000000
  %i.i = fptrunc contract double %i.h to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %sqrtf, %bb.b ], [ %i.i, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define { <2 x float>, float } @_ZN8ultrahdr7hlgOetfENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #13 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %i.a = fcmp contract ugt float %.sroa.03.0.vec.extract, f0x3DAAAAAB
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nnan contract float %.sroa.03.0.vec.extract, 3.000000e+00
  %sqrtf.i = tail call contract float @sqrtf(float noundef %i.b) #35
  br label %_ZN8ultrahdr7hlgOetfEf.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fmul contract float %.sroa.03.0.vec.extract, 1.200000e+01
  %i.d = fadd contract float %i.c, f0xBE91C020
  %i.e = fpext contract float %i.d to double
  %i.f = tail call contract double @log(double noundef %i.e) #35, !tbaa !3
  %i.g = fmul contract double %i.f, f0x3FC6E3FE00000000
  %i.h = fadd contract double %i.g, f0x3FE1EAC9E0000000
  %i.i = fptrunc contract double %i.h to float
  br label %_ZN8ultrahdr7hlgOetfEf.exit

_ZN8ultrahdr7hlgOetfEf.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %sqrtf.i, %bb.b ], [ %i.i, %bb.c ]
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %i.j = fcmp contract ugt float %.sroa.03.4.vec.extract, f0x3DAAAAAB
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8ultrahdr7hlgOetfEf.exit
  %i.k = fmul nnan contract float %.sroa.03.4.vec.extract, 3.000000e+00
  %sqrtf.i7 = tail call contract float @sqrtf(float noundef %i.k) #35
  br label %_ZN8ultrahdr7hlgOetfEf.exit9

bb.e:                                             ; preds = %_ZN8ultrahdr7hlgOetfEf.exit
  %i.l = fmul contract float %.sroa.03.4.vec.extract, 1.200000e+01
  %i.m = fadd contract float %i.l, f0xBE91C020
  %i.n = fpext contract float %i.m to double
  %i.o = tail call contract double @log(double noundef %i.n) #35, !tbaa !3
  %i.p = fmul contract double %i.o, f0x3FC6E3FE00000000
  %i.q = fadd contract double %i.p, f0x3FE1EAC9E0000000
  %i.r = fptrunc contract double %i.q to float
  br label %_ZN8ultrahdr7hlgOetfEf.exit9

_ZN8ultrahdr7hlgOetfEf.exit9:                     ; preds = %bb.d, %bb.e
  %.0.i8 = phi float [ %sqrtf.i7, %bb.d ], [ %i.r, %bb.e ]
  %i.s = fcmp contract ugt float %1, f0x3DAAAAAB
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8ultrahdr7hlgOetfEf.exit9
  %i.t = fmul nnan contract float %1, 3.000000e+00
  %sqrtf.i10 = tail call contract float @sqrtf(float noundef %i.t) #35
  br label %_ZN8ultrahdr7hlgOetfEf.exit12

bb.g:                                             ; preds = %_ZN8ultrahdr7hlgOetfEf.exit9
  %i.u = fmul contract float %1, 1.200000e+01
  %i.v = fadd contract float %i.u, f0xBE91C020
  %i.w = fpext contract float %i.v to double
  %i.x = tail call contract double @log(double noundef %i.w) #35, !tbaa !3
  %i.y = fmul contract double %i.x, f0x3FC6E3FE00000000
  %i.z = fadd contract double %i.y, f0x3FE1EAC9E0000000
  %i.aa = fptrunc contract double %i.z to float
  br label %_ZN8ultrahdr7hlgOetfEf.exit12

_ZN8ultrahdr7hlgOetfEf.exit12:                    ; preds = %bb.f, %bb.g
  %.0.i11 = phi float [ %sqrtf.i10, %bb.f ], [ %i.aa, %bb.g ]
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %.0.i, i64 0
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %.0.i8, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.0.i11, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN8ultrahdr10hlgOetfLUTEf(float noundef %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN8ultrahdr10hlgOetfLUTEfE7kHlgLut acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8ultrahdr10hlgOetfLUTEfE7kHlgLut) #35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit

_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit:           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr @_ZN8ultrahdr7hlgOetfEf, ptr %1, align 8, !tbaa !17
  store ptr @_ZNSt17_Function_handlerIFffEPS0_E9_M_invokeERKSt9_Any_dataOf, ptr %i.e, align 8, !tbaa !18
  store ptr @_ZNSt17_Function_handlerIFffEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.f, align 8, !tbaa !21
  invoke void @_ZN8ultrahdr11LookUpTableC2EmSt8functionIFffEE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8ultrahdr10hlgOetfLUTEfE7kHlgLut, i64 noundef 65536, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not.i6 = icmp eq ptr %i.g, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZN8ultrahdr11LookUpTableD2Ev, ptr nonnull @_ZZN8ultrahdr10hlgOetfLUTEfE7kHlgLut, ptr nonnull @__dso_handle) #35 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8ultrahdr10hlgOetfLUTEfE7kHlgLut) #35
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.b, %bb.a
  %i.l = fmul contract float %0, 6.553500e+04
  %i.m = fpext contract float %i.l to double
  %i.n = fadd contract double %i.m, 5.000000e-01
  %i.o = fptosi double %i.n to i32
  %i.p = call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = call i32 @llvm.umin.i32(i32 %i.p, i32 65535)
  %i.r = zext nneg i32 %i.q to i64
  %i.s = load ptr, ptr @_ZZN8ultrahdr10hlgOetfLUTEfE7kHlgLut, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  ret float %i.u

bb.g:                                             ; preds = %_ZNSt8functionIFffEEC2IPS0_vEEOT_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not.i7 = icmp eq ptr %i.w, null
end_hunk_1
