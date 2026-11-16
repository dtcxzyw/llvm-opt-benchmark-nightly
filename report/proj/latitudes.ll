Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/latitudes?download=true
inline.NumInlined: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs = internal unnamed_addr constant [150 x double] [double 1.500000e+00, double -8.437500e-01, double f0x3FE0D00000000000, double 1.312500e+00, double -1.718750e+00, double f0x3FFA670000000000, double f0x3FF92AAAAAAAAAAB, double f0xC00A100000000000, double f0x4001240000000000, double f0xC018493333333333, double f0x400908CCCCCCCCCD, double f0x401319E222222222, double 2.000000e+00, double f0xBFE5555555555555, double -2.000000e+00, double f0x40049F49F49F49F5, double f0x3FE27D27D27D27D2, double f0xC010E99FAB0BC1CD, double f0x4002AAAAAAAAAAAB, double -1.600000e+00, double f0xC0142D82D82D82D8, double f0x40212B12B12B12B1, double f0x4003AA6550FFBAA6, double f0x400DDDDDDDDDDDDE, double f0xC00F15F15F15F15F, double f0xC02809C09C09C09C, double f0x403A0964247B2B41, double f0x401B2B12B12B12B1, double f0xC022F8AF8AF8AF8B, double f0xC03C30419802BEC0, double f0x402A806806806807, double f0xC03738EE102C002A, double f0x403B02E279A969F9, double f0x3FF5555555555555, double f0x3FB6C16C16C16C17, double f0xBFDD41D41D41D41D, double f0xBFC750BF008F52EA, double f0x3FC07492BFF2EF7F, double f0x3FC0E834194A476B, double f0x3FF05B05B05B05B0, double f0x3FC4969EBF41496A, double f0xBFEB0360910EC147, double f0xBFD9E0D7756AED2E, double f0x3FD93085F57C9427, double f0x3FF12DF66D9FBD8A, double f0x3FD12A7EBEAD56EC, double f0xBFF69975504EA408, double f0xBFE9B835B4F783F4, double f0x3FF4846A68C8AEAD, double f0x3FDC18D0343B4A9A, double f0xC002736A9EB0D70F, double f0x3FFA474180556453, double f0x3FE6D991D61421AF, double f0x400195DBA2D55C0A, double -1.500000e+00, double 5.625000e-01, double -9.375000e-02, double 9.375000e-01, double -4.687500e-01, double f0x3FB0E00000000000, double f0xBFE7555555555555, double f0x3FDA400000000000, double f0x3FE3B00000000000, double f0xBFD7A00000000000, double f0xBFE1533333333333, double f0x3FDF480000000000, double 5.000000e-01, double f0xBFE5555555555555, double 3.125000e-01, double f0x3FCD27D27D27D27D, double f0xBFDC38E38E38E38E, double f0x3FCAB88966744522, double f0x3FD1555555555555, double -6.000000e-01, double f0x3FD8C16C16C16C17, double f0x3FDC8BC8BC8BC8BD, double f0xBFF065BDE689133C, double f0x3FD0444444444444, double f0xBFE78AF8AF8AF8B0, double f0x3FE1EE04E04E04E0, double f0x3FED8F42BB48264A, double f0x3FD3AAC4AC4AC4AC, double f0xBFF10C30C30C30C3, double f0x3FED1B9C3C9BF742, double f0x3FDB900D00D00D01, double f0xBFFB687A9C599C3A, double f0x3FE5483BB3F52BAC, double -2.000000e+00, double f0x3FE5555555555555, double f0x3FF5555555555555, double f0xBFFD27D27D27D27D, double f0x3FE6C16C16C16C17, double f0x3FEF701923B45D68, double f0x3FFAAAAAAAAAAAAB, double f0xBFF1111111111111, double f0xBFF71C71C71C71C7, double f0x4006F56F56F56F57, double f0xBFF9C4F1A46F9C4F, double f0xBFFBBBBBBBBBBBBC, double f0x3FF9E79E79E79E7A, double 1.600000e+00, double f0xC011E62C9BAD490D, double f0x3FFF6A76A76A76A7, double -2.400000e+00, double f0xBFFC0770D212D188, double f0xC002A42A42A42A43, double f0x400C1D95E3B626B3, double f0x4006CC27333184CF, double -5.000000e-01, double f0x3FE5555555555555, double f0xBFD8AAAAAAAAAAAB, double f0x3F66C16C16C16C17, double f0x3FC4400000000000, double f0xBFC45C0D384AFC27, double f0xBF95555555555555, double f0xBFB1111111111111, double f0x3FD36C16C16C16C1, double f0xBFDC09C09C09C09C, double f0x3FD27F48DF389E35, double f0xBFA2222222222222, double f0x3FA68D68D68D68D7, double f0x3FA7E2BE2BE2BE2C, double f0xBFAF6E1352FC4C37, double f0xBF9BEADEADEADEAE, double f0x3F96596596596596, double f0x3FBD4926E2131B81, double f0xBF9D193193193193, double f0x3F9BEC43F034AB5F, double f0xBFA08DAAAB1643C0, double f0xBFF5555555555555, double f0xBFB6C16C16C16C17, double f0x3FD1E11E11E11E12, double f0x3FBD2616A5AE9F2E, double f0x3FA6CAF2FA00E84A, double f0xBF90241A4498D5ED, double f0x3FE82D82D82D82D8, double f0x3FB3813813813814, double f0xBFC669941C19EF22, double f0xBFB45AA819DEE156, double f0xBFADFE08FEABE236, double f0xBFE14ADBCA2E6A03, double f0xBFB037C4E86547C1, double f0x3FBE151A090CFFD5, double f0x3FAAD085645CA0A6, double f0x3FDB1F1E08A1F636, double f0x3FAACFDAD8C94DD5, double f0xBFB53B704AD739BD, double f0xBFD65E5ED483F39A, double f0xBFA638DE7D0E3AC2, double f0x3FD30DC26D7B3A61], align 16
@_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE4ptrs = internal unnamed_addr constant [37 x i32] [i32 0, i32 0, i32 0, i32 0, i32 12, i32 33, i32 54, i32 54, i32 54, i32 54, i32 54, i32 54, i32 54, i32 54, i32 54, i32 54, i32 54, i32 54, i32 54, i32 66, i32 66, i32 66, i32 66, i32 87, i32 87, i32 108, i32 108, i32 108, i32 129, i32 129, i32 129, i32 150, i32 150, i32 150, i32 150, i32 150, i32 150], align 16
@.str = private unnamed_addr constant [41 x i8] c"Bad specification for auxiliary latitude\00", align 1
@_ZTISt12out_of_range = external constant ptr
@.str.1 = private unnamed_addr constant [51 x i8] c"Unsupported conversion between auxiliary latitudes\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_Z16pj_conformal_latdPK8PJconsts(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load double, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @sin(double noundef %0) #12 ; 2 uses
  %i.e = tail call double @cos(double noundef %0) #12
  %i.f = fdiv double %i.d, %i.e
  %i.g = tail call double @asinh(double noundef %i.f) #12
  %i.h = fmul double %i.b, %i.d
  %i.i = tail call double @atanh(double noundef %i.h) #12
  %i.j = fneg double %i.b
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.i, double %i.g)
  %i.l = tail call double @sinh(double noundef %i.k) #12
  %i.m = tail call double @atan(double noundef %i.l) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.m, %bb.b ], [ %0, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atanh(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress uwtable
define hidden noundef double @_Z24pj_conformal_lat_inversedPK8PJconsts(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load double, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !44
  %i.e = tail call double @tan(double noundef %0) #12
  %i.f = tail call noundef double @_Z17pj_sinhpsi2tanphiP6pj_ctxdd(ptr noundef %i.d, double noundef %i.e, double noundef %i.b)
  %i.g = tail call double @atan(double noundef %i.f) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.g, %bb.b ], [ %0, %bb.a ]
  ret double %.0
}

declare noundef double @_Z17pj_sinhpsi2tanphiP6pj_ctxdd(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_Z17pj_authalic_lat_qdPK8PJconsts(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load double, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.c = fcmp ult double %i.b, f0x3E7AD7F29ABCAF48
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fmul double %0, %i.b                     ; 3 uses
  %i.e = fneg double %i.d
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.d, double 1.000000e+00) ; 2 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load double, ptr %i.h, align 8, !tbaa !39
  %i.j = tail call double @atanh(double noundef %i.d) #12
  %i.k = insertelement <2 x double> poison, double %0, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 1
  %i.m = insertelement <2 x double> poison, double %i.f, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.b, i64 1
  %i.o = fdiv <2 x double> %i.l, %i.n
  %i.p = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.o)
  %i.q = fmul double %i.i, %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = fmul double %0, 2.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi double [ %i.r, %bb.d ], [ %i.q, %bb.c ], [ +inf, %bb.b ]
  ret double %.1
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_Z30pj_authalic_lat_compute_coeffsd(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp olt double %i.a, 1.000000e-02       ; 2 uses
  %i.c = select i1 %i.b, i64 96, i64 48
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #13 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16pj_auxlat_coeffsd6AuxLatS_Pd(double noundef %0, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %i.d)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @_Z16pj_auxlat_coeffsd6AuxLatS_Pd(double noundef %0, i32 noundef 0, i32 noundef 5, ptr noundef nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret ptr %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z16pj_auxlat_coeffsd6AuxLatS_Pd(double noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond = icmp ult i32 %1, 6
  %i.a = icmp ult i32 %2, 6
  %or.cond5 = and i1 %or.cond, %i.a
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.d = mul nuw nsw i32 %2, 6
  %i.e = add nuw nsw i32 %i.d, %1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE4ptrs, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45   ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.n = insertelement <2 x double> poison, double %0, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = insertelement <2 x double> <double 1.000000e+00, double poison>, double %0, i64 1
  %i.q = fmul <2 x double> %i.o, %i.p             ; 6 uses
  %i.r = or i32 %2, %1
  %or.cond7 = icmp samesign ult i32 %i.r, 4
  %i.s = sext i32 %i.h to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.s ; 5 uses
  br i1 %or.cond7, label %_Z10pj_polyvaldPKdi.exit.5, label %_Z10pj_polyvaldPKdi.exit65.5

_Z10pj_polyvaldPKdi.exit.5:                       ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !40
  %i.w = add i32 %i.h, 3
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = load <2 x double>, ptr %i.t, align 8, !tbaa !40 ; 2 uses
  %i.ac = load <2 x double>, ptr %i.y, align 8, !tbaa !40 ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.aa, i64 1
  %4 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.af = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.af, <2 x double> %i.ag)
  %i.ai = shufflevector <2 x double> %i.ab, <2 x double> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.af, <2 x double> %i.ai)
  %i.ak = fmul <2 x double> %i.q, %i.aj
  store <2 x double> %i.ak, ptr %3, align 8, !tbaa !40
  %i.al = extractelement <2 x double> %i.q, i64 1
  %i.am = fmul double %0, %i.al                   ; 2 uses
  %i.an = add i32 %i.h, 6
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = fmul double %0, %i.am                   ; 2 uses
  %i.as = add i32 %i.h, 8
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.at
  %i.av = load <2 x double>, ptr %i.ap, align 8, !tbaa !40 ; 2 uses
  %i.aw = load <2 x double>, ptr %i.au, align 8, !tbaa !40 ; 2 uses
  %i.ax = shufflevector <2 x double> %i.av, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.ay = shufflevector <2 x double> %i.av, <2 x double> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %4, <2 x double> %i.ay)
  %i.ba = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ar, i64 1
  %i.bc = fmul <2 x double> %i.bb, %i.az
  store <2 x double> %i.bc, ptr %i.aq, align 8, !tbaa !40
  %i.bd = add i32 %i.h, 10
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !40
  %i.bh = fmul double %0, %i.ar                   ; 2 uses
  %i.bi = fmul double %i.bh, %i.bg
  br label %.loopexit

