inline.NumInlined: 94
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu", target_cpu: "icelake-server")
    ".globl _ZSt21ios_base_library_initv"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }
%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct.dt_introspection_type_float_t = type { %struct.dt_introspection_type_header_t, float, float, float }
%struct.dt_introspection_type_header_t = type { i32, ptr, ptr, ptr, ptr, i64, i64, ptr }
%struct.dt_introspection_type_struct_t = type { %struct.dt_introspection_type_header_t, i64, ptr }
%class.PermutohedralLattice = type { i64, i64, ptr, ptr, ptr, ptr }
%"struct.HashTablePermutohedral<5, 4>::Key" = type <{ i32, [5 x i16], [2 x i8] }>

$_ZN20PermutohedralLatticeILi5ELi4EEC2Emmm = comdat any

$_ZNK20PermutohedralLatticeILi5ELi4EE5splatEPfS1_mi = comdat any

$_ZN20PermutohedralLatticeILi5ELi4EE19merge_splat_threadsEv = comdat any

$_ZNK20PermutohedralLatticeILi5ELi4EE4blurEv = comdat any

$_ZNK20PermutohedralLatticeILi5ELi4EE5sliceEPfm = comdat any

$_ZN20PermutohedralLatticeILi5ELi4EED2Ev = comdat any

$_ZN22HashTablePermutohedralILi5ELi4EE7setSizeEm = comdat any

$_ZN22HashTablePermutohedralILi5ELi4EE9growExactEm = comdat any

