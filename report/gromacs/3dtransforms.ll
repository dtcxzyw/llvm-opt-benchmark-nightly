Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/3dtransforms?download=true
inline.NumInlined: 74
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@.str = private unnamed_addr constant [66 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/math/3dtransforms.cpp\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Error: invalid axis: %d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%10.5f\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z13gmx_mat4_copyPA4_fS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %1) local_unnamed_addr #0 {
.preheader:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 64
  %i.d = add i64 %i.a, 64
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.preheader.rtscalar, label %.preheader.rtvec

.preheader.rtvec:                                 ; preds = %.preheader
  %i.e = load <8 x float>, ptr %0, align 4, !tbaa !10
  store <8 x float> %i.e, ptr %1, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load <8 x float>, ptr %i.f, align 4, !tbaa !10
  store <8 x float> %i.h, ptr %i.g, align 4, !tbaa !10
  br label %.preheader.rtcont

.preheader.rtscalar:                              ; preds = %.preheader
  %i.i = load float, ptr %0, align 4, !tbaa !10
  store float %i.i, ptr %1, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.k, ptr %i.l, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.q, ptr %i.r, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load float, ptr %i.s, align 4, !tbaa !10
  store float %i.u, ptr %i.t, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.w, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.z, ptr %i.aa, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !10
  store float %i.ag, ptr %i.af, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.ai, ptr %i.aj, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.al, ptr %i.am, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = load float, ptr %i.an, align 4, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.ao, ptr %i.ap, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load float, ptr %i.aq, align 4, !tbaa !10
  store float %i.as, ptr %i.ar, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.au, ptr %i.av, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.ax, ptr %i.ay, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.ba, ptr %i.bb, align 4, !tbaa !10
  br label %.preheader.rtcont

.preheader.rtcont:                                ; preds = %.preheader.rtscalar, %.preheader.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z24gmx_mat4_transform_pointPA4_fPKfPf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load float, ptr %0, align 4, !tbaa !10
  %i.g = load float, ptr %1, align 4, !tbaa !10
  %i.h = load float, ptr %i.a, align 4, !tbaa !10
  %i.i = load float, ptr %i.b, align 4, !tbaa !10
  %i.j = fmul float %i.h, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.f, float %i.g, float %i.j)
  %i.l = load float, ptr %i.c, align 4, !tbaa !10
  %i.m = load float, ptr %i.d, align 4, !tbaa !10
  %i.n = tail call float @llvm.fmuladd.f32(float %i.l, float %i.m, float %i.k)
  %i.o = load float, ptr %i.e, align 4, !tbaa !10
  %i.p = fadd float %i.n, %i.o
  store float %i.p, ptr %2, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !10
  %i.s = load float, ptr %1, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = load float, ptr %i.b, align 4, !tbaa !10
  %i.w = fmul float %i.u, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.r, float %i.s, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = load float, ptr %i.d, align 4, !tbaa !10
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.z, float %i.aa, float %i.x)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !10
  %i.ae = fadd float %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ae, ptr %i.af, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !10
  %i.ai = load float, ptr %1, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !10
  %i.al = load float, ptr %i.b, align 4, !tbaa !10
  %i.am = fmul float %i.ak, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ai, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = load float, ptr %i.d, align 4, !tbaa !10
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.aq, float %i.an)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load float, ptr %i.as, align 4, !tbaa !10
  %i.au = fadd float %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = load float, ptr %1, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = load float, ptr %i.b, align 4, !tbaa !10
  %i.bc = fmul float %i.ba, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ay, float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bf = load float, ptr %i.be, align 4, !tbaa !10
  %i.bg = load float, ptr %i.d, align 4, !tbaa !10
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.bd)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !10
  %i.bk = fadd float %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.bk, ptr %i.bl, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z13gmx_mat4_mmulPA4_fS0_S0_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
