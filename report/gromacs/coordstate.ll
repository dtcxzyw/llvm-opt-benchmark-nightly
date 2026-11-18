Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/coordstate?download=true
inline.NumInlined: 442
inline.NumDeleted: 215
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.gmx::SimulationInstabilityError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.38" }
%"class.std::vector.38" = type { %"struct.std::_Vector_base.39" }
%"struct.std::_Vector_base.39" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.44" }
%"struct.std::_Head_base.44" = type { ptr }
%"struct.std::type_index" = type { ptr }

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN3gmxlsINS_26SimulationInstabilityErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@.str = private unnamed_addr constant [42 x i8] c"awhBiasParams.ndim() == dimParams.ssize()\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Need to have identical size for dimensions\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx10CoordStateC1ERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridEENK3$_0clEv" = private unnamed_addr constant [131 x i8] c"auto gmx::CoordState::CoordState(const AwhBiasParams &, ArrayRef<const DimParams>, const BiasGrid &)::(lambda)::operator()() const\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/applied_forces/awh/coordstate.cpp\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"!distr.empty()\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"We need a non-zero length distribution to sample from\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_125getSampleFromDistributionENS_8ArrayRefIKdEElllENK3$_0clEv" = private unnamed_addr constant [140 x i8] c"auto gmx::(anonymous namespace)::getSampleFromDistribution(ArrayRef<const double>, int64_t, int64_t, int64_t)::(lambda)::operator()() const\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"gmx_within_tol(cumulativeDistribution.back(), 1.0, 0.01)\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"Attempt to get sample from non-normalized/zero distribution\00", align 1
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [190 x i8] c"Coordinate %d of an AWH bias has a value %f which is more than %d sigma out of the AWH range of [%f, %f]. You seem to have an unstable reaction coordinate setup or an unequilibrated system.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx10CoordState13setCoordValueERKNS_8BiasGridEPKd = private unnamed_addr constant [70 x i8] c"void gmx::CoordState::setCoordValue(const BiasGrid &, const double *)\00", align 1
@_ZTIN3gmx26SimulationInstabilityErrorE = external constant ptr
@_ZTVN3gmx26SimulationInstabilityErrorE = external constant { [6 x ptr] }, align 8

