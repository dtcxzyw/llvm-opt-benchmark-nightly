Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calculate_spline_moduli?download=true
inline.NumInlined: 238
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [3 x %"class.std::vector"] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::InconsistentInputError" = type { %"class.gmx::UserInputError" }
%"class.gmx::UserInputError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.8" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.14" }
%"struct.std::_Head_base.14" = type { ptr }
%"struct.std::type_index" = type { ptr }

$_ZNSt5arrayISt6vectorIfSaIfEELm3EED2Ev = comdat any

$_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2EPKc = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"mod[ndata / 2] < GMX_DOUBLE_EPS\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"With even spline order and even grid size (ndata), dft_mod[ndata/2] should first come out as zero\00", align 1
@"__PRETTY_FUNCTION__._ZZL12make_dft_modN3gmx8ArrayRefIKdEEiiENK3$_0clEv" = private unnamed_addr constant [87 x i8] c"auto make_dft_mod(gmx::ArrayRef<const double>, int, int)::(lambda)::operator()() const\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/ewald/calculate_spline_moduli.cpp\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"The current P3M code only supports orders up to 8\00", align 1
@__PRETTY_FUNCTION__._ZL27make_p3m_bspline_moduli_dimii = private unnamed_addr constant [56 x i8] c"std::vector<real> make_p3m_bspline_moduli_dim(int, int)\00", align 1
@_ZTIN3gmx22InconsistentInputErrorE = external constant ptr
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx22InconsistentInputErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z19make_bspline_moduliiiii(ptr dead_on_unwind noalias writable sret(%"struct.std::array") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 16      ; 6 uses
  %6 = alloca %"class.std::vector", align 16      ; 6 uses
  %7 = alloca %"class.std::vector", align 16      ; 6 uses
  %i.a = add nsw i32 %4, -1                       ; 5 uses
  %i.b = icmp slt i32 %4, 1
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.a, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #19 ; 16 uses
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !10
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !10
  %i.i = icmp samesign ugt i32 %4, 2
  br i1 %i.i, label %.lr.ph74.preheader, label %._crit_edge

.lr.ph74.preheader:                               ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.j = add nsw i32 %4, -2
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.l, i1 false), !tbaa !10
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %iter.check

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke fastcc void @_ZL12make_dft_modN3gmx8ArrayRefIKdEEii(ptr dead_on_unwind noalias writable align 8 %5, ptr nonnull %i.e, i32 noundef %i.a, i32 noundef %1)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.b

