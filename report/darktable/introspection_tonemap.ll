Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonemap?download=true
inline.NumInlined: 80
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu", target_cpu: "icelake-server")
    ".globl _ZSt21ios_base_library_initv"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct.dt_introspection_type_float_t = type { %struct.dt_introspection_type_header_t, float, float, float }
%struct.dt_introspection_type_header_t = type { i32, ptr, ptr, ptr, ptr, i64, i64, ptr }
%struct.dt_introspection_type_struct_t = type { %struct.dt_introspection_type_header_t, i64, ptr }
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
%class.PermutohedralLattice = type { i64, i64, ptr, ptr, ptr, ptr }
%"struct.HashTablePermutohedral<3, 2>::Key" = type <{ i32, [3 x i16], [2 x i8] }>

$_ZN20PermutohedralLatticeILi3ELi2EEC2Emmm = comdat any

$_ZNK20PermutohedralLatticeILi3ELi2EE5splatEPfS1_mi = comdat any

$_ZN20PermutohedralLatticeILi3ELi2EE19merge_splat_threadsEv = comdat any

$_ZNK20PermutohedralLatticeILi3ELi2EE4blurEv = comdat any

$_ZN20PermutohedralLatticeILi3ELi2EED2Ev = comdat any

$_ZN22HashTablePermutohedralILi3ELi2EE7setSizeEm = comdat any

$_ZN22HashTablePermutohedralILi3ELi2EE9growExactEm = comdat any

@.str = private unnamed_addr constant [13 x i8] c"tone mapping\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"this module is deprecated. please use the local contrast or tone equalizer module instead.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Fsize\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@_ZL13introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.8, i64 8, ptr getelementptr (i8, ptr @_ZL20introspection_linear, i64 176), i64 1120, i64 688 }, align 8
@_ZZ18introspection_initE2f2 = internal global [3 x ptr] [ptr @_ZL20introspection_linear, ptr getelementptr (i8, ptr @_ZL20introspection_linear, i64 88), ptr null], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"contrast compression\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"spatial extent\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"dt_iop_tonemapping_params_t\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZL20introspection_linear = internal global <{ { %struct.dt_introspection_type_float_t, [8 x i8] }, { %struct.dt_introspection_type_float_t, [8 x i8] }, { %struct.dt_introspection_type_struct_t, [8 x i8] }, { %struct.dt_introspection_type_header_t, [24 x i8] } }> <{ { %struct.dt_introspection_type_float_t, [8 x i8] } { %struct.dt_introspection_type_float_t { %struct.dt_introspection_type_header_t { i32 2, ptr @.str.5, ptr @.str.2, ptr @.str.2, ptr @.str.6, i64 4, i64 0, ptr null }, float 1.000000e+00, float 5.000000e+00, float 2.500000e+00 }, [8 x i8] undef }, { %struct.dt_introspection_type_float_t, [8 x i8] } { %struct.dt_introspection_type_float_t { %struct.dt_introspection_type_header_t { i32 2, ptr @.str.5, ptr @.str.3, ptr @.str.3, ptr @.str.7, i64 4, i64 4, ptr null }, float 0.000000e+00, float 1.000000e+02, float 3.000000e+01 }, [8 x i8] undef }, { %struct.dt_introspection_type_struct_t, [8 x i8] } { %struct.dt_introspection_type_struct_t { %struct.dt_introspection_type_header_t { i32 17, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.9, i64 8, i64 0, ptr null }, i64 2, ptr null }, [8 x i8] undef }, { %struct.dt_introspection_type_header_t, [24 x i8] } { %struct.dt_introspection_type_header_t zeroinitializer, [24 x i8] undef } }>, align 16
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.11 = private unnamed_addr constant [202 x i8] c"[permutohedral] hash tables %lu bytes (%lu initially), %lu entries, [permutohedral] tables grew %lu times, replay using %lu bytes for %lu pixels, [permutohedral] fill factor %f%%, remap using %lu bytes\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"[permutohedral] blur using %lu bytes for newValue\00", align 1

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
  %i.a = tail call ptr @gettext(ptr noundef nonnull @.str) #20
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @deprecated_msg() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @gettext(ptr noundef nonnull @.str.1) #20
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.PermutohedralLattice, align 8 ; 11 uses
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [2 x float], align 4              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !32  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !116  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !117  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !118  ; 4 uses
  %i.k = sext i32 %i.h to i64                     ; 3 uses
  %i.l = sext i32 %i.j to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !119 ; 2 uses
  %i.q = load <2 x i32>, ptr %i.n, align 16, !tbaa !33
  %i.r = sitofp <2 x i32> %i.q to <2 x float>     ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul reassoc nsz arcp contract afn float %i.p, %i.s
  %i.u = extractelement <2 x float> %i.r, i64 1
  %i.v = fmul reassoc nsz arcp contract afn float %i.p, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !121
  %i.y = fpext reassoc nsz arcp contract afn float %i.x to double
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, 1.000000e-02
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.t, float %i.v)
  %i.ab = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.ac = fmul reassoc nsz arcp contract afn double %i.z, %i.ab
  %i.ad = fptrunc reassoc nsz arcp contract afn double %i.ac to float ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.ad, 3.000000e+00
  %spec.store.select = select i1 %i.ae, float 3.000000e+00, float %i.ad
  %i.af = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.store.select ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN20PermutohedralLatticeILi3ELi2EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %i.m, i64 noundef 1, i64 noundef -1)
  %i.ag = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.ag, label %.lr.ph122, label %._crit_edge123.split

