Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pbc?download=true
inline.NumInlined: 412
inline.NumDeleted: 186
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 95
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::EnumerationArray" = type { [5 x %"class.std::__cxx11::basic_string"] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.5" }
%"struct.std::_Head_base.5" = type { ptr }
%"class.std::allocator" = type { i8 }
%"class.gmx::BasicVector.6" = type { [3 x float] }
%"class.gmx::ArrayRef" = type { %"struct.gmx::ArrayRefIter", %"struct.gmx::ArrayRefIter" }
%"struct.gmx::ArrayRefIter" = type { ptr }
%struct.t_pbc = type { i32, i32, i32, i32, [3 x [3 x float]], [3 x float], [3 x float], [3 x float], float, i32, [12 x [3 x i32]], [12 x [3 x float]] }
%struct.t_graph = type <{ i32, i32, i32, i32, %"class.gmx::ListOfLists", i8, [7 x i8], %"class.std::vector.68", %"class.std::vector.73", i32, [4 x i8] }>
%"class.gmx::ListOfLists" = type { %"class.std::vector.41", %"class.std::vector.41" }
%"class.std::vector.41" = type { %"struct.std::_Vector_base.42" }
%"struct.std::_Vector_base.42" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.68" = type { %"struct.std::_Vector_base.69" }
%"struct.std::_Vector_base.69" = type { %"struct.std::_Vector_base<gmx::BasicVector<int>, std::allocator<gmx::BasicVector<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<gmx::BasicVector<int>, std::allocator<gmx::BasicVector<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<gmx::BasicVector<int>, std::allocator<gmx::BasicVector<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<gmx::BasicVector<int>, std::allocator<gmx::BasicVector<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.73" = type { %"struct.std::_Vector_base.74" }
%"struct.std::_Vector_base.74" = type { %"struct.std::_Vector_base<egCol, std::allocator<egCol>>::_Vector_impl" }
%"struct.std::_Vector_base<egCol, std::allocator<egCol>>::_Vector_impl" = type { %"struct.std::_Vector_base<egCol, std::allocator<egCol>>::_Vector_impl_data" }
%"struct.std::_Vector_base<egCol, std::allocator<egCol>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN3gmx16EnumerationArrayI7PbcTypeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_5EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZN7t_graphD2Ev = comdat any

@_Z14c_pbcTypeNamesB5cxx11 = global %"struct.gmx::EnumerationArray" zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"screw\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@__dso_handle = external hidden global i8
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"Number of PBC dimensions was requested before the PBC type set.\00", align 1
@"__PRETTY_FUNCTION__._ZZ16numPbcDimensions7PbcTypeENK3$_0clEv" = private unnamed_addr constant [61 x i8] c"auto numPbcDimensions(PbcType)::(lambda)::operator()() const\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/pbcutil/pbc.cpp\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Invalid pbcType in numPbcDimensions\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"pbcTypeDX = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"fbox_diag\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"hbox_diag\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"mhbox_diag\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"sum of the above two\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"max_cutoff2 = %g\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ntric_vec = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"tric_shift\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"tric_vec\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"Empty diagonal for a 3-dimensional periodic box\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Empty diagonal for a 2-dimensional periodic box\00", align 1
@.str.22 = private unnamed_addr constant [119 x i8] c"Only triclinic boxes with the first vector parallel to the x-axis and the second vector in the xy-plane are supported.\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"The unit cell can not have off-diagonal x-components with screw pbc\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Triclinic box is too skewed.\00", align 1
@_ZL12bWarnedGuess = internal unnamed_addr global i1 false, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [88 x i8] c"WARNING: Unsupported box diagonal %f %f %f, will not use periodic boundary conditions\0A\0A\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [38 x i8] c"Guessed pbc = %s from the box matrix\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"box != nullptr\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"guessPbcType requires a valid box\00", align 1
@"__PRETTY_FUNCTION__._ZZ12guessPbcTypePA3_KfENK3$_0clEv" = private unnamed_addr constant [67 x i8] c"auto guessPbcType(const real (*)[3])::(lambda)::operator()() const\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Step %ld: correcting invalid box:\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"old box\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"new box\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"Box was shifted at least %d times. Please see log-file.\00", align 1
@__const._ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf.order = private unnamed_addr constant [3 x i32] [i32 0, i32 -1, i32 1], align 4
@.str.33 = private unnamed_addr constant [13 x i8] c"Warning: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"         Box\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"         Can not fix pbc.\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.37 = private unnamed_addr constant [52 x i8] c"low_set_pbc called with screw pbc and dd_nc != NULL\00", align 1
@.str.38 = private unnamed_addr constant [72 x i8] c"Screw pbc is not yet implemented for triclinic boxes.\0ACan not fix pbc.\0A\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Incorrect number of pbc dimensions with DD: %d\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"max cutoff %.3f\0A\00", align 1
@.str.42 = private unnamed_addr constant [126 x i8] c"\0AWARNING: Found more than %d triclinic correction vectors, ignoring some.\0A  There is probably something wrong with your box.\0A\00", align 1
@.str.43 = private unnamed_addr constant [80 x i8] c"  tricvec %2d = %2d %2d %2d  %5.2f %5.2f  %5.2f %5.2f %5.2f  %5.2f %5.2f %5.2f\0A\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"Internal error in pbc_dx, set_pbc has not been called\00", align 1
@.str.45 = private unnamed_addr constant [73 x i8] c"Internal error in pbc_dx_aiuc, set_pbc_dd or set_pbc has not been called\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"PBC shift vector index range check.\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"Unsupported value %d for ecenter\00", align 1
@_ZZ22compact_unitcell_edgesvE6hexcon = internal unnamed_addr constant [24 x i32] [i32 0, i32 9, i32 1, i32 19, i32 2, i32 15, i32 3, i32 21, i32 4, i32 17, i32 5, i32 11, i32 6, i32 23, i32 7, i32 13, i32 8, i32 20, i32 10, i32 18, i32 12, i32 16, i32 14, i32 22], align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"Sorry, %s pbc is not yet supported\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@_ZTISt9exception = external constant ptr
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.51 = private unnamed_addr constant [59 x i8] c"Can not put atoms in compact unitcell with unsupported PBC\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"Removing pbc first time\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"v.size() == x.size()\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"Need velocities with box deformation\00", align 1
@"__PRETTY_FUNCTION__._ZZL15low_do_pbc_mtopP8_IO_FILE7PbcTypebPA3_KfS4_PK10gmx_mtop_tN3gmx8ArrayRefINS8_11BasicVectorIfEEEESC_bENK3$_0clEv" = private unnamed_addr constant [200 x i8] c"auto low_do_pbc_mtop(FILE *, PbcType, const bool, const real (*)[3], const real (*)[3], const gmx_mtop_t *, gmx::ArrayRef<gmx::RVec>, gmx::ArrayRef<gmx::RVec>, gmx_bool)::(lambda)::operator()() const\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_pbc.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16EnumerationArrayI7PbcTypeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_5EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.y = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 4) i32 @_Z16numPbcDimensions7PbcType(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 4, label %bb.b
    i32 0, label %bb.f
    i32 2, label %bb.c
    i32 3, label %bb.f
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ16numPbcDimensions7PbcTypeENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 115) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ16numPbcDimensions7PbcTypeENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 121) #29
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 3, %bb.a ], [ 3, %bb.a ], [ 0, %bb.d ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z8dump_pbcP8_IO_FILEP5t_pbc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.c) #20 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.e, i32 noundef 3)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.f, i32 noundef 1)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.g, i32 noundef 1)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.h, i32 noundef 1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load float, ptr %i.i, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.l = load float, ptr %i.k, align 4, !tbaa !23
  %i.m = fadd float %i.j, %i.l
  %i.n = load <2 x float>, ptr %i.g, align 4, !tbaa !23
  %i.o = load <2 x float>, ptr %i.h, align 4, !tbaa !23
  %i.p = fadd <2 x float> %i.n, %i.o
  store <2 x float> %i.p, ptr %i.a, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.m, ptr %i.q, align 8, !tbaa !23
  call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load float, ptr %i.r, align 4, !tbaa !24
  %i.t = fpext float %i.s to double
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, double noundef %i.t) #20 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %i.w) #20 ; 0 uses
  %i.y = load i32, ptr %i.v, align 4, !tbaa !25   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_Z8pr_ivecsP8_IO_FILEiPKcPA3_Kiib(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.aa, i32 noundef %i.y, i1 noundef zeroext false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !25
  call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.ab, i32 noundef %i.ac)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_Z8pr_ivecsP8_IO_FILEiPKcPA3_Kiib(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_Z12guessPbcTypePA3_Kf(ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.025 = phi i32 [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  switch i32 %.025, label %bb.i [
    i32 1, label %bb.s
    i32 0, label %bb.d
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = load float, ptr %1, align 4, !tbaa !23
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !23
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fcmp oeq float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.s, label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.k = load float, ptr %1, align 4, !tbaa !23
  %i.l = fcmp oeq float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !23
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = fcmp une float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !23
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !23
  %i.x = fcmp une float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = icmp eq i32 %.025, 3
  %.pre = load float, ptr %i.y, align 4, !tbaa !23 ; 3 uses
  br i1 %i.z, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aa = fcmp une float %.pre, 0.000000e+00
  br i1 %i.aa, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !23
  %i.ad = fcmp une float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.s, label %.thread

bb.o:                                             ; preds = %bb.l
  %i.ae = tail call noundef float @llvm.fabs.f32(float %.pre)
  %i.af = load float, ptr %1, align 4, !tbaa !23
  %i.ag = fmul float %i.af, 5.025000e-01          ; 2 uses
  %i.ah = fcmp ogt float %i.ae, %i.ag
  br i1 %i.ah, label %bb.s, label %bb.p

.thread:                                          ; preds = %bb.n
  %i.ai = tail call noundef float @llvm.fabs.f32(float %.pre)
  %i.aj = load float, ptr %1, align 4, !tbaa !23
  %i.ak = fmul float %i.aj, 5.025000e-01          ; 2 uses
  %i.al = fcmp ogt float %i.ai, %i.ak
  br i1 %i.al, label %bb.s, label %.thread28

bb.p:                                             ; preds = %bb.o
  %.not = icmp eq i32 %.025, 2
  br i1 %.not, label %bb.r, label %.thread28

.thread28:                                        ; preds = %.thread, %bb.p
  %i.am = phi float [ %i.ag, %bb.p ], [ %i.ak, %.thread ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load float, ptr %i.an, align 4, !tbaa !23
  %i.ap = tail call noundef float @llvm.fabs.f32(float %i.ao)
  %i.aq = fcmp ogt float %i.ap, %i.am
  br i1 %i.aq, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.thread28
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.as = load float, ptr %i.ar, align 4, !tbaa !23
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load float, ptr %i.au, align 4, !tbaa !23
  %i.aw = fmul float %i.av, 5.025000e-01
  %i.ax = fcmp ogt float %i.at, %i.aw
  br i1 %i.ax, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r, %bb.f, %bb.h, %bb.k, %bb.j, %bb.i, %bb.n, %bb.m, %bb.q, %.thread28, %bb.o, %bb.c
  %.024 = phi ptr [ null, %bb.c ], [ null, %bb.r ], [ @.str.20, %bb.f ], [ @.str.21, %bb.h ], [ @.str.22, %bb.i ], [ @.str.23, %bb.m ], [ @.str.22, %bb.k ], [ @.str.22, %bb.j ], [ @.str.23, %bb.n ], [ @.str.24, %bb.q ], [ @.str.24, %.thread28 ], [ @.str.24, %bb.o ], [ @.str.24, %.thread ]
  ret ptr %.024
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_Z12guessPbcTypePA3_Kf(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ12guessPbcTypePA3_KfENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 247) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load float, ptr %0, align 4, !tbaa !23   ; 3 uses
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !23
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !23
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !23
  %i.k = fcmp oeq float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.f
  %i.l = fcmp oeq float %i.a, 0.000000e+00
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !23
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.b = load i1, ptr @_ZL12bWarnedGuess, align 1
  br i1 %.b, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.t = fpext float %i.a to double
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !23
  %i.w = fpext float %i.v to double
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load float, ptr %i.x, align 4, !tbaa !23
  %i.z = fpext float %i.y to double
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.25, double noundef %i.t, double noundef %i.w, double noundef %i.z) #32 ; 0 uses
  store i1 true, ptr @_ZL12bWarnedGuess, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %bb.f, %bb.e
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.e ], [ 2, %bb.f ], [ 1, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.ab = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %.not15 = icmp eq ptr %i.ab, null
  br i1 %.not15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = zext nneg i32 %.0 to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr @_Z14c_pbcTypeNamesB5cxx11, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.26, ptr noundef %i.ae) #20 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_Z14matrix_convertPA3_fPKfS2_(ptr nofree noundef writeonly captures(none) initializes((0, 4), (12, 20), (24, 36)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
  %i.a = load <2 x float>, ptr %2, align 4, !tbaa !23
  %i.b = fmul <2 x float> %i.a, splat (float f0x3C8EFA35) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !23
  %i.e = fmul float %i.d, f0x3C8EFA35             ; 3 uses
  %i.f = load float, ptr %1, align 4, !tbaa !23
  store float %i.f, ptr %0, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !23
  %i.i = tail call noundef float @cosf(float noundef %i.e) #20
  %i.j = fmul float %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !23
  %i.l = load float, ptr %i.g, align 4, !tbaa !23
  %i.m = tail call noundef float @sinf(float noundef %i.e) #20
  %i.n = fmul float %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.n, ptr %i.o, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = extractelement <2 x float> %i.b, i64 1   ; 2 uses
  %i.s = tail call noundef float @cosf(float noundef %i.r) #20
  %i.t = fmul float %i.q, %i.s                    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.t, ptr %i.u, align 4, !tbaa !23
  %i.v = load float, ptr %i.p, align 4, !tbaa !23
  %i.w = extractelement <2 x float> %i.b, i64 0
  %i.x = tail call noundef float @cosf(float noundef %i.w) #20
  %i.y = tail call noundef float @cosf(float noundef %i.r) #20
  call void @sincosf(float %i.e, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load float, ptr %sincos.sin, align 4
  %cos = load float, ptr %sincos.cos, align 4
  %3 = fneg float %i.y
  %4 = call float @llvm.fmuladd.f32(float %3, float %cos, float %i.x)
  %5 = fmul float %i.v, %4
  %i.z = fdiv float %5, %sin                      ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.z, ptr %i.aa, align 4, !tbaa !23
  %i.ab = load float, ptr %i.p, align 4, !tbaa !23 ; 2 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = fneg float %i.t
  %6 = call float @llvm.fmuladd.f32(float %i.ad, float %i.t, float %i.ac)
  %i.ae = fneg float %i.z
  %7 = call float @llvm.fmuladd.f32(float %i.ae, float %i.z, float %6)
  %8 = call noundef float @sqrtf(float noundef %7) #20
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %8, ptr %i.af, align 4, !tbaa !23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = load float, ptr %1, align 4, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !23 ; 2 uses
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.f) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !23 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !23 ; 5 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !23 ; 2 uses
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.o) ; 2 uses
  %i.s = fcmp olt float %i.r, %i.i
  %.sroa.speculated23 = select i1 %i.s, float %i.r, float %i.i
  %i.t = fmul float %.sroa.speculated23, 2.500000e-01 ; 3 uses
  %cond = icmp eq i32 %0, 2
  br i1 %cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !23 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.x = load float, ptr %i.w, align 4, !tbaa !23 ; 3 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !23 ; 4 uses
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.z)
  %i.ad = fmul float %i.ac, 2.500000e-01          ; 2 uses
  %i.ae = fcmp olt float %i.ad, %i.t
  %.sroa.speculated19 = select i1 %i.ae, float %i.ad, float %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.ag = fsub float %i.m, %i.af                  ; 3 uses
  store float %i.ag, ptr %i.a, align 4, !tbaa !23
  %i.ah = fcmp olt float %i.ab, %i.ag             ; 2 uses
  %..i13 = select i1 %i.ah, ptr %i.aa, ptr %i.a
  %i.ai = select i1 %i.ah, float %i.ab, float %i.ag
  %i.aj = fcmp olt float %i.ai, %i.b
  %..i14 = select i1 %i.aj, ptr %..i13, ptr %1
  %i.ak = load float, ptr %..i14, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.al = fcmp olt float %i.m, %i.b
  %i.am = select i1 %i.al, float %i.m, float %i.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.028 = phi float [ %i.t, %bb.c ], [ %.sroa.speculated19, %bb.b ] ; 2 uses
  %.0 = phi float [ %i.am, %bb.c ], [ %i.ak, %bb.b ] ; 2 uses
  %i.an = fmul float %.0, %.0                     ; 2 uses
  %i.ao = fcmp olt float %i.an, %.028
  %.sroa.speculated = select i1 %i.ao, float %i.an, float %.028
  ret float %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z11correct_boxP8_IO_FILElPA3_f(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL16correct_box_elemP8_IO_FILElPA3_fii(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 2, i32 noundef 1)
  %i.b = tail call fastcc noundef i32 @_ZL16correct_box_elemP8_IO_FILElPA3_fii(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 2, i32 noundef 0)
  %i.c = tail call fastcc noundef i32 @_ZL16correct_box_elemP8_IO_FILElPA3_fii(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef 0)
  %i.d = or i32 %i.b, %i.a
  %i.e = or i32 %i.d, %i.c
  %spec.select = icmp ne i32 %i.e, 0
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -2147483647, 2147483647) i32 @_ZL16correct_box_elemP8_IO_FILElPA3_fii(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef range(i32 1, 3) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = zext nneg i32 %3 to i64
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.a ; 19 uses
  %i.c = zext nneg i32 %4 to i64                  ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 13 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.c ; 15 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c ; 13 uses
  %.not52 = icmp eq ptr %0, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 13 uses
  br i1 %.not52, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.i = load float, ptr %i.d, align 4, !tbaa !23
  %i.j = load float, ptr %i.f, align 4, !tbaa !23
  %i.k = fmul float %i.j, 5.005000e-01
  %i.l = fcmp ogt float %i.i, %i.k
  br i1 %i.l, label %.split.us.1, label %.preheader.split74.us.preheader

.split.us.1:                                      ; preds = %.split.us.preheader
  %i.m = load <2 x float>, ptr %i.b, align 4, !tbaa !23
  %i.n = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.o = fsub <2 x float> %i.m, %i.n              ; 2 uses
  %i.p = load float, ptr %i.g, align 4, !tbaa !23
  %i.q = load float, ptr %i.h, align 4, !tbaa !23
  %i.r = fsub float %i.p, %i.q                    ; 2 uses
  store <2 x float> %i.o, ptr %i.b, align 4, !tbaa !23
  store float %i.r, ptr %i.g, align 4, !tbaa !23
  %i.s = load float, ptr %i.d, align 4, !tbaa !23
  %i.t = load float, ptr %i.f, align 4, !tbaa !23
  %i.u = fmul float %i.t, 5.005000e-01
  %i.v = fcmp ogt float %i.s, %i.u
  br i1 %i.v, label %.split.us.2, label %.preheader.split74.us.preheader

.split.us.2:                                      ; preds = %.split.us.1
  %i.w = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.x = fsub <2 x float> %i.o, %i.w              ; 2 uses
  %i.y = load float, ptr %i.h, align 4, !tbaa !23
  %i.z = fsub float %i.r, %i.y                    ; 2 uses
  store <2 x float> %i.x, ptr %i.b, align 4, !tbaa !23
  store float %i.z, ptr %i.g, align 4, !tbaa !23
  %i.aa = load float, ptr %i.d, align 4, !tbaa !23
  %i.ab = load float, ptr %i.f, align 4, !tbaa !23
  %i.ac = fmul float %i.ab, 5.005000e-01
  %i.ad = fcmp ogt float %i.aa, %i.ac
  br i1 %i.ad, label %.split.us.3, label %.preheader.split74.us.preheader

.split.us.3:                                      ; preds = %.split.us.2
  %i.ae = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.af = fsub <2 x float> %i.x, %i.ae            ; 2 uses
  %i.ag = load float, ptr %i.h, align 4, !tbaa !23
  %i.ah = fsub float %i.z, %i.ag                  ; 2 uses
  store <2 x float> %i.af, ptr %i.b, align 4, !tbaa !23
  store float %i.ah, ptr %i.g, align 4, !tbaa !23
  %i.ai = load float, ptr %i.d, align 4, !tbaa !23
  %i.aj = load float, ptr %i.f, align 4, !tbaa !23
  %i.ak = fmul float %i.aj, 5.005000e-01
  %i.al = fcmp ogt float %i.ai, %i.ak
  br i1 %i.al, label %.split.us.4, label %.preheader.split74.us.preheader

.split.us.4:                                      ; preds = %.split.us.3
  %i.am = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.an = fsub <2 x float> %i.af, %i.am           ; 2 uses
  %i.ao = load float, ptr %i.h, align 4, !tbaa !23
  %i.ap = fsub float %i.ah, %i.ao                 ; 2 uses
  store <2 x float> %i.an, ptr %i.b, align 4, !tbaa !23
  store float %i.ap, ptr %i.g, align 4, !tbaa !23
  %i.aq = load float, ptr %i.d, align 4, !tbaa !23
  %i.ar = load float, ptr %i.f, align 4, !tbaa !23
  %i.as = fmul float %i.ar, 5.005000e-01
  %i.at = fcmp ogt float %i.aq, %i.as
  br i1 %i.at, label %.split.us.5, label %.preheader.split74.us.preheader

.split.us.5:                                      ; preds = %.split.us.4
  %i.au = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.av = fsub <2 x float> %i.an, %i.au           ; 2 uses
  %i.aw = load float, ptr %i.h, align 4, !tbaa !23
  %i.ax = fsub float %i.ap, %i.aw                 ; 2 uses
  store <2 x float> %i.av, ptr %i.b, align 4, !tbaa !23
  store float %i.ax, ptr %i.g, align 4, !tbaa !23
  %i.ay = load float, ptr %i.d, align 4, !tbaa !23
  %i.az = load float, ptr %i.f, align 4, !tbaa !23
  %i.ba = fmul float %i.az, 5.005000e-01
  %i.bb = fcmp ogt float %i.ay, %i.ba
  br i1 %i.bb, label %.split.us.6, label %.preheader.split74.us.preheader

.split.us.6:                                      ; preds = %.split.us.5
  %i.bc = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.bd = fsub <2 x float> %i.av, %i.bc           ; 2 uses
  %i.be = load float, ptr %i.h, align 4, !tbaa !23
  %i.bf = fsub float %i.ax, %i.be                 ; 2 uses
  store <2 x float> %i.bd, ptr %i.b, align 4, !tbaa !23
  store float %i.bf, ptr %i.g, align 4, !tbaa !23
  %i.bg = load float, ptr %i.d, align 4, !tbaa !23
  %i.bh = load float, ptr %i.f, align 4, !tbaa !23
  %i.bi = fmul float %i.bh, 5.005000e-01
  %i.bj = fcmp ogt float %i.bg, %i.bi
  br i1 %i.bj, label %.split.us.7, label %.preheader.split74.us.preheader

.split.us.7:                                      ; preds = %.split.us.6
  %i.bk = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.bl = fsub <2 x float> %i.bd, %i.bk           ; 2 uses
  %i.bm = load float, ptr %i.h, align 4, !tbaa !23
  %i.bn = fsub float %i.bf, %i.bm                 ; 2 uses
  store <2 x float> %i.bl, ptr %i.b, align 4, !tbaa !23
  store float %i.bn, ptr %i.g, align 4, !tbaa !23
  %i.bo = load float, ptr %i.d, align 4, !tbaa !23
  %i.bp = load float, ptr %i.f, align 4, !tbaa !23
  %i.bq = fmul float %i.bp, 5.005000e-01
  %i.br = fcmp ogt float %i.bo, %i.bq
  br i1 %i.br, label %.split.us.8, label %.preheader.split74.us.preheader

.split.us.8:                                      ; preds = %.split.us.7
  %i.bs = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.bt = fsub <2 x float> %i.bl, %i.bs           ; 2 uses
  %i.bu = load float, ptr %i.h, align 4, !tbaa !23
  %i.bv = fsub float %i.bn, %i.bu                 ; 2 uses
  store <2 x float> %i.bt, ptr %i.b, align 4, !tbaa !23
  store float %i.bv, ptr %i.g, align 4, !tbaa !23
  %i.bw = load float, ptr %i.d, align 4, !tbaa !23
  %i.bx = load float, ptr %i.f, align 4, !tbaa !23
  %i.by = fmul float %i.bx, 5.005000e-01
  %i.bz = fcmp ogt float %i.bw, %i.by
  br i1 %i.bz, label %.split.us.9, label %.preheader.split74.us.preheader

.split.us.9:                                      ; preds = %.split.us.8
  %i.ca = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.cb = fsub <2 x float> %i.bt, %i.ca           ; 2 uses
  %i.cc = load float, ptr %i.h, align 4, !tbaa !23
  %i.cd = fsub float %i.bv, %i.cc                 ; 2 uses
  store <2 x float> %i.cb, ptr %i.b, align 4, !tbaa !23
  store float %i.cd, ptr %i.g, align 4, !tbaa !23
  %i.ce = load float, ptr %i.d, align 4, !tbaa !23
  %i.cf = load float, ptr %i.f, align 4, !tbaa !23
  %i.cg = fmul float %i.cf, 5.005000e-01
  %i.ch = fcmp ogt float %i.ce, %i.cg
  br i1 %i.ch, label %.split73.us.loopexit, label %.preheader.split74.us.preheader

.preheader.split74.us.preheader:                  ; preds = %.split.us.preheader, %.split.us.1, %.split.us.2, %.split.us.3, %.split.us.4, %.split.us.5, %.split.us.6, %.split.us.7, %.split.us.8, %.split.us.9
  %.1.us.ph = phi i32 [ -9, %.split.us.9 ], [ 0, %.split.us.preheader ], [ -1, %.split.us.1 ], [ -2, %.split.us.2 ], [ -3, %.split.us.3 ], [ -4, %.split.us.4 ], [ -5, %.split.us.5 ], [ -6, %.split.us.6 ], [ -7, %.split.us.7 ], [ -8, %.split.us.8 ]
  br label %.preheader.split74.us

.split73.us.loopexit:                             ; preds = %.split.us.9
  %i.ci = load float, ptr %i.h, align 4, !tbaa !23
  %i.cj = fsub float %i.cd, %i.ci
  %i.ck = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.cl = fsub <2 x float> %i.cb, %i.ck
  store <2 x float> %i.cl, ptr %i.b, align 4, !tbaa !23
  store float %i.cj, ptr %i.g, align 4, !tbaa !23
  br label %.split73.us

.split:                                           ; preds = %bb.a, %bb.c
  %.047 = phi i32 [ %i.di, %bb.c ], [ 0, %bb.a ]  ; 3 uses
  %i.cm = load float, ptr %i.d, align 4, !tbaa !23
  %i.cn = load float, ptr %i.f, align 4, !tbaa !23
  %i.co = fmul float %i.cn, 5.005000e-01
  %i.cp = fcmp ogt float %i.cm, %i.co
  br i1 %i.cp, label %bb.c, label %.preheader.split74

.preheader.split74.us:                            ; preds = %.preheader.split74.us.preheader, %bb.b
  %.1.us = phi i32 [ %i.da, %bb.b ], [ %.1.us.ph, %.preheader.split74.us.preheader ] ; 2 uses
  %i.cq = load float, ptr %i.d, align 4, !tbaa !23
  %i.cr = load float, ptr %i.f, align 4, !tbaa !23
  %i.cs = fmul float %i.cr, -5.005000e-01
  %i.ct = fcmp olt float %i.cq, %i.cs
  br i1 %i.ct, label %bb.b, label %.split76.us

bb.b:                                             ; preds = %.preheader.split74.us
  %i.cu = load float, ptr %i.g, align 4, !tbaa !23
  %i.cv = load float, ptr %i.h, align 4, !tbaa !23
  %i.cw = fadd float %i.cu, %i.cv
  %i.cx = load <2 x float>, ptr %i.b, align 4, !tbaa !23
  %i.cy = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.cz = fadd <2 x float> %i.cx, %i.cy
  store <2 x float> %i.cz, ptr %i.b, align 4, !tbaa !23
  store float %i.cw, ptr %i.g, align 4, !tbaa !23
  %i.da = add nsw i32 %.1.us, 1                   ; 2 uses
  %exitcond88 = icmp eq i32 %i.da, 10
  br i1 %exitcond88, label %.split79.us, label %.preheader.split74.us, !llvm.loop !69

bb.c:                                             ; preds = %.split
  %i.db = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i64 noundef %1) #20 ; 0 uses
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 3)
  %i.dc = load float, ptr %i.g, align 4, !tbaa !23
  %i.dd = load float, ptr %i.h, align 4, !tbaa !23
  %i.de = fsub float %i.dc, %i.dd
  %i.df = load <2 x float>, ptr %i.b, align 4, !tbaa !23
  %i.dg = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.dh = fsub <2 x float> %i.df, %i.dg
  store <2 x float> %i.dh, ptr %i.b, align 4, !tbaa !23
  store float %i.de, ptr %i.g, align 4, !tbaa !23
  %i.di = add nsw i32 %.047, -1
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull %2, i32 noundef 3)
  %i.dj = icmp slt i32 %.047, -8
  br i1 %i.dj, label %.split73.us, label %.split, !llvm.loop !70