iter.check:                                       ; preds = %.lr.ph74.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph74.preheader ], [ %indvars.iv.next, %.loopexit ] ; 12 uses
  %i.m = add i64 %indvar, 1                       ; 7 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fdiv double 1.000000e+00, %i.o           ; 4 uses
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check81 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.m, 12
  %n.vec = and i64 %i.m, -16                      ; 4 uses
  %i.r = sub i64 %indvars.iv, %n.vec              ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert82 = insertelement <4 x double> poison, double %i.p, i64 0
  %broadcast.splat83 = shufflevector <4 x double> %broadcast.splatinsert82, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.s = add nsw <4 x i64> %broadcast.splat, <i64 0, i64 -1, i64 -2, i64 -3>
  %i.t = trunc i64 %indvars.iv to i32
  %broadcast.splatinsert84 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat85 = shufflevector <4 x i32> %broadcast.splatinsert84, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.u = add <4 x i32> %broadcast.splat85, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %i.s, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.ind86 = phi <4 x i32> [ %i.u, %vector.ph ], [ %vec.ind.next108, %vector.body ] ; 5 uses
  %step.add87 = add <4 x i32> %vec.ind86, splat (i32 -4)
  %step.add.288 = add <4 x i32> %vec.ind86, splat (i32 -8)
  %step.add.389 = add <4 x i32> %vec.ind86, splat (i32 -12)
  %i.v = sub i64 %indvars.iv, %index
  %i.w = add nsw <4 x i64> %vec.ind, splat (i64 -1) ; 2 uses
  %i.x = extractelement <4 x i64> %i.w, i64 0
  %i.y = add <4 x i64> %vec.ind, splat (i64 4294967291)
  %i.z = add <4 x i64> %vec.ind, splat (i64 4294967287)
  %i.aa = add <4 x i64> %vec.ind, splat (i64 4294967283)
  %i.ab = sub nuw nsw <4 x i64> %broadcast.splat, %i.w
  %i.ac = sub <4 x i64> %broadcast.splat, %i.y
  %i.ad = sub <4 x i64> %broadcast.splat, %i.z
  %i.ae = sub <4 x i64> %broadcast.splat, %i.aa
  %i.af = trunc nuw nsw <4 x i64> %i.ab to <4 x i32>
  %i.ag = trunc <4 x i64> %i.ac to <4 x i32>
  %i.ah = trunc <4 x i64> %i.ad to <4 x i32>
  %i.ai = trunc <4 x i64> %i.ae to <4 x i32>
  %8 = sitofp <4 x i32> %i.af to <4 x double>
  %9 = sitofp <4 x i32> %i.ag to <4 x double>
  %10 = sitofp <4 x i32> %i.ah to <4 x double>
  %11 = sitofp <4 x i32> %i.ai to <4 x double>
  %i.aj = getelementptr [8 x i8], ptr %i.e, i64 %i.v ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -40
  %i.al = getelementptr i8, ptr %i.aj, i64 -72
  %i.am = getelementptr i8, ptr %i.aj, i64 -104
  %i.an = getelementptr i8, ptr %i.aj, i64 -136
  %wide.load = load <4 x double>, ptr %i.ak, align 8, !tbaa !10
  %wide.load90 = load <4 x double>, ptr %i.al, align 8, !tbaa !10
  %wide.load91 = load <4 x double>, ptr %i.am, align 8, !tbaa !10
  %wide.load92 = load <4 x double>, ptr %i.an, align 8, !tbaa !10
  %reverse = shufflevector <4 x double> %wide.load, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse93 = shufflevector <4 x double> %wide.load90, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse94 = shufflevector <4 x double> %wide.load91, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse95 = shufflevector <4 x double> %wide.load92, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ao = uitofp nneg <4 x i32> %vec.ind86 to <4 x double>
  %i.ap = uitofp nneg <4 x i32> %step.add87 to <4 x double>
  %i.aq = uitofp nneg <4 x i32> %step.add.288 to <4 x double>
  %i.ar = uitofp nneg <4 x i32> %step.add.389 to <4 x double>
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.x ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -56 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -88 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -120 ; 2 uses
  %wide.load96 = load <4 x double>, ptr %i.at, align 8, !tbaa !10
  %wide.load97 = load <4 x double>, ptr %i.au, align 8, !tbaa !10
  %wide.load98 = load <4 x double>, ptr %i.av, align 8, !tbaa !10
  %wide.load99 = load <4 x double>, ptr %i.aw, align 8, !tbaa !10
  %reverse100 = shufflevector <4 x double> %wide.load96, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse101 = shufflevector <4 x double> %wide.load97, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse102 = shufflevector <4 x double> %wide.load98, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse103 = shufflevector <4 x double> %wide.load99, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ax = fmul <4 x double> %reverse100, %i.ao
  %i.ay = fmul <4 x double> %reverse101, %i.ap
  %i.az = fmul <4 x double> %reverse102, %i.aq
  %i.ba = fmul <4 x double> %reverse103, %i.ar
  %i.bb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %8, <4 x double> %reverse, <4 x double> %i.ax)
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %9, <4 x double> %reverse93, <4 x double> %i.ay)
  %i.bd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %10, <4 x double> %reverse94, <4 x double> %i.az)
  %i.be = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %11, <4 x double> %reverse95, <4 x double> %i.ba)
  %i.bf = fmul <4 x double> %broadcast.splat83, %i.bb
  %i.bg = fmul <4 x double> %broadcast.splat83, %i.bc
  %i.bh = fmul <4 x double> %broadcast.splat83, %i.bd
  %i.bi = fmul <4 x double> %broadcast.splat83, %i.be
  %reverse104 = shufflevector <4 x double> %i.bf, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse105 = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse106 = shufflevector <4 x double> %i.bh, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse107 = shufflevector <4 x double> %i.bi, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %reverse104, ptr %i.at, align 8, !tbaa !10
  store <4 x double> %reverse105, ptr %i.au, align 8, !tbaa !10
  store <4 x double> %reverse106, ptr %i.av, align 8, !tbaa !10
  store <4 x double> %reverse107, ptr %i.aw, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 -16)
  %vec.ind.next108 = add <4 x i32> %vec.ind86, splat (i32 -16)
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.r, %vec.epilog.iter.check ], [ %indvars.iv, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec109 = and i64 %i.m, -4                    ; 3 uses
  %i.bk = sub i64 %indvars.iv, %n.vec109
  %broadcast.splatinsert110 = insertelement <4 x i64> poison, i64 %indvars.iv, i64 0
  %broadcast.splat111 = shufflevector <4 x i64> %broadcast.splatinsert110, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <4 x double> poison, double %i.p, i64 0
  %broadcast.splatinsert114 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat115 = shufflevector <4 x i64> %broadcast.splatinsert114, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bl = add nsw <4 x i64> %broadcast.splat115, <i64 0, i64 -1, i64 -2, i64 -3>
  %i.bm = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bn = add <4 x i32> %broadcast.splat117, <i32 0, i32 -1, i32 -2, i32 -3>
  %i.bo = shufflevector <4 x double> %broadcast.splatinsert112, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind119 = phi <4 x i64> [ %i.bl, %vec.epilog.ph ], [ %vec.ind.next127, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind120 = phi <4 x i32> [ %i.bn, %vec.epilog.ph ], [ %vec.ind.next128, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = sub i64 %indvars.iv, %index118
  %i.bq = add nsw <4 x i64> %vec.ind119, splat (i64 -1) ; 2 uses
  %i.br = extractelement <4 x i64> %i.bq, i64 0
  %i.bs = sub nuw nsw <4 x i64> %broadcast.splat111, %i.bq
  %i.bt = trunc nuw nsw <4 x i64> %i.bs to <4 x i32>
  %12 = sitofp <4 x i32> %i.bt to <4 x double>
  %i.bu = getelementptr [8 x i8], ptr %i.e, i64 %i.bp
  %i.bv = getelementptr i8, ptr %i.bu, i64 -40
  %wide.load121 = load <4 x double>, ptr %i.bv, align 8, !tbaa !10
  %reverse122 = shufflevector <4 x double> %wide.load121, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bw = uitofp nneg <4 x i32> %vec.ind120 to <4 x double>
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.br
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -24 ; 2 uses
  %wide.load123 = load <4 x double>, ptr %i.by, align 8, !tbaa !10
  %reverse124 = shufflevector <4 x double> %wide.load123, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bz = fmul <4 x double> %reverse124, %i.bw
  %i.ca = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %12, <4 x double> %reverse122, <4 x double> %i.bz)
  %i.cb = shufflevector <4 x double> %i.ca, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse125 = fmul <4 x double> %i.bo, %i.cb
  store <4 x double> %reverse125, ptr %i.by, align 8, !tbaa !10
  %index.next126 = add nuw i64 %index118, 4       ; 2 uses
  %vec.ind.next127 = add nsw <4 x i64> %vec.ind119, splat (i64 -4)
  %vec.ind.next128 = add <4 x i32> %vec.ind120, splat (i32 -4)
  %i.cc = icmp eq i64 %index.next126, %n.vec109
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %i.m, %n.vec109
  br i1 %cmp.n129, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv76.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cd = load double, ptr %i.e, align 8, !tbaa !10
  %i.ce = fmul double %i.p, %i.cd
  store double %i.ce, ptr %i.e, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !36

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %vec.epilog.scalar.ph ], [ %indvars.iv76.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, -1 ; 3 uses
  %i.cf = sub nuw nsw i64 %indvars.iv, %indvars.iv.next77
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %13 = sitofp i32 %i.cg to double
  %i.ch = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv76
  %i.ci = getelementptr i8, ptr %i.ch, i64 -16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !10
  %i.ck = trunc nuw nsw i64 %indvars.iv76 to i32
  %i.cl = uitofp nneg i32 %i.ck to double
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next77 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !10
  %i.co = fmul double %i.cn, %i.cl
  %i.cp = tail call double @llvm.fmuladd.f64(double %13, double %i.cj, double %i.co)
  %i.cq = fmul double %i.p, %i.cp
  store double %i.cq, ptr %i.cm, align 8, !tbaa !10
  %i.cr = icmp sgt i64 %indvars.iv76, 2
  br i1 %i.cr, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !37

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load <2 x ptr>, ptr %5, align 16, !tbaa !14
  store <2 x ptr> %i.ct, ptr %0, align 8, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !16
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke fastcc void @_ZL12make_dft_modN3gmx8ArrayRefIKdEEii(ptr dead_on_unwind noalias writable align 8 %6, ptr nonnull %i.e, i32 noundef %i.a, i32 noundef %2)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit41 unwind label %bb.c

_ZNSt6vectorIfSaIfEED2Ev.exit41:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cy = load <2 x ptr>, ptr %6, align 16, !tbaa !14
  store <2 x ptr> %i.cy, ptr %i.cw, align 8, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !16
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke fastcc void @_ZL12make_dft_modN3gmx8ArrayRefIKdEEii(ptr dead_on_unwind noalias writable align 8 %7, ptr nonnull %i.e, i32 noundef %i.a, i32 noundef %3)
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit unwind label %bb.d

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit41
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dd = load <2 x ptr>, ptr %7, align 16, !tbaa !14
  store <2 x ptr> %i.dd, ptr %i.db, align 8, !tbaa !14
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !16
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #21
  ret void

bb.b:                                             ; preds = %._crit_edge
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit48

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit48

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit41
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit48

_ZNSt6vectorIdSaIdEED2Ev.exit48:                  ; preds = %bb.d, %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.di, %bb.d ], [ %i.dh, %bb.c ], [ %i.dg, %bb.b ]
  tail call void @_ZNSt5arrayISt6vectorIfSaIfEELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12make_dft_modN3gmx8ArrayRefIKdEEii(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i32 noundef range(i32 -2147483648, 2147483647) %2, i32 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %.noexc37

.noexc37:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #19 ; 8 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.a ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !16
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !19
  %i.g = getelementptr i8, ptr %i.d, i64 4        ; 3 uses
  %i.h = add nsw i64 %i.a, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc37
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i
  br label %.preheader.lr.ph

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge47

.preheader.lr.ph:                                 ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc37
  %.0.i.i.i.i.i.ph = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.g, %.noexc37 ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %i.k, align 8, !tbaa !20
  %i.l = icmp sgt i32 %2, 0
  %i.m = uitofp nneg i32 %3 to double             ; 5 uses
  %wide.trip.count56 = zext nneg i32 %3 to i64    ; 2 uses
  br i1 %i.l, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.n = shl nuw nsw i64 %wide.trip.count56, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.d, i8 0, i64 %i.n, i1 false), !tbaa !19
  br label %._crit_edge47

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.o = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv52 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next53, %._crit_edge.us ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = fmul nnan double %i.q, f0x401921FB54442D18 ; 5 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.02943.us = phi double [ %i.bf, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %.03042.us = phi double [ %i.bd, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.t = uitofp nneg i32 %i.s to double
  %i.u = fmul nnan double %i.r, %i.t
  %i.v = fdiv double %i.u, %i.m                   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !10 ; 2 uses
  %i.y = tail call double @cos(double noundef %i.v) #20
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %i.y, double %.03042.us)
  %i.aa = tail call double @sin(double noundef %i.v) #20
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.x, double %i.aa, double %.02943.us)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ad = uitofp nneg i32 %i.ac to double
  %i.ae = fmul nnan double %i.r, %i.ad
  %i.af = fdiv double %i.ae, %i.m                 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !10 ; 2 uses
  %i.ai = tail call double @cos(double noundef %i.af) #20
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ai, double %i.z)
  %i.ak = tail call double @sin(double noundef %i.af) #20
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ak, double %i.ab)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fmul nnan double %i.r, %i.an
  %i.ap = fdiv double %i.ao, %i.m                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.as = tail call double @cos(double noundef %i.ap) #20
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.as, double %i.aj)
  %i.au = tail call double @sin(double noundef %i.ap) #20
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.au, double %i.al)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = fmul double %i.r, %i.ax
  %i.az = fdiv double %i.ay, %i.m                 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !10 ; 2 uses
end_hunk_0