.lr.ph122:                                        ; preds = %bb.a
  %i.ah = sext i32 %i.f to i64                    ; 2 uses
  %i.ai = icmp sgt i32 %i.h, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge123.split

.lr.ph.preheader:                                 ; preds = %.lr.ph122
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge123.split:                             ; preds = %._crit_edge, %.lr.ph122, %bb.a
  invoke void @_ZN20PermutohedralLatticeILi3ELi2EE19merge_splat_threadsEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.e unwind label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.am = mul nuw nsw i64 %indvars.iv, %i.k       ; 2 uses
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.an
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  %i.aq = uitofp nsz nneg i32 %i.ap to float
  %i.ar = fmul reassoc nsz arcp contract afn float %i.af, %i.aq
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond137.not, label %._crit_edge123.split, label %.lr.ph, !llvm.loop !112

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0111119 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.c ] ; 2 uses
  %.0112118 = phi ptr [ %i.ao, %.lr.ph ], [ %i.bk, %bb.c ] ; 3 uses
  %.0113117 = phi i64 [ %i.am, %.lr.ph ], [ %i.bj, %bb.c ] ; 2 uses
  %i.as = load float, ptr %.0112118, align 4, !tbaa !35
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double
  %i.au = fmul reassoc nsz arcp contract afn double %i.at, 2.126000e-01
  %i.av = getelementptr inbounds nuw i8, ptr %.0112118, i64 4
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !35
  %i.ax = fpext <2 x float> %i.aw to <2 x double> ; 2 uses
  %7 = extractelement <2 x double> %i.ax, i64 0
  %8 = fmul reassoc nsz arcp contract afn double %7, 7.152000e-01
  %i.ay = fadd reassoc nsz arcp contract afn double %8, %i.au
  %i.az = extractelement <2 x double> %i.ax, i64 1
  %9 = fmul reassoc nsz arcp contract afn double %i.az, 7.220000e-02
  %i.ba = fadd reassoc nsz arcp contract afn double %i.ay, %9 ; 2 uses
  %i.bb = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  %i.bc = fcmp reassoc nsz arcp contract afn ole double %i.ba, f0x3690000000000000
  %i.bd = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.bb)
  %i.be = select i1 %i.bc, float f0xC15D0C55, float %i.bd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bf = uitofp nsz nneg i32 %.0111119 to float
  %i.bg = fmul reassoc nsz arcp contract afn float %i.af, %i.bf
  store float %i.bg, ptr %i.a, align 4, !tbaa !35
  store float %i.ar, ptr %i.aj, align 4, !tbaa !35
  %i.bh = fmul reassoc nsz arcp contract afn float %i.be, 2.500000e+00
  store float %i.bh, ptr %i.ak, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store float %i.be, ptr %i.b, align 4, !tbaa !35
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !35
  invoke void @_ZNK20PermutohedralLatticeILi3ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.0113117, i32 noundef 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bi = add nuw nsw i32 %.0111119, 1            ; 2 uses
  %i.bj = add nuw nsw i64 %.0113117, 1
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0112118, i64 %i.ah
  %exitcond.not = icmp eq i32 %i.bi, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !113

