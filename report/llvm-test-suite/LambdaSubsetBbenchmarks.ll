inline.NumInlined: 73
inline.NumDeleted: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [16 x i8] c"BM_INIT3_LAMBDA\00", align 1
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"BM_MULADDSUB_LAMBDA\00", align 1
@_ZL27benchmark_uniq_4_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"BM_IF_QUAD_LAMBDA\00", align 1
@_ZL27benchmark_uniq_5_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"BM_TRAP_INT_LAMBDA\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal void @_ZL15BM_INIT3_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 9)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 5 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 5 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 5 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 5 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 5 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !11
  %.not = icmp ne i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not3942 = icmp eq i64 %i.t, 0
  %.not.i.not39 = select i1 %.not, i1 true, i1 %.not.i.not3942
  br i1 %.not.i.not39, label %._crit_edge.split, label %.lr.ph41, !prof !37

.lr.ph41:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 32, !tbaa !38
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39   ; 4 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph41
  %wide.trip.count = and i64 %i.w, 2147483647     ; 4 uses
  %i.z = sub i64 %i.g, %i.j
  %i.aa = sub i64 %i.d, %i.j
  %i.ab = sub i64 %i.j, %i.m
  %i.ac = sub i64 %i.j, %i.p
  %i.ad = sub i64 %i.d, %i.g
  %i.ae = sub i64 %i.g, %i.m
  %i.af = sub i64 %i.g, %i.p
  %i.ag = sub i64 %i.d, %i.m
  %i.ah = sub i64 %i.d, %i.p
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %diff.check = icmp ult i64 %i.z, 32
  %diff.check46 = icmp ult i64 %i.aa, 32
  %conflict.rdx = or i1 %diff.check, %diff.check46
  %diff.check47 = icmp ult i64 %i.ab, 32
  %conflict.rdx48 = or i1 %conflict.rdx, %diff.check47
  %diff.check49 = icmp ult i64 %i.ac, 32
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  %diff.check51 = icmp ult i64 %i.ad, 32
  %conflict.rdx52 = or i1 %conflict.rdx50, %diff.check51
  %diff.check53 = icmp ult i64 %i.ae, 32
  %conflict.rdx54 = or i1 %conflict.rdx52, %diff.check53
  %diff.check55 = icmp ult i64 %i.af, 32
  %conflict.rdx56 = or i1 %conflict.rdx54, %diff.check55
  %diff.check57 = icmp ult i64 %i.ag, 32
  %conflict.rdx58 = or i1 %conflict.rdx56, %diff.check57
  %diff.check59 = icmp ult i64 %i.ah, 32
  %conflict.rdx60 = or i1 %conflict.rdx58, %diff.check59
  %n.vec = and i64 %i.w, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %.lr.ph41, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.016.040 = phi i64 [ %i.bz, %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.t, %.lr.ph.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx60
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !40
  %wide.load61 = load <2 x double>, ptr %i.aj, align 8, !tbaa !40
  %i.ak = fneg <2 x double> %wide.load
  %i.al = fneg <2 x double> %wide.load61
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load62 = load <2 x double>, ptr %i.am, align 8, !tbaa !40
  %wide.load63 = load <2 x double>, ptr %i.an, align 8, !tbaa !40
  %i.ao = fsub <2 x double> %i.ak, %wide.load62   ; 3 uses
  %i.ap = fsub <2 x double> %i.al, %wide.load63   ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !40
  store <2 x double> %i.ap, ptr %i.ar, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x double> %i.ao, ptr %i.as, align 8, !tbaa !40
  store <2 x double> %i.ap, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x double> %i.ao, ptr %i.au, align 8, !tbaa !40
  store <2 x double> %i.ap, ptr %i.av, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.ph
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !40
  %i.az = fneg double %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.ph
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !40
  %i.bc = fsub double %i.az, %i.bb                ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.ph
  store double %i.bc, ptr %i.bd, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.ph
  store double %i.bc, ptr %i.be, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.ph
  store double %i.bc, ptr %i.bf, align 8, !tbaa !40
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bg = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.bg, label %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !40
  %i.bj = fneg double %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !40
  %i.bm = fsub double %i.bj, %i.bl                ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.bm, ptr %i.bn, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.bm, ptr %i.bo, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.bm, ptr %i.bp, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.br = load double, ptr %i.bq, align 8, !tbaa !40
  %i.bs = fneg double %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !40
  %i.bv = fsub double %i.bs, %i.bu                ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  store double %i.bv, ptr %i.bw, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  store double %i.bv, ptr %i.bx, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store double %i.bv, ptr %i.by, align 8, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !46

"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bz = add nsw i64 %.sroa.016.040, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bz, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !47
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 10)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load <4 x ptr>, ptr %i.b, align 8, !tbaa !8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !8    ; 4 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !8    ; 3 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11
  %.not = icmp ne i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not3942 = icmp eq i64 %i.p, 0
  %.not.i.not39 = select i1 %.not, i1 true, i1 %.not.i.not3942
  br i1 %.not.i.not39, label %._crit_edge.split, label %.lr.ph41, !prof !37

