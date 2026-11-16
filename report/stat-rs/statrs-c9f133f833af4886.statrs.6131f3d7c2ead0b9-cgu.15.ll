Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.15?download=true
inline.NumInlined: 54
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function5gammaNtB5_14GammaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@3 = private unnamed_addr constant [21 x i8] c"src/function/beta.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\14\00\00\00\00\00\00\00R\00\00\00\18\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\14\00\00\00\00\00\00\003\00\00\00\1B\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\14\00\00\00\00\00\00\00j\00\00\00\1F\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\14\00\00\00\00\00\00\00\83\00\00\00\1F\00\00\00" }>, align 8
@8 = private unnamed_addr constant [22 x i8] c"src/function/gamma.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\15\00\00\00\00\00\00\00\90\00\00\00\1C\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\15\00\00\00\00\00\00\00\0B\01\00\00\1C\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\15\00\00\00\00\00\00\00w\00\00\00\1C\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\15\00\00\00\00\00\00\00\AD\00\00\00\1C\00\00\00" }>, align 8
@13 = private unnamed_addr constant [46 x i8] c"Shape is NaN, infinite, zero or less than zero", align 1
@14 = private unnamed_addr constant [45 x i8] c"Rate is NaN, infinite, zero or less than zero", align 1
@15 = private unnamed_addr constant [14 x i8] c"Value v is NaN", align 1
@16 = private unnamed_addr constant [37 x i8] c"Scale is NaN, zero, or less than zero", align 1
@17 = private unnamed_addr constant [37 x i8] c"Shape is NaN, zero, or less than zero", align 1
@18 = private unnamed_addr constant [27 x i8] c"a is zero or less than zero", align 1
@19 = private unnamed_addr constant [27 x i8] c"b is zero or less than zero", align 1
@20 = private unnamed_addr constant [18 x i8] c"x is not in [0, 1]", align 1
@21 = private unnamed_addr constant [37 x i8] c"a is infinite, zero or less than zero", align 1
@22 = private unnamed_addr constant [37 x i8] c"x is infinite, zero or less than zero", align 1
@23 = private unnamed_addr constant [19 x i8] c"\0AInv-Gamma(\C0\02, \C0\01)\00", align 1
@24 = private unnamed_addr constant [6 x i8] c"\03\CE\B4_\C0\00", align 1
@25 = private unnamed_addr constant [15 x i8] c"\07Pareto(\C0\01,\C0\01)\00", align 1
@26 = private unnamed_addr constant [19 x i8] c"p must be in [0, 1]", align 1
@27 = private unnamed_addr constant [34 x i8] c"src/distribution/inverse_gamma.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"!\00\00\00\00\00\00\00\B7\00\00\00\0D\00\00\00" }>, align 8
@29 = private unnamed_addr constant [19 x i8] c"x must be in [0, 1]", align 1
@30 = private unnamed_addr constant [27 x i8] c"src/distribution/pareto.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"\1A\00\00\00\00\00\00\00\B9\00\00\00\0D\00\00\00" }>, align 8
@32 = private unnamed_addr constant [19 x i8] c"ANotGreaterThanZero", align 1
@33 = private unnamed_addr constant [19 x i8] c"BNotGreaterThanZero", align 1
@34 = private unnamed_addr constant [11 x i8] c"XOutOfRange", align 1
@35 = private unnamed_addr constant [8 x i8] c"AInvalid", align 1
@36 = private unnamed_addr constant [8 x i8] c"XInvalid", align 1
@switch.table._RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\13\13\0B", align 8
@switch.table._RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.21 = private unnamed_addr constant [3 x ptr] [ptr @32, ptr @33, ptr @34], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, double noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = fcmp ugt double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %2, 0.000000e+00
  br i1 %i.b, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.c, align 1, !alias.scope !12
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.d, align 1, !alias.scope !12
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %2)
  %i.g = fadd double %i.e, %i.f
  %i.h = fadd double %1, %2
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.h)
  %i.j = fsub double %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = tail call double @llvm.exp.f64(double %i.j)
  store double %i.l, ptr %i.k, align 8
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta.exit.thread

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta.exit.thread: ; preds = %bb.c, %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12inv_beta_reg(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = fcmp ugt double %0, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 0.000000e+00
  br i1 %i.e, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta7ln_beta.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19
  store i8 %.sroa.4.0.ph.i, ptr %i.c, align 1, !noalias !19
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !20
  unreachable

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta7ln_beta.exit: ; preds = %bb.b
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %0)
  %i.g = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.h = fadd double %i.f, %i.g
  %i.i = fadd double %0, %1
  %i.j = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.i)
  %i.k = fsub double %i.h, %i.j                   ; 3 uses
  %i.l = fcmp oeq double %2, 0.000000e+00
  br i1 %i.l, label %bb.r, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta7ln_beta.exit
  %i.m = fcmp oeq double %2, 1.000000e+00
  br i1 %i.m, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp ogt double %2, 5.000000e-01         ; 4 uses
  %i.o = fsub double 1.000000e+00, %2
  %.sroa.028.0 = select i1 %i.n, double %i.o, double %2 ; 6 uses
  %.sroa.016.0 = select i1 %i.n, double %0, double %1 ; 10 uses
  %.sroa.0.0 = select i1 %i.n, double %1, double %0 ; 11 uses
  %i.p = fmul double %.sroa.028.0, %.sroa.028.0
  %i.q = tail call double @llvm.log.f64(double %i.p)
  %i.r = fneg double %i.q
  %i.s = tail call double @llvm.sqrt.f64(double %i.r) ; 4 uses
  %i.t = fmul double %i.s, 2.706100e-01
  %i.u = fadd double %i.t, 2.307530e+00
  %i.v = fmul double %i.s, 4.481000e-02
  %i.w = fadd double %i.v, 9.922900e-01
  %i.x = fmul double %i.s, %i.w
  %i.y = fadd double %i.x, 1.000000e+00
  %i.z = fdiv double %i.u, %i.y
  %i.aa = fsub double %i.s, %i.z                  ; 4 uses
  %i.ab = fcmp ogt double %.sroa.0.0, 1.000000e+00
  %i.ac = fcmp ogt double %.sroa.016.0, 1.000000e+00
  %or.cond3 = and i1 %i.ab, %i.ac
  br i1 %or.cond3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = fmul double %.sroa.016.0, 9.000000e+00
  %i.ae = fdiv double 1.000000e+00, %i.ad         ; 2 uses
  %i.af = fmul double %.sroa.016.0, 2.000000e+00
  %i.ag = fsub double 1.000000e+00, %i.ae
  %i.ah = tail call double @llvm.sqrt.f64(double %i.ae)
  %i.ai = fmul double %i.ah, %i.aa
  %i.aj = fadd double %i.ag, %i.ai
  %i.ak = tail call double @llvm.pow.f64(double %i.aj, double 3.000000e+00)
  %i.al = fmul double %i.af, %i.ak                ; 2 uses
  %i.am = fcmp ugt double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.an = fmul double %i.aa, %i.aa
  %i.ao = fadd double %i.an, -3.000000e+00
  %i.ap = insertelement <2 x double> poison, double %.sroa.016.0, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %.sroa.0.0, i64 1
  %i.ar = fmul nnan <2 x double> %i.aq, splat (double 2.000000e+00)
  %i.as = fadd <2 x double> %i.ar, splat (double -1.000000e+00)
  %i.at = fdiv <2 x double> splat (double 1.000000e+00), %i.as ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  %i.av = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.aw = fadd double %i.av, %i.au
  %i.ax = fsub double %i.au, %i.av
  %i.ay = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.ao, i64 0
  %i.az = insertelement <2 x double> <double 6.000000e+00, double poison>, double %i.aw, i64 1
  %i.ba = fdiv <2 x double> %i.ay, %i.az          ; 4 uses
  %shift = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.ba
  %i.bb = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bc = tail call double @llvm.sqrt.f64(double %i.bb)
  %i.bd = fmul double %i.aa, %i.bc
  %i.be = fadd <2 x double> %i.ba, <double f0x3FEAAAAAAAAAAAAB, double -0.000000e+00> ; 2 uses
  %i.bf = fmul <2 x double> %i.be, <double poison, double 3.000000e+00>
  %i.bg = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.bd, i64 0
  %i.bh = shufflevector <2 x double> %i.ba, <2 x double> %i.bf, <2 x i32> <i32 1, i32 3>
  %i.bi = fdiv <2 x double> %i.bg, %i.bh          ; 2 uses
  %shift134 = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop135 = fsub <2 x double> %i.be, %shift134
  %i.bj = extractelement <2 x double> %foldExtExtBinop135, i64 0
  %i.bk = fmul double %i.ax, %i.bj
  %i.bl = extractelement <2 x double> %i.bi, i64 0
  %i.bm = fsub double %i.bl, %i.bk
  %i.bn = fmul double %i.bm, 2.000000e+00
  %i.bo = tail call double @llvm.exp.f64(double %i.bn)
  %i.bp = fmul double %.sroa.016.0, %i.bo
  %i.bq = fadd double %.sroa.0.0, %i.bp
  %i.br = fdiv double %.sroa.0.0, %i.bq
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.bs = fmul double %.sroa.0.0, 2.000000e+00
  %i.bt = fadd double %.sroa.016.0, %i.bs
  %i.bu = fadd double %i.bt, -1.000000e+00
  %i.bv = fmul double %i.bu, 2.000000e+00
  %i.bw = fdiv double %i.bv, %i.al                ; 2 uses
  %i.bx = fcmp ugt double %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.by = fsub double 1.000000e+00, %.sroa.028.0
  %i.bz = fmul double %.sroa.016.0, %i.by
  %i.ca = tail call double @llvm.log.f64(double %i.bz)
  %i.cb = fadd double %i.ca, %i.k
  %i.cc = fdiv double %i.cb, %.sroa.016.0
  %i.cd = tail call double @llvm.exp.f64(double %i.cc)
  %i.ce = fsub double 1.000000e+00, %i.cd
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cf = fadd double %i.bw, 1.000000e+00
  %i.cg = fdiv double 2.000000e+00, %i.cf
  %i.ch = fsub double 1.000000e+00, %i.cg
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ci = fmul double %.sroa.028.0, %.sroa.0.0
  %i.cj = tail call double @llvm.log.f64(double %i.ci)
  %i.ck = fadd double %i.cj, %i.k
  %i.cl = fdiv double %i.ck, %.sroa.0.0
  %i.cm = tail call double @llvm.exp.f64(double %i.cl)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.g
  %.sroa.045.0 = phi double [ %i.br, %bb.g ], [ %i.ce, %bb.i ], [ %i.cm, %bb.k ], [ %i.ch, %bb.j ] ; 2 uses
  %i.cn = fcmp olt double %.sroa.045.0, 1.000000e-04
  %spec.store.select.i = select i1 %i.cn, double 1.000000e-04, double %.sroa.045.0 ; 2 uses
  %i.co = fcmp ogt double %spec.store.select.i, 9.999000e-01
  %spec.store.select1.i = select i1 %i.co, double 9.999000e-01, double %spec.store.select.i
  %i.cp = tail call double @llvm.pow.f64(double %.sroa.028.0, double 2.000000e-01)
  %i.cq = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cp, i64 1
  %i.cs = fdiv <2 x double> <double -5.000000e+00, double 1.000000e+00>, %i.cr ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = fdiv double %i.ct, %.sroa.0.0
  %i.cv = extractelement <2 x double> %i.cs, i64 1
  %i.cw = fsub double %i.cu, %i.cv
  %i.cx = fadd double %i.cw, -1.300000e+01
  %i.cy = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.cx) ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, -30
  %i.da = tail call double @llvm.powi.f64.i32(double 1.000000e+01, i32 %i.cy)
  %.sroa.058.0 = select i1 %i.cz, double %i.da, double 1.000000e-30 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dc = fsub double 1.000000e+00, %.sroa.0.0
  %i.dd = fsub double 1.000000e+00, %.sroa.016.0
  br label %bb.m