.split73.us:                                      ; preds = %bb.c, %.split73.us.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 307, ptr noundef nonnull @.str.32, i32 noundef 10) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split73.us
  unreachable

bb.e:                                             ; preds = %.split73.us
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.i

.preheader.split74:                               ; preds = %.split, %bb.f
  %.1 = phi i32 [ %i.dw, %bb.f ], [ %.047, %.split ] ; 2 uses
  %i.dl = load float, ptr %i.d, align 4, !tbaa !23
  %i.dm = load float, ptr %i.f, align 4, !tbaa !23
  %i.dn = fmul float %i.dm, -5.005000e-01
  %i.do = fcmp olt float %i.dl, %i.dn
  br i1 %i.do, label %bb.f, label %.split76.us

bb.f:                                             ; preds = %.preheader.split74
  %i.dp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i64 noundef %1) #20 ; 0 uses
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 3)
  %i.dq = load float, ptr %i.g, align 4, !tbaa !23
  %i.dr = load float, ptr %i.h, align 4, !tbaa !23
  %i.ds = fadd float %i.dq, %i.dr
  %i.dt = load <2 x float>, ptr %i.b, align 4, !tbaa !23
  %i.du = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.dv = fadd <2 x float> %i.dt, %i.du
  store <2 x float> %i.dv, ptr %i.b, align 4, !tbaa !23
  store float %i.ds, ptr %i.g, align 4, !tbaa !23
  %i.dw = add nsw i32 %.1, 1                      ; 2 uses
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull %2, i32 noundef 3)
  %exitcond = icmp eq i32 %i.dw, 10
  br i1 %exitcond, label %.split79.us, label %.preheader.split74, !llvm.loop !69

.split79.us:                                      ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 325, ptr noundef nonnull @.str.32, i32 noundef 10) #29
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.split79.us
  unreachable

bb.h:                                             ; preds = %.split79.us
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.i

.split76.us:                                      ; preds = %.preheader.split74, %.preheader.split74.us
  %.us-phi77 = phi i32 [ %.1.us, %.preheader.split74.us ], [ %.1, %.preheader.split74 ]
  ret i32 %.us-phi77

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.e ], [ %i.dx, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(60) %1, i8 noundef zeroext %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(60) %1) #20 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.b, ptr %i.a, align 8, !tbaa !14
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
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
  %i.i = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !18
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !17
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr nofree noundef captures(none) initializes((0, 4)) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_Z12guessPbcTypePA3_Kf(ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]
  tail call fastcc void @_ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf(ptr noundef %0, i32 noundef %.0, ptr noundef null, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf(ptr nofree noundef captures(none) initializes((0, 4)) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  store i32 %1, ptr %0, align 4, !tbaa !31
  switch i32 %1, label %bb.c [
    i32 4, label %bb.b
    i32 0, label %_Z16numPbcDimensions7PbcType.exit
    i32 2, label %_Z16numPbcDimensions7PbcType.exit.thread242
    i32 3, label %_Z16numPbcDimensions7PbcType.exit
    i32 1, label %_Z16numPbcDimensions7PbcType.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ16numPbcDimensions7PbcTypeENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 115) #29
  unreachable

_Z16numPbcDimensions7PbcType.exit.thread242:      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %i.d, align 4, !tbaa !76
  br label %bb.d

_Z16numPbcDimensions7PbcType.exit.thread:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !76
  br label %.loopexit251.sink.split

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ16numPbcDimensions7PbcTypeENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 121) #29
  unreachable

_Z16numPbcDimensions7PbcType.exit:                ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %i.f, align 4, !tbaa !76
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %.loopexit251.sink.split, label %bb.d

bb.d:                                             ; preds = %_Z16numPbcDimensions7PbcType.exit.thread242, %_Z16numPbcDimensions7PbcType.exit
  %i.h = add i64 %i.b, 36
  %i.i = add i64 %i.a, 12
  %i.j = add i64 %i.a, 96
  %rt.bound0 = icmp ult i64 %i.i, %i.h
  %rt.bound1 = icmp ugt i64 %i.j, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !77

bb.e:                                             ; preds = %.rtcont
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.33, ptr noundef nonnull %.rtmerge476) #32 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !27
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %i.m, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull %3, i32 noundef 3)
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite234 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 27, i64 1, ptr %i.n) #33 ; 0 uses
  br label %.loopexit251.sink.split

bb.f:                                             ; preds = %.rtcont
  %i.o = icmp eq i32 %1, 3                        ; 2 uses
  %i.p = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %bb.g, label %.preheader258

.preheader258:                                    ; preds = %bb.f
  %i.q = icmp eq i32 %1, 2                        ; 3 uses
  br i1 %i.p, label %.preheader258.split.us.preheader, label %.preheader258.split

.preheader258.split.us.preheader:                 ; preds = %.preheader258
  %i.r = load i32, ptr %2, align 4, !tbaa !32
  %i.s = icmp ne i32 %i.r, 0                      ; 4 uses
  %spec.select = zext i1 %i.s to i32              ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = icmp eq i32 %i.u, 0                      ; 9 uses
  %i.w = select i1 %i.s, i32 2, i32 1
  %.1207.us.1 = select i1 %i.v, i32 %spec.select, i32 %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = icmp eq i32 %i.y, 0
  %or.cond285.2 = or i1 %i.z, %i.q                ; 7 uses
  %not.or.cond285.2 = xor i1 %or.cond285.2, true
  %i.aa = zext i1 %not.or.cond285.2 to i32
  %spec.select459 = add nuw nsw i32 %.1207.us.1, %i.aa ; 2 uses
  switch i32 %spec.select459, label %bb.au [
    i32 1, label %bb.o
    i32 2, label %.split.us.thread
    i32 3, label %.split.us.thread389
  ]

.preheader258.split:                              ; preds = %.preheader258
  br i1 %i.q, label %.thread413, label %.split.us.thread389

.thread413:                                       ; preds = %.preheader258.split
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 3, ptr %i.ab, align 4, !tbaa !22
  br label %.loopexit255.thread437

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 388) #29
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.ad, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.af = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ca

bb.o:                                             ; preds = %.preheader258.split.us.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  store i32 5, ptr %i.ak, align 4, !tbaa !22
  %i.al = xor i1 %i.v, true
  %i.am = or i1 %i.s, %i.al
  br i1 %i.am, label %bb.p, label %bb.q

.lr.ph274:                                        ; preds = %.preheader252.thread, %.preheader252
  %i.an = phi i32 [ 2, %.preheader252.thread ], [ %.pre, %.preheader252 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = zext nneg i32 %i.an to i64              ; 3 uses
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %i.ap ; 9 uses
  %xtraiter = and i64 %i.ap, 7                    ; 3 uses
  %i.ar = icmp samesign ult i32 %i.an, 8
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph274.new

.lr.ph274.new:                                    ; preds = %.lr.ph274
  %unroll_iter = and i64 %i.ap, 2147483640
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %not. = xor i1 %i.v, true
  %spec.select456 = zext i1 %not. to i32
  store i32 %spec.select456, ptr %.rtmerge469, align 4, !tbaa !33
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  br i1 %or.cond285.2, label %.preheader252, label %.preheader252.thread

.preheader252.thread:                             ; preds = %bb.q
  store i32 2, ptr %.rtmerge469, align 4, !tbaa !33
  br label %.lr.ph274

.preheader252:                                    ; preds = %bb.q
  %.pre = load i32, ptr %.rtmerge469, align 4, !tbaa !33 ; 2 uses
  %i.as = icmp sgt i32 %.pre, 0
  br i1 %i.as, label %.lr.ph274, label %.loopexit253

bb.r:                                             ; preds = %bb.ah, %.lr.ph274.new
  %i.at = phi i32 [ 5, %.lr.ph274.new ], [ %i.cg, %bb.ah ]
  %indvars.iv = phi i64 [ 0, %.lr.ph274.new ], [ %indvars.iv.next.7, %bb.ah ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph274.new ], [ %niter.next.7, %bb.ah ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !23
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ax = phi i32 [ %i.at, %bb.r ], [ 6, %bb.s ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !23
  %i.bb = fcmp une float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bc = phi i32 [ %i.ax, %bb.t ], [ 6, %bb.u ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !23
  %i.bg = fcmp une float %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bh = phi i32 [ %i.bc, %bb.v ], [ 6, %bb.w ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !23
  %i.bl = fcmp une float %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bm = phi i32 [ %i.bh, %bb.x ], [ 6, %bb.y ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !23
  %i.bq = fcmp une float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.br = phi i32 [ %i.bm, %bb.z ], [ 6, %bb.aa ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !23
  %i.bv = fcmp une float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bw = phi i32 [ %i.br, %bb.ab ], [ 6, %bb.ac ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load float, ptr %i.by, align 4, !tbaa !23
  %i.ca = fcmp une float %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cb = phi i32 [ %i.bw, %bb.ad ], [ 6, %bb.ae ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !23
  %i.cf = fcmp une float %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cg = phi i32 [ %i.cb, %bb.af ], [ 6, %bb.ag ] ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit253.loopexit.unr-lcssa, label %bb.r, !llvm.loop !71

.split.us.thread:                                 ; preds = %.preheader258.split.us.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 3, ptr %i.ch, align 4, !tbaa !22
  br i1 %i.s, label %bb.ai, label %.split

.split:                                           ; preds = %.split.us.thread
  store i32 0, ptr %.rtmerge469, align 4, !tbaa !33
  br i1 %i.v, label %.split423, label %bb.aj

bb.ai:                                            ; preds = %.split.us.thread
  br i1 %i.v, label %.split423, label %bb.aj

.split423:                                        ; preds = %.split, %bb.ai
  %.sroa.0356.1388401412 = phi i32 [ 0, %.split ], [ 1, %bb.ai ] ; 2 uses
  store i32 1, ptr %.rtmerge469, align 4, !tbaa !33
  br i1 %or.cond285.2, label %.loopexit255.1.thread, label %.lr.ph.2

bb.aj:                                            ; preds = %.split, %bb.ai
  %.sroa.0356.1388401409 = phi i32 [ 0, %.split ], [ 1, %bb.ai ] ; 2 uses
  br i1 %or.cond285.2, label %.loopexit255.thread437, label %.lr.ph.1

.loopexit255.thread437:                           ; preds = %.thread413, %bb.aj
  %.ph = phi ptr [ %i.ch, %bb.aj ], [ %i.ab, %.thread413 ]
  %.sroa.0356.1388401409418.ph = phi i32 [ %.sroa.0356.1388401409, %bb.aj ], [ 1, %.thread413 ]
  store i32 2, ptr %.rtmerge469, align 4, !tbaa !33
  br label %.lr.ph.1

.loopexit255.1.thread:                            ; preds = %.split423
  store i32 2, ptr %.rtmerge469, align 4, !tbaa !33
  br label %.loopexit253

.lr.ph.1:                                         ; preds = %bb.aj, %.loopexit255.thread437
  %.sroa.0356.1388401409417436 = phi i32 [ %.sroa.0356.1388401409418.ph, %.loopexit255.thread437 ], [ %.sroa.0356.1388401409, %bb.aj ] ; 4 uses
  %.sroa.20.0383403407421434 = phi i1 [ true, %.loopexit255.thread437 ], [ false, %bb.aj ] ; 2 uses
  %i.ci = phi ptr [ %.ph, %.loopexit255.thread437 ], [ %i.ch, %bb.aj ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !23
  %i.cl = fcmp une float %i.ck, 0.000000e+00
  br i1 %i.cl, label %.split454, label %.loopexit255.1

.split454:                                        ; preds = %.lr.ph.1
  store i32 4, ptr %i.ci, align 4, !tbaa !22
  br i1 %.sroa.20.0383403407421434, label %.loopexit253, label %.lr.ph.2

.loopexit255.1:                                   ; preds = %.lr.ph.1
  br i1 %.sroa.20.0383403407421434, label %.loopexit253, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.split423, %.split454, %.loopexit255.1
  %i.cm = phi i32 [ 4, %.split454 ], [ 3, %.loopexit255.1 ], [ 3, %.split423 ]
  %i.cn = phi ptr [ %i.ci, %.split454 ], [ %i.ci, %.loopexit255.1 ], [ %i.ch, %.split423 ] ; 2 uses
  %.sroa.11.0385402408419428452 = phi i1 [ false, %.split454 ], [ false, %.loopexit255.1 ], [ true, %.split423 ] ; 2 uses
  %.sroa.0356.1388401409417429451 = phi i32 [ %.sroa.0356.1388401409417436, %.split454 ], [ %.sroa.0356.1388401409417436, %.loopexit255.1 ], [ %.sroa.0356.1388401412, %.split423 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = load float, ptr %i.co, align 4, !tbaa !23
  %i.cq = fcmp une float %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.2
  store i32 4, ptr %i.cn, align 4, !tbaa !22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.2
  %i.cr = phi i32 [ 4, %bb.ak ], [ %i.cm, %.lr.ph.2 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !23
  %i.cu = fcmp une float %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.am, label %.loopexit253

bb.am:                                            ; preds = %bb.al
  store i32 4, ptr %i.cn, align 4, !tbaa !22
  br label %.loopexit253

.split.us.thread389:                              ; preds = %.preheader258.split, %.preheader258.split.us.preheader
  %.sroa.0356.1396 = phi i32 [ %spec.select, %.preheader258.split.us.preheader ], [ 1, %.preheader258.split ] ; 4 uses
  %.sroa.11.0395 = phi i1 [ %i.v, %.preheader258.split.us.preheader ], [ false, %.preheader258.split ] ; 4 uses
  %.sroa.20.0394 = phi i1 [ %or.cond285.2, %.preheader258.split.us.preheader ], [ false, %.preheader258.split ] ; 4 uses
  br i1 %i.o, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.split.us.thread389
  %i.cv = load float, ptr %.rtmerge462, align 4, !tbaa !23
  %i.cw = fcmp une float %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cx = load float, ptr %.rtmerge465, align 4, !tbaa !23
  %i.cy = fcmp une float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cz = load float, ptr %.rtmerge466, align 4, !tbaa !23
  %i.da = fcmp une float %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.db, align 4, !tbaa !22
  br label %.loopexit253

bb.ar:                                            ; preds = %bb.ap
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.dc, align 4, !tbaa !22
  br label %.loopexit253

bb.as:                                            ; preds = %.split.us.thread389
  %i.dd = load float, ptr %.rtmerge466, align 4, !tbaa !23
  %i.de = fcmp une float %i.dd, 0.000000e+00      ; 2 uses
  %i.df = select i1 %i.de, i32 8, i32 7
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !22
  br i1 %i.de, label %bb.at, label %.loopexit253

bb.at:                                            ; preds = %bb.as
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.38, i64 71, i64 1, ptr %i.dh) #33 ; 0 uses
  store i32 10, ptr %i.dg, align 4, !tbaa !22
  br label %.loopexit253

bb.au:                                            ; preds = %.preheader258.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 474, ptr noundef nonnull @.str.39, i32 noundef %spec.select459) #29
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ca

.loopexit253.loopexit.unr-lcssa:                  ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit253, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit253.loopexit.unr-lcssa, %.lr.ph274
  %.epil.init = phi i32 [ 5, %.lr.ph274 ], [ %i.cg, %.loopexit253.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next.7, %.loopexit253.loopexit.unr-lcssa ]
  %lcmp.mod478 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod478)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %.epil.preheader
  %i.dj = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.dn, %bb.az ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.az ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.epil
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !23
  %i.dm = fcmp une float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dn = phi i32 [ %i.dj, %bb.ax ], [ 6, %bb.ay ] ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit253, label %bb.ax, !llvm.loop !72

.loopexit253:                                     ; preds = %.loopexit253.loopexit.unr-lcssa, %bb.az, %.loopexit255.1, %.loopexit255.1.thread, %.split454, %bb.am, %bb.al, %.preheader252, %bb.ar, %bb.aq, %bb.at, %bb.as
  %.sroa.0356.1387 = phi i32 [ %.sroa.0356.1396, %bb.as ], [ %.sroa.0356.1388401409417429451, %bb.al ], [ %spec.select, %.preheader252 ], [ %.sroa.0356.1396, %bb.ar ], [ %.sroa.0356.1396, %bb.aq ], [ %.sroa.0356.1396, %bb.at ], [ %.sroa.0356.1388401409417436, %.split454 ], [ %.sroa.0356.1388401409417436, %.loopexit255.1 ], [ %.sroa.0356.1388401412, %.loopexit255.1.thread ], [ %.sroa.0356.1388401409417429451, %bb.am ], [ %spec.select, %bb.az ], [ %spec.select, %.loopexit253.loopexit.unr-lcssa ]
  %.sroa.11.0386 = phi i1 [ %.sroa.11.0395, %bb.as ], [ %.sroa.11.0385402408419428452, %bb.al ], [ %i.v, %.preheader252 ], [ %.sroa.11.0395, %bb.ar ], [ %.sroa.11.0395, %bb.aq ], [ %.sroa.11.0395, %bb.at ], [ false, %.split454 ], [ false, %.loopexit255.1 ], [ true, %.loopexit255.1.thread ], [ %.sroa.11.0385402408419428452, %bb.am ], [ %i.v, %bb.az ], [ %i.v, %.loopexit253.loopexit.unr-lcssa ]
  %.sroa.20.0384 = phi i1 [ %.sroa.20.0394, %bb.as ], [ false, %bb.al ], [ true, %.preheader252 ], [ %.sroa.20.0394, %bb.ar ], [ %.sroa.20.0394, %bb.aq ], [ %.sroa.20.0394, %bb.at ], [ true, %.split454 ], [ true, %.loopexit255.1 ], [ true, %.loopexit255.1.thread ], [ false, %bb.am ], [ %or.cond285.2, %bb.az ], [ %or.cond285.2, %.loopexit253.loopexit.unr-lcssa ]
  %i.do = phi i32 [ 7, %bb.as ], [ %i.cr, %bb.al ], [ 5, %.preheader252 ], [ 1, %bb.ar ], [ 2, %bb.aq ], [ 10, %bb.at ], [ 4, %.split454 ], [ 3, %.loopexit255.1 ], [ 3, %.loopexit255.1.thread ], [ 4, %bb.am ], [ %i.cg, %.loopexit253.loopexit.unr-lcssa ], [ %i.dn, %bb.az ]
  %i.dp = load float, ptr %3, align 4, !tbaa !23  ; 5 uses
  %i.dq = load float, ptr %.rtmerge460, align 4, !tbaa !23 ; 2 uses
  %i.dr = fmul float %i.dq, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dr)
  %i.dt = load float, ptr %.rtmerge461, align 4, !tbaa !23 ; 2 uses
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.ds) ; 2 uses
  %i.dv = load float, ptr %.rtmerge462, align 4, !tbaa !23 ; 2 uses
  %i.dw = load float, ptr %.rtmerge463, align 4, !tbaa !23 ; 5 uses
  %i.dx = fmul float %i.dw, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.dx)
  %i.dz = load float, ptr %.rtmerge464, align 4, !tbaa !23 ; 2 uses
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.dy) ; 2 uses
  %i.eb = fcmp olt float %i.ea, %i.du
  %.sroa.speculated23.i = select i1 %i.eb, float %i.ea, float %i.du
  %i.ec = fmul float %.sroa.speculated23.i, 2.500000e-01 ; 3 uses
  br i1 %i.q, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.loopexit253
  %i.ed = load float, ptr %.rtmerge465, align 4, !tbaa !23 ; 2 uses
  %i.ee = load float, ptr %.rtmerge466, align 4, !tbaa !23 ; 3 uses
  %i.ef = fmul float %i.ee, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ed, float %i.ef)
  %i.eh = load float, ptr %.rtmerge467, align 4, !tbaa !23 ; 4 uses
  %i.ei = tail call noundef float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.eg)
  %i.ej = fmul float %i.ei, 2.500000e-01          ; 2 uses
  %i.ek = fcmp olt float %i.ej, %i.ec
  %.sroa.speculated19.i = select i1 %i.ek, float %i.ej, float %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.el = tail call noundef float @llvm.fabs.f32(float %i.ee)
  %i.em = fsub float %i.dw, %i.el                 ; 3 uses
  store float %i.em, ptr %i.c, align 4, !tbaa !23
  %i.en = fcmp olt float %i.eh, %i.em             ; 2 uses
  %..i13.i = select i1 %i.en, ptr %.rtmerge467, ptr %i.c
  %i.eo = select i1 %i.en, float %i.eh, float %i.em
  %i.ep = fcmp olt float %i.eo, %i.dp
  %..i14.i = select i1 %i.ep, ptr %..i13.i, ptr %3
  %i.eq = load float, ptr %..i14.i, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_Z11max_cutoff27PbcTypePA3_Kf.exit

bb.bb:                                            ; preds = %.loopexit253
  %i.er = fcmp olt float %i.dw, %i.dp
  %i.es = select i1 %i.er, float %i.dw, float %i.dp
  br label %_Z11max_cutoff27PbcTypePA3_Kf.exit

_Z11max_cutoff27PbcTypePA3_Kf.exit:               ; preds = %bb.ba, %bb.bb
  %.028.i = phi float [ %i.ec, %bb.bb ], [ %.sroa.speculated19.i, %bb.ba ] ; 2 uses
  %.0.i236 = phi float [ %i.es, %bb.bb ], [ %i.eq, %bb.ba ] ; 2 uses
  %i.et = fmul float %.0.i236, %.0.i236           ; 2 uses
  %i.eu = fcmp olt float %i.et, %.028.i
  %.sroa.speculated.i = select i1 %i.eu, float %i.et, float %.028.i
  store float %.sroa.speculated.i, ptr %.rtmerge468, align 4, !tbaa !24
  switch i32 %i.do, label %.loopexit251 [
    i32 2, label %bb.bc
    i32 4, label %bb.bc
    i32 8, label %bb.bc
  ]

bb.bc:                                            ; preds = %_Z11max_cutoff27PbcTypePA3_Kf.exit, %_Z11max_cutoff27PbcTypePA3_Kf.exit, %_Z11max_cutoff27PbcTypePA3_Kf.exit
  %i.ev = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %.not227 = icmp eq ptr %i.ev, null
  br i1 %.not227, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef nonnull %i.ev, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull %3, i32 noundef 3)
  %i.ew = load ptr, ptr @debug, align 8, !tbaa !27
  %i.ex = load float, ptr %.rtmerge468, align 4, !tbaa !24
  %i.ey = tail call noundef float @sqrtf(float noundef %i.ex) #20
  %i.ez = fpext float %i.ey to double
  %i.fa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ew, ptr noundef nonnull @.str.41, double noundef %i.ez) #20 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fb = icmp ne i32 %.sroa.0356.1387, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.loopexit250
  %indvars.iv327 = phi i64 [ 0, %bb.be ], [ %indvars.iv.next328, %.loopexit250 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf.order, i64 %indvars.iv327
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !32 ; 3 uses
  %i.fi = trunc i64 %indvars.iv327 to i32
  %i.fj = add i32 %i.fi, -1
  %i.fk = icmp ult i32 %i.fj, 2                   ; 2 uses
  %or.cond5 = and i1 %.sroa.20.0384, %i.fk
  br i1 %or.cond5, label %.loopexit250, label %.preheader249

.preheader249:                                    ; preds = %bb.bf
  %i.fl = sitofp i32 %i.fh to float               ; 4 uses
  %.not229.2 = icmp eq i64 %indvars.iv327, 0
  %i.fm = fneg float %i.fl                        ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.preheader249, %.loopexit
  %indvars.iv323 = phi i64 [ 0, %.preheader249 ], [ %indvars.iv.next324, %.loopexit ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf.order, i64 %indvars.iv323
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !32 ; 3 uses
  %i.fp = trunc i64 %indvars.iv323 to i32
  %i.fq = add i32 %i.fp, -1
  %i.fr = icmp ult i32 %i.fq, 2                   ; 2 uses
  %or.cond7 = and i1 %.sroa.11.0386, %i.fr
  br i1 %or.cond7, label %.loopexit, label %.preheader248

.preheader248:                                    ; preds = %bb.bg
  %or.cond11 = or i1 %i.fr, %i.fk
  %i.fs = sitofp i32 %i.fo to float               ; 4 uses
  %or.cond11.fr = freeze i1 %or.cond11
  br i1 %or.cond11.fr, label %.preheader248.split.preheader, label %.loopexit

.preheader248.split.preheader:                    ; preds = %.preheader248
  %.not229.1 = icmp eq i64 %indvars.iv323, 0
  %i.ft = fneg float %i.fs                        ; 3 uses
  br label %.preheader248.split

.preheader248.split:                              ; preds = %.preheader248.split.preheader, %bb.bz
  %indvars.iv319 = phi i64 [ 0, %.preheader248.split.preheader ], [ %indvars.iv.next320, %bb.bz ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf.order, i64 %indvars.iv319
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !32 ; 3 uses
  %i.fw = icmp eq i64 %indvars.iv319, 0
  %or.cond9.not246 = or i1 %i.fb, %i.fw
  br i1 %or.cond9.not246, label %bb.bh, label %bb.bz

bb.bh:                                            ; preds = %.preheader248.split
  %i.fx = sitofp i32 %i.fv to float               ; 4 uses
  %i.fy = load i32, ptr %.rtmerge469, align 4, !tbaa !33 ; 3 uses
  %i.fz = load float, ptr %3, align 4, !tbaa !23  ; 2 uses
  %i.ga = load float, ptr %.rtmerge462, align 4, !tbaa !23 ; 2 uses
  %i.gb = fmul float %i.ga, %i.fs
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fz, float %i.gb)
  %i.gd = load float, ptr %.rtmerge465, align 4, !tbaa !23 ; 2 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.gd, float %i.gc) ; 6 uses
  %i.gf = icmp eq i32 %i.fy, 0
  br i1 %i.gf, label %bb.bl, label %bb.bi

.preheader247.preheader:                          ; preds = %bb.bt
  %.not229 = icmp eq i64 %indvars.iv319, 0
  br i1 %.not229, label %.preheader247.1, label %.preheader

bb.bi:                                            ; preds = %bb.bh
  %i.gg = fcmp olt float %i.ge, 0.000000e+00
  br i1 %i.gg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gh = fneg float %i.ge                        ; 2 uses
  %i.gi = load float, ptr %.rtmerge471, align 4, !tbaa !23 ; 2 uses
  %i.gj = fcmp ogt float %i.gi, %i.gh
  %.sroa.speculated239 = select i1 %i.gj, float %i.gh, float %i.gi
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.gk = load float, ptr %.rtmerge471, align 4, !tbaa !23 ; 2 uses
  %i.gl = fcmp ogt float %i.gk, %i.ge
  %.sroa.speculated.v = select i1 %i.gl, float %i.ge, float %i.gk
  %.sroa.speculated = fneg float %.sroa.speculated.v
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bj, %bb.bk
  %.sroa.0343.0 = phi float [ %i.ge, %bb.bk ], [ %i.ge, %bb.bj ], [ 0.000000e+00, %bb.bh ] ; 3 uses
  %.sroa.0.0 = phi float [ %.sroa.speculated, %bb.bk ], [ %.sroa.speculated239, %bb.bj ], [ 0.000000e+00, %bb.bh ] ; 4 uses
  %i.gm = fmul float %.sroa.0.0, %.sroa.0.0
  %i.gn = fadd float %.sroa.0.0, %.sroa.0343.0    ; 5 uses
  %i.go = fmul float %i.gn, %i.gn
  %i.gp = load float, ptr %.rtmerge460, align 4, !tbaa !23 ; 2 uses
  %i.gq = load float, ptr %.rtmerge472, align 4, !tbaa !23 ; 2 uses
  %i.gr = fmul float %i.gq, %i.fs
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.gp, float %i.gr)
  %i.gt = load float, ptr %i.fe, align 4, !tbaa !23 ; 2 uses
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.gt, float %i.gs) ; 6 uses
  %i.gv = icmp eq i32 %i.fy, 1
  br i1 %i.gv, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gw = fcmp olt float %i.gu, 0.000000e+00
  br i1 %i.gw, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gx = load float, ptr %.rtmerge473, align 4, !tbaa !23 ; 2 uses
  %i.gy = fcmp ogt float %i.gx, %i.gu
  %.sroa.speculated.v.1 = select i1 %i.gy, float %i.gu, float %i.gx
  %.sroa.speculated.1 = fneg float %.sroa.speculated.v.1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.gz = fneg float %i.gu                        ; 2 uses
  %i.ha = load float, ptr %.rtmerge473, align 4, !tbaa !23 ; 2 uses
  %i.hb = fcmp ogt float %i.ha, %i.gz
  %.sroa.speculated239.1 = select i1 %i.hb, float %i.gz, float %i.ha
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bl, %bb.bo, %bb.bn
  %.sroa.9.0 = phi float [ %i.gu, %bb.bn ], [ %i.gu, %bb.bo ], [ 0.000000e+00, %bb.bl ] ; 3 uses
  %.sroa.10.0 = phi float [ %.sroa.speculated.1, %bb.bn ], [ %.sroa.speculated239.1, %bb.bo ], [ 0.000000e+00, %bb.bl ] ; 4 uses
  %i.hc = fmul float %.sroa.10.0, %.sroa.10.0
  %i.hd = fadd float %i.gm, %i.hc
  %i.he = fadd float %.sroa.10.0, %.sroa.9.0      ; 5 uses
  %i.hf = fmul float %i.he, %i.he
  %i.hg = fadd float %i.go, %i.hf
  %i.hh = load float, ptr %.rtmerge461, align 4, !tbaa !23 ; 2 uses
  %i.hi = load float, ptr %i.ff, align 4, !tbaa !23 ; 2 uses
  %i.hj = fmul float %i.hi, %i.fs
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.hh, float %i.hj)
  %i.hl = load float, ptr %.rtmerge474, align 4, !tbaa !23 ; 2 uses
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.hl, float %i.hk) ; 6 uses
  %i.hn = icmp eq i32 %i.fy, 2
  br i1 %i.hn, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ho = fcmp olt float %i.hm, 0.000000e+00
  br i1 %i.ho, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hp = load float, ptr %.rtmerge475, align 4, !tbaa !23 ; 2 uses
  %i.hq = fcmp ogt float %i.hp, %i.hm
  %.sroa.speculated.v.2 = select i1 %i.hq, float %i.hm, float %i.hp
  %.sroa.speculated.2 = fneg float %.sroa.speculated.v.2
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.hr = fneg float %i.hm                        ; 2 uses
  %i.hs = load float, ptr %.rtmerge475, align 4, !tbaa !23 ; 2 uses
  %i.ht = fcmp ogt float %i.hs, %i.hr
  %.sroa.speculated239.2 = select i1 %i.ht, float %i.hr, float %i.hs
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bp, %bb.bs, %bb.br
  %.sroa.16.0 = phi float [ %i.hm, %bb.br ], [ %i.hm, %bb.bs ], [ 0.000000e+00, %bb.bp ] ; 3 uses
  %.sroa.18.0 = phi float [ %.sroa.speculated.2, %bb.br ], [ %.sroa.speculated239.2, %bb.bs ], [ 0.000000e+00, %bb.bp ] ; 4 uses
  %i.hu = fmul float %.sroa.18.0, %.sroa.18.0
  %i.hv = fadd float %i.hd, %i.hu                 ; 2 uses
  %i.hw = fadd float %.sroa.18.0, %.sroa.16.0     ; 5 uses
  %i.hx = fmul float %i.hw, %i.hw
  %i.hy = fadd float %i.hg, %i.hx                 ; 2 uses
  %i.hz = fmul float %i.hy, 1.001000e+00          ; 4 uses
  %i.ia = fcmp olt float %i.hz, %i.hv
  br i1 %i.ia, label %.preheader247.preheader, label %bb.bz