_Z10pj_polyvaldPKdi.exit65.5:                     ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %reass.sub = add i32 %i.h, 6
  %i.bl = sext i32 %reass.sub to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = extractelement <2 x double> %i.q, i64 1
  %i.bq = load <2 x double>, ptr %i.bj, align 8, !tbaa !40 ; 2 uses
  %i.br = load <2 x double>, ptr %i.bk, align 8, !tbaa !40 ; 2 uses
  %i.bs = load <2 x double>, ptr %i.t, align 8, !tbaa !40 ; 2 uses
  %i.bt = load double, ptr %i.bn, align 8, !tbaa !40
  %i.bu = shufflevector <2 x double> %i.bq, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bv = insertelement <2 x double> <double poison, double -0.000000e+00>, double %0, i64 0 ; 3 uses
  %i.bw = insertelement <2 x double> %i.bq, double %i.bt, i64 1
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bv, <2 x double> %i.bw)
  %i.by = load <2 x double>, ptr %i.bo, align 8, !tbaa !40 ; 2 uses
  %i.bz = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ca = shufflevector <2 x double> %i.br, <2 x double> %i.by, <2 x i32> <i32 1, i32 3>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bz, <2 x double> %i.ca)
  %i.cc = shufflevector <2 x double> %i.br, <2 x double> %i.by, <2 x i32> <i32 0, i32 2>
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.bz, <2 x double> %i.cc)
  %i.ce = load <2 x double>, ptr %i.bm, align 8, !tbaa !40 ; 2 uses
  %i.cf = shufflevector <2 x double> %i.bs, <2 x double> %i.ce, <2 x i32> <i32 1, i32 3>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.bz, <2 x double> %i.cf)
  %i.ch = shufflevector <2 x double> %i.bs, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bz, <2 x double> %i.ch)
  %i.cj = insertelement <2 x double> %i.q, double %0, i64 0
  %i.ck = fmul <2 x double> %i.cj, %i.ci
  store <2 x double> %i.ck, ptr %3, align 8, !tbaa !40
  %i.cl = add i32 %i.h, 11
  %i.cm = fmul double %0, %i.bp                   ; 2 uses
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cr = add i32 %i.h, 15
  %i.cs = fmul double %0, %i.cm                   ; 2 uses
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load <2 x double>, ptr %i.cp, align 8, !tbaa !40 ; 2 uses
  %i.cx = load <2 x double>, ptr %i.co, align 8, !tbaa !40 ; 2 uses
  %i.cy = load double, ptr %i.cv, align 8, !tbaa !40
  %i.cz = shufflevector <2 x double> %i.cw, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.da = insertelement <2 x double> %i.cw, double %i.cy, i64 1
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.bv, <2 x double> %i.da)
  %i.dc = load <2 x double>, ptr %i.cu, align 8, !tbaa !40 ; 2 uses
  %i.dd = shufflevector <2 x double> %i.cx, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.bz, <2 x double> %i.dd)
  %i.df = shufflevector <2 x double> %i.cx, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.bz, <2 x double> %i.df)
  %i.dh = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.cs, i64 1
  %i.dj = fmul <2 x double> %i.di, %i.dg
  store <2 x double> %i.dj, ptr %i.cq, align 8, !tbaa !40
  %i.dk = add i32 %i.h, 18
  %i.dl = fmul double %0, %i.cs                   ; 2 uses
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !40
  %i.dq = load double, ptr %i.dn, align 8, !tbaa !40
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dp, double %0, double %i.dq)
  %i.ds = fmul double %i.dl, %i.dr
  br label %.loopexit