@.str = private unnamed_addr constant [13 x i8] c"surface blur\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"denoise (bilateral filter)\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"apply edge-aware surface blur\0Ato denoise or smoothen textures\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"corrective and creative\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"linear, RGB, scene-referred\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"linear, RGB\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"image too large\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"this module is unable to process\0Aimages with more than 2 gigapixels.\0Aprocessing has been skipped.\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"image too large, processing skipped\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.9 = private unnamed_addr constant [87 x i8] c"[bilateral tiling requirements] tiling factor=%f, npixels=%lu, estimated hashbytes=%lu\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"spatial extent of the gaussian\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"how much to blur red\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"how much to blur green\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"how much to blur blue\00", align 1
@_ZL13introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.21, i64 20, ptr getelementptr (i8, ptr @_ZL20introspection_linear, i64 440), i64 1120, i64 688 }, align 8
@_ZZ18introspection_initE2f5 = internal global [6 x ptr] [ptr @_ZL20introspection_linear, ptr getelementptr (i8, ptr @_ZL20introspection_linear, i64 88), ptr getelementptr (i8, ptr @_ZL20introspection_linear, i64 176), ptr getelementptr (i8, ptr @_ZL20introspection_linear, i64 264), ptr getelementptr (i8, ptr @_ZL20introspection_linear, i64 352), ptr null], align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"dt_iop_bilateral_params_t\00", align 1
@_ZL20introspection_linear = internal global <{ { %struct.dt_introspection_type_float_t, [8 x i8] }, { %struct.dt_introspection_type_float_t, [8 x i8] }, { %struct.dt_introspection_type_float_t, [8 x i8] }, { %struct.dt_introspection_type_float_t, [8 x i8] }, { %struct.dt_introspection_type_float_t, [8 x i8] }, { %struct.dt_introspection_type_struct_t, [8 x i8] }, { %struct.dt_introspection_type_header_t, [24 x i8] } }> <{ { %struct.dt_introspection_type_float_t, [8 x i8] } { %struct.dt_introspection_type_float_t { %struct.dt_introspection_type_header_t { i32 2, ptr @.str.19, ptr @.str.10, ptr @.str.10, ptr @.str.20, i64 4, i64 0, ptr null }, float 1.000000e+00, float 5.000000e+01, float 1.500000e+01 }, [8 x i8] undef }, { %struct.dt_introspection_type_float_t, [8 x i8] } { %struct.dt_introspection_type_float_t { %struct.dt_introspection_type_header_t { i32 2, ptr @.str.19, ptr @.str.18, ptr @.str.18, ptr @.str.20, i64 4, i64 4, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 1.500000e+01 }, [8 x i8] undef }, { %struct.dt_introspection_type_float_t, [8 x i8] } { %struct.dt_introspection_type_float_t { %struct.dt_introspection_type_header_t { i32 2, ptr @.str.19, ptr @.str.12, ptr @.str.12, ptr @.str.20, i64 4, i64 8, ptr null }, float f0x38D1B717, float 1.000000e+00, float 5.000000e-03 }, [8 x i8] undef }, { %struct.dt_introspection_type_float_t, [8 x i8] } { %struct.dt_introspection_type_float_t { %struct.dt_introspection_type_header_t { i32 2, ptr @.str.19, ptr @.str.14, ptr @.str.14, ptr @.str.20, i64 4, i64 12, ptr null }, float f0x38D1B717, float 1.000000e+00, float 5.000000e-03 }, [8 x i8] undef }, { %struct.dt_introspection_type_float_t, [8 x i8] } { %struct.dt_introspection_type_float_t { %struct.dt_introspection_type_header_t { i32 2, ptr @.str.19, ptr @.str.16, ptr @.str.16, ptr @.str.20, i64 4, i64 16, ptr null }, float f0x38D1B717, float 1.000000e+00, float 5.000000e-03 }, [8 x i8] undef }, { %struct.dt_introspection_type_struct_t, [8 x i8] } { %struct.dt_introspection_type_struct_t { %struct.dt_introspection_type_header_t { i32 17, ptr @.str.21, ptr @.str.20, ptr @.str.20, ptr @.str.20, i64 20, i64 0, ptr null }, i64 5, ptr null }, [8 x i8] undef }, { %struct.dt_introspection_type_header_t, [24 x i8] } { %struct.dt_introspection_type_header_t zeroinitializer, [24 x i8] undef } }>, align 16
@.str.23 = private unnamed_addr constant [202 x i8] c"[permutohedral] hash tables %lu bytes (%lu initially), %lu entries, [permutohedral] tables grew %lu times, replay using %lu bytes for %lu pixels, [permutohedral] fill factor %f%%, remap using %lu bytes\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"[permutohedral] blur using %lu bytes for newValue\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @gettext(ptr noundef nonnull @.str) #17
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define ptr @aliases() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @gettext(ptr noundef nonnull @.str.1) #17
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @gettext(ptr noundef nonnull @.str.2) #17
  %i.b = tail call ptr @gettext(ptr noundef nonnull @.str.3) #17
  %i.c = tail call ptr @gettext(ptr noundef nonnull @.str.4) #17
  %i.d = tail call ptr @gettext(ptr noundef nonnull @.str.5) #17
  %i.e = tail call ptr @gettext(ptr noundef nonnull @.str.4) #17
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [196 x float], align 16           ; 3 uses
  %6 = alloca %class.PermutohedralLattice, align 8 ; 10 uses
  %i.b = alloca [5 x float], align 16             ; 8 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.f, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32   ; 7 uses
  %i.j = sext i32 %i.i to i64                     ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 5 uses
  %i.n = mul nsw i64 %i.m, %i.j                   ; 4 uses
  %i.o = icmp ugt i64 %i.n, 2147483647
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @gettext(ptr noundef nonnull @.str.6) #17
  %i.q = tail call ptr @gettext(ptr noundef nonnull @.str.7) #17
  tail call void @dt_iop_set_module_trouble_message(ptr noundef %0, ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull @.str.8)
  %i.r = load i32, ptr %i.h, align 4, !tbaa !32
  %i.s = sext i32 %i.r to i64
  %i.t = load i32, ptr %i.k, align 4, !tbaa !33
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.s, 2
  %i.w = mul i64 %i.v, %i.u
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.w)
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  tail call void @dt_iop_set_module_trouble_message(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !34  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !36
  %i.ad = load <2 x float>, ptr %i.y, align 4, !tbaa !37
  %i.ae = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !37 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !37 ; 4 uses
  %i.ao = extractelement <2 x float> %i.aj, i64 0
  %i.ap = extractelement <2 x float> %i.aj, i64 1
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ao, float %i.ap) ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.aq, 1.000000e-01
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr %i.h, align 4, !tbaa !32
  %i.at = sext i32 %i.as to i64
  %i.au = load i32, ptr %i.k, align 4, !tbaa !33
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.at, 2
  %i.ax = mul i64 %i.aw, %i.av
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ax)
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aq, 3.000000e+00
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, 1.000000e+00
  %i.ba = fptosi float %i.az to i32               ; 4 uses
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !32  ; 2 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !33  ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bc)
  %i.bd = shl nsw i32 %i.ba, 1
  %i.be = sub nsw i32 %., %i.bd                   ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.ba) ; 16 uses
  %i.bf = icmp slt i32 %spec.select, 1
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !38
  %i.bi = getelementptr i8, ptr %i.bh, i64 644
  %.val = load i32, ptr %i.bi, align 4, !tbaa !39
  %i.bj = and i32 %.val, 8
  %i.bk = icmp samesign ult i32 %spec.select, 7   ; 2 uses
  %i.bl = icmp ne i32 %i.bj, 0
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bm = sext i32 %i.bb to i64
  %i.bn = sext i32 %i.bc to i64
  %i.bo = shl nsw i64 %i.bm, 2
  %i.bp = mul i64 %i.bo, %i.bn
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.bp)
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  br i1 %i.bk, label %.preheader273.lr.ph, label %.preheader276.preheader

