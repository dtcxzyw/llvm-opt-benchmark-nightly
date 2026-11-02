Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/random_dir?download=true
inline.NumInlined: 165
inline.NumDeleted: 129
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [3 x double] }
%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { ptr, i64, i64 }

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3igl10random_dirEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rand() #11
  %i.b = tail call i32 @rand() #11
  %i.c = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %i.b, i64 1
  %i.e = sitofp <2 x i32> %i.d to <2 x double>
  %i.f = fdiv <2 x double> %i.e, splat (double f0x41DFFFFFFFC00000) ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.i = extractelement <2 x double> %i.f, i64 1
  %i.j = fmul nnan double %i.i, 2.000000e+00
  %i.k = fmul nnan double %i.j, f0x400921FB54442D18 ; 2 uses
  %i.l = fneg double %i.h
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.h, double 1.000000e+00)
  %i.n = tail call double @sqrt(double noundef %i.m) #11 ; 2 uses
  %1 = tail call double @cos(double noundef %i.k) #11
  %2 = fmul double %i.n, %1
  %3 = tail call double @sin(double noundef %i.k) #11
  %i.o = fmul double %i.n, %3
  store double %2, ptr %0, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.o, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.h, ptr %i.q, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl21random_dir_stratifiedEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.Eigen::Matrix.3") align 8 initializes((0, 24)) %0, i32 noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  %i.a = sitofp i32 %1 to double
  %i.b = tail call double @sqrt(double noundef %i.a) #11
  %i.c = tail call double @llvm.floor.f64(double %i.b) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = mul nsw i64 %i.d, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.d, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit.preheader unwind label %bb.b

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit.preheader: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.f = fcmp ogt double %i.c, 0.000000e+00
  br i1 %i.f, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit.preheader
  %i.g = fdiv nnan double 1.000000e+00, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = insertelement <2 x double> poison, double %i.g, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph49
  %i.k = phi double [ 0.000000e+00, %.lr.ph49 ], [ %i.at, %._crit_edge.us ]
  %.03348.us = phi i32 [ 0, %.lr.ph49 ], [ %i.as, %._crit_edge.us ]
  %.03447.us = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next, %._crit_edge.us ]
  %i.l = fdiv double %i.k, %i.c
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph.us, %bb.a
  %indvars.iv = phi i64 [ %.03447.us, %.lr.ph.us ], [ %indvars.iv.next, %bb.a ] ; 2 uses
  %i.n = phi double [ 0.000000e+00, %.lr.ph.us ], [ %i.aq, %bb.a ]
  %.03246.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ap, %bb.a ]
  %i.o = fdiv nnan double %i.n, %i.c
  %i.p = tail call i32 @rand() #11
  %i.q = tail call i32 @rand() #11
  %i.r = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.s = insertelement <2 x i32> %i.r, i32 %i.q, i64 1
  %i.t = sitofp <2 x i32> %i.s to <2 x double>
  %i.u = fmul <2 x double> %i.j, %i.t
  %i.v = fdiv <2 x double> %i.u, splat (double f0x41DFFFFFFFC00000)
  %i.w = insertelement <2 x double> %i.m, double %i.o, i64 1
  %i.x = fadd <2 x double> %i.w, %i.v             ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.aa = extractelement <2 x double> %i.x, i64 1
  %i.ab = fmul double %i.aa, 2.000000e+00
  %i.ac = fmul double %i.ab, f0x400921FB54442D18  ; 2 uses
  %i.ad = fneg double %i.z
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.z, double 1.000000e+00)
  %i.af = tail call double @sqrt(double noundef %i.ae) #11 ; 2 uses
  %i.ag = tail call double @cos(double noundef %i.ac) #11
  %i.ah = load ptr, ptr %0, align 8, !tbaa !15
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv ; 3 uses
  %i.aj = fmul double %i.af, %i.ag
  store double %i.aj, ptr %i.ai, align 8, !tbaa !10
  %i.ak = tail call double @sin(double noundef %i.ac) #11
  %i.al = load i64, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = fmul double %i.af, %i.ak
  store double %i.an, ptr %i.am, align 8, !tbaa !10
  %.idx.us = shl i64 %i.al, 4
  %i.ao = getelementptr i8, ptr %i.ai, i64 %.idx.us
  store double %i.z, ptr %i.ao, align 8, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ap = add nuw nsw i32 %.03246.us, 1           ; 2 uses
  %i.aq = uitofp nneg i32 %i.ap to double         ; 2 uses
  %i.ar = fcmp ogt double %i.c, %i.aq
  br i1 %i.ar, label %bb.a, label %._crit_edge.us, !llvm.loop !18