.preheader:                                       ; preds = %.preheader247.preheader
  %i.ib = fneg float %i.fx                        ; 3 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.fz, float %i.gn) ; 2 uses
  %i.id = fmul float %i.ic, %i.ic
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.gp, float %i.he) ; 2 uses
  %i.if = fmul float %i.ie, %i.ie
  %i.ig = fadd float %i.id, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.hh, float %i.hw) ; 2 uses
  %i.ii = fmul float %i.ih, %i.ih
  %i.ij = fadd float %i.ig, %i.ii
  %i.ik = fcmp ugt float %i.ij, %i.hz
  br label %.preheader247.1

.preheader247.1:                                  ; preds = %.preheader, %.preheader247.preheader
  %.2 = phi i1 [ %i.ik, %.preheader ], [ true, %.preheader247.preheader ] ; 2 uses
  br i1 %.not229.1, label %.preheader247.2, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader247.1
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ga, float %i.gn) ; 2 uses
  %i.im = fmul float %i.il, %i.il
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.gq, float %i.he) ; 2 uses
  %i.io = fmul float %i.in, %i.in
  %i.ip = fadd float %i.im, %i.io
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.hi, float %i.hw) ; 2 uses
  %i.ir = fmul float %i.iq, %i.iq
  %i.is = fadd float %i.ip, %i.ir
  %i.it = fcmp ugt float %i.is, %i.hz
  %spec.select.1 = select i1 %i.it, i1 %.2, i1 false
  br label %.preheader247.2

.preheader247.2:                                  ; preds = %.preheader.1, %.preheader247.1
  %.2.1 = phi i1 [ %spec.select.1, %.preheader.1 ], [ %.2, %.preheader247.1 ] ; 2 uses
  br i1 %.not229.2, label %bb.bu, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader247.2
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.gd, float %i.gn) ; 2 uses
  %i.iv = fmul float %i.iu, %i.iu
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.gt, float %i.he) ; 2 uses
  %i.ix = fmul float %i.iw, %i.iw
  %i.iy = fadd float %i.iv, %i.ix
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.hl, float %i.hw) ; 2 uses
  %i.ja = fmul float %i.iz, %i.iz
  %i.jb = fadd float %i.iy, %i.ja
  %i.jc = fcmp ugt float %i.jb, %i.hz
  %spec.select.2 = select i1 %i.jc, i1 %.2.1, i1 false
  br i1 %spec.select.2, label %bb.bv, label %bb.bz

bb.bu:                                            ; preds = %.preheader247.2
  br i1 %.2.1, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %.preheader.2, %bb.bu
  %i.jd = load i32, ptr %.rtmerge470, align 4, !tbaa !25 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 11
  br i1 %i.je, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jf = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.jg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jf, ptr noundef nonnull @.str.42, i32 noundef 12) #32 ; 0 uses
  %i.jh = load ptr, ptr @stderr, align 8, !tbaa !27
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %i.jh, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull %3, i32 noundef 3)
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.ji = sext i32 %i.jd to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [12 x i8], ptr %i.fc, i64 %i.ji ; 3 uses
  store float %.sroa.0343.0, ptr %i.jj, align 4, !tbaa !23
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store float %.sroa.9.0, ptr %i.jk, align 4, !tbaa !23
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float %.sroa.16.0, ptr %i.jl, align 4, !tbaa !23
  %i.jm = getelementptr inbounds [12 x i8], ptr %i.fd, i64 %i.ji ; 3 uses
  store i32 %i.fv, ptr %i.jm, align 4, !tbaa !32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store i32 %i.fo, ptr %i.jn, align 4, !tbaa !32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 %i.fh, ptr %i.jo, align 4, !tbaa !32
  %i.jp = load i32, ptr %.rtmerge470, align 4, !tbaa !25
  %i.jq = add nsw i32 %i.jp, 1                    ; 2 uses
  store i32 %i.jq, ptr %.rtmerge470, align 4, !tbaa !25
  %i.jr = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %.not228 = icmp eq ptr %i.jr, null
  br i1 %.not228, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.js = tail call noundef float @sqrtf(float noundef %i.hv) #20
  %i.jt = fpext float %i.js to double
  %i.ju = tail call noundef float @sqrtf(float noundef %i.hy) #20
  %i.jv = fpext float %i.ju to double
  %i.jw = fpext float %.sroa.0343.0 to double
  %i.jx = fpext float %.sroa.9.0 to double
  %i.jy = fpext float %.sroa.16.0 to double
  %i.jz = fpext float %.sroa.0.0 to double
  %i.ka = fpext float %.sroa.10.0 to double
  %i.kb = fpext float %.sroa.18.0 to double
  %i.kc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jr, ptr noundef nonnull @.str.43, i32 noundef %i.jq, i32 noundef %i.fv, i32 noundef %i.fo, i32 noundef %i.fh, double noundef %i.jt, double noundef %i.jv, double noundef %i.jw, double noundef %i.jx, double noundef %i.jy, double noundef %i.jz, double noundef %i.ka, double noundef %i.kb) #20 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bt, %bb.bw, %bb.by, %bb.bx, %bb.bu, %.preheader.2, %.preheader248.split
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next320, 3
  br i1 %exitcond322.not, label %.loopexit, label %.preheader248.split, !llvm.loop !73

.loopexit:                                        ; preds = %bb.bz, %.preheader248, %bb.bg
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next324, 3
  br i1 %exitcond326.not, label %.loopexit250, label %bb.bg, !llvm.loop !74

.loopexit250:                                     ; preds = %.loopexit, %bb.bf
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next328, 3
  br i1 %exitcond330.not, label %.loopexit251, label %bb.bf, !llvm.loop !75

.loopexit251.sink.split:                          ; preds = %_Z16numPbcDimensions7PbcType.exit, %_Z16numPbcDimensions7PbcType.exit.thread, %bb.e
  %.sink = phi i32 [ 10, %bb.e ], [ 9, %_Z16numPbcDimensions7PbcType.exit.thread ], [ 9, %_Z16numPbcDimensions7PbcType.exit ]
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.kd, align 4, !tbaa !22
  br label %.loopexit251

.loopexit251:                                     ; preds = %.loopexit250, %.loopexit251.sink.split, %_Z11max_cutoff27PbcTypePA3_Kf.exit
  ret void

bb.ca:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.di, %bb.aw ]
  resume { ptr, i32 } %.pn.pn.pn

.rtvec:                                           ; preds = %bb.d
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.km = load <8 x float>, ptr %3, align 4, !tbaa !23
  store <8 x float> %i.km, ptr %i.ke, align 4, !tbaa !23
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !23
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ko, ptr %i.kp, align 4, !tbaa !23
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store float 0.000000e+00, ptr %i.kq, align 4, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 -1, ptr %i.kr, align 4, !tbaa !33
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i32 0, ptr %i.ks, align 4, !tbaa !25
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.kw = load float, ptr %3, align 4, !tbaa !23  ; 2 uses
  store float %i.kw, ptr %i.kt, align 4, !tbaa !23
  %i.kx = fmul float %i.kw, 5.000000e-01          ; 2 uses
  store float %i.kx, ptr %i.ku, align 4, !tbaa !23
  %i.ky = fneg float %i.kx
  store float %i.ky, ptr %i.kv, align 4, !tbaa !23
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !23 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.la, ptr %i.lb, align 4, !tbaa !23
  %i.lc = fmul float %i.la, 5.000000e-01          ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store float %i.lc, ptr %i.ld, align 4, !tbaa !23
  %i.le = fneg float %i.lc
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.le, ptr %i.lf, align 4, !tbaa !23
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !23 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.lh, ptr %i.li, align 4, !tbaa !23
  %i.lj = fmul float %i.lh, 5.000000e-01          ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store float %i.lj, ptr %i.lk, align 4, !tbaa !23
  %i.ll = fneg float %i.lj
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %i.ll, ptr %i.lm, align 4, !tbaa !23
  %i.ln = tail call noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef %1, ptr noundef nonnull %3)
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.d
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lp = load float, ptr %3, align 4, !tbaa !23
  store float %i.lp, ptr %i.lo, align 4, !tbaa !23
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !23
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.lr, ptr %i.ls, align 4, !tbaa !23
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !23
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.lu, ptr %i.lv, align 4, !tbaa !23
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ly = load float, ptr %i.lw, align 4, !tbaa !23
  store float %i.ly, ptr %i.lx, align 4, !tbaa !23
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !23
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ma, ptr %i.mb, align 4, !tbaa !23
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !23
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.md, ptr %i.me, align 4, !tbaa !23
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mh = load float, ptr %i.mf, align 4, !tbaa !23
  store float %i.mh, ptr %i.mg, align 4, !tbaa !23
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !23
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.mj, ptr %i.mk, align 4, !tbaa !23
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !23
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.mm, ptr %i.mn, align 4, !tbaa !23
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store float 0.000000e+00, ptr %i.mo, align 4, !tbaa !24
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 -1, ptr %i.mp, align 4, !tbaa !33
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i32 0, ptr %i.mq, align 4, !tbaa !25
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.mu = load float, ptr %3, align 4, !tbaa !23  ; 2 uses
  store float %i.mu, ptr %i.mr, align 4, !tbaa !23
  %i.mv = fmul float %i.mu, 5.000000e-01          ; 2 uses
  store float %i.mv, ptr %i.ms, align 4, !tbaa !23
  %i.mw = fneg float %i.mv
  store float %i.mw, ptr %i.mt, align 4, !tbaa !23
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !23 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.my, ptr %i.mz, align 4, !tbaa !23
  %i.na = fmul float %i.my, 5.000000e-01          ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store float %i.na, ptr %i.nb, align 4, !tbaa !23
  %i.nc = fneg float %i.na
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.nc, ptr %i.nd, align 4, !tbaa !23
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !23 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.nf, ptr %i.ng, align 4, !tbaa !23
  %i.nh = fmul float %i.nf, 5.000000e-01          ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store float %i.nh, ptr %i.ni, align 4, !tbaa !23
  %i.nj = fneg float %i.nh
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %i.nj, ptr %i.nk, align 4, !tbaa !23
  %i.nl = tail call noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef %1, ptr noundef nonnull %3)
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  %.rtmerge460 = phi ptr [ %i.kf, %.rtvec ], [ %i.lq, %.rtscalar ] ; 2 uses
  %.rtmerge461 = phi ptr [ %i.kg, %.rtvec ], [ %i.lt, %.rtscalar ] ; 2 uses
  %.rtmerge462 = phi ptr [ %i.kh, %.rtvec ], [ %i.lw, %.rtscalar ] ; 3 uses
  %.rtmerge463 = phi ptr [ %i.ki, %.rtvec ], [ %i.lz, %.rtscalar ]
  %.rtmerge464 = phi ptr [ %i.kj, %.rtvec ], [ %i.mc, %.rtscalar ]
end_hunk_0
begin_hunk_1_@_Z6pbc_dxPK5t_pbcPKfS3_Pf:bb.a
  %i.mm = fcmp ogt float %.3191.2, %i.ml
  br i1 %i.mm, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.mn = fmul float %i.mh, %i.mh
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.mj, float %i.mj, float %i.mn)
  %i.mp = tail call noundef float @llvm.fmuladd.f32(float %i.mi, float %i.mi, float %i.mo) ; 2 uses
  %i.mq = fcmp ogt float %i.mp, %i.ml
  br i1 %i.mq, label %.lr.ph279, label %.critedge

.lr.ph279:                                        ; preds = %bb.n
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !25 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ms, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not528 = icmp slt i32 %i.ms, 1
  br i1 %exitcond.not528, label %.critedge, label %.lr.ph531.preheader

.lr.ph531.preheader:                              ; preds = %.lr.ph279
  %i.mu = insertelement <2 x float> poison, float %i.mj, i64 0
  %i.mv = insertelement <2 x float> %i.mu, float %i.mh, i64 1
  br label %.lr.ph531

bb.o:                                             ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph531, !llvm.loop !87

.lr.ph531:                                        ; preds = %.lr.ph531.preheader, %bb.o
  %.4192276530 = phi float [ %.5193, %bb.o ], [ %i.mp, %.lr.ph531.preheader ] ; 2 uses
  %indvars.iv529 = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.lr.ph531.preheader ] ; 2 uses
  %i.mw = phi float [ %i.nj, %bb.o ], [ %i.ml, %.lr.ph531.preheader ]
  %i.mx = getelementptr inbounds nuw [12 x i8], ptr %i.mt, i64 %indvars.iv529 ; 2 uses
  %i.my = load <2 x float>, ptr %i.mx, align 4, !tbaa !23
  %i.mz = fadd <2 x float> %i.mv, %i.my           ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nb = load float, ptr %i.na, align 4, !tbaa !23
  %i.nc = fadd float %i.mi, %i.nb                 ; 3 uses
  %i.nd = extractelement <2 x float> %i.mz, i64 0 ; 2 uses
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.nd, float 0.000000e+00)
  %spec.select = select i1 %.not204.2450, float 0.000000e+00, float %i.ne ; 2 uses
  %i.nf = extractelement <2 x float> %i.mz, i64 1 ; 2 uses
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.nf, float %spec.select)
  %.1187.1 = select i1 %.not204.1441447, float %spec.select, float %i.ng ; 2 uses
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.nc, float %.1187.1)
  %.1187.2 = select i1 %.not204, float %.1187.1, float %i.nh ; 2 uses
  %i.ni = fcmp olt float %.1187.2, %.4192276530
  br i1 %i.ni, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph531
  store <2 x float> %i.mz, ptr %3, align 4, !tbaa !23
  store float %i.nc, ptr %i.n, align 4, !tbaa !23
  %.pre = load float, ptr %i.mk, align 4, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph531
  %i.nj = phi float [ %.pre, %bb.p ], [ %i.mw, %.lr.ph531 ] ; 2 uses
  %.5193 = phi float [ %.1187.2, %bb.p ], [ %.4192276530, %.lr.ph531 ] ; 2 uses
  %i.nk = fcmp ogt float %.5193, %i.nj
  br i1 %i.nk, label %bb.o, label %..critedge.loopexit492_crit_edge, !llvm.loop !87

.preheader235:                                    ; preds = %bb.r, %.preheader236
  %i.nl = phi float [ %i.m, %.preheader236 ], [ %i.ns, %bb.r ] ; 2 uses
  %.0184.lcssa = phi i1 [ false, %.preheader236 ], [ %i.nt, %bb.r ] ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !23
  %i.no = fcmp ugt float %i.nl, %i.nn
  br i1 %i.no, label %._crit_edge, label %.lr.ph251

.lr.ph251:                                        ; preds = %.preheader235
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %i.nq = phi float [ %i.m, %.lr.ph ], [ %i.ns, %bb.r ]
  %.0184249 = phi i1 [ false, %.lr.ph ], [ %i.nt, %bb.r ]
  %i.nr = load float, ptr %i.t, align 4, !tbaa !23
  %i.ns = fsub float %i.nq, %i.nr                 ; 4 uses
  store float %i.ns, ptr %3, align 4, !tbaa !23
  %i.nt = xor i1 %.0184249, true                  ; 2 uses
  %i.nu = load float, ptr %i.q, align 4, !tbaa !23
  %i.nv = fcmp ogt float %i.ns, %i.nu
  br i1 %i.nv, label %bb.r, label %.preheader235, !llvm.loop !88

bb.s:                                             ; preds = %.lr.ph251, %bb.s
  %i.nw = phi float [ %i.nl, %.lr.ph251 ], [ %i.ny, %bb.s ]
  %.1185250 = phi i1 [ %.0184.lcssa, %.lr.ph251 ], [ %i.nz, %bb.s ]
  %i.nx = load float, ptr %i.np, align 4, !tbaa !23
  %i.ny = fadd float %i.nw, %i.nx                 ; 3 uses
  store float %i.ny, ptr %3, align 4, !tbaa !23
  %i.nz = xor i1 %.1185250, true                  ; 2 uses
  %i.oa = load float, ptr %i.nm, align 4, !tbaa !23
  %i.ob = fcmp ugt float %i.ny, %i.oa
  br i1 %i.ob, label %._crit_edge, label %bb.s, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.s, %.preheader235
  %.1185.lcssa = phi i1 [ %.0184.lcssa, %.preheader235 ], [ %i.nz, %bb.s ]
  br i1 %.1185.lcssa, label %bb.t, label %.preheader233

bb.t:                                             ; preds = %._crit_edge
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.od = load float, ptr %i.oc, align 4, !tbaa !23
  %i.oe = load float, ptr %i.a, align 4, !tbaa !23
  %i.of = fsub float %i.od, %i.oe
  %i.og = load float, ptr %i.b, align 4, !tbaa !23
  %i.oh = fsub float %i.of, %i.og                 ; 2 uses
  store float %i.oh, ptr %i.h, align 4, !tbaa !23
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !23
  %i.ok = load float, ptr %i.c, align 4, !tbaa !23
  %i.ol = fsub float %i.oj, %i.ok
  %i.om = load float, ptr %i.e, align 4, !tbaa !23
  %i.on = fsub float %i.ol, %i.om                 ; 2 uses
  store float %i.on, ptr %i.n, align 4, !tbaa !23
  br label %.preheader233

.preheader233:                                    ; preds = %bb.t, %._crit_edge
  %i.oo = phi float [ %i.on, %bb.t ], [ %i.g, %._crit_edge ] ; 3 uses
  %i.op = phi float [ %i.oh, %bb.t ], [ %i.l, %._crit_edge ] ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.or = load float, ptr %i.oq, align 4, !tbaa !23
  %i.os = fcmp ogt float %i.op, %i.or
  br i1 %i.os, label %.lr.ph253, label %.preheader232

.lr.ph253:                                        ; preds = %.preheader233
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.u

.preheader232:                                    ; preds = %bb.u, %.preheader233
  %i.ou = phi float [ %i.op, %.preheader233 ], [ %i.pb, %bb.u ] ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !23
  %i.ox = fcmp ugt float %i.ou, %i.ow
  br i1 %i.ox, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %.preheader232
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph253, %bb.u
  %i.oz = phi float [ %i.op, %.lr.ph253 ], [ %i.pb, %bb.u ]
  %i.pa = load float, ptr %i.ot, align 4, !tbaa !23
  %i.pb = fsub float %i.oz, %i.pa                 ; 4 uses
  store float %i.pb, ptr %i.h, align 4, !tbaa !23
  %i.pc = load float, ptr %i.oq, align 4, !tbaa !23
  %i.pd = fcmp ogt float %i.pb, %i.pc
  br i1 %i.pd, label %bb.u, label %.preheader232, !llvm.loop !90

bb.v:                                             ; preds = %.lr.ph256, %bb.v
  %i.pe = phi float [ %i.ou, %.lr.ph256 ], [ %i.pg, %bb.v ]
  %i.pf = load float, ptr %i.oy, align 4, !tbaa !23
  %i.pg = fadd float %i.pe, %i.pf                 ; 3 uses
  store float %i.pg, ptr %i.h, align 4, !tbaa !23
  %i.ph = load float, ptr %i.ov, align 4, !tbaa !23
  %i.pi = fcmp ugt float %i.pg, %i.ph
  br i1 %i.pi, label %._crit_edge257, label %bb.v, !llvm.loop !91

._crit_edge257:                                   ; preds = %bb.v, %.preheader232
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !23
  %i.pl = fcmp ogt float %i.oo, %i.pk
  br i1 %i.pl, label %.lr.ph253.1, label %.preheader232.1

.lr.ph253.1:                                      ; preds = %._crit_edge257
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph253.1
  %i.pn = phi float [ %i.oo, %.lr.ph253.1 ], [ %i.pp, %bb.w ]
  %i.po = load float, ptr %i.pm, align 4, !tbaa !23
  %i.pp = fsub float %i.pn, %i.po                 ; 4 uses
  store float %i.pp, ptr %i.n, align 4, !tbaa !23
  %i.pq = load float, ptr %i.pj, align 4, !tbaa !23
  %i.pr = fcmp ogt float %i.pp, %i.pq
  br i1 %i.pr, label %bb.w, label %.preheader232.1, !llvm.loop !90

.preheader232.1:                                  ; preds = %bb.w, %._crit_edge257
  %i.ps = phi float [ %i.oo, %._crit_edge257 ], [ %i.pp, %bb.w ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !23
  %i.pv = fcmp ugt float %i.ps, %i.pu
  br i1 %i.pv, label %.critedge, label %.lr.ph256.1

.lr.ph256.1:                                      ; preds = %.preheader232.1
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph256.1
  %i.px = phi float [ %i.ps, %.lr.ph256.1 ], [ %i.pz, %bb.x ]
  %i.py = load float, ptr %i.pw, align 4, !tbaa !23
  %i.pz = fadd float %i.px, %i.py                 ; 3 uses
  store float %i.pz, ptr %i.n, align 4, !tbaa !23
  %i.qa = load float, ptr %i.pt, align 4, !tbaa !23
  %i.qb = fcmp ugt float %i.pz, %i.qa
  br i1 %i.qb, label %.critedge, label %bb.x, !llvm.loop !91

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 833, ptr noundef nonnull @.str.44) #29
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.qc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.qc

..critedge.loopexit492_crit_edge:                 ; preds = %bb.q, %bb.h
  br label %.critedge, !llvm.loop !87

.critedge:                                        ; preds = %bb.x, %bb.o, %bb.l, %bb.f, %bb.e, %.lr.ph279, %..critedge.loopexit492_crit_edge, %.lr.ph300, %.preheader232.1, %.loopexit220.1, %.preheader219.2, %.preheader.2, %bb.n, %bb.a, %bb.a, %bb.m, %._crit_edge294.2
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483646, -2147483648) i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 12)) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 22 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !23
  %i.e = load <2 x float>, ptr %2, align 4, !tbaa !23
  %i.f = fsub <2 x float> %i.d, %i.e              ; 4 uses
  %i.g = extractelement <2 x float> %i.f, i64 1   ; 17 uses
  %i.h = extractelement <2 x float> %i.f, i64 0   ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !23
  %i.m = fsub float %i.j, %i.l                    ; 23 uses
  store float %i.h, ptr %3, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 13 uses
  store float %i.g, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  store float %i.m, ptr %i.o, align 4, !tbaa !23
  store i32 0, ptr %i.a, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 7 uses
  store i32 0, ptr %i.p, align 4, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 12 uses
  store i32 0, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22
  switch i32 %i.s, label %bb.bu [
    i32 1, label %.preheader
    i32 2, label %.preheader320
    i32 3, label %.preheader321
    i32 4, label %.preheader326
    i32 5, label %bb.ba
    i32 6, label %bb.be
    i32 7, label %bb.bi
    i32 9, label %.critedge
    i32 10, label %.critedge
  ]

.preheader326:                                    ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !33   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %.not304 = icmp eq i32 %i.u, 2                  ; 2 uses
  br i1 %.not304, label %.thread495, label %bb.al

.preheader321:                                    ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.not305 = icmp eq i32 %i.y, 0
  br i1 %.not305, label %.thread491, label %bb.z

.preheader320:                                    ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !23
  %i.af = fcmp ogt float %i.m, %i.ae
  br i1 %i.af, label %._crit_edge359, label %bb.m

.preheader:                                       ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !23
  %i.aj = fcmp ogt float %i.h, %i.ai
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !23
  %i.al = fsub float %i.h, %i.ak
  br label %.sink.split

bb.c:                                             ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.an = load float, ptr %i.am, align 4, !tbaa !23
  %i.ao = fcmp ugt float %i.h, %i.an
  br i1 %i.ao, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load float, ptr %i.ah, align 4, !tbaa !23
  %i.aq = fadd float %i.h, %i.ap
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.b
  %.sink508 = phi float [ %i.al, %bb.b ], [ %i.aq, %bb.d ]
  %.sink = phi i32 [ -1, %bb.b ], [ 1, %bb.d ]
  store float %.sink508, ptr %3, align 4, !tbaa !23
  store i32 %.sink, ptr %i.a, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.as = load float, ptr %i.ar, align 4, !tbaa !23
  %i.at = fcmp ogt float %i.g, %i.as
  br i1 %i.at, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = load float, ptr %i.au, align 4, !tbaa !23
  %i.aw = fcmp ugt float %i.g, %i.av
  br i1 %i.aw, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !23
  %i.az = fadd float %i.g, %i.ay
  br label %.sink.split509

bb.h:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !23
  %i.bc = fsub float %i.g, %i.bb
  br label %.sink.split509

.sink.split509:                                   ; preds = %bb.g, %bb.h
  %.sink511 = phi float [ %i.bc, %bb.h ], [ %i.az, %bb.g ]
  %.sink510 = phi i32 [ -1, %bb.h ], [ 1, %bb.g ]
  store float %.sink511, ptr %i.n, align 4, !tbaa !23
  store i32 %.sink510, ptr %i.p, align 4, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %.sink.split509, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load float, ptr %i.bd, align 4, !tbaa !23
  %i.bf = fcmp ogt float %i.m, %i.be
  br i1 %i.bf, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !23
  %i.bi = fcmp ugt float %i.m, %i.bh
  br i1 %i.bi, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !23
  %i.bl = fadd float %i.m, %i.bk
  store float %i.bl, ptr %i.o, align 4, !tbaa !23
  store i32 1, ptr %i.q, align 8, !tbaa !32
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !23
  %i.bo = fsub float %i.m, %i.bn
  store float %i.bo, ptr %i.o, align 4, !tbaa !23
  store i32 -1, ptr %i.q, align 8, !tbaa !32
  br label %.critedge