.preheader:
  store float 0.000000e+00, ptr %0, align 4, !tbaa !10
  %i.a = load float, ptr %1, align 4, !tbaa !10
  %i.b = load float, ptr %2, align 4, !tbaa !10
  %i.c = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float 0.000000e+00) ; 2 uses
  store float %i.c, ptr %0, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %gep.1 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = load float, ptr %gep.1, align 4, !tbaa !10
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float %i.f, float %i.c) ; 2 uses
  store float %i.g, ptr %0, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %gep.2 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.j = load float, ptr %gep.2, align 4, !tbaa !10
  %i.k = tail call float @llvm.fmuladd.f32(float %i.i, float %i.j, float %i.g) ; 2 uses
  store float %i.k, ptr %0, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %gep.3 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.n = load float, ptr %gep.3, align 4, !tbaa !10
  %i.o = tail call float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.k)
  store float %i.o, ptr %0, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !10
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.q = load float, ptr %1, align 4, !tbaa !10
  %i.r = load float, ptr %invariant.gep.1, align 4, !tbaa !10
  %i.s = tail call float @llvm.fmuladd.f32(float %i.q, float %i.r, float 0.000000e+00) ; 2 uses
  store float %i.s, ptr %i.p, align 4, !tbaa !10
  %i.t = load float, ptr %i.d, align 4, !tbaa !10
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.u = load float, ptr %gep.1.1, align 4, !tbaa !10
  %i.v = tail call float @llvm.fmuladd.f32(float %i.t, float %i.u, float %i.s) ; 2 uses
  store float %i.v, ptr %i.p, align 4, !tbaa !10