.lr.ph41:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 32, !tbaa !38
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39   ; 3 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph41
  %wide.trip.count = and i64 %i.s, 2147483647     ; 4 uses
  %i.v = shl nuw nsw i64 %wide.trip.count, 3      ; 5 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.v ; 3 uses
  %scevgep46 = getelementptr i8, ptr %i.i, i64 %i.v ; 2 uses
  %scevgep47 = getelementptr i8, ptr %i.h, i64 %i.v ; 3 uses
  %scevgep48 = getelementptr i8, ptr %i.g, i64 %i.v ; 2 uses
  %scevgep49 = getelementptr i8, ptr %i.l, i64 %i.v ; 2 uses
  %i.w = shufflevector <4 x ptr> %i.f, <4 x ptr> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %i.x = insertelement <8 x ptr> %i.w, ptr %i.l, i64 3
  %i.y = insertelement <8 x ptr> poison, ptr %scevgep46, i64 0
  %i.z = insertelement <8 x ptr> %i.y, ptr %scevgep, i64 1
  %i.aa = insertelement <8 x ptr> %i.z, ptr %scevgep48, i64 2
  %i.ab = insertelement <8 x ptr> %i.aa, ptr %scevgep47, i64 7
  %i.ac = shufflevector <8 x ptr> %i.ab, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 2, i32 0, i32 7>
  %i.ad = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.ae = insertelement <8 x ptr> %i.ad, ptr %scevgep47, i64 1
  %i.af = insertelement <8 x ptr> %i.ae, ptr %scevgep, i64 2
  %i.ag = insertelement <8 x ptr> %i.af, ptr %scevgep49, i64 3
  %i.ah = insertelement <8 x ptr> %i.ag, ptr %scevgep46, i64 5
  %i.ai = insertelement <8 x ptr> %i.ah, ptr %scevgep48, i64 7
  %i.aj = shufflevector <8 x ptr> %i.ai, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 3, i32 7>
  %i.ak = shufflevector <4 x ptr> %i.f, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  %i.al = shufflevector <8 x ptr> %i.ak, <8 x ptr> %i.x, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 2, i32 1, i32 11, i32 15>
  %i.am = icmp ult <8 x ptr> %i.al, %i.ac
  %i.an = shufflevector <4 x ptr> %i.f, <4 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 1, i32 3, i32 1, i32 2>
  %i.ao = icmp ult <8 x ptr> %i.an, %i.aj
  %i.ap = and <8 x i1> %i.ao, %i.am
  %bound077 = icmp ult ptr %i.h, %scevgep49
  %bound178 = icmp ult ptr %i.l, %scevgep47
  %found.conflict79 = and i1 %bound077, %bound178
  %i.aq = bitcast <8 x i1> %i.ap to i8
  %i.ar = icmp ne i8 %i.aq, 0
  %op.rdx = or i1 %i.ar, %found.conflict79
  %n.vec = and i64 %i.s, 2147483646               ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %.lr.ph41, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.016.040 = phi i64 [ %i.bp, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.p, %.lr.ph.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !40, !alias.scope !48 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %wide.load81 = load <2 x double>, ptr %i.at, align 8, !tbaa !40, !alias.scope !51 ; 2 uses
  %i.au = fmul <2 x double> %wide.load, %wide.load81
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index
  store <2 x double> %i.au, ptr %i.av, align 8, !tbaa !40, !alias.scope !53, !noalias !55
  %i.aw = fadd <2 x double> %wide.load, %wide.load81
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index
  store <2 x double> %i.aw, ptr %i.ax, align 8, !tbaa !40, !alias.scope !58, !noalias !59
  %wide.load84 = load <2 x double>, ptr %i.as, align 8, !tbaa !40, !alias.scope !48
  %wide.load85 = load <2 x double>, ptr %i.at, align 8, !tbaa !40, !alias.scope !51
  %i.ay = fsub <2 x double> %wide.load84, %wide.load85
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  store <2 x double> %i.ay, ptr %i.az, align 8, !tbaa !40, !alias.scope !60, !noalias !61
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !40
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store double %i.bf, ptr %i.bg, align 8, !tbaa !40
  %i.bh = load double, ptr %i.bb, align 8, !tbaa !40
  %i.bi = load double, ptr %i.bd, align 8, !tbaa !40
  %i.bj = fadd double %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.bj, ptr %i.bk, align 8, !tbaa !40
  %i.bl = load double, ptr %i.bb, align 8, !tbaa !40
  %i.bm = load double, ptr %i.bd, align 8, !tbaa !40
  %i.bn = fsub double %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.bn, ptr %i.bo, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !63

"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.bp = add nsw i64 %.sroa.016.040, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bp, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !47
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 11)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11
  %.not = icmp ne i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not4144 = icmp eq i64 %i.o, 0
  %.not.i.not41 = select i1 %.not, i1 true, i1 %.not.i.not4144
  br i1 %.not.i.not41, label %._crit_edge.split, label %.lr.ph43, !prof !37