._crit_edge359:                                   ; preds = %.preheader320
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load float, ptr %i.bq, align 4, !tbaa !23
  %i.bs = fsub float %i.m, %i.br                  ; 2 uses
  store float %i.bs, ptr %i.o, align 4, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !23
  %i.bv = fsub float %i.g, %i.bu                  ; 2 uses
  store float %i.bv, ptr %i.n, align 4, !tbaa !23
  %i.bw = load float, ptr %i.bp, align 4, !tbaa !23
  %i.bx = fsub float %i.h, %i.bw
  br label %.sink.split512

bb.m:                                             ; preds = %.preheader320
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bz = load float, ptr %i.by, align 4, !tbaa !23
  %i.ca = fcmp ugt float %i.m, %i.bz
  br i1 %i.ca, label %bb.n, label %._crit_edge356

._crit_edge356:                                   ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !23
  %i.ce = fadd float %i.cd, %i.m                  ; 2 uses
end_hunk_1
begin_hunk_2_@_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf:bb.a
  %i.lr = sext i32 %i.lq to i64                   ; 7 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %3, i64 %i.lr ; 3 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !23 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.lr
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !23
  %i.lx = fcmp ogt float %i.lt, %i.lw
  br i1 %i.lx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.lr
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !23
  %i.mb = fsub float %i.lt, %i.ma
  store float %i.mb, ptr %i.ls, align 4, !tbaa !23
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.lr ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !32
  %i.me = add nsw i32 %i.md, -1
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !32
  br label %.critedge

bb.bc:                                            ; preds = %bb.ba
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.lr
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !23
  %i.mi = fcmp ugt float %i.lt, %i.mh
  br i1 %i.mi, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.lr
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !23
  %i.mm = fadd float %i.lt, %i.ml
  store float %i.mm, ptr %i.ls, align 4, !tbaa !23
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.lr ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !32
  %i.mp = add nsw i32 %i.mo, 1
  store i32 %i.mp, ptr %i.mn, align 4, !tbaa !32
  br label %.critedge

bb.be:                                            ; preds = %bb.a
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !33
  %i.ms = sext i32 %i.mr to i64                   ; 7 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ms
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !23 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.ms
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !23
  %i.my = fcmp ogt float %i.mu, %i.mx
  br i1 %i.my, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.na = getelementptr inbounds [12 x i8], ptr %i.mz, i64 %i.ms ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !23
  %i.nd = fsub float %i.m, %i.nc
  %i.ne = load <2 x float>, ptr %i.na, align 4, !tbaa !23
  %i.nf = fsub <2 x float> %i.f, %i.ne
  store <2 x float> %i.nf, ptr %3, align 4, !tbaa !23
  store float %i.nd, ptr %i.o, align 4, !tbaa !23
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ms ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !32
  %i.ni = add nsw i32 %i.nh, -1
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !32
  br label %.critedge

bb.bg:                                            ; preds = %bb.be
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.ms
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !23
  %i.nm = fcmp ugt float %i.mu, %i.nl
  br i1 %i.nm, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.no = getelementptr inbounds [12 x i8], ptr %i.nn, i64 %i.ms ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load float, ptr %i.np, align 4, !tbaa !23
  %i.nr = fadd float %i.m, %i.nq
  %i.ns = load <2 x float>, ptr %i.no, align 4, !tbaa !23
  %i.nt = fadd <2 x float> %i.f, %i.ns
  store <2 x float> %i.nt, ptr %3, align 4, !tbaa !23
  store float %i.nr, ptr %i.o, align 4, !tbaa !23
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ms ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !32
  %i.nw = add nsw i32 %i.nv, 1
  store i32 %i.nw, ptr %i.nu, align 4, !tbaa !32
  br label %.critedge

bb.bi:                                            ; preds = %bb.a
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !23
  %i.nz = fcmp ogt float %i.h, %i.ny
  br i1 %i.nz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !23
  %i.oc = fsub float %i.h, %i.ob
  br label %.thread

bb.bk:                                            ; preds = %bb.bi
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.oe = load float, ptr %i.od, align 4, !tbaa !23
  %i.of = fcmp ugt float %i.h, %i.oe
  br i1 %i.of, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.oh = load float, ptr %i.og, align 4, !tbaa !23
  %i.oi = fadd float %i.h, %i.oh
  br label %.thread

.thread:                                          ; preds = %bb.bj, %bb.bl
  %storemerge490 = phi float [ %i.oi, %bb.bl ], [ %i.oc, %bb.bj ]
  %storemerge = phi i32 [ 1, %bb.bl ], [ -1, %bb.bj ]
  store float %storemerge490, ptr %3, align 4, !tbaa !23
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !32
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !23
  %i.ol = load float, ptr %i.b, align 4, !tbaa !23
  %i.om = fsub float %i.ok, %i.ol
  %i.on = load float, ptr %i.c, align 4, !tbaa !23
  %i.oo = fsub float %i.om, %i.on                 ; 2 uses
  store float %i.oo, ptr %i.n, align 4, !tbaa !23
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oq = load float, ptr %i.op, align 4, !tbaa !23
  %i.or = load float, ptr %i.i, align 4, !tbaa !23
  %i.os = fsub float %i.oq, %i.or
  %i.ot = load float, ptr %i.k, align 4, !tbaa !23
  %i.ou = fsub float %i.os, %i.ot                 ; 2 uses
  store float %i.ou, ptr %i.o, align 4, !tbaa !23
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %.thread
  %i.ov = phi float [ %i.ou, %.thread ], [ %i.m, %bb.bk ] ; 4 uses
  %i.ow = phi float [ %i.oo, %.thread ], [ %i.g, %bb.bk ] ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !23
  %i.oz = fcmp ogt float %i.ow, %i.oy
  br i1 %i.oz, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !23
  %i.pc = fsub float %i.ow, %i.pb
  br label %.sink.split553

bb.bo:                                            ; preds = %bb.bm
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !23
  %i.pf = fcmp ugt float %i.ow, %i.pe
  br i1 %i.pf, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !23
  %i.pi = fadd float %i.ow, %i.ph
  br label %.sink.split553

.sink.split553:                                   ; preds = %bb.bp, %bb.bn
  %.sink555 = phi float [ %i.pc, %bb.bn ], [ %i.pi, %bb.bp ]
  %.sink554 = phi i32 [ -1, %bb.bn ], [ 1, %bb.bp ]
  store float %.sink555, ptr %i.n, align 4, !tbaa !23
  store i32 %.sink554, ptr %i.p, align 4, !tbaa !32
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split553, %bb.bo
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !23
  %i.pl = fcmp ogt float %i.ov, %i.pk
  br i1 %i.pl, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !23
  %i.po = fcmp ugt float %i.ov, %i.pn
  br i1 %i.po, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !23
  %i.pr = fadd float %i.ov, %i.pq
  store float %i.pr, ptr %i.o, align 4, !tbaa !23
  store i32 1, ptr %i.q, align 8, !tbaa !32
  br label %.critedge

bb.bt:                                            ; preds = %bb.bq
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !23
  %i.pu = fsub float %i.ov, %i.pt
  store float %i.pu, ptr %i.o, align 4, !tbaa !23
  store i32 -1, ptr %i.q, align 8, !tbaa !32
  br label %.critedge

bb.bu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1096, ptr noundef nonnull @.str.45) #29
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.pv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.cc

..critedge.loopexit317_crit_edge:                 ; preds = %bb.y
  br label %.critedge.loopexit317, !llvm.loop !92

.critedge.loopexit317:                            ; preds = %bb.w, %..critedge.loopexit317_crit_edge, %.lr.ph373
  %.lcssa369 = phi i32 [ %i.ck, %.lr.ph373 ], [ %i.fm, %..critedge.loopexit317_crit_edge ], [ %i.fm, %bb.w ]
  %i.pw = phi <2 x i32> [ %i.eo, %.lr.ph373 ], [ %i.fn, %..critedge.loopexit317_crit_edge ], [ %i.fn, %bb.w ]
  store <2 x i32> %i.pw, ptr %i.a, align 8
  store i32 %.lcssa369, ptr %i.q, align 8
  br label %.critedge

..critedge.loopexit323_crit_edge:                 ; preds = %bb.az
  br label %.critedge.loopexit323, !llvm.loop !93

.critedge.loopexit323:                            ; preds = %bb.ax, %..critedge.loopexit323_crit_edge, %.lr.ph346
  %.lcssa342.ph = phi i32 [ %i.lm, %..critedge.loopexit323_crit_edge ], [ %i.kd, %.lr.ph346 ], [ %i.lm, %bb.ax ]
  %i.px = phi <2 x i32> [ %i.ln, %..critedge.loopexit323_crit_edge ], [ %i.kg, %.lr.ph346 ], [ %i.ln, %bb.ax ]
  store <2 x i32> %i.px, ptr %i.a, align 8
  store i32 %.lcssa342.ph, ptr %i.q, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.br, %bb.bs, %bb.bt, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.j, %bb.k, %bb.l, %.critedge.loopexit323, %.critedge.loopexit317, %bb.a, %bb.a, %bb.bf, %bb.bh, %bb.bg, %bb.bb, %bb.bd, %bb.bc, %bb.aw, %bb.v
  %i.py = load i32, ptr %i.a, align 8, !tbaa !32
  %i.pz = load i32, ptr %i.p, align 4, !tbaa !32
  %i.qa = load i32, ptr %i.q, align 8, !tbaa !32
  %i.qb = mul i32 %i.qa, 3
  %i.qc = add i32 %i.pz, 3
  %i.qd = add i32 %i.qc, %i.qb
  %i.qe = mul i32 %i.qd, 5
  %i.qf = add i32 %i.py, 7
  %i.qg = add i32 %i.qf, %i.qe                    ; 2 uses
  %i.qh = load ptr, ptr @debug, align 8, !tbaa !27
  %.not306 = icmp eq ptr %i.qh, null
  br i1 %.not306, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef %i.qg, i32 noundef 0, i32 noundef 45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1103)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.qi = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.qi, ptr noundef nonnull %i.qj) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.bz, %bb.by
  %i.qk = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.qn = load i64, ptr %i.ql, align 8, !tbaa !17
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qo) #30
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.qg

bb.cc:                                            ; preds = %bb.ca, %bb.bw
  %.pn = phi { ptr, i32 } [ %i.pv, %bb.bw ], [ %i.qp, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn
}

declare void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z8pbc_dx_dPK5t_pbcPKdS3_Pd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !103
  %i.d = load <2 x double>, ptr %2, align 8, !tbaa !103
  %i.e = fsub <2 x double> %i.c, %i.d             ; 7 uses
  %i.f = extractelement <2 x double> %i.e, i64 1  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !103
  %i.k = fsub double %i.h, %i.j                   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store <2 x double> %i.e, ptr %3, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store double %i.k, ptr %i.m, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  switch i32 %i.o, label %bb.y [
    i32 1, label %bb.b
    i32 3, label %bb.b
    i32 2, label %bb.i
    i32 4, label %bb.i
    i32 7, label %.preheader156
    i32 9, label %.critedge
    i32 10, label %.critedge
  ]

.preheader156:                                    ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = fpext float %i.q to double               ; 2 uses
  %i.s = extractelement <2 x double> %i.e, i64 0  ; 3 uses
  %i.t = fcmp ogt double %i.s, %i.r
  br i1 %i.t, label %.lr.ph, label %.preheader155

.lr.ph:                                           ; preds = %.preheader156
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load float, ptr %i.u, align 4, !tbaa !23
  %i.w = fpext float %i.v to double
  br label %bb.q

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.not141 = icmp eq i32 %i.y, 0
  br i1 %.not141, label %.preheader142.1, label %.preheader142

.preheader142:                                    ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !23
  %i.ad = fpext float %i.ac to double             ; 2 uses
  %i.ae = extractelement <2 x double> %i.e, i64 0 ; 3 uses
  %i.af = fcmp ogt double %i.ae, %i.ad
  br i1 %i.af, label %.lr.ph202, label %.preheader

.lr.ph202:                                        ; preds = %.preheader142
  %i.ag = load float, ptr %i.z, align 4, !tbaa !23
  %i.ah = fpext float %i.ag to double
  br label %bb.c

..preheader_crit_edge:                            ; preds = %bb.c
  store double %i.ao, ptr %3, align 8, !tbaa !103
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader142
  %.lcssa.promoted = phi double [ %i.ao, %..preheader_crit_edge ], [ %i.ae, %.preheader142 ] ; 2 uses
  %i.ai = load float, ptr %i.aa, align 4, !tbaa !23
  %i.aj = fpext float %i.ai to double             ; 2 uses
  %i.ak = fcmp ugt double %.lcssa.promoted, %i.aj
  br i1 %i.ak, label %.loopexit, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.al = load float, ptr %i.z, align 4, !tbaa !23
  %i.am = fpext float %i.al to double
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph202, %bb.c
  %i.an = phi double [ %i.ae, %.lr.ph202 ], [ %i.ao, %bb.c ]
  %i.ao = fsub double %i.an, %i.ah                ; 4 uses
  %i.ap = fcmp ogt double %i.ao, %i.ad
  br i1 %i.ap, label %bb.c, label %..preheader_crit_edge, !llvm.loop !94

bb.d:                                             ; preds = %.lr.ph206, %bb.d
  %i.aq = phi double [ %.lcssa.promoted, %.lr.ph206 ], [ %i.ar, %bb.d ]
  %i.ar = fadd double %i.aq, %i.am                ; 3 uses
  %i.as = fcmp ugt double %i.ar, %i.aj
  br i1 %i.as, label %..loopexit_crit_edge, label %bb.d, !llvm.loop !95

..loopexit_crit_edge:                             ; preds = %bb.d
  store double %i.ar, ptr %3, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge
  %.not141.1 = icmp eq i32 %i.y, 1
  br i1 %.not141.1, label %.preheader142.2, label %.preheader142.1

.preheader142.1:                                  ; preds = %bb.b, %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = load float, ptr %i.at, align 4, !tbaa !23
  %i.av = fpext float %i.au to double             ; 2 uses
  %i.aw = fcmp ogt double %i.f, %i.av
  br i1 %i.aw, label %.lr.ph202.1, label %.preheader.1

.lr.ph202.1:                                      ; preds = %.preheader142.1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !23
  %i.az = fpext float %i.ay to double
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph202.1
  %i.ba = phi double [ %i.f, %.lr.ph202.1 ], [ %i.bb, %bb.e ]
  %i.bb = fsub double %i.ba, %i.az                ; 4 uses
  %i.bc = fcmp ogt double %i.bb, %i.av
  br i1 %i.bc, label %bb.e, label %..preheader_crit_edge.1, !llvm.loop !94

..preheader_crit_edge.1:                          ; preds = %bb.e
  store double %i.bb, ptr %i.l, align 8, !tbaa !103
  br label %.preheader.1

.preheader.1:                                     ; preds = %..preheader_crit_edge.1, %.preheader142.1
  %.lcssa.promoted.1 = phi double [ %i.bb, %..preheader_crit_edge.1 ], [ %i.f, %.preheader142.1 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load float, ptr %i.bd, align 4, !tbaa !23
  %i.bf = fpext float %i.be to double             ; 2 uses
  %i.bg = fcmp ugt double %.lcssa.promoted.1, %i.bf
  br i1 %i.bg, label %.loopexit.1, label %.lr.ph206.1

.lr.ph206.1:                                      ; preds = %.preheader.1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !23
  %i.bj = fpext float %i.bi to double
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph206.1
  %i.bk = phi double [ %.lcssa.promoted.1, %.lr.ph206.1 ], [ %i.bl, %bb.f ]
  %i.bl = fadd double %i.bk, %i.bj                ; 3 uses
  %i.bm = fcmp ugt double %i.bl, %i.bf
  br i1 %i.bm, label %..loopexit_crit_edge.1, label %bb.f, !llvm.loop !95

..loopexit_crit_edge.1:                           ; preds = %bb.f
  store double %i.bl, ptr %i.l, align 8, !tbaa !103
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %..loopexit_crit_edge.1, %.preheader.1
  %.not141.2 = icmp eq i32 %i.y, 2
  br i1 %.not141.2, label %.critedge, label %.preheader142.2

.preheader142.2:                                  ; preds = %.loopexit, %.loopexit.1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !23
  %i.bp = fpext float %i.bo to double             ; 2 uses
  %i.bq = fcmp ogt double %i.k, %i.bp
  br i1 %i.bq, label %.lr.ph202.2, label %.preheader.2

.lr.ph202.2:                                      ; preds = %.preheader142.2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bs = load float, ptr %i.br, align 4, !tbaa !23
  %i.bt = fpext float %i.bs to double
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph202.2
  %i.bu = phi double [ %i.k, %.lr.ph202.2 ], [ %i.bv, %bb.g ]
  %i.bv = fsub double %i.bu, %i.bt                ; 4 uses
  %i.bw = fcmp ogt double %i.bv, %i.bp
  br i1 %i.bw, label %bb.g, label %..preheader_crit_edge.2, !llvm.loop !94

..preheader_crit_edge.2:                          ; preds = %bb.g
  store double %i.bv, ptr %i.m, align 8, !tbaa !103
  br label %.preheader.2
end_hunk_2
begin_hunk_3_@_Z8pbc_dx_dPK5t_pbcPKdS3_Pd:bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gd, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not392 = icmp slt i32 %i.gd, 1
  br i1 %exitcond.not392, label %.critedge, label %.preheader144

bb.n:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.preheader144, !llvm.loop !98

.preheader144:                                    ; preds = %bb.m, %bb.n
  %.2131199394 = phi double [ %.3132, %bb.n ], [ %.1130.2, %bb.m ] ; 2 uses
  %indvars.iv393 = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %i.ge, i64 %indvars.iv393 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !23
  %i.gh = fpext float %i.gg to double
  %i.gi = fadd double %i.fx, %i.gh                ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gk = load <2 x float>, ptr %i.gj, align 4, !tbaa !23
  %i.gl = fpext <2 x float> %i.gk to <2 x double> ; 2 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 0
  %i.gn = fadd double %i.fv, %i.gm                ; 3 uses
  %i.go = extractelement <2 x double> %i.gl, i64 1
  %i.gp = fadd double %i.fw, %i.go                ; 3 uses
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gi, double %i.gi, double 0.000000e+00)
  %spec.select = select i1 %.not140.2327, double 0.000000e+00, double %i.gq ; 2 uses
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gn, double %spec.select)
  %.1128.1 = select i1 %.not140.1318324, double %spec.select, double %i.gr ; 2 uses
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gp, double %.1128.1)
  %.1128.2 = select i1 %.not140, double %.1128.1, double %i.gs ; 2 uses
  %i.gt = fcmp olt double %.1128.2, %.2131199394
  br i1 %i.gt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader144
  store double %i.gi, ptr %3, align 8, !tbaa !103
  store double %i.gn, ptr %i.l, align 8, !tbaa !103
  store double %i.gp, ptr %i.m, align 8, !tbaa !103
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader144
  %.3132 = phi double [ %.1128.2, %bb.o ], [ %.2131199394, %.preheader144 ] ; 2 uses
  %i.gu = fcmp ogt double %.3132, %i.ga
  br i1 %i.gu, label %bb.n, label %..critedge.loopexit_crit_edge395, !llvm.loop !98

..preheader155_crit_edge:                         ; preds = %bb.q
  store double %i.hd, ptr %3, align 8, !tbaa !103
  br label %.preheader155

