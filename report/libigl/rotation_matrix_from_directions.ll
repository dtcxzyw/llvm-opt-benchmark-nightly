inline.NumInlined: 718
inline.NumDeleted: 464
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [9 x double] }

$_ZN3igl31rotation_matrix_from_directionsIdEEN5Eigen6MatrixIT_Li3ELi3ELi0ELi3ELi3EEENS2_IS3_Li3ELi1ELi0ELi3ELi1EEES5_ = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl31rotation_matrix_from_directionsIdEEN5Eigen6MatrixIT_Li3ELi3ELi0ELi3ELi3EEENS2_IS3_Li3ELi1ELi0ELi3ELi1EEES5_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit:
  %i.a = load <2 x double>, ptr %1, align 8, !noalias !9 ; 10 uses
  %i.b = fmul <2 x double> %i.a, %i.a             ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !12, !noalias !9 ; 6 uses
  %i.e = load <2 x double>, ptr %2, align 8, !noalias !14 ; 10 uses
  %i.f = fmul <2 x double> %i.e, %i.e             ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !12, !noalias !14 ; 6 uses
  %i.i = shufflevector <2 x double> %i.b, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.j = shufflevector <2 x double> %i.b, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.k = fadd <2 x double> %i.i, %i.j
  %i.l = insertelement <2 x double> poison, double %i.d, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.h, i64 1 ; 3 uses
  %i.n = fmul <2 x double> %i.m, %i.m
  %i.o = fadd <2 x double> %i.n, %i.k             ; 3 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = fcmp ogt double %i.p, 0.000000e+00       ; 2 uses
  %i.r = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.o) ; 3 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> %i.a, %i.s
  %.sroa.068.0 = select i1 %i.q, <2 x double> %i.t, <2 x double> %i.a
  %i.u = fdiv <2 x double> %i.m, %i.r             ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %.sroa.569.0 = select i1 %i.q, double %i.v, double %i.d
  %i.w = extractelement <2 x double> %i.o, i64 1
  %i.x = fcmp ogt double %i.w, 0.000000e+00       ; 2 uses
  %i.y = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fdiv <2 x double> %i.e, %i.y
  %.sroa.066.0 = select i1 %i.x, <2 x double> %i.z, <2 x double> %i.e
  %i.aa = extractelement <2 x double> %i.u, i64 1
  %.sroa.567.0 = select i1 %i.x, double %i.aa, double %i.h
  %i.ab = fmul <2 x double> %.sroa.068.0, %.sroa.066.0 ; 2 uses
  %i.ac = fmul double %.sroa.569.0, %.sroa.567.0
  %i.ad = fsub <2 x double> %i.a, %i.e            ; 2 uses
  %i.ae = fmul <2 x double> %i.ad, %i.ad          ; 2 uses
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ah = fadd <2 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = fadd double %i.ac, %i.ai
  %i.ak = fsub double %i.d, %i.h                  ; 2 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = extractelement <2 x double> %i.ah, i64 1
  %i.an = fadd double %i.al, %i.am
  %.scalar.i47 = tail call noundef double @llvm.sqrt.f64(double %i.an)
  %i.ao = fcmp olt double %.scalar.i47, 1.000000e-08
  %i.ap = extractelement <2 x double> %i.a, i64 1
  %i.aq = extractelement <2 x double> %i.e, i64 1
  %i.ar = extractelement <2 x double> %i.e, i64 0
  %i.as = extractelement <2 x double> %i.a, i64 0
  br i1 %i.ao, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  store double 1.000000e+00, ptr %0, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.au, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.aw, align 8, !tbaa !12
  br label %bb.d