.preheader276.preheader:                          ; preds = %bb.i
  %i.bq = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aj ; 2 uses
  %i.br = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x float> %i.br, float %i.al, i64 0
  %i.bt = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bs ; 3 uses
  %i.bu = extractelement <2 x float> %i.an, i64 1
  %i.bv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bu ; 2 uses
  %i.bw = uitofp reassoc nsz arcp contract afn i64 %i.m to float
  %i.bx = uitofp reassoc nsz arcp contract afn i64 %i.j to float
  %i.by = fmul reassoc nnan nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.by, %i.bz
  %i.cb = extractelement <2 x float> %i.bq, i64 1 ; 2 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.ca, %i.cb
  %i.cd = extractelement <2 x float> %i.bt, i64 0
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cc, %i.cd
  %i.cf = extractelement <2 x float> %i.bt, i64 1
  %i.cg = fmul reassoc nsz arcp contract afn float %i.ce, %i.cf
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.bv
  %i.ci = fptoui float %i.ch to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN20PermutohedralLatticeILi5ELi4EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %i.n, i64 noundef 1, i64 noundef %i.ci)
  %.not333 = icmp eq i32 %i.l, 0
  br i1 %.not333, label %._crit_edge283.split, label %.lr.ph282

.preheader273.lr.ph:                              ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.cj = shl nuw nsw i32 %spec.select, 1
  %i.ck = or disjoint i32 %i.cj, 1                ; 4 uses
  %i.cl = mul nuw nsw i32 %i.ck, %spec.select
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cm
  %i.co = zext nneg i32 %spec.select to i64       ; 7 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co ; 3 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.al, %i.al
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.an, %i.an
  %i.cs = sub nsw i32 0, %spec.select             ; 3 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, %i.aj ; 3 uses
  %i.ct = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cu = sext i32 %i.cs to i64                   ; 8 uses
  %i.cv = add nuw nsw i32 %spec.select, 1         ; 2 uses
  %i.cw = zext nneg i32 %i.ck to i64
  %i.cx = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.be)
  %i.cy = add i32 %spec.select, %i.cx             ; 3 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cy, 3
  %min.iters.check439 = icmp ult i32 %i.cy, 31
  %i.db = and i64 %i.da, 28
  %n.vec = and i64 %i.da, 8589934560              ; 4 uses
  %i.dc = add nsw i64 %n.vec, %i.cu               ; 2 uses
  %broadcast.splat441 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert442 = insertelement <8 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat443 = shufflevector <8 x i64> %broadcast.splatinsert442, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat443, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.dd = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat441
  %i.de = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat441
  %i.df = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat441
  %i.dg = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat441
  %cmp.n = icmp eq i64 %i.da, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.db, 0
  %n.vec449 = and i64 %i.da, 8589934588           ; 3 uses
  %i.dh = add nsw i64 %n.vec449, %i.cu
  %broadcast.splat453 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %i.di = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat453
  %cmp.n462 = icmp eq i64 %i.da, %n.vec449
  %i.dj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ct
  br label %iter.check