.lr.ph43:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 32, !tbaa !38
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %wide.trip.count = and i64 %i.r, 2147483647
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %.lr.ph43, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.016.042 = phi i64 [ %i.as, %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.o, %.lr.ph.preheader ]
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit" ] ; 7 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !40 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !40 ; 2 uses
  %i.y = fmul double %i.x, 4.000000e+00
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = fneg double %i.aa
  %i.ac = fmul double %i.y, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.ac) ; 2 uses
  %i.ae = fcmp ult double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = tail call double @sqrt(double noundef %i.ad) #9, !tbaa !4 ; 2 uses
  %i.ag = fsub double %i.af, %i.v
  %i.ah = fmul double %i.x, 2.000000e+00
  %i.ai = fdiv double %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.ai, ptr %i.aj, align 8, !tbaa !40
  %i.ak = load double, ptr %i.u, align 8, !tbaa !40
  %i.al = fneg double %i.ak
  %i.am = fsub double %i.al, %i.af
  %i.an = load double, ptr %i.w, align 8, !tbaa !40
  %i.ao = fmul double %i.an, 2.000000e+00
  %i.ap = fdiv double %i.am, %i.ao
  br label %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"

bb.c:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !40
  br label %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"

"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit": ; preds = %bb.b, %bb.c
  %.sink.i = phi double [ 0.000000e+00, %bb.c ], [ %i.ap, %bb.b ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %.sink.i, ptr %i.ar, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.a, !llvm.loop !64

"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
  %i.as = add nsw i64 %.sroa.016.042, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.as, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !47
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 6 uses
  tail call void @_Z8loopInitj(i32 noundef 12)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load double, ptr %i.c, align 8, !tbaa !40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.f = load double, ptr %i.e, align 8, !tbaa !40 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.h = load double, ptr %i.g, align 8, !tbaa !40 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.j = load double, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.l = load double, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add nsw i32 %i.o, 1
  %i.q = fsub double %i.d, %i.f
  %i.r = sitofp i32 %i.p to double
  %i.s = fdiv double %i.q, %i.r                   ; 4 uses
  %i.t = fsub double %i.j, %i.l                   ; 2 uses
  %i.u = fmul double %i.t, %i.t                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11
  %.not = icmp ne i32 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not5761 = icmp eq i64 %i.y, 0
  %.not.i.not57 = select i1 %.not, i1 true, i1 %.not.i.not5761
  br i1 %.not.i.not57, label %._crit_edge, label %.lr.ph60, !prof !37

.lr.ph60:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.z = fsub double %i.f, %i.h                   ; 2 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.u)
  %sqrt54 = tail call double @llvm.sqrt.f64(double %i.aa)
  %i.ab = fdiv double 1.000000e+00, %sqrt54
  %i.ac = fsub double %i.d, %i.h                  ; 2 uses
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.u)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ad)
  %i.ae = fdiv double 1.000000e+00, %sqrt
  %i.af = fadd double %i.ab, %i.ae
  %i.ag = fmul double %i.af, 5.000000e-01
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.a