bb.b:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  %i.ax = fadd <2 x double> %i.a, %i.e            ; 2 uses
  %i.ay = fmul <2 x double> %i.ax, %i.ax          ; 2 uses
  %shift = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ay, %shift
  %i.az = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ba = fadd double %i.d, %i.h                  ; 2 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = fadd double %i.bb, %i.az
  %.scalar.i51 = tail call noundef double @llvm.sqrt.f64(double %i.bc)
  %i.bd = fcmp olt double %.scalar.i51, 1.000000e-08
  br i1 %i.bd, label %bb.c, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> splat (double -0.000000e+00), ptr %i.be, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> <double -1.000000e+00, double -0.000000e+00>, ptr %i.bf, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> splat (double -0.000000e+00), ptr %i.bg, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double -1.000000e+00, ptr %i.bh, align 8, !tbaa !12
  store <2 x double> <double 1.000000e+00, double -0.000000e+00>, ptr %0, align 8, !tbaa !12
  br label %bb.d

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit: ; preds = %bb.b
  %i.bi = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x double> %i.bi, double %i.h, i64 1
  %i.bk = fneg <2 x double> %i.bj
  %i.bl = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bm = insertelement <2 x double> %i.bl, double %i.d, i64 0
  %i.bn = fmul <2 x double> %i.bm, %i.bk
  %i.bo = shufflevector <2 x double> %i.a, <2 x double> %i.e, <2 x i32> <i32 1, i32 2>
  %i.bp = insertelement <2 x double> poison, double %i.h, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.d, i64 1
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bq, <2 x double> %i.bn) ; 4 uses
  %i.bs = fneg double %i.ar
  %i.bt = fmul double %i.ap, %i.bs
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.as, double %i.aq, double %i.bt) ; 4 uses
  %i.bv = fmul <2 x double> %i.br, %i.br          ; 2 uses
  %shift75 = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop76 = fadd <2 x double> %i.bv, %shift75
  %i.bw = extractelement <2 x double> %foldExtExtBinop76, i64 0
  %i.bx = fmul double %i.bu, %i.bu
  %i.by = fadd double %i.bx, %i.bw                ; 2 uses
  %i.bz = fcmp ogt double %i.by, 0.000000e+00     ; 2 uses
  %.scalar.i52 = tail call double @llvm.sqrt.f64(double %i.by) ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %.scalar.i52, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fdiv <2 x double> %i.br, %i.cb
  %i.cd = fdiv double %i.bu, %.scalar.i52
  %.sroa.8.0 = select i1 %i.bz, double %i.cd, double %i.bu ; 6 uses
  %.sroa.053.0 = select i1 %i.bz, <2 x double> %i.cc, <2 x double> %i.br ; 8 uses
  %.sroa.053.8.vec.extract = extractelement <2 x double> %.sroa.053.0, i64 1 ; 3 uses
  %i.ce = tail call double @acos(double noundef %i.aj) #4 ; 2 uses
  %i.cf = tail call double @cos(double noundef %i.ce) #4 ; 4 uses
  %i.cg = tail call double @sin(double noundef %i.ce) #4 ; 2 uses
  %foldExtExtBinop78 = fmul <2 x double> %.sroa.053.0, %.sroa.053.0
  %i.ch = fsub double 1.000000e+00, %i.cf         ; 3 uses
  %3 = insertelement <2 x double> %foldExtExtBinop78, double %.sroa.8.0, i64 1
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0 ; 2 uses
  %i.cj = insertelement <2 x double> %i.ci, double %i.cg, i64 1 ; 2 uses
  %i.ck = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = insertelement <2 x double> %.sroa.053.0, double %.sroa.8.0, i64 0
  %i.cn = shufflevector <2 x double> %.sroa.053.0, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x double> %i.cm, %i.cn
  %i.cp = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.co          ; 3 uses
  %i.cr = insertelement <2 x double> %i.cq, double %i.cf, i64 0
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %i.cj, <2 x double> %i.cr)
  store <2 x double> %4, ptr %0, align 8, !tbaa !12
  %i.cs = shufflevector <2 x double> %.sroa.053.0, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ct = insertelement <2 x double> %i.cs, double %.sroa.8.0, i64 1
  %i.cu = fneg <2 x double> %i.ct
  %i.cv = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cw, <2 x double> %i.cq)
  store <2 x double> %i.cx, ptr %i.cl, align 8, !tbaa !12
  %5 = fmul double %.sroa.053.8.vec.extract, %.sroa.053.8.vec.extract
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cz = fmul double %.sroa.8.0, %.sroa.053.8.vec.extract
  %i.da = fmul double %i.ch, %i.cz                ; 2 uses
  %6 = insertelement <2 x double> %i.cn, double %5, i64 0
  %i.db = insertelement <2 x double> %i.ck, double %i.da, i64 1
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.cj, <2 x double> %i.db)
  store <2 x double> %i.dc, ptr %i.cy, align 8, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.de = fneg <2 x double> %.sroa.053.0
  %i.df = shufflevector <2 x double> %.sroa.053.0, <2 x double> %i.de, <2 x i32> <i32 1, i32 2>
  %i.dg = insertelement <2 x double> %i.cq, double %i.da, i64 1
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cw, <2 x double> %i.dg)
  store <2 x double> %i.dh, ptr %i.dd, align 8, !tbaa !12
  %i.di = fmul double %.sroa.8.0, %.sroa.8.0
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.ch, double %i.cf)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.dj, ptr %i.dk, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv: argument 0"}
!11 = distinct !{!11, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv: argument 0"}
!16 = distinct !{!16, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv"}
end_hunk_0