iter.check:                                       ; preds = %.preheader273.lr.ph, %._crit_edge292
  %indvars.iv349 = phi i64 [ %i.cu, %.preheader273.lr.ph ], [ %indvars.iv.next350, %._crit_edge292 ] ; 4 uses
  %.0233295 = phi float [ 0.000000e+00, %.preheader273.lr.ph ], [ %.lcssa438, %._crit_edge292 ] ; 3 uses
  %i.dk = mul nsw i64 %indvars.iv349, %indvars.iv349 ; 3 uses
  %i.dl = mul nsw i64 %indvars.iv349, %i.cw
  %invariant.gep = getelementptr [4 x i8], ptr %i.cp, i64 %i.dl ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check439, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dm = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0233295, i64 0
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.dk, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep520 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x float> [ %i.dm, %vector.ph ], [ %i.ew, %vector.body ]
  %vec.phi444 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ex, %vector.body ]
  %vec.phi445 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi446 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %step.add.2 = add nsw <8 x i64> %vec.ind, splat (i64 16) ; 2 uses
  %step.add.3 = add nsw <8 x i64> %vec.ind, splat (i64 24) ; 2 uses
  %i.dn = mul nsw <8 x i64> %vec.ind, %vec.ind
  %i.do = mul nsw <8 x i64> %step.add, %step.add
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.ib = or disjoint i64 %i.ia, 12               ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ib
  %.val263.3 = load <4 x float>, ptr %i.id, align 16, !tbaa !85
  store <4 x float> %.val263.3, ptr %i.ic, align 16, !tbaa !85, !alias.scope !86, !nontemporal !89
  %i.ie = shl i64 %.0225304, 2
  %i.if = or disjoint i64 %i.ie, 16               ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.if
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.if
  %.val263.4 = load <4 x float>, ptr %i.ih, align 16, !tbaa !85
  store <4 x float> %.val263.4, ptr %i.ig, align 16, !tbaa !85, !alias.scope !86, !nontemporal !89
  %i.ii = shl i64 %.0225304, 2
  %i.ij = or disjoint i64 %i.ii, 20               ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ij
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ij
  %.val263.5 = load <4 x float>, ptr %i.il, align 16, !tbaa !85
  store <4 x float> %.val263.5, ptr %i.ik, align 16, !tbaa !85, !alias.scope !86, !nontemporal !89
  %i.im = shl i64 %.0225304, 2
  %i.in = or disjoint i64 %i.im, 24               ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.in
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.in
  %.val263.6 = load <4 x float>, ptr %i.ip, align 16, !tbaa !85
  store <4 x float> %.val263.6, ptr %i.io, align 16, !tbaa !85, !alias.scope !86, !nontemporal !89
  %i.iq = shl i64 %.0225304, 2
  %i.ir = or disjoint i64 %i.iq, 28               ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ir
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ir
  %.val263.7 = load <4 x float>, ptr %i.it, align 16, !tbaa !85
  store <4 x float> %.val263.7, ptr %i.is, align 16, !tbaa !85, !alias.scope !86, !nontemporal !89
  %i.iu = add nuw i64 %.0225304, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit499.unr-lcssa, label %.lr.ph305, !llvm.loop !90

.preheader266:                                    ; preds = %.preheader267.5, %.preheader267.4, %.preheader267.3, %.preheader267.2, %.preheader267.1, %.preheader267
  %.lcssa = phi ptr [ %i.iv, %.preheader267 ], [ %i.ix, %.preheader267.1 ], [ %i.iz, %.preheader267.2 ], [ %i.jb, %.preheader267.3 ], [ %i.jd, %.preheader267.4 ], [ %i.jf, %.preheader267.5 ] ; 2 uses
  br i1 %i.hb, label %.preheader.preheader, label %.preheader265

.preheader267:                                    ; preds = %bb.j
  %.0226.val = load <4 x float>, ptr %i.hm, align 16, !tbaa !85
  store <4 x float> %.0226.val, ptr %i.hn, align 16, !tbaa !85, !alias.scope !91, !nontemporal !89
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  br i1 %exitcond365.not, label %.preheader266, label %.preheader267.1

.preheader267.1:                                  ; preds = %.preheader267
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %.0226.val.1 = load <4 x float>, ptr %i.iv, align 16, !tbaa !85
  store <4 x float> %.0226.val.1, ptr %i.iw, align 16, !tbaa !85, !alias.scope !91, !nontemporal !89
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 2 uses
  br i1 %exitcond365.not.1, label %.preheader266, label %.preheader267.2

.preheader267.2:                                  ; preds = %.preheader267.1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %.0226.val.2 = load <4 x float>, ptr %i.ix, align 16, !tbaa !85
  store <4 x float> %.0226.val.2, ptr %i.iy, align 16, !tbaa !85, !alias.scope !91, !nontemporal !89
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hm, i64 48 ; 2 uses
  br i1 %exitcond365.not.2, label %.preheader266, label %.preheader267.3

.preheader267.3:                                  ; preds = %.preheader267.2
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %.0226.val.3 = load <4 x float>, ptr %i.iz, align 16, !tbaa !85
  store <4 x float> %.0226.val.3, ptr %i.ja, align 16, !tbaa !85, !alias.scope !91, !nontemporal !89
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hm, i64 64 ; 2 uses
  br i1 %exitcond365.not.3, label %.preheader266, label %.preheader267.4

