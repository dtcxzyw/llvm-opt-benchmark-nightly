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
  %i.r = sitofp reassoc nsz arcp contract afn <2 x i32> %i.q to <2 x float> ; 2 uses
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
  %.0111119 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %bb.c ] ; 2 uses
  %.0112118 = phi ptr [ %i.ao, %.lr.ph ], [ %i.bn, %bb.c ] ; 3 uses
  %.0113117 = phi i64 [ %i.am, %.lr.ph ], [ %i.bm, %bb.c ] ; 2 uses
  %i.as = load float, ptr %.0112118, align 4, !tbaa !35
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double
  %i.au = fmul reassoc nsz arcp contract afn double %i.at, 2.126000e-01
  %i.av = getelementptr inbounds nuw i8, ptr %.0112118, i64 4
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !35
  %i.ax = fpext reassoc nsz arcp contract afn <2 x float> %i.aw to <2 x double> ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  %i.az = fmul reassoc nsz arcp contract afn double %i.ay, 7.152000e-01
  %i.ba = fadd reassoc nsz arcp contract afn double %i.az, %i.au
  %i.bb = extractelement <2 x double> %i.ax, i64 1
  %i.bc = fmul reassoc nsz arcp contract afn double %i.bb, 7.220000e-02
  %i.bd = fadd reassoc nsz arcp contract afn double %i.ba, %i.bc ; 2 uses
  %i.be = fptrunc reassoc nsz arcp contract afn double %i.bd to float
  %i.bf = fcmp reassoc nsz arcp contract afn ole double %i.bd, f0x3690000000000000
  %i.bg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.be)
  %i.bh = select i1 %i.bf, float f0xC15D0C55, float %i.bg ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bi = uitofp nsz nneg i32 %.0111119 to float
  %i.bj = fmul reassoc nsz arcp contract afn float %i.af, %i.bi
  store float %i.bj, ptr %i.a, align 4, !tbaa !35
  store float %i.ar, ptr %i.aj, align 4, !tbaa !35
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, 2.500000e+00
  store float %i.bk, ptr %i.ak, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store float %i.bh, ptr %i.b, align 4, !tbaa !35
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !35
  invoke void @_ZNK20PermutohedralLatticeILi3ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.0113117, i32 noundef 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bl = add nuw nsw i32 %.0111119, 1            ; 2 uses
  %i.bm = add nuw nsw i64 %.0113117, 1
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0112118, i64 %i.ah
  %exitcond.not = icmp eq i32 %i.bl, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !113

bb.d:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge123.split
  invoke void @_ZNK20PermutohedralLatticeILi3ELi2EE4blurEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = load float, ptr %i.d, align 4, !tbaa !122
  %i.bq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bp ; 2 uses
  br i1 %i.ag, label %.lr.ph133, label %.._crit_edge134.split_crit_edge

.._crit_edge134.split_crit_edge:                  ; preds = %bb.f
  %.pre = fadd reassoc nsz arcp contract afn float %i.bq, -1.000000e+00
  br label %._crit_edge134.split

.lr.ph133:                                        ; preds = %bb.f
  %i.br = sext i32 %i.f to i64                    ; 3 uses
  %i.bs = icmp sgt i32 %i.h, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bq, -1.000000e+00 ; 4 uses
  br i1 %i.bs, label %.lr.ph133.split, label %._crit_edge134.split

.lr.ph133.split:                                  ; preds = %.lr.ph133
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !40 ; 8 uses
  %wide.trip.count142 = zext nneg i32 %i.j to i64
  br label %.lr.ph129