bb.d:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge123.split
  invoke void @_ZNK20PermutohedralLatticeILi3ELi2EE4blurEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bm = load float, ptr %i.d, align 4, !tbaa !122
  %i.bn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bm ; 2 uses
  br i1 %i.ag, label %.lr.ph133, label %.._crit_edge134.split_crit_edge

.._crit_edge134.split_crit_edge:                  ; preds = %bb.f
  %.pre = fadd reassoc nsz arcp contract afn float %i.bn, -1.000000e+00
  br label %._crit_edge134.split

.lr.ph133:                                        ; preds = %bb.f
  %i.bo = sext i32 %i.f to i64                    ; 3 uses
  %i.bp = icmp sgt i32 %i.h, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = fadd reassoc nsz arcp contract afn float %i.bn, -1.000000e+00 ; 3 uses
  br i1 %i.bp, label %.lr.ph133.split, label %._crit_edge134.split

.lr.ph133.split:                                  ; preds = %.lr.ph133
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !40 ; 4 uses
  %wide.trip.count142 = zext nneg i32 %i.j to i64
  br label %.lr.ph129

._crit_edge134.split:                             ; preds = %._crit_edge130, %.._crit_edge134.split_crit_edge, %.lr.ph133
  %.pre-phi = phi float [ %.pre, %.._crit_edge134.split_crit_edge ], [ %i.bs, %.lr.ph133 ], [ %i.bs, %._crit_edge130 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !123 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 272 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !35 ; 2 uses
  %i.cb = fpext reassoc nsz arcp contract afn float %i.ca to double
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, 2.126000e-01
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 276
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !35 ; 2 uses
  %i.cf = fpext reassoc nsz arcp contract afn float %i.ce to double
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cf, 7.152000e-01
  %i.ch = fadd reassoc nsz arcp contract afn double %i.cg, %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 280
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !35 ; 2 uses
  %i.ck = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cl = fmul reassoc nsz arcp contract afn double %i.ck, 7.220000e-02
  %i.cm = fadd reassoc nsz arcp contract afn double %i.ch, %i.cl ; 2 uses
  %i.cn = fptrunc reassoc nsz arcp contract afn double %i.cm to float
  %i.co = fcmp reassoc nsz arcp contract afn ole double %i.cm, f0x3690000000000000
  %i.cp = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.cn)
  %i.cq = select i1 %i.co, float f0xC15D0C55, float %i.cp
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %.pre-phi
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, -1.000000e+00
  %i.ct = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cs) ; 3 uses
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ca, %i.ct
  store float %i.cu, ptr %i.bz, align 4, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 276
  %i.cw = fmul reassoc nsz arcp contract afn float %i.ce, %i.ct
  store float %i.cw, ptr %i.cv, align 4, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 280
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cj, %i.ct
  store float %i.cy, ptr %i.cx, align 4, !tbaa !35
  call void @_ZN20PermutohedralLatticeILi3ELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.g:                                             ; preds = %bb.e, %._crit_edge123.split
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph129:                                        ; preds = %.lr.ph133.split, %._crit_edge130
  %indvars.iv139 = phi i64 [ 0, %.lr.ph133.split ], [ %indvars.iv.next140, %._crit_edge130 ] ; 2 uses
  %i.da = mul nuw nsw i64 %indvars.iv139, %i.k    ; 2 uses
  %i.db = mul i64 %i.da, %i.bo                    ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.db
  br label %bb.h

._crit_edge130:                                   ; preds = %bb.h
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !114