.preheader267.4:                                  ; preds = %.preheader267.3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %.0226.val.4 = load <4 x float>, ptr %i.jb, align 16, !tbaa !85
  store <4 x float> %.0226.val.4, ptr %i.jc, align 16, !tbaa !85, !alias.scope !91, !nontemporal !89
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hm, i64 80 ; 2 uses
  br i1 %exitcond365.not.4, label %.preheader266, label %.preheader267.5

.preheader267.5:                                  ; preds = %.preheader267.4
  %i.je = getelementptr inbounds nuw i8, ptr %i.hn, i64 80
  %.0226.val.5 = load <4 x float>, ptr %i.jd, align 16, !tbaa !85
  store <4 x float> %.0226.val.5, ptr %i.je, align 16, !tbaa !85, !alias.scope !91, !nontemporal !89
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  br label %.preheader266

.preheader265:                                    ; preds = %.preheader264, %.preheader266
  %.1227.lcssa = phi ptr [ %.lcssa, %.preheader266 ], [ %i.jm, %.preheader264 ]
  br i1 %.not338, label %.loopexit, label %.lr.ph329

.preheader.preheader:                             ; preds = %.preheader266, %.preheader264
  %.0223323 = phi i64 [ %i.jl, %.preheader264 ], [ %i.co, %.preheader266 ] ; 2 uses
  %.1227322 = phi ptr [ %i.jm, %.preheader264 ], [ %.lcssa, %.preheader266 ] ; 4 uses
  %.sroa.0374.0.copyload = load float, ptr %.1227322, align 4, !tbaa !37, !alias.scope !94
  %.sroa.4375.0..1227322.sroa_idx = getelementptr inbounds nuw i8, ptr %.1227322, i64 4
  %i.jg = load <2 x float>, ptr %.sroa.4375.0..1227322.sroa_idx, align 4, !tbaa !37, !alias.scope !94
  br label %.preheader

.preheader264:                                    ; preds = %._crit_edge314
  %i.jh = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = fdiv reassoc nsz arcp contract afn <4 x float> %i.kt, %i.ji
  %.idx253 = shl i64 %.0223323, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx253
  store <4 x float> %i.jj, ptr %i.jk, align 16, !tbaa !85, !alias.scope !98, !nontemporal !89
  %i.jl = add nuw i64 %.0223323, 1                ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.1227322, i64 16 ; 2 uses
  %exitcond372.not = icmp eq i64 %i.jl, %i.ha
  br i1 %exitcond372.not, label %.preheader265, label %.preheader.preheader, !llvm.loop !101

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge314
  %.sroa.0377.1 = phi nsz <4 x float> [ zeroinitializer, %.preheader.preheader ], [ %i.kt, %._crit_edge314 ]
  %.0221318 = phi i64 [ %i.hc, %.preheader.preheader ], [ %i.jq, %._crit_edge314 ] ; 4 uses
  %.0222317 = phi float [ 0.000000e+00, %.preheader.preheader ], [ %i.ku, %._crit_edge314 ]
  %i.jn = mul i64 %.0221318, %i.j
  %i.jo = mul nsw i64 %.0221318, %i.hd
  %i.jp = getelementptr [4 x i8], ptr %i.cp, i64 %i.jo
  br label %bb.k

._crit_edge314:                                   ; preds = %bb.k
  %i.jq = add nsw i64 %.0221318, 1
  %exitcond370.not = icmp eq i64 %.0221318, %smax368
  br i1 %exitcond370.not, label %.preheader264, label %.preheader, !llvm.loop !102