._crit_edge134.split:                             ; preds = %._crit_edge130, %.._crit_edge134.split_crit_edge, %.lr.ph133
  %.pre-phi = phi float [ %.pre, %.._crit_edge134.split_crit_edge ], [ %i.bv, %.lr.ph133 ], [ %i.bv, %._crit_edge130 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !123 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 272 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !35 ; 2 uses
  %i.ce = fpext reassoc nsz arcp contract afn float %i.cd to double
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ce, 2.126000e-01
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 276
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !35 ; 2 uses
  %i.ci = fpext reassoc nsz arcp contract afn float %i.ch to double
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, 7.152000e-01
  %i.ck = fadd reassoc nsz arcp contract afn double %i.cj, %i.cf
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 280
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !35 ; 2 uses
  %i.cn = fpext reassoc nsz arcp contract afn float %i.cm to double
  %i.co = fmul reassoc nsz arcp contract afn double %i.cn, 7.220000e-02
  %i.cp = fadd reassoc nsz arcp contract afn double %i.ck, %i.co ; 2 uses
  %i.cq = fptrunc reassoc nsz arcp contract afn double %i.cp to float
  %i.cr = fcmp reassoc nsz arcp contract afn ole double %i.cp, f0x3690000000000000
  %i.cs = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.cq)
  %i.ct = select i1 %i.cr, float f0xC15D0C55, float %i.cs
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %.pre-phi
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, -1.000000e+00
  %i.cw = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cv) ; 3 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cd, %i.cw
  store float %i.cx, ptr %i.cc, align 4, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 276
  %i.cz = fmul reassoc nsz arcp contract afn float %i.ch, %i.cw
  store float %i.cz, ptr %i.cy, align 4, !tbaa !35
  %i.da = getelementptr inbounds nuw i8, ptr %i.cb, i64 280
  %i.db = fmul reassoc nsz arcp contract afn float %i.cm, %i.cw
  store float %i.db, ptr %i.da, align 4, !tbaa !35
  call void @_ZN20PermutohedralLatticeILi3ELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.g:                                             ; preds = %bb.e, %._crit_edge123.split
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph129:                                        ; preds = %.lr.ph133.split, %._crit_edge130
  %indvars.iv139 = phi i64 [ 0, %.lr.ph133.split ], [ %indvars.iv.next140, %._crit_edge130 ] ; 2 uses
  %i.dd = mul nuw nsw i64 %indvars.iv139, %i.k    ; 2 uses
  %i.de = mul i64 %i.dd, %i.br                    ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.de
  br label %bb.h

._crit_edge130:                                   ; preds = %.rtcont
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !114

bb.h:                                             ; preds = %.lr.ph129, %.rtcont
  %.0104127 = phi i32 [ 0, %.lr.ph129 ], [ %.rtmerge, %.rtcont ]
  %.0105126 = phi ptr [ %i.dg, %.lr.ph129 ], [ %.rtmerge155, %.rtcont ] ; 7 uses
  %.0106125 = phi ptr [ %i.df, %.lr.ph129 ], [ %.rtmerge154, %.rtcont ] ; 8 uses
  %.0107124 = phi i64 [ %i.dd, %.lr.ph129 ], [ %.rtmerge153, %.rtcont ] ; 3 uses
  %.0106125151 = ptrtoaddr ptr %.0106125 to i64   ; 2 uses
  %i.dh = add i64 %.0106125151, 16
  %.0105126152 = ptrtoaddr ptr %.0105126 to i64   ; 2 uses
  %i.di = add i64 %.0105126152, 16
  %rt.bound0 = icmp ugt i64 %i.dh, %.0105126152
  %rt.bound1 = icmp ugt i64 %i.di, %.0106125151
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !124

bb.i:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.d ], [ %i.dc, %bb.g ]
  call void @_ZN20PermutohedralLatticeILi3ELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn

.rtvec:                                           ; preds = %bb.h
  %i.dj = getelementptr inbounds nuw [36 x i8], ptr %i.bu, i64 %.0107124 ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !33
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dn ; 2 uses
  %i.dp = load float, ptr %i.dl, align 4, !tbaa !35 ; 2 uses
  %i.dq = load float, ptr %i.do, align 4, !tbaa !35
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !35
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, %i.dp
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !33
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !35 ; 2 uses
  %i.eb = load float, ptr %i.dy, align 4, !tbaa !35
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %i.ea
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.dr
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !35
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ea
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, %i.du
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !33
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.en = load float, ptr %i.em, align 4, !tbaa !35 ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !tbaa !35
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eo, %i.en
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ed, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !35
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, %i.en
  %i.eu = fadd reassoc nsz arcp contract afn float %i.eh, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !33
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !35 ; 2 uses
  %i.fb = load float, ptr %i.ey, align 4, !tbaa !35
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, %i.fa
  %i.fd = fadd reassoc nsz arcp contract afn float %i.eq, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !35
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.fa
  %i.fh = fadd reassoc nsz arcp contract afn float %i.eu, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.0106125, i64 4
  %i.fj = load <2 x float>, ptr %i.fi, align 4, !tbaa !35
  %i.fk = fpext reassoc nsz arcp contract afn <2 x float> %i.fj to <2 x double> ; 2 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 0
  %i.fm = fmul reassoc nsz arcp contract afn double %i.fl, 7.152000e-01
  %i.fn = extractelement <2 x double> %i.fk, i64 1
  %i.fo = fmul reassoc nsz arcp contract afn double %i.fn, 7.220000e-02
  %i.fp = fdiv reassoc nsz arcp contract afn float %i.fd, %i.fh ; 2 uses
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.bv
  %i.fr = fsub reassoc nsz arcp contract afn float -1.000000e+00, %i.fp
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, %i.fq
  %i.ft = load <4 x float>, ptr %.0106125, align 4, !tbaa !35 ; 2 uses
  %i.fu = extractelement <4 x float> %i.ft, i64 0
  %i.fv = fpext reassoc nsz arcp contract afn float %i.fu to double
  %i.fw = fmul reassoc nsz arcp contract afn double %i.fv, 2.126000e-01
  %i.fx = fadd reassoc nsz arcp contract afn double %i.fm, %i.fw
  %i.fy = fadd reassoc nsz arcp contract afn double %i.fx, %i.fo ; 2 uses
  %i.fz = fptrunc reassoc nsz arcp contract afn double %i.fy to float
  %i.ga = fcmp reassoc nsz arcp contract afn ole double %i.fy, f0x3690000000000000
  %i.gb = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.fz)
  %i.gc = select i1 %i.ga, float f0xC15D0C55, float %i.gb
  %i.gd = fadd reassoc nsz arcp contract afn float %i.fs, %i.gc
  %i.ge = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.gd)
  %i.gf = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ge, i64 0
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gh = fmul reassoc arcp contract afn <4 x float> %i.ft, %i.gg
  store <4 x float> %i.gh, ptr %.0105126, align 4, !tbaa !35
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.h
  %i.gi = getelementptr inbounds nuw [36 x i8], ptr %i.bu, i64 %.0107124 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !33
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.gm ; 2 uses
  %i.go = load float, ptr %i.gk, align 4, !tbaa !35 ; 2 uses
  %i.gp = load float, ptr %i.gn, align 4, !tbaa !35
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !35
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, %i.go
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !33
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !35 ; 2 uses
  %i.ha = load float, ptr %i.gx, align 4, !tbaa !35
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, %i.gz
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, %i.gq
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.he = load float, ptr %i.hd, align 4, !tbaa !35
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, %i.gz
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, %i.gt
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !33
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !35 ; 2 uses
  %i.hn = load float, ptr %i.hk, align 4, !tbaa !35
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, %i.hm
  %i.hp = fadd reassoc nsz arcp contract afn float %i.hc, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !35
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, %i.hm
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hg, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !33
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !35 ; 2 uses
  %i.ia = load float, ptr %i.hx, align 4, !tbaa !35
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, %i.hz
  %i.ic = fadd reassoc nsz arcp contract afn float %i.hp, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !35
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, %i.hz
  %i.ig = fadd reassoc nsz arcp contract afn float %i.ht, %i.if
  %i.ih = load float, ptr %.0106125, align 4, !tbaa !35 ; 2 uses
  %i.ii = fpext reassoc nsz arcp contract afn float %i.ih to double
  %i.ij = fmul reassoc nsz arcp contract afn double %i.ii, 2.126000e-01
  %i.ik = getelementptr inbounds nuw i8, ptr %.0106125, i64 4 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !35
  %i.im = fpext reassoc nsz arcp contract afn float %i.il to double
  %i.in = fmul reassoc nsz arcp contract afn double %i.im, 7.152000e-01
  %i.io = fadd reassoc nsz arcp contract afn double %i.in, %i.ij
  %i.ip = getelementptr inbounds nuw i8, ptr %.0106125, i64 8 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !35
  %i.ir = fpext reassoc nsz arcp contract afn float %i.iq to double
  %i.is = fmul reassoc nsz arcp contract afn double %i.ir, 7.220000e-02
  %i.it = fadd reassoc nsz arcp contract afn double %i.io, %i.is ; 2 uses
  %i.iu = fptrunc reassoc nsz arcp contract afn double %i.it to float
  %i.iv = fcmp reassoc nsz arcp contract afn ole double %i.it, f0x3690000000000000
  %i.iw = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.iu)
  %i.ix = select i1 %i.iv, float f0xC15D0C55, float %i.iw
  %i.iy = fdiv reassoc nsz arcp contract afn float %i.ic, %i.ig ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, %i.bv
  %i.ja = fsub reassoc nsz arcp contract afn float -1.000000e+00, %i.iy
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, %i.iz
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.ix
  %i.jd = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.jc) ; 3 uses
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %i.ih
  store float %i.je, ptr %.0105126, align 4, !tbaa !35
  %i.jf = load float, ptr %i.ik, align 4, !tbaa !35
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jd, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %.0105126, i64 4
  store float %i.jg, ptr %i.jh, align 4, !tbaa !35
  %i.ji = load float, ptr %i.ip, align 4, !tbaa !35
  %i.jj = fmul reassoc nsz arcp contract afn float %i.jd, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %.0105126, i64 8
  store float %i.jj, ptr %i.jk, align 4, !tbaa !35
  %i.jl = getelementptr inbounds nuw i8, ptr %.0106125, i64 12
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !35
  %i.jn = getelementptr inbounds nuw i8, ptr %.0105126, i64 12
  store float %i.jm, ptr %i.jn, align 4, !tbaa !35
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  %.rtmerge = add nuw nsw i32 %.0104127, 1        ; 2 uses
  %exitcond138.not.rtmerge = icmp eq i32 %.rtmerge, %i.h
  %.rtmerge155 = getelementptr inbounds [4 x i8], ptr %.0105126, i64 %i.br
  %.rtmerge154 = getelementptr inbounds [4 x i8], ptr %.0106125, i64 %i.br
  %.rtmerge153 = add nuw nsw i64 %.0107124, 1
  br i1 %exitcond138.not.rtmerge, label %._crit_edge130, label %bb.h, !llvm.loop !115
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
  br i1 %i.bd, label %.lr.ph50, label %._crit_edge51, !llvm.loop !125
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
  %i.aq = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ao
  %i.ar = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ap, %i.aq
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.am, <2 x float> %i.ao
  %i.at = fptosi <2 x float> %i.as to <2 x i32>   ; 3 uses
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, splat (float 2.500000e-01) ; 2 uses
  %i.av = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.au)
  %i.aw = fmul reassoc nsz arcp contract afn <2 x float> %i.av, splat (float 4.000000e+00) ; 2 uses
  %i.ax = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.au)
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.ax, splat (float 4.000000e+00) ; 2 uses
  %i.az = fsub reassoc nsz arcp contract afn <2 x float> %i.aw, %i.ac
  %i.ba = fsub reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ay
  %i.bb = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.az, %i.ba
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.aw, <2 x float> %i.ay
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.be = fptosi <4 x float> %i.bd to <4 x i32>   ; 6 uses
  %i.bf = extractelement <2 x i32> %i.at, i64 1
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nsz arcp contract afn float %i.ag, %i.bg
  %i.bi = sitofp reassoc nsz arcp contract afn <2 x i32> %i.at to <2 x float> ; 2 uses
  %i.bj = extractelement <4 x i32> %i.be, i64 1
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.bj to float
  %i.bl = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.bi ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.bn = shufflevector <2 x float> %i.ac, <2 x float> %i.aj, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.bo = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bp = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bs = fsub reassoc nsz arcp contract afn <4 x float> %i.bn, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 0
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bh ; 2 uses
  %not. = xor i1 %i.bu, true
  %i.bv = sitofp reassoc nsz arcp contract afn <4 x i32> %i.be to <4 x float>
  %i.bw = sitofp <4 x i32> %i.be to <4 x float>
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = fsub reassoc nsz arcp contract afn <4 x float> %i.ad, %i.bv ; 2 uses
  %i.bz = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = fsub reassoc nsz arcp contract afn <4 x float> %i.bz, %i.bx
  %i.cb = fcmp reassoc nsz arcp contract afn uge <4 x float> %i.bm, %i.by ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bm, %i.by
  %i.cd = shufflevector <4 x i1> %i.cc, <4 x i1> %i.cb, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ce = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bs, %i.ca ; 2 uses
  %i.cf = shufflevector <4 x i1> %i.ce, <4 x i1> %i.cb, <4 x i32> <i32 1, i32 poison, i32 poison, i32 5>
  %i.cg = insertelement <4 x i1> %i.cf, i1 %i.bu, i64 1 ; 2 uses
  %i.ch = xor <4 x i1> %i.cg, <i1 true, i1 false, i1 poison, i1 false>
  %i.ci = shufflevector <4 x i1> %i.ch, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.cj = select <4 x i1> %i.ci, <4 x i32> splat (i32 1), <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ck = insertelement <4 x i1> %i.cg, i1 %not., i64 2
  %i.cl = select <4 x i1> %i.ck, <4 x i32> <i32 1, i32 2, i32 1, i32 2>, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.cm = select <4 x i1> %i.cd, <4 x i32> %i.cj, <4 x i32> %i.cl
  %i.cn = xor <4 x i1> %i.ce, <i1 true, i1 false, i1 false, i1 false>
  %i.co = zext <4 x i1> %i.cn to <4 x i32>
  %i.cp = add nuw nsw <4 x i32> %i.cm, %i.co      ; 5 uses
  %i.cq = shufflevector <2 x i32> %i.at, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cr = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cr) ; 3 uses
  %i.ct = sdiv i32 %i.cs, 4                       ; 6 uses
  %i.cu = icmp sgt i32 %i.cs, 3
  br i1 %i.cu, label %.preheader107, label %bb.a