.preheader155:                                    ; preds = %..preheader155_crit_edge, %.preheader156
  %.promoted167 = phi double [ %i.hd, %..preheader155_crit_edge ], [ %i.s, %.preheader156 ] ; 2 uses
  %.0125.lcssa = phi i1 [ %i.he, %..preheader155_crit_edge ], [ false, %.preheader156 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !23
  %i.gx = fpext float %i.gw to double             ; 2 uses
  %i.gy = fcmp ugt double %.promoted167, %i.gx
  br i1 %i.gy, label %bb.s, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader155
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !23
  %i.hb = fpext float %i.ha to double
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.0125165 = phi i1 [ false, %.lr.ph ], [ %i.he, %bb.q ]
  %i.hc = phi double [ %i.s, %.lr.ph ], [ %i.hd, %bb.q ]
  %i.hd = fsub double %i.hc, %i.w                 ; 4 uses
  %i.he = xor i1 %.0125165, true                  ; 2 uses
  %i.hf = fcmp ogt double %i.hd, %i.r
  br i1 %i.hf, label %bb.q, label %..preheader155_crit_edge, !llvm.loop !99

bb.r:                                             ; preds = %.lr.ph169, %bb.r
  %.1126168 = phi i1 [ %.0125.lcssa, %.lr.ph169 ], [ %i.hi, %bb.r ] ; 2 uses
  %i.hg = phi double [ %.promoted167, %.lr.ph169 ], [ %i.hh, %bb.r ]
  %i.hh = fadd double %i.hg, %i.hb                ; 3 uses
  %i.hi = xor i1 %.1126168, true
  %i.hj = fcmp ugt double %i.hh, %i.gx
  br i1 %i.hj, label %._crit_edge, label %bb.r, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.r
  store double %i.hh, ptr %3, align 8, !tbaa !103
  br i1 %.1126168, label %.preheader153, label %bb.t

bb.s:                                             ; preds = %.preheader155
  br i1 %.0125.lcssa, label %bb.t, label %.preheader153

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !23
  %i.hm = fpext float %i.hl to double
  %i.hn = load double, ptr %i.a, align 8, !tbaa !103
  %i.ho = fsub double %i.hm, %i.hn
  %i.hp = load double, ptr %i.b, align 8, !tbaa !103
  %i.hq = fsub double %i.ho, %i.hp                ; 2 uses
  store double %i.hq, ptr %i.l, align 8, !tbaa !103
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !23
  %i.ht = fpext float %i.hs to double
  %i.hu = load double, ptr %i.g, align 8, !tbaa !103
  %i.hv = fsub double %i.ht, %i.hu
  %i.hw = load double, ptr %i.i, align 8, !tbaa !103
  %i.hx = fsub double %i.hv, %i.hw                ; 2 uses
  store double %i.hx, ptr %i.m, align 8, !tbaa !103
  br label %.preheader153

.preheader153:                                    ; preds = %._crit_edge, %bb.t, %bb.s
  %.promoted172.1 = phi double [ %i.hx, %bb.t ], [ %i.k, %bb.s ], [ %i.k, %._crit_edge ] ; 3 uses
  %.promoted172 = phi double [ %i.hq, %bb.t ], [ %i.f, %bb.s ], [ %i.f, %._crit_edge ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !23
  %i.ia = fpext float %i.hz to double             ; 2 uses
  %i.ib = fcmp ogt double %.promoted172, %i.ia
  br i1 %i.ib, label %.lr.ph173, label %.preheader152

.lr.ph173:                                        ; preds = %.preheader153
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.id = load float, ptr %i.ic, align 4, !tbaa !23
  %i.ie = fpext float %i.id to double
  br label %bb.u

..preheader152_crit_edge:                         ; preds = %bb.u
  store double %i.in, ptr %i.l, align 8, !tbaa !103
  br label %.preheader152

.preheader152:                                    ; preds = %..preheader152_crit_edge, %.preheader153
  %.lcssa161.promoted = phi double [ %i.in, %..preheader152_crit_edge ], [ %.promoted172, %.preheader153 ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ig = load float, ptr %i.if, align 4, !tbaa !23
  %i.ih = fpext float %i.ig to double             ; 2 uses
  %i.ii = fcmp ugt double %.lcssa161.promoted, %i.ih
  br i1 %i.ii, label %.preheader153.1, label %.lr.ph177

.lr.ph177:                                        ; preds = %.preheader152
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !23
  %i.il = fpext float %i.ik to double
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph173, %bb.u
  %i.im = phi double [ %.promoted172, %.lr.ph173 ], [ %i.in, %bb.u ]
  %i.in = fsub double %i.im, %i.ie                ; 4 uses
  %i.io = fcmp ogt double %i.in, %i.ia
  br i1 %i.io, label %bb.u, label %..preheader152_crit_edge, !llvm.loop !101

bb.v:                                             ; preds = %.lr.ph177, %bb.v
  %i.ip = phi double [ %.lcssa161.promoted, %.lr.ph177 ], [ %i.iq, %bb.v ]
  %i.iq = fadd double %i.ip, %i.il                ; 3 uses
  %i.ir = fcmp ugt double %i.iq, %i.ih
  br i1 %i.ir, label %._crit_edge178, label %bb.v, !llvm.loop !102

._crit_edge178:                                   ; preds = %bb.v
  store double %i.iq, ptr %i.l, align 8, !tbaa !103
  br label %.preheader153.1

.preheader153.1:                                  ; preds = %._crit_edge178, %.preheader152
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.it = load float, ptr %i.is, align 4, !tbaa !23
  %i.iu = fpext float %i.it to double             ; 2 uses
  %i.iv = fcmp ogt double %.promoted172.1, %i.iu
  br i1 %i.iv, label %.lr.ph173.1, label %.preheader152.1

.lr.ph173.1:                                      ; preds = %.preheader153.1
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !23
  %i.iy = fpext float %i.ix to double
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph173.1
  %i.iz = phi double [ %.promoted172.1, %.lr.ph173.1 ], [ %i.ja, %bb.w ]
  %i.ja = fsub double %i.iz, %i.iy                ; 4 uses
  %i.jb = fcmp ogt double %i.ja, %i.iu
  br i1 %i.jb, label %bb.w, label %..preheader152_crit_edge.1, !llvm.loop !101

..preheader152_crit_edge.1:                       ; preds = %bb.w
  store double %i.ja, ptr %i.m, align 8, !tbaa !103
  br label %.preheader152.1

.preheader152.1:                                  ; preds = %..preheader152_crit_edge.1, %.preheader153.1
  %.lcssa161.promoted.1 = phi double [ %i.ja, %..preheader152_crit_edge.1 ], [ %.promoted172.1, %.preheader153.1 ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !23
  %i.je = fpext float %i.jd to double             ; 2 uses
  %i.jf = fcmp ugt double %.lcssa161.promoted.1, %i.je
  br i1 %i.jf, label %.critedge, label %.lr.ph177.1

.lr.ph177.1:                                      ; preds = %.preheader152.1
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !23
  %i.ji = fpext float %i.jh to double
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph177.1
  %i.jj = phi double [ %.lcssa161.promoted.1, %.lr.ph177.1 ], [ %i.jk, %bb.x ]
  %i.jk = fadd double %i.jj, %i.ji                ; 3 uses
  %i.jl = fcmp ugt double %i.jk, %i.je
  br i1 %i.jl, label %.critedge.sink.split, label %bb.x, !llvm.loop !102

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1226, ptr noundef nonnull @.str.44) #29
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.jm

.critedge.sink.split:                             ; preds = %bb.x, %bb.h
  %.lcssa347.sink = phi double [ %i.cf, %bb.h ], [ %i.jk, %bb.x ]
  store double %.lcssa347.sink, ptr %i.m, align 8, !tbaa !103
  br label %.critedge

..critedge.loopexit_crit_edge395:                 ; preds = %bb.p
  br label %.critedge, !llvm.loop !98

.critedge:                                        ; preds = %bb.n, %bb.m, %..critedge.loopexit_crit_edge395, %.critedge.sink.split, %.preheader152.1, %.loopexit.1, %.preheader.2, %bb.a, %bb.a, %bb.l
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z11calc_shiftsPA3_KfN3gmx8ArrayRefINS2_11BasicVectorIfEEEE(ptr nofree noundef readonly captures(none) %0, ptr nofree writeonly captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  br label %.preheader24

.preheader24:                                     ; preds = %bb.a, %.preheader24
  %.02131 = phi i32 [ -1, %bb.a ], [ %i.lg, %.preheader24 ] ; 2 uses
  %.02230 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.4.2, %.preheader24 ] ; 8 uses
  %i.i = sitofp i32 %.02131 to float              ; 45 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.02230 ; 3 uses
  %i.k = load float, ptr %0, align 4, !tbaa !23
  %i.l = load float, ptr %i.a, align 4, !tbaa !23
  %i.m = fneg float %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.k, float -2.000000e+00, float %i.m)
  %i.o = load float, ptr %i.b, align 4, !tbaa !23
  %i.p = tail call float @llvm.fmuladd.f32(float %i.i, float %i.o, float %i.n)
  store float %i.p, ptr %i.j, align 4, !tbaa !23
  %i.q = load float, ptr %i.c, align 4, !tbaa !23
  %i.r = load float, ptr %i.d, align 4, !tbaa !23
  %i.s = fneg float %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.q, float -2.000000e+00, float %i.s)
  %i.u = load float, ptr %i.e, align 4, !tbaa !23
  %i.v = tail call float @llvm.fmuladd.f32(float %i.i, float %i.u, float %i.t)
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store float %i.v, ptr %i.w, align 4, !tbaa !23
  %i.x = load float, ptr %i.f, align 4, !tbaa !23
  %i.y = load float, ptr %i.g, align 4, !tbaa !23
  %i.z = fneg float %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.x, float -2.000000e+00, float %i.z)
  %i.ab = load float, ptr %i.h, align 4, !tbaa !23
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ab, float %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store float %i.ac, ptr %i.ad, align 4, !tbaa !23
  %i.ae = getelementptr [12 x i8], ptr %1, i64 %.02230 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 12
  %i.ag = load float, ptr %0, align 4, !tbaa !23
  %i.ah = load float, ptr %i.a, align 4, !tbaa !23
  %i.ai = fneg float %i.ah
  %i.aj = fsub float %i.ai, %i.ag
  %i.ak = load float, ptr %i.b, align 4, !tbaa !23
  %i.al = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ak, float %i.aj)
  store float %i.al, ptr %i.af, align 4, !tbaa !23
  %i.am = load float, ptr %i.c, align 4, !tbaa !23
  %i.an = load float, ptr %i.d, align 4, !tbaa !23
  %i.ao = fneg float %i.an
  %i.ap = fsub float %i.ao, %i.am
  %i.aq = load float, ptr %i.e, align 4, !tbaa !23
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.i, float %i.aq, float %i.ap)
  %i.as = getelementptr i8, ptr %i.ae, i64 16
  store float %i.ar, ptr %i.as, align 4, !tbaa !23
  %i.at = load float, ptr %i.f, align 4, !tbaa !23
  %i.au = load float, ptr %i.g, align 4, !tbaa !23
  %i.av = fneg float %i.au
  %i.aw = fsub float %i.av, %i.at
  %i.ax = load float, ptr %i.h, align 4, !tbaa !23
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ax, float %i.aw)
  %i.az = getelementptr i8, ptr %i.ae, i64 20
  store float %i.ay, ptr %i.az, align 4, !tbaa !23
  %i.ba = getelementptr [12 x i8], ptr %1, i64 %.02230 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %i.bc = load float, ptr %0, align 4, !tbaa !23
  %i.bd = load float, ptr %i.a, align 4, !tbaa !23
  %i.be = fneg float %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.be)
  %i.bg = load float, ptr %i.b, align 4, !tbaa !23
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.i, float %i.bg, float %i.bf)
  store float %i.bh, ptr %i.bb, align 4, !tbaa !23
  %i.bi = load float, ptr %i.c, align 4, !tbaa !23
  %i.bj = load float, ptr %i.d, align 4, !tbaa !23
  %i.bk = fneg float %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bi, float 0.000000e+00, float %i.bk)
  %i.bm = load float, ptr %i.e, align 4, !tbaa !23
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.i, float %i.bm, float %i.bl)
  %i.bo = getelementptr i8, ptr %i.ba, i64 28
  store float %i.bn, ptr %i.bo, align 4, !tbaa !23
  %i.bp = load float, ptr %i.f, align 4, !tbaa !23
  %i.bq = load float, ptr %i.g, align 4, !tbaa !23
  %i.br = fneg float %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.br)
  %i.bt = load float, ptr %i.h, align 4, !tbaa !23
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.i, float %i.bt, float %i.bs)
  %i.bv = getelementptr i8, ptr %i.ba, i64 32
  store float %i.bu, ptr %i.bv, align 4, !tbaa !23
  %i.bw = getelementptr [12 x i8], ptr %1, i64 %.02230 ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 36
  %i.by = load float, ptr %0, align 4, !tbaa !23
  %i.bz = load float, ptr %i.a, align 4, !tbaa !23
  %i.ca = fsub float %i.by, %i.bz
  %i.cb = load float, ptr %i.b, align 4, !tbaa !23
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.i, float %i.cb, float %i.ca)
  store float %i.cc, ptr %i.bx, align 4, !tbaa !23
  %i.cd = load float, ptr %i.c, align 4, !tbaa !23
  %i.ce = load float, ptr %i.d, align 4, !tbaa !23
  %i.cf = fsub float %i.cd, %i.ce
  %i.cg = load float, ptr %i.e, align 4, !tbaa !23
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.i, float %i.cg, float %i.cf)
  %i.ci = getelementptr i8, ptr %i.bw, i64 40
  store float %i.ch, ptr %i.ci, align 4, !tbaa !23
  %i.cj = load float, ptr %i.f, align 4, !tbaa !23
  %i.ck = load float, ptr %i.g, align 4, !tbaa !23
  %i.cl = fsub float %i.cj, %i.ck
  %i.cm = load float, ptr %i.h, align 4, !tbaa !23
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.i, float %i.cm, float %i.cl)
  %i.co = getelementptr i8, ptr %i.bw, i64 44
  store float %i.cn, ptr %i.co, align 4, !tbaa !23
  %i.cp = getelementptr [12 x i8], ptr %1, i64 %.02230 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 48
  %i.cr = load float, ptr %0, align 4, !tbaa !23
  %i.cs = load float, ptr %i.a, align 4, !tbaa !23
  %i.ct = fneg float %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cr, float 2.000000e+00, float %i.ct)
  %i.cv = load float, ptr %i.b, align 4, !tbaa !23
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.i, float %i.cv, float %i.cu)
  store float %i.cw, ptr %i.cq, align 4, !tbaa !23
  %i.cx = load float, ptr %i.c, align 4, !tbaa !23
  %i.cy = load float, ptr %i.d, align 4, !tbaa !23
  %i.cz = fneg float %i.cy
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cx, float 2.000000e+00, float %i.cz)
  %i.db = load float, ptr %i.e, align 4, !tbaa !23
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.i, float %i.db, float %i.da)
  %i.dd = getelementptr i8, ptr %i.cp, i64 52
  store float %i.dc, ptr %i.dd, align 4, !tbaa !23
  %i.de = load float, ptr %i.f, align 4, !tbaa !23
  %i.df = load float, ptr %i.g, align 4, !tbaa !23
  %i.dg = fneg float %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.de, float 2.000000e+00, float %i.dg)
  %i.di = load float, ptr %i.h, align 4, !tbaa !23
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.i, float %i.di, float %i.dh)
  %i.dk = getelementptr i8, ptr %i.cp, i64 56
  store float %i.dj, ptr %i.dk, align 4, !tbaa !23
  %indvars.iv.next.4 = add nuw nsw i64 %.02230, 5 ; 5 uses
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next.4 ; 3 uses
  %i.dm = load float, ptr %0, align 4, !tbaa !23
  %i.dn = load float, ptr %i.a, align 4, !tbaa !23
  %i.do = fmul float %i.dn, 0.000000e+00
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dm, float -2.000000e+00, float %i.do)
  %i.dq = load float, ptr %i.b, align 4, !tbaa !23
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.i, float %i.dq, float %i.dp)
  store float %i.dr, ptr %i.dl, align 4, !tbaa !23
  %i.ds = load float, ptr %i.c, align 4, !tbaa !23
  %i.dt = load float, ptr %i.d, align 4, !tbaa !23
  %i.du = fmul float %i.dt, 0.000000e+00
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.ds, float -2.000000e+00, float %i.du)
  %i.dw = load float, ptr %i.e, align 4, !tbaa !23
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.i, float %i.dw, float %i.dv)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store float %i.dx, ptr %i.dy, align 4, !tbaa !23
  %i.dz = load float, ptr %i.f, align 4, !tbaa !23
  %i.ea = load float, ptr %i.g, align 4, !tbaa !23
  %i.eb = fmul float %i.ea, 0.000000e+00
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dz, float -2.000000e+00, float %i.eb)
  %i.ed = load float, ptr %i.h, align 4, !tbaa !23
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ed, float %i.ec)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store float %i.ee, ptr %i.ef, align 4, !tbaa !23
  %i.eg = getelementptr [12 x i8], ptr %1, i64 %indvars.iv.next.4 ; 3 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 12
  %i.ei = load float, ptr %0, align 4, !tbaa !23
  %i.ej = load float, ptr %i.a, align 4, !tbaa !23
  %i.ek = fmul float %i.ej, 0.000000e+00
  %i.el = fsub float %i.ek, %i.ei
  %i.em = load float, ptr %i.b, align 4, !tbaa !23
  %i.en = tail call float @llvm.fmuladd.f32(float %i.i, float %i.em, float %i.el)
  store float %i.en, ptr %i.eh, align 4, !tbaa !23
  %i.eo = load float, ptr %i.c, align 4, !tbaa !23
end_hunk_3
begin_hunk_4_@_Z11calc_shiftsPA3_KfN3gmx8ArrayRefINS2_11BasicVectorIfEEEE:bb.a
  %i.he = fmul float %i.hd, 0.000000e+00
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.hc, float 2.000000e+00, float %i.he)
  %i.hg = load float, ptr %i.e, align 4, !tbaa !23
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.i, float %i.hg, float %i.hf)
  %i.hi = getelementptr i8, ptr %i.gu, i64 52
  store float %i.hh, ptr %i.hi, align 4, !tbaa !23
  %i.hj = load float, ptr %i.f, align 4, !tbaa !23
  %i.hk = load float, ptr %i.g, align 4, !tbaa !23
  %i.hl = fmul float %i.hk, 0.000000e+00
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hj, float 2.000000e+00, float %i.hl)
  %i.hn = load float, ptr %i.h, align 4, !tbaa !23
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.i, float %i.hn, float %i.hm)
  %i.hp = getelementptr i8, ptr %i.gu, i64 56
  store float %i.ho, ptr %i.hp, align 4, !tbaa !23
  %indvars.iv.next.4.1 = add nuw nsw i64 %.02230, 10 ; 5 uses
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next.4.1 ; 3 uses
  %i.hr = load float, ptr %0, align 4, !tbaa !23
  %i.hs = load float, ptr %i.a, align 4, !tbaa !23
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hr, float -2.000000e+00, float %i.hs)
  %i.hu = load float, ptr %i.b, align 4, !tbaa !23
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.i, float %i.hu, float %i.ht)
  store float %i.hv, ptr %i.hq, align 4, !tbaa !23
  %i.hw = load float, ptr %i.c, align 4, !tbaa !23
  %i.hx = load float, ptr %i.d, align 4, !tbaa !23
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hw, float -2.000000e+00, float %i.hx)
  %i.hz = load float, ptr %i.e, align 4, !tbaa !23
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.i, float %i.hz, float %i.hy)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store float %i.ia, ptr %i.ib, align 4, !tbaa !23
  %i.ic = load float, ptr %i.f, align 4, !tbaa !23
  %i.id = load float, ptr %i.g, align 4, !tbaa !23
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ic, float -2.000000e+00, float %i.id)
  %i.if = load float, ptr %i.h, align 4, !tbaa !23
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.i, float %i.if, float %i.ie)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store float %i.ig, ptr %i.ih, align 4, !tbaa !23
  %i.ii = getelementptr [12 x i8], ptr %1, i64 %indvars.iv.next.4.1 ; 3 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 12
  %i.ik = load float, ptr %0, align 4, !tbaa !23
  %i.il = load float, ptr %i.a, align 4, !tbaa !23
  %i.im = fsub float %i.il, %i.ik
  %i.in = load float, ptr %i.b, align 4, !tbaa !23
  %i.io = tail call float @llvm.fmuladd.f32(float %i.i, float %i.in, float %i.im)
  store float %i.io, ptr %i.ij, align 4, !tbaa !23
  %i.ip = load float, ptr %i.c, align 4, !tbaa !23
  %i.iq = load float, ptr %i.d, align 4, !tbaa !23
  %i.ir = fsub float %i.iq, %i.ip
  %i.is = load float, ptr %i.e, align 4, !tbaa !23
  %i.it = tail call float @llvm.fmuladd.f32(float %i.i, float %i.is, float %i.ir)
  %i.iu = getelementptr i8, ptr %i.ii, i64 16
  store float %i.it, ptr %i.iu, align 4, !tbaa !23
  %i.iv = load float, ptr %i.f, align 4, !tbaa !23
  %i.iw = load float, ptr %i.g, align 4, !tbaa !23
  %i.ix = fsub float %i.iw, %i.iv
  %i.iy = load float, ptr %i.h, align 4, !tbaa !23
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.i, float %i.iy, float %i.ix)
  %i.ja = getelementptr i8, ptr %i.ii, i64 20
  store float %i.iz, ptr %i.ja, align 4, !tbaa !23
  %i.jb = getelementptr [12 x i8], ptr %1, i64 %indvars.iv.next.4.1 ; 3 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 24
  %i.jd = load float, ptr %0, align 4, !tbaa !23
  %i.je = load float, ptr %i.a, align 4, !tbaa !23
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.jd, float 0.000000e+00, float %i.je)
  %i.jg = load float, ptr %i.b, align 4, !tbaa !23
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.i, float %i.jg, float %i.jf)
  store float %i.jh, ptr %i.jc, align 4, !tbaa !23
  %i.ji = load float, ptr %i.c, align 4, !tbaa !23
  %i.jj = load float, ptr %i.d, align 4, !tbaa !23
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.ji, float 0.000000e+00, float %i.jj)
  %i.jl = load float, ptr %i.e, align 4, !tbaa !23
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.i, float %i.jl, float %i.jk)
  %i.jn = getelementptr i8, ptr %i.jb, i64 28
  store float %i.jm, ptr %i.jn, align 4, !tbaa !23
  %i.jo = load float, ptr %i.f, align 4, !tbaa !23
  %i.jp = load float, ptr %i.g, align 4, !tbaa !23
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jo, float 0.000000e+00, float %i.jp)
  %i.jr = load float, ptr %i.h, align 4, !tbaa !23
  %i.js = tail call float @llvm.fmuladd.f32(float %i.i, float %i.jr, float %i.jq)
  %i.jt = getelementptr i8, ptr %i.jb, i64 32
  store float %i.js, ptr %i.jt, align 4, !tbaa !23
  %i.ju = getelementptr [12 x i8], ptr %1, i64 %indvars.iv.next.4.1 ; 3 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 36
  %i.jw = load float, ptr %0, align 4, !tbaa !23
  %i.jx = load float, ptr %i.a, align 4, !tbaa !23
  %i.jy = fadd float %i.jw, %i.jx
  %i.jz = load float, ptr %i.b, align 4, !tbaa !23
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.i, float %i.jz, float %i.jy)
  store float %i.ka, ptr %i.jv, align 4, !tbaa !23
  %i.kb = load float, ptr %i.c, align 4, !tbaa !23
  %i.kc = load float, ptr %i.d, align 4, !tbaa !23
  %i.kd = fadd float %i.kb, %i.kc
  %i.ke = load float, ptr %i.e, align 4, !tbaa !23
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ke, float %i.kd)
  %i.kg = getelementptr i8, ptr %i.ju, i64 40
  store float %i.kf, ptr %i.kg, align 4, !tbaa !23
  %i.kh = load float, ptr %i.f, align 4, !tbaa !23
  %i.ki = load float, ptr %i.g, align 4, !tbaa !23
  %i.kj = fadd float %i.kh, %i.ki
  %i.kk = load float, ptr %i.h, align 4, !tbaa !23
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.i, float %i.kk, float %i.kj)
  %i.km = getelementptr i8, ptr %i.ju, i64 44
  store float %i.kl, ptr %i.km, align 4, !tbaa !23
  %i.kn = getelementptr [12 x i8], ptr %1, i64 %indvars.iv.next.4.1 ; 3 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 48
  %i.kp = load float, ptr %0, align 4, !tbaa !23
  %i.kq = load float, ptr %i.a, align 4, !tbaa !23
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.kp, float 2.000000e+00, float %i.kq)
  %i.ks = load float, ptr %i.b, align 4, !tbaa !23
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ks, float %i.kr)
  store float %i.kt, ptr %i.ko, align 4, !tbaa !23
  %i.ku = load float, ptr %i.c, align 4, !tbaa !23
  %i.kv = load float, ptr %i.d, align 4, !tbaa !23
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.ku, float 2.000000e+00, float %i.kv)
  %i.kx = load float, ptr %i.e, align 4, !tbaa !23
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.i, float %i.kx, float %i.kw)
  %i.kz = getelementptr i8, ptr %i.kn, i64 52
  store float %i.ky, ptr %i.kz, align 4, !tbaa !23
  %i.la = load float, ptr %i.f, align 4, !tbaa !23
  %i.lb = load float, ptr %i.g, align 4, !tbaa !23
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.la, float 2.000000e+00, float %i.lb)
  %i.ld = load float, ptr %i.h, align 4, !tbaa !23
  %i.le = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ld, float %i.lc)
  %i.lf = getelementptr i8, ptr %i.kn, i64 56
  store float %i.le, ptr %i.lf, align 4, !tbaa !23
  %indvars.iv.next.4.2 = add nuw nsw i64 %.02230, 15
  %i.lg = add nsw i32 %.02131, 1                  ; 2 uses
  %exitcond34.not = icmp eq i32 %i.lg, 2
  br i1 %exitcond34.not, label %bb.b, label %.preheader24, !llvm.loop !104

bb.b:                                             ; preds = %.preheader24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z15calc_box_centeriPA3_KfPf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !23
  switch i32 %0, label %bb.b [
    i32 0, label %.preheader.preheader
    i32 1, label %.preheader22.preheader
    i32 2, label %.loopexit
  ]

.preheader22.preheader:                           ; preds = %bb.a
  %i.c = load float, ptr %1, align 4, !tbaa !23
  %i.d = fmul float %i.c, 5.000000e-01
  store float %i.d, ptr %2, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !23
  %i.g = fmul float %i.f, 5.000000e-01
  store float %i.g, ptr %i.a, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fmul float %i.i, 5.000000e-01
  br label %.loopexit.sink.split

.preheader.preheader:                             ; preds = %bb.a
  %i.k = load float, ptr %1, align 4, !tbaa !23
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float 5.000000e-01, float 0.000000e+00) ; 2 uses
  store float %i.l, ptr %2, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !23
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 5.000000e-01, float 0.000000e+00) ; 2 uses
  store float %i.o, ptr %i.a, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 5.000000e-01, float 0.000000e+00) ; 2 uses
  store float %i.r, ptr %i.b, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !23
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float %i.l) ; 2 uses
  store float %i.u, ptr %2, align 4, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !23
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 5.000000e-01, float %i.o) ; 2 uses
  store float %i.x, ptr %i.a, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !23
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 5.000000e-01, float %i.r) ; 2 uses
  store float %i.aa, ptr %i.b, align 4, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !23
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 5.000000e-01, float %i.u)
  store float %i.ad, ptr %2, align 4, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load float, ptr %i.ae, align 4, !tbaa !23
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 5.000000e-01, float %i.x)
  store float %i.ag, ptr %i.a, align 4, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !23
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 5.000000e-01, float %i.aa)
  br label %.loopexit.sink.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1270, ptr noundef nonnull @.str.48, i32 noundef %0) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.ak

.loopexit.sink.split:                             ; preds = %.preheader.preheader, %.preheader22.preheader
  %.sink = phi float [ %i.j, %.preheader22.preheader ], [ %i.aj, %.preheader.preheader ]
  store float %.sink, ptr %i.b, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z21calc_triclinic_imagesPA3_KfPA3_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 168)) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %0, align 4, !tbaa !23   ; 4 uses
  store float %i.b, ptr %1, align 4, !tbaa !23
  %i.c = load float, ptr %i.a, align 4, !tbaa !23 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !23 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.f, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.j = load float, ptr %i.h, align 4, !tbaa !23 ; 3 uses
  store float %i.j, ptr %i.i, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !23 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.l, ptr %i.m, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !23 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store float %i.o, ptr %i.p, align 4, !tbaa !23
  %i.q = fcmp olt float %i.j, 0.000000e+00
  %i.r = insertelement <4 x float> poison, float %i.j, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.l, i64 1
  %i.t = insertelement <4 x float> %i.s, float %i.o, i64 2
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = fneg <4 x float> %i.u                    ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.w, ptr %i.i, align 4, !tbaa !23
  %i.x = extractelement <4 x float> %i.v, i64 2
  store float %i.x, ptr %i.p, align 4, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = phi <4 x float> [ %i.v, %bb.b ], [ %i.u, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = insertelement <4 x float> %i.y, float %i.b, i64 3
  %i.ab = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.b, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.c, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.f, i64 2
  %i.ae = fsub <4 x float> %i.aa, %i.ad           ; 4 uses
  %i.af = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.c, i64 3
  %i.ag = fsub <4 x float> %i.y, %i.af            ; 2 uses
  %i.ah = extractelement <4 x float> %i.ae, i64 0
  store float %i.ah, ptr %i.z, align 4, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = extractelement <4 x float> %i.ag, i64 3
  store float %i.aj, ptr %i.ai, align 4, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = extractelement <4 x float> %i.ae, i64 2
  store float %i.al, ptr %i.ak, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.an = fneg float %i.b
  store float %i.an, ptr %i.am, align 4, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = shufflevector <4 x float> %i.ae, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 2>
  %i.aq = insertelement <8 x float> %i.ap, float %i.c, i64 0
  %i.ar = insertelement <8 x float> %i.aq, float %i.f, i64 1
  %i.as = shufflevector <4 x float> %i.ag, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 3, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <8 x float> %i.ar, <8 x float> %i.as, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 5, i32 12, i32 7>
  %i.au = fneg <8 x float> %i.at
  store <8 x float> %i.au, ptr %i.ao, align 4, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load float, ptr %i.av, align 4, !tbaa !23 ; 3 uses
  store float %i.ba, ptr %i.aw, align 4, !tbaa !23
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !23 ; 3 uses
  store float %i.bb, ptr %i.ay, align 4, !tbaa !23
  %i.bc = load float, ptr %i.az, align 4, !tbaa !23 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store float %i.bc, ptr %i.bd, align 4, !tbaa !23
  %i.be = fcmp olt float %i.ba, 0.000000e+00
  %i.bf = insertelement <3 x float> poison, float %i.ba, i64 0
  %i.bg = insertelement <3 x float> %i.bf, float %i.bb, i64 1
  %i.bh = insertelement <3 x float> %i.bg, float %i.bc, i64 2 ; 2 uses
  br i1 %i.be, label %bb.d, label %.preheader.preheader

bb.d:                                             ; preds = %bb.c
  %i.bi = fneg <3 x float> %i.bh                  ; 3 uses
  %i.bj = extractelement <3 x float> %i.bi, i64 2 ; 2 uses
  %i.bk = extractelement <3 x float> %i.bi, i64 0
  store float %i.bk, ptr %i.aw, align 4, !tbaa !23
  %i.bl = fneg float %i.bb
  store float %i.bl, ptr %i.ay, align 4, !tbaa !23
  store float %i.bj, ptr %i.bd, align 4, !tbaa !23
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d, %bb.c
  %i.bm = phi float [ %i.bj, %bb.d ], [ %i.bc, %bb.c ]
  %i.bn = phi <3 x float> [ %i.bi, %bb.d ], [ %i.bh, %bb.c ]
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1> ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bq = shufflevector <4 x float> %i.y, <4 x float> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %i.br = insertelement <8 x float> %i.bq, float %i.c, i64 7 ; 2 uses
  %i.bs = fadd <8 x float> %i.bo, %i.br
  %i.bt = fsub <8 x float> %i.bo, %i.br
  %i.bu = shufflevector <8 x float> %i.bs, <8 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15> ; 3 uses
  %i.bv = fsub float %i.bm, %i.f                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.bv, ptr %i.bw, align 4, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.by = shufflevector <8 x float> %i.bu, <8 x float> %i.bo, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 8, i32 9>
  %i.bz = insertelement <8 x float> %i.by, float %i.bv, i64 5
  %i.ca = fneg <8 x float> %i.bz
  store <8 x float> %i.ca, ptr %i.bx, align 4, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 152
  store <8 x float> %i.bu, ptr %i.bp, align 4, !tbaa !23
  %i.cc = shufflevector <8 x float> %i.bu, <8 x float> %i.bo, <4 x i32> <i32 10, i32 0, i32 1, i32 2>
  %i.cd = fneg <4 x float> %i.cc
  store <4 x float> %i.cd, ptr %i.cb, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z30calc_compact_unitcell_verticesiPA3_KfPA3_f(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 288)) %2) local_unnamed_addr #1 {