bb.k:                                             ; preds = %.preheader, %bb.k
  %.sroa.0377.2 = phi nsz <4 x float> [ %.sroa.0377.1, %.preheader ], [ %i.kt, %bb.k ]
  %.0220312 = phi i64 [ %i.hc, %.preheader ], [ %i.kv, %bb.k ] ; 4 uses
  %.1311 = phi float [ %.0222317, %.preheader ], [ %i.ku, %bb.k ]
  %i.jr = add i64 %.0220312, %i.jn
  %.idx255 = shl i64 %i.jr, 4
  %i.js = getelementptr inbounds nuw i8, ptr %.1227322, i64 %.idx255 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.ju = getelementptr [4 x i8], ptr %i.jp, i64 %.0220312
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !37
  %i.jw = load <4 x float>, ptr %i.js, align 4, !tbaa !37 ; 3 uses
  %i.jx = load float, ptr %i.jt, align 4, !tbaa !37
  %i.jy = extractelement <4 x float> %i.jw, i64 0
  %i.jz = fsub reassoc nsz arcp contract afn float %.sroa.0374.0.copyload, %i.jy ; 2 uses
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.jz
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, 5.000000e-01
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, %i.hh
  %i.kd = shufflevector <4 x float> %i.jw, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ke = insertelement <2 x float> %i.kd, float %i.jx, i64 0
  %i.kf = fsub reassoc nsz arcp contract afn <2 x float> %i.jg, %i.ke ; 2 uses
  %i.kg = fmul reassoc nsz arcp contract afn <2 x float> %i.kf, %i.kf
  %i.kh = fmul reassoc nsz arcp contract afn <2 x float> %i.kg, splat (float 5.000000e-01)
  %i.ki = fmul reassoc nsz arcp contract afn <2 x float> %i.kh, %i.hi ; 2 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0
  %i.kk = fadd reassoc nsz arcp contract afn float %i.kj, %i.kc
  %i.kl = extractelement <2 x float> %i.ki, i64 1
  %i.km = fadd reassoc nsz arcp contract afn float %i.kk, %i.kl
  %i.kn = fneg reassoc nsz arcp contract afn float %i.km
  %i.ko = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.kn)
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %i.jv ; 2 uses
  %i.kq = insertelement <4 x float> poison, float %i.kp, i64 0
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ks = fmul reassoc nsz arcp contract afn <4 x float> %i.jw, %i.kr
  %i.kt = fadd reassoc nsz arcp contract afn <4 x float> %.sroa.0377.2, %i.ks ; 3 uses
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kp, %.1311 ; 3 uses
  %i.kv = add nsw i64 %.0220312, 1
  %exitcond369.not = icmp eq i64 %.0220312, %smax368
  br i1 %exitcond369.not, label %._crit_edge314, label %bb.k, !llvm.loop !103

.lr.ph329:                                        ; preds = %.preheader265, %.lr.ph329
  %.0216328 = phi i64 [ %i.kx, %.lr.ph329 ], [ %i.ha, %.preheader265 ] ; 2 uses
  %.2327 = phi ptr [ %i.ky, %.lr.ph329 ], [ %.1227.lcssa, %.preheader265 ] ; 2 uses
  %.idx251 = shl i64 %.0216328, 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx251
  %.2.val = load <4 x float>, ptr %.2327, align 16, !tbaa !85
  store <4 x float> %.2.val, ptr %i.kw, align 16, !tbaa !85, !alias.scope !104, !nontemporal !89
  %i.kx = add nuw i64 %.0216328, 1                ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.2327, i64 16
  %i.kz = icmp ult i64 %i.kx, %i.j
  br i1 %i.kz, label %.lr.ph329, label %.loopexit, !llvm.loop !107

.loopexit.loopexit499.unr-lcssa:                  ; preds = %.lr.ph305
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph305.epil.preheader

.lr.ph305.epil.preheader:                         ; preds = %.loopexit.loopexit499.unr-lcssa, %.lr.ph305.preheader
  %.0225304.epil.init = phi i64 [ 0, %.lr.ph305.preheader ], [ %i.iu, %.loopexit.loopexit499.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod509)
  br label %.lr.ph305.epil

.lr.ph305.epil:                                   ; preds = %.lr.ph305.epil, %.lr.ph305.epil.preheader
  %.0225304.epil = phi i64 [ %i.ld, %.lr.ph305.epil ], [ %.0225304.epil.init, %.lr.ph305.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph305.epil ], [ 0, %.lr.ph305.epil.preheader ]
  %i.la = shl i64 %.0225304.epil, 2               ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.la
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.la
  %.val263.epil = load <4 x float>, ptr %i.lc, align 16, !tbaa !85
  store <4 x float> %.val263.epil, ptr %i.lb, align 16, !tbaa !85, !alias.scope !86, !nontemporal !89
  %i.ld = add nuw i64 %.0225304.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph305.epil, !llvm.loop !108

.loopexit:                                        ; preds = %.loopexit.loopexit499.unr-lcssa, %.lr.ph305.epil, %.lr.ph329, %.preheader268, %.preheader265
  %i.le = add nuw i64 %.0228330, 1                ; 2 uses
  %exitcond373.not = icmp eq i64 %i.le, %i.m
  br i1 %exitcond373.not, label %._crit_edge332, label %bb.j, !llvm.loop !110

.lr.ph282:                                        ; preds = %.preheader276.preheader
  %.not334 = icmp eq i32 %i.i, 0
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br i1 %.not334, label %._crit_edge283.split, label %.lr.ph

._crit_edge283.split:                             ; preds = %._crit_edge, %.lr.ph282, %.preheader276.preheader
  invoke void @_ZN20PermutohedralLatticeILi5ELi4EE19merge_splat_threadsEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.o unwind label %bb.p