.preheader107:                                    ; preds = %.lr.ph
  %i.cv = insertelement <2 x i32> <i32 4, i32 poison>, i32 %i.ct, i64 1
  %i.cw = insertelement <2 x i32> <i32 poison, i32 4>, i32 %i.ct, i64 0
  %i.cx = sub nsw <2 x i32> %i.cv, %i.cw          ; 2 uses
  %i.cy = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 1> ; 2 uses
  %i.cz = add nsw <4 x i32> %i.cy, splat (i32 -4)
  %i.da = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.db = icmp slt <4 x i32> %i.cp, %i.da         ; 2 uses
  %i.dc = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %i.dd = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.de = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = select <4 x i1> %i.db, <4 x i32> %i.dd, <4 x i32> %i.de
  %i.dg = select <4 x i1> %i.db, <4 x i32> %i.cy, <4 x i32> %i.cz
  %i.dh = add nsw <4 x i32> %i.df, %i.cp
  br label %.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.di = icmp slt i32 %i.cs, -3
  %i.dj = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 1> ; 3 uses
  br i1 %i.di, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %i.dk = insertelement <2 x i32> <i32 0, i32 poison>, i32 %i.ct, i64 1
  %i.dl = insertelement <2 x i32> <i32 poison, i32 -4>, i32 %i.ct, i64 0
  %i.dm = sub nsw <2 x i32> %i.dk, %i.dl          ; 2 uses
  %i.dn = add nsw <4 x i32> %i.dj, splat (i32 4)
  %i.do = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.dp = icmp slt <4 x i32> %i.cp, %i.do         ; 2 uses
  %i.dq = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dr = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dt = select <4 x i1> %i.dp, <4 x i32> %i.dq, <4 x i32> %i.ds
  %i.du = select <4 x i1> %i.dp, <4 x i32> %i.dn, <4 x i32> %i.dj
  %i.dv = add nsw <4 x i32> %i.dt, %i.cp
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader108, %.preheader107, %bb.a
  %i.dw = phi <4 x i32> [ %i.dh, %.preheader107 ], [ %i.dv, %.preheader108 ], [ %i.cp, %bb.a ] ; 4 uses
  %i.dx = phi <4 x i32> [ %i.dg, %.preheader107 ], [ %i.du, %.preheader108 ], [ %i.dj, %bb.a ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.dy = extractelement <4 x i32> %i.dw, i64 1   ; 3 uses
  %i.dz = sub nsw i32 3, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ea ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !35
  %i.ed = sub nsw i32 4, %i.dy
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ee ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !35
  %i.eh = extractelement <4 x i32> %i.dw, i64 2   ; 3 uses
  %i.ei = sub nsw i32 3, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ej ; 2 uses
  %i.el = sub nsw i32 4, %i.eh
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %i.eo = extractelement <4 x i32> %i.dw, i64 3   ; 3 uses
  %i.ep = sub nsw i32 3, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eq ; 2 uses
  %i.es = sub nsw i32 4, %i.eo
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.et ; 2 uses
  %i.ev = sitofp reassoc nsz arcp contract afn <4 x i32> %i.dx to <4 x float>
  %i.ew = shufflevector <2 x float> %i.y, <2 x float> %i.ac, <4 x i32> <i32 1, i32 poison, i32 poison, i32 2>
  %i.ex = insertelement <4 x float> %i.ew, float %i.ah, i64 1
  %i.ey = insertelement <4 x float> %i.ex, float %i.ag, i64 2
  %i.ez = fsub reassoc nsz arcp contract afn <4 x float> %i.ey, %i.ev ; 4 uses
  %i.fa = extractelement <4 x float> %i.ez, i64 1
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, 2.500000e-01 ; 2 uses
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fb, %i.ec
  store float %i.fc, ptr %i.eb, align 4, !tbaa !35
  %i.fd = fsub reassoc nsz arcp contract afn float %i.eg, %i.fb
  store float %i.fd, ptr %i.ef, align 4, !tbaa !35
  %i.fe = extractelement <4 x float> %i.ez, i64 2
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, 2.500000e-01 ; 2 uses
  %i.fg = load float, ptr %i.ek, align 4, !tbaa !35
  %i.fh = fadd reassoc nsz arcp contract afn float %i.ff, %i.fg
  store float %i.fh, ptr %i.ek, align 4, !tbaa !35
  %i.fi = load float, ptr %i.en, align 4, !tbaa !35
  %i.fj = fsub reassoc nsz arcp contract afn float %i.fi, %i.ff
  store float %i.fj, ptr %i.en, align 4, !tbaa !35
  %i.fk = extractelement <4 x float> %i.ez, i64 3
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 2.500000e-01 ; 2 uses
  %i.fm = load float, ptr %i.er, align 4, !tbaa !35
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fl, %i.fm
  store float %i.fn, ptr %i.er, align 4, !tbaa !35
  %i.fo = load float, ptr %i.eu, align 4, !tbaa !35
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fo, %i.fl
  store float %i.fp, ptr %i.eu, align 4, !tbaa !35
  %i.fq = extractelement <4 x float> %i.ez, i64 0
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, 2.500000e-01 ; 2 uses
  %i.fs = extractelement <4 x i32> %i.dw, i64 0   ; 2 uses
  %i.ft = sub nsw i32 3, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fu ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !35
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fr, %i.fw
  store float %i.fx, ptr %i.fv, align 4, !tbaa !35
  %i.fy = sub nsw i32 4, %i.fs
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fz ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !35
  %i.gc = fsub reassoc nsz arcp contract afn float %i.gb, %i.fr
  store float %i.gc, ptr %i.ga, align 4, !tbaa !35
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ge = load float, ptr %i.gd, align 16, !tbaa !35
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, 1.000000e+00
  %i.gg = load float, ptr %i.a, align 16, !tbaa !35
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gf, %i.gg
  store float %i.gh, ptr %i.a, align 16, !tbaa !35
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !46 ; 2 uses
  %i.gk = getelementptr inbounds nuw [36 x i8], ptr %i.gj, i64 %3
  store i32 %4, ptr %i.gk, align 4, !tbaa !53
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.go = sext i32 %4 to i64                      ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.gn, align 8, !tbaa !51
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gs = extractelement <4 x i32> %i.dx, i64 1
  %i.gt = extractelement <4 x i32> %i.dx, i64 2
  %i.gu = extractelement <4 x i32> %i.dx, i64 3
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  %i.gv = phi ptr [ %i.gj, %.loopexit ], [ %i.jw, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ]
  %i.gw = phi ptr [ %.pre, %.loopexit ], [ %i.jx, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 5 uses
  %i.gx = load ptr, ptr %i.gl, align 8, !tbaa !47 ; 3 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gy = shl nuw nsw i32 %indvars.iv.tr, 2       ; 3 uses
  %i.gz = add nsw i32 %i.dy, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !33
  %i.hd = add nsw i32 %i.hc, %i.gs                ; 2 uses
  %i.he = trunc i32 %i.hd to i16
  store i16 %i.he, ptr %i.gm, align 4, !tbaa !54
  %i.hf = add nsw i32 %i.eh, %i.gy
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !33
  %i.hj = add nsw i32 %i.hi, %i.gt                ; 2 uses
  %i.hk = trunc i32 %i.hj to i16
  store i16 %i.hk, ptr %i.gq, align 2, !tbaa !54
  %i.hl = add nsw i32 %i.eo, %i.gy
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !33
  %i.hp = add nsw i32 %i.ho, %i.gu                ; 2 uses
  %i.hq = trunc i32 %i.hp to i16
  store i16 %i.hq, ptr %i.gr, align 4, !tbaa !54
  %sext = shl i32 %i.hd, 16
  %i.hr = ashr exact i32 %sext, 16
  %i.hs = mul i32 %i.hr, 2531011
  %sext227 = shl i32 %i.hj, 16
  %i.ht = ashr exact i32 %sext227, 16
  %i.hu = add i32 %i.hs, %i.ht
  %i.hv = mul i32 %i.hu, 2531011
  %sext228 = shl i32 %i.hp, 16
  %i.hw = ashr exact i32 %sext228, 16
  %i.hx = add i32 %i.hv, %i.hw
  %i.hy = mul i32 %i.hx, 2531011                  ; 3 uses
  store i32 %i.hy, ptr %5, align 4, !tbaa !56
  %i.hz = getelementptr inbounds [80 x i8], ptr %i.gw, i64 %i.go ; 10 uses
  %i.ia = zext i32 %i.hy to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !50 ; 2 uses
  %i.id = and i64 %i.ic, %i.ia                    ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !57 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.id
  %.sroa.0.0.copyload22.i.i = load i32, ptr %i.ig, align 4, !tbaa !33 ; 2 uses
  %i.ih = icmp eq i32 %.sroa.0.0.copyload22.i.i, -1
  br i1 %i.ih, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

.lr.ph.i.i:                                       ; preds = %.preheader
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !58
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.preheader
  %.011.lcssa.i.i = phi i64 [ %i.id, %.preheader ], [ %i.jt, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 4 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !59 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.im = load i64, ptr %i.il, align 8, !tbaa !60
  %.not.i.i = icmp ult i64 %i.ik, %i.im
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 72 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !61
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !61
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !49
  tail call void @_ZN22HashTablePermutohedralILi3ELi2EE9growExactEm(ptr noundef nonnull align 8 dereferenceable(80) %i.hz, i64 noundef %i.ir)
  %.pre.i.i = load i64, ptr %i.ij, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.is = phi i64 [ %.pre.i.i, %bb.c ], [ %i.ik, %._crit_edge.i.i ]
  %i.it = load ptr, ptr %i.hz, align 8, !tbaa !58
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %i.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.iu, ptr noundef nonnull align 4 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !63
  %i.iv = load i64, ptr %i.ij, align 8, !tbaa !59 ; 2 uses
  %i.iw = trunc i64 %i.iv to i32                  ; 2 uses
  %i.ix = load ptr, ptr %i.ie, align 8, !tbaa !57
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %.011.lcssa.i.i
  store i32 %i.iw, ptr %i.iy, align 4, !tbaa !65
  %i.iz = add i64 %i.iv, 1
  store i64 %i.iz, ptr %i.ij, align 8, !tbaa !59
  %.pre224 = load ptr, ptr %i.gn, align 8, !tbaa !51
  %.pre225 = load ptr, ptr %i.gi, align 8, !tbaa !46
  br label %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i

bb.e:                                             ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.0.0.copyload24.i.i = phi i32 [ %.sroa.0.0.copyload22.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ] ; 2 uses
  %.01123.i.i = phi i64 [ %i.id, %.lr.ph.i.i ], [ %i.jt, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.ja = sext i32 %.sroa.0.0.copyload24.i.i to i64
  %i.jb = getelementptr inbounds [12 x i8], ptr %i.ii, i64 %i.ja ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !56
  %.not.i.i.i = icmp eq i32 %i.jc, %i.hy
  br i1 %.not.i.i.i, label %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i, label %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i

_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i: ; preds = %bb.e
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 4 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 1
  %i.jf = load i32, ptr %i.gm, align 1
  %i.jg = xor i32 %i.je, %i.jf
  %i.jh = getelementptr i8, ptr %i.jd, i64 4
  %i.ji = getelementptr i8, ptr %i.gm, i64 4
  %i.jj = load i16, ptr %i.jh, align 1
  %i.jk = load i16, ptr %i.ji, align 1
  %i.jl = zext i16 %i.jj to i32
  %i.jm = zext i16 %i.jk to i32
  %i.jn = xor i32 %i.jl, %i.jm
  %i.jo = or i32 %i.jg, %i.jn
  %i.jp = icmp ne i32 %i.jo, 0
  %i.jq = zext i1 %i.jp to i32
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i, label %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i

_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i: ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i, %bb.e
  %i.js = add i64 %.01123.i.i, 1
  %i.jt = and i64 %i.js, %i.ic                    ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.jt
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ju, align 4, !tbaa !33 ; 2 uses
  %i.jv = icmp eq i32 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.jv, label %._crit_edge.i.i, label %bb.e, !llvm.loop !0

_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i: ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i, %bb.d
  %i.jw = phi ptr [ %.pre225, %bb.d ], [ %i.gv, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
  %i.jx = phi ptr [ %.pre224, %bb.d ], [ %i.gw, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
  %.113.ph.i.i = phi i32 [ %i.iw, %bb.d ], [ %.sroa.0.0.copyload24.i.i, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
end_hunk_0