@_ZN3gmx10CoordStateC1ERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN3gmx10CoordStateC2ERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx10CoordStateC2ERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = load ptr, ptr %1, align 8, !tbaa !42     ; 13 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = shl i64 %i.f, 26
  %i.h = ashr i64 %i.g, 32
  %i.i = ptrtoint ptr %3 to i64
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40
  %i.m = icmp eq i64 %i.l, %i.h
  br i1 %i.m, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.n = ashr exact i64 %i.f, 6                   ; 11 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.n, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.p = ashr exact i64 %i.f, 3
  %i.q = getelementptr i8, ptr %0, i64 %i.p       ; 2 uses
  %i.r = getelementptr i8, ptr %i.c, i64 48
  %i.s = getelementptr i8, ptr %i.c, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %bound0 = icmp ult ptr %0, %i.t
  %bound1 = icmp ult ptr %i.r, %i.q
  %found.conflict = and i1 %bound0, %bound1
  %5 = getelementptr i8, ptr %2, i64 32
  %6 = mul nuw nsw i64 %i.n, 40
  %7 = getelementptr i8, ptr %2, i64 %6
  %bound023 = icmp ult ptr %0, %7
  %bound124 = icmp ult ptr %5, %i.q
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i64 %i.n, 17
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.n, 15                         ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 16, i64 %i.u         ; 2 uses
  %n.vec = sub nsw i64 %i.n, %i.w                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4) ; 2 uses
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12) ; 2 uses
  %wide.gep = getelementptr inbounds nuw [40 x i8], ptr %2, <4 x i64> %vec.ind
  %wide.gep27 = getelementptr inbounds nuw [40 x i8], ptr %2, <4 x i64> %step.add
  %wide.gep28 = getelementptr inbounds nuw [40 x i8], ptr %2, <4 x i64> %step.add.2
  %wide.gep29 = getelementptr inbounds nuw [40 x i8], ptr %2, <4 x i64> %step.add.3
  %wide.gep30 = getelementptr inbounds nuw [64 x i8], ptr %i.c, <4 x i64> %vec.ind
  %wide.gep31 = getelementptr inbounds nuw [64 x i8], ptr %i.c, <4 x i64> %step.add
  %wide.gep32 = getelementptr inbounds nuw [64 x i8], ptr %i.c, <4 x i64> %step.add.2
  %wide.gep33 = getelementptr inbounds nuw [64 x i8], ptr %i.c, <4 x i64> %step.add.3
  %wide.gep34 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep30, i64 48
  %wide.gep35 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep31, i64 48
  %wide.gep36 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep32, i64 48
  %wide.gep37 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep33, i64 48
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep34, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !45, !alias.scope !46
  %wide.masked.gather38 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep35, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !45, !alias.scope !46
  %wide.masked.gather39 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep36, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !45, !alias.scope !46
  %wide.masked.gather40 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep37, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !45, !alias.scope !46
  %wide.gep41 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 32
  %wide.gep42 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep27, i64 32
  %wide.gep43 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep28, i64 32
  %wide.gep44 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep29, i64 32
  %wide.masked.gather45 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep41, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !56
  %wide.masked.gather46 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep42, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !56
  %wide.masked.gather47 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep43, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !56
  %wide.masked.gather48 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep44, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !56
  %i.x = fmul <4 x double> %wide.masked.gather, %wide.masked.gather45
  %i.y = fmul <4 x double> %wide.masked.gather38, %wide.masked.gather46
  %i.z = fmul <4 x double> %wide.masked.gather39, %wide.masked.gather47
  %i.aa = fmul <4 x double> %wide.masked.gather40, %wide.masked.gather48
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store <4 x double> %i.x, ptr %i.ab, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  store <4 x double> %i.y, ptr %i.ac, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  store <4 x double> %i.z, ptr %i.ad, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  store <4 x double> %i.aa, ptr %i.ae, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !35

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.w, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !61

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec49, %vec.epilog.vector.body ] ; 4 uses
  %i.ag = sub nsw i64 %i.n, %indvars.iv.ph
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.prol
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv.prol
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !55
  %i.an = fmul double %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.prol
  store double %i.an, ptr %i.ao, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !36

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = sub nsw i64 %indvars.iv.ph, %i.n
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ar = and i64 %i.n, 3                         ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.as, i64 4, i64 %i.ar
  %n.vec49 = sub nsw i64 %i.n, %i.at              ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind51 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next59, %vec.epilog.vector.body ] ; 3 uses
  %wide.gep52 = getelementptr inbounds nuw [40 x i8], ptr %2, <4 x i64> %vec.ind51
  %wide.gep53 = getelementptr inbounds nuw [64 x i8], ptr %i.c, <4 x i64> %vec.ind51
  %wide.gep54 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep53, i64 48
  %wide.masked.gather55 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep54, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !45, !alias.scope !46
  %wide.gep56 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep52, i64 32
  %wide.masked.gather57 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep56, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !56
  %i.au = fmul <4 x double> %wide.masked.gather55, %wide.masked.gather57
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index50
  store <4 x double> %i.au, ptr %i.av, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  %index.next58 = add nuw i64 %index50, 4         ; 2 uses
  %vec.ind.next59 = add nuw nsw <4 x i64> %vec.ind51, splat (i64 4)
  %i.aw = icmp eq i64 %index.next58, %n.vec49
  br i1 %i.aw, label %.lr.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !37

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx10CoordStateC1ERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridEENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 75) #17
  unreachable

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader
  %i.ax = tail call noundef i32 @_ZNK3gmx8BiasGrid12nearestIndexEPKd(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %0) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !16
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bf = load double, ptr %i.be, align 8, !tbaa !55
  %i.bg = fmul double %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store double %i.bg, ptr %i.bh, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.next
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !55
  %i.bo = fmul double %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store double %i.bo, ptr %i.bp, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv.next.1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !45
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !55
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  store double %i.bw, ptr %i.bx, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv.next.2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !55
  %i.ce = fmul double %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  store double %i.ce, ptr %i.cf, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.n
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZNK3gmx8BiasGrid12nearestIndexEPKd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx10CoordState23sampleUmbrellaGridpointERKNS_8BiasGridEiNS_8ArrayRefIKdEElli(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef %2, ptr %3, ptr %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
