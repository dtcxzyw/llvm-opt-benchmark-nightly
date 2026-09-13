Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gainmapmath?download=true
inline.NumInlined: 483
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.ultrahdr::LookUpTable" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::array" = type { [9 x float] }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.6" }
%"struct.std::_Head_base.6" = type { ptr }
%struct.uhdr_error_info = type { i32, i32, [256 x i8] }

@_ZZN8ultrahdr14srgbInvOetfLUTEfE8kSrgbLut = internal global %"class.ultrahdr::LookUpTable" zeroinitializer, align 8
@_ZGVZN8ultrahdr14srgbInvOetfLUTEfE8kSrgbLut = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZZN8ultrahdr10hlgOetfLUTEfE7kHlgLut = internal global %"class.ultrahdr::LookUpTable" zeroinitializer, align 8
@_ZGVZN8ultrahdr10hlgOetfLUTEfE7kHlgLut = internal global i64 0, align 8
@_ZZN8ultrahdr13hlgInvOetfLUTEfE10kHlgInvLut = internal global %"class.ultrahdr::LookUpTable" zeroinitializer, align 8
@_ZGVZN8ultrahdr13hlgInvOetfLUTEfE10kHlgInvLut = internal global i64 0, align 8
@_ZZN8ultrahdr9pqOetfLUTEfE6kPqLut = internal global %"class.ultrahdr::LookUpTable" zeroinitializer, align 8
@_ZGVZN8ultrahdr9pqOetfLUTEfE6kPqLut = internal global i64 0, align 8
@_ZZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut = internal global %"class.ultrahdr::LookUpTable" zeroinitializer, align 8
@_ZGVZN8ultrahdr12pqInvOetfLUTEfE9kPqInvLut = internal global i64 0, align 8
@_ZN8ultrahdr10kBt709ToP3E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 8.224620e-01, float 1.775370e-01, float f0x358637BD, float 3.319400e-02, float 9.668070e-01, float f0xB58637BD, float 1.708300e-02, float 7.239800e-02, float 9.105200e-01] }, align 4
@_ZN8ultrahdr14kBt709ToBt2100E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 6.274040e-01, float 3.292820e-01, float 4.331400e-02, float 6.909700e-02, float 9.195410e-01, float 1.136200e-02, float 1.639200e-02, float 8.801300e-02, float 8.955950e-01] }, align 4
@_ZN8ultrahdr10kP3ToBt709E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 1.224940e+00, float -2.249400e-01, float 0.000000e+00, float -4.205700e-02, float f0x3F856220, float 0.000000e+00, float -1.963800e-02, float f0xBDA10BE9, float f0x3F8C943E] }, align 4
@_ZN8ultrahdr11kP3ToBt2100E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float f0x3F40FB33, float 1.985970e-01, float 4.757000e-02, float 4.574400e-02, float 9.417770e-01, float 1.247900e-02, float -1.210000e-03, float 1.760100e-02, float 9.836080e-01] }, align 4
@_ZN8ultrahdr14kBt2100ToBt709E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float f0x3FD48AF8, float -5.876410e-01, float -7.285000e-02, float -1.245510e-01, float 1.132900e+00, float f0xBC08CA3E, float -1.815100e-02, float -1.005790e-01, float 1.118730e+00] }, align 4
@_ZN8ultrahdr11kBt2100ToP3E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float f0x3FABFA5D, float -2.821790e-01, float -6.139900e-02, float -6.529800e-02, float f0x3F89B36C, float -1.049000e-02, float 2.822000e-03, float -1.959800e-02, float f0x3F8225C0] }, align 4
@_ZN8ultrahdr16kYuvBt709ToBt601E = local_unnamed_addr constant %"struct.std::array" { [9 x float] [float 1.000000e+00, float 1.015790e-01, float 1.960760e-01, float 0.000000e+00, float f0x3F7D6712, float -1.106530e-01, float 0.000000e+00, float -7.245300e-02, float 9.833980e-01] }, align 4
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
  %i.a = load i32, ptr %0, align 8, !tbaa !57     ; 3 uses
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
  %4 = uitofp nneg i32 %i.j to float
  %5 = add nsw i32 %3, %i.j
  %6 = sitofp i32 %5 to float
  %7 = fsub contract float %4, %i.h               ; 2 uses
  %8 = fsub contract float %6, %i.h               ; 2 uses
  %9 = fmul contract float %7, %7                 ; 2 uses
  %10 = fmul contract float %8, %8
  %11 = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %10, i64 1
  %12 = insertelement <4 x float> %11, float %9, i64 2
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  br label %bb.b

._crit_edge71.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.e
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %i.d
  br i1 %exitcond77.not, label %._crit_edge71.split, label %.preheader, !llvm.loop !54

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = fdiv contract float %i.l, %i.c           ; 3 uses
  %i.n = tail call contract float @llvm.floor.f32(float %i.m)
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %14 = uitofp nneg i32 %i.o to float
  %i.p = fsub contract float %14, %i.m            ; 2 uses
  %i.q = fmul contract float %i.p, %i.p           ; 2 uses
  %i.r = fadd contract float %9, %i.q             ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv, %i.g
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = shl i32 %i.t, 2                          ; 2 uses
  %i.v = fcmp contract oeq float %i.r, 0.000000e+00
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = sext i32 %i.u to i64                     ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %1, i64 %i.w ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.x, align 4, !tbaa !14
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = add nsw i32 %2, %i.o
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fsub contract float %i.aa, %i.m         ; 2 uses
  %i.ac = fmul contract float %i.ab, %i.ab
  %i.ad = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.q, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.ac, i64 2
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ah = fadd contract <4 x float> %13, %i.ag
  %i.ai = tail call contract <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ah)
  %i.aj = fdiv contract <4 x float> splat (float 1.000000e+00), %i.ai ; 6 uses
  %shift = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd contract <4 x float> %i.aj, %shift
  %shift83 = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop84 = fadd contract <4 x float> %foldExtExtBinop, %shift83
  %shift86 = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop87 = fadd contract <4 x float> %shift86, %foldExtExtBinop84
  %i.ak = sext i32 %i.u to i64                    ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak ; 2 uses
  %i.am = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.an = shufflevector <4 x float> %foldExtExtBinop87, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = fdiv contract <2 x float> %i.am, %i.an
  store <2 x float> %i.ao, ptr %i.al, align 4, !tbaa !14
  %i.ap = getelementptr i8, ptr %i.al, i64 8
  %i.aq = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ar = fdiv contract <2 x float> %i.aq, %i.an  ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  store float %i.as, ptr %i.ap, align 4, !tbaa !14
  %i.at = extractelement <2 x float> %i.ar, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = phi i64 [ %i.ak, %bb.d ], [ %i.w, %bb.c ]
  %.sink = phi float [ %i.at, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 12
  store float %.sink, ptr %i.aw, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !55
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
  %i.f = tail call contract double @pow(double noundef %i.e, double noundef f0x4003333340000000) #35, !tbaa !9
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
  %i.f = tail call contract double @pow(double noundef %i.e, double noundef f0x4003333340000000) #35, !tbaa !9
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
  %i.m = tail call contract double @pow(double noundef %i.l, double noundef f0x4003333340000000) #35, !tbaa !9
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
  %i.t = tail call contract double @pow(double noundef %i.s, double noundef f0x4003333340000000) #35, !tbaa !9
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
end_hunk_0