bb.h:                                             ; preds = %.lr.ph129, %bb.h
  %.0104127 = phi i32 [ 0, %.lr.ph129 ], [ %i.gh, %bb.h ]
  %.0105126 = phi ptr [ %i.dd, %.lr.ph129 ], [ %i.gk, %bb.h ] ; 5 uses
  %.0106125 = phi ptr [ %i.dc, %.lr.ph129 ], [ %i.gj, %bb.h ] ; 5 uses
  %.0107124 = phi i64 [ %i.da, %.lr.ph129 ], [ %i.gi, %bb.h ] ; 2 uses
  %i.de = getelementptr inbounds nuw [36 x i8], ptr %i.br, i64 %.0107124 ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !33
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.di ; 2 uses
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !35 ; 2 uses
  %i.dl = load float, ptr %i.dj, align 4, !tbaa !35
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !35
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dk
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dv = load float, ptr %i.du, align 4, !tbaa !35 ; 2 uses
  %i.dw = load float, ptr %i.dt, align 4, !tbaa !35
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.dv
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, %i.dm
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !35
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.dv
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dp
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !33
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !35 ; 2 uses
  %i.ej = load float, ptr %i.eg, align 4, !tbaa !35
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.ei
  %i.el = fadd reassoc nsz arcp contract afn float %i.dy, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !35
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, %i.ei
  %i.ep = fadd reassoc nsz arcp contract afn float %i.ec, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !33
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !35 ; 2 uses
  %i.ew = load float, ptr %i.et, align 4, !tbaa !35
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, %i.ev
  %i.ey = fadd reassoc nsz arcp contract afn float %i.el, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !35
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, %i.ev
  %i.fc = fadd reassoc nsz arcp contract afn float %i.ep, %i.fb
  %i.fd = load float, ptr %.0106125, align 4, !tbaa !35 ; 2 uses
  %i.fe = fpext reassoc nsz arcp contract afn float %i.fd to double
  %i.ff = fmul reassoc nsz arcp contract afn double %i.fe, 2.126000e-01
  %i.fg = getelementptr inbounds nuw i8, ptr %.0106125, i64 4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0106125, i64 8
  %i.fi = load <2 x float>, ptr %i.fg, align 4, !tbaa !35
  %i.fj = fpext <2 x float> %i.fi to <2 x double> ; 2 uses
  %10 = extractelement <2 x double> %i.fj, i64 0
  %11 = fmul reassoc nsz arcp contract afn double %10, 7.152000e-01
  %i.fk = fadd reassoc nsz arcp contract afn double %11, %i.ff
  %i.fl = extractelement <2 x double> %i.fj, i64 1
  %12 = fmul reassoc nsz arcp contract afn double %i.fl, 7.220000e-02
  %i.fm = fadd reassoc nsz arcp contract afn double %i.fk, %12 ; 2 uses
  %i.fn = fptrunc reassoc nsz arcp contract afn double %i.fm to float
  %i.fo = fcmp reassoc nsz arcp contract afn ole double %i.fm, f0x3690000000000000
  %i.fp = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.fn)
  %i.fq = select i1 %i.fo, float f0xC15D0C55, float %i.fp
  %i.fr = fdiv reassoc nsz arcp contract afn float %i.ey, %i.fc ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.bs
  %i.ft = fsub reassoc nsz arcp contract afn float -1.000000e+00, %i.fr
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, %i.fs
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %i.fq
  %i.fw = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.fv) ; 3 uses
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, %i.fd
  store float %i.fx, ptr %.0105126, align 4, !tbaa !35
  %i.fy = load float, ptr %i.fg, align 4, !tbaa !35
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fw, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %.0105126, i64 4
  store float %i.fz, ptr %i.ga, align 4, !tbaa !35
  %i.gb = load float, ptr %i.fh, align 4, !tbaa !35
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fw, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %.0105126, i64 8
  store float %i.gc, ptr %i.gd, align 4, !tbaa !35
  %i.ge = getelementptr inbounds nuw i8, ptr %.0106125, i64 12
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !35
  %i.gg = getelementptr inbounds nuw i8, ptr %.0105126, i64 12
  store float %i.gf, ptr %i.gg, align 4, !tbaa !35
  %i.gh = add nuw nsw i32 %.0104127, 1            ; 2 uses
  %i.gi = add nuw nsw i64 %.0107124, 1
  %i.gj = getelementptr inbounds [4 x i8], ptr %.0106125, i64 %i.bo
  %i.gk = getelementptr inbounds [4 x i8], ptr %.0105126, i64 %i.bo
  %exitcond138.not = icmp eq i32 %i.gh, %i.h
  br i1 %exitcond138.not, label %._crit_edge130, label %bb.h, !llvm.loop !115

