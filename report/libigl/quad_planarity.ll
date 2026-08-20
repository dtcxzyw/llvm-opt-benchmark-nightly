inline.NumInlined: 458
inline.NumDeleted: 305
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl14quad_planarityIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl14quad_planarityIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.d, i64 noundef 1)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !20
  %i.k = load ptr, ptr %0, align 8, !tbaa !21, !noalias !23 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26   ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.m, 4 ; 4 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %.idx = shl i64 %i.n, 3
  %.idx108 = mul i64 %i.n, 12
  %wide.trip.count = and i64 %i.b, 2147483647
  %i.o = load ptr, ptr %2, align 8, !tbaa !17
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.r ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !18 ; 2 uses
  %.sroa.093.0.vec.insert = insertelement <2 x double> poison, double %i.t, i64 0
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.m
  %i.v = load double, ptr %i.u, align 8, !tbaa !18 ; 2 uses
  %.sroa.093.8.vec.insert = insertelement <2 x double> %.sroa.093.0.vec.insert, double %i.v, i64 1 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !18 ; 3 uses
  %i.y = getelementptr [4 x i8], ptr %i.p, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aa ; 3 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %.sroa.0100.0.vec.insert = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.m
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %.sroa.0100.8.vec.insert = insertelement <2 x double> %.sroa.0100.0.vec.insert, double %i.ae, i64 1 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.p, i64 %.idx
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aj ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.al, i64 0
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.m
  %i.an = load double, ptr %i.am, align 8, !tbaa !18 ; 2 uses
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.an, i64 1
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !18 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.p, i64 %.idx108
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.as ; 3 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !18 ; 2 uses
  %.sroa.087.0.vec.insert = insertelement <2 x double> poison, double %i.au, i64 0
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.m
  %i.aw = load double, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %.sroa.087.8.vec.insert = insertelement <2 x double> %.sroa.087.0.vec.insert, double %i.aw, i64 1
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ap, i64 1
  %i.bb = insertelement <2 x double> poison, double %i.v, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.x, i64 1
  %i.bd = fsub <2 x double> %i.ba, %i.bc          ; 3 uses
  %i.be = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.ay, i64 1
  %i.bg = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.ag, i64 1
  %i.bi = fsub <2 x double> %i.bf, %i.bh          ; 2 uses
  %i.bj = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.au, i64 1
  %i.bl = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.ac, i64 1
  %i.bn = fsub <2 x double> %i.bk, %i.bm          ; 3 uses
  %i.bo = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.al, i64 1
  %i.bq = insertelement <2 x double> poison, double %i.x, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.t, i64 1
  %i.bs = fsub <2 x double> %i.bp, %i.br          ; 2 uses
  %i.bt = fneg <2 x double> %i.bi
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bn, <2 x double> %i.bu) ; 3 uses
  %i.bw = extractelement <2 x double> %i.bn, i64 1
  %i.bx = fneg double %i.bw
  %i.by = extractelement <2 x double> %i.bd, i64 0
  %i.bz = fmul double %i.by, %i.bx
  %i.ca = extractelement <2 x double> %i.bs, i64 1
  %i.cb = extractelement <2 x double> %i.bi, i64 0
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cb, double %i.bz) ; 3 uses
  %i.cd = fmul <2 x double> %i.bv, %i.bv          ; 2 uses
  %i.ce = fmul double %i.cc, %i.cc
  %i.cf = fsub <2 x double> %.sroa.0.8.vec.insert, %.sroa.093.8.vec.insert ; 2 uses
  %i.cg = fmul <2 x double> %i.cf, %i.cf          ; 2 uses
  %i.ch = fsub <2 x double> %.sroa.087.8.vec.insert, %.sroa.0100.8.vec.insert ; 2 uses
  %i.ci = fmul <2 x double> %i.ch, %i.ch          ; 2 uses
  %i.cj = shufflevector <2 x double> %i.cg, <2 x double> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.ck = shufflevector <2 x double> %i.cg, <2 x double> %i.ci, <2 x i32> <i32 1, i32 3>
  %i.cl = fadd <2 x double> %i.cj, %i.ck
  %i.cm = shufflevector <2 x double> %i.bd, <2 x double> %i.bn, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cn = fmul <2 x double> %i.cm, %i.cm
  %i.co = fadd <2 x double> %i.cn, %i.cl
  %i.cp = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.co) ; 2 uses
  %3 = shufflevector <2 x double> %i.cd, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %4 = shufflevector <2 x double> %i.cd, <2 x double> %i.cp, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop116 = fadd <2 x double> %3, %4  ; 2 uses
  %5 = extractelement <2 x double> %foldExtExtBinop116, i64 0
  %6 = fadd double %i.ce, %5
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %6)
  %i.cq = extractelement <2 x double> %foldExtExtBinop116, i64 1
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = fmul double %i.cr, %.scalar.i           ; 2 uses
  %i.ct = tail call double @llvm.fabs.f64(double %i.cs)
  %i.cu = fcmp olt double %i.ct, 1.000000e-08
  br i1 %i.cu, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cv = fsub <2 x double> %.sroa.0100.8.vec.insert, %.sroa.093.8.vec.insert
  %i.cw = fmul <2 x double> %i.cv, %i.bv          ; 2 uses
  %shift118 = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop119 = fadd <2 x double> %i.cw, %shift118
  %i.cx = extractelement <2 x double> %foldExtExtBinop119, i64 0
  %i.cy = fsub double %i.ag, %i.x
  %i.cz = fmul double %i.cy, %i.cc
  %i.da = fadd double %i.cz, %i.cx
  %i.db = fdiv double %i.da, %i.cs
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi double [ %i.db, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store double %.sink, ptr %i.dc, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !28
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !30
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.i) #8
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !30
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #10 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !30
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !17
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !14
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{!10, !13, i64 8}
!10 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !11, i64 0, !13, i64 8, !13, i64 16}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !13, i64 8}
!15 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !16, i64 0, !13, i64 8}
!16 = !{!"p1 double", !12, i64 0}
!17 = !{!15, !16, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !7, i64 0}
!20 = !{!10, !11, i64 0}
!21 = !{!22, !16, i64 0}
!22 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !16, i64 0, !13, i64 8, !13, i64 16}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!25 = distinct !{!25, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!26 = !{!22, !13, i64 8}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
end_hunk_0
