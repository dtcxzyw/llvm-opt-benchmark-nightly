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
  %4 = sitofp i32 %i.j to float
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
  br i1 %exitcond77.not, label %._crit_edge71.split, label %.preheader, !llvm.loop !11

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = fdiv contract float %i.l, %i.c           ; 3 uses
  %i.n = tail call contract float @llvm.floor.f32(float %i.m)
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %i.p = sitofp i32 %i.o to float
  %i.q = fsub contract float %i.p, %i.m           ; 2 uses
  %i.r = fmul contract float %i.q, %i.q           ; 2 uses
  %i.s = fadd contract float %9, %i.r             ; 2 uses
  %i.t = add nuw nsw i64 %indvars.iv, %i.g
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = shl i32 %i.u, 2                          ; 2 uses
  %i.w = fcmp contract oeq float %i.s, 0.000000e+00
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = sext i32 %i.v to i64                     ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %1, i64 %i.x ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.y, align 4, !tbaa !13
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = add nsw i32 %2, %i.o
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fsub contract float %i.ab, %i.m         ; 2 uses
  %i.ad = fmul contract float %i.ac, %i.ac
  %i.ae = insertelement <4 x float> poison, float %i.s, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.r, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ad, i64 2
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ai = fadd contract <4 x float> %13, %i.ah
  %i.aj = tail call contract <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ai)
  %i.ak = fdiv contract <4 x float> splat (float 1.000000e+00), %i.aj ; 6 uses
  %shift = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd contract <4 x float> %i.ak, %shift
  %shift83 = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop84 = fadd contract <4 x float> %foldExtExtBinop, %shift83
  %shift86 = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop87 = fadd contract <4 x float> %shift86, %foldExtExtBinop84
  %i.al = sext i32 %i.v to i64                    ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.al ; 2 uses
  %i.an = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ao = shufflevector <4 x float> %foldExtExtBinop87, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fdiv contract <2 x float> %i.an, %i.ao
  store <2 x float> %i.ap, ptr %i.am, align 4, !tbaa !13
  %i.aq = getelementptr i8, ptr %i.am, i64 8
  %i.ar = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.as = fdiv contract <2 x float> %i.ar, %i.ao  ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  store float %i.at, ptr %i.aq, align 4, !tbaa !13
  %i.au = extractelement <2 x float> %i.as, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = phi i64 [ %i.al, %bb.d ], [ %i.x, %bb.c ]
  %.sink = phi float [ %i.au, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.aw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 12
  store float %.sink, ptr %i.ax, align 4, !tbaa !13
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
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr12ConvertGamutENS_5ColorERKSt5arrayIfLm9EE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !13
  %i.s = fmul contract <2 x float> %0, %i.r       ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = fmul contract float %1, %i.v
  %i.x = fadd contract float %i.t, %i.w
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.p, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.x, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9bt709ToP3ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = fmul contract float %1, f0x358637BD
  %i.b = fmul contract <2 x float> %0, <float 3.319400e-02, float 1.775370e-01>
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.d = fmul contract <2 x float> %0, <float 8.224620e-01, float 9.668070e-01>
  %i.e = fadd contract <2 x float> %i.c, %i.d     ; 2 uses
  %i.f = insertelement <2 x float> poison, float %i.a, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.h = fadd contract <2 x float> %i.e, %i.g
  %i.i = fsub contract <2 x float> %i.e, %i.g
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 0, i32 3>
  %i.k = fmul contract <2 x float> %0, <float 1.708300e-02, float 7.239800e-02> ; 2 uses
  %shift = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.k, %shift
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.m = fmul contract float %1, 9.105200e-01
  %i.n = fadd contract float %i.m, %i.l
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.j, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.n, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr13bt709ToBt2100ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul contract <2 x float> %i.b, <float 4.331400e-02, float 1.136200e-02>
  %i.d = fmul contract <2 x float> %0, <float 6.909700e-02, float 3.292820e-01>
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fmul contract <2 x float> %0, <float 6.274040e-01, float 9.195410e-01>
  %i.g = fadd contract <2 x float> %i.e, %i.f
  %i.h = fadd contract <2 x float> %i.c, %i.g
  %i.i = fmul contract <2 x float> %0, <float 1.639200e-02, float 8.801300e-02> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, 8.955950e-01
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9p3ToBt709ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = fmul contract float %1, 0.000000e+00
  %i.b = fmul contract <2 x float> %0, <float 4.205700e-02, float 2.249400e-01>
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.d = fmul contract <2 x float> %0, <float 1.224940e+00, float f0x3F856220>
  %i.e = fsub contract <2 x float> %i.d, %i.c
  %i.f = insertelement <2 x float> poison, float %i.a, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fadd contract <2 x float> %i.g, %i.e
  %i.i = fmul contract <2 x float> %0, <float -1.963800e-02, float f0x3DA10BE9> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, f0x3F8C943E
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr10p3ToBt2100ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul contract <2 x float> %i.b, <float 4.757000e-02, float 1.247900e-02>
  %i.d = fmul contract <2 x float> %0, <float 4.574400e-02, float 1.985970e-01>
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fmul contract <2 x float> %0, <float f0x3F40FB33, float 9.417770e-01>
  %i.g = fadd contract <2 x float> %i.e, %i.f
  %i.h = fadd contract <2 x float> %i.c, %i.g
  %i.i = fmul contract <2 x float> %0, <float 1.210000e-03, float 1.760100e-02> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %shift, %i.i
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, 9.836080e-01
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr13bt2100ToBt709ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul contract <2 x float> %i.b, <float 7.285000e-02, float f0x3C08CA3E>
  %i.d = fmul contract <2 x float> %0, <float 1.245510e-01, float 5.876410e-01>
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fmul contract <2 x float> %0, <float f0x3FD48AF8, float 1.132900e+00>
  %i.g = fsub contract <2 x float> %i.f, %i.e
  %i.h = fsub contract <2 x float> %i.g, %i.c
  %i.i = fmul contract <2 x float> %0, <float -1.815100e-02, float 1.005790e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, 1.118730e+00
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr10bt2100ToP3ENS_5ColorE(<2 x float> %0, float %1) #5 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul contract <2 x float> %i.b, <float 6.139900e-02, float 1.049000e-02>
  %i.d = fmul contract <2 x float> %0, <float 6.529800e-02, float 2.821790e-01>
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fmul contract <2 x float> %0, <float f0x3FABFA5D, float f0x3F89B36C>
  %i.g = fsub contract <2 x float> %i.f, %i.e
  %i.h = fsub contract <2 x float> %i.g, %i.c
  %i.i = fmul contract <2 x float> %0, <float 2.822000e-03, float 1.959800e-02> ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub contract <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul contract float %1, f0x3F8225C0
  %i.l = fadd contract float %i.k, %i.j
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @_ZN8ultrahdr23yuvColorGamutConversionENS_5ColorERKSt5arrayIfLm9EE(<2 x float> %0, float %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load <4 x float>, ptr %2, align 4, !tbaa !13 ; 3 uses
  %i.c = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.d = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.e = fmul contract <2 x float> %i.c, %i.d
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !13 ; 2 uses
  %i.g = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.h = shufflevector <2 x float> %i.g, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %i.i = fmul contract <2 x float> %0, %i.h
  %i.j = fadd contract <2 x float> %i.e, %i.i
  %i.k = insertelement <2 x float> poison, float %1, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.n = shufflevector <2 x float> %i.m, <2 x float> %i.f, <2 x i32> <i32 0, i32 3>
  %i.o = fmul contract <2 x float> %i.l, %i.n
  %i.p = fadd contract <2 x float> %i.j, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !13
  %i.s = fmul contract <2 x float> %0, %i.r       ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = fmul contract float %1, %i.v
  %i.x = fadd contract float %i.t, %i.w
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.p, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.x, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8ultrahdr15transformYuv420EP14uhdr_raw_imageRKSt5arrayIfLm9EE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not = icmp ult i32 %i.b, 2
  br i1 %.not, label %._crit_edge220, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i32, ptr %i.c, align 8, !tbaa !42
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.b, %.preheader.lr.ph ], [ %i.u, %._crit_edge ]
  %i.r = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.v, %._crit_edge ] ; 2 uses
  %.0219 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.w, %._crit_edge ] ; 4 uses
  %.not221 = icmp ult i32 %i.r, 2
  br i1 %.not221, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = shl nuw nsw i64 %.0219, 1                ; 2 uses
  %i.t = or disjoint i64 %i.s, 1
  br label %bb.b