.preheader81.1142:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.m = load <4 x float>, ptr %1, align 4, !tbaa !23 ; 7 uses
  %i.n = extractelement <4 x float> %i.m, i64 0   ; 6 uses
  %i.o = shufflevector <4 x float> %i.m, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.p = shufflevector <8 x float> %i.o, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float -0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 15>
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.t = load <3 x float>, ptr %i.e, align 4, !tbaa !23 ; 3 uses
  %i.u = load <3 x float>, ptr %i.d, align 4, !tbaa !23 ; 3 uses
  %i.v = shufflevector <3 x float> %i.u, <3 x float> %i.t, <2 x i32> <i32 0, i32 3>
  %i.w = fcmp olt <2 x float> %i.v, zeroinitializer ; 2 uses
  %i.x = fneg <3 x float> %i.t
  %i.y = shufflevector <2 x i1> %i.w, <2 x i1> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.z = select <3 x i1> %i.y, <3 x float> %i.x, <3 x float> %i.t ; 16 uses
  %i.aa = load <2 x float>, ptr %i.b, align 4, !tbaa !23 ; 8 uses
  %i.ab = load float, ptr %i.c, align 4, !tbaa !23 ; 8 uses
  %i.ac = fneg <3 x float> %i.u
  %i.ad = shufflevector <2 x i1> %i.w, <2 x i1> poison, <3 x i32> zeroinitializer
  %i.ae = select <3 x i1> %i.ad, <3 x float> %i.ac, <3 x float> %i.u ; 15 uses
  %i.af = shufflevector <3 x float> %i.ae, <3 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ag = shufflevector <3 x float> %i.ae, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ah = extractelement <2 x float> %i.aa, i64 0
  %i.ai = fadd <3 x float> %i.ae, %i.z            ; 4 uses
  %i.aj = shufflevector <3 x float> %i.ai, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.ak = shufflevector <3 x float> %i.ae, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 0, i32 poison> ; 3 uses
  %i.al = shufflevector <8 x float> %i.p, <8 x float> %i.ak, <8 x i32> <i32 10, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.am = shufflevector <3 x float> %i.z, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.an = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 0, i32 8, i32 poison, i32 10, i32 4, i32 5, i32 6, i32 7>
  %i.ao = shufflevector <2 x float> %i.aa, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ap = shufflevector <3 x float> %i.ao, <3 x float> %i.ae, <8 x i32> <i32 poison, i32 0, i32 1, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.aq = shufflevector <8 x float> %i.o, <8 x float> %i.ap, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 poison, i32 poison>
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.as = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> %i.m, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.au = insertelement <4 x float> %i.at, float %i.ab, i64 2 ; 2 uses
  %i.av = shufflevector <3 x float> %i.ai, <3 x float> %i.z, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.aw = shufflevector <3 x float> %i.ai, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ax = shufflevector <3 x float> %i.z, <3 x float> %i.ae, <8 x i32> <i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 4, i32 5, i32 poison>
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.az = shufflevector <3 x float> %i.ae, <3 x float> %i.z, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 4, i32 5>
end_hunk_4
begin_hunk_5_@_Z30calc_compact_unitcell_verticesiPA3_KfPA3_f:.preheader81.1142
  %i.dx = fadd float %i.dw, %i.cl                 ; 4 uses
  %i.dy = fsub float %i.n, %i.dw
  %i.dz = shufflevector <8 x float> %i.ds, <8 x float> %i.am, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 8, i32 9, i32 10, i32 poison>
  %i.ea = insertelement <8 x float> %i.dz, float %i.bn, i64 0
  %i.eb = insertelement <8 x float> %i.ea, float %i.cu, i64 1
  %i.ec = insertelement <8 x float> %i.eb, float %i.dy, i64 7
  %i.ed = shufflevector <2 x float> %i.bj, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ee = shufflevector <3 x float> %i.z, <3 x float> %i.ed, <8 x i32> <i32 2, i32 poison, i32 3, i32 4, i32 poison, i32 3, i32 4, i32 poison>
  %i.ef = insertelement <8 x float> %i.ee, float %i.dw, i64 1
  %i.eg = insertelement <8 x float> %i.ef, float %i.dx, i64 7
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 6, i32 7>
  %i.ei = fsub <8 x float> %i.ec, %i.eh
  %i.ej = fadd float %i.dw, %i.cf
  %i.ek = fadd float %i.ej, %i.dx
  store float %i.ek, ptr %2, align 4, !tbaa !23
  %i.el = fadd float %i.dw, %i.dx
  %i.em = fsub float %i.el, %i.n
  store float %i.em, ptr %i.g, align 4, !tbaa !23
  %i.en = fsub float %i.dw, %i.n
  %i.eo = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> %foldExtExtBinop202, <2 x i32> <i32 0, i32 2>
  %i.eq = fsub <2 x float> %i.ep, %i.dt
  store <2 x float> %i.eq, ptr %i.i, align 4, !tbaa !23
  %i.er = insertelement <2 x float> %i.du, float %i.dw, i64 0
  %i.es = fsub <2 x float> %i.er, %i.dt
  %i.et = fadd <2 x float> %i.es, %i.dv
  store <2 x float> %i.et, ptr %i.k, align 4, !tbaa !23
  %i.eu = fadd float %i.cn, %i.dx
  %i.ev = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x float> %i.ev, <8 x float> %i.ds, <4 x i32> <i32 0, i32 poison, i32 10, i32 11>
  %i.ex = insertelement <4 x float> %i.ew, float %i.ab, i64 1
  %i.ey = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.ez = insertelement <4 x float> %i.ey, float %i.dw, i64 2
  %i.fa = fsub <4 x float> %i.ex, %i.ez
  %i.fb = shufflevector <2 x float> %i.bm, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.fc = shufflevector <3 x float> %i.fb, <3 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.fd = fsub <4 x float> %i.fa, %i.fc
  store <4 x float> %i.fd, ptr %i.q, align 4, !tbaa !23
  %i.fe = fadd <8 x float> %i.ei, %i.cs
  store <8 x float> %i.fe, ptr %i.l, align 4, !tbaa !23
  %i.ff = extractelement <8 x float> %i.ds, i64 4
  %i.fg = fsub float %i.ff, %i.bn
  %i.fh = fsub float %i.fg, %i.ck
  store float %i.fh, ptr %i.r, align 4, !tbaa !23
  %i.fi = shufflevector <4 x float> %i.br, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1> ; 2 uses
  %i.fk = fadd <8 x float> %i.cx, %i.fj
  %i.fl = fsub <8 x float> %i.cx, %i.fj
  %i.fm = shufflevector <8 x float> %i.fk, <8 x float> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.fn = fadd <8 x float> %i.fm, %i.da
  %i.fo = fsub <8 x float> %i.fm, %i.da
  %i.fp = shufflevector <8 x float> %i.fn, <8 x float> %i.fo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.fp, ptr %i.ar, align 4, !tbaa !23
  %i.fq = fsub <8 x float> %i.ds, %i.de
  %i.fr = shufflevector <8 x float> %i.bc, <8 x float> %i.dr, <8 x i32> <i32 11, i32 12, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fs = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <8 x float> %i.fr, <8 x float> %i.fs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.fu = insertelement <8 x float> %i.ft, float %i.ab, i64 7
  %i.fv = fsub <8 x float> %i.fq, %i.fu
  store <8 x float> %i.fv, ptr %i.ay, align 4, !tbaa !23
  %foldExtExtBinop204 = fsub <2 x float> %i.bl, %i.aa
  %i.fw = fsub float %i.cn, %i.n
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> %foldExtExtBinop204, <2 x i32> <i32 0, i32 2>
  %i.fz = fsub <2 x float> %i.fy, %i.dv
  store <2 x float> %i.fz, ptr %i.bd, align 4, !tbaa !23
  %i.ga = fsub float %i.bt, %i.ck
  store float %i.ga, ptr %i.be, align 4, !tbaa !23
  %i.gb = insertelement <6 x float> %i.bv, float %i.cn, i64 2
  %i.gc = insertelement <6 x float> %i.gb, float %i.eu, i64 3
  %i.gd = shufflevector <6 x float> %i.gc, <6 x float> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 3, i32 6, i32 7> ; 2 uses
  %i.ge = fsub <8 x float> %i.gd, %i.ca
  %i.gf = fadd <8 x float> %i.gd, %i.ca
  %i.gg = shufflevector <8 x float> %i.ge, <8 x float> %i.gf, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 5, i32 6, i32 7>
  %i.gh = shufflevector <8 x float> %i.cd, <8 x float> %i.cq, <8 x i32> <i32 0, i32 1, i32 14, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gi = fadd <8 x float> %i.gg, %i.gh
  store <8 x float> %i.gi, ptr %i.bg, align 4, !tbaa !23
  %i.gj = shufflevector <4 x float> %i.m, <4 x float> %i.as, <8 x i32> <i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = insertelement <8 x float> %i.gj, float %i.ab, i64 2
  %i.gl = shufflevector <8 x float> %i.gk, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gm = shufflevector <8 x float> %i.ak, <8 x float> %i.ds, <8 x i32> <i32 1, i32 2, i32 13, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = shufflevector <8 x float> %i.gl, <8 x float> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.go = shufflevector <2 x float> %i.bl, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.gp = insertelement <3 x float> poison, float %i.cn, i64 0
  %i.gq = shufflevector <3 x float> %i.gp, <3 x float> %i.go, <8 x i32> <i32 0, i32 4, i32 5, i32 0, i32 4, i32 5, i32 0, i32 4>
  %i.gr = fsub <8 x float> %i.gn, %i.gq           ; 2 uses
  %i.gs = fadd <8 x float> %i.gr, %i.cq
  %i.gt = fsub <8 x float> %i.gr, %i.cq
  %i.gu = shufflevector <8 x float> %i.gs, <8 x float> %i.gt, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.gu, ptr %i.ce, align 4, !tbaa !23
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.gw = shufflevector <8 x float> %i.ds, <8 x float> poison, <4 x i32> <i32 7, i32 2, i32 3, i32 4>
  %i.gx = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %i.gy = insertelement <4 x float> %i.gx, float %i.cn, i64 1
  %i.gz = fsub <4 x float> %i.gw, %i.gy           ; 2 uses
  %i.ha = shufflevector <4 x float> %i.bq, <4 x float> %i.m, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.hb = insertelement <4 x float> %i.ha, float %i.ah, i64 2
  %i.hc = insertelement <4 x float> %i.hb, float %i.ab, i64 3 ; 2 uses
  %i.hd = fsub <4 x float> %i.gz, %i.hc
  %i.he = fadd <4 x float> %i.gz, %i.hc
  %i.hf = shufflevector <4 x float> %i.hd, <4 x float> %i.he, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.hf, ptr %i.gv, align 4, !tbaa !23
  call void @_Z15calc_box_centeriPA3_KfPf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  %.phi.trans.insert191 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre192 = load float, ptr %.phi.trans.insert191, align 4, !tbaa !23
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %.pre192, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre190 = load float, ptr %.phi.trans.insert, align 4, !tbaa !23
  %broadcast.splatinsert195 = insertelement <8 x float> poison, float %.pre190, i64 0
  %broadcast.splat196 = shufflevector <8 x float> %broadcast.splatinsert195, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.pre = load float, ptr %i.a, align 4, !tbaa !23
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %wide.vec = load <24 x float>, ptr %2, align 4, !tbaa !23 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.hg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.hh = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.hi = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.hj = shufflevector <8 x float> %i.hg, <8 x float> %i.hh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hk = shufflevector <8 x float> %i.hi, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.hj, <16 x float> %i.hk, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %2, align 4, !tbaa !23
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.vec.1 = load <24 x float>, ptr %i.hl, align 4, !tbaa !23 ; 3 uses
  %strided.vec.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.hm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.hn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.ho = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.hp = shufflevector <8 x float> %i.hm, <8 x float> %i.hn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hq = shufflevector <8 x float> %i.ho, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <16 x float> %i.hp, <16 x float> %i.hq, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.1, ptr %i.hl, align 4, !tbaa !23
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.vec.2 = load <24 x float>, ptr %i.hr, align 4, !tbaa !23 ; 3 uses
  %strided.vec.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.hs = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.ht = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.hu = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.hv = shufflevector <8 x float> %i.hs, <8 x float> %i.ht, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hw = shufflevector <8 x float> %i.hu, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <16 x float> %i.hv, <16 x float> %i.hw, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.2, ptr %i.hr, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z22compact_unitcell_edgesv() local_unnamed_addr #1 {
.preheader20:
  %i.a = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef 1413, i64 noundef 72, i64 noundef 4) ; 8 uses
  store <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0>, ptr %i.a, align 4, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <8 x i32> <i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 4>, ptr %i.b, align 4, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <8 x i32> <i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 8>, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <8 x i32> <i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 12>, ptr %i.d, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <8 x i32> <i32 16, i32 17, i32 17, i32 18, i32 18, i32 19, i32 19, i32 16>, ptr %i.e, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <8 x i32> <i32 20, i32 21, i32 21, i32 22, i32 22, i32 23, i32 23, i32 20>, ptr %i.f, align 4, !tbaa !32
  %scevgep = getelementptr i8, ptr %i.a, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %scevgep, ptr noundef nonnull align 16 dereferenceable(96) @_ZZ22compact_unitcell_edgesvE6hexcon, i64 96, i1 false), !tbaa !32
  ret ptr %i.a
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z16put_atoms_in_box7PbcTypePA3_KfN3gmx8ArrayRefINS3_11BasicVectorIfEEEE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  tail call fastcc void @_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_(i32 noundef %0, ptr noundef %1, ptr %2, ptr %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %5 = alloca %"class.gmx::BasicVector.6", align 4 ; 7 uses
  switch i32 %0, label %bb.e [
    i32 3, label %bb.b
    i32 2, label %vector.ph
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 96), align 8, !tbaa !16
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1448, ptr noundef nonnull @.str.50, ptr noundef %i.a) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  br label %vector.ph

vector.ph:                                        ; preds = %bb.a, %bb.e
  %exitcond23.not.1 = phi i1 [ false, %bb.e ], [ true, %bb.a ]
  %.0 = phi i64 [ 3, %bb.e ], [ 2, %bb.a ]        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %trip.count.minus.1 = add nsw i64 %.0, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.c = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep39 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep39, <4 x i1> %i.c, <4 x float> poison), !tbaa !23
  %i.d = fdiv <4 x float> splat (float 1.000000e+00), %wide.masked.gather
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.d, ptr align 4 %5, <4 x i1> %i.c), !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !23
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.h, label %bb.f

bb.f:                                             ; preds = %vector.ph
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fcmp une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !23
  %i.m = fcmp une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.h, label %.preheader7

.preheader7:                                      ; preds = %bb.g
  %i.n = ptrtoint ptr %3 to i64
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.preheader6.preheader, label %.loopexit5

.preheader6.preheader:                            ; preds = %.preheader7
  %i.r = udiv exact i64 %i.p, 12
  %i.s = load float, ptr %5, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.preheader6

bb.h:                                             ; preds = %bb.g, %bb.f, %vector.ph
  %i.z = ptrtoint ptr %3 to i64
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.preheader.lr.ph, label %.loopexit5

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.ad = udiv exact i64 %i.ab, 12
  %i.ae = shl nuw nsw i64 %.0, 4
  %i.af = add nsw i64 %i.ae, -12
  %i.ag = shl nuw nsw i64 %.0, 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.i
  %.04916 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.al, %bb.i ] ; 3 uses
  %i.ah = mul i64 %.04916, 12
  %i.ai = add i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.04916 ; 12 uses
  br label %bb.j

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block46
  %i.ak = icmp samesign ugt i64 %indvars.iv30, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ak, label %bb.j, label %bb.i, !llvm.loop !105

bb.i:                                             ; preds = %.loopexit
  %i.al = add nuw nsw i64 %.04916, 1              ; 2 uses
  %exitcond34.not = icmp eq i64 %i.al, %i.ad
  br i1 %exitcond34.not, label %.loopexit5, label %.preheader, !llvm.loop !106

bb.j:                                             ; preds = %.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv30 = phi i64 [ %.0, %.preheader ], [ %indvars.iv.next31, %.loopexit ] ; 7 uses
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1 ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next31
  %i.an = load float, ptr %i.am, align 4, !tbaa !23
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next31
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !23
  %i.aq = fmul float %i.an, %i.ap
  %i.ar = tail call noundef float @llvm.floor.f32(float %i.aq)
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next31 ; 11 uses
  %i.at = fneg float %i.ar                        ; 10 uses
  %min.iters.check = icmp ult i64 %indvars.iv30, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j
  %i.au = shl i64 %indvar, 2
  %i.av = sub i64 %i.ai, %i.au
  %i.aw = getelementptr i8, ptr %2, i64 %i.av
  %i.ax = shl i64 %indvar, 4
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  %bound0 = icmp ult ptr %i.aj, %i.az
  %bound1 = icmp ult ptr %i.as, %i.aw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv30, -2              ; 3 uses
  %broadcast.splatinsert42 = insertelement <2 x float> poison, float %i.at, i64 0
  %broadcast.splat43 = shufflevector <2 x float> %broadcast.splatinsert42, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph41
  %index = phi i64 [ 0, %vector.ph41 ], [ %index.next, %vector.body44 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index
  %wide.load = load <2 x float>, ptr %i.ba, align 4, !tbaa !23, !alias.scope !114
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %wide.load45 = load <2 x float>, ptr %i.bb, align 4, !tbaa !23, !alias.scope !115, !noalias !114
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat43, <2 x float> %wide.load, <2 x float> %wide.load45)
  store <2 x float> %i.bc, ptr %i.bb, align 4, !tbaa !23, !alias.scope !115, !noalias !114
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block46, label %vector.body44, !llvm.loop !110

middle.block46:                                   ; preds = %vector.body44
  %cmp.n = icmp eq i64 %indvars.iv30, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.j, %middle.block46
  %indvars.iv25.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.j ], [ %n.vec, %middle.block46 ] ; 4 uses
  %i.be = sub i64 %indvars.iv30, %indvars.iv25.ph
  %xtraiter = and i64 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv25.prol = phi i64 [ %indvars.iv.next26.prol, %scalar.ph.prol ], [ %indvars.iv25.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv25.prol
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !23
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv25.prol ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !23
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bg, float %i.bi)
  store float %i.bj, ptr %i.bh, align 4, !tbaa !23
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !111

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv25.unr = phi i64 [ %indvars.iv25.ph, %scalar.ph.preheader ], [ %indvars.iv.next26.prol, %scalar.ph.prol ]
  %i.bk = sub i64 %indvar, %.0
  %i.bl = add i64 %i.bk, %indvars.iv25.ph
  %i.bm = icmp ugt i64 %i.bl, -8
  br i1 %i.bm, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.7, %scalar.ph ], [ %indvars.iv25.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv25
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !23
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv25 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !23
  %i.br = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bo, float %i.bq)
  store float %i.br, ptr %i.bp, align 4, !tbaa !23
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next26
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !23
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next26 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !23
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bt, float %i.bv)
  store float %i.bw, ptr %i.bu, align 4, !tbaa !23
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next26.1
  %i.by = load float, ptr %i.bx, align 4, !tbaa !23
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next26.1 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !23
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.at, float %i.by, float %i.ca)
  store float %i.cb, ptr %i.bz, align 4, !tbaa !23
  %indvars.iv.next26.2 = add nuw nsw i64 %indvars.iv25, 3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next26.2
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !23
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next26.2 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !23
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.at, float %i.cd, float %i.cf)
  store float %i.cg, ptr %i.ce, align 4, !tbaa !23
  %indvars.iv.next26.3 = add nuw nsw i64 %indvars.iv25, 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next26.3
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !23
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next26.3 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !23
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.at, float %i.ci, float %i.ck)
  store float %i.cl, ptr %i.cj, align 4, !tbaa !23
  %indvars.iv.next26.4 = add nuw nsw i64 %indvars.iv25, 5 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next26.4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !23
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next26.4 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !23
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.at, float %i.cn, float %i.cp)
  store float %i.cq, ptr %i.co, align 4, !tbaa !23
  %indvars.iv.next26.5 = add nuw nsw i64 %indvars.iv25, 6 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next26.5
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !23
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next26.5 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !23
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.at, float %i.cs, float %i.cu)
  store float %i.cv, ptr %i.ct, align 4, !tbaa !23
  %indvars.iv.next26.6 = add nuw nsw i64 %indvars.iv25, 7 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next26.6
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !23
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next26.6 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !23
  %i.da = tail call float @llvm.fmuladd.f32(float %i.at, float %i.cx, float %i.cz)
  store float %i.da, ptr %i.cy, align 4, !tbaa !23
  %indvars.iv.next26.7 = add nuw nsw i64 %indvars.iv25, 8 ; 2 uses
  %exitcond29.not.7 = icmp eq i64 %indvars.iv.next26.7, %indvars.iv30
  br i1 %exitcond29.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !112

.preheader6:                                      ; preds = %.preheader6.preheader, %bb.k
  %.04611 = phi i64 [ %i.dp, %bb.k ], [ 0, %.preheader6.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.04611 ; 4 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !23 ; 2 uses
  %i.dd = fmul float %i.dc, %i.s
  %i.de = tail call noundef float @llvm.floor.f32(float %i.dd)
  %i.df = load float, ptr %1, align 4, !tbaa !23
  %i.dg = fneg float %i.de
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.df, float %i.dc)
  store float %i.dh, ptr %i.db, align 4, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !23 ; 2 uses
  %i.dk = fmul float %i.dj, %i.u
  %i.dl = tail call noundef float @llvm.floor.f32(float %i.dk)
  %i.dm = load float, ptr %i.v, align 4, !tbaa !23
  %i.dn = fneg float %i.dl
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dm, float %i.dj)
  store float %i.do, ptr %i.di, align 4, !tbaa !23
  br i1 %exitcond23.not.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.preheader6
  %i.dp = add nuw nsw i64 %.04611, 1              ; 2 uses
  %exitcond24.not = icmp eq i64 %i.dp, %i.r
  br i1 %exitcond24.not, label %.loopexit5, label %.preheader6, !llvm.loop !113

bb.l:                                             ; preds = %.preheader6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !23 ; 2 uses
  %i.ds = fmul float %i.dr, %i.x
  %i.dt = tail call noundef float @llvm.floor.f32(float %i.ds)
  %i.du = load float, ptr %i.y, align 4, !tbaa !23
  %i.dv = fneg float %i.dt
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.du, float %i.dr)
  store float %i.dw, ptr %i.dq, align 4, !tbaa !23
  br label %bb.k

.loopexit5:                                       ; preds = %bb.k, %bb.i, %.preheader7, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: mustprogress nounwind uwtable
define void @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %6, i32 noundef %7) local_unnamed_addr #15 {
bb.a:
  %8 = alloca %"class.gmx::ArrayRef", align 8     ; 3 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %4, ptr %8, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %5, ptr %i.g, align 8
  store i32 %0, ptr %i.a, align 4, !tbaa !38
  store ptr %1, ptr %i.b, align 8, !tbaa !40
  %i.h = zext i1 %2 to i8
  store i8 %i.h, ptr %i.c, align 1, !tbaa !42
  store ptr %3, ptr %i.d, align 8, !tbaa !40
  store i32 %7, ptr %i.e, align 4, !tbaa !32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %7)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i.omp_outlined, ptr nonnull %i.e, ptr nonnull %8, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %6)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %8) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %10 = alloca %"class.gmx::BasicVector.6", align 4 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !32     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !32
  %i.h = load i32, ptr %0, align 4, !tbaa !32     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !32
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !32
  %i.k = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  %.not40 = icmp sgt i32 %i.k, %i.j
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.u
  %i.p = phi i32 [ %i.j, %.lr.ph ], [ %i.hj, %bb.u ]
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8 ; 4 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 12                  ; 2 uses
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i32, ptr %2, align 4, !tbaa !32
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = udiv i64 %i.v, %i.x                      ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.z = mul i64 %i.u, %indvars.iv.next
  %i.aa = udiv i64 %i.z, %i.x                     ; 2 uses
  %i.ab = load i8, ptr %4, align 1, !tbaa !42, !range !120, !noundef !121
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load i32, ptr %5, align 4, !tbaa !38    ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !40    ; 11 uses
  br i1 %i.ac, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %7, align 8, !tbaa !40    ; 9 uses
  %.idx37 = mul i64 %i.y, 12                      ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %.idx37 ; 2 uses
  %.idx = mul nsw i64 %i.aa, 12                   ; 2 uses
  %i.ah = load i64, ptr %8, align 8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.y ; 2 uses
  switch i32 %i.ad, label %bb.h [
    i32 3, label %bb.e
    i32 2, label %vector.ph
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 96), align 8, !tbaa !16
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1448, ptr noundef nonnull @.str.50, ptr noundef %i.ak) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.body

bb.h:                                             ; preds = %bb.d
  br label %vector.ph

vector.ph:                                        ; preds = %bb.h, %bb.d
  %exitcond35.not.i.1 = phi i1 [ false, %bb.h ], [ true, %bb.d ]
  %i.am = phi i1 [ true, %bb.h ], [ false, %bb.d ]
  %.066.i = phi i64 [ 3, %bb.h ], [ 2, %bb.d ]    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %trip.count.minus.1 = add nsw i64 %.066.i, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.an = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.ae, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep70 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep70, <4 x i1> %i.an, <4 x float> poison), !tbaa !23
  %i.ao = fdiv <4 x float> splat (float 1.000000e+00), %wide.masked.gather
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ao, ptr align 4 %10, <4 x i1> %i.an), !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !23
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.k, label %bb.i

bb.i:                                             ; preds = %vector.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.at = load float, ptr %i.as, align 4, !tbaa !23
  %i.au = fcmp une float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.aw = load float, ptr %i.av, align 4, !tbaa !23
  %i.ax = fcmp une float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.k, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.j
  %gepdiff = sub nsw i64 %.idx, %.idx37           ; 2 uses
  %i.ay = icmp sgt i64 %gepdiff, 0
  br i1 %i.ay, label %.preheader6.lr.ph.i, label %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit

.preheader6.lr.ph.i:                              ; preds = %.preheader7.i
  %i.az = udiv exact i64 %gepdiff, 12
  %i.ba = load float, ptr %10, align 4, !tbaa !23
  %i.bb = load float, ptr %i.n, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bf = load float, ptr %i.o, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br label %.preheader6.i

