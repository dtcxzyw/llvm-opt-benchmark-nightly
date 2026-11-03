Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/restcbt?download=true
inline.NumInlined: 24
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_Z26compute_factors_restanglesiPK9t_iparamsPfS2_PdS3_S3_S2_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [48 x i8], ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !9
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !9
  %i.g = fpext float %i.f to double
  %i.h = fmul double %i.g, f0x3F91DF46A2529D39
  %i.i = fsub double f0x400921FB54442D18, %i.h
  %i.j = tail call double @cos(double noundef %i.i) #4 ; 2 uses
  %i.k = load float, ptr %2, align 4, !tbaa !11   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !11 ; 3 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !11 ; 3 uses
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.o)
  %i.s = fpext float %i.r to double               ; 2 uses
  %i.t = load float, ptr %3, align 4, !tbaa !11   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !11 ; 3 uses
  %i.w = fmul float %i.m, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.k, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !11 ; 3 uses
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.z, float %i.x)
  %i.ab = fpext float %i.aa to double             ; 3 uses
  %i.ac = fmul float %i.v, %i.v
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.ac)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ad)
  %i.af = fpext float %i.ae to double             ; 2 uses
  %i.ag = fmul double %i.s, %i.af
  %i.ah = tail call double @llvm.sqrt.f64(double %i.ag)
  %i.ai = fdiv double 1.000000e+00, %i.ah         ; 2 uses
  %i.aj = fmul double %i.ai, %i.ab                ; 3 uses
  %i.ak = fneg double %i.aj                       ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aj, double 1.000000e+00) ; 3 uses
  %i.am = fdiv double %i.ab, %i.s
  store double %i.am, ptr %5, align 8, !tbaa !13
  %i.an = fdiv double %i.ab, %i.af
  store double %i.an, ptr %6, align 8, !tbaa !13
  %i.ao = fsub double %i.aj, %i.j                 ; 3 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.j, double 1.000000e+00)
  %i.aq = fneg double %i.e
  %i.ar = fmul double %i.ao, %i.aq
  %i.as = fmul double %i.ai, %i.ar
  %i.at = fmul double %i.ap, %i.as
  %i.au = fmul double %i.al, %i.al
  %i.av = fdiv double %i.at, %i.au
  store double %i.av, ptr %4, align 8, !tbaa !13
  %i.aw = fmul double %i.e, 5.000000e-01
  %i.ax = fmul double %i.aw, %i.ao
  %i.ay = fmul double %i.ao, %i.ax
  %i.az = fdiv double %i.ay, %i.al
  %i.ba = fptrunc double %i.az to float
  store float %i.ba, ptr %7, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_Z25compute_factors_restrdihsiPK9t_iparamsPfS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %10, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %11, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %12, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %13, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %14, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %15, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %16, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %17, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %18) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [48 x i8], ptr %1, i64 %i.a ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !9
  %i.d = fpext float %i.c to double
  %i.e = fmul double %i.d, f0x3F91DF46A2529D39
  %i.f = fptrunc double %i.e to float
  %i.g = tail call noundef float @cosf(float noundef %i.f) #4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !9  ; 2 uses
  %i.j = load float, ptr %2, align 4, !tbaa !11   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !11 ; 4 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !11 ; 4 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n) ; 3 uses
  %i.r = load float, ptr %3, align 4, !tbaa !11   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !11 ; 4 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !11 ; 4 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.v) ; 9 uses
  %i.z = load float, ptr %4, align 4, !tbaa !11   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !11 ; 4 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !11 ; 4 uses
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ad) ; 3 uses
  %i.ah = fmul float %i.l, %i.t
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.j, float %i.r, float %i.ah)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.x, float %i.ai) ; 10 uses
  %i.ak = fmul float %i.l, %i.ab
  %i.al = tail call float @llvm.fmuladd.f32(float %i.j, float %i.z, float %i.ak)
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.af, float %i.al) ; 2 uses
  %i.an = fmul float %i.t, %i.ab
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.r, float %i.z, float %i.an)
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.af, float %i.ao) ; 8 uses
  %i.aq = fneg float %i.am
  %i.ar = fmul float %i.y, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ap, float %i.ar) ; 3 uses
  %i.at = fneg float %i.aj
  %i.au = fmul float %i.aj, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.q, float %i.y, float %i.au) ; 2 uses
  %i.aw = fneg float %i.ap                        ; 3 uses
  %i.ax = fmul float %i.ap, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.y, float %i.ax) ; 2 uses
  %i.az = fcmp olt float %i.av, f0x34000000
  %spec.store.select = select i1 %i.az, float f0x34000000, float %i.av ; 2 uses
  %i.ba = fcmp olt float %i.ay, f0x34000000
  %spec.store.select2 = select i1 %i.ba, float f0x34000000, float %i.ay ; 2 uses
  %i.bb = fmul float %spec.store.select, %spec.store.select2
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bb)
  %i.bc = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.bd = fmul float %i.as, %i.bc                 ; 4 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fsub float 1.000000e+00, %i.be          ; 2 uses
  %i.bg = fcmp olt float %i.bf, 0.000000e+00
  %spec.store.select1 = select i1 %i.bg, float 0.000000e+00, float %i.bf ; 3 uses
  %i.bh = fsub float %i.bd, %i.g                  ; 2 uses
  %i.bi = fneg float %i.bd
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.g, float 1.000000e+00)
  %i.bk = fdiv float %i.as, %spec.store.select    ; 5 uses
  %i.bl = fdiv float %i.as, %spec.store.select2   ; 5 uses
  %i.bm = fneg float %i.i
  %i.bn = fmul float %i.bh, %i.bm
  %i.bo = fmul float %i.bc, %i.bn
  %i.bp = fmul float %i.bj, %i.bo
  %i.bq = fmul float %spec.store.select1, %spec.store.select1
  %i.br = fdiv float %i.bp, %i.bq
  store float %i.br, ptr %17, align 4, !tbaa !11
  %i.bs = fmul float %i.y, %i.bk
  store float %i.bs, ptr %5, align 4, !tbaa !11
  %i.bt = fneg float %i.bk                        ; 2 uses
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.aj, float %i.aw)
  store float %i.bu, ptr %6, align 4, !tbaa !11
  store float %i.y, ptr %7, align 4, !tbaa !11
  %i.bv = fadd float %i.y, %i.aj                  ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bv, float %i.aw)
  store float %i.bw, ptr %8, align 4, !tbaa !11
  %i.bx = fpext float %i.ap to double
  %i.by = fpext float %i.am to double             ; 2 uses
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double 2.000000e+00, double %i.bx)
  %i.ca = fadd float %i.q, %i.aj
  %i.cb = fmul float %i.ca, %i.bk
  %i.cc = fpext float %i.cb to double
  %i.cd = fadd double %i.bz, %i.cc
  %i.ce = fmul float %i.ag, %i.bl
  %i.cf = fpext float %i.ce to double
  %i.cg = fadd double %i.cd, %i.cf
  %i.ch = fptrunc double %i.cg to float
  store float %i.ch, ptr %9, align 4, !tbaa !11
  %i.ci = fneg float %i.bv
  %i.cj = fneg float %i.bl                        ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ap, float %i.ci)
  store float %i.ck, ptr %10, align 4, !tbaa !11
  %i.cl = fadd float %i.y, %i.ap                  ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.aj, float %i.cl)
  store float %i.cm, ptr %11, align 4, !tbaa !11
  %i.cn = fpext float %i.aj to double
  %i.co = tail call double @llvm.fmuladd.f64(double %i.by, double 2.000000e+00, double %i.cn)
  %i.cp = fneg double %i.co
  %i.cq = fmul float %i.q, %i.bk
  %i.cr = fpext float %i.cq to double
  %i.cs = fsub double %i.cp, %i.cr
  %i.ct = fadd float %i.ag, %i.ap
  %i.cu = fmul float %i.ct, %i.bl
  %i.cv = fpext float %i.cu to double
  %i.cw = fsub double %i.cs, %i.cv
  %i.cx = fptrunc double %i.cw to float
  store float %i.cx, ptr %12, align 4, !tbaa !11
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.cl, float %i.aj)
  store float %i.cy, ptr %13, align 4, !tbaa !11
  %i.cz = fneg float %i.y
  store float %i.cz, ptr %14, align 4, !tbaa !11
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ap, float %i.aj)
  store float %i.da, ptr %15, align 4, !tbaa !11
  %i.db = fmul float %i.y, %i.cj
  store float %i.db, ptr %16, align 4, !tbaa !11
  %i.dc = fpext float %i.i to double
  %i.dd = fmul double %i.dc, 5.000000e-01
  %i.de = fpext float %i.bh to double             ; 2 uses
  %i.df = fmul double %i.dd, %i.de
  %i.dg = fmul double %i.df, %i.de
  %i.dh = fpext float %spec.store.select1 to double
  %i.di = fdiv double %i.dg, %i.dh
  %i.dj = fptrunc double %i.di to float
  store float %i.dj, ptr %18, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z23compute_factors_cbtdihsiPK9t_iparamsPfS2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %10, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %11, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %12, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %13, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %14, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %15) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [48 x i8], ptr %1, i64 %i.a ; 6 uses
  %.sroa.0.0.copyload = load float, ptr %i.b, align 4, !tbaa !9 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.c = load float, ptr %2, align 4, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !11 ; 4 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !11 ; 4 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g) ; 5 uses
  %i.k = load float, ptr %3, align 4, !tbaa !11   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 11 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !11 ; 4 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !11 ; 4 uses
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.o) ; 15 uses
  %i.s = load float, ptr %4, align 4, !tbaa !11   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 8 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !11 ; 4 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !11 ; 4 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.w) ; 5 uses
  %i.aa = fmul float %i.e, %i.m
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.c, float %i.k, float %i.aa)
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.q, float %i.ab) ; 13 uses
  %i.ad = fmul float %i.e, %i.u
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.c, float %i.s, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.y, float %i.ae) ; 2 uses
  %i.ag = fmul float %i.m, %i.u
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.k, float %i.s, float %i.ag)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.y, float %i.ah) ; 11 uses
  %i.aj = fneg float %i.af
  %i.ak = fmul float %i.r, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ai, float %i.ak) ; 3 uses
  %i.am = fneg float %i.ac
  %i.an = fmul float %i.ac, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.j, float %i.r, float %i.an) ; 2 uses
  %i.ap = fneg float %i.ai                        ; 3 uses
  %i.aq = fmul float %i.ai, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.z, float %i.r, float %i.aq) ; 2 uses
  %i.as = fcmp olt float %i.ao, f0x34000000
  %spec.store.select = select i1 %i.as, float f0x34000000, float %i.ao ; 2 uses
  %i.at = fcmp olt float %i.ar, f0x34000000
  %spec.store.select2 = select i1 %i.at, float f0x34000000, float %i.ar ; 2 uses
  %i.au = fmul float %spec.store.select, %spec.store.select2
  %sqrt277.a = tail call float @llvm.sqrt.f32(float %i.au)
  %i.av = fdiv float 1.000000e+00, %sqrt277.a     ; 2 uses
  %i.aw = fmul float %i.j, %i.r
  %i.ax = tail call float @llvm.sqrt.f32(float %i.aw)
  %i.ay = fdiv float 1.000000e+00, %i.ax          ; 2 uses
  %i.az = fmul float %i.r, %i.z
  %i.ba = tail call float @llvm.sqrt.f32(float %i.az)
  %i.bb = fdiv float 1.000000e+00, %i.ba          ; 2 uses
  %i.bc = fmul float %i.al, %i.av                 ; 9 uses
  %i.bd = fmul float %i.ac, %i.ay                 ; 3 uses
  %i.be = fmul float %i.ai, %i.bb                 ; 3 uses
  %i.bf = fneg float %i.bd
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bd, float 1.000000e+00) ; 2 uses
  %i.bh = fneg float %i.be
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.be, float 1.000000e+00) ; 2 uses
  %i.bj = fcmp olt float %i.bg, 0.000000e+00
  %spec.store.select1 = select i1 %i.bj, float 0.000000e+00, float %i.bg ; 4 uses
  %i.bk = fcmp olt float %i.bi, 0.000000e+00
  %spec.store.select3 = select i1 %i.bk, float 0.000000e+00, float %i.bi ; 3 uses
  %sqrt276 = tail call float @llvm.sqrt.f32(float %spec.store.select1) ; 3 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %spec.store.select3) ; 2 uses
  %i.bl = fdiv float %i.al, %spec.store.select    ; 5 uses
  %i.bm = fdiv float %i.al, %spec.store.select2   ; 5 uses
  %i.bn = fneg float %.sroa.0.0.copyload          ; 3 uses
  %i.bo = fmul float %i.av, %i.bn
  %i.bp = fpext float %i.bo to double
  %i.bq = fpext float %.sroa.5.0.copyload to double
  %i.br = fpext float %.sroa.6.0.copyload to double
  %i.bs = fmul double %i.br, 2.000000e+00
  %i.bt = fpext float %i.bc to double
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bq)
  %i.bv = fpext float %.sroa.7.0.copyload to double
  %i.bw = fmul double %i.bv, 3.000000e+00
  %i.bx = fmul float %i.bc, %i.bc                 ; 3 uses
  %i.by = fpext float %i.bx to double
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bu)
  %i.ca = fmul float %.sroa.8.0.copyload, 4.000000e+00
  %i.cb = fmul float %i.ca, %i.bc
  %i.cc = fmul float %i.bc, %i.cb
  %i.cd = fmul float %i.bc, %i.cc
  %i.ce = fpext float %i.cd to double
  %i.cf = fadd double %i.bz, %i.ce
  %i.cg = fmul double %i.cf, %i.bp
  %i.ch = fpext float %spec.store.select1 to double
  %i.ci = fmul double %i.cg, %i.ch
  %i.cj = fpext float %sqrt276 to double          ; 2 uses
  %i.ck = fmul double %i.ci, %i.cj
  %i.cl = fpext float %spec.store.select3 to double ; 2 uses
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = fpext float %sqrt to double             ; 3 uses
  %i.co = fmul double %i.cm, %i.cn
  %i.cp = fptrunc double %i.co to float           ; 12 uses
  %i.cq = fmul float %i.r, %i.bl                  ; 3 uses
  %i.cr = fneg float %i.bl                        ; 2 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.ac, float %i.ap) ; 3 uses
  %i.ct = fadd float %i.r, %i.ac                  ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.ct, float %i.ap) ; 3 uses
  %i.cv = fpext float %i.ai to double
  %i.cw = fpext float %i.af to double             ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double 2.000000e+00, double %i.cv)
  %i.cy = fadd float %i.j, %i.ac
  %i.cz = fmul float %i.cy, %i.bl
  %i.da = fpext float %i.cz to double
  %i.db = fadd double %i.cx, %i.da
  %i.dc = fmul float %i.z, %i.bm
  %i.dd = fpext float %i.dc to double
  %i.de = fadd double %i.db, %i.dd
  %i.df = fptrunc double %i.de to float           ; 3 uses
  %i.dg = fneg float %i.ct
  %i.dh = fneg float %i.bm                        ; 2 uses
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.ai, float %i.dg) ; 3 uses
  %i.dj = fadd float %i.r, %i.ai                  ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ac, float %i.dj) ; 3 uses
  %i.dl = fpext float %i.ac to double
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.cw, double 2.000000e+00, double %i.dl)
  %i.dn = fneg double %i.dm
  %i.do = fmul float %i.j, %i.bl
  %i.dp = fpext float %i.do to double
  %i.dq = fsub double %i.dn, %i.dp
  %i.dr = fadd float %i.z, %i.ai
  %i.ds = fmul float %i.dr, %i.bm
  %i.dt = fpext float %i.ds to double
  %i.du = fsub double %i.dq, %i.dt
  %i.dv = fptrunc double %i.du to float           ; 3 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.dj, float %i.ac) ; 3 uses
  %i.dx = fneg float %i.r                         ; 3 uses
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.ai, float %i.ac) ; 3 uses
  %i.dz = fmul float %i.r, %i.dh                  ; 3 uses
  %i.ea = load float, ptr %2, align 4, !tbaa !11
  %i.eb = load float, ptr %3, align 4, !tbaa !11
  %i.ec = fmul float %i.cs, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.ea, float %i.ec)
  %i.ee = load float, ptr %4, align 4, !tbaa !11
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ee, float %i.ed)
  %i.eg = fmul float %i.ef, %i.cp
  store float %i.eg, ptr %5, align 4, !tbaa !11
  %i.eh = load float, ptr %2, align 4, !tbaa !11
  %i.ei = load float, ptr %3, align 4, !tbaa !11
  %i.ej = fmul float %i.ei, %i.df
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.eh, float %i.ej)
  %i.el = load float, ptr %4, align 4, !tbaa !11
  %i.em = tail call float @llvm.fmuladd.f32(float %i.di, float %i.el, float %i.ek)
  %i.en = fmul float %i.em, %i.cp
  store float %i.en, ptr %6, align 4, !tbaa !11
  %i.eo = load float, ptr %2, align 4, !tbaa !11
  %i.ep = load float, ptr %3, align 4, !tbaa !11
  %i.eq = fmul float %i.ep, %i.dv
  %i.er = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.eo, float %i.eq)
  %i.es = load float, ptr %4, align 4, !tbaa !11
  %i.et = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.es, float %i.er)
  %i.eu = fmul float %i.et, %i.cp
  store float %i.eu, ptr %7, align 4, !tbaa !11
  %i.ev = load float, ptr %2, align 4, !tbaa !11
  %i.ew = load float, ptr %3, align 4, !tbaa !11
  %i.ex = fmul float %i.dy, %i.ew
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.ev, float %i.ex)
  %i.ez = load float, ptr %4, align 4, !tbaa !11
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.ez, float %i.ey)
  %i.fb = fmul float %i.fa, %i.cp
  store float %i.fb, ptr %8, align 4, !tbaa !11
  %i.fc = load float, ptr %i.d, align 4, !tbaa !11
  %i.fd = load float, ptr %i.l, align 4, !tbaa !11
  %i.fe = fmul float %i.cs, %i.fd
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.fc, float %i.fe)
  %i.fg = load float, ptr %i.t, align 4, !tbaa !11
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.r, float %i.fg, float %i.ff)
  %i.fi = fmul float %i.fh, %i.cp
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.fi, ptr %i.fj, align 4, !tbaa !11
  %i.fk = load float, ptr %i.d, align 4, !tbaa !11
  %i.fl = load float, ptr %i.l, align 4, !tbaa !11
  %i.fm = fmul float %i.fl, %i.df
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.fk, float %i.fm)
  %i.fo = load float, ptr %i.t, align 4, !tbaa !11
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.di, float %i.fo, float %i.fn)
  %i.fq = fmul float %i.fp, %i.cp
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.fq, ptr %i.fr, align 4, !tbaa !11
  %i.fs = load float, ptr %i.d, align 4, !tbaa !11
  %i.ft = load float, ptr %i.l, align 4, !tbaa !11
  %i.fu = fmul float %i.ft, %i.dv
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.fs, float %i.fu)
  %i.fw = load float, ptr %i.t, align 4, !tbaa !11
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.fw, float %i.fv)
  %i.fy = fmul float %i.fx, %i.cp
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.fy, ptr %i.fz, align 4, !tbaa !11
  %i.ga = load float, ptr %i.d, align 4, !tbaa !11
  %i.gb = load float, ptr %i.l, align 4, !tbaa !11
  %i.gc = fmul float %i.dy, %i.gb
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.ga, float %i.gc)
  %i.ge = load float, ptr %i.t, align 4, !tbaa !11
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.ge, float %i.gd)
  %i.gg = fmul float %i.gf, %i.cp
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.gg, ptr %i.gh, align 4, !tbaa !11
  %i.gi = load float, ptr %i.h, align 4, !tbaa !11
  %i.gj = load float, ptr %i.p, align 4, !tbaa !11
  %i.gk = fmul float %i.cs, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.gi, float %i.gk)
  %i.gm = load float, ptr %i.x, align 4, !tbaa !11
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.r, float %i.gm, float %i.gl)
  %i.go = fmul float %i.gn, %i.cp
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.go, ptr %i.gp, align 4, !tbaa !11
  %i.gq = load float, ptr %i.h, align 4, !tbaa !11
  %i.gr = load float, ptr %i.p, align 4, !tbaa !11
  %i.gs = fmul float %i.gr, %i.df
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.gq, float %i.gs)
  %i.gu = load float, ptr %i.x, align 4, !tbaa !11
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.di, float %i.gu, float %i.gt)
  %i.gw = fmul float %i.gv, %i.cp
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.gw, ptr %i.gx, align 4, !tbaa !11
  %i.gy = load float, ptr %i.h, align 4, !tbaa !11
  %i.gz = load float, ptr %i.p, align 4, !tbaa !11
  %i.ha = fmul float %i.gz, %i.dv
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.gy, float %i.ha)
  %i.hc = load float, ptr %i.x, align 4, !tbaa !11
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.hc, float %i.hb)
  %i.he = fmul float %i.hd, %i.cp
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.he, ptr %i.hf, align 4, !tbaa !11
  %i.hg = load float, ptr %i.h, align 4, !tbaa !11
  %i.hh = load float, ptr %i.p, align 4, !tbaa !11
  %i.hi = fmul float %i.dy, %i.hh
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.hg, float %i.hi)
  %i.hk = load float, ptr %i.x, align 4, !tbaa !11
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.hk, float %i.hj)
  %i.hm = fmul float %i.hl, %i.cp
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.hm, ptr %i.hn, align 4, !tbaa !11
  %i.ho = fdiv float %i.ac, %i.j                  ; 4 uses
  %i.hp = fdiv float %i.ac, %i.r                  ; 2 uses
  %i.hq = fmul float %i.ay, %i.bn
  %i.hr = tail call float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %i.bc, float %.sroa.4.0.copyload)
  %i.hs = tail call float @llvm.fmuladd.f32(float %.sroa.6.0.copyload, float %i.bx, float %i.hr)
  %i.ht = fmul float %i.bc, %i.bx                 ; 2 uses
  %i.hu = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.ht, float %i.hs)
  %i.hv = fmul float %i.bc, %i.ht
  %i.hw = tail call float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.hv, float %i.hu) ; 3 uses
  %i.hx = fmul float %i.hq, %i.hw
  %i.hy = fpext float %i.hx to double
  %i.hz = fmul double %i.hy, -3.000000e+00
  %i.ia = fpext float %i.bd to double
  %i.ib = fmul double %i.hz, %i.ia
  %i.ic = fmul double %i.ib, %i.cj
  %i.id = fmul double %i.ic, %i.cl
  %i.ie = fmul double %i.id, %i.cn
  %i.if = fptrunc double %i.ie to float           ; 7 uses
  %i.ig = fpext float %i.if to double             ; 3 uses
  %i.ih = fpext float %i.hp to double
  %i.ii = fadd double %i.ih, 1.000000e+00         ; 3 uses
  %i.ij = fpext float %i.ho to double
  %i.ik = fadd double %i.ij, 1.000000e+00         ; 3 uses
  %i.il = fneg float %i.hp                        ; 3 uses
  %i.im = load float, ptr %2, align 4, !tbaa !11
  %i.in = load float, ptr %3, align 4, !tbaa !11
  %i.io = fneg float %i.in
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.im, float %i.io)
  %i.iq = fmul float %i.ip, %i.if
  store float %i.iq, ptr %9, align 4, !tbaa !11
  %i.ir = load float, ptr %3, align 4, !tbaa !11
  %i.is = fpext float %i.ir to double
  %i.it = load float, ptr %2, align 4, !tbaa !11
  %i.iu = fpext float %i.it to double
  %i.iv = fneg double %i.iu
  %i.iw = fmul double %i.ik, %i.iv
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.is, double %i.iw)
  %i.iy = fmul double %i.ix, %i.ig
  %i.iz = fptrunc double %i.iy to float
  store float %i.iz, ptr %10, align 4, !tbaa !11
  %i.ja = load float, ptr %2, align 4, !tbaa !11
  %i.jb = load float, ptr %3, align 4, !tbaa !11
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.il, float %i.jb, float %i.ja)
  %i.jd = fmul float %i.jc, %i.if
  store float %i.jd, ptr %11, align 4, !tbaa !11
  %i.je = load float, ptr %i.d, align 4, !tbaa !11
  %i.jf = load float, ptr %i.l, align 4, !tbaa !11
  %i.jg = fneg float %i.jf
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.je, float %i.jg)
  %i.ji = fmul float %i.jh, %i.if
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ji, ptr %i.jj, align 4, !tbaa !11
  %i.jk = load float, ptr %i.l, align 4, !tbaa !11
  %i.jl = fpext float %i.jk to double
  %i.jm = load float, ptr %i.d, align 4, !tbaa !11
  %i.jn = fpext float %i.jm to double
  %i.jo = fneg double %i.jn
  %i.jp = fmul double %i.ik, %i.jo
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.jl, double %i.jp)
  %i.jr = fmul double %i.jq, %i.ig
  %i.js = fptrunc double %i.jr to float
  %i.jt = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float %i.js, ptr %i.jt, align 4, !tbaa !11
  %i.ju = load float, ptr %i.d, align 4, !tbaa !11
  %i.jv = load float, ptr %i.l, align 4, !tbaa !11
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.il, float %i.jv, float %i.ju)
  %i.jx = fmul float %i.jw, %i.if
  %i.jy = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.jx, ptr %i.jy, align 4, !tbaa !11
  %i.jz = load float, ptr %i.h, align 4, !tbaa !11
  %i.ka = load float, ptr %i.p, align 4, !tbaa !11
  %i.kb = fneg float %i.ka
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.jz, float %i.kb)
  %i.kd = fmul float %i.kc, %i.if
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.kd, ptr %i.ke, align 4, !tbaa !11
  %i.kf = load float, ptr %i.p, align 4, !tbaa !11
  %i.kg = fpext float %i.kf to double
  %i.kh = load float, ptr %i.h, align 4, !tbaa !11
  %i.ki = fpext float %i.kh to double
  %i.kj = fneg double %i.ki
  %i.kk = fmul double %i.ik, %i.kj
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.kg, double %i.kk)
  %i.km = fmul double %i.kl, %i.ig
  %i.kn = fptrunc double %i.km to float
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.kn, ptr %i.ko, align 4, !tbaa !11
  %i.kp = load float, ptr %i.h, align 4, !tbaa !11
  %i.kq = load float, ptr %i.p, align 4, !tbaa !11
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.il, float %i.kq, float %i.kp)
  %i.ks = fmul float %i.kr, %i.if
  %i.kt = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.ks, ptr %i.kt, align 4, !tbaa !11
  %i.ku = fdiv float %i.ai, %i.r                  ; 4 uses
  %i.kv = fdiv float %i.ai, %i.z                  ; 2 uses
  %i.kw = fmul float %i.bb, %i.bn
  %i.kx = fmul float %i.kw, %i.hw
  %i.ky = fmul float %spec.store.select1, %i.kx
  %i.kz = fmul float %sqrt276, %i.ky
  %i.la = fpext float %i.kz to double
  %i.lb = fmul double %i.la, -3.000000e+00
  %i.lc = fpext float %i.be to double
  %i.ld = fmul double %i.lb, %i.lc
  %i.le = fmul double %i.ld, %i.cn
  %i.lf = fptrunc double %i.le to float           ; 7 uses
  %i.lg = fpext float %i.lf to double             ; 3 uses
  %i.lh = fpext float %i.kv to double
  %i.li = fadd double %i.lh, 1.000000e+00         ; 3 uses
  %i.lj = fpext float %i.ku to double
  %i.lk = fadd double %i.lj, 1.000000e+00         ; 3 uses
  %i.ll = fneg float %i.kv                        ; 3 uses
  %i.lm = load float, ptr %3, align 4, !tbaa !11
  %i.ln = load float, ptr %4, align 4, !tbaa !11
  %i.lo = fneg float %i.ln
  %i.lp = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.lm, float %i.lo)
  %i.lq = fmul float %i.lp, %i.lf
  store float %i.lq, ptr %12, align 4, !tbaa !11
  %i.lr = load float, ptr %4, align 4, !tbaa !11
  %i.ls = fpext float %i.lr to double
  %i.lt = load float, ptr %3, align 4, !tbaa !11
  %i.lu = fpext float %i.lt to double
  %i.lv = fneg double %i.lu
  %i.lw = fmul double %i.lk, %i.lv
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.li, double %i.ls, double %i.lw)
  %i.ly = fmul double %i.lx, %i.lg
  %i.lz = fptrunc double %i.ly to float
  store float %i.lz, ptr %13, align 4, !tbaa !11
  %i.ma = load float, ptr %3, align 4, !tbaa !11
  %i.mb = load float, ptr %4, align 4, !tbaa !11
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.ll, float %i.mb, float %i.ma)
  %i.md = fmul float %i.mc, %i.lf
  store float %i.md, ptr %14, align 4, !tbaa !11
  %i.me = load float, ptr %i.l, align 4, !tbaa !11
  %i.mf = load float, ptr %i.t, align 4, !tbaa !11
  %i.mg = fneg float %i.mf
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.me, float %i.mg)
  %i.mi = fmul float %i.mh, %i.lf
  %i.mj = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %i.mi, ptr %i.mj, align 4, !tbaa !11
  %i.mk = load float, ptr %i.t, align 4, !tbaa !11
  %i.ml = fpext float %i.mk to double
  %i.mm = load float, ptr %i.l, align 4, !tbaa !11
  %i.mn = fpext float %i.mm to double
  %i.mo = fneg double %i.mn
  %i.mp = fmul double %i.lk, %i.mo
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.li, double %i.ml, double %i.mp)
  %i.mr = fmul double %i.mq, %i.lg
  %i.ms = fptrunc double %i.mr to float
  %i.mt = getelementptr inbounds nuw i8, ptr %13, i64 4
  store float %i.ms, ptr %i.mt, align 4, !tbaa !11
  %i.mu = load float, ptr %i.l, align 4, !tbaa !11
  %i.mv = load float, ptr %i.t, align 4, !tbaa !11
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.ll, float %i.mv, float %i.mu)
  %i.mx = fmul float %i.mw, %i.lf
  %i.my = getelementptr inbounds nuw i8, ptr %14, i64 4
  store float %i.mx, ptr %i.my, align 4, !tbaa !11
  %i.mz = load float, ptr %i.p, align 4, !tbaa !11
  %i.na = load float, ptr %i.x, align 4, !tbaa !11
  %i.nb = fneg float %i.na
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.mz, float %i.nb)
  %i.nd = fmul float %i.nc, %i.lf
  %i.ne = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %i.nd, ptr %i.ne, align 4, !tbaa !11
  %i.nf = load float, ptr %i.x, align 4, !tbaa !11
  %i.ng = fpext float %i.nf to double
  %i.nh = load float, ptr %i.p, align 4, !tbaa !11
  %i.ni = fpext float %i.nh to double
  %i.nj = fneg double %i.ni
  %i.nk = fmul double %i.lk, %i.nj
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.li, double %i.ng, double %i.nk)
  %i.nm = fmul double %i.nl, %i.lg
  %i.nn = fptrunc double %i.nm to float
  %i.no = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.nn, ptr %i.no, align 4, !tbaa !11
  %i.np = load float, ptr %i.p, align 4, !tbaa !11
  %i.nq = load float, ptr %i.x, align 4, !tbaa !11
  %i.nr = tail call float @llvm.fmuladd.f32(float %i.ll, float %i.nq, float %i.np)
  %i.ns = fmul float %i.nr, %i.lf
  %i.nt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %i.ns, ptr %i.nt, align 4, !tbaa !11
  %i.nu = fmul float %.sroa.0.0.copyload, %i.hw
  %i.nv = fmul float %spec.store.select1, %i.nu
  %i.nw = fmul float %sqrt276, %i.nv
  %i.nx = fmul float %spec.store.select3, %i.nw
  %i.ny = fmul float %sqrt, %i.nx
  store float %i.ny, ptr %15, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nounwind }

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
!9 = !{!5, !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