._crit_edge220:                                   ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre222 = load i32, ptr %i.a, align 4, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.u = phi i32 [ %.pre222, %._crit_edge.loopexit ], [ %i.q, %.preheader ] ; 2 uses
  %i.v = phi i32 [ %i.ex, %._crit_edge.loopexit ], [ %i.r, %.preheader ]
  %i.w = add nuw nsw i64 %.0219, 1                ; 2 uses
  %i.x = lshr i32 %i.u, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = icmp samesign ult i64 %i.w, %i.y
  br i1 %i.z, label %.preheader, label %._crit_edge220, !llvm.loop !43

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.0131218 = phi i64 [ 0, %.lr.ph ], [ %i.ew, %bb.n ] ; 4 uses
  %i.aa = shl nuw nsw i64 %.0131218, 1
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !3
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.af = load i32, ptr %i.g, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !3
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul i64 %i.s, %i.ad                     ; 2 uses
  %i.al = mul i64 %.0219, %i.ag
  %i.am = mul i64 %.0219, %i.aj
  %i.an = getelementptr i8, ptr %i.ab, i64 %i.aa  ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ak  ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = getelementptr i8, ptr %i.ae, i64 %.0131218
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.al  ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !28
  %i.at = getelementptr i8, ptr %i.ah, i64 %.0131218
  %i.au = getelementptr i8, ptr %i.at, i64 %i.am  ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !28
  %i.aw = uitofp i8 %i.ap to float
  %i.ax = fmul nnan contract float %i.aw, f0x3B808081 ; 3 uses
  %3 = zext i8 %i.as to i32
  %4 = add nsw i32 %3, -128
  %5 = sitofp i32 %4 to float
  %i.ay = fmul nnan contract float %5, f0x3B808081 ; 3 uses
  %6 = zext i8 %i.av to i32
  %7 = add nsw i32 %6, -128
  %8 = sitofp i32 %7 to float
  %9 = fmul nnan contract float %8, f0x3B808081   ; 3 uses
  %10 = getelementptr i8, ptr %i.an, i64 1        ; 2 uses
  %i.az = getelementptr i8, ptr %10, i64 %i.ak    ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bb = uitofp i8 %i.ba to float
  %i.bc = fmul nnan contract float %i.bb, f0x3B808081 ; 3 uses
  %11 = mul i64 %i.t, %i.ad                       ; 2 uses
  %12 = getelementptr i8, ptr %i.an, i64 %11      ; 2 uses
  %13 = load i8, ptr %12, align 1, !tbaa !28
  %14 = uitofp i8 %13 to float
  %15 = fmul nnan contract float %14, f0x3B808081 ; 3 uses
  %16 = getelementptr i8, ptr %10, i64 %11        ; 2 uses
  %17 = load i8, ptr %16, align 1, !tbaa !28
  %18 = uitofp i8 %17 to float
  %19 = fmul nnan contract float %18, f0x3B808081 ; 3 uses
  %20 = load float, ptr %1, align 4, !tbaa !13    ; 4 uses
  %21 = fmul contract float %i.ax, %20
  %22 = load float, ptr %i.j, align 4, !tbaa !13
  %23 = fmul contract float %i.ay, %22            ; 4 uses
  %i.bd = fadd contract float %21, %23
  %24 = load float, ptr %2, align 4, !tbaa !13
  %25 = fmul contract float %9, %24               ; 4 uses
  %i.be = fadd contract float %i.bd, %25
  %i.bf = load float, ptr %i.k, align 4, !tbaa !13 ; 4 uses
  %i.bg = fmul contract float %i.ax, %i.bf
  %i.bh = load float, ptr %i.l, align 4, !tbaa !13
  %i.bi = fmul contract float %i.ay, %i.bh        ; 4 uses
  %i.bj = fadd contract float %i.bg, %i.bi
  %i.bk = load float, ptr %i.m, align 4, !tbaa !13
  %i.bl = fmul contract float %9, %i.bk           ; 4 uses
  %i.bm = fadd contract float %i.bj, %i.bl
  %i.bn = load float, ptr %i.n, align 4, !tbaa !13 ; 4 uses
  %i.bo = fmul contract float %i.ax, %i.bn
  %i.bp = load float, ptr %i.o, align 4, !tbaa !13
  %i.bq = fmul contract float %i.ay, %i.bp        ; 4 uses
  %i.br = fadd contract float %i.bo, %i.bq
  %i.bs = load float, ptr %i.p, align 4, !tbaa !13
  %i.bt = fmul contract float %9, %i.bs           ; 4 uses
  %i.bu = fadd contract float %i.br, %i.bt
  %i.bv = fmul contract float %i.bc, %20
  %i.bw = fadd contract float %i.bv, %23
  %i.bx = fadd contract float %i.bw, %25
  %i.by = fmul contract float %i.bc, %i.bf
  %i.bz = fadd contract float %i.by, %i.bi
  %i.ca = fadd contract float %i.bz, %i.bl
  %i.cb = fmul contract float %i.bc, %i.bn
  %i.cc = fadd contract float %i.cb, %i.bq
  %i.cd = fadd contract float %i.cc, %i.bt
  %i.ce = fmul contract float %15, %20
  %i.cf = fadd contract float %i.ce, %23
  %i.cg = fadd contract float %i.cf, %25
  %i.ch = fmul contract float %15, %i.bf
  %i.ci = fadd contract float %i.ch, %i.bi
  %i.cj = fadd contract float %i.ci, %i.bl
  %i.ck = fmul contract float %15, %i.bn
  %i.cl = fadd contract float %i.ck, %i.bq
  %i.cm = fadd contract float %i.cl, %i.bt
  %i.cn = fmul contract float %20, %19
  %i.co = fadd contract float %i.cn, %23
  %i.cp = fadd contract float %i.co, %25
  %i.cq = fmul contract float %19, %i.bf
  %i.cr = fadd contract float %i.cq, %i.bi
  %i.cs = fadd contract float %i.cr, %i.bl
  %i.ct = fmul contract float %19, %i.bn
  %i.cu = fadd contract float %i.ct, %i.bq
  %i.cv = fadd contract float %i.cu, %i.bt
  %i.cw = fadd contract float %i.bm, %i.ca
  %i.cx = fadd contract float %i.bu, %i.cd
  %i.cy = fadd contract float %i.cj, %i.cw
  %i.cz = fadd contract float %i.cm, %i.cx
  %i.da = fadd contract float %i.cs, %i.cy
  %i.db = fadd contract float %i.cv, %i.cz
  %i.dc = fmul contract float %i.da, 2.500000e-01
  %i.dd = fmul contract float %i.db, 2.500000e-01
  %i.de = fmul contract float %i.be, 2.550000e+02
  %i.df = fadd contract float %i.de, 5.000000e-01 ; 3 uses
  %i.dg = fcmp contract olt float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dh = fcmp contract ogt float %i.df, 2.550000e+02
  %i.di = select contract i1 %i.dh, float 2.550000e+02, float %i.df
  %i.dj = fptoui float %i.di to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.dk = phi i8 [ %i.dj, %bb.c ], [ 0, %bb.b ]
  store i8 %i.dk, ptr %i.ao, align 1, !tbaa !28
  %i.dl = fmul contract float %i.bx, 2.550000e+02
  %i.dm = fadd contract float %i.dl, 5.000000e-01 ; 3 uses
  %i.dn = fcmp contract olt float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.do = fcmp contract ogt float %i.dm, 2.550000e+02
  %i.dp = select contract i1 %i.do, float 2.550000e+02, float %i.dm
  %i.dq = fptoui float %i.dp to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.dr = phi i8 [ %i.dq, %bb.e ], [ 0, %bb.d ]
  store i8 %i.dr, ptr %i.az, align 1, !tbaa !28
  %i.ds = fmul contract float %i.cg, 2.550000e+02
  %i.dt = fadd contract float %i.ds, 5.000000e-01 ; 3 uses
  %i.du = fcmp contract olt float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dv = fcmp contract ogt float %i.dt, 2.550000e+02
  %i.dw = select contract i1 %i.dv, float 2.550000e+02, float %i.dt
  %i.dx = fptoui float %i.dw to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dy = phi i8 [ %i.dx, %bb.g ], [ 0, %bb.f ]
  store i8 %i.dy, ptr %12, align 1, !tbaa !28
  %i.dz = fmul contract float %i.cp, 2.550000e+02
  %i.ea = fadd contract float %i.dz, 5.000000e-01 ; 3 uses
  %i.eb = fcmp contract olt float %i.ea, 0.000000e+00
  br i1 %i.eb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ec = fcmp contract ogt float %i.ea, 2.550000e+02
  %i.ed = select contract i1 %i.ec, float 2.550000e+02, float %i.ea
  %i.ee = fptoui float %i.ed to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ef = phi i8 [ %i.ee, %bb.i ], [ 0, %bb.h ]
  store i8 %i.ef, ptr %16, align 1, !tbaa !28
  %i.eg = fmul contract float %i.dc, 2.550000e+02
  %i.eh = fadd contract float %i.eg, 1.280000e+02
  %i.ei = fadd contract float %i.eh, 5.000000e-01 ; 3 uses
  %i.ej = fcmp contract olt float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = fcmp contract ogt float %i.ei, 2.550000e+02
  %i.el = select contract i1 %i.ek, float 2.550000e+02, float %i.ei
  %i.em = fptoui float %i.el to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.en = phi i8 [ %i.em, %bb.k ], [ 0, %bb.j ]
  store i8 %i.en, ptr %i.ar, align 1, !tbaa !28
  %i.eo = fmul contract float %i.dd, 2.550000e+02
  %i.ep = fadd contract float %i.eo, 1.280000e+02
  %i.eq = fadd contract float %i.ep, 5.000000e-01 ; 3 uses
  %i.er = fcmp contract olt float %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.es = fcmp contract ogt float %i.eq, 2.550000e+02
  %i.et = select contract i1 %i.es, float 2.550000e+02, float %i.eq
  %i.eu = fptoui float %i.et to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ev = phi i8 [ %i.eu, %bb.m ], [ 0, %bb.l ]
  store i8 %i.ev, ptr %i.au, align 1, !tbaa !28
  %i.ew = add nuw nsw i64 %.0131218, 1            ; 2 uses
  %i.ex = load i32, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.ey = lshr i32 %i.ex, 1
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = icmp samesign ult i64 %i.ew, %i.ez
  br i1 %i.fa, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8ultrahdr15transformYuv444EP14uhdr_raw_imageRKSt5arrayIfLm9EE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i32, ptr %i.c, align 8, !tbaa !42
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.b, %.preheader.lr.ph ], [ %i.s, %._crit_edge ]
  %i.r = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.t, %._crit_edge ]
  %.053 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %.not55 = icmp eq i32 %i.r, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge54:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre56 = load i32, ptr %i.a, align 4, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.s = phi i32 [ %.pre56, %._crit_edge.loopexit ], [ %i.q, %.preheader ] ; 2 uses
  %i.t = phi i32 [ %i.cj, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.u = add nuw nsw i64 %.053, 1                 ; 2 uses
  %i.v = zext i32 %i.s to i64
  %i.w = icmp samesign ult i64 %i.u, %i.v
  br i1 %i.w, label %.preheader, label %._crit_edge54, !llvm.loop !45

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.04852 = phi i64 [ %i.ci, %bb.g ], [ 0, %.preheader ] ; 4 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.y = load i32, ptr %i.e, align 8, !tbaa !3
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !3
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul i64 %.053, %i.z
  %i.ah = mul i64 %.053, %i.ac
  %i.ai = mul i64 %.053, %i.af
  %i.aj = getelementptr i8, ptr %i.x, i64 %.04852
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ag  ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !28
  %i.am = getelementptr i8, ptr %i.aa, i64 %.04852
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ah  ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = getelementptr i8, ptr %i.ad, i64 %.04852
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ai  ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28
  %i.as = uitofp i8 %i.al to float
  %i.at = fmul nnan contract float %i.as, f0x3B808081 ; 3 uses
  %3 = zext i8 %i.ao to i32
  %4 = add nsw i32 %3, -128
  %5 = sitofp i32 %4 to float
  %6 = fmul nnan contract float %5, f0x3B808081   ; 3 uses
  %7 = zext i8 %i.ar to i32
  %8 = add nsw i32 %7, -128
  %9 = sitofp i32 %8 to float
  %10 = fmul nnan contract float %9, f0x3B808081  ; 3 uses
  %11 = load float, ptr %1, align 4, !tbaa !13
  %12 = fmul contract float %i.at, %11
  %13 = load float, ptr %i.j, align 4, !tbaa !13
  %14 = fmul contract float %13, %6
  %15 = fadd contract float %12, %14
  %16 = load float, ptr %2, align 4, !tbaa !13
  %17 = fmul contract float %16, %10
  %i.au = fadd contract float %15, %17
  %i.av = load float, ptr %i.k, align 4, !tbaa !13
  %i.aw = fmul contract float %i.at, %i.av
  %i.ax = load float, ptr %i.l, align 4, !tbaa !13
  %i.ay = fmul contract float %6, %i.ax
  %i.az = fadd contract float %i.aw, %i.ay
  %i.ba = load float, ptr %i.m, align 4, !tbaa !13
  %i.bb = fmul contract float %10, %i.ba
  %i.bc = fadd contract float %i.az, %i.bb
  %i.bd = load float, ptr %i.n, align 4, !tbaa !13
  %i.be = fmul contract float %i.at, %i.bd
  %i.bf = load float, ptr %i.o, align 4, !tbaa !13
  %i.bg = fmul contract float %6, %i.bf
  %i.bh = fadd contract float %i.be, %i.bg
  %i.bi = load float, ptr %i.p, align 4, !tbaa !13
  %i.bj = fmul contract float %10, %i.bi
  %i.bk = fadd contract float %i.bh, %i.bj
  %i.bl = fmul contract float %i.au, 2.550000e+02
  %i.bm = fadd contract float %i.bl, 5.000000e-01 ; 3 uses
  %i.bn = fcmp contract olt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.bo = fcmp contract ogt float %i.bm, 2.550000e+02
  %i.bp = select contract i1 %i.bo, float 2.550000e+02, float %i.bm
  %i.bq = fptoui float %i.bp to i8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.br = phi i8 [ %i.bq, %bb.b ], [ 0, %.lr.ph ]
  store i8 %i.br, ptr %i.ak, align 1, !tbaa !28
  %i.bs = fmul contract float %i.bc, 2.550000e+02
  %i.bt = fadd contract float %i.bs, 1.280000e+02
  %i.bu = fadd contract float %i.bt, 5.000000e-01 ; 3 uses
  %i.bv = fcmp contract olt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = fcmp contract ogt float %i.bu, 2.550000e+02
  %i.bx = select contract i1 %i.bw, float 2.550000e+02, float %i.bu
  %i.by = fptoui float %i.bx to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bz = phi i8 [ %i.by, %bb.d ], [ 0, %bb.c ]
  store i8 %i.bz, ptr %i.an, align 1, !tbaa !28
  %i.ca = fmul contract float %i.bk, 2.550000e+02
  %i.cb = fadd contract float %i.ca, 1.280000e+02
  %i.cc = fadd contract float %i.cb, 5.000000e-01 ; 3 uses
  %i.cd = fcmp contract olt float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = fcmp contract ogt float %i.cc, 2.550000e+02
  %i.cf = select contract i1 %i.ce, float 2.550000e+02, float %i.cc
  %i.cg = fptoui float %i.cf to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ch = phi i8 [ %i.cg, %bb.f ], [ 0, %bb.e ]
  store i8 %i.ch, ptr %i.aq, align 1, !tbaa !28
  %i.ci = add nuw nsw i64 %.04852, 1              ; 2 uses
  %i.cj = load i32, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %i.ci, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef zeroext i8 @_ZN8ultrahdr10encodeGainEffPNS_25uhdr_gainmap_metadata_extEi(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = sext i32 %3 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !13 ; 3 uses
  %i.e = fpext contract float %i.d to double
  %i.f = tail call contract double @log2(double noundef %i.e) #35, !tbaa !3
  %i.g = fptrunc contract double %i.f to float    ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.b
  %i.i = load float, ptr %i.h, align 4, !tbaa !13 ; 3 uses
  %i.j = fpext contract float %i.i to double
  %i.k = tail call contract double @log2(double noundef %i.j) #35, !tbaa !3
  %i.l = fptrunc contract double %i.k to float
  %i.m = fcmp contract ogt float %0, 0.000000e+00
  %i.n = fdiv contract float %1, %0
  %.0.i = select i1 %i.m, float %i.n, float 1.000000e+00 ; 2 uses
  %i.o = fcmp contract olt float %.0.i, %i.d
  %.1.i = select i1 %i.o, float %i.d, float %.0.i ; 2 uses
  %i.p = fcmp contract ogt float %.1.i, %i.i
  %.2.i = select i1 %i.p, float %i.i, float %.1.i
  %i.q = fpext contract float %.2.i to double
  %i.r = tail call contract double @log2(double noundef %i.q) #35, !tbaa !3
  %i.s = fpext contract float %i.g to double
  %i.t = fsub contract double %i.r, %i.s
  %i.u = fsub contract float %i.l, %i.g
  %i.v = fpext contract float %i.u to double
  %i.w = fdiv contract double %i.t, %i.v
  %i.x = fptrunc contract double %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.b
  %i.aa = load float, ptr %i.z, align 4, !tbaa !13
  %i.ab = tail call contract float @powf(float noundef %i.x, float noundef %i.aa) #35, !tbaa !3
  %i.ac = fmul contract float %i.ab, 2.550000e+02
  %i.ad = fptoui float %i.ac to i8
  ret i8 %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef zeroext i8 @_ZN8ultrahdr10encodeGainEffPNS_25uhdr_gainmap_metadata_extEffi(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #19 {
bb.a:
  %i.a = fcmp contract ogt float %0, 0.000000e+00
  %i.b = fdiv contract float %1, %0
  %.0 = select i1 %i.a, float %i.b, float 1.000000e+00 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = sext i32 %5 to i64                       ; 3 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !13 ; 2 uses
  %i.g = fcmp contract olt float %.0, %i.f
  %.1 = select i1 %i.g, float %i.f, float %.0     ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d
  %i.i = load float, ptr %i.h, align 4, !tbaa !13 ; 2 uses
  %i.j = fcmp contract ogt float %.1, %i.i
  %.2 = select i1 %i.j, float %i.i, float %.1
  %i.k = fpext contract float %.2 to double
  %i.l = tail call contract double @log2(double noundef %i.k) #35, !tbaa !3
  %i.m = fpext contract float %3 to double
  %i.n = fsub contract double %i.l, %i.m
  %i.o = fsub contract float %4, %3
  %i.p = fpext contract float %i.o to double
  %i.q = fdiv contract double %i.n, %i.p
  %i.r = fptrunc contract double %i.q to float
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.d
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  %i.v = tail call contract float @powf(float noundef %i.r, float noundef %i.u) #35, !tbaa !3
  %i.w = fmul contract float %i.v, 2.550000e+02
  %i.x = fptoui float %i.w to i8
  ret i8 %i.x
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef float @_ZN8ultrahdr11computeGainEff(float noundef %0, float noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = fadd contract float %1, 1.000000e-07
  %i.b = fadd contract float %0, 1.000000e-07
  %i.c = fdiv contract float %i.a, %i.b
  %i.d = fpext contract float %i.c to double
  %i.e = tail call contract double @log2(double noundef %i.d) #35, !tbaa !3 ; 2 uses
  %i.f = fptrunc contract double %i.e to float
  %i.g = fcmp contract olt float %0, f0x3C008081
  %i.h = fcmp contract ogt double %i.e, f0x400266666FFFFFFF
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  %.0 = select i1 %i.i, float 2.300000e+00, float %i.f
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef zeroext i8 @_ZN8ultrahdr13affineMapGainEffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = fsub contract float %0, %1
  %i.b = fsub contract float %2, %1
  %i.c = fdiv contract float %i.a, %i.b           ; 2 uses
  %i.d = fcmp contract une float %3, 1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fpext contract float %i.c to double
  %i.f = fpext contract float %3 to double
  %i.g = tail call contract double @pow(double noundef %i.e, double noundef %i.f) #35, !tbaa !3
  %i.h = fptrunc contract double %i.g to float
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  %i.i = fmul contract float %.0, 2.550000e+02
  %i.j = fadd contract float %i.i, 5.000000e-01   ; 3 uses
  %i.k = fcmp contract olt float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp contract ogt float %i.j, 2.550000e+02
  %i.m = select contract i1 %i.l, float 2.550000e+02, float %i.j
  %i.n = fptoui float %i.m to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi i8 [ %i.n, %bb.d ], [ 0, %bb.c ]
  ret i8 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, float } @_ZN8ultrahdr9applyGainENS_5ColorEfPNS_25uhdr_gainmap_metadata_extE(<2 x float> %0, float %1, float noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  %i.c = fcmp contract une float %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fpext contract float %2 to double
  %i.e = fdiv contract float 1.000000e+00, %i.b
  %i.f = fpext contract float %i.e to double
  %i.g = tail call contract double @pow(double noundef %i.d, double noundef %i.f) #35, !tbaa !3
  %i.h = fptrunc contract double %i.g to float
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.h, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !13
end_hunk_1