end_hunk_0
begin_hunk_1_@_Z13gmx_mat4_mmulPA4_fS0_S0_:.preheader
  store float %i.et, ptr %i.ek, align 4, !tbaa !10
  %i.eu = load float, ptr %i.dt, align 4, !tbaa !10
  %i.ev = load float, ptr %gep.3.2, align 4, !tbaa !10
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ev, float %i.et)
  store float %i.ew, ptr %i.ek, align 4, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  store float 0.000000e+00, ptr %i.ex, align 4, !tbaa !10
  %i.ey = load float, ptr %i.dh, align 4, !tbaa !10
  %i.ez = load float, ptr %invariant.gep.3, align 4, !tbaa !10
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.ez, float 0.000000e+00) ; 2 uses
  store float %i.fa, ptr %i.ex, align 4, !tbaa !10
  %i.fb = load float, ptr %i.dl, align 4, !tbaa !10
  %i.fc = load float, ptr %gep.1.3, align 4, !tbaa !10
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fc, float %i.fa) ; 2 uses
  store float %i.fd, ptr %i.ex, align 4, !tbaa !10
  %i.fe = load float, ptr %i.dp, align 4, !tbaa !10
  %i.ff = load float, ptr %gep.2.3, align 4, !tbaa !10
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.ff, float %i.fd) ; 2 uses
  store float %i.fg, ptr %i.ex, align 4, !tbaa !10
  %i.fh = load float, ptr %i.dt, align 4, !tbaa !10
  %i.fi = load float, ptr %gep.3.3, align 4, !tbaa !10
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fi, float %i.fg)
  store float %i.fj, ptr %i.ex, align 4, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store float 0.000000e+00, ptr %i.fk, align 4, !tbaa !10
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !10
  %i.fn = load float, ptr %2, align 4, !tbaa !10
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fn, float 0.000000e+00) ; 2 uses
  store float %i.fo, ptr %i.fk, align 4, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !10
  %i.fr = load float, ptr %gep.1, align 4, !tbaa !10
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.fr, float %i.fo) ; 2 uses
  store float %i.fs, ptr %i.fk, align 4, !tbaa !10
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !10
  %i.fv = load float, ptr %gep.2, align 4, !tbaa !10
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fv, float %i.fs) ; 2 uses
  store float %i.fw, ptr %i.fk, align 4, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 4 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !10
  %i.fz = load float, ptr %gep.3, align 4, !tbaa !10
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fz, float %i.fw)
  store float %i.ga, ptr %i.fk, align 4, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  store float 0.000000e+00, ptr %i.gb, align 4, !tbaa !10
  %i.gc = load float, ptr %i.fl, align 4, !tbaa !10
  %i.gd = load float, ptr %invariant.gep.1, align 4, !tbaa !10
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gd, float 0.000000e+00) ; 2 uses
  store float %i.ge, ptr %i.gb, align 4, !tbaa !10
  %i.gf = load float, ptr %i.fp, align 4, !tbaa !10
  %i.gg = load float, ptr %gep.1.1, align 4, !tbaa !10
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.gg, float %i.ge) ; 2 uses
  store float %i.gh, ptr %i.gb, align 4, !tbaa !10
  %i.gi = load float, ptr %i.ft, align 4, !tbaa !10
  %i.gj = load float, ptr %gep.2.1, align 4, !tbaa !10
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.gj, float %i.gh) ; 2 uses
  store float %i.gk, ptr %i.gb, align 4, !tbaa !10
  %i.gl = load float, ptr %i.fx, align 4, !tbaa !10
  %i.gm = load float, ptr %gep.3.1, align 4, !tbaa !10
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gm, float %i.gk)
  store float %i.gn, ptr %i.gb, align 4, !tbaa !10
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store float 0.000000e+00, ptr %i.go, align 4, !tbaa !10
  %i.gp = load float, ptr %i.fl, align 4, !tbaa !10
  %i.gq = load float, ptr %invariant.gep.2, align 4, !tbaa !10
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gq, float 0.000000e+00) ; 2 uses
  store float %i.gr, ptr %i.go, align 4, !tbaa !10
  %i.gs = load float, ptr %i.fp, align 4, !tbaa !10
  %i.gt = load float, ptr %gep.1.2, align 4, !tbaa !10
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gt, float %i.gr) ; 2 uses
  store float %i.gu, ptr %i.go, align 4, !tbaa !10
  %i.gv = load float, ptr %i.ft, align 4, !tbaa !10
  %i.gw = load float, ptr %gep.2.2, align 4, !tbaa !10
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gw, float %i.gu) ; 2 uses
  store float %i.gx, ptr %i.go, align 4, !tbaa !10
  %i.gy = load float, ptr %i.fx, align 4, !tbaa !10
  %i.gz = load float, ptr %gep.3.2, align 4, !tbaa !10
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.gz, float %i.gx)
  store float %i.ha, ptr %i.go, align 4, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  store float 0.000000e+00, ptr %i.hb, align 4, !tbaa !10
  %i.hc = load float, ptr %i.fl, align 4, !tbaa !10
  %i.hd = load float, ptr %invariant.gep.3, align 4, !tbaa !10
  %i.he = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hd, float 0.000000e+00) ; 2 uses
  store float %i.he, ptr %i.hb, align 4, !tbaa !10
  %i.hf = load float, ptr %i.fp, align 4, !tbaa !10
  %i.hg = load float, ptr %gep.1.3, align 4, !tbaa !10
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.hg, float %i.he) ; 2 uses
  store float %i.hh, ptr %i.hb, align 4, !tbaa !10
  %i.hi = load float, ptr %i.ft, align 4, !tbaa !10
  %i.hj = load float, ptr %gep.2.3, align 4, !tbaa !10
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.hj, float %i.hh) ; 2 uses
  store float %i.hk, ptr %i.hb, align 4, !tbaa !10
  %i.hl = load float, ptr %i.fx, align 4, !tbaa !10
  %i.hm = load float, ptr %gep.3.3, align 4, !tbaa !10
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hm, float %i.hk)
  store float %i.hn, ptr %i.hb, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z19gmx_mat4_init_unityPA4_f(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> <float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00>, ptr align 4 %0, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z22gmx_mat4_init_rotationifPA4_f(i32 noundef %0, float noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> <float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00>, ptr align 4 %2, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !10
  switch i32 %0, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef float @cosf(float noundef %1) #16
  store float %i.f, ptr %i.b, align 4, !tbaa !10
  %i.g = tail call noundef float @sinf(float noundef %1) #16 ; 2 uses
  %i.h = fneg float %i.g
  store float %i.h, ptr %i.c, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %i.g, ptr %i.i, align 4, !tbaa !10
  %i.j = tail call noundef float @cosf(float noundef %1) #16
  store float %i.j, ptr %i.d, align 4, !tbaa !10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef float @cosf(float noundef %1) #16
  store float %i.k, ptr %2, align 4, !tbaa !10
  %i.l = tail call noundef float @sinf(float noundef %1) #16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.l, ptr %i.m, align 4, !tbaa !10
  %i.n = fneg float %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = tail call noundef float @cosf(float noundef %1) #16
  store float %i.p, ptr %i.d, align 4, !tbaa !10
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.q = tail call noundef float @cosf(float noundef %1) #16
  store float %i.q, ptr %2, align 4, !tbaa !10
  %i.r = tail call noundef float @sinf(float noundef %1) #16 ; 2 uses
  %i.s = fneg float %i.r
  store float %i.s, ptr %i.a, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.r, ptr %i.t, align 4, !tbaa !10
  %i.u = tail call noundef float @cosf(float noundef %1) #16
  store float %i.u, ptr %i.b, align 4, !tbaa !10
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 136, ptr noundef nonnull @.str.1, i32 noundef %0) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(66) %1, i8 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(66) %1) #16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.b, ptr %i.a, align 8, !tbaa !21
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.f, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.h, ptr %i.g, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !22
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !17
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z25gmx_mat4_init_translationfffPA4_f(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %3) local_unnamed_addr #3 {
bb.a:
  store float 1.000000e+00, ptr %3, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 0, ptr %i.e, align 4
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %0, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 52
  store float %1, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store float %2, ptr %i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z14gmx_mat4_printP8_IO_FILEPKcPA4_f(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef %1) #16 ; 0 uses
  %fputc = tail call i32 @fputc(i32 9, ptr nonnull %0) ; 0 uses
  %i.b = load float, ptr %2, align 4, !tbaa !10
  %i.c = fpext float %i.b to double
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.c) #16 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = fpext float %i.f to double
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.g) #16 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = fpext float %i.j to double
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.k) #16 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = fpext float %i.n to double
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.o) #16 ; 0 uses
  %fputc14 = tail call i32 @fputc(i32 10, ptr nonnull %0) ; 0 uses
  %fputc.1 = tail call i32 @fputc(i32 9, ptr nonnull %0) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !10
  %i.s = fpext float %i.r to double
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.s) #16 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !10
  %i.w = fpext float %i.v to double
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.w) #16 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = fpext float %i.z to double
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.aa) #16 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !10
  %i.ae = fpext float %i.ad to double
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.ae) #16 ; 0 uses
  %fputc14.1 = tail call i32 @fputc(i32 10, ptr nonnull %0) ; 0 uses
  %fputc.2 = tail call i32 @fputc(i32 9, ptr nonnull %0) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !10
  %i.ai = fpext float %i.ah to double
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.ai) #16 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = fpext float %i.al to double
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.am) #16 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = fpext float %i.ap to double
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.aq) #16 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.at = load float, ptr %i.as, align 4, !tbaa !10
  %i.au = fpext float %i.at to double
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.au) #16 ; 0 uses
  %fputc14.2 = tail call i32 @fputc(i32 10, ptr nonnull %0) ; 0 uses
  %fputc.3 = tail call i32 @fputc(i32 9, ptr nonnull %0) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = fpext float %i.ax to double
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.ay) #16 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !10
  %i.bc = fpext float %i.bb to double
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.bc) #16 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bf = load float, ptr %i.be, align 4, !tbaa !10
  %i.bg = fpext float %i.bf to double
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.bg) #16 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !10
  %i.bk = fpext float %i.bj to double
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.bk) #16 ; 0 uses
  %fputc14.3 = tail call i32 @fputc(i32 10, ptr nonnull %0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z14gmx_vec4_printP8_IO_FILEPKcPf(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef %1) #16 ; 0 uses
  %i.b = load float, ptr %2, align 4, !tbaa !10
  %i.c = fpext float %i.b to double
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.c) #16 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = fpext float %i.f to double
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.g) #16 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = fpext float %i.j to double
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.k) #16 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = fpext float %i.n to double
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, double noundef %i.o) #16 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !5, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!13, !12, i64 0}
!21 = !{!14, !14, i64 0}
!22 = !{!15, !14, i64 8}
end_hunk_1