bb.m:                                             ; preds = %.split.us, %bb.l
  %.sroa.064.0 = phi double [ 1.000000e+00, %bb.l ], [ %.sroa.064.1, %.split.us ]
  %.sroa.061.0 = phi double [ 1.000000e+00, %bb.l ], [ %i.ea, %.split.us ] ; 2 uses
  %.sroa.060.0 = phi double [ 0.000000e+00, %bb.l ], [ %i.ds, %.split.us ]
  %.sroa.045.1 = phi double [ %spec.store.select1.i, %bb.l ], [ %i.ec, %.split.us ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_reg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %.sroa.0.0, double noundef %.sroa.016.0, double noundef %.sroa.045.1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.de = load i8, ptr %i.b, align 8, !range !4, !alias.scope !21, !noundef !5
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.n, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit, !prof !6

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !range !7, !alias.scope !21, !noundef !5
  store i8 %i.dh, ptr %i.a, align 1, !noalias !22
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #15, !noalias !21
  unreachable

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit: ; preds = %bb.m
  %i.di = load double, ptr %i.db, align 8, !alias.scope !21, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dj = fsub double %i.di, %.sroa.028.0
  %i.dk = tail call double @llvm.log.f64(double %.sroa.045.1)
  %i.dl = fmul double %i.dc, %i.dk
  %i.dm = fadd double %i.k, %i.dl
  %i.dn = fsub double 1.000000e+00, %.sroa.045.1  ; 2 uses
  %i.do = tail call double @llvm.log.f64(double %i.dn)
  %i.dp = fmul double %i.dd, %i.do
  %i.dq = fadd double %i.dm, %i.dp
  %i.dr = tail call double @llvm.exp.f64(double %i.dq)
  %i.ds = fmul double %i.dr, %i.dj                ; 6 uses
  %i.dt = fmul double %.sroa.060.0, %i.ds
  %i.du = fcmp ugt double %i.dt, 0.000000e+00
  %i.dv = fcmp ogt double %.sroa.061.0, 1.000000e-30
  %spec.store.select = select i1 %i.dv, double %.sroa.061.0, double 1.000000e-30
  %.sroa.064.1 = select i1 %i.du, double %.sroa.064.0, double %spec.store.select ; 4 uses
  %i.dw = fcmp ugt double %.sroa.064.1, %.sroa.058.0
  %i.dx = fmul double %i.ds, %i.ds
  %i.dy = fcmp ugt double %i.dx, %.sroa.058.0
  %or.cond85 = and i1 %i.dy, %i.dw
  %or.cond85.fr = freeze i1 %or.cond85
  br i1 %or.cond85.fr, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us: ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit, %.backedge.us
  %.sroa.076.0.us = phi double [ %.sroa.076.0.be.us, %.backedge.us ], [ 1.000000e+00, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit ] ; 2 uses
  %i.dz = fmul double %i.ds, %.sroa.076.0.us      ; 3 uses
  %i.ea = fmul double %i.dz, %i.dz                ; 2 uses
  %i.eb = fcmp olt double %i.ea, %.sroa.064.1
  br i1 %i.eb, label %bb.o, label %.backedge.us

bb.o:                                             ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us
  %i.ec = fsub double %.sroa.045.1, %i.dz         ; 6 uses
  %i.ed = fcmp oge double %i.ec, 0.000000e+00
  %i.ee = fcmp ole double %i.ec, 1.000000e+00
  %spec.select.i.us = and i1 %i.ed, %i.ee
  br i1 %spec.select.i.us, label %bb.p, label %.backedge.us

bb.p:                                             ; preds = %bb.o
  %i.ef = fcmp une double %i.ec, 0.000000e+00
  %i.eg = fcmp une double %i.ec, 1.000000e+00
  %or.cond.us = and i1 %i.ef, %i.eg
  br i1 %or.cond.us, label %.split.us, label %.backedge.us

.backedge.us:                                     ; preds = %bb.p, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us, %bb.o
  %.sroa.076.0.be.us = fdiv double %.sroa.076.0.us, 3.000000e+00
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us

.split.us:                                        ; preds = %bb.p
  %i.eh = fcmp oeq double %i.ec, %.sroa.045.1
  br i1 %i.eh, label %.loopexit, label %bb.m

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split: ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit, %.backedge
  %.sroa.076.0 = phi double [ %i.eo, %.backedge ], [ 1.000000e+00, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit ] ; 2 uses
  %i.ei = fmul double %i.ds, %.sroa.076.0         ; 3 uses
  %i.ej = fmul double %i.ei, %i.ei
  %i.ek = fcmp olt double %i.ej, %.sroa.064.1
  br i1 %i.ek, label %bb.q, label %.backedge

bb.q:                                             ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split
  %i.el = fsub double %.sroa.045.1, %i.ei         ; 4 uses
  %i.em = fcmp oge double %i.el, 0.000000e+00
  %i.en = fcmp ole double %i.el, 1.000000e+00
  %spec.select.i = and i1 %i.em, %i.en
  br i1 %spec.select.i, label %.loopexit.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.q, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split
  %i.eo = fdiv double %.sroa.076.0, 3.000000e+00
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split

.loopexit.loopexit:                               ; preds = %bb.q
  %.pre = fsub double 1.000000e+00, %i.el
  br label %.loopexit

.loopexit:                                        ; preds = %.split.us, %.loopexit.loopexit
  %.pre-phi = phi double [ %.pre, %.loopexit.loopexit ], [ %i.dn, %.split.us ]
  %.sroa.045.2 = phi double [ %i.el, %.loopexit.loopexit ], [ %.sroa.045.1, %.split.us ]
  %.sroa.038.0 = select i1 %i.n, double %.pre-phi, double %.sroa.045.2
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta7ln_beta.exit, %.loopexit
  %.sroa.038.1 = phi double [ %.sroa.038.0, %.loopexit ], [ 0.000000e+00, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta7ln_beta.exit ], [ 1.000000e+00, %bb.d ]
  ret double %.sroa.038.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, double noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = fcmp ugt double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %2, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.c, align 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %2)
  %i.f = fadd double %i.d, %i.e
  %i.g = fadd double %1, %2
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.g)
  %i.i = fsub double %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.i, ptr %i.j, align 8
  br label %bb.f

end_hunk_0