._crit_edge.us:                                   ; preds = %bb.a
  %i.as = add nuw nsw i32 %.03348.us, 1           ; 2 uses
  %i.at = uitofp nneg i32 %i.as to double         ; 2 uses
  %i.au = fcmp ogt double %i.c, %i.at
  br i1 %i.au, label %.lr.ph.us, label %.preheader.loopexit, !llvm.loop !19

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.aw) #11
  resume { ptr, i32 } %i.av

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.ax = trunc nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit.preheader
  %.034.lcssa = phi i32 [ 0, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit.preheader ], [ %i.ax, %.preheader.loopexit ] ; 2 uses
  %i.ay = icmp slt i32 %.034.lcssa, %1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = sext i32 %.034.lcssa to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv53 = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next54, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %3 = tail call i32 @rand() #11, !noalias !29
  %4 = tail call i32 @rand() #11, !noalias !29
  %i.be = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bf = insertelement <2 x i32> %i.be, i32 %4, i64 1
  %i.bg = sitofp <2 x i32> %i.bf to <2 x double>
  %i.bh = fdiv <2 x double> %i.bg, splat (double f0x41DFFFFFFFC00000) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %5 = tail call double @llvm.fmuladd.f64(double %i.bi, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1
  %i.bk = fmul nnan double %i.bj, 2.000000e+00
  %i.bl = fmul nnan double %i.bk, f0x400921FB54442D18 ; 2 uses
  %i.bm = fneg double %5
  %6 = tail call double @llvm.fmuladd.f64(double %i.bm, double %5, double 1.000000e+00)
  %7 = tail call double @sqrt(double noundef %6) #11, !noalias !29 ; 2 uses
  %8 = tail call double @cos(double noundef %i.bl) #11, !noalias !29
  %9 = fmul double %7, %8
  %10 = tail call double @sin(double noundef %i.bl) #11, !noalias !29
  %i.bn = fmul double %7, %10
  store double %9, ptr %2, align 8, !tbaa !10, !alias.scope !29
  store double %i.bn, ptr %i.az, align 8, !tbaa !10, !alias.scope !29
  store double %5, ptr %i.ba, align 8, !tbaa !10, !alias.scope !29
  %i.bo = load ptr, ptr %0, align 8, !tbaa !15, !noalias !30
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv53 ; 6 uses
  %i.bq = load i64, ptr %i.bb, align 8, !tbaa !17, !noalias !30 ; 7 uses
  %i.br = load i64, ptr %i.bc, align 8, !tbaa !16 ; 6 uses
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.c
  %min.iters.check = icmp ugt i64 %i.bq, 3
  %ident.check.not = icmp eq i64 %i.br, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader60

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bq, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x double>, ptr %i.bu, align 8, !tbaa !10
  %wide.load59 = load <2 x double>, ptr %i.bv, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %wide.load, ptr %i.bt, align 8, !tbaa !10
  store <2 x double> %wide.load59, ptr %i.bw, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader60:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader60 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader60 ]
  %i.by = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.br
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !10
  store double %i.cb, ptr %i.bz, align 8, !tbaa !10
  %i.cc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !25

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader60
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader60 ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cd = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.bq
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.br
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !10
  store double %i.ci, ptr %i.cg, align 8, !tbaa !10
  %i.cj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ck = mul nsw i64 %i.cj, %i.br
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cj
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !10
  store double %i.cn, ptr %i.cl, align 8, !tbaa !10
  %i.co = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cp = mul nsw i64 %i.co, %i.br
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !10
  store double %i.cs, ptr %i.cq, align 8, !tbaa !10
  %i.ct = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.br
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ct
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !10
  store double %i.cx, ptr %i.cv, align 8, !tbaa !10
  %i.cy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cy, %i.bq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !26

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next54 to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.f) #11
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !35
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !35
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  store i64 %3, ptr %i.c, align 8, !tbaa !17
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 double", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !12, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !12, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!14, !13, i64 16}
!18 = distinct !{!18, !28}
!19 = distinct !{!19, !28}
!20 = distinct !{!20, i1 true, !"_ZN3igl10random_dirEv"}
!21 = distinct !{!21, !20, !"_ZN3igl10random_dirEv: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!23 = distinct !{!23, !22, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!24 = distinct !{!24, !28, !31, !32}
!25 = distinct !{!25, !33}
!26 = distinct !{!26, !28, !31}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!21}
!30 = !{!23}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"vtable pointer", !4, i64 0}
!35 = !{!34, !34, i64 0}
end_hunk_0
