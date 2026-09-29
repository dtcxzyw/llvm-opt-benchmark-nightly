Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/transformationcoordinate?download=true
inline.NumInlined: 161
inline.NumDeleted: 120
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves", target_cpu: "skylake-avx512")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.gmx::InconsistentInputError" = type { %"class.gmx::UserInputError" }
%"class.gmx::UserInputError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.18" }
%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr.23" = type { %"struct.std::__uniq_ptr_data.24" }
%"struct.std::__uniq_ptr_data.24" = type { %"class.std::__uniq_ptr_impl.25" }
%"class.std::__uniq_ptr_impl.25" = type { %"class.std::tuple.26" }
%"class.std::tuple.26" = type { %"struct.std::_Tuple_impl.27" }
%"struct.std::_Tuple_impl.27" = type { %"struct.std::_Head_base.30" }
%"struct.std::_Head_base.30" = type { ptr }
%"struct.std::type_index" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZTIN2mu11ParserErrorE = comdat any

$_ZTSN2mu11ParserErrorE = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@_ZN2muL13ParserVersionB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"2.3.4 (Release)\00", align 1
@__dso_handle = external hidden global i8
@_ZN2muL17ParserVersionDateB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZTIN2mu11ParserErrorE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2mu11ParserErrorE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2mu11ParserErrorE = linkonce_odr constant [19 x i8] c"N2mu11ParserErrorE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.4 = private unnamed_addr constant [113 x i8] c"failed to evaluate expression for transformation pull-coord%d.\0ALast variable pull-coord-index: %d.\0AMessage:  %s\0A\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx12_GLOBAL__N_136getTransformationPullCoordinateValueEP17pull_coord_work_t = private unnamed_addr constant [93 x i8] c"double gmx::(anonymous namespace)::getTransformationPullCoordinateValue(pull_coord_work_t *)\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/pulling/transformationcoordinate.cpp\00", align 1
@_ZTIN3gmx22InconsistentInputErrorE = external constant ptr
@.str.6 = private unnamed_addr constant [67 x i8] c"failed to evaluate expression for transformation pull-coord%d: %s\0A\00", align 1
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx22InconsistentInputErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [93 x i8] c"Distributing force %4.4f for transformation coordinate %d to coordinate %d with force %4.4f\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_transformationcoordinate.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef double @_ZN3gmx36getTransformationPullCoordinateValueEP17pull_coord_work_tNS_8ArrayRefIKS0_EEd(ptr noundef %0, ptr nofree readonly captures(address) %1, ptr nofree readnone captures(address) %2, double noundef %3) local_unnamed_addr #7 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %.not13 = icmp eq ptr %1, %2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !12 ; 6 uses
  br i1 %.not13, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = add i64 %5, -488
  %i.b = sub i64 %i.a, %4                         ; 3 uses
  %i.c = udiv i64 %i.b, 488
  %i.d = add nuw nsw i64 %i.c, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.b, 1464
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %5, -488
  %i.f = sub i64 %i.e, %4
  %i.g = udiv i64 %i.f, 488                       ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr i8, ptr %.pre, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 8
  %scevgep18 = getelementptr i8, ptr %1, i64 376
  %i.j = mul nuw i64 %i.g, 488
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %scevgep19 = getelementptr i8, ptr %i.k, i64 384
  %bound0 = icmp ult ptr %.pre, %scevgep19
  %bound1 = icmp ult ptr %scevgep18, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %i.b, 7320
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.d, 12
  %n.vec = and i64 %i.d, 144115188075855856       ; 6 uses
  %i.m = mul i64 %n.vec, 488
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 488, i64 976, i64 1464> ; 4 uses
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 376
  %wide.gep21 = getelementptr i8, <4 x ptr> %vector.gep, i64 2328
  %wide.gep22 = getelementptr i8, <4 x ptr> %vector.gep, i64 4280
  %wide.gep23 = getelementptr i8, <4 x ptr> %vector.gep, i64 6232
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !47, !alias.scope !67
  %wide.masked.gather24 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep21, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !47, !alias.scope !67
  %wide.masked.gather25 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep22, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !47, !alias.scope !67
  %wide.masked.gather26 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep23, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !47, !alias.scope !67
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store <4 x double> %wide.masked.gather, ptr %i.o, align 8, !tbaa !48, !alias.scope !68, !noalias !67
  store <4 x double> %wide.masked.gather24, ptr %i.p, align 8, !tbaa !48, !alias.scope !68, !noalias !67
  store <4 x double> %wide.masked.gather25, ptr %i.q, align 8, !tbaa !48, !alias.scope !68, !noalias !67
  store <4 x double> %wide.masked.gather26, ptr %i.r, align 8, !tbaa !48, !alias.scope !68, !noalias !67
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 7808
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.n, %vec.epilog.iter.check ], [ %1, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.d, 144115188075855868     ; 5 uses
  %i.t = mul i64 %n.vec27, 488
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %pointer.phi29 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind34, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep30 = getelementptr i8, ptr %pointer.phi29, <4 x i64> <i64 0, i64 488, i64 976, i64 1464>
  %wide.gep31 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep30, i64 376
  %wide.masked.gather32 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep31, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !47, !alias.scope !67
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index28
  store <4 x double> %wide.masked.gather32, ptr %i.v, align 8, !tbaa !48, !alias.scope !68, !noalias !67
  %index.next33 = add nuw i64 %index28, 4         ; 2 uses
  %ptr.ind34 = getelementptr i8, ptr %pointer.phi29, i64 1952
  %i.w = icmp eq i64 %index.next33, %n.vec27
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %i.d, %n.vec27
  br i1 %cmp.n35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec27, %vec.epilog.middle.block ]
  %.sroa.0.014.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %n.vec27, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next, %.lr.ph ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.0.lcssa
  store double %3, ptr %i.x, align 8, !tbaa !48
  %i.y = tail call fastcc noundef double @_ZN3gmx12_GLOBAL__N_136getTransformationPullCoordinateValueEP17pull_coord_work_t(ptr noundef nonnull %0)
  ret double %i.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.014 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.0.014.ph, %.lr.ph.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 376
  %i.aa = load double, ptr %i.z, align 8, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  store double %i.aa, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 488 ; 2 uses
  %.not = icmp eq ptr %i.ac, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN3gmx12_GLOBAL__N_136getTransformationPullCoordinateValueEP17pull_coord_work_t(ptr noundef %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gmx::InconsistentInputError", align 8 ; 4 uses
  %2 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %5 = alloca %"class.gmx::InconsistentInputError", align 8 ; 4 uses
  %6 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = invoke noundef double @_ZN3gmx25PullCoordExpressionParser8evaluateENS_8ArrayRefIKdEE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr %i.e, ptr %i.k)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret double %i.l

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2mu11ParserErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.n = extractvalue { ptr, i32 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i32 } %i.m, 1        ; 2 uses
  %i.p = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2mu11ParserErrorE) #19
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.n) #19
  %i.s = tail call ptr @__cxa_allocate_exception(i64 24) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK2mu11ParserError6GetMsgB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.r)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.b, 1
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !50
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.6, i32 noundef %i.u, ptr noundef %i.v)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %.thread64

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %8, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx12_GLOBAL__N_136getTransformationPullCoordinateValueEP17pull_coord_work_t, ptr %i.w, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 77, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !54
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.s, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr %i.s, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #21
          to label %bb.ab unwind label %bb.v

bb.j:                                             ; preds = %bb.c
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.y = icmp eq i32 %i.o, %i.x
  br i1 %i.y, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.n) #19 ; 2 uses
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 24) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ab = add nsw i32 %i.b, 1                     ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #19
end_hunk_0