.loopexit:                                        ; preds = %_Z10pj_polyvaldPKdi.exit65.5, %_Z10pj_polyvaldPKdi.exit.5
  %.sink93 = phi double [ %i.ds, %_Z10pj_polyvaldPKdi.exit65.5 ], [ %i.bi, %_Z10pj_polyvaldPKdi.exit.5 ]
  %.sink92 = phi i32 [ 20, %_Z10pj_polyvaldPKdi.exit65.5 ], [ 11, %_Z10pj_polyvaldPKdi.exit.5 ]
  %.sink = phi double [ %i.dl, %_Z10pj_polyvaldPKdi.exit65.5 ], [ %i.bh, %_Z10pj_polyvaldPKdi.exit.5 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %.sink93, ptr %i.dt, align 8, !tbaa !40
  %i.du = add i32 %i.h, %.sink92
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr @_ZZ16pj_auxlat_coeffsd6AuxLatS_PdE6coeffs, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !40
  %i.dy = fmul double %0, %.sink
  %i.dz = fmul double %i.dy, %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %i.dz, ptr %i.ea, align 8, !tbaa !40
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink95 = phi ptr [ %i.l, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink95) #12
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef double @_Z15pj_authalic_latdddPKdPK8PJconstsd(double noundef %0, double noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.b = load double, ptr %i.a, align 8, !tbaa !41
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp olt double %i.c, 1.000000e-02
  br i1 %i.d, label %.lr.ph.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = fsub double %2, %1
  %i.g = fmul double %i.f, 2.000000e+00
  %i.h = fadd double %1, %2
  %i.i = fmul double %i.h, %i.g                   ; 6 uses
  %i.j = fmul double %i.i, 0.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.l = load double, ptr %i.k, align 8, !tbaa !40
  %i.m = fadd double %i.j, %i.l                   ; 2 uses
  %i.n = fmul double %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = load double, ptr %i.o, align 8, !tbaa !40
  %i.q = fadd double %i.n, %i.p                   ; 2 uses
  %i.r = fneg double %i.m
  %i.s = tail call double @llvm.fmuladd.f64(double %i.i, double %i.q, double %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !40
  %i.v = fadd double %i.s, %i.u                   ; 2 uses
  %i.w = fneg double %i.q
  %i.x = tail call double @llvm.fmuladd.f64(double %i.i, double %i.v, double %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.z = load double, ptr %i.y, align 8, !tbaa !40
  %i.aa = fadd double %i.x, %i.z                  ; 2 uses
  %i.ab = fneg double %i.v
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.i, double %i.aa, double %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !40
  %i.af = fadd double %i.ac, %i.ae
  %i.ag = fneg double %i.aa
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.i, double %i.af, double %i.ag)
  %i.ai = load double, ptr %i.e, align 8, !tbaa !40
  %i.aj = fadd double %i.ah, %i.ai
  %i.ak = fmul double %1, 2.000000e+00
  %i.al = fmul double %i.ak, %2
  %i.am = fmul double %i.al, %i.aj
  %i.an = fadd double %0, %i.am
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !38 ; 3 uses
  %i.aq = fcmp ult double %i.ap, f0x3E7AD7F29ABCAF48
  br i1 %i.aq, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = fmul double %1, %i.ap                   ; 3 uses
  %i.as = fneg double %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double 1.000000e+00) ; 2 uses
  %i.au = fcmp oeq double %i.at, 0.000000e+00
  br i1 %i.au, label %_Z17pj_authalic_lat_qdPK8PJconsts.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.aw = load double, ptr %i.av, align 8, !tbaa !39
  %i.ax = tail call double @atanh(double noundef %i.ar) #12
  %i.ay = insertelement <2 x double> poison, double %1, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ap, i64 1
  %i.bc = fdiv <2 x double> %i.az, %i.bb
  %i.bd = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bc)
  %i.be = fmul double %i.aw, %i.bd
  br label %_Z17pj_authalic_lat_qdPK8PJconsts.exit

bb.e:                                             ; preds = %bb.b
  %i.bf = fmul double %1, 2.000000e+00
  br label %_Z17pj_authalic_lat_qdPK8PJconsts.exit

_Z17pj_authalic_lat_qdPK8PJconsts.exit:           ; preds = %bb.c, %bb.d, %bb.e
  %.1.i = phi double [ %i.bf, %bb.e ], [ %i.be, %bb.d ], [ +inf, %bb.c ]
  %i.bg = fdiv double %.1.i, %5                   ; 3 uses
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, 1.000000e+00
  %i.bj = fcmp ogt double %i.bg, 0.000000e+00
  %i.bk = select i1 %i.bj, double 1.000000e+00, double -1.000000e+00
  %.0 = select i1 %i.bi, double %i.bk, double %i.bg
  %i.bl = tail call double @asin(double noundef %.0) #12
  br label %bb.f

bb.f:                                             ; preds = %_Z17pj_authalic_lat_qdPK8PJconsts.exit, %.lr.ph.i.i
  %.013 = phi double [ %i.an, %.lr.ph.i.i ], [ %i.bl, %_Z17pj_authalic_lat_qdPK8PJconsts.exit ]
  ret double %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_Z17pj_auxlat_convertdddPKdi(double noundef %0, double noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
end_hunk_0