.lr.ph:                                           ; preds = %.lr.ph282, %._crit_edge
  %.0214280 = phi i64 [ %i.ln, %._crit_edge ], [ 0, %.lr.ph282 ] ; 3 uses
  %i.lj = mul i64 %.0214280, %i.j                 ; 2 uses
  %.idx246 = shl i64 %i.lj, 4
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx246
  %i.ll = uitofp reassoc nsz arcp contract afn i64 %.0214280 to float
  %i.lm = fmul reassoc nsz arcp contract afn float %i.cb, %i.ll
  br label %bb.l

._crit_edge:                                      ; preds = %bb.m
  %i.ln = add nuw i64 %.0214280, 1                ; 2 uses
  %exitcond344.not = icmp eq i64 %i.ln, %i.m
  br i1 %exitcond344.not, label %._crit_edge283.split, label %.lr.ph, !llvm.loop !111

bb.l:                                             ; preds = %.lr.ph, %bb.m
  %.0210279 = phi i64 [ 0, %.lr.ph ], [ %i.lx, %bb.m ] ; 3 uses
  %.0213278 = phi ptr [ %i.lk, %.lr.ph ], [ %i.lw, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.lo = uitofp reassoc nsz arcp contract afn i64 %.0210279 to float
  %i.lp = fmul reassoc nsz arcp contract afn float %i.bz, %i.lo
  store float %i.lp, ptr %i.b, align 16, !tbaa !37
  store float %i.lm, ptr %i.lf, align 4, !tbaa !37
  %i.lq = load <2 x float>, ptr %.0213278, align 4, !tbaa !37 ; 2 uses
  %i.lr = fmul reassoc nsz arcp contract afn <2 x float> %i.lq, %i.bt
  store <2 x float> %i.lr, ptr %i.lg, align 8, !tbaa !37
  %i.ls = getelementptr inbounds nuw i8, ptr %.0213278, i64 8
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !37 ; 2 uses
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, %i.bv
  store float %i.lu, ptr %i.lh, align 16, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store <2 x float> %i.lq, ptr %i.c, align 16, !tbaa !37
  store float %i.lt, ptr %i.li, align 8, !tbaa !37
  store float 1.000000e+00, ptr %7, align 4, !tbaa !37
  %i.lv = add i64 %.0210279, %i.lj
  invoke void @_ZNK20PermutohedralLatticeILi5ELi4EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.lv, i32 noundef 0)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lw = getelementptr inbounds nuw i8, ptr %.0213278, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.lx = add nuw i64 %.0210279, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.lx, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !112

bb.n:                                             ; preds = %bb.l
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge283.split
  invoke void @_ZNK20PermutohedralLatticeILi5ELi4EE4blurEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %.preheader275 unwind label %bb.p

.preheader275:                                    ; preds = %bb.o
  %.not335 = icmp eq i64 %i.n, 0
  br i1 %.not335, label %._crit_edge287, label %.lr.ph286

._crit_edge287:                                   ; preds = %.preheader274.preheader, %.preheader275
  call void @llvm.x86.sse.sfence()
  call void @_ZN20PermutohedralLatticeILi5ELi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.s

bb.p:                                             ; preds = %bb.o, %._crit_edge283.split
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph286:                                        ; preds = %.preheader275, %.preheader274.preheader
  %.0209285 = phi i64 [ %i.me, %.preheader274.preheader ], [ 0, %.preheader275 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  invoke void @_ZNK20PermutohedralLatticeILi5ELi4EE5sliceEPfm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.d, i64 noundef %.0209285)
          to label %.preheader274.preheader unwind label %bb.q

.preheader274.preheader:                          ; preds = %.lr.ph286
  %i.ma = load <4 x float>, ptr %i.d, align 16, !tbaa !37 ; 2 uses
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.mc = fdiv reassoc nsz arcp contract afn <4 x float> %i.ma, %i.mb ; 2 uses
  store <4 x float> %i.mc, ptr %i.d, align 16, !tbaa !37
  %.idx = shl nuw nsw i64 %.0209285, 4
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  store <4 x float> %i.mc, ptr %i.md, align 16, !tbaa !85, !alias.scope !113, !nontemporal !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.me = add nuw i64 %.0209285, 1                ; 2 uses
  %exitcond346.not = icmp eq i64 %i.me, %i.n
  br i1 %exitcond346.not, label %._crit_edge287, label %.lr.ph286, !llvm.loop !116