._crit_edge:                                      ; preds = %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

bb.a:                                             ; preds = %.lr.ph60, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"
  %.sroa.019.059 = phi i64 [ %i.y, %.lr.ph60 ], [ %i.bi, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit" ]
  %.058 = phi double [ %i.ag, %.lr.ph60 ], [ %.1.lcssa, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit" ] ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 32, !tbaa !38
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !39 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 4 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.ak, 1
  %i.am = icmp eq i32 %i.ak, 1
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ak, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0.i56 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ] ; 3 uses
  %.155 = phi double [ %.058, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.an = uitofp nneg i32 %.0.i56 to double
  %i.ao = call double @llvm.fmuladd.f64(double %i.an, double %i.s, double %i.f)
  %i.ap = fsub double %i.ao, %i.h                 ; 2 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.u)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.aq)
  %i.ar = fdiv double 1.000000e+00, %sqrt.i
  %i.as = fadd double %.155, %i.ar
  %i.at = or disjoint i32 %.0.i56, 1
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = call double @llvm.fmuladd.f64(double %i.au, double %i.s, double %i.f)
  %i.aw = fsub double %i.av, %i.h                 ; 2 uses
  %i.ax = call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %i.u)
  %sqrt.i.1 = call double @llvm.sqrt.f64(double %i.ax)
  %i.ay = fdiv double 1.000000e+00, %sqrt.i.1
  %i.az = fadd double %i.as, %i.ay                ; 3 uses
  %i.ba = add nuw nsw i32 %.0.i56, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", label %.lr.ph, !llvm.loop !67

"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa": ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit", label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", %.lr.ph.preheader
  %.0.i56.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ba, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ]
  %.155.epil.init = phi double [ %.058, %.lr.ph.preheader ], [ %i.az, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ]
  %lcmp.mod65 = trunc i64 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.bb = uitofp nneg i32 %.0.i56.epil.init to double
  %i.bc = call double @llvm.fmuladd.f64(double %i.bb, double %i.s, double %i.f)
  %i.bd = fsub double %i.bc, %i.h                 ; 2 uses
  %i.be = call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.u)
  %sqrt.i.epil = call double @llvm.sqrt.f64(double %i.be)
  %i.bf = fdiv double 1.000000e+00, %sqrt.i.epil
  %i.bg = fadd double %.155.epil.init, %i.bf
  br label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"

"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit": ; preds = %.lr.ph.epil.preheader, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", %bb.a
  %.1.lcssa = phi double [ %.058, %bb.a ], [ %i.az, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ], [ %i.bg, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bh = fmul double %i.s, %.1.lcssa             ; 2 uses
  store double %i.bh, ptr %i.a, align 8, !tbaa !40
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.a, double %i.bh) #9, !srcloc !68
  %i.bi = add nsw i64 %.sroa.019.059, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bi, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.a, !prof !47
}

declare noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() local_unnamed_addr #0

declare void @_Z8loopInitj(i32 noundef) local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx() #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #10 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 15, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 0, ptr %i.h, align 1, !tbaa !71
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.e, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store ptr @_ZL15BM_INIT3_LAMBDARN9benchmark5StateE, ptr %i.i, align 8, !tbaa !74
  %i.j = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.j, i64 noundef 171)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.k, i64 noundef 5001)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.l, i64 noundef 44217)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, i32 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %3, align 8, !tbaa !99     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