bb.k:                                             ; preds = %bb.j, %bb.i, %vector.ph
  %gepdiff38 = sub nsw i64 %.idx, %.idx37         ; 2 uses
  %i.bk = icmp sgt i64 %gepdiff38, 0
  br i1 %i.bk, label %.preheader.lr.ph.i, label %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.bl = udiv exact i64 %gepdiff38, 12
  %indvars.iv.next43.i = add nsw i64 %.066.i, -1  ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next43.i
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !23
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv.next43.i
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.next43.i
  %indvars.iv.next43.i.1 = add nsw i64 %.066.i, -2 ; 7 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next43.i.1
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv.next43.i.1
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.next43.i.1
  %lcmp.mod74.1 = icmp ne i64 %indvars.iv.next43.i, 0
  %i.bt = add nsw i64 %.066.i, -3
  %indvars.iv.next43.i.2 = add nsw i64 %.066.i, -3 ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next43.i.2
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv.next43.i.2 ; 5 uses
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.next43.i.2 ; 5 uses
  %i.bx = icmp ult i64 %i.bt, 3
  %lcmp.mod.2.not = icmp eq i64 %indvars.iv.next43.i.1, 0
  %lcmp.mod74.2 = icmp ne i64 %indvars.iv.next43.i.1, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i.2, %.preheader.lr.ph.i
  %.06417.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.fj, %.loopexit.i.2 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %.06417.i ; 10 uses
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %.06417.i ; 7 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next43.i
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !23
  %i.cc = fmul float %i.cb, %i.bn
  %i.cd = call noundef float @llvm.floor.f32(float %i.cc)
  %i.ce = fneg float %i.cd                        ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i
  %indvars.iv37.i.epil = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next38.i.epil, %bb.l ] ; 5 uses
  %epil.iter = phi i64 [ 0, %.preheader.i ], [ %epil.iter.next, %bb.l ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv37.i.epil
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !23
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv37.i.epil ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !23
  %i.cj = call float @llvm.fmuladd.f32(float %i.ce, float %i.cg, float %i.ci)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !23
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv37.i.epil
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !23
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv37.i.epil ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !23
  %i.co = call float @llvm.fmuladd.f32(float %i.ce, float %i.cl, float %i.cn)
  store float %i.co, ptr %i.cm, align 4, !tbaa !23
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.066.i
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.l, !llvm.loop !116

.loopexit.i:                                      ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next43.i.1
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !23
  %i.cr = load float, ptr %i.bq, align 4, !tbaa !23
  %i.cs = fmul float %i.cq, %i.cr
  %i.ct = call noundef float @llvm.floor.f32(float %i.cs)
  %i.cu = fneg float %i.ct                        ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod74.1)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.loopexit.i
  %indvars.iv37.i.epil.1 = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next38.i.epil.1, %bb.m ] ; 5 uses
  %epil.iter.1 = phi i64 [ 0, %.loopexit.i ], [ %epil.iter.next.1, %bb.m ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv37.i.epil.1
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !23
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv37.i.epil.1 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !23
  %i.cz = call float @llvm.fmuladd.f32(float %i.cu, float %i.cw, float %i.cy)
  store float %i.cz, ptr %i.cx, align 4, !tbaa !23
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv37.i.epil.1
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv37.i.epil.1 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !23
  %i.de = call float @llvm.fmuladd.f32(float %i.cu, float %i.db, float %i.dd)
  store float %i.de, ptr %i.dc, align 4, !tbaa !23
  %indvars.iv.next38.i.epil.1 = add nuw nsw i64 %indvars.iv37.i.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.next.1, %indvars.iv.next43.i
  br i1 %epil.iter.cmp.1.not, label %.loopexit.i.1, label %bb.m, !llvm.loop !116

.loopexit.i.1:                                    ; preds = %bb.m
  br i1 %i.am, label %bb.n, label %.loopexit.i.2

bb.n:                                             ; preds = %.loopexit.i.1
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next43.i.2
  %i.dg = load float, ptr %i.df, align 4, !tbaa !23
  %i.dh = load float, ptr %i.bu, align 4, !tbaa !23
  %i.di = fmul float %i.dg, %i.dh
  %i.dj = call noundef float @llvm.floor.f32(float %i.di)
  %i.dk = fneg float %i.dj                        ; 10 uses
  br i1 %i.bx, label %.epil.preheader.2, label %.new.2

.new.2:                                           ; preds = %bb.n, %.new.2
  %indvars.iv37.i.2 = phi i64 [ %indvars.iv.next38.i.3.2, %.new.2 ], [ 0, %bb.n ] ; 8 uses
  %niter.2 = phi i64 [ %niter.next.3.2, %.new.2 ], [ 0, %bb.n ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv37.i.2
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !23
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv37.i.2 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !23
  %i.dp = call float @llvm.fmuladd.f32(float %i.dk, float %i.dm, float %i.do)
  store float %i.dp, ptr %i.dn, align 4, !tbaa !23
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv37.i.2
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !23
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv37.i.2 ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !23
  %i.du = call float @llvm.fmuladd.f32(float %i.dk, float %i.dr, float %i.dt)
  store float %i.du, ptr %i.ds, align 4, !tbaa !23
  %indvars.iv.next38.i.276 = or disjoint i64 %indvars.iv37.i.2, 1 ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next38.i.276
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !23
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next38.i.276 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !23
  %i.dz = call float @llvm.fmuladd.f32(float %i.dk, float %i.dw, float %i.dy)
  store float %i.dz, ptr %i.dx, align 4, !tbaa !23
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.276
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !23
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next38.i.276 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !23
  %i.ee = call float @llvm.fmuladd.f32(float %i.dk, float %i.eb, float %i.ed)
  store float %i.ee, ptr %i.ec, align 4, !tbaa !23
  %indvars.iv.next38.i.1.2 = or disjoint i64 %indvars.iv37.i.2, 2 ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next38.i.1.2
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !23
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next38.i.1.2 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !23
  %i.ej = call float @llvm.fmuladd.f32(float %i.dk, float %i.eg, float %i.ei)
  store float %i.ej, ptr %i.eh, align 4, !tbaa !23
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.1.2
  %i.el = load float, ptr %i.ek, align 4, !tbaa !23
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next38.i.1.2 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !23
  %i.eo = call float @llvm.fmuladd.f32(float %i.dk, float %i.el, float %i.en)
  store float %i.eo, ptr %i.em, align 4, !tbaa !23
  %indvars.iv.next38.i.2.2 = or disjoint i64 %indvars.iv37.i.2, 3 ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next38.i.2.2
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !23
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next38.i.2.2 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !23
  %i.et = call float @llvm.fmuladd.f32(float %i.dk, float %i.eq, float %i.es)
  store float %i.et, ptr %i.er, align 4, !tbaa !23
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.2.2
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !23
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next38.i.2.2 ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !23
  %i.ey = call float @llvm.fmuladd.f32(float %i.dk, float %i.ev, float %i.ex)
  store float %i.ey, ptr %i.ew, align 4, !tbaa !23
  %indvars.iv.next38.i.3.2 = add nuw nsw i64 %indvars.iv37.i.2, 4 ; 2 uses
  %niter.next.3.2 = add i64 %niter.2, 4           ; 2 uses
  %niter.ncmp.3.2 = icmp eq i64 %niter.next.3.2, 0
  br i1 %niter.ncmp.3.2, label %.loopexit.i.unr-lcssa.2, label %.new.2, !llvm.loop !117

.loopexit.i.unr-lcssa.2:                          ; preds = %.new.2
  br i1 %lcmp.mod.2.not, label %.loopexit.i.2, label %.epil.preheader.2

.epil.preheader.2:                                ; preds = %.loopexit.i.unr-lcssa.2, %bb.n
  %indvars.iv37.i.epil.init.2 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next38.i.3.2, %.loopexit.i.unr-lcssa.2 ]
  call void @llvm.assume(i1 %lcmp.mod74.2)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader.2
  %indvars.iv37.i.epil.2 = phi i64 [ %indvars.iv37.i.epil.init.2, %.epil.preheader.2 ], [ %indvars.iv.next38.i.epil.2, %bb.o ] ; 5 uses
  %epil.iter.2 = phi i64 [ 0, %.epil.preheader.2 ], [ %epil.iter.next.2, %bb.o ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv37.i.epil.2
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !23
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv37.i.epil.2 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !23
  %i.fd = call float @llvm.fmuladd.f32(float %i.dk, float %i.fa, float %i.fc)
  store float %i.fd, ptr %i.fb, align 4, !tbaa !23
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv37.i.epil.2
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !23
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv37.i.epil.2 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !23
  %i.fi = call float @llvm.fmuladd.f32(float %i.dk, float %i.ff, float %i.fh)
  store float %i.fi, ptr %i.fg, align 4, !tbaa !23
  %indvars.iv.next38.i.epil.2 = add nuw nsw i64 %indvars.iv37.i.epil.2, 1
  %epil.iter.next.2 = add i64 %epil.iter.2, 1     ; 2 uses
  %epil.iter.cmp.2.not = icmp eq i64 %epil.iter.next.2, %indvars.iv.next43.i.1
  br i1 %epil.iter.cmp.2.not, label %.loopexit.i.2, label %bb.o, !llvm.loop !116

.loopexit.i.2:                                    ; preds = %.loopexit.i.unr-lcssa.2, %bb.o, %.loopexit.i.1
  %i.fj = add nuw nsw i64 %.06417.i, 1            ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.fj, %i.bl
  br i1 %exitcond46.not.i, label %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit, label %.preheader.i, !llvm.loop !118

.preheader6.i:                                    ; preds = %bb.p, %.preheader6.lr.ph.i
  %.06112.i = phi i64 [ 0, %.preheader6.lr.ph.i ], [ %i.gj, %bb.p ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %.06112.i ; 4 uses
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %.06112.i ; 9 uses
  %i.fm = load float, ptr %i.fk, align 4, !tbaa !23 ; 2 uses
  %i.fn = fmul float %i.fm, %i.ba
  %i.fo = call noundef float @llvm.floor.f32(float %i.fn)
  %i.fp = load float, ptr %i.ae, align 4, !tbaa !23
  %i.fq = fneg float %i.fo                        ; 2 uses
  %i.fr = call float @llvm.fmuladd.f32(float %i.fq, float %i.fp, float %i.fm)
  store float %i.fr, ptr %i.fk, align 4, !tbaa !23
  %i.fs = load float, ptr %i.af, align 4, !tbaa !23
  %i.ft = load float, ptr %i.fl, align 4, !tbaa !23
  %i.fu = call float @llvm.fmuladd.f32(float %i.fq, float %i.fs, float %i.ft)
  store float %i.fu, ptr %i.fl, align 4, !tbaa !23
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !23 ; 2 uses
  %i.fx = fmul float %i.fw, %i.bb
  %i.fy = call noundef float @llvm.floor.f32(float %i.fx)
  %i.fz = load float, ptr %i.bc, align 4, !tbaa !23
  %i.ga = fneg float %i.fy                        ; 3 uses
  %i.gb = call float @llvm.fmuladd.f32(float %i.ga, float %i.fz, float %i.fw)
  store float %i.gb, ptr %i.fv, align 4, !tbaa !23
  %i.gc = load float, ptr %i.bd, align 4, !tbaa !23
  %i.gd = load float, ptr %i.fl, align 4, !tbaa !23
  %i.ge = call float @llvm.fmuladd.f32(float %i.ga, float %i.gc, float %i.gd)
  store float %i.ge, ptr %i.fl, align 4, !tbaa !23
  %i.gf = load float, ptr %i.be, align 4, !tbaa !23
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !23
  %i.gi = call float @llvm.fmuladd.f32(float %i.ga, float %i.gf, float %i.gh)
  store float %i.gi, ptr %i.gg, align 4, !tbaa !23
  br i1 %exitcond35.not.i.1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %.preheader6.i
  %i.gj = add nuw nsw i64 %.06112.i, 1            ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.gj, %i.az
  br i1 %exitcond36.not.i, label %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit, label %.preheader6.i, !llvm.loop !119

bb.q:                                             ; preds = %.preheader6.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !23 ; 2 uses
  %i.gm = fmul float %i.gl, %i.bf
  %i.gn = call noundef float @llvm.floor.f32(float %i.gm)
  %i.go = load float, ptr %i.bg, align 4, !tbaa !23
  %i.gp = fneg float %i.gn                        ; 4 uses
  %i.gq = call float @llvm.fmuladd.f32(float %i.gp, float %i.go, float %i.gl)
  store float %i.gq, ptr %i.gk, align 4, !tbaa !23
  %i.gr = load float, ptr %i.bh, align 4, !tbaa !23
  %i.gs = load float, ptr %i.fl, align 4, !tbaa !23
  %i.gt = call float @llvm.fmuladd.f32(float %i.gp, float %i.gr, float %i.gs)
  store float %i.gt, ptr %i.fl, align 4, !tbaa !23
  %i.gu = load float, ptr %i.bi, align 4, !tbaa !23
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !23
  %i.gx = call float @llvm.fmuladd.f32(float %i.gp, float %i.gu, float %i.gw)
  store float %i.gx, ptr %i.gv, align 4, !tbaa !23
  %i.gy = load float, ptr %i.bj, align 4, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !23
  %i.hb = call float @llvm.fmuladd.f32(float %i.gp, float %i.gy, float %i.ha)
  store float %i.hb, ptr %i.gz, align 4, !tbaa !23
  br label %bb.p

_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit: ; preds = %bb.p, %.loopexit.i.2, %.preheader7.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.e
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.g ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.hc = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.hd = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.he = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.hf = icmp eq i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.r, label %bb.x

bb.r:                                             ; preds = %.body
  %i.hg = call ptr @__cxa_begin_catch(ptr %i.hc) #20
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.hg) #29
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.c
  %i.hh = getelementptr inbounds [12 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.y
  %i.hi = getelementptr inbounds [12 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.aa
  invoke fastcc void @_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_(i32 noundef %i.ad, ptr noundef %i.ae, ptr %i.hh, ptr %i.hi)
          to label %._crit_edge45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge45:                                    ; preds = %bb.t
  %.pre = load i32, ptr %i.b, align 4, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge45, %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit
  %i.hj = phi i32 [ %.pre, %._crit_edge45 ], [ %i.p, %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit ] ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hk
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.w:                                             ; preds = %bb.r
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #31
  unreachable

bb.x:                                             ; preds = %.body
  call void @__clang_call_terminate(ptr %i.hc) #31
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #21

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare !callback !47 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_Z31put_atoms_in_triclinic_unitcelliPA3_KfN3gmx8ArrayRefINS2_11BasicVectorIfEEEE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @_Z15calc_box_centeriPA3_KfPf(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.l = load <2 x float>, ptr %i.g, align 4, !tbaa !23 ; 3 uses
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !23
  %i.n = fadd <2 x float> %i.m, zeroinitializer
  %i.o = load <2 x float>, ptr %i.d, align 4, !tbaa !23 ; 2 uses
  %i.p = fadd <2 x float> %i.n, %i.o
  %i.q = fadd <2 x float> %i.p, %i.l              ; 2 uses
  %i.r = extractelement <2 x float> %i.o, i64 0   ; 3 uses
  %i.s = fdiv float %i.c, %i.r                    ; 2 uses
  %i.t = fneg float %i.c
  %i.u = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.v = fmul float %i.u, %i.t
  %i.w = tail call float @llvm.fmuladd.f32(float %i.r, float %i.f, float %i.v)
  %i.x = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.y = fmul float %i.r, %i.x
  %i.z = fdiv float %i.w, %i.y                    ; 2 uses
  %i.aa = fdiv float %i.u, %i.x                   ; 2 uses
  %i.ab = extractelement <2 x float> %i.q, i64 0
  %i.ac = fmul float %i.ab, 5.000000e-01
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = fmul float %i.ad, 5.000000e-01
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !23
  %i.ah = fsub float %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !23
  %i.ak = fsub float %i.aj, %i.ae                 ; 2 uses
  %i.al = fmul float %i.z, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.s, float %i.ah, float %i.al)
  %i.an = fmul float %i.aa, %i.ak
  %i.ao = ptrtoint ptr %3 to i64
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.preheader71.preheader, label %._crit_edge90

.preheader71.preheader:                           ; preds = %bb.a
  %i.as = udiv exact i64 %i.aq, 12
  br label %bb.b

._crit_edge90:                                    ; preds = %._crit_edge.2, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.b:                                             ; preds = %.preheader71.preheader, %._crit_edge.2
  %.089 = phi i64 [ %i.dn, %._crit_edge.2 ], [ 0, %.preheader71.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.089 ; 13 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 7 uses
  %.pre = load float, ptr %i.au, align 4, !tbaa !23 ; 3 uses
  %i.aw = fcmp olt float %.pre, 0.000000e+00
  br i1 %i.aw, label %.preheader68.lr.ph, label %.preheader70

.preheader68.lr.ph:                               ; preds = %bb.b
  %.pre109 = load float, ptr %i.at, align 4, !tbaa !23
  %.pre110 = load float, ptr %i.av, align 4, !tbaa !23
  br label %.preheader68

.preheader70:                                     ; preds = %.preheader68, %bb.b
  %i.ax = phi float [ %.pre, %bb.b ], [ %i.bi, %.preheader68 ] ; 3 uses
  %i.ay = load float, ptr %i.k, align 4, !tbaa !23
  %i.az = fcmp ult float %i.ax, %i.ay
  br i1 %i.az, label %.loopexit124, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader70
  %.pre111 = load float, ptr %i.at, align 4, !tbaa !23
  %.pre112 = load float, ptr %i.av, align 4, !tbaa !23
  br label %.preheader

.preheader68:                                     ; preds = %.preheader68.lr.ph, %.preheader68
  %i.ba = phi float [ %.pre, %.preheader68.lr.ph ], [ %i.bi, %.preheader68 ]
  %i.bb = phi float [ %.pre110, %.preheader68.lr.ph ], [ %i.bg, %.preheader68 ]
  %i.bc = phi float [ %.pre109, %.preheader68.lr.ph ], [ %i.be, %.preheader68 ]
  %i.bd = load float, ptr %i.e, align 4, !tbaa !23
  %i.be = fadd float %i.bd, %i.bc                 ; 2 uses
  store float %i.be, ptr %i.at, align 4, !tbaa !23
  %i.bf = load float, ptr %i.j, align 4, !tbaa !23
  %i.bg = fadd float %i.bf, %i.bb                 ; 2 uses
  store float %i.bg, ptr %i.av, align 4, !tbaa !23
  %i.bh = load float, ptr %i.k, align 4, !tbaa !23
  %i.bi = fadd float %i.bh, %i.ba                 ; 4 uses
  store float %i.bi, ptr %i.au, align 4, !tbaa !23
  %i.bj = fcmp olt float %i.bi, 0.000000e+00
  br i1 %i.bj, label %.preheader68, label %.preheader70, !llvm.loop !122

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.bk = phi float [ %i.ax, %.preheader.preheader ], [ %i.bs, %.preheader ]
  %i.bl = phi float [ %.pre112, %.preheader.preheader ], [ %i.bq, %.preheader ]
  %i.bm = phi float [ %.pre111, %.preheader.preheader ], [ %i.bo, %.preheader ]
  %i.bn = load float, ptr %i.e, align 4, !tbaa !23
  %i.bo = fsub float %i.bm, %i.bn                 ; 2 uses
  store float %i.bo, ptr %i.at, align 4, !tbaa !23
  %i.bp = load float, ptr %i.j, align 4, !tbaa !23
  %i.bq = fsub float %i.bl, %i.bp                 ; 2 uses
  store float %i.bq, ptr %i.av, align 4, !tbaa !23
  %i.br = load float, ptr %i.k, align 4, !tbaa !23
  %i.bs = fsub float %i.bk, %i.br                 ; 4 uses
  store float %i.bs, ptr %i.au, align 4, !tbaa !23
  %i.bt = load float, ptr %i.k, align 4, !tbaa !23
  %i.bu = fcmp ult float %i.bs, %i.bt
  br i1 %i.bu, label %.loopexit124, label %.preheader, !llvm.loop !123

.loopexit124:                                     ; preds = %.preheader, %.preheader70
  %i.bv = phi float [ %i.ax, %.preheader70 ], [ %i.bs, %.preheader ] ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bv, float %i.an) ; 4 uses
  %i.bx = load float, ptr %i.av, align 4, !tbaa !23 ; 3 uses
  %i.by = fcmp olt float %i.bx, %i.bw
  br i1 %i.by, label %.preheader68.lr.ph.1, label %.preheader70.1

.preheader68.lr.ph.1:                             ; preds = %.loopexit124
  %.pre113 = load float, ptr %i.at, align 4, !tbaa !23
  br label %.preheader68.1

.preheader68.1:                                   ; preds = %.preheader68.1, %.preheader68.lr.ph.1
  %i.bz = phi float [ %i.ce, %.preheader68.1 ], [ %i.bx, %.preheader68.lr.ph.1 ]
  %i.ca = phi float [ %i.cc, %.preheader68.1 ], [ %.pre113, %.preheader68.lr.ph.1 ]
  %i.cb = load float, ptr %i.b, align 4, !tbaa !23
  %i.cc = fadd float %i.cb, %i.ca                 ; 2 uses
  store float %i.cc, ptr %i.at, align 4, !tbaa !23
  %i.cd = load float, ptr %i.i, align 4, !tbaa !23
  %i.ce = fadd float %i.cd, %i.bz                 ; 4 uses
  store float %i.ce, ptr %i.av, align 4, !tbaa !23
  %i.cf = fcmp olt float %i.ce, %i.bw
  br i1 %i.cf, label %.preheader68.1, label %.preheader70.1, !llvm.loop !122

.preheader70.1:                                   ; preds = %.preheader68.1, %.loopexit124
  %i.cg = phi float [ %i.bx, %.loopexit124 ], [ %i.ce, %.preheader68.1 ] ; 3 uses
  %i.ch = fsub float %i.cg, %i.bw
  %i.ci = load float, ptr %i.i, align 4, !tbaa !23
  %i.cj = fcmp ult float %i.ch, %i.ci
  br i1 %i.cj, label %.loopexit, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader70.1
  %.pre114 = load float, ptr %i.at, align 4, !tbaa !23
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader.preheader.1
  %i.ck = phi float [ %i.cp, %.preheader.1 ], [ %i.cg, %.preheader.preheader.1 ]
  %i.cl = phi float [ %i.cn, %.preheader.1 ], [ %.pre114, %.preheader.preheader.1 ]
  %i.cm = load float, ptr %i.b, align 4, !tbaa !23
  %i.cn = fsub float %i.cl, %i.cm                 ; 2 uses
  store float %i.cn, ptr %i.at, align 4, !tbaa !23
  %i.co = load float, ptr %i.i, align 4, !tbaa !23
  %i.cp = fsub float %i.ck, %i.co                 ; 4 uses
  store float %i.cp, ptr %i.av, align 4, !tbaa !23
  %i.cq = fsub float %i.cp, %i.bw
  %i.cr = load float, ptr %i.i, align 4, !tbaa !23
  %i.cs = fcmp ult float %i.cq, %i.cr
  br i1 %i.cs, label %.loopexit, label %.preheader.1, !llvm.loop !123

.loopexit:                                        ; preds = %.preheader.1, %.preheader70.1
  %i.ct = phi float [ %i.cg, %.preheader70.1 ], [ %i.cp, %.preheader.1 ]
  %i.cu = fmul float %i.z, %i.bv
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.s, float %i.ct, float %i.cu)
  %i.cw = fadd float %i.am, %i.cv                 ; 4 uses
  %i.cx = load float, ptr %i.at, align 4, !tbaa !23 ; 3 uses
  %i.cy = fcmp olt float %i.cx, %i.cw
  br i1 %i.cy, label %.preheader68.2, label %.preheader70.2

.preheader68.2:                                   ; preds = %.loopexit, %.preheader68.2
  %i.cz = phi float [ %i.db, %.preheader68.2 ], [ %i.cx, %.loopexit ]
  %i.da = load float, ptr %1, align 4, !tbaa !23
  %i.db = fadd float %i.da, %i.cz                 ; 4 uses
  store float %i.db, ptr %i.at, align 4, !tbaa !23
  %i.dc = fcmp olt float %i.db, %i.cw
  br i1 %i.dc, label %.preheader68.2, label %.preheader70.2, !llvm.loop !122

.preheader70.2:                                   ; preds = %.preheader68.2, %.loopexit
  %i.dd = phi float [ %i.cx, %.loopexit ], [ %i.db, %.preheader68.2 ] ; 2 uses
  %i.de = fsub float %i.dd, %i.cw
  %i.df = load float, ptr %1, align 4, !tbaa !23  ; 2 uses
  %i.dg = fcmp ult float %i.de, %i.df
  br i1 %i.dg, label %._crit_edge.2, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader70.2, %.preheader.2
  %i.dh = phi float [ %i.dj, %.preheader.2 ], [ %i.dd, %.preheader70.2 ]
  %i.di = phi float [ %i.dl, %.preheader.2 ], [ %i.df, %.preheader70.2 ]
  %i.dj = fsub float %i.dh, %i.di                 ; 3 uses
  store float %i.dj, ptr %i.at, align 4, !tbaa !23
  %i.dk = fsub float %i.dj, %i.cw
  %i.dl = load float, ptr %1, align 4, !tbaa !23  ; 2 uses
  %i.dm = fcmp ult float %i.dk, %i.dl
  br i1 %i.dm, label %._crit_edge.2, label %.preheader.2, !llvm.loop !123

._crit_edge.2:                                    ; preds = %.preheader.2, %.preheader70.2
  %i.dn = add nuw nsw i64 %.089, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %i.as
  br i1 %exitcond.not, label %._crit_edge90, label %bb.b, !llvm.loop !124
}

; Function Attrs: mustprogress uwtable
define void @_Z29put_atoms_in_compact_unitcell7PbcTypeiPA3_KfN3gmx8ArrayRefINS3_11BasicVectorIfEEEE(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr %3, ptr %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.t_pbc, align 4              ; 6 uses
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = icmp eq i32 %0, 4
  br i1 %i.c, label %bb.b, label %_Z7set_pbcP5t_pbc7PbcTypePA3_Kf.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_Z12guessPbcTypePA3_Kf(ptr noundef %2)
  br label %_Z7set_pbcP5t_pbc7PbcTypePA3_Kf.exit

_Z7set_pbcP5t_pbc7PbcTypePA3_Kf.exit:             ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %0, %bb.a ]
  call fastcc void @_ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf(ptr noundef nonnull %5, i32 noundef %.0.i, ptr noundef null, ptr noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22
  %i.g = icmp eq i32 %i.f, 10
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_Z7set_pbcP5t_pbc7PbcTypePA3_Kf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 1611, ptr noundef nonnull @.str.51) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %_Z7set_pbcP5t_pbc7PbcTypePA3_Kf.exit
  call void @_Z15calc_box_centeriPA3_KfPf(i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  %i.i = ptrtoint ptr %4 to i64
  %i.j = ptrtoint ptr %3 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.m = udiv exact i64 %i.k, 12
  %i.n = load <2 x float>, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load float, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %.010 ; 3 uses
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.s = load float, ptr %i.q, align 8, !tbaa !23
  %i.t = fadd float %i.p, %i.s
  %i.u = load <2 x float>, ptr %i.b, align 8, !tbaa !23
  %i.v = fadd <2 x float> %i.n, %i.u
  store <2 x float> %i.v, ptr %i.r, align 4, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store float %i.t, ptr %i.w, align 4, !tbaa !23
  %i.x = add nuw nsw i64 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !125
}

; Function Attrs: mustprogress uwtable
define void @_Z17do_pbc_first_mtopP8_IO_FILE7PbcTypebPA3_KfS4_PK10gmx_mtop_tN3gmx8ArrayRefINS8_11BasicVectorIfEEEESC_(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.gmx::ArrayRef", align 8     ; 3 uses
  %9 = alloca %"class.gmx::ArrayRef", align 8     ; 3 uses
  %i.a = load ptr, ptr %6, align 8, !tbaa !45     ; 3 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  store ptr %i.h, ptr %i.b, align 8, !tbaa !45
  %i.i = load ptr, ptr %7, align 8, !tbaa !45     ; 3 uses
  store ptr %i.i, ptr %9, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  store ptr %i.p, ptr %i.j, align 8, !tbaa !45
  tail call fastcc void @_ZL15low_do_pbc_mtopP8_IO_FILE7PbcTypebPA3_KfS4_PK10gmx_mtop_tN3gmx8ArrayRefINS8_11BasicVectorIfEEEESC_b(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %8, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %9, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15low_do_pbc_mtopP8_IO_FILE7PbcTypebPA3_KfS4_PK10gmx_mtop_tN3gmx8ArrayRefINS8_11BasicVectorIfEEEESC_b(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %7, i1 noundef zeroext %8) unnamed_addr #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %struct.t_graph, align 8            ; 17 uses
  %i.a = icmp ne ptr %0, null
  %or.cond = and i1 %i.a, %8
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.52, i64 24, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %2, label %bb.d, label %_Z21setBoxDeformationRatePA3_KfS1_PA3_f.exit

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %7, align 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i55 = load ptr, ptr %6, align 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.sroa.0.0.copyload.i55 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp eq i64 %i.f, %i.k
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL15low_do_pbc_mtopP8_IO_FILE7PbcTypebPA3_KfS4_PK10gmx_mtop_tN3gmx8ArrayRefINS8_11BasicVectorIfEEEESC_bENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 1655) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = load float, ptr %4, align 4, !tbaa !23   ; 2 uses
  %i.n = fcmp ogt float %i.m, 0.000000e+00
  br i1 %i.n, label %.split.us.loopexit.i, label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.loopexit.i, %bb.f
  %.sroa.081.1 = phi float [ %i.aj, %.split.us.loopexit.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !23 ; 2 uses
  %i.q = fcmp ogt float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.g, label %.split.us.1.i

bb.g:                                             ; preds = %.split.us.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !23
  %i.t = insertelement <2 x float> poison, float %i.p, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fdiv <2 x float> %i.s, %i.u
  br label %.split.us.1.i

.split.us.1.i:                                    ; preds = %bb.g, %.split.us.i
  %i.w = phi <2 x float> [ %i.v, %bb.g ], [ zeroinitializer, %.split.us.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load float, ptr %i.x, align 4, !tbaa !23 ; 3 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.h, label %_Z21setBoxDeformationRatePA3_KfS1_PA3_f.exit

bb.h:                                             ; preds = %.split.us.1.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !23
  %i.ac = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x float> %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = load float, ptr %i.af, align 4, !tbaa !23
  %i.ah = fdiv float %i.ag, %i.y
  br label %_Z21setBoxDeformationRatePA3_KfS1_PA3_f.exit

.split.us.loopexit.i:                             ; preds = %bb.f
  %i.ai = load float, ptr %3, align 4, !tbaa !23
  %i.aj = fdiv float %i.ai, %i.m
  br label %.split.us.i

_Z21setBoxDeformationRatePA3_KfS1_PA3_f.exit:     ; preds = %bb.h, %.split.us.1.i, %bb.c
  %.sroa.14.0 = phi float [ undef, %bb.c ], [ 0.000000e+00, %.split.us.1.i ], [ %i.ah, %bb.h ]
  %.sroa.081.0 = phi float [ undef, %bb.c ], [ %.sroa.081.1, %.split.us.1.i ], [ %.sroa.081.1, %bb.h ]
  %i.ak = phi <2 x float> [ undef, %bb.c ], [ zeroinitializer, %.split.us.1.i ], [ %i.ae, %bb.h ]
  %i.al = phi <2 x float> [ undef, %bb.c ], [ %i.w, %.split.us.1.i ], [ %i.w, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !134 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !134 ; 2 uses
  %.not100 = icmp eq ptr %i.an, %i.ap
  br i1 %.not100, label %._crit_edge103, label %.lr.ph

.lr.ph:                                           ; preds = %_Z21setBoxDeformationRatePA3_KfS1_PA3_f.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ar = load i64, ptr %6, align 8
  %i.as = inttoptr i64 %i.ar to ptr               ; 3 uses
  %i.at = load i64, ptr %7, align 8
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = fneg float %.sroa.081.0                 ; 4 uses
  %i.aw = fneg <2 x float> %i.al                  ; 5 uses
  %i.ax = fneg <2 x float> %i.ak                  ; 5 uses
  %i.ay = fneg float %.sroa.14.0                  ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 32
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.av, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat146 = shufflevector <2 x float> %i.aw, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat148 = shufflevector <2 x float> %i.aw, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat150 = shufflevector <2 x float> %i.ax, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat152 = shufflevector <2 x float> %i.ax, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert153 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat154 = shufflevector <8 x float> %broadcast.splatinsert153, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bh = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.av, i64 0
  %i.bi = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.av, i64 0
  %i.bj = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.av, i64 0
  br label %bb.i

._crit_edge103:                                   ; preds = %bb.w, %_Z21setBoxDeformationRatePA3_KfS1_PA3_f.exit
  ret void

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %.0102 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.w ] ; 5 uses
  %.sroa.077.0101 = phi ptr [ %i.an, %.lr.ph ], [ %i.ia, %bb.w ] ; 5 uses
  %i.bk = load i32, ptr %.sroa.077.0101, align 8, !tbaa !140
  %i.bl = sext i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !141
  %i.bn = getelementptr inbounds nuw [2408 x i8], ptr %i.bm, i64 %i.bl ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !149
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @_Z16mk_graph_moltypeRK13gmx_moltype_t(ptr dead_on_unwind nonnull writable sret(%struct.t_graph) align 8 %9, ptr noundef nonnull align 8 dereferenceable(2408) %i.bn)
  br i1 %2, label %bb.l, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread.thread

bb.k:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.077.0101, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !150
  %i.bt = add nsw i32 %i.bs, %.0102
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.bu = load i32, ptr %i.bo, align 8, !tbaa !149 ; 3 uses
  %i.bv = sext i32 %i.bu to i64                   ; 4 uses
  %i.bw = icmp slt i32 %i.bu, 0
  br i1 %i.bw, label %bb.m, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.l
  %.not.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread, label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bx = mul nuw nsw i64 %i.bv, 12
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #34
          to label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i
  %i.bz = phi ptr [ %i.by, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.077.0101, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !150
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph96.split.us.preheader, label %._crit_edge

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread.thread: ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.077.0101, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !150
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph96.split, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit62

.lr.ph96.split.us.preheader:                      ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread
  %.pre = load i32, ptr %i.bo, align 8, !tbaa !149
  br label %.lr.ph96.split.us

.lr.ph96.split.us:                                ; preds = %.lr.ph96.split.us.preheader, %.loopexit.us
  %i.cg = phi i32 [ %i.dh, %.loopexit.us ], [ %.pre, %.lr.ph96.split.us.preheader ] ; 3 uses
  %.195.us = phi i32 [ %i.gp, %.loopexit.us ], [ %.0102, %.lr.ph96.split.us.preheader ] ; 2 uses
  %.04694.us = phi i32 [ %i.gq, %.loopexit.us ], [ 0, %.lr.ph96.split.us.preheader ]
  %i.ch = sext i32 %.195.us to i64                ; 3 uses
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.as, i64 %i.ch ; 9 uses
  invoke void @_Z9mk_mshiftP8_IO_FILEP7t_graph7PbcTypePA3_KfS6_(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %1, ptr noundef %4, ptr noundef %i.ci)
          to label %bb.n unwind label %.split.us

bb.n:                                             ; preds = %.lr.ph96.split.us
  %i.cj = icmp sgt i32 %i.cg, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.us.preheader, label %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit.us

.lr.ph.i.i.i.i.i.us.preheader:                    ; preds = %bb.n
  %i.ck = zext nneg i32 %i.cg to i64              ; 3 uses
  %xtraiter = and i64 %i.ck, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.us.prol:                         ; preds = %.lr.ph.i.i.i.i.i.us.preheader, %.lr.ph.i.i.i.i.i.us.prol
  %.09.i.i.i.i.i.us.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.us.prol ], [ %i.bz, %.lr.ph.i.i.i.i.i.us.preheader ] ; 2 uses
  %.048.i.i.i.i.i.us.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.us.prol ], [ %i.ck, %.lr.ph.i.i.i.i.i.us.preheader ]
  %.sroa.05.07.i.i.i.i.i.us.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.us.prol ], [ %i.ci, %.lr.ph.i.i.i.i.i.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.us.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i.us.prol, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.07.i.i.i.i.i.us.prol, i64 12, i1 false), !tbaa.struct !151
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us.prol, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.prol, i64 12 ; 2 uses
  %i.cn = add nsw i64 %.048.i.i.i.i.i.us.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.us.prol, !llvm.loop !126

.lr.ph.i.i.i.i.i.us.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.us.preheader
  %.09.i.i.i.i.i.us.unr = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.us.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.us.prol ]
  %.048.i.i.i.i.i.us.unr = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.us.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.us.prol ]
  %.sroa.05.07.i.i.i.i.i.us.unr = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.us.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.us.prol ]
  %i.co = icmp ult i32 %i.cg, 8
  br i1 %i.co, label %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %.lr.ph.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.us
  %.09.i.i.i.i.i.us = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.us ], [ %.09.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.us.prol.loopexit ] ; 9 uses
  %.048.i.i.i.i.i.us = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.us ], [ %.048.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.us.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.us = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.us ], [ %.sroa.05.07.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.us.prol.loopexit ] ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i.us, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.07.i.i.i.i.i.us, i64 12, i1 false), !tbaa.struct !151
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cq, ptr noundef nonnull align 4 dereferenceable(12) %i.cp, i64 12, i1 false), !tbaa.struct !151
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull align 4 dereferenceable(12) %i.cr, i64 12, i1 false), !tbaa.struct !151
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us, i64 36
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) %i.ct, i64 12, i1 false), !tbaa.struct !151
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %i.cv, i64 12, i1 false), !tbaa.struct !151
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us, i64 60
  %i.cy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cy, ptr noundef nonnull align 4 dereferenceable(12) %i.cx, i64 12, i1 false), !tbaa.struct !151
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.cz, i64 12, i1 false), !tbaa.struct !151
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us, i64 84
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dc, ptr noundef nonnull align 4 dereferenceable(12) %i.db, i64 12, i1 false), !tbaa.struct !151
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.us, i64 96
  %i.de = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us, i64 96
  %i.df = add nsw i64 %.048.i.i.i.i.i.us, -8
  %i.dg = icmp sgt i64 %.048.i.i.i.i.i.us, 8
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.us, label %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit.us, !llvm.loop !127