bb.q:                                             ; preds = %.lr.ph286
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ly, %bb.n ], [ %i.mf, %bb.q ], [ %i.lz, %bb.p ]
  call void @_ZN20PermutohedralLatticeILi5ELi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.e, %._crit_edge332, %._crit_edge287, %bb.h, %bb.c, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare void @dt_iop_set_module_trouble_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20PermutohedralLatticeILi5ELi4EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.5:
  store i64 %1, ptr %0, align 8, !tbaa !117
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !121
  %i.b = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znam(i64 noundef 20) #22 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znam(i64 noundef 144) #22 ; 7 uses
  %i.d = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 52) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = select i1 %i.e, i64 -1, i64 %i.f
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.i, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 -5, i32 2, i32 2>, ptr %i.j, align 4, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store <8 x i32> <i32 2, i32 2, i32 -4, i32 -4, i32 3, i32 3, i32 3, i32 -3>, ptr %i.k, align 4, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store <8 x i32> <i32 -3, i32 -3, i32 4, i32 4, i32 -2, i32 -2, i32 -2, i32 -2>, ptr %i.l, align 4, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i32 5, ptr %i.m, align 4, !tbaa !123
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep, i8 -1, i64 20, i1 false), !tbaa !123
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.n, align 8, !tbaa !124
  store <4 x float> <float f0x405DB3D8, float 2.000000e+00, float f0x3FB504F4, float f0x3F8C378C>, ptr %i.b, align 4, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float f0x3F64F92E, ptr %i.o, align 4, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.p, align 8, !tbaa !125
  %i.q = uitofp reassoc nsz arcp contract afn i64 %3 to float
  %i.r = uitofp reassoc nsz arcp contract afn i64 %1 to float
  %i.s = fdiv reassoc nsz arcp contract afn float %i.q, %i.r
  %i.t = fpext reassoc nsz arcp contract afn float %i.s to double ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn olt double %i.t, 1.000000e-01
  br i1 %i.u, label %_ZN20PermutohedralLatticeILi5ELi4EE20estimatedHashEntriesEmm.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge.5
  %i.v = fmul reassoc nsz arcp contract afn double %i.t, 2.000000e-02
  %i.w = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.v)
  %i.x = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double 1.800000e+00, double %i.w)
  br label %_ZN20PermutohedralLatticeILi5ELi4EE20estimatedHashEntriesEmm.exit

_ZN20PermutohedralLatticeILi5ELi4EE20estimatedHashEntriesEmm.exit: ; preds = %._crit_edge.5, %bb.a
  %i.y = phi double [ %i.x, %bb.a ], [ f0x3FCA323591D23FB1, %._crit_edge.5 ]
  %i.z = uitofp reassoc nsz arcp contract afn i64 %1 to double
  %i.aa = fmul reassoc nsz arcp contract afn double %i.y, %i.z
  %i.ab = fptoui double %i.aa to i64
  %i.ac = mul i64 %1, 6
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab)
  %i.ae = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 80) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0
  %i.ah = or disjoint i64 %i.ag, 8
  %i.ai = select i1 %i.af, i64 -1, i64 %i.ah
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #22 ; 2 uses
  store i64 %2, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 5 uses
  %i.al = icmp eq i64 %2, 0
  br i1 %i.al, label %.loopexit.thread, label %bb.b

.loopexit.thread:                                 ; preds = %_ZN20PermutohedralLatticeILi5ELi4EE20estimatedHashEntriesEmm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !126
  br label %._crit_edge51

bb.b:                                             ; preds = %_ZN20PermutohedralLatticeILi5ELi4EE20estimatedHashEntriesEmm.exit
  %i.an = getelementptr inbounds [80 x i8], ptr %i.ak, i64 %2
  %i.ao = mul i64 %2, 80
  %i.ap = add i64 %i.ao, -80                      ; 2 uses
  %i.aq = udiv i64 %i.ap, 80
  %i.ar = add nuw nsw i64 %i.aq, 1
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.as = phi ptr [ %i.ax, %.prol.preheader ], [ %i.ak, %bb.b ] ; 6 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 0, ptr %i.au, align 8, !tbaa !127
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.av, align 8, !tbaa !132
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !133

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.ak, %bb.b ], [ %i.ax, %.prol.preheader ]
  %i.ay = icmp ult i64 %i.ap, 560
  br i1 %i.ay, label %.lr.ph50.preheader, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.az = phi ptr [ %i.cn, %.new ], [ %.unr, %.prol.loopexit ] ; 41 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 0, ptr %i.bb, align 8, !tbaa !127
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
end_hunk_1