bb.i:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.d ], [ %i.cz, %bb.g ]
  call void @_ZN20PermutohedralLatticeILi3ELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20PermutohedralLatticeILi3ELi2EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.3:
  store i64 %1, ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !45
  %i.b = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #21 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znam(i64 noundef 64) #21 ; 5 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !44
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 36) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <8 x i32> <i32 1, i32 1, i32 1, i32 -3, i32 2, i32 2, i32 -2, i32 -2>, ptr %i.k, align 4, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 3, ptr %i.l, align 4, !tbaa !33
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 -1, i64 12, i1 false), !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.m, align 8, !tbaa !47
  store <2 x float> <float f0x4013CD3B, float f0x3FAAAAAB>, ptr %i.b, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float f0x3F715BF0, ptr %i.n, align 4, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.o, align 8, !tbaa !48
  %i.p = load i64, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.q = uitofp reassoc nsz arcp contract afn i64 %3 to float
  %i.r = uitofp reassoc nsz arcp contract afn i64 %i.p to float
  %i.s = fdiv reassoc nsz arcp contract afn float %i.q, %i.r
  %i.t = fpext reassoc nsz arcp contract afn float %i.s to double ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn olt double %i.t, 1.000000e-01
  br i1 %i.u, label %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge.3
  %i.v = fmul reassoc nsz arcp contract afn double %i.t, 2.000000e-02
  %i.w = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.v)
  %i.x = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double 1.800000e+00, double %i.w)
  br label %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit

_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit: ; preds = %._crit_edge.3, %bb.a
  %i.y = phi double [ %i.x, %bb.a ], [ f0x3FCA323591D23FB1, %._crit_edge.3 ]
  %i.z = uitofp reassoc nsz arcp contract afn i64 %i.p to double
  %i.aa = fmul reassoc nsz arcp contract afn double %i.y, %i.z
  %i.ab = fptoui double %i.aa to i64
  %i.ac = shl i64 %i.p, 2
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !45  ; 4 uses
  %i.af = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ae, i64 80) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or disjoint i64 %i.ah, 8
  %i.aj = select i1 %i.ag, i64 -1, i64 %i.ai
  %i.ak = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #21 ; 2 uses
  store i64 %i.ae, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.am = icmp eq i64 %i.ae, 0
  br i1 %i.am, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit
  %i.an = getelementptr inbounds [80 x i8], ptr %i.al, i64 %i.ae
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi ptr [ %i.al, %bb.b ], [ %i.at, %bb.c ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %i.aq, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.ar, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.an
  br i1 %i.au, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.al, ptr %i.av, align 8, !tbaa !51
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %.not52 = icmp eq i64 %i.aw, 0
  br i1 %.not52, label %._crit_edge51, label %.lr.ph50

._crit_edge51:                                    ; preds = %.lr.ph50, %.loopexit
  ret void

.lr.ph50:                                         ; preds = %.loopexit, %.lr.ph50
  %i.ax = phi i64 [ %i.bc, %.lr.ph50 ], [ %i.aw, %.loopexit ]
  %.048 = phi i64 [ %i.bb, %.lr.ph50 ], [ 0, %.loopexit ] ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.ay, i64 %.048
  %i.ba = udiv i64 %i.ad, %i.ax
  tail call void @_ZN22HashTablePermutohedralILi3ELi2EE7setSizeEm(ptr noundef nonnull align 8 dereferenceable(80) %i.az, i64 noundef %i.ba)
  %i.bb = add nuw i64 %.048, 1                    ; 2 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph50, label %._crit_edge51, !llvm.loop !124
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK20PermutohedralLatticeILi3ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 {
.lr.ph:
  %i.a = alloca [5 x float], align 16             ; 15 uses
  %5 = alloca %"struct.HashTablePermutohedral<3, 2>::Key", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !35 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 2.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !35 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.j
  %i.n = load float, ptr %1, align 4, !tbaa !35   ; 2 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !35 ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.n
  %i.q = fmul reassoc nsz arcp contract afn float %i.i, 3.000000e+00
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.l
  %i.s = fmul reassoc nsz arcp contract afn float %i.n, 2.000000e+00
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.o
  %i.u = insertelement <2 x float> poison, float %i.c, i64 0
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.u
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, <float 4.000000e+00, float -3.000000e+00> ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 1
  %i.aa = fsub reassoc nsz arcp contract afn float %i.z, %i.m
  %i.ab = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.aa, i64 0
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.ab ; 7 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ae = extractelement <2 x float> %i.ac, i64 0
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.p
  %i.ag = fadd reassoc nsz arcp contract afn float %i.r, %i.af ; 4 uses
  %i.ah = fadd reassoc nsz arcp contract afn float %i.t, %i.ag ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ag, i64 1 ; 5 uses
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 2.500000e-01) ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ak)
  %i.am = fmul reassoc nsz arcp contract afn <2 x float> %i.al, splat (float 4.000000e+00) ; 2 uses
  %i.an = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.ak)
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float 4.000000e+00) ; 2 uses
  %i.ap = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.aj
end_hunk_0