_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit.us: ; preds = %.lr.ph.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.us, %bb.n
  invoke void @_Z10shift_selfRK7t_graphPA3_KfPA3_f(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef %4, ptr noundef %i.ci)
          to label %.preheader.us unwind label %.split.us

.preheader.us:                                    ; preds = %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit.us
  %i.dh = load i32, ptr %i.bo, align 8, !tbaa !149 ; 5 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.us.preheader, label %.loopexit.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %wide.trip.count = zext nneg i32 %i.dh to i64   ; 6 uses
  %invariant.gep = getelementptr [12 x i8], ptr %i.au, i64 %i.ch ; 5 uses
  %min.iters.check = icmp ult i32 %i.dh, 8
  br i1 %min.iters.check, label %.lr.ph.us.preheader165, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.preheader
  %i.dj = add nsw i64 %i.ch, %wide.trip.count
  %i.dk = mul nsw i64 %i.dj, 12                   ; 2 uses
  %i.dl = getelementptr i8, ptr %i.au, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.as, i64 %i.dk
  %bound0 = icmp ult ptr %invariant.gep, %i.dm
  %bound1 = icmp ult ptr %i.ci, %i.dl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.us.preheader165, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dn = getelementptr [12 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.ci, i64 %index
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %index
  %wide.vec = load <24 x float>, ptr %i.do, align 4, !tbaa !23, !alias.scope !152 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec155 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec156 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec157 = load <24 x float>, ptr %i.dp, align 4, !tbaa !23 ; 3 uses
  %strided.vec158 = shufflevector <24 x float> %wide.vec157, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec159 = shufflevector <24 x float> %wide.vec157, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec160 = shufflevector <24 x float> %wide.vec157, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.dq = fsub <8 x float> %strided.vec, %strided.vec158
  %i.dr = fsub <8 x float> %strided.vec155, %strided.vec159 ; 2 uses
  %i.ds = fsub <8 x float> %strided.vec156, %strided.vec160 ; 3 uses
  %wide.vec161 = load <24 x float>, ptr %i.dn, align 4, !tbaa !23, !alias.scope !153, !noalias !152 ; 3 uses
  %strided.vec162 = shufflevector <24 x float> %wide.vec161, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec163 = shufflevector <24 x float> %wide.vec161, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec164 = shufflevector <24 x float> %wide.vec161, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.dt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %i.dq, <8 x float> %strided.vec162)
  %i.du = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat146, <8 x float> %i.dr, <8 x float> %i.dt)
  %i.dv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat148, <8 x float> %i.dr, <8 x float> %strided.vec163)
  %i.dw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat150, <8 x float> %i.ds, <8 x float> %i.du)
  %i.dx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat152, <8 x float> %i.ds, <8 x float> %i.dv)
  %i.dy = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat154, <8 x float> %i.ds, <8 x float> %strided.vec164)
  %i.dz = shufflevector <8 x float> %i.dw, <8 x float> %i.dx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ea = shufflevector <8 x float> %i.dy, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.dz, <16 x float> %i.ea, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.dn, align 4, !tbaa !23, !alias.scope !153, !noalias !152
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph.us.preheader165

.lr.ph.us.preheader165:                           ; preds = %vector.memcheck, %.lr.ph.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter173 = and i64 %wide.trip.count, 1
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader165
  %gep.prol = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 3 uses
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.ci, i64 %indvars.iv.ph ; 2 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %indvars.iv.ph ; 2 uses
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !23
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !23
  %i.eg = fsub float %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ej = load <2 x float>, ptr %i.eh, align 4, !tbaa !23
  %i.ek = load <2 x float>, ptr %i.ei, align 4, !tbaa !23
  %i.el = fsub <2 x float> %i.ej, %i.ek           ; 3 uses
  %i.em = load <2 x float>, ptr %gep.prol, align 4, !tbaa !23
  %i.en = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eg, i64 0
  %i.eo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.en, <2 x float> %i.em)
  %i.ep = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ep, <2 x float> %i.eo)
  %i.er = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.er, <2 x float> %i.eq)
  store <2 x float> %i.es, ptr %gep.prol, align 4, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %gep.prol, i64 8 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !23
  %i.ev = extractelement <2 x float> %i.el, i64 1
  %i.ew = call float @llvm.fmuladd.f32(float %i.ay, float %i.ev, float %i.eu)
  store float %i.ew, ptr %i.et, align 4, !tbaa !23
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.us.prol.loopexit

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader165
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.us.preheader165 ], [ %indvars.iv.next.prol, %.lr.ph.us.prol ]
  %i.ex = add nsw i64 %wide.trip.count, -1
  %i.ey = icmp eq i64 %indvars.iv.ph, %i.ex
  br i1 %i.ey, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us ], [ %indvars.iv.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.ci, i64 %indvars.iv ; 2 uses
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %indvars.iv ; 2 uses
  %i.fb = load float, ptr %i.ez, align 4, !tbaa !23
  %i.fc = load float, ptr %i.fa, align 4, !tbaa !23
  %i.fd = fsub float %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fg = load <2 x float>, ptr %i.fe, align 4, !tbaa !23
  %i.fh = load <2 x float>, ptr %i.ff, align 4, !tbaa !23
  %i.fi = fsub <2 x float> %i.fg, %i.fh           ; 3 uses
  %i.fj = load <2 x float>, ptr %gep, align 4, !tbaa !23
  %i.fk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fd, i64 0
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.fk, <2 x float> %i.fj)
  %i.fm = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.fm, <2 x float> %i.fl)
  %i.fo = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.fo, <2 x float> %i.fn)
  store <2 x float> %i.fp, ptr %gep, align 4, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !23
  %i.fs = extractelement <2 x float> %i.fi, i64 1
  %i.ft = call float @llvm.fmuladd.f32(float %i.ay, float %i.fs, float %i.fr)
  store float %i.ft, ptr %i.fq, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 3 uses
  %i.fu = getelementptr inbounds nuw [12 x i8], ptr %i.ci, i64 %indvars.iv.next ; 2 uses
  %i.fv = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %indvars.iv.next ; 2 uses
  %i.fw = load float, ptr %i.fu, align 4, !tbaa !23
  %i.fx = load float, ptr %i.fv, align 4, !tbaa !23
  %i.fy = fsub float %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gb = load <2 x float>, ptr %i.fz, align 4, !tbaa !23
  %i.gc = load <2 x float>, ptr %i.ga, align 4, !tbaa !23
  %i.gd = fsub <2 x float> %i.gb, %i.gc           ; 3 uses
  %i.ge = load <2 x float>, ptr %gep.1, align 4, !tbaa !23
  %i.gf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0
  %i.gg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.gf, <2 x float> %i.ge)
  %i.gh = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.gh, <2 x float> %i.gg)
  %i.gj = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.gj, <2 x float> %i.gi)
  store <2 x float> %i.gk, ptr %gep.1, align 4, !tbaa !23
  %i.gl = getelementptr inbounds nuw i8, ptr %gep.1, i64 8 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !23
  %i.gn = extractelement <2 x float> %i.gd, i64 1
  %i.go = call float @llvm.fmuladd.f32(float %i.ay, float %i.gn, float %i.gm)
  store float %i.go, ptr %i.gl, align 4, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !132

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block, %.preheader.us
  %i.gp = add nsw i32 %i.dh, %.195.us             ; 2 uses
  %i.gq = add nuw nsw i32 %.04694.us, 1           ; 2 uses
  %i.gr = load i32, ptr %i.ca, align 4, !tbaa !150
  %i.gs = icmp slt i32 %i.gq, %i.gr
  br i1 %i.gs, label %.lr.ph96.split.us, label %._crit_edge, !llvm.loop !133

.split.us:                                        ; preds = %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit.us, %.lr.ph96.split.us
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = mul nuw nsw i64 %i.bv, 12
  br label %bb.o

.lr.ph96.split:                                   ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread.thread, %bb.p
  %.195 = phi i32 [ %i.ha, %bb.p ], [ %.0102, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread.thread ] ; 2 uses
  %.04694 = phi i32 [ %i.hb, %bb.p ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread.thread ]
  %i.gv = sext i32 %.195 to i64
  %i.gw = getelementptr inbounds [12 x i8], ptr %i.as, i64 %i.gv ; 2 uses
  invoke void @_Z9mk_mshiftP8_IO_FILEP7t_graph7PbcTypePA3_KfS6_(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %1, ptr noundef %4, ptr noundef %i.gw)
          to label %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit unwind label %.split

_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit: ; preds = %.lr.ph96.split
  invoke void @_Z10shift_selfRK7t_graphPA3_KfPA3_f(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef %4, ptr noundef %i.gw)
          to label %bb.p unwind label %.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i, %bb.m
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit

.split:                                           ; preds = %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit, %.lr.ph96.split
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split.us, %.split
  %i.gy = phi ptr [ null, %.split ], [ %i.bz, %.split.us ] ; 2 uses
  %.idx88 = phi i64 [ 0, %.split ], [ %i.gu, %.split.us ]
  %.us-phi98 = phi { ptr, i32 } [ %i.gx, %.split ], [ %i.gt, %.split.us ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, label %bb.q

bb.p:                                             ; preds = %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SD_SC_.exit
  %i.gz = load i32, ptr %i.bo, align 8, !tbaa !149
  %i.ha = add nsw i32 %i.gz, %.195                ; 2 uses
  %i.hb = add nuw nsw i32 %.04694, 1              ; 2 uses
  %i.hc = load i32, ptr %i.cd, align 4, !tbaa !150
  %i.hd = icmp slt i32 %i.hb, %i.hc
  br i1 %i.hd, label %.lr.ph96.split, label %._crit_edge, !llvm.loop !133

bb.q:                                             ; preds = %bb.o
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %.idx88) #30
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit

._crit_edge:                                      ; preds = %bb.p, %.loopexit.us, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread
  %i.he = phi ptr [ %i.bz, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread ], [ %i.bz, %.loopexit.us ], [ null, %bb.p ] ; 2 uses
  %i.hf = phi i64 [ %i.bv, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread ], [ %i.bv, %.loopexit.us ], [ 0, %bb.p ]
  %.1.lcssa = phi i32 [ %.0102, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread ], [ %i.gp, %.loopexit.us ], [ %i.ha, %bb.p ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit62, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %.idx = mul nuw nsw i64 %i.hf, 12
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %.idx) #30
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit62

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit62: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread.thread, %._crit_edge, %bb.r
  %.1.lcssa129 = phi i32 [ %.1.lcssa, %bb.r ], [ %.1.lcssa, %._crit_edge ], [ %.0102, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread.thread ]
  %i.hg = load ptr, ptr %i.az, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit62
  %i.hh = load ptr, ptr %i.ba, align 8, !tbaa !62
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hk) #30
  br label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i

_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i:           ; preds = %bb.s, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit62
  %i.hl = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i
  %i.hm = load ptr, ptr %i.bc, align 8, !tbaa !66
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hp) #30
  br label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i: ; preds = %bb.t, %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i
  %i.hq = load ptr, ptr %i.be, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i
  %i.hr = load ptr, ptr %i.bf, align 8, !tbaa !68
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hu) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.u, %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i
  %i.hv = load ptr, ptr %i.bd, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7t_graphD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.hw = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.hz) #30
  br label %_ZN7t_graphD2Ev.exit

_ZN7t_graphD2Ev.exit:                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.w

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.us-phi98, %bb.q ], [ %.us-phi98, %bb.o ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7t_graphD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  resume { ptr, i32 } %.pn.pn

bb.w:                                             ; preds = %_ZN7t_graphD2Ev.exit, %bb.k
  %.2 = phi i32 [ %i.bt, %bb.k ], [ %.1.lcssa129, %_ZN7t_graphD2Ev.exit ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.077.0101, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ia, %i.ap
  br i1 %.not, label %._crit_edge103, label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z21setBoxDeformationRatePA3_KfS1_PA3_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %2) local_unnamed_addr #18 {
.preheader:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  %i.a = load float, ptr %1, align 4, !tbaa !23   ; 2 uses
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  br i1 %i.b, label %.split.us.loopexit, label %.split.us

.split.us:                                        ; preds = %.preheader, %.split.us.loopexit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.e, label %.preheader.split.1.1, label %.split.us.1

.preheader.split.1.1:                             ; preds = %.split.us
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !23
  %i.i = fdiv float %i.h, %i.d
  store float %i.i, ptr %i.f, align 4, !tbaa !23
  %.pre = load float, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.j = fcmp ogt float %.pre, 0.000000e+00
  br i1 %i.j, label %bb.a, label %.split.us.1

bb.a:                                             ; preds = %.preheader.split.1.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !23
  %i.m = fdiv float %i.l, %.pre
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.m, ptr %i.n, align 4, !tbaa !23
  br label %.split.us.1

.split.us.1:                                      ; preds = %.preheader.split.1.1, %bb.a, %.split.us
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !23 ; 2 uses
  %i.q = fcmp ogt float %i.p, 0.000000e+00
  br i1 %i.q, label %.preheader.split.2.1, label %.split.us.2

.preheader.split.2.1:                             ; preds = %.split.us.1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load float, ptr %i.s, align 4, !tbaa !23
  %i.u = fdiv float %i.t, %i.p
  store float %i.u, ptr %i.r, align 4, !tbaa !23
  %.pre33 = load float, ptr %i.o, align 4, !tbaa !23 ; 3 uses
  %i.v = fcmp ogt float %.pre33, 0.000000e+00
  br i1 %i.v, label %bb.b, label %.preheader.split.2.2

bb.b:                                             ; preds = %.preheader.split.2.1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load float, ptr %i.w, align 4, !tbaa !23
  %i.y = fdiv float %i.x, %.pre33
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.y, ptr %i.z, align 4, !tbaa !23
  %.pre34 = load float, ptr %i.o, align 4, !tbaa !23
  br label %.preheader.split.2.2

.preheader.split.2.2:                             ; preds = %bb.b, %.preheader.split.2.1
  %i.aa = phi float [ %.pre34, %bb.b ], [ %.pre33, %.preheader.split.2.1 ] ; 2 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.c, label %.split.us.2

bb.c:                                             ; preds = %.preheader.split.2.2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !23
  %i.ae = fdiv float %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.ae, ptr %i.af, align 4, !tbaa !23
  br label %.split.us.2

.split.us.2:                                      ; preds = %.preheader.split.2.2, %bb.c, %.split.us.1
  ret void

.split.us.loopexit:                               ; preds = %.preheader
  %i.ag = load float, ptr %0, align 4, !tbaa !23
  %i.ah = fdiv float %i.ag, %i.a
  store float %i.ah, ptr %2, align 4, !tbaa !23
  br label %.split.us
}

declare void @_Z16mk_graph_moltypeRK13gmx_moltype_t(ptr dead_on_unwind writable sret(%struct.t_graph) align 8, ptr noundef nonnull align 8 dereferenceable(2408)) local_unnamed_addr #6

declare void @_Z9mk_mshiftP8_IO_FILEP7t_graph7PbcTypePA3_KfS6_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_Z10shift_selfRK7t_graphPA3_KfPA3_f(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7t_graphD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit

_ZNSt6vectorI5egColSaIS0_EED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i, label %_ZN3gmx11ListOfListsIiED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #30
  br label %_ZN3gmx11ListOfListsIiED2Ev.exit

_ZN3gmx11ListOfListsIiED2Ev.exit:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define void @_Z11do_pbc_mtop7PbcTypePA3_KfPK10gmx_mtop_tPA3_f(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.gmx::ArrayRef", align 8     ; 3 uses
  %5 = alloca %"class.gmx::ArrayRef", align 8     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !199
  %i.c = sext i32 %i.b to i64
  %.not.i = icmp eq ptr %3, null
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.c
  %spec.select.i = select i1 %.not.i, ptr null, ptr %i.d
  store ptr %3, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %spec.select.i, ptr %i.e, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call fastcc void @_ZL15low_do_pbc_mtopP8_IO_FILE7PbcTypebPA3_KfS4_PK10gmx_mtop_tN3gmx8ArrayRefINS8_11BasicVectorIfEEEESC_b(ptr noundef null, i32 noundef %0, i1 noundef zeroext false, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %4, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %5, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_pbc.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 16), ptr @_Z14c_pbcTypeNamesB5cxx11, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 16), ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 8), align 8, !tbaa !18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 19), align 1, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 32), align 8, !tbaa !12
  store i16 28526, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 48), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 40), align 8, !tbaa !18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 50), align 2, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 64), align 8, !tbaa !12
  store i16 31096, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 80), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 72), align 8, !tbaa !18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 82), align 2, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 96), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 112), ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 104), align 8, !tbaa !18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 117), align 1, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 128), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 136), align 8, !tbaa !18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 149), align 1, !tbaa !17
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx16EnumerationArrayI7PbcTypeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_5EED2Ev, ptr nonnull @_Z14c_pbcTypeNamesB5cxx11, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nounwind }
attributes #21 = { nounwind memory(none) }
attributes #22 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { cold nounwind }
attributes #33 = { cold }
attributes #34 = { builtin allocsize(0) }

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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !5, i64 16}
!16 = !{!15, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !13, i64 8}
!19 = !{!"_ZTS7PbcType", !5, i64 0}
!20 = !{!"float", !5, i64 0}
!21 = !{!"_ZTS5t_pbc", !19, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !5, i64 16, !5, i64 52, !5, i64 64, !5, i64 76, !20, i64 88, !6, i64 92, !5, i64 96, !5, i64 240}
!22 = !{!21, !6, i64 8}
!23 = !{!20, !20, i64 0}
!24 = !{!21, !20, i64 88}
!25 = !{!21, !6, i64 92}
!26 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!21, !19, i64 0}
!32 = !{!6, !6, i64 0}
!33 = !{!21, !6, i64 12}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"double", !5, i64 0}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!19, !19, i64 0}
!39 = !{!"p1 float", !9, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"bool", !5, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!44 = !{!"_ZTSN3gmx12ArrayRefIterINS_11BasicVectorIfEEEE", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{i64 2, i64 -1, i64 -1, i1 true}
!47 = !{!46}
!48 = !{!"p1 _ZTS14gmx_molblock_t", !9, i64 0}
!49 = !{!"p1 _ZTS13gmx_moltype_t", !9, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"any p2 pointer", !9, i64 0}
!52 = !{!"p2 omnipotent char", !51, i64 0}
!53 = !{!"any p3 pointer", !51, i64 0}
!54 = !{!"p3 omnipotent char", !53, i64 0}
!55 = !{!"p1 int", !9, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIiSaIiEE", !58, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseI5egColSaIS0_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!61 = !{!60, !9, i64 0}
!62 = !{!60, !9, i64 16}
!63 = !{!"p1 _ZTSN3gmx11BasicVectorIiEE", !9, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIiEESaIS2_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !63, i64 16}
!67 = !{!56, !55, i64 0}
!68 = !{!56, !55, i64 16}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !34}
!73 = distinct !{!73, !28}
!74 = distinct !{!74, !28}
!75 = distinct !{!75, !28}
!76 = !{!21, !6, i64 4}
!77 = !{!"branch_weights", i32 1, i32 1048575}
!78 = distinct !{!78, !28}
!79 = distinct !{!79, !28}
!80 = distinct !{!80, !28}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !28}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !28}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !28}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !28}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !28}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28}
!98 = distinct !{!98, !28}
!99 = distinct !{!99, !28}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !28}
!102 = distinct !{!102, !28}
!103 = !{!35, !35, i64 0}
!104 = distinct !{!104, !28}
!105 = distinct !{!105, !28}
!106 = distinct !{!106, !28}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !28, !36, !37}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !28, !36}
!113 = distinct !{!113, !28}
!114 = !{!108}
!115 = !{!109}
!116 = distinct !{!116, !34}
!117 = distinct !{!117, !28}
!118 = distinct !{!118, !28}
!119 = distinct !{!119, !28}
!120 = !{i8 0, i8 2}
!121 = !{}
!122 = distinct !{!122, !28}
!123 = distinct !{!123, !28}
!124 = distinct !{!124, !28}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !34}
!127 = distinct !{!127, !28}
!128 = distinct !{!128, i1 false, !"LVerDomain"}
!129 = distinct !{!129, !128}
!130 = distinct !{!130, !128}
!131 = distinct !{!131, !28, !36, !37}
!132 = distinct !{!132, !28, !36}
!133 = distinct !{!133, !28}
!134 = !{!48, !48, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !137, i64 0}
!139 = !{!"_ZTS14gmx_molblock_t", !6, i64 0, !6, i64 4, !138, i64 8, !138, i64 32}
!140 = !{!139, !6, i64 0}
!141 = !{!50, !49, i64 0}
!142 = !{!"p1 _ZTS6t_atom", !9, i64 0}
!143 = !{!"p1 _ZTS9t_resinfo", !9, i64 0}
!144 = !{!"p1 _ZTS9t_pdbinfo", !9, i64 0}
!145 = !{!"_ZTS7t_atoms", !6, i64 0, !142, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !6, i64 40, !143, i64 48, !144, i64 56, !41, i64 64, !41, i64 65, !41, i64 66, !41, i64 67, !41, i64 68}
!146 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !5, i64 0}
!147 = !{!"_ZTSN3gmx11ListOfListsIiEE", !59, i64 0, !59, i64 24}
!148 = !{!"_ZTS13gmx_moltype_t", !52, i64 0, !145, i64 8, !146, i64 80, !147, i64 2360}
!149 = !{!148, !6, i64 8}
!150 = !{!139, !6, i64 4}
!151 = !{i64 0, i64 12, !17}
!152 = !{!129}
!153 = !{!130}
!154 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!155 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE12_Vector_implE", !154, i64 0}
!156 = !{!"_ZTSSt12_Vector_baseI19InteractionFunctionSaIS0_EE", !155, i64 0}
!157 = !{!"_ZTSSt6vectorI19InteractionFunctionSaIS0_EE", !156, i64 0}
!158 = !{!"p1 _ZTS9t_iparams", !9, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!160 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE12_Vector_implE", !159, i64 0}
!161 = !{!"_ZTSSt12_Vector_baseI9t_iparamsSaIS0_EE", !160, i64 0}
!162 = !{!"_ZTSSt6vectorI9t_iparamsSaIS0_EE", !161, i64 0}
!163 = !{!"p1 _ZTS14gmx_cmapdata_t", !9, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE17_Vector_impl_dataE", !163, i64 0, !163, i64 8, !163, i64 16}
!165 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE12_Vector_implE", !164, i64 0}
!166 = !{!"_ZTSSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE", !165, i64 0}
!167 = !{!"_ZTSSt6vectorI14gmx_cmapdata_tSaIS0_EE", !166, i64 0}
!168 = !{!"_ZTS10gmx_cmap_t", !6, i64 0, !167, i64 8}
!169 = !{!"_ZTS14gmx_ffparams_t", !6, i64 0, !157, i64 8, !162, i64 32, !35, i64 56, !20, i64 64, !168, i64 72}
!170 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE12_Vector_implE", !50, i64 0}
!171 = !{!"_ZTSSt12_Vector_baseI13gmx_moltype_tSaIS0_EE", !170, i64 0}
!172 = !{!"_ZTSSt6vectorI13gmx_moltype_tSaIS0_EE", !171, i64 0}
!173 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!174 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE12_Vector_implE", !173, i64 0}
!175 = !{!"_ZTSSt12_Vector_baseI14gmx_molblock_tSaIS0_EE", !174, i64 0}
!176 = !{!"_ZTSSt6vectorI14gmx_molblock_tSaIS0_EE", !175, i64 0}
!177 = !{!"p1 _ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !9, i64 0}
!178 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEELb0EE", !177, i64 0}
!179 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EEE", !178, i64 0}
!180 = !{!"_ZTSSt5tupleIJPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EEE", !179, i64 0}
!181 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE", !180, i64 0}
!182 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_ELb1ELb1EE", !181, i64 0}
!183 = !{!"_ZTSSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE", !182, i64 0}
!184 = !{!"_ZTSN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIiSaIiEELS1_10EEE", !5, i64 0}
!185 = !{!"_ZTSNSt12_Vector_baseIPPcSaIS1_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!186 = !{!"_ZTSNSt12_Vector_baseIPPcSaIS1_EE12_Vector_implE", !185, i64 0}
!187 = !{!"_ZTSSt12_Vector_baseIPPcSaIS1_EE", !186, i64 0}
!188 = !{!"_ZTSSt6vectorIPPcSaIS1_EE", !187, i64 0}
!189 = !{!"_ZTSN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EEE", !5, i64 0}
!190 = !{!"_ZTS16SimulationGroups", !184, i64 0, !188, i64 240, !189, i64 264}
!191 = !{!"p1 _ZTS8t_symbuf", !9, i64 0}
!192 = !{!"_ZTS8t_symtab", !6, i64 0, !191, i64 8}
!193 = !{!"p1 _ZTS20MoleculeBlockIndices", !9, i64 0}
!194 = !{!"_ZTSNSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE17_Vector_impl_dataE", !193, i64 0, !193, i64 8, !193, i64 16}
end_hunk_5
